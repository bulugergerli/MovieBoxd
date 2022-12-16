package controllers

import (
	"net/http"

	"github.com/C305DatabaseProject/database-project/backend/database"
	"github.com/gin-gonic/gin"
)

func GetUser(c *gin.Context) {
	id := c.Param("id")
	var user User
	var profileResponse ProfileResponse
	// Check if user with given id exists
	sql := `SELECT id, username, displayname, email, dateofbirth, avatar, bio, location, social_twitter, social_instagram, type
		FROM users WHERE id = ?`
	database.DB.QueryRow(sql, id).Scan(&user.ID, &user.Username, &user.Displayname, &user.Email, &user.DateOfBirth, &user.Avatar, &user.Bio, &user.Location, &user.Twitter, &user.Instagram, &user.Type)
	if user.ID == 0 {
		// User not found
		c.JSON(http.StatusOK, ErrorMessage("User not found."))
		return
	}
	// Check if user exists
	localUser, exists := c.Get("user")
	profileResponse.Logged = true
	if !exists {
		// User not logged in
		profileResponse.Logged = false
	} else {
		profileResponse.LoggedID = localUser.(User).ID
	}
	profileResponse.User = user
	// movies_watched
	sql = `SELECT id, title, description, release_date, poster, rating, length, movie_genres.genre_name,
	(SELECT COUNT(movie_id) FROM user_favorites WHERE user_favorites.movie_id = movies.id) AS favorite_count, 
	(SELECT COUNT(movie_id) FROM user_watched WHERE user_watched.movie_id = movies.id) AS watched_count FROM movies 
	INNER JOIN user_watched	ON movies.id = user_watched.movie_id
	INNER JOIN movie_genres ON movies.id = movie_genres.movie_id
	WHERE user_watched.user_id = ?;`
	rows, err := database.DB.Query(sql, id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
		return
	}
	// Return movie details with the movie ids
	var movies_watched []Movie
	for rows.Next() {
		var movie_watched Movie
		var genre string
		rows.Scan(&movie_watched.ID, &movie_watched.Title, &movie_watched.Description, &movie_watched.ReleaseDate, &movie_watched.Poster, &movie_watched.Rating, &movie_watched.Length, &genre, &movie_watched.FavoriteCount, &movie_watched.WatchedCount)
		if len(movies_watched) != 0 && movies_watched[len(movies_watched)-1].ID == movie_watched.ID {
			movies_watched[len(movies_watched)-1].Genres = append(movies_watched[len(movies_watched)-1].Genres, genre)
			continue
		}
		movie_watched.Genres = append(movie_watched.Genres, genre)
		movies_watched = append(movies_watched, movie_watched)
	}
	profileResponse.UserWatched = movies_watched
	//movies_watchlist
	sql = `SELECT id, title, description, release_date, poster, rating, LENGTH, movie_genres.genre_name,
	(SELECT COUNT(movie_id) FROM user_favorites WHERE user_favorites.movie_id = movies.id) AS favorite_count, 
	(SELECT COUNT(movie_id) FROM user_watched WHERE user_watched.movie_id = movies.id) AS watched_count FROM movies 
	INNER JOIN user_watchlist ON movies.id = user_watchlist.movie_id
	INNER JOIN movie_genres ON movies.id = movie_genres.movie_id
	WHERE user_watchlist.user_id = ?;`
	rows, err = database.DB.Query(sql, id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
		return
	}
	// Return movie details with the movie ids
	var movies_watchlist []Movie
	for rows.Next() {
		var movie_watchlist Movie
		var genre string
		rows.Scan(&movie_watchlist.ID, &movie_watchlist.Title, &movie_watchlist.Description, &movie_watchlist.ReleaseDate, &movie_watchlist.Poster, &movie_watchlist.Rating, &movie_watchlist.Length, &genre, &movie_watchlist.FavoriteCount, &movie_watchlist.WatchedCount)
		if len(movies_watchlist) != 0 && movies_watchlist[len(movies_watchlist)-1].ID == movie_watchlist.ID {
			movies_watchlist[len(movies_watchlist)-1].Genres = append(movies_watchlist[len(movies_watchlist)-1].Genres, genre)
			continue
		}
		movie_watchlist.Genres = append(movie_watchlist.Genres, genre)
		movies_watchlist = append(movies_watchlist, movie_watchlist)
	}
	profileResponse.UserWatchlist = movies_watchlist
	//comments
	sql = `SELECT users.id, users.username, movie_id , comment, comment_date, title
	FROM project.user_comments LEFT JOIN project.users
	ON user_comments.user_id = project.users.id
	JOIN movies ON movie_id = movies.id
	WHERE project.users.id = ?;`
	rows, err = database.DB.Query(sql, id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
		return
	}
	var comments []Comment
	var comment Comment
	for rows.Next() {
		rows.Scan(&comment.UserID, &comment.Username, &comment.MovieID, &comment.Comment, &comment.CommentDate, &comment.MovieTitle)
		comments = append(comments, comment)
	}
	profileResponse.UserComments = comments
	//movies_favorite
	sql = `SELECT id, title, description, release_date, poster, rating, LENGTH, movie_genres.genre_name,
	(SELECT COUNT(movie_id) FROM user_favorites WHERE user_favorites.movie_id = movies.id) AS favorite_count, 
	(SELECT COUNT(movie_id) FROM user_watched WHERE user_watched.movie_id = movies.id) AS watched_count FROM movies 
	INNER JOIN user_favorites ON movies.id = user_favorites.movie_id
	INNER JOIN movie_genres ON movies.id = movie_genres.movie_id
	WHERE user_favorites.user_id = ?;`
	rows, err = database.DB.Query(sql, id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
		return
	}
	// Return movie details with the movie ids
	var movies_favorite []Movie
	for rows.Next() {
		var movie_favorite Movie
		var genre string
		rows.Scan(&movie_favorite.ID, &movie_favorite.Title, &movie_favorite.Description, &movie_favorite.ReleaseDate, &movie_favorite.Poster, &movie_favorite.Rating, &movie_favorite.Length, &genre, &movie_favorite.FavoriteCount, &movie_favorite.WatchedCount)
		if len(movies_favorite) != 0 && movies_favorite[len(movies_favorite)-1].ID == movie_favorite.ID {
			movies_favorite[len(movies_favorite)-1].Genres = append(movies_favorite[len(movies_favorite)-1].Genres, genre)
			continue
		}
		movie_favorite.Genres = append(movie_favorite.Genres, genre)
		movies_favorite = append(movies_favorite, movie_favorite)
	}
	profileResponse.UserFavorites = movies_favorite
	profileResponse.Status = "ok"
	c.JSON(http.StatusOK, profileResponse)
}

