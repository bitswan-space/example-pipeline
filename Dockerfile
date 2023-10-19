FROM public.registry.bitswan.space/bitswan/bspump:sha256_be521ab4d0433d25d1b2597c318be13629b7471ba7925fa2a2e7ee24830f8f7f
LABEL src=https://github.com/bitswan-space/example-pipeline

RUN mkdir /data/
COPY ./pump /opt/pump/pump
COPY ./pump.py /opt/pump/pump.py
COPY ./default_config.conf /conf/pipeline.conf

CMD ["python3", "/opt/pump/pump.py", "-c", "/conf/pipeline.conf"]
