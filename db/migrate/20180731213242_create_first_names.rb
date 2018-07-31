class CreateFirstNames < ActiveRecord::Migration[5.1]
  def change
    create_table :first_names do |t|
      t.string :last_name
      t.string :maiden_name
      t.string :formatted_name
      t.string :phonetic_first_name
      t.string :phonetic_last_name
      t.string :formatted_phonetic_name
      t.string :headline
      t.string :location
      t.integer :industry
      t.string :current_share
      t.integer :num_connections
      t.boolean :num_connections_capped
      t.text :sumary
      t.string :specialties
      t.string :positions
      t.string :picture_url
      t.string :picture_url_original
      t.string :site_standard_profile_request
      t.string :api_standard_profile_request
      t.string :public_profile_url
      t.string :email_address

      t.timestamps
    end
  end
end
