aws_region           = "ap-northeast-2"
cluster_id           = "cluster-example"
engine               = "redis"
engine_version       = "3.2.10"
node_type            = "cache.m4.large"
num_cache_nodes      = 1
parameter_group_name = "default.redis3.2"
port                 = 6379

tags = {
  Environment = "dev"
  Project     = "ElasticacheRedis"
}
