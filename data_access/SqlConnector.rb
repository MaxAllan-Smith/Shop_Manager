require "pg"

class SqlConnector

  def Connect(databaseName)
    @connection = PG.connect({ host: "localhost", dbname: databaseName })
  end

  def exec_params(query, param)
    @connection.exec_params(query, param)
  end
  
end

