# Flutter_Practices
Getting start with flutter Dart practice projects lessons


# Branch Login_form_design

Simple login form using Form widget with two TextFormFields, one TextButton and two ElevatedButton.

Form(
            key: _loginFormKey,
            child: Column(
             
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Email address or username",
                      border: OutlineInputBorder(),
                    ),
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
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Cell number",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 11) {
                        return 'Please enter cell number';
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
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: TextButton(
                      onPressed: () {
                        showAlert(context);
                      },
                      child: Text('forgot password ?'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_loginFormKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                );

                                /*
                                * Navigate to Home page
                                * Material Page navigation enabled and back button shown to Appbar
                                * */
                                /*Navigator.push(context,
                                MaterialPageRoute(builder: (context) => HomePage()),);*/

                                /*
                                * below code
                                *
                                * Navigate to HomePage and put it top of the stack
                                * Back button disabled and back stack cleared
                                *
                                * */
                                Navigator.pushAndRemoveUntil(context,
                                    MaterialPageRoute(builder: (context) => HomePage()), (r) => false);
                              }
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
              ],
            ))
