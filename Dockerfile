FROM ml-base:v1-2022DEC17

#@title Setup
WORKDIR /content/
RUN bash -c " \
pip3 install ftfy regex tqdm transformers==4.15.0 timm==0.4.12 fairscale==0.4.4 \
&& pip3 install git+https://github.com/openai/CLIP.git \
&& git clone https://github.com/pharmapsychotic/clip-interrogator.git --depth 1 \
&& git clone https://github.com/salesforce/BLIP.git --depth 1  \
"
WORKDIR /content/BLIP 