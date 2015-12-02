class UpdateSequence < ActiveRecord::Migration
  def change
    Section.all.order(:created_at).each_with_index do |s, i|
      s.update_column(:sequence, (i + 1) * 10)
    end
  end
end
