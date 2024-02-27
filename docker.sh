# 打包镜像
docker build -t web:latest . 

# 启动容器
docker run -d --name my-web -p 8000:80 web:latest