class ContactsController < ApplicationController
  # actions in a Rails controller are typically in the order:
  # index, show, new, edit, create, update, destroy

  def index
    @contacts = Contact.all
  end

  def show
  # the id parameter is automatically created in the model,
  # it is guaranteed to be unique within the table.
  @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact..find(params[:id])
  end

  def create
    @contact = Contact.new(params.require(:contact).permit(:name, :phone))
    @contact.save

    if @contact.save
      redirect_to @contact
    else
      flash[:error]
      render :new
    end
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(params.require(:contact).permit(:name, :phone))
      redirect_to @contact
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to :action => 'index'
  end
end
