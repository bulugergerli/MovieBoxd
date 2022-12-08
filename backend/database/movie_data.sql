DELETE FROM movies;
INSERT INTO movies (title, description, release_date, poster, length) VALUES
('The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', '1994', 'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 142),
('The Godfather', 'An organized crime dynasty\'s aging patriarch transfers control of his clandestine empire to his reluctant son.', '1972', 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 175),
('The Dark Knight', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', '2008', 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg', 152),
('The Godfather: Part II', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', '1974', 'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 202),
('12 Angry Men', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', '1957', 'https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg', 96),
('The Lord of the Rings: The Return of the King', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', '2003', 'https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 201),
('Pulp Fiction', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', '1994', 'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 154),
('Schindler\'s List', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', '1993', 'https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 195),
('Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', '2010', 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg', 148),
('Fight Club', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', '1999', 'https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 139),
('The Lord of the Rings: The Fellowship of the Ring', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', '2001', 'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg', 178),
('Forrest Gump', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', '1994', 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 142),
('Il buono, il brutto, il cattivo', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', '1966', 'https://m.media-amazon.com/images/M/MV5BOTQ5NDI3MTI4MF5BMl5BanBnXkFtZTgwNDQ4ODE5MDE@._V1_.jpg', 161),
('The Lord of the Rings: The Two Towers', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.', '2002', 'https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 179),
('The Matrix', 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.', '1999', 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 136),
('Goodfellas', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', '1990', 'https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 146),
('Star Wars: Episode V - The Empire Strikes Back', 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.', '1980', 'https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 124),
('One Flew Over the Cuckoo\'s Nest', 'A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.', '1975', 'https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 133),
('Hamilton', 'The real life of one of America\'s foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the original Broadway cast.', '2020', 'https://m.media-amazon.com/images/M/MV5BNjViNWRjYWEtZTI0NC00N2E3LTk0NGQtMjY4NTM3OGNkZjY0XkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg', 160),
('Gisaengchung', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', '2019', 'https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 132),
('Soorarai Pottru', 'Nedumaaran Rajangam \"Maara\" sets out to make the common man fly and in the process takes on the world\'s most capital intensive industry and several enemies who stand in his way.', '2020', 'https://m.media-amazon.com/images/M/MV5BOTc2ZTlmYmItMDBhYS00YmMzLWI4ZjAtMTI5YTBjOTFiMGEwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 153),
('Interstellar', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', '2014', 'https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 169),
('Cidade de Deus', 'In the slums of Rio, two kids\' paths diverge as one struggles to become a photographer and the other a kingpin.', '2002', 'https://m.media-amazon.com/images/M/MV5BOTMwYjc5ZmItYTFjZC00ZGQ3LTlkNTMtMjZiNTZlMWQzNzI5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 130),
('Sen to Chihiro no kamikakushi', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', '2001', 'https://m.media-amazon.com/images/M/MV5BMjlmZmI5MDctNDE2YS00YWE0LWE5ZWItZDBhYWQ0NTcxNWRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 125),
('Saving Private Ryan', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', '1998', 'https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg', 169),
('The Green Mile', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.', '1999', 'https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_.jpg', 189),
('La vita è bella', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', '1997', 'https://m.media-amazon.com/images/M/MV5BYmJmM2Q4NmMtYThmNC00ZjRlLWEyZmItZTIwOTBlZDQ3NTQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 116),
('Se7en', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', '1995', 'https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 127),
('The Silence of the Lambs', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', '1991', 'https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 118),
('Star Wars', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', '1977', 'https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 121),
('Seppuku', 'When a ronin requesting seppuku at a feudal lord\'s palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so challenges the clan\'s integrity.', '1962', 'https://m.media-amazon.com/images/M/MV5BYjBmYTQ1NjItZWU5MS00YjI0LTg2OTYtYmFkN2JkMmNiNWVkXkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_.jpg', 133),
('Shichinin no samurai', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.', '1954', 'https://m.media-amazon.com/images/M/MV5BOWE4ZDdhNmMtNzE5ZC00NzExLTlhNGMtY2ZhYjYzODEzODA1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg', 207),
('It\'s a Wonderful Life', 'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.', '1946', 'https://m.media-amazon.com/images/M/MV5BZjc4NDZhZWMtNGEzYS00ZWU2LThlM2ItNTA0YzQ0OTExMTE2XkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_.jpg', 130),
('Joker', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.', '2019', 'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 122),
('Whiplash', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.', '2014', 'https://m.media-amazon.com/images/M/MV5BOTA5NDZlZGUtMjAxOS00YTRkLTkwYmMtYWQ0NWEwZDZiNjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 106),
('The Intouchables', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', '2011', 'https://m.media-amazon.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_.jpg', 112),
('The Prestige', 'After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.', '2006', 'https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_.jpg', 130),
('The Departed', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', '2006', 'https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_.jpg', 151),
('The Pianist', 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.', '2002', 'https://m.media-amazon.com/images/M/MV5BOWRiZDIxZjktMTA1NC00MDQ2LWEzMjUtMTliZmY3NjQ3ODJiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 150),
('Gladiator', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', '2000', 'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 155),
('American History X', 'A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.', '1998', 'https://m.media-amazon.com/images/M/MV5BZjA0MTM4MTQtNzY5MC00NzY3LWI1ZTgtYzcxMjkyMzU4MDZiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg', 119),
('The Usual Suspects', 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.', '1995', 'https://m.media-amazon.com/images/M/MV5BYTViNjMyNmUtNDFkNC00ZDRlLThmMDUtZDU2YWE4NGI2ZjVmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 106),
('Léon', 'Mathilda, a 12-year-old girl, is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin\'s trade.', '1994', 'https://m.media-amazon.com/images/M/MV5BODllNWE0MmEtYjUwZi00ZjY3LThmNmQtZjZlMjI2YTZjYmQ0XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg', 110),
('The Lion King', 'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.', '1994', 'https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_.jpg', 88),
('Terminator 2: Judgment Day', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.', '1991', 'https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 137),
('Nuovo Cinema Paradiso', 'A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema\'s projectionist.', '1988', 'https://m.media-amazon.com/images/M/MV5BM2FhYjEyYmYtMDI1Yy00YTdlLWI2NWQtYmEzNzAxOGY1NjY2XkEyXkFqcGdeQXVyNTA3NTIyNDg@._V1_.jpg', 155),
('Hotaru no haka', 'A young boy and his little sister struggle to survive in Japan during World War II.', '1988', 'https://m.media-amazon.com/images/M/MV5BZmY2NjUzNDQtNTgxNC00M2Q4LTljOWQtMjNjNDBjNWUxNmJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg', 89),
('Back to the Future', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.', '1985', 'https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 116),
('Once Upon a Time in the West', 'A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.', '1968', 'https://m.media-amazon.com/images/M/MV5BZGI5MjBmYzYtMzJhZi00NGI1LTk3MzItYjBjMzcxM2U3MDdiXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 165),
('Psycho', 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.', '1960', 'https://m.media-amazon.com/images/M/MV5BNTQwNDM1YzItNDAxZC00NWY2LTk0M2UtNDIwNWI5OGUyNWUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 109),
('Casablanca', 'A cynical expatriate American cafe owner struggles to decide whether or not to help his former lover and her fugitive husband escape the Nazis in French Morocco.', '1942', 'https://m.media-amazon.com/images/M/MV5BY2IzZGY2YmEtYzljNS00NTM5LTgwMzUtMzM1NjQ4NGI0OTk0XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg', 102),
('Modern Times', 'The Tramp struggles to live in modern industrial society with the help of a young homeless woman.', '1936', 'https://m.media-amazon.com/images/M/MV5BYjJiZjMzYzktNjU0NS00OTkxLWEwYzItYzdhYWJjN2QzMTRlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 87),
('City Lights', 'With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.', '1931', 'https://m.media-amazon.com/images/M/MV5BY2I4MmM1N2EtM2YzOS00OWUzLTkzYzctNDc5NDg2N2IyODJmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 87),
('Capharnaüm', 'While serving a five-year sentence for a violent crime, a 12-year-old boy sues his parents for neglect.', '2018', 'https://m.media-amazon.com/images/M/MV5BMmExNzU2ZWMtYzUwYi00YmM2LTkxZTQtNmVhNjY0NTMyMWI2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 126),
('Ayla: The Daughter of War', 'In 1950, amid-st the ravages of the Korean War, Sergeant Süleyman stumbles upon a half-frozen little girl, with no parents and no help in sight. Frantic, scared and on the verge of death.', '2017', 'https://m.media-amazon.com/images/M/MV5BNWJhMDlmZGUtYzcxNS00NDRiLWIwNjktNDY1Mjg3ZjBkYzY0XkEyXkFqcGdeQXVyMTU4MjUwMjI@._V1_.jpg', 125),
('Vikram Vedha', 'Vikram, a no-nonsense police officer, accompanied by Simon, his partner, is on the hunt to capture Vedha, a smuggler and a murderer. Vedha tries to change Vikram\'s life, which leads to a conflict.', '2017', 'https://m.media-amazon.com/images/M/MV5BY2FiMTFmMzMtZDI2ZC00NDQyLWExYTUtOWNmZWM1ZDg5YjVjXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg', 147),
('Kimi no na wa.', 'Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?', '2016', 'https://m.media-amazon.com/images/M/MV5BODRmZDVmNzUtZDA4ZC00NjhkLWI2M2UtN2M0ZDIzNDcxYThjL2ltYWdlXkEyXkFqcGdeQXVyNTk0MzMzODA@._V1_.jpg', 106),
('Dangal', 'Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.', '2016', 'https://m.media-amazon.com/images/M/MV5BMTQ4MzQzMzM2Nl5BMl5BanBnXkFtZTgwMTQ1NzU3MDI@._V1_.jpg', 161),
('Spider-Man: Into the Spider-Verse', 'Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.', '2018', 'https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_.jpg', 117),
('Avengers: Endgame', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.', '2019', 'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg', 181),
('Avengers: Infinity War', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', '2018', 'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_.jpg', 149),
('Coco', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', '2017', 'https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_.jpg', 105),
('Django Unchained', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.', '2012', 'https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_.jpg', 165),
('The Dark Knight Rises', 'Eight years after the Joker\'s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.', '2012', 'https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_.jpg', 164),
('3 Idiots', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them \"idiots\".', '2009', 'https://m.media-amazon.com/images/M/MV5BNTkyOGVjMGEtNmQzZi00NzFlLTlhOWQtODYyMDc2ZGJmYzFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 170),
('Taare Zameen Par', 'An eight-year-old boy is thought to be a lazy trouble-maker, until the new art teacher has the patience and compassion to discover the real problem behind his struggles in school.', '2007', 'https://m.media-amazon.com/images/M/MV5BMDhjZWViN2MtNzgxOS00NmI4LThiZDQtZDI3MzM4MDE4NTc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 165),
('WALL·E', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.', '2008', 'https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_.jpg', 98),
('The Lives of Others', 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.', '2006', 'https://m.media-amazon.com/images/M/MV5BOThkM2EzYmMtNDE3NS00NjlhLTg4YzktYTdhNzgyOWY3ZDYzXkEyXkFqcGdeQXVyNzQzNzQxNzI@._V1_.jpg', 137),
('Oldeuboi', 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.', '2003', 'https://m.media-amazon.com/images/M/MV5BMTI3NTQyMzU5M15BMl5BanBnXkFtZTcwMTM2MjgyMQ@@._V1_.jpg', 101),
('Memento', 'A man with short-term memory loss attempts to track down his wife\'s murderer.', '2000', 'https://m.media-amazon.com/images/M/MV5BZTcyNjk1MjgtOWI3Mi00YzQwLWI5MTktMzY4ZmI2NDAyNzYzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 113),
('Mononoke-hime', 'On a journey to find the cure for a Tatarigami\'s curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.', '1997', 'https://m.media-amazon.com/images/M/MV5BNGIzY2IzODQtNThmMi00ZDE4LWI5YzAtNzNlZTM1ZjYyYjUyXkEyXkFqcGdeQXVyODEzNjM5OTQ@._V1_.jpg', 134),
('Once Upon a Time in America', 'A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.', '1984', 'https://m.media-amazon.com/images/M/MV5BMGFkNWI4MTMtNGQ0OC00MWVmLTk3MTktOGYxN2Y2YWVkZWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 229),
('Raiders of the Lost Ark', 'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler\'s Nazis can obtain its awesome powers.', '1981', 'https://m.media-amazon.com/images/M/MV5BMjA0ODEzMTc1Nl5BMl5BanBnXkFtZTcwODM2MjAxNA@@._V1_.jpg', 115),
('The Shining', 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', '1980', 'https://m.media-amazon.com/images/M/MV5BZWFlYmY2MGEtZjVkYS00YzU4LTg0YjQtYzY1ZGE3NTA5NGQxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 146),
('Apocalypse Now', 'A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.', '1979', 'https://m.media-amazon.com/images/M/MV5BMDdhODg0MjYtYzBiOS00ZmI5LWEwZGYtZDEyNDU4MmQyNzFkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 147),
('Alien', 'After a space merchant vessel receives an unknown transmission as a distress call, one of the crew is attacked by a mysterious life form and they soon realize that its life cycle has merely begun.', '1979', 'https://m.media-amazon.com/images/M/MV5BMmQ2MmU3NzktZjAxOC00ZDZhLTk4YzEtMDMyMzcxY2IwMDAyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 117),
('Anand', 'The story of a terminally ill man who wishes to live life to the fullest before the inevitable occurs, as told by his best friend.', '1971', 'https://m.media-amazon.com/images/M/MV5BYmYzNmM2MDctZGY3Yi00NjRiLWIxZjctYjgzYTcxYTNhYTMyXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg', 122),
('Tengoku to jigoku', 'An executive of a shoe company becomes a victim of extortion when his chauffeur\'s son is kidnapped and held for ransom.', '1963', 'https://m.media-amazon.com/images/M/MV5BOTI4NTNhZDMtMWNkZi00MTRmLWJmZDQtMmJkMGVmZTEzODlhXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg', 143),
('Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', 'An insane general triggers a path to nuclear holocaust that a War Room full of politicians and generals frantically tries to stop.', '1964', 'https://m.media-amazon.com/images/M/MV5BZWI3ZTMxNjctMjdlNS00NmUwLWFiM2YtZDUyY2I3N2MxYTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 95),
('Witness for the Prosecution', 'A veteran British barrister must defend his client in a murder trial that has surprise after surprise.', '1957', 'https://m.media-amazon.com/images/M/MV5BNDQwODU5OWYtNDcyNi00MDQ1LThiOGMtZDkwNWJiM2Y3MDg0XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg', 116),
('Paths of Glory', 'After refusing to attack an enemy position, a general accuses the soldiers of cowardice and their commanding officer must defend them.', '1957', 'https://m.media-amazon.com/images/M/MV5BNjViMmRkOTEtM2ViOS00ODg0LWJhYWEtNTBlOGQxNDczOGY3XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg', 88),
('Rear Window', 'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.', '1954', 'https://m.media-amazon.com/images/M/MV5BNGUxYWM3M2MtMGM3Mi00ZmRiLWE0NGQtZjE5ODI2OTJhNTU0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 112),
('Sunset Blvd.', 'A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.', '1950', 'https://m.media-amazon.com/images/M/MV5BMTU0NTkyNzYwMF5BMl5BanBnXkFtZTgwMDU0NDk5MTI@._V1_.jpg', 110),
('The Great Dictator', 'Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel\'s regime.', '1940', 'https://m.media-amazon.com/images/M/MV5BMmExYWJjNTktNGUyZS00ODhmLTkxYzAtNWIzOGEyMGNiMmUwXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 125),
('1917', 'April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.', '2019', 'https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_.jpg', 119),
('Tumbbad', 'A mythological story about a goddess who created the entire universe. The plot revolves around the consequences when humans build a temple for her first-born.', '2018', 'https://m.media-amazon.com/images/M/MV5BYmQxNmU4ZjgtYzE5Mi00ZDlhLTlhOTctMzJkNjk2ZGUyZGEwXkEyXkFqcGdeQXVyMzgxMDA0Nzk@._V1_.jpg', 104),
('Andhadhun', 'A series of mysterious events change the life of a blind pianist, who must now report a crime that he should technically know nothing of.', '2018', 'https://m.media-amazon.com/images/M/MV5BZWZhMjhhZmYtOTIzOC00MGYzLWI1OGYtM2ZkN2IxNTI4ZWI3XkEyXkFqcGdeQXVyNDAzNDk0MTQ@._V1_.jpg', 139),
('Drishyam', 'A man goes to extreme lengths to save his family from punishment after the family commits an accidental crime.', '2013', 'https://m.media-amazon.com/images/M/MV5BYmY3MzYwMGUtOWMxYS00OGVhLWFjNmUtYzlkNGVmY2ZkMjA3XkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_.jpg', 160),
('Jagten', 'A teacher lives a lonely life, all the while struggling over his son\'s custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to be brutally shattered by an innocent little lie.', '2012', 'https://m.media-amazon.com/images/M/MV5BMTg2NDg3ODg4NF5BMl5BanBnXkFtZTcwNzk3NTc3Nw@@._V1_.jpg', 115);