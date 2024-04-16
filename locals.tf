locals {
  users = {
    "imparapoc03@gmail.com" = {
      name  = "Elijah Dunleavy",
      role  = "admin",
      teams = ["cart", "order-management", "bff"],
    },
  }

  teams = [
    "cart",
    "order-management",
    "bff",
  ]

  services = {
    "cart" = {
      associated_team = "cart",
    },
    "order-management" = {
      associated_team = "order-management",
    },
    "bff" = {
      associated_team = "bff",
    }
  }
}
