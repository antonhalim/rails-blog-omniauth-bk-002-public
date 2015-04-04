class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :token, :secret, :provider, :uid
    end
  end
end
