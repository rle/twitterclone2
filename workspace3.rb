# VM1

Thread.start { callcc {|cc| $cont = cc}; p "Run after One pretty callcc" }

Maglev::PERSISTENT_ROOT[:cc] = $cont

Maglev.commit_transaction

# VM2

Maglev.abort_transaction

$cont = Maglev::PERSISTENT_ROOT[:cc]

Thread.start {$cont.call}