func Watchlist(c *gin.Context) {
	id := c.Param("id")
	// Check Watchlist table with given user id
	sql := `SELECT id, title, description, release_date, poster, rating, length
	FROM movies LEFT JOIN user_watchlist
	ON movies.id = user_watchlist.movie_id
	WHERE user_watchlist.user_id = ?;`
	rows, err := database.DB.Query(sql, id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
		return
	}
	// Return movie details with the movie ids
	var movies []Movie
	var movie Movie
	for rows.Next() {
		rows.Scan(&movie.ID, &movie.Title, &movie.Description, &movie.ReleaseDate, &movie.Poster, &movie.Rating, &movie.Length)
		movies = append(movies, movie)
	}
	for i := 0; i < len(movies); i++ {
		var genres []string
		var genre string
		sql = `SELECT genre_name FROM movie_genres WHERE movie_id = ?;`
		rows, err = database.DB.Query(sql, movies[i].ID)
		if err != nil {
			c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
			return
		}
		for rows.Next() {
			rows.Scan(&genre)
			genres = append(genres, genre)
		}
		movies[i].Genres = genres

		var totalFavorites int
		sql = `SELECT COUNT(movie_id) FROM user_favorites WHERE movie_id = ?;`
		err = database.DB.QueryRow(sql, movies[i].ID).Scan(&totalFavorites)
		if err != nil {
			c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
			return
		}
		movies[i].FavoriteCount = totalFavorites

		var totalWatched int
		sql = `SELECT COUNT(movie_id) FROM user_watched WHERE movie_id = ?;`
		err = database.DB.QueryRow(sql, movies[i].ID).Scan(&totalWatched)
		if err != nil {
			c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
			return
		}
		movies[i].WatchedCount = totalWatched
	}
	c.JSON(http.StatusOK, OkMessage(movies))
}

