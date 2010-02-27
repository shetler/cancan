module CanCan
  # This error is raised when a user isn't allowed to access a given
  # controller action. The method variables are provided so devs
  # can perform a recovery in the app's controller. See
  # ControllerAdditions#unauthorized! for details.
  #
  class AccessDenied < StandardError
    attr_reader :denied_action, :denied_noun
    def initialize(denied_action, denied_noun)
      @denied_action = denied_action
      @denied_noun = denied_noun
    end
  end
end

require File.dirname(__FILE__) + '/cancan/ability'
require File.dirname(__FILE__) + '/cancan/controller_resource'
require File.dirname(__FILE__) + '/cancan/resource_authorization'
require File.dirname(__FILE__) + '/cancan/controller_additions'