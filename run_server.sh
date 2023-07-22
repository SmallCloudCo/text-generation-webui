#!/bin/sh


#python3 server.py --listen --trust-remote-code --extensions openai --loader llamacpp --model TheBloke_Llama-2-13B-chat-GGML
export MODEL=llama-2-13b-chat.ggmlv3.q4_0.bin
export=LLAMA_METAL=1
#python3 server.py --listen --trust-remote-code --cpu-memory 8 --gpu-memory 8 --extensions openai --loader llamacpp --model TheBloke_Llama-2-13B-chat-GGML --notebook
#[INST] <<SYS>> ${SYSTEM} <</SYS>> ${PROMPT} [/INST]

#https://github.com/oobabooga/text-generation-webui/blob/main/docs/Low-VRAM-guide.md
python3 server.py --listen --auto-devices --gpu-memory 4092MiB --loader llamacpp --model TheBloke_Llama-2-13B-chat-GGML --notebook 
#--load-in-8bit

