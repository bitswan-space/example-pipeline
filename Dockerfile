FROM public.registry.bitswan.space/bitswan/bspump:2023-63-git-41b3d08
LABEL src=https://github.com/bitswan-space/example-pipeline

RUN mkdir /opt-example-pipeline
WORKDIR /opt/example-pipeline
COPY ./pipeline.py ./pipeline.py
COPY ./example_pipeline ./example_pipeline
COPY ./example-config.conf /conf/pipeline.conf
RUN mkdir /data

RUN pip3 install paho-mqtt

CMD ["python3", "/opt/example-pipeline/pipeline.py", "-c", "/conf/pipeline.conf"]
