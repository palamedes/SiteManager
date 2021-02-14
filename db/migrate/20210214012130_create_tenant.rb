class CreateTenant < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|

      t.string :subdomain, null: false, unique: true
      t.references :user

    end
  end
end
