locals {
  users = {
    "imparapoc03@gmail.com" = {
      name  = "Elijah Dunleavy",
      role  = "admin",
      teams = ["payment", "order-management"],
    },
  }

  teams = [
    "payment",
    "order-management",
    "shipping",
  ]

  services = {
    "poc-payment" = {
      associated_team = "payment",
    },
    "poc-order-management" = {
      associated_team = "order-management",
    }
  }
}
