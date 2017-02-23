class Owner
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods
  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def restaurants
    sql = <<-SQL
      SELECT *
      FROM owners
      INNER JOIN restaurants
      ON restaurants.owner_id = owners.id
      WHERE owners.id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end
end
