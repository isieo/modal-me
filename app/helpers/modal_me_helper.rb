module ModalMeHelper
  def modal_me_to(*args, &block)
    if block_given?
      options      = args.first || {}
      html_options = args.second
      modal_title = args.third
      modal_me_to(capture(&block), options, html_options,modal_title)
    else
      name         = args[0]
      options      = args[1] || {}
      html_options = args[2]
      modal_title = args[3] || name
      html_options['data-title'] = modal_title
      html_options['data-url'] = "#{options}.text"
      return link_to(name, options, html_options)
    end
  end
end
