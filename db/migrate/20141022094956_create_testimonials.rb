class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.integer :star_rating
      t.text :body
      t.references :user, index: true
      t.references :business_profile, index: true

      t.timestamps
    end
  end
end
