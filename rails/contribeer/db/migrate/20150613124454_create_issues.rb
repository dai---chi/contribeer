class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :github_issue_id
      t.string :repo_name
      t.boolean :is_opend

      t.timestamps
    end
  end
end
