
# 選擇from image
#FROM azul/zulu-openjdk:11
FROM azul/zulu-openjdk:8

# 撰寫和維護這個 Dockerfile
MAINTAINER argen

# 指定預設/工作資料夾
WORKDIR /usr/src/push-log-viewer

# copy 指定檔案及資料夾進container
COPY . .

RUN mkdir -p /home/pushdata/logs

# 指定時區
#ENV TZ=Asia/Taipei

# 指定運行之容器具有哪些傾聽的特定連接埠
#EXPOSE 8111 8012

# 指定啟動container後執行命令
#CMD ["npm", "run", "start"] 
CMD /usr/src/push-log-viewer/logviewer.sh
