require 'person'

large_list = Maglev::PERSISTENT_ROOT[:many_persons]

size = large_list.size

(1..10000).each {|i|
  p = Person.new("user#{i}")
  large_list << p
}

Maglev.commit_transaction
