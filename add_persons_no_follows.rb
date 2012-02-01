require 'person'

dhh = Person.new("dhh")
obie = Person.new("obie")
unclebob = Person.new("unclebob")
noob1 = Person.new("noob1")
noob2 = Person.new("noob2")

persons = Maglev::PERSISTENT_ROOT[:persons]

persons << dhh
persons << obie
persons << unclebob
persons << noob1
persons << noob2

Maglev.commit_transaction