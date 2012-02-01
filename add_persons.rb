require 'person'

dhh = Person.new("dhh")
obie = Person.new("obie")
unclebob = Person.new("unclebob")
noob1 = Person.new("noob1")
noob2 = Person.new("noob2")

obie.follows(dhh)
unclebob.follows(dhh)

unclebob.follows(obie)

noob1.follows(unclebob)
noob2.follows(unclebob)

persons = Maglev::PERSISTENT_ROOT[:persons]

persons << dhh
persons << obie
persons << unclebob

Maglev.commit_transaction