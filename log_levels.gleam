import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[ERROR]: " <> message -> message
    "[WARNING]: " <> message -> message
    "[INFO]:" <> message -> message
    _ -> "I'm not sure what " <> log_line <> " is"
  }
  |> string.trim
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[ERROR]: " <> _ -> "error"
    "[INFO]: " <> _ -> "info"
    "[WARNING]: " <> _ -> "warning"
    _ -> "Try Again."
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
