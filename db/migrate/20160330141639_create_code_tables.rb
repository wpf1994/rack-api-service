class CreateCodeTables < ActiveRecord::Migration
  def change

    create_table :code_tables do |t|
      t.string :name # 标题
      t.string :value # 值
      t.string :memo # 简介
      t.integer :cate # 类型，暂定
      t.integer :refer_id #关联
      t.boolean :editable # 是否可编辑

      t.timestamps null: false
    end
    CodeTable.create name: 'app_id', value: '', cate: 0, editable: false
    CodeTable.create name: 'app_key', value: '', cate: 0, editable: false
  end
end
