# whoami — required secrets

None. This service exists to prove the ptah deployment path end to end.

A service that needs secrets lists the variable names here and ships
`deploy/whoami/secrets.sops.env`, encrypted to ptah's age key and mine.
Values are never committed in plaintext and agents never see them.
