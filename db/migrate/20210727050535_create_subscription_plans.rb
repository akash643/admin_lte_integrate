class CreateSubscriptionPlans < ActiveRecord::Migration[6.1]
  def change
      create_table :subscription_plans, id: :uuid  do |t|
        t.string :plan_name
        t.string :price
        t.timestamps
    end
  end
end
