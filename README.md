installer terraform
brew tap hashicorp/tap #installer le dépôt HashiCorp
brew install hashicorp/tap/terraform #Installez maintenant Terraform

apres configurer terraform.tf / main tf puis aller dnas le terminal et entrer aws configure pour configurer 
on entre les identifiant et clé  et pour verifier on fait aws configure list 
securtyty group doit nous faire penser a pare feu 


Ensuite creer variables.tf et le completer 

les variables vont etre les endroit ou on stocke les données en dure 

Les variabls vont etre apres utilisé dans le main.tf