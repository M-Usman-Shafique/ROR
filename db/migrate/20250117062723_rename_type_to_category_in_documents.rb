class RenameTypeToCategoryInDocuments < ActiveRecord::Migration[8.0]
  def change
    rename_column :documents, :type, :category
  end
end
