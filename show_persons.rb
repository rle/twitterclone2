persons = Maglev::PERSISTENT_ROOT[:persons]

persons.each {|p| puts p}

Maglev.commit_transaction