# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create!(name: %{Black Holes})
Lesson.create!(name: %{What is a Black Hole?}, course_id: 1)
Lecture.create!([{name: %{Introduction},
                            reading:
                                %{<p>
  A black hole is a place in space where gravity pulls so much that even light can not get out. The gravity is so strong because matter has been squeezed into a tiny space. This can happen when a star is dying.
</p>
<p>
  Because no light can get out, people cannot see black holes. They are invisible. Space telescopes with special tools can help find black holes. The special tools can see how stars that are very close to black holes act differently than other stars
</p>},
                            quizQuestions: %{Can light get out of a black hole?},
                            quizAnswers: %{No!},
                            lesson_id: 1},
                           {name: %{How Big Are Black Holes?},
                            reading: %{<p>Black holes can be big or small. Scientists think the smallest black holes are as small as just one atom. These black holes are very tiny but have the mass of a large mountain. Mass is the amount of matter, or stuff, in an object.</p>
<p>Another kind of black hole is called stellar. Its mass can be up to 20 times more than the mass of the sun. There may be many, many stellar mass black holes in Earth's galaxy. Earth's galaxy is called the Milky Way.</p>
<p>The largest black holes are called supermassive. These black holes have masses that are more than 1 million suns together. Scientists have found proof that every large a.	galaxy contains a supermassive black hole at its center. The supermassive black hole at the center of the Milky Way galaxy is called Sagittarius A. It has a mass equal to about 4 million suns and would fit inside a very large ball that could hold a few million Earths.</p>},
                            quizQuestions: %{Can a black hole have more mass than a star?},
                            quizAnswers: %{Yes},
                            lesson_id: 1},
                           {name: %{How Do Black Holes Form?},
                            reading: %{<p>Scientists think the smallest black holes formed when the universe began.</p>
<p>Stellar black holes are made when the center of a very big star falls in upon itself, or collapses. When this happens, it causes a supernova. A supernova is an exploding star that blasts part of the star into space.</p>
<p>Scientists think supermassive black holes were made at the same time as the galaxy they are in.</p>},
                            quizQuestions: %{When were supermassive black holes made?},
                            quizAnswers: %{At the same time as the galaxy they are in.},
                            lesson_id: 1},
                           {name: %{How Do Scientists Know Black holes exist if they are black},
                            reading: %{<p>a.	A black hole can not be seen because strong gravity pulls all of the light into the middle of the black hole. But scientists can see how the strong gravity affects the stars and gas around the black hole. Scientists can study stars to find out if they are flying around, or orbiting, a black hole.</p>
<p>When a black hole and a star are close together, high-energy light is made. This kind of light can not be seen with human eyes. Scientists use satellites and telescopes in space to see the high-energy light.</p>},
                            quizQuestions: %{Could a black hole destroy Earth?},
                            quizAnswers: %{No, black holes do not run around gobbling up planets.},
                            lesson_id: 1},
                           {name: %{Black Holes and Us},
                            reading: %{<p>Black holes do not go around in space eating stars, moons and planets. Earth will not fall into a black hole because no black hole is close enough to the solar system for Earth to do that.</p>
<p>Even if a black hole the same mass as the sun were to take the place of the sun, Earth still would not fall in. The black hole would have the same gravity as the sun. Earth and the other planets would orbit the black hole as they orbit the sun now.</p>
<p>The sun will never turn into a black hole. The sun is not a big enough star to make a black hole</p>},
                            quizQuestions: %{Could a black hole destroy Earth?},
                            quizAnswers: %{No, black holes do not run around gobbling up planets.},
                            lesson_id: 1}])