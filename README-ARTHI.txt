The website has been developed on Ruby 1.9.3/Rails 3.2 using RubyMine IDE.

The github repository is :
https://github.com/ArthiRengasamy/first_app
==========================================================================================

Does the code work?
Yes

Are there at least  two controllers and two models that are related to each other?
Yes

Do the delivered screens function like the original screens with "minor" changes?
Yes. There are a few things that are in work in progress and there are some minor changes.

Is there good searpation of concerns within MVC?
Yes. I understand this as the flow of logic between the models,views and controllers.

==========================================================================================

Organization of the website

The basic framework of the website is to capture volunteer information for the area they are interested in volunteering and allowing them to use this forum to post their success in doing NGO work. Visitors would also get sufficient information for them to begin interaction with the NGO.

Modules of the website:

- The Product page(Enquiry module) is implemented as a stand alone model to enable visitors place enquiries on the products made by NGO. The intent is to showcase the products made by the NGO.The form on this page collates enquiry from the visitor and posts it on to the database.

- The How you can help page has a volunteer signup (user module). Here the information is captured to sign up the volunteers. The form including validation, password setting and authentication is enabled here.

- The success stories(story module) is the module that belongs to the Volunteer(user). Only volunteers have provision to post their success stories. All visitors have provision to view the all the success stories.

- There are static controllers that have the About us(Home) and Contact pages


==========================================================================================

