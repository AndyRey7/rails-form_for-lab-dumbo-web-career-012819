class SchoolClassesController < ApplicationController
 before_action :get_school_class, only: [:edit, :update, :show]

    def index
        @school_classes = SchoolClass.all
    end


    def show
    end

    def new
        @school_class = SchoolClass.new
    end

    def edit
    end

    def create
        @school_class = SchoolClass.create(params.require(:school_class))
        redirect_to school_class_path(@school_class)
    end

    def update
        @school_class.update(params.require(:school_class))
        redirect_to school_classes_path(@school_class)
    end


    private
    def get_school_class
        @school_class = SchoolClass.find(params[:id])
    end

end
