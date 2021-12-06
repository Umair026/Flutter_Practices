# Flutter_Practices
Getting start with flutter Dart practice projects lessons


# Branch Login_form_design

Simple login form using Form widget with two TextFormFields, one TextButton and two ElevatedButton.

# Form Widget
        Form(
             key: _loginFormKey,
             child: Column(
              children: <Widget>[
                     ...
                     ]
               )
            )


# TextFormField Widget
Place Container containing TextFormField inside children of Column
            
            ...
            Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Email address or username",
                      border: OutlineInputBorder(),
                    ),
                    
                    // Validator will be execute after _loginFormKey.currentState!.validate() call on button click
                    
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 5) {
                        return "Please enter email address or username";
                      }
                      return null;
                    },

                    onChanged: (text){
                      if (text.isNotEmpty && _loginFormKey.currentState!.validate()) {
                        _loginFormKey.currentState!.validate();
                      }
                    },
                  ),
                ),
                
# ElevatedButton Widget
            Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              ... // put Validation here. 
                            },
                            child: Text('Login'),
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10.0, left: 10.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Sign up'),
                          )),
                    ],
                  ),
                )

# Validation
Validation method will execute when 

                        if (_loginFormKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                );

                                /*
                                * POINT #1
                                * Navigate to Home page
                                * Material Page navigation enabled and back button shown to Appbar
                                * */
                                /*Navigator.push(context,
                                MaterialPageRoute(builder: (context) => HomePage()),);*/

                                /*
                                * * POINT #2
                                * below code
                                *
                                * Navigate to HomePage and put it top of the stack
                                * Back button disabled and back stack cleared
                                *
                                * */
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
                                    (r) => false);
                              }
                              
Re-run above code and experience POINT #1 and POINT #2 bove to see the difference. 
