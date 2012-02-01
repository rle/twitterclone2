y = 4
proc = Proc.new {|x| x * y}
proc.call(4)

Maglev::PERSISTENT_ROOT[:proc] = proc
Maglev.commit_transaction

Maglev.abort_transaction