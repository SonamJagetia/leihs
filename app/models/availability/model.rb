module Availability
  module Model
    
    def availability_cache_key(inventory_pool)
      "/model/#{id}/inventory_pool/#{inventory_pool.id}/changes"
    end

    def availability_changes_in(inventory_pool)
      Rails.cache.fetch(availability_cache_key(inventory_pool)) do
        Availability::Main.new(:model_id => id, :inventory_pool_id => inventory_pool.id)
      end
    end

    def delete_availability_changes_in(inventory_pool)
      #1402
      partitions.by_group_in(inventory_pool, Group::GENERAL_GROUP_ID)

      Rails.cache.delete(availability_cache_key(inventory_pool))
    end


  end
end
