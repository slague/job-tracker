class AddCommentToJobs < ActiveRecord::Migration
  def change
    add_reference :jobs, :comment, index: true, foreign_key: true
  end
end
