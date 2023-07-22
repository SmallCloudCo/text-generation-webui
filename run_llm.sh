    #!/bin/bash
    # then, if using CUDA:
    #https://github.com/paul-gauthier/aider/issues/110#issuecomment-1644318545

    # python3 download-model.py TheBloke/Llama-2-13B-chat-GPTQ
    # python3 server.py --listen --trust-remote-code --extensions openai --loader exllama --model TheBloke_Llama-2-13B-chat-GPTQ
    # otherwise to run on CPU:

    #python3 download-model.py TheBloke/Llama-2-13B-chat-GGML
    python3 server.py --listen --trust-remote-code --extensions openai --loader llamacpp --model TheBloke_Llama-2-13B-chat-GGML
    echo the openai compatible api will be listening on http://0.0.0.0:5001/v1