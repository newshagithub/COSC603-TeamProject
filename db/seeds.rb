# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# course 1 / lesson 1
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
# course 2 / lecture 1
Course.create!(name: %{History & Research on Balck Holes})
Lesson.create!(name: %{History of Black Holes}, course_id: 2)
Lecture.create!([{name: %{John Mitchell},
                  reading:%{<p> In 1783, an English geologist named John Mitchell wrote that it might be possible for something to be so big and heavy that the escape speed from its gravity is equal to the speed of light. <p>
<p>For a small thing, like a rocket, to escape from a larger thing, like Earth, it has to escape the pull of our gravity or it will fall back. The speed that it must travel upward to get away from Earth's gravity is called escape velocity.</p>
<p> Bigger planets (like Jupiter) and stars have more mass, so have stronger gravity than Earth, so the escape velocity is much faster. </p>
<p> John Mitchell thought it was possible for something to be so big that the escape velocity would be faster than the speed of light, so even light could not escape.</p>},
                  quizQuestions: %{Was John Mitchell think a astrologist?},
                  quizAnswers: %{No},
                  lesson_id: 1},
                 {name: %{Pierre-Simon Laplace},
                  reading: %{<p> Some scientists thought Mitchell might be right, but others thought that light had no mass and would not be pulled by gravity. His theory was forgotten.</p>
<p> In 1796, Pierre-Simon Laplace promoted the same idea in the first and second editions of his book Exposition du système du Monde (it was removed from later editions).</p>},
                  quizQuestions: %{Did Pierre-Simon Laplace promote Mitchell’s idea?},
                  quizAnswers: %{Yes},
                  lesson_id: 1},
                 {name: %{Albert Einstein},
                  reading: %{<p> In 1916 Albert Einstein wrote an explanation of gravity called general relativity. It is a very complicated theory, but there are two important things about it:</p>
<p> Mass causes space (and spacetime) to bend, or curve. Moving things "fall along" or follow the curves in space. This is what we call gravity.
</p>
<p>Light always travels at the same speed, and is affected by gravity. If it seems to change speed, it is really traveling along a curve in spacetime.</p>
<p> A few months later, while serving in the war, the German physicist Karl Schwarzschild used Einstein's equations to show that a black hole could exist. </p>},
                  quizQuestions: %{Did Schwarzschild use Einstein's explanation of gravity to show that the black hole can exist?},
                  quizAnswers: %{Yes},
                  lesson_id: 1}])

# course 2 / lecture 2
Lesson.create!(name: %{Research on Black Holes}, course_id: 2)
Lecture.create!([{name: %{Introduction},
                  reading:%{<p> Research on weird, invisible objects called black holes might help explain how the universe began.</p>
<p>If you were to jump into a black hole (something that no one has yet figured out how to do), you'd be stretched from head to toe and squeezed from side to side into a long string of human spaghetti. Finally, you'd get pulverized into the tiniest bits imaginable.</p>},
                  quizQuestions: %{If you were to jump into a black hole, would you get taller?},
                  quizAnswers: %{Yes},
                  lesson_id: 2},
                 {name: %{Black Holes and Gravity},
                  reading: %{<p> The more mass an object has, the more gravity it has. So, black holes have a lot of gravity. Black holes formed in a supernova may be only a few times the mass of our sun. On the other hand, black holes at the centers of galaxies may have a billion times as much mass as the sun, all crammed into a very small space.</p>
<p> Earth's gravity keeps us on the ground; a black hole's gravity sucks things in. Its pull is so strong that not even light can escape. That's why it looks black—as if there's nothing there.</p>},
                  quizQuestions: %{Does the earth and black hole’s gravity work the same way?},
                  quizAnswers: %{No},
                  lesson_id: 2},
                 {name: %{How do scientists study black holes?},
                  reading: %{<p> Because black holes are so weird (not to mention invisible), they can be difficult to study.</p>
<p>Scientists tackle this problem in two ways. Some use telescopes to make observations, staring into the sky and looking for signs of radiation that signal the presence of a black hole. Others use mathematics and computers to develop theories about black holes and explore the behavior of equations that describe such objects. They do thought experiments.</p>},
                  quizQuestions: %{If we can’t see the black holes, do scientists still use telescope to study them?},
                  quizAnswers: %{Yes},
                  lesson_id: 2}])
