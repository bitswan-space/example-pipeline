import bspump
import logging
from datetime import datetime


L = logging.getLogger(__name__)

class ExampleProcessor(bspump.Processor):
    def __init__(self, app, pipeline):
        super().__init__(app, pipeline)

    def process(self, context, event):
        current_time = datetime.now()
        timestamp = current_time.strftime('%Y-%m-%d %H:%M:%S.%f')
    
        event = {
            "timestamp": timestamp,
            "random_number": event,
            "squared": event * event,
            "doubled": event * 2
        }
        return event
