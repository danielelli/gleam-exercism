// TODO: please define the 'Approval' custom type
pub type Approval {
  Yes
  No
  Maybe
}
// TODO: please define the 'Cuisine' custom type
pub type Cuisine {
  Korean
  Turkish
}
// TODO: please define the 'Genre' custom type
pub type Genre {
  Crime
  Horror
  Romance
  Thriller
}
// TODO: please define the 'Activity' custom type
pub type Activity {
  BoardGame
  Chill
  Movie(Genre)
  Walk(Int)
}

pub fn rate_activity(activity: Activity) -> Approval {
  case activity {
    todo
  }
}
