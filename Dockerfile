FROM public.registry.bitswan.space/bitswan/bspump:sha256_d689647546ab9d3edcfb66d09a9fe5f4f9634b4fb63707c5ec482d1a30d96e94
LABEL src=https://github.com/bitswan-space/example-pipeline

RUN mkdir /data/
COPY ./pump /opt/pump/pump
COPY ./pump.py /opt/pump/pump.py
COPY ./default_config.conf /conf/pipeline.conf

CMD ["python3", "/opt/pump/pump.py", "-c", "/conf/pipeline.conf"]
