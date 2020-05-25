FROM centos

RUN yum install python36 -y
RUN pip3 install --upgrade pip
RUN pip3 install tensorflow
RUN pip3 install keras
RUN pip3 install pillow 


CMD ["python3","/mlops1/file1.py"]