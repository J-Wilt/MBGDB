class Contact < ActiveRecord::Base
    def new
        @contact = contact.new
    end 
end 

def create
    @contacts =contact.new(contact_params)
    if @contacts.save
        redirect_to new_contact_path, notice: "Message Sent"
    else
        redirect_to new_contact_path,notice: "Error occured."
    end 
    
    private
    def contact_params
        params.require(:contact).permit(:name, :email, :comments)
    end
end    