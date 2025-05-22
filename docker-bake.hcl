group "default" {
  targets = ["backend"]
}

target "backend" {
  context = "."
  dockerfile = "Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["prem1rom/z1-docker-backend:latest"]
  output = ["type=registry"]
  cache-from = ["type=registry,ref=prem1rom/z1-docker-backend:buildcache"]
  cache-to   = ["type=registry,ref=prem1rom/z1-docker-backend:buildcache,mode=max"]
  ssh = ["default"]
}
