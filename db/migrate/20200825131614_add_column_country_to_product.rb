class AddColumnCountryToProduct < ActiveRecord::Migration[6.0]
  def change

    add_column:products,:country,:string

  end
end
