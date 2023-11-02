FROM public.registry.bitswan.space/bitswan/bspump:sha256_1f6132c04a01c3bd7e007cb4f5481d4a43e314f29935ea8a024851dbdc06e7ed
LABEL src=https://github.com/bitswan-space/example-pipeline

RUN mkdir /data/
COPY ./pump /opt/pump/pump
COPY ./pump.py /opt/pump/pump.py
COPY ./default_config.conf /conf/pipeline.conf

CMD ["python3", "/opt/pump/pump.py", "-c", "/conf/pipeline.conf"]
