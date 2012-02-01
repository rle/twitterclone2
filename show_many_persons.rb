persons = Maglev::PERSISTENT_ROOT[:many_persons]

persons.each {|p| puts p}

Maglev.commit_transaction