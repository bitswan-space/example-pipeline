FROM public.registry.bitswan.space/bitswan/bspump:2023-65-git-c4da7af
LABEL src=https://github.com/bitswan-space/example-pipeline

RUN mkdir /data/
COPY ./pump /opt/pump/pump
COPY ./pump.py /opt/pump/pump.py
COPY ./default_config.conf /conf/pipeline.conf

CMD ["python3", "/opt/pump/pump.py", "-c", "/conf/pipeline.conf"]
