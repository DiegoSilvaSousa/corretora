RailsAdmin.config do |config|

  config.main_app_name = [".: Evolução Corretora de Seguros:.", ""]

  config.navigation_static_label = "Cotação - Links"

  config.navigation_static_links = {
  'HDI Seguros' => 'https://www.hdi.com.br',
  'Sul Américas Seguros' => 'https://portal.sulamericaseguros.com.br/main.jsp?lumPageId=8A488AD616CF43580116CF6218DA0239',
  'Allianz' => 'https://www.allianznet.com.br/drlf01/pt_BR/web/azb-allianznet/inicio',
  'Mapfre' => 'https://www.mapfreconnect.com.br/default.asp',
  'Azul Seguros' => 'https://www.azulseguros.com.br',
  }

  config.actions do

    dashboard do
      statistics false
    end

    index                         # mandatory
    new
    #export
    history_index
    bulk_delete
    # member actions
    show
    edit
    delete
    history_show
    show_in_app

    config.model Individual do
      label "Cadastro de Cliente - Pessoa Física"
      weight -2
    end

    config.model Company do
      label "Cadastro de Cliente - Pessoa Jurídica"
      weight -1
    end

    config.model Insurance do
      label "Seguros"
    end

    config.model Payment do
      parent Insurance
      weight -1
      label "Pagamentos"
    end

    config.model Sinister do
      parent Insurance
      weight -2
      label "Sinistros"
    end


    config.model Proposal do
      parent Insurance
      weight -3
      label "Propostas"
    end

    config.model Client do
      visible false
      field :addresses do
        inverse_of :clients
        nested_form false
      end
      field :phones do
        inverse_of :clients
        nested_form false
      end

    end

    config.model Phone do
      visible false
    end

    config.model Address do
      visible false
    end
  end

  config.model User do
    navigation_icon 'fa fa-user-circle'
  end

  config.model User do
    navigation_icon 'fa fa-user-circle'
  end

  config.model Individual do
    navigation_icon 'fa fa-id-card'
  end

  config.model Company do
    navigation_icon 'fa fa-industry'
  end

  config.model Phone do
    navigation_icon 'fa fa-phone'
      create do
        field :type_phone
        field :number
      end

      edit do
        field :type_phone
        field :number
      end
  end

  config.model Address do
      create do
        field :type_address
        field :name
        field :number
        field :add_on
        field :neighborhood
        field :city
        field :state
        field :code_postal
      end

      edit do
        field :type_address
        field :name
        field :number
        field :add_on
        field :neighborhood
        field :city
        field :state
        field :code_postal
      end
  end

  config.model Client do
      create do
        field :email
        field :active
        field :imported
        field :observations
        field :score
      end

      edit do
        field :email
        field :active
        field :imported
        field :observations
        field :score
      end
  end

### Popular gems integration



  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

#  config.actions do
#    dashboard                     # mandatory
#    index                         # mandatory
#    new
#    export
#    bulk_delete
#    show
#    edit
#    delete
#    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
#  end
end
