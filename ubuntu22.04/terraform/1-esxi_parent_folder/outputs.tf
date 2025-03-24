output "project_folder_path" {

  description = "provide the full path of the project_folder"
  value = values(module.vm_path)[0]
}
