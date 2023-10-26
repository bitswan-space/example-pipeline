FROM public.registry.bitswan.space/bitswan/bspump:sha256_e2c613c272c5287a47b809671c9d434ec354a0dddce1349f9c5a507b097ef8c6
LABEL src=https://github.com/bitswan-space/example-pipeline

RUN mkdir /data/
COPY ./pump /opt/pump/pump
COPY ./pump.py /opt/pump/pump.py
COPY ./default_config.conf /conf/pipeline.conf

CMD ["python3", "/opt/pump/pump.py", "-c", "/conf/pipeline.conf"]
