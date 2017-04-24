require "randomizer/version"
require "randomizer/active_record_methods"

ActiveRecord::Base.send :include, Randomizer::ActiveRecordMethods
