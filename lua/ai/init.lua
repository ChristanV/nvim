require('ollama').setup ({
  model = "codeqwen",
  url = "http://127.0.0.1:11434",
  serve = {
    command = "docker",
    args = {
      "run",
      "-d",
      "--rm",
      --"--gpus=all",
      "-v",
      "ollama:/root/.ollama",
      "-p",
      "0.0.0.0:11434:11434",
      "--name",
      "ollama",
      "ollama/ollama",
    },
    stop_command = "docker",
    stop_args = { "stop", "ollama" },
  }
})
