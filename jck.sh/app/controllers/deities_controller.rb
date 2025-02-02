class DeitiesController < ApplicationController
    def show
      @deity = DeityGenerator.generate
    end
  end
  