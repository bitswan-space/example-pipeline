FROM public.registry.bitswan.space/bitswan/bspump:sha256_2cf2eebcce3796b407504f0570357067ae4d460bd3973b786a403de9f25b7665
LABEL src=https://github.com/bitswan-space/example-pipeline

RUN mkdir /data/
COPY ./pump /opt/pump/pump
COPY ./pump.py /opt/pump/pump.py
COPY ./default_config.conf /conf/pipeline.conf

CMD ["python3", "/opt/pump/pump.py", "-c", "/conf/pipeline.conf"]
