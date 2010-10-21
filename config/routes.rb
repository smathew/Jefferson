ActionController::Routing::Routes.draw do |map|
  map.resources :boardlogins

  map.resources :loanapps

  map.resources :memapps

  map.resources :guestbooks

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  map.connect '/', :controller => 'home', :action => 'index'
  map.root :controller => 'home'
  
  map.whatsnew '/whatsnew', :controller => 'home', :action => 'whatsnew'
  map.idtheft '/idtheft', :controller => 'home', :action => 'idtheft'
  map.rates '/rates', :controller => 'home', :action => 'rates'
  map.signin '/signin', :controller => 'home', :action => 'signin'
  map.disclosure '/disclosure', :controller => 'home', :action => 'disclosure'
  map.prodserv '/prodserv', :controller => 'home', :action => 'prodserv'
  map.ira '/ira', :controller => 'home', :action => 'ira'
  map.ondoc '/ondoc', :controller => 'home', :action => 'ondoc'
  map.promotions '/promotions', :controller => 'home', :action => 'promotions'
  map.privacy '/privacy', :controller => 'home', :action => 'privacy'
  map.calculators '/calculators', :controller => 'home', :action => 'calculators'
  map.discount '/discount', :controller => 'home', :action => 'discount'
  map.indirect '/indirect', :controller => 'home', :action => 'indirect'
  map.servicesummary '/servicesummary', :controller => 'home', :action => 'servicesummary'
  map.idtheftnets '/idtheftnets', :controller => 'home', :action => 'idtheftnets'
  map.ourcu '/ourcu', :controller => 'home', :action => 'ourcu'
  map.olserv '/olserv', :controller => 'home', :action => 'olserv'
  map.affiliations '/affiliations', :controller => 'home', :action => 'affiliations'
  map.employment '/employment', :controller => 'home', :action => 'employment'
  map.helpfullinks '/helpfullinks', :controller => 'home', :action => 'helpfullinks'
  
  map.cic '/cic', :controller => 'calculator', :action => 'cic'
  map.cicr '/cicr', :controller => 'calculator', :action => 'cicr'
  map.ccpc '/ccpc', :controller => 'calculator', :action => 'ccpc'
  map.ccpcr '/ccpcr', :controller => 'calculator', :action => 'ccpcr'
  map.frmc '/frmc', :controller => 'calculator', :action => 'frmc'
  map.frmcr '/frmcr', :controller => 'calculator', :action => 'frmcr'
  map.rc '/rc', :controller => 'calculator', :action => 'rc'
  map.rcr '/rcr', :controller => 'calculator', :action => 'rcr'
  map.sc '/sc', :controller => 'calculator', :action => 'sc'
  map.scr '/scr', :controller => 'calculator', :action => 'scr'
  map.slc '/slc', :controller => 'calculator', :action => 'slc'
  map.slcr '/slcr', :controller => 'calculator', :action => 'slcr'
end
