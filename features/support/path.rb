def path_to(page_name)
  case page_name

    when /the home\s?page/
      '/'
    when /the project page for "([^\"]*)"/
      project_path(project($1))
    when /the "([^\"]*)" ticket in the "([^\"]*)" project/
      project_ticket_path(project($2), Ticket.find_by_title!($1))
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
                "Now, go and add a mapping in #{__FILE__}"
  end
end

def project(name)
  Project.find_by_name!(name)
end

