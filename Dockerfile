FROM significantgravitas/auto-gpt:0.2.2

COPY scripts/generate-ai-settings.py /generate-ai-settings.py

RUN export PATH="$PATH:/home/appuser/.local/bin";

RUN pip3 install --upgrade pip
RUN pip3 install pyyaml argparse
#RUN python -m pip install pyyaml

ENTRYPOINT ["python3", "/generate-ai-settings.py"]
