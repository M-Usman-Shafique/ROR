class DocumentsController < ApplicationController
    before_action :set_document, only: [:edit, :update, :show, :destroy]

    def index
        @documents = Document.all
    end

    def new
        @document = Document.new
    end

    def create
        @document = Document.new(document_params)
        if @document.save
            redirect_to documents_path, notice: "Document created successfully"
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @document.update(document_params)
            redirect_to documents_path, notice: "Document updated successfully"
        else
            render :edit
        end
    end

    def show
    end

    def destroy
        if @document.destroy
            redirect_to documents_path, notice: "Document deleted successfully"
        else
            redirect_to documents_path, alert: "Unable to delete document"
        end
    end

    private

    def document_params
        params.require(:document).permit(:name, :category, :employee_id, :image)
    end

    def set_document
        @document = Document.find(params[:id])
        rescue ActiveRecord::RecordNotFound => error
            redirect_to documents_path, alert: error
    end
end