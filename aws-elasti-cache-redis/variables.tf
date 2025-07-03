variable "aws_region" {}
variable "cluster_id" {}
variable "engine" {}
variable "engine_version" {}
variable "node_type" {}
variable "num_cache_nodes" {}
variable "parameter_group_name" {}
variable "port" {}
variable "tags" {
  type = map(string)
}