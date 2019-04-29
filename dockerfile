FROM tensorflow/tensorflow
RUN apt-get update && apt-get install -y git-core
RUN pip install tqdm
RUN git clone https://github.com/Steven-Hewitt/Entailment-with-Tensorflow.git /notebooks/Entailment
WORKDIR "/notebooks"
CMD ["/run_jupyter.sh"]
