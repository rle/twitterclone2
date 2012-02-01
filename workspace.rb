persons = Maglev::PERSISTENT_ROOT[:persons]

dhh = persons[0]
obie = persons[1]
unclebob = persons[2]
noob1 = unclebob.followers[0]
noob2 = unclebob.followers[1]

dhh.tweet("Rails is cool")
obie.tweet("HashRocket likes HAML")
unclebob.tweet("SOLID is crucial for good OO design")

dhh.email = "matz@email.com"

