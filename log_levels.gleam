import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[ERROR]: " <> message -> string.trim(message)
    "[WARNING]: " <> message -> string.trim(message)
    "[INFO]:" <> message -> string.trim(message)
    _ -> "I'm not sure what " <> log_line <> " is"
  }
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[ERROR]:" -> string.lowercase("ERROR")
    "[INFO]:" -> string.lowercase("INFO")
    "[WARNING]:" -> string.lowercase("WARNING")
    _ -> "I'm not sure what " <> log_line <> " is"
  }
}

pub fn reformat(log_line: String) -> String {
  todo
}
