output "dax_parameter_groups_id" {
  description = "Map of id values across all dax_parameter_groups, keyed the same as var.dax_parameter_groups"
  value       = { for k, v in aws_dax_parameter_group.dax_parameter_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dax_parameter_groups_description" {
  description = "Map of description values across all dax_parameter_groups, keyed the same as var.dax_parameter_groups"
  value       = { for k, v in aws_dax_parameter_group.dax_parameter_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dax_parameter_groups_name" {
  description = "Map of name values across all dax_parameter_groups, keyed the same as var.dax_parameter_groups"
  value       = { for k, v in aws_dax_parameter_group.dax_parameter_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dax_parameter_groups_parameters" {
  description = "Map of parameters values across all dax_parameter_groups, keyed the same as var.dax_parameter_groups"
  value       = { for k, v in aws_dax_parameter_group.dax_parameter_groups : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "dax_parameter_groups_region" {
  description = "Map of region values across all dax_parameter_groups, keyed the same as var.dax_parameter_groups"
  value       = { for k, v in aws_dax_parameter_group.dax_parameter_groups : k => v.region if v.region != null && length(v.region) > 0 }
}

