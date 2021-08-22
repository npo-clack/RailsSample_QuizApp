class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :question, null: false
      t.string :answer, null: false
      t.string :description

      t.timestamps
    end
  end
end
