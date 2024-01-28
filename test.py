import gradio as gr

def create_video_from_files(*args):
    pass


with gr.Interface(fn=create_video_from_files,
                  inputs={ "files": gr.UploadButton(),
                           "fps": gr.Slider(),
                           "ext": "mp4",
                        },
                  outputs=gr.Video(),
                ) as demo:
demo.launch()