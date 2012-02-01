Maglev.persistent do
  require 'person'
  require 'tweet'
end

Maglev::PERSISTENT_ROOT[:persons] = Array.new
Maglev::PERSISTENT_ROOT[:many_persons] = Array.new

Maglev.commit_transaction