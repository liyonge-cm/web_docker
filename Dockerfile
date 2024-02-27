# 使用nginx作为基础镜像
FROM nginx:1.19.1

# 指定工作空间
WORKDIR /data/web

# 将 yarn build 打包后的build文件夹添加到工作空间
ADD build build

# 将项目必要文件添加到工作空间，这里我们把nginx配置文件维护在项目里，部署时直接移动配置文件，就不需要在去处理nginx配置了
COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf

# 暴露80端口
EXPOSE 80

# 启动nginx，要用前台启动
ENTRYPOINT ["nginx", "-g", "daemon off;"]  