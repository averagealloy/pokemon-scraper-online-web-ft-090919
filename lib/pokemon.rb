class Pokemon

attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon (name, type) VALUES (?, ?)
    SQL
    db.execute(sql, name, type)
  end

  def self.find(id, db)
    sql = <<-SQL
    SELECT * FROM pokemon WHERE id = ?
    SQL
db.execute(sql, id)
Pokemon.new(
id: found_pokemon[0],
name: found_pokemon[0],
type: found_pokemon[0],
db: found_pokemon[0],
)
end
end
