module Forem
  module Admin
    class ConfigurationController < ApplicationController
      def index
        @configuration = Forem::Configuration.first
      end

      def update
        if @conf.update_attributes(params[:configuration])
          flash[:notice] = t("forem.admin.configuration.updated")
          redirect_to admin_configuration_path
        else
          flash.now.alert = t("forem.admin.configuration.not_updated")
          render :action => "index"
        end
      end
    end
  end
end
