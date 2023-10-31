FROM public.registry.bitswan.space/bitswan/bspump:sha256_6cd45a50fb1db356c2636cfca45e1ffb45ca005148bda1673a4a403c683ced43
LABEL src=https://github.com/bitswan-space/example-pipeline

RUN mkdir /data/
COPY ./pump /opt/pump/pump
COPY ./pump.py /opt/pump/pump.py
COPY ./default_config.conf /conf/pipeline.conf

CMD ["python3", "/opt/pump/pump.py", "-c", "/conf/pipeline.conf"]
