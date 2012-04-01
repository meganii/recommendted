migration 1, :create_movies do
  up do
    create_table :movies do
      column :id, Integer, :serial => true
      column :id, String, :length => 255
      column :title, String, :length => 255
      column :url, String, :length => 255
    end
  end

  down do
    drop_table :movies
  end
end
