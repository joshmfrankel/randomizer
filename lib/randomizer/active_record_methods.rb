module Randomizer
  module ActiveRecordMethods

    def self.included(base)
      base.extend InstanceMethods
    end

    module InstanceMethods

      def find_random(amount: 1)
        random = order("RANDOM()").limit(amount)

        RandomizerBucket.create!(bucket_id: 1, bucket_type: "User", glue_id: random.first.id, glue_type: random.first.class.to_s)
      end

      # Find random result
      # Save result based on bucket(id, type) to a specific handle(id, type) for a subject(id, type)
      # If result above already exists use it else generate a new one
    end

  end
end
