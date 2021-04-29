import 'package:flutter/material.dart';

void main() => runApp ( new  MyApp ());
  class  MyApp  extends  StatelessWidget {
    @ovverride
  
     Widget build(BuildContext context) {
       return new MaterialApp(
     title: 'smart Book' ,
     theme: new Theme Data(primaryswatch: colors.purple),
     Home new LoginPage(),
       );
     }
  }

class  LoginPage  extends  StatefulWidget {
  @Override
  State < StatefulWidget >  createState () =>  new  _LoginPageState ();
}

enum FormType {login,register}
class  _LoginPageState  extends  State < LoginPage > {
final  TextEditingController _emailFilter =  new  TextEditingController ();
  final  TextEditingController _passwordFilter =  new  TextEditingController ();
  String _email =  "" ;
  String _password =  "" ;
  FormType _form =  FormType .login ;

  _LoginPageState () {
    _emailFilter. addListener (_emailListen);
    _passwordFilter. addListener (_passwordListen);
  }

  void  _emailListen () {
    if (_emailFilter.text.isEmpty) {
      _email =  "" ;
    } else {
      _email = _emailFilter.text;
    }
  }

  void  _passwordListen () {
    if (_passwordFilter.text.isEmpty) {
      _password =  "" ;
    } else {
      _password = _passwordFilter.text;
    }
  }

  void _formChange () async {
    setState (() {
      if (_form ==  FormType .register) {
        _form =  FormType .login ;
      } lain {
        _form =  FormType .register;
      }
    });
  }

  @override
Widget  @override
Widget build(BuildContext context) {
  return new Scaffold(
Appbar: _buildbar(context),
    body: new Container  (
        padding :  EdgeInsets . all ( 16.0 ),
        child, :  new column  (
          children:  < Widget > [
            _buildTextFields (),
            _buildButtons (),
          ],// <widget>
        ), //column
      ),
    );
  }

 Widget  _buildBar ( konteks BuildContext ) {
    return  new AppBar  (
      title, :  new text  ( "smart book" ),
      centerTitle :  true ,
    );
  }

    Widget  _buildTextFields () {
    return new Container (
      child,:  new Column (
      children :  < Widget > [
          new ElevatedButton (
            child, : new text (
              controller : _emailFilter,
              decorationi :  InputDecoration new (
                labelText :  'Masukan Email Anda'
                 ),
            ),
          ),
        
        new container (
           child: , :  BidangTeks baru  (
              controller : _passwordFilter,
              decoration: , :  InputDecoration new  (
                labelText :  'Masukan Kata Sandi Anda'
              ),
              obscureText :  true ,
            ),
          )
        ],
      ),
    );
  }

  Widget  _buildButtons () {
    if (_form ==  FormType .login ) {
     return new Container (
        child :  new Column  (
          children :  < Widget > [
             ElevatedButton baru (
              child :  new text  ( 'Masuk' ),
              onPressed : _loginPressed,
            ),
             TextButton baru (
             child :  new Text ( 'belum mempunyai akun? register.' ),
              onPressed : _formChange,
            ),
             new TextButton  (
              child :  new Text( 'forgot  Password?' ),
              onPressed : _passwordReset,
            )
          ],
        ),
      );
    } else {
      return  new Container (
        child :  new column  (
          children :  < Widget > [
             new ElevatedButton  (
              child :  new  ( 'create an account' ),
              onPressed : _createAccountPressed,
            ),//ElevatedButton
             new TextButton (
              child :  new  Text ( 'have an account? click here to login.' ),
              onPressed : _formChange,
            )TextButton
          ],//<widget>> []
        ),//column
      ); // container
    }
  }

  void _loginPressed () {
    print ( 'the user wants to login with  $ _email dan $ _password ' );
  }

  void _createAccountPressed () {
    print ( 'the user wants to create an account with $ _email dan $ _password ' );

  }

  void _passwordReset () {
    print ( "the user wants a password reset request sent to $ _email " );
  }


}