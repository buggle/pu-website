# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|  
  # Specify a custom renderer if needed. 
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # navigation.renderer = Your::Custom::Renderer
  
  # Specify the class that will be applied to active navigation items. Defaults to 'selected'
  # navigation.selected_class = 'your_selected_class'
  
  # Normally only the current sub menu is renderedwhen render_navigation is called
  # setting this to true render all submenus which is useful for javascript
  # driven hovering menus like the jquery superfish plugin
  navigation.render_all_levels = true
  
  # Item keys are normally added to list items as id.
  # This setting turns that off
  # navigation.autogenerate_item_ids = false

  # The auto highlight feature is turned on by default.
  # This turns it off globally (for the whole plugin)
  # navigation.auto_highlight = false

  # Define the primary navigation
  navigation.items do |primary|
    primary.item :dashboard, 'Dashboard', admin_path
    primary.item :pages, 'Pages', admin_pages_path
    primary.item :posts, 'Posts', admin_posts_path

    # primary.item :kids, 'Kids', kids_path
    # primary.item :sponsors, 'Sponsors', parents_path
    # primary.item :sponsorships, 'Sponsorships', parentships_path
    # primary.item :schools, 'Schools', schools_path
    # primary.item :parents, 'Letter', letters_path
    
    
    primary.item :administration, 'Administration', '#' do |secondary|
      secondary.item :kids, 'Kids', kids_path
      secondary.item :sponsors, 'Sponsors', parents_path
      secondary.item :sponsorships, 'Sponsorships', parentships_path
      secondary.item :schools, 'Schools', schools_path
      secondary.item :parents, 'Letter', letters_path
    end 
    
    # primary.item :users, 'Users', admin_users_path
    
    # you can also specify a css id or class to attach to this particular level
    # works for all levels of the menu
    # primary.dom_id = 'menu-id'
    primary.dom_class = 'sf-menu'
    
    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false
  
  end
  
end