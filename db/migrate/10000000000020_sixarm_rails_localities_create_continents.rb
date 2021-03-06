class SixArmRailsLocalitiesCreateContinents < ActiveRecord::Migration

  TABLE = 'continents'

  def self.up

    create_table TABLE, :force => true do |t|

      t.column :created_at, :datetime
      t.column :updated_at, :datetime
      t.column :creator_id, :integer
      t.column :updator_id, :integer
      t.column :status, :integer

      t.column :name_en,            :string
      t.column :name_en_searchable, :string
      t.column :iso,                :string, :limit => 2  #continent code
      t.column :regional_id,        :integer

    end

    add_index TABLE, :created_at
    add_index TABLE, :updated_at
    add_index TABLE, :creator_id
    add_index TABLE, :updator_id
    add_index TABLE, :status

    add_index TABLE, :name_en
    add_index TABLE, :name_en_searchable
    add_index TABLE, :iso
    add_index TABLE, :regional_id

  end

  def self.down
    drop_table TABLE
  end

end

