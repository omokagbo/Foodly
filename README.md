# FDA-ONE

Food Delivery Application is a mobile application that users can use to find the best restaurant around their location and order the meals they desire from the comfort of their home. One of the unique services of this product is that it targets only healthy restaurants so only high quality food with the healthiest benefits is offered to users at affordable cost. Do you want to loose weight or simply stay healthy? Let FitFood help you meet your weight loss goal and cut off that bad fat that increases your cholesterol level due to poor food choices. We offer only the best food choices.


# Requirements
- iOS ~> 14.5
- Xcode ~> 12 (9.3 compatible)
- Swift ~> 4.2

# Installation
Clone the repository
```sh
$ git clone https://github.com/decadevs/FDA-ONE.git
$ cd FDA-ONE
$ cd Foodly
$ pod install
```

Open the file `Foodly.xcworkspace` using Xcode 
Click on the play button at the top left corner to build and run the project

### ONBOARDING

On installing the app, the user is taken to the onboarding screen as a first time user where the user gets to see details about the app. The user also has the choice to skip the entire onboarding process or move through the whole process. There are three slides showing details about the app and the user can move through them by swiping with the fingers or clicking on the next button. At the last slide, the button text changes from "Next" to "Get Started".

<img width="290" alt="Screenshot 2021-07-28 at 11 06 01" src="https://user-images.githubusercontent.com/69020285/127304950-f1d2dba1-6279-4ee6-885c-4ba67ecddafa.png"> <img width="289" alt="Screenshot 2021-07-28 at 11 06 24" src="https://user-images.githubusercontent.com/69020285/127305004-0069d174-5656-4808-8ec6-bfc5bcf1eae4.png"> 


### LOGIN

From the onboarding screen, the user is taken to the Login screen and for a new user without account, there is a Register button on the screen that takes them to where they can create a new account. There is an email and a password field where user enters their details and these fields are validated.

<img width="278" alt="Screenshot 2021-07-28 at 11 12 24" src="https://user-images.githubusercontent.com/69020285/127306067-aabb3b18-2848-4098-809e-694217d9631d.png"> <img width="277" alt="Screenshot 2021-07-28 at 11 12 33" src="https://user-images.githubusercontent.com/69020285/127306080-f186e87e-52dc-4d34-9b6a-deabf1cd0e68.png">


### CREATE ACCOUNT

On clicking on the Register button, the user is taken to the "Create New Account" screen where the user gets to create a new account with email, password and fullname. Just like the login screen, these fields are all validated to make sure:
- The user enters the first name and last name
- A valid email address
- A strong password that contains numbers, alphabets and special characters.
- None of the fields is empty.

<img width="275" alt="Screenshot 2021-07-28 at 11 19 03" src="https://user-images.githubusercontent.com/69020285/127306470-1172c084-5a39-4aaf-9185-ec99d96adfad.png"> <img width="279" alt="Screenshot 2021-07-28 at 11 19 12" src="https://user-images.githubusercontent.com/69020285/127306492-b5684a69-97b3-4847-bb4c-c680f7dfc73d.png"> 


### DASHBOARD
On successful login or creation of account, the user is welcomed to the dashboard which contains four tabs:
- The home displaying a welcome message, a filter for food categories and a list of popular restaurants
- A search tab that allows users to search for foods and restaurants
- An order history tab that displays the list of all orders that the user has ever made 
- A profile tab where users can update their details such as address and phone number as well as log out from the app

<img width="282" alt="Screenshot 2021-07-28 at 11 23 03" src="https://user-images.githubusercontent.com/69020285/127307581-9c7789ea-2ce3-4023-9063-a2bc9f566731.png"> <img width="272" alt="Screenshot 2021-07-28 at 11 28 19" src="https://user-images.githubusercontent.com/69020285/127307973-5e878f1e-0064-4965-b89c-a5274f66cc0b.png"> <img width="284" alt="Screenshot 2021-07-28 at 11 28 42" src="https://user-images.githubusercontent.com/69020285/127307996-cf1533a3-b537-4a3a-a2f3-e91908f79d46.png">


### ORDERING FOOD
To order food, the user can search by food name or restaurant name or use the food category filter at the top. On selecting any of the restaurants, the user is taken to the restaurant page and gets to see the foods sold by the restaurant and then make an order for any food of choice. Clicking on the add button besides each food adds the food the user's cart where the user gets to see the total price. 

<img width="280" alt="Screenshot 2021-07-28 at 11 35 16" src="https://user-images.githubusercontent.com/69020285/127308556-2080feb7-d2b7-4e86-aa2c-bc5cf3ecdee2.png"> <img width="280" alt="Screenshot 2021-07-28 at 11 35 26" src="https://user-images.githubusercontent.com/69020285/127308604-8773d61a-eaa6-4bdf-ac84-5d9715953fbf.png"> 

When the user is satisfied with the items in the cart, the user can click on the view cart button and is taken to another page where they see the items in their cart. In this page, the user gets to either confirm or change the address they want the food delivered to, the quantity of each food item as well as get a discount if they have a coupon code to apply.

<img width="302" alt="Screenshot 2021-07-28 at 11 38 53" src="https://user-images.githubusercontent.com/69020285/127309172-a5e0e7a0-7b9b-490d-a9c3-d4c87bc9a461.png"> <img width="298" alt="Screenshot 2021-07-28 at 11 40 10" src="https://user-images.githubusercontent.com/69020285/127309190-613f8faf-4a14-4dcd-98a9-599ec9870951.png"> <img width="279" alt="Screenshot 2021-07-28 at 11 40 18" src="https://user-images.githubusercontent.com/69020285/127309204-957e9d44-b682-49b7-ba78-7387bb15a71e.png"> 


Satisfied, the user can click on the continue button and is taken to the final checkout page where the user gets to see how long it will take to get the food delivered as well as who the delivery person is. The contact of the delivery person is also made available for events such as the food not being delivered at the right time. 

<img width="294" alt="Screenshot 2021-07-28 at 11 43 46" src="https://user-images.githubusercontent.com/69020285/127309569-a560e0b3-dc07-4428-8ac1-2cda87412707.png">




