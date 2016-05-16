# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#user
User.create!(first_name: "Homer", last_name: "Simpson", email: "homer@email.com",
             password: "password", avatar_file_name: "homer.png", avatar_content_type: "image/png" )

# course 1 / lesson 1
Course.create!(name: %{Black Holes})
Lesson.create!(name: %{What is a Black Hole?}, course_id: 1, lesson_id_fix: 1)
Lecture.create!([{name: %{Introduction},
                            reading:
                                %{<p>
  A black hole is a place in space where gravity pulls so much that even light can not get out. The gravity is so strong because matter has been squeezed into a tiny space. This can happen when a star is dying.
</p>
<p>
  Because no light can get out, people cannot see black holes. They are invisible. Space telescopes with special tools can help find black holes. The special tools can see how stars that are very close to black holes act differently than other stars
</p>},
                            quizQuestions: %{Can light get out of a black hole?},
                            quizAnswers: %{No},
                            quizOptions: %{No-Yes-Only in small black holes},
                            lesson_id: 1,
                            lesson_id_fix: 1,
                            course_id: 1},
                           {name: %{How Big Are Black Holes?},
                            reading: %{<p>Black holes can be big or small. Scientists think the smallest black holes are as small as just one atom. These black holes are very tiny but have the mass of a large mountain. Mass is the amount of matter, or stuff, in an object.</p>
<p>Another kind of black hole is called stellar. Its mass can be up to 20 times more than the mass of the sun. There may be many, many stellar mass black holes in Earth's galaxy. Earth's galaxy is called the Milky Way.</p>
<p>The largest black holes are called supermassive. These black holes have masses that are more than 1 million suns together. Scientists have found proof that every large a.	galaxy contains a supermassive black hole at its center. The supermassive black hole at the center of the Milky Way galaxy is called Sagittarius A. It has a mass equal to about 4 million suns and would fit inside a very large ball that could hold a few million Earths.</p>},
                            quizQuestions: %{Can a black hole have more mass than a star?},
                            quizAnswers: %{Yes},
                            quizOptions: %{Yes-Stars always have more mass than black holes-Black holes always have more mass than stars},
                            lesson_id: 1,
                            lesson_id_fix: 1,
                            course_id: 1},
                           {name: %{How Do Black Holes Form?},
                            reading: %{<p>Scientists think the smallest black holes formed when the universe began.</p>
<p>Stellar black holes are made when the center of a very big star falls in upon itself, or collapses. When this happens, it causes a supernova. A supernova is an exploding star that blasts part of the star into space.</p>
<p>Scientists think supermassive black holes were made at the same time as the galaxy they are in.</p>},
                            quizQuestions: %{When were supermassive black holes made?},
                            quizAnswers: %{At_the_same_time_as_the_galaxy_they_are_in},
                            quizOptions: %{About 1 Billion years after the galaxy was formed-At the same time as the galaxy they are in-Before the galaxy was formed},
                            lesson_id: 1,
                            lesson_id_fix: 1,
                            course_id: 1},
                           {name: %{How Do Scientists Know Black holes exist if they are black},
                            reading: %{<p>a.	A black hole can not be seen because strong gravity pulls all of the light into the middle of the black hole. But scientists can see how the strong gravity affects the stars and gas around the black hole. Scientists can study stars to find out if they are flying around, or orbiting, a black hole.</p>
<p>When a black hole and a star are close together, high-energy light is made. This kind of light can not be seen with human eyes. Scientists use satellites and telescopes in space to see the high-energy light.</p>},
                            quizQuestions: %{Can you see a black hole in a telescope?},
                            quizAnswers: %{We_can_only_observe_the_effects_of_the_black_hole_on_the_light_emitting_matter_around_it},
                            quizOptions: %{Yes-We can only observe the effects of the black hole on the light emitting matter around it-Black holes appear as a dark circle in the center of a bright galaxy},
                            lesson_id: 1,
                            lesson_id_fix: 1,
                            course_id: 1},
                           {name: %{Black Holes and Us},
                            reading: %{<p>Black holes do not go around in space eating stars, moons and planets. Earth will not fall into a black hole because no black hole is close enough to the solar system for Earth to do that.</p>
<p>Even if a black hole the same mass as the sun were to take the place of the sun, Earth still would not fall in. The black hole would have the same gravity as the sun. Earth and the other planets would orbit the black hole as they orbit the sun now.</p>
<p>The sun will never turn into a black hole. The sun is not a big enough star to make a black hole</p>},
                            quizQuestions: %{Could a black hole destroy Earth?},
                            quizAnswers: %{No__black_holes_do_not_run_around_gobbling_up_planets},
                            quizOptions: %{Sure-Only black holes with a mass of more than 10 solar masses-No, black holes do not run around gobbling up planets},
                            lesson_id: 1,
                            lesson_id_fix: 1,
                            course_id: 1}])
