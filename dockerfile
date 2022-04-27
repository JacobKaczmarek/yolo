FROM continuumio/miniconda3

RUN apt update && apt install libgl1 -y

RUN conda install jupyter pytorch torchvision cudatoolkit=11.3 -c pytorch -y

WORKDIR /src

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
