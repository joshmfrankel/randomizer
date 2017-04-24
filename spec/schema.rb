ActiveRecord::Schema.define(version: 1) do
  create_table :mocks, force: true do |t|
    t.column :name, :string
  end

  create_table :lessons, force: true do |t|
    t.column :name, :string
  end

  create_table :questions, force: true do |t|
    t.column :name, :string
  end

  create_table :user, force: true do |t|
    t.column :name, :string
  end

  create_table :company, force: true do |t|
    t.column :name, :string
  end

  create_table :randomizer_buckets, force: true do |t|
    t.column :bucket_id, :integer
    t.column :bucket_type, :string
    t.column :handle_id, :integer
    t.column :handle_type, :string
    t.column :subject_id, :integer
    t.column :subject_type, :string
  end
end
