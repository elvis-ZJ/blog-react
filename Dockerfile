# 基于nginx镜像
FROM nginx
# 标识名字和版本
LABEL name="blog-react"
LABEL version="1.0"
# 把当前目录下的所有文件都拷贝到nginx配置的静态资源目录下
# Linux下赋值文件夹到指定目录： cp -r ./build/.  /usr/share/nginx/html/blog-react
COPY ./build /usr/share/nginx/html/blog-react
# 配置nginx
COPY ./blog-react.conf /etc/nginx/conf.d
# 向外暴露80端口(需要在nginx改端口)
EXPOSE 80