# course 2 / lesson 1
Course.create!(name: %{History & Research on Balck Holes})
Lesson.create!(name: %{History of Black Holes}, course_id: 2, lesson_id_fix: 1)
Lecture.create!([{name: %{John Mitchell},
                  reading:%{<p> In 1783, an English geologist named John Mitchell wrote that it might be possible for something to be so big and heavy that the escape speed from its gravity is equal to the speed of light. <p>
<p>For a small thing, like a rocket, to escape from a larger thing, like Earth, it has to escape the pull of our gravity or it will fall back. The speed that it must travel upward to get away from Earth's gravity is called escape velocity.</p>
<p> Bigger planets (like Jupiter) and stars have more mass, so have stronger gravity than Earth, so the escape velocity is much faster. </p>
<p> John Mitchell thought it was possible for something to be so big that the escape velocity would be faster than the speed of light, so even light could not escape.</p>},
                  quizQuestions: %{Was John Mitchell an astronomer?},
                  quizAnswers: %{Yes},
                  quizOptions: %{Only part time-Yes-He was an astronomist},
                  lesson_id: 1,
                  lesson_id_fix: 1,
                  course_id: 2},
                 {name: %{Pierre-Simon Laplace},
                  reading: %{<p> Some scientists thought Mitchell might be right, but others thought that light had no mass and would not be pulled by gravity. His theory was forgotten.</p>
<p> In 1796, Pierre-Simon Laplace promoted the same idea in the first and second editions of his book Exposition du système du Monde (it was removed from later editions).</p>},
                  quizQuestions: %{Did Pierre-Simon Laplace promote Mitchell’s idea?},
                  quizAnswers: %{Yes},
                  quizOptions: %{Yes-At first, but he changed his mind after Galileo discovered Jupiters's moons-He was conflicted about the idea},
                  lesson_id: 1,
                  lesson_id_fix: 1,
                  course_id: 2},
                 {name: %{Albert Einstein},
                  reading: %{<p> In 1916 Albert Einstein wrote an explanation of gravity called general relativity. It is a very complicated theory, but there are two important things about it:</p>
<p> Mass causes space (and spacetime) to bend, or curve. Moving things "fall along" or follow the curves in space. This is what we call gravity.
</p>
<p>Light always travels at the same speed, and is affected by gravity. If it seems to change speed, it is really traveling along a curve in spacetime.</p>
<p> A few months later, while serving in the war, the German physicist Karl Schwarzschild used Einstein's equations to show that a black hole could exist. </p>},
                  quizQuestions: %{Did Schwarzschild use Einstein's explanation of gravity to show that the black hole can exist?},
                  quizAnswers: %{Yes},
                  quizOptions: %{Only the special relativity theory-There is still no theoretical proof that black holes can exist-Yes},
                  lesson_id: 1,
                  lesson_id_fix: 1,
                  course_id:2}])

# course 2 / lesson 2
Lesson.create!(name: %{Research on Black Holes}, course_id: 2, lesson_id_fix: 2)
Lecture.create!([{name: %{Introduction},
                  reading:%{<p> Research on weird, invisible objects called black holes might help explain how the universe began.</p>
<p>If you were to jump into a black hole (something that no one has yet figured out how to do), you'd be stretched from head to toe and squeezed from side to side into a long string of human spaghetti. Finally, you'd get pulverized into the tiniest bits imaginable.</p>},
                  quizQuestions: %{If you were to jump into a black hole, would you get taller?},
                  quizAnswers: %{Yes},
                  quizOptions: %{Yes-No-Nothing can exist close to a black hole},
                  lesson_id: 2,
                  lesson_id_fix: 2,
                  course_id: 2},
                 {name: %{Black Holes and Gravity},
                  reading: %{<p> The more mass an object has, the more gravity it has. So, black holes have a lot of gravity. Black holes formed in a supernova may be only a few times the mass of our sun. On the other hand, black holes at the centers of galaxies may have a billion times as much mass as the sun, all crammed into a very small space.</p>
<p> Earth's gravity keeps us on the ground; a black hole's gravity sucks things in. Its pull is so strong that not even light can escape. That's why it looks black—as if there's nothing there.</p>},
                  quizQuestions: %{Does the earth and black hole’s gravity work the same way?},
                  quizAnswers: %{No},
                  quizOptions: %{No-Only for black holes that have masses comparable to Earth-Scientists are not sure},
                  lesson_id: 2,
                  lesson_id_fix: 2,
                  course_id: 2},
                 {name: %{How do scientists study black holes?},
                  reading: %{<p> Because black holes are so weird (not to mention invisible), they can be difficult to study.</p>
<p>Scientists tackle this problem in two ways. Some use telescopes to make observations, staring into the sky and looking for signs of radiation that signal the presence of a black hole. Others use mathematics and computers to develop theories about black holes and explore the behavior of equations that describe such objects. They do thought experiments.</p>},
                  quizQuestions: %{If we can’t see the black holes, do scientists still use telescope to study them?},
                  quizAnswers: %{Yes},
                  quizOptions: %{Yes, but scientists need very good eyesight to see the black holes in the telescopes-Yes, but they have to be "Black Space Telescopes"-Yes},
                  lesson_id: 2,
                  lesson_id_fix: 2,
                  course_id: 2}])

# course 3 / lesson 1
Course.create!(name: %{Advanced Topics on Black Holes})
Lesson.create!(name: %{ Effect on light }, course_id: 3, lesson_id_fix: 1)
Lecture.create!([{name: %{Singularity},
                  reading:%{<p> At the middle of a black hole, there is a gravitational center called a singularity. It is impossible to see it because the gravity prevents any light escaping. Around the tiny singularity, there is a large area where light which would normally pass by gets sucked in as well.<p>
<p> The edge of this area is called the event horizon. The gravity of the black hole gets weaker at a distance. The event horizon is the place farthest away from the middle where the gravity is still strong enough to trap light.</p>},
                  quizQuestions: %{Is the edge of the event horizon called Singularity?},
                  quizAnswers: %{No},
                  quizOptions: %{Yes-No-Maybe},
                  lesson_id: 1,
                  lesson_id_fix: 1,
                  course_id: 3},
                 {name: %{Accretion Disk },
                  reading: %{<p> Outside the event horizon, light and matter will still be pulled toward the black hole. If a black hole is surrounded by matter, the matter will form an "accretion disk" (accretion means "gathering") around the black hole. </p>
<p> An accretion disk looks something like the rings of Saturn. As it gets sucked in, the matter gets very hot and shoots x-ray radiation into space. Think of this as the water spinning around the hole before it falls in.</p>},
                  quizQuestions: %{Does the “accretion disk” surround the black hole?},
                  quizAnswers: %{Yes},
                  quizOptions: %{For most black holes, but the distance of the disk from the black hole can be up to 5 light years-The disk is located over the north pole of the black hole-Yes},
                  lesson_id: 1,
                  lesson_id_fix: 1,
                  course_id: 3},
                 {name: %{Gravitational Lensingng},
                  reading: %{<p> Since we cannot see black holes, they must be detected by other means. When a black hole passes between us and a source of light, the light bends around the black hole creating a mirror image. That effect is called gravitational lensing.</p>},
                  quizQuestions: %{Is bending light the reason for Gravitational Lensing effect?},
                  quizAnswers: %{Yes},
                  quizOptions: %{The reason is Electrostatic Lensing-The reason is Gravytational Lensing-Yes},
                  lesson_id: 1,
                  lesson_id_fix: 1,
                  course_id: 3}])

# course 3 / lesson 2
Lesson.create!(name: %{Hawking Radiation}, course_id: 3, lesson_id_fix: 2)
Lecture.create!([{name: %{Introduction},
                  reading:%{<p> In 1974, Hawking predicted that black holes are not entirely black but emit small amounts of thermal radiation; this effect has become known as Hawking radiation. By applying quantum field theory to a static black hole background, he determined that a black hole should emit particles in a perfect black body spectrum.</p>},
                  quizQuestions: %{Do black holes give off radiation?},
                  quizAnswers: %{Yes},
                  quizOptions: %{Yes-They can emit particles, not radiation-No},
                  lesson_id: 2,
                  lesson_id_fix: 2,
                  course_id: 3},
                 {name: %{ Black Hole Evaporation },
                  reading: %{<p> Hawking radiation reduces the mass and the energy of the black hole and is therefore also known as black hole evaporation. Because of this, black holes that lose more mass than they gain through other means are expected to shrink and ultimately vanish. Micro black holes (MBHs) are predicted to be larger net emitters of radiation than larger black holes and should shrink and dissipate faster.</p>},
                  quizQuestions: %{Do black Holes lose mass?},
                  quizAnswers: %{Yes},
                  quizOptions: %{No, they just acquire more mass over time-Scientists do not know-Yes},
                  lesson_id: 2,
                  lesson_id_fix: 2,
                  course_id: 3},
                 {name: %{Puzzles},
                  reading: %{<p> There are many puzzles concerning black holes and Hawking radiation; for example, black hole evaporation via Hawking radiation seems to mean information is lost forever. The root cause of these puzzles is that quantum mechanics and General Relativity – the two most successful theories in physics, period – are incompatible, and we have no experiments or observations to help us work out how to resolve this incompatibility.</p>},
                  quizQuestions: %{Are the current physics theories complete?},
                  quizAnswers: %{No},
                  quizOptions: %{No-Yes, except for general relativity-Yes, but we lack mathematical concepts to understand the theories},
                  lesson_id: 2,
                  lesson_id_fix: 2,
                  course_id: 3}])

