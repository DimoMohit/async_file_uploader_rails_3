class CreateResumes < ActiveRecord::Migration
  def self.up
    create_table :resumes do |t|
    	t.string :first_name
    	t.string :last_name
    	t.text :resume
    	t.text :profile_pic
    	t.string :resume_size
      t.timestamps
    end
  end

  def self.down
    drop_table :resumes
  end
end
