import bspump
import time
import random
from datetime import datetime

class ExampleProcessor(bspump.Processor):
    def __init__(self, app, pipeline):
        super().__init__(app, pipeline)

    def process(self, context, event):
        current_time = datetime.now()
        timestamp = current_time.strftime('%Y-%m-%d %H:%M:%S.%f')
        # sleep a random amount of time between 1 and 100ms
        time.sleep(random.randint(1, 100) / 1000)

        event = {
            "timestamp": timestamp,
            "random_number": event,
            "squared": event * event,
            "doubled": event * 2
        }
        return event