func Watched(c *gin.Context) {
	id := c.Param("id")
	// Check watched table with given user id
	sql := `SELECT id, title, description, release_date, poster, rating, length
	FROM movies LEFT JOIN user_watched
	ON movies.id = user_watched.movie_id
	WHERE user_watched.user_id = ?;`
	rows, err := database.DB.Query(sql, id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
		return
	}
	// Return movie details with the movie ids
	var movies []Movie
	var movie Movie
	for rows.Next() {
		rows.Scan(&movie.ID, &movie.Title, &movie.Description, &movie.ReleaseDate, &movie.Poster, &movie.Rating, &movie.Length)
		movies = append(movies, movie)
	}
	for i := 0; i < len(movies); i++ {
		var genres []string
		var genre string
		sql = `SELECT genre_name FROM movie_genres WHERE movie_id = ?;`
		rows, err = database.DB.Query(sql, movies[i].ID)
		if err != nil {
			c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
			return
		}
		for rows.Next() {
			rows.Scan(&genre)
			genres = append(genres, genre)
		}
		movies[i].Genres = genres

		var totalFavorites int
		sql = `SELECT COUNT(movie_id) FROM user_favorites WHERE movie_id = ?;`
		err = database.DB.QueryRow(sql, movies[i].ID).Scan(&totalFavorites)
		if err != nil {
			c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
			return
		}
		movies[i].FavoriteCount = totalFavorites

		var totalWatched int
		sql = `SELECT COUNT(movie_id) FROM user_watched WHERE movie_id = ?;`
		err = database.DB.QueryRow(sql, movies[i].ID).Scan(&totalWatched)
		if err != nil {
			c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
			return
		}
		movies[i].WatchedCount = totalWatched
	}
	c.JSON(http.StatusOK, OkMessage(movies))
}

func Favorites(c *gin.Context) {
	id := c.Param("id")
	// Check Favorites table with given user id
	sql := `SELECT id, title, description, release_date, poster, rating, length
		FROM movies JOIN user_favorites
		ON movies.id = user_favorites.movie_id
		WHERE user_favorites.user_id = ?;`
	rows, err := database.DB.Query(sql, id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
		return
	}
	// Return movie details with the movie ids
	var movies []Movie
	var movie Movie
	for rows.Next() {
		rows.Scan(&movie.ID, &movie.Title, &movie.Description, &movie.ReleaseDate, &movie.Poster, &movie.Rating, &movie.Length)
		movies = append(movies, movie)
	}
	for i := 0; i < len(movies); i++ {
		var genres []string
		var genre string
		sql = `SELECT genre_name FROM movie_genres WHERE movie_id = ?;`
		rows, err = database.DB.Query(sql, movies[i].ID)
		if err != nil {
			c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
			return
		}
		for rows.Next() {
			rows.Scan(&genre)
			genres = append(genres, genre)
		}
		movies[i].Genres = genres

		var totalFavorites int
		sql = `SELECT COUNT(movie_id) FROM user_favorites WHERE movie_id = ?;`
		err = database.DB.QueryRow(sql, movies[i].ID).Scan(&totalFavorites)
		if err != nil {
			c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
			return
		}
		movies[i].FavoriteCount = totalFavorites

		var totalWatched int
		sql = `SELECT COUNT(movie_id) FROM user_watched WHERE movie_id = ?;`
		err = database.DB.QueryRow(sql, movies[i].ID).Scan(&totalWatched)
		if err != nil {
			c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
			return
		}
		movies[i].WatchedCount = totalWatched
	}

	c.JSON(http.StatusOK, OkMessage(movies))
}

func Comments(c *gin.Context) {
	id := c.Param("id")
	// Check comments with user id
	sql := `SELECT users.id, users.username, movie_id , comment, comment_date, title
	FROM project.user_comments LEFT JOIN project.users
	ON user_comments.user_id = project.users.id
	JOIN movies ON movie_id = movies.id
	WHERE project.users.id = ?;`
	rows, err := database.DB.Query(sql, id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, ErrorMessage(err.Error()))
		return
	}
	// Return Comments details with the User ids
	var comments []Comment
	var comment Comment
	for rows.Next() {
		rows.Scan(&comment.UserID, &comment.Username, &comment.MovieID, &comment.Comment, &comment.CommentDate, &comment.MovieTitle)
		comments = append(comments, comment)
	}
	if comments == nil {
		c.JSON(http.StatusNotFound, ErrorMessage("User not have any comment."))
		return
	}
	c.JSON(http.StatusOK, OkMessage(comments))
}
