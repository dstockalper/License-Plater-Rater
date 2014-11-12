class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|

      t.integer		:user_id
      t.integer		:plate_id
      t.string		:agg_speeding
      t.string		:agg_weaving
      t.string		:agg_tailgating
      t.string		:agg_cutting
      t.string		:agg_light
      t.string		:agg_rage
      t.string		:agg_other
      t.string		:ina_phone
      t.string		:ina_braking
      t.string		:ina_drifting
      t.string		:ina_intersection
      t.string		:ina_pedestrian
      t.string		:ina_drunk
      t.string		:ina_other
      t.string		:ale_safe
      t.string		:ale_courteous
      t.string		:park_blocking
      t.string		:park_illegal
      t.timestamps
    end
  end
end
