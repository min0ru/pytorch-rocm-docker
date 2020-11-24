from rocm/pytorch

RUN pip install jupyter

CMD ["/opt/conda/bin/jupyter", "notebook", "--allow-root", "--ip=0.0.0.0", "--notebook-dir=/data"]