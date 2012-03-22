module ModalMeHelper
  def modal_me_to(*args, &block)
    if block_given?
      raise args.first.inspect
    else
    
    end
  
    return link_to(args, block)
  end
end
