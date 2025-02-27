INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ana', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('VISITOR');
INSERT INTO tb_role (authority) VALUES ('MEMBER');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_review (text,  user_id) VALUES ('Brilhante' , 2);
INSERT INTO tb_review (text,  user_id) VALUES ('Good', 1);
INSERT INTO tb_review (text,  user_id) VALUES ('Wow', 1);
INSERT INTO tb_review (text,  user_id) VALUES ('Brilhante de novo' , 2);
INSERT INTO tb_review (text,  user_id) VALUES ('Good as heaven', 1);
INSERT INTO tb_review (text,  user_id) VALUES ('Wow. insane', 1);




INSERT INTO tb_genre (name) VALUES ('Action');
INSERT INTO tb_genre (name) VALUES ('Suspense');
INSERT INTO tb_genre (name) VALUES ('Drama');

INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Love and monsters', 'Monsters return', 2010, 'https://www.themoviedb.org/t/p/w220_and_h330_face/asmxTLzVSLTkIwybSB0DJHDKw8o.jpg', 'In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.', 1);				
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Justice League', 'The adventure', 2009, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/pcDc2WJAYGJTTvRSEIpRZwM3Ola.jpg', 'Determined to ensure Supermans ultimate sacrifice was not in vain, Bruce Wayne aligns forces with Diana Prince with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions.', 2);				
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Chaos walking', 'cahos into city', 2012, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/5NxjLfs7Bi07bfZCRl9CCnUw7AA.jpg', 'Two unlikely companions embark on a perilous adventure through the badlands of an unexplored planet as they try to escape a dangerous and disorienting reality, where all inner thoughts are seen and heard by everyone.', 3);				
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Mortal Combat', 'Sub Zero', 2014, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/9yBVqNruk6Ykrwc32qrK2TIE5xw.jpg', 'Washed-up MMA fighter Cole Young, unaware of his heritage, and hunted by Emperor Shang Tsungs best warrior, Sub-Zero, seeks out and trains with Earths greatest champions as he prepares to stand against the enemies of Outworld in a high stakes battle for the universe.', 1);				
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Raya', 'The last dragon', 2019, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/hJuDvwzS0SPlsE6MNFOpznQltDZ.jpg', 'Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and it’s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.', 2);				
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Thunder force', 'Winning big', 2020, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/p2JtGEzaVs7E0Cq41JCqHQX7C2A.jpg', 'In a world where supervillains are commonplace, two estranged childhood best friends reunite after one devises a treatment that gives them powers to protect their city.', 3);				
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Mortal Combat', 'Scorpions Revenge', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/vw3zNfzvnVNF7nIjpiEgcdznfeC.jpg', 'After the vicious slaughter of his family by stone-cold mercenary Sub-Zero, Hanzo Hasashi is exiled to the torturous Netherrealm. There, in exchange for his servitude to the sinister Quan Chi, he’s given a chance to avenge his family – and is resurrected as Scorpion, a lost soul bent on revenge. Back on Earthrealm, Lord Raiden gathers a team of elite warriors – Shaolin monk Liu Kang, Special Forces officer Sonya Blade and action star Johnny Cage – an unlikely band of heroes with one chance to save humanity. To do this, they must defeat Shang Tsung’s horde of Outworld gladiators and reign over the Mortal Kombat tournament.', 1);				
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Monster Hunter', 'Behind our world there is another', 2000, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/vw3zNfzvnVNF7nIjpiEgcdznfeC.jpg', 'I a world wher supervillains are commonplace, two estranged childhood best friends reunite after one devises a treatment that gives them powers to protect their city.', 2);				
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Twist', 'Londons favorite thief is all grown up', 1987, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/jnq4fV53Px9HvUZD2bQIxtGSwS7.jpg', 'A Dicken’s classic brought thrillingly up to date in the teeming heartland of modern London, where a group of street smart young hustlers plan the heist of the century for the ultimate payday.', 3);				
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Tom & Jerry', 'Best of enemies. Worst of friends.', 2002, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/cWlSnILiBXolR5vE1nHU2MzSxSp.jpg', 'Tom the cat and Jerry the mouse get kicked out of their home and relocate to a fancy New York hotel, where a scrappy employee named Kayla will lose her job if she can’t evict Jerry before a high-class wedding at the hotel. Her solution? Hiring Tom to get rid of the pesky mouse.', 1);				