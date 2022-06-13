az provider list --query "[].{Provider:namespace, Status:registrationState}" --out table
