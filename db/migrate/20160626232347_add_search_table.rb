class AddSearchTable < ActiveRecord::Migration
  def change
    create_table(:search) do |t|
      t.string :name
    end
  end
end
