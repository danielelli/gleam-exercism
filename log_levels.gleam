import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[ERROR]: " <> message -> string.trim(message)
    "[WARNING] " <> message -> string.trim(message)
    "[INFO]" <> message -> string.trim(message)
    _ -> "I'm not sure what " <> name <> " is"
  }
}

pub fn log_level(log_line: String) -> String {
  todo
}

pub fn reformat(log_line: String) -> String {
  todo
}
