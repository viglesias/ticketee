def path_to(page_name)
  case page_name

  when /new task/i
    new_task_path
  when /tasks/i
    tasks_path

  when /new user/i
    new_user_path
  when /users/i
    users_path

  when /homepage/i
    root_path

  else
    raise "Can't find mapping from \"#{page_name}\" to a path."
  end
end

