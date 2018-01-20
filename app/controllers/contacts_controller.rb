class ContactsController < ApplicationController

  # def index
  # end

  def show
  # the id parameter is automatically created in the model,
  # it is guaranteed to be unique within the table.
  @contact = Contact.find(params[:id])
  end

  def new
  end

  def create
    @contact = Contact.new(params.require(:contact).permit(:name, :phone))
    @contact.save
    redirect_to @contact
  end
end
