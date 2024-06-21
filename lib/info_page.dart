import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
        color: Colors.blueGrey.shade50,
        child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Html(
                  data: """
<div>

<p>Cette application présente une sélection des photos du site photo.riffzone.net,
et donne potentiellement accès à des galeries plus privées via un simple système de clés.
Vous pouvez tester ce mécanisme avec le code "123".</p>

<p>This application shows a selection of the pictures of the photo.riffzone.net website,
and gives optional access to more private content with a simple key-based system.
You can test this mechanism with the code "123".</p>

<div style="padding:40px"><hr/></div>

<h3>Politique de Données Utilisateur</h3>
<h4>Confidentialité et Protection des Données</h4>
<p>Chez RiffZone.net, nous respectons votre vie privée et nous nous engageons à la protéger.
Notre application est conçue en tenant compte de votre confidentialité,
et en tant que telle, nous ne collectons, ne stockons ou ne traitons aucune donnée personnelle.</p>
<h4>Aucune Collecte de Données</h4>
<p>Notre application ne nécessite aucune forme d’inscription de l’utilisateur,
et nous ne collectons pas d’informations personnelles telles que le nom, l’adresse e-mail,
la localisation ou toute autre donnée identifiante.</p>
<h4>Aucun Partage de Données</h4>
<p>Puisque nous ne collectons aucune donnée personnelle, il n’y a aucune donnée à partager avec des tiers.
Notre engagement envers votre vie privée signifie que votre utilisation de l’application est privée et sécurisée.</p>
<h4>Sécurité des Données</h4>
<p>Bien que notre application ne collecte pas de données personnelles,
nous prenons la sécurité des données au sérieux.
Nous mettons en œuvre des mesures standard de l’industrie pour protéger notre application
et assurer que votre utilisation est à l’abri des accès non autorisés ou des violations de sécurité.</p>
<h4>Consentement de l’Utilisateur</h4>
<p>En utilisant RiffZone Photo, vous reconnaissez que vous comprenez
et acceptez cette Politique de Données Utilisateur.
Aucune action n’est requise de votre part, car notre application ne collecte aucune donnée personnelle.</p>
<h4>Changements de Politique</h4>
<p>Nous nous réservons le droit de modifier cette Politique de Données Utilisateur à tout moment.
Tout changement sera publié au sein de l’application et, si significatif, nous fournirons un avis plus proéminent.</p>
<h4>Contactez-Nous</h4>
<p>Si vous avez des questions ou des préoccupations concernant cette Politique de Données Utilisateur,
veuillez nous contacter à admin@riffzone.net.</p>

<div style="padding:40px"><hr/></div>

<h3>User Data Policy</h3>
<h4>Privacy and Data Protection</h4>
<p>At RiffZone.net, we respect your privacy and are committed to protecting it.
Our application is designed with your privacy in mind, and as such,
we do not collect, store, or process any personal data.</p>
<h4>No Data Collection</h4>
<p>Our application does not require any form of user registration,
and we do not collect personal information such as name,
email address, location, or any other identifying data.</p>
<h4>No Data Sharing</h4>
<p>Since we do not collect any personal data, there is no data to share with third parties.
Our commitment to your privacy means that your use of the application is private and secure.</p>
<h4>Data Security</h4>
<p>Although our application does not collect personal data, we still take data security seriously.
We implement industry-standard measures to protect our application
and ensure that your use of it is safe from unauthorized access or security breaches.</p>
<h4>User Consent</h4>
<p>By using RiffZone Photo, you acknowledge that you understand and agree to this User Data Policy.
No action is required on your part, as our application does not collect any personal data.</p>
<h4>Policy Changes</h4>
<p>We reserve the right to make changes to this User Data Policy at any time.
Any changes will be posted within the application and,
if significant, we will provide a more prominent notice.</p>
<h4>Contact Us</h4>
<p>If you have any questions or concerns about this User Data Policy,
please contact us at admin@riffzone.net.</p>

</div>
                  """,
                )
              ],
            ))));
  }
}
