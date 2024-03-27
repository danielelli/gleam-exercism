import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[ERROR]: " <> message -> message
    "[WARNING]: " <> message -> message
    "[INFO]:" <> message -> message
    _ -> "I'm not sure what " <> log_line <> " is"
  }
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[ERROR]: " <> message -> string.lowercase("ERROR")
    "[INFO]: " <> message -> string.lowercase("INFO")
    "[WARNING]: " <> message -> string.lowercase("WARNING")
    _ -> "Try Again."
  }
}

pub fn reformat(log_line: String) -> String {
  case log_line {
    "[ERROR]: " <> message ->
      string.trim(message) <> " (" <> string.lowercase("ERROR") <> ")"
    "[INFO]: " <> message ->
      string.trim(message) <> " (" <> string.lowercase("INFO") <> ")"
    "[WARNING]: " <> message ->
      string.trim(message) <> " (" <> string.lowercase("WARNING") <> ")"
    _ -> "Try Again."
  }
}
