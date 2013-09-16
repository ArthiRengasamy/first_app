The website has been developed on Ruby 1.9.3/Rails 3.2 using RubyMine IDE.

The github repository is :
https://github.com/ArthiRengasamy/first_app

References:
- Ruby on Rails Tutorial by Michael Hartl
- Stackoverflow.com portal for issue resolution
- Github for issue resolution
- Net.tutsplus.com for guidance and issue resolution
- Railscasts for guidance and issue resolution


===============================================================================================================================

Does the code work?
Yes

Are there at least  two controllers and two models that are related to each other?
Yes

Do the delivered screens function like the original screens with "minor" changes?
Yes. There are a few things that are in work in progress and there are some minor changes.

Is there good searpation of concerns within MVC?
Yes. I understand this as the flow of logic between the models,views and controllers.

===============================================================================================================================
REST API(XML) and AJAX implementation:

Pagination is implemented using wills_paginate and ajax. However I am unable to remove the page number and UTF from the url.
Search is implemented with ajax.

The stories landing page can be rendered in xml.
/stories.xml  ==> Gives the xml file with an array of stories. The number of stories is dependant on the pagination logic.

===============================================================================================================================

ABOUT WEBSITE

Organization of the website

The basic framework of the website is to capture volunteer information for the area they are interested in volunteering and
allowing them to use this forum to post their success in doing NGO work. Visitors would also get sufficient information for
them to begin interaction with the NGO.
The contents on the website is dummy.

Modules of the website:

- The Product page(Enquiry module) is implemented as a stand alone model to enable visitors/volunteers place enquiries on
the products made by NGO. The intent is to showcase the products made by the NGO.The form on this page collates enquiry from
the visitor and posts it on to the database.

- The How you can help page has a volunteer signup (user module) with links to success stories posted by volunteers. If the
volunteer is logged in, the sign up form is suppressed. Here the information is captured to sign up the volunteers.
The form including validation, password setting and authentication is enabled here.

- The success stories(story module) is the module that belongs to the Volunteer(user). Only volunteers have provision view,
and add their success stories. The my stories link under this with the edit profile gives the volunteer the ability to manage
profile/story data. All visitors have provision to view the all the success stories.

- There are static controllers that have the About us(Home) and Contact pages


===============================================================================================================================

AUTOMATED TESTING USING RSPEC

The rspec spec files are under the SPEC folder in FIRST_APP.

 All specs except the "formatxml_spec.rb" works. I tried writing this to automatically check if the stories are rendered in xml.
 But I could not make it pass.

 I have written test cases to validate model specifications, authentication of users, content on static pages.

================================================================================================================================
