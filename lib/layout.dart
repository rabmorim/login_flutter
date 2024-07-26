import 'package:flutter/material.dart';

// Stateful é que o estado pode ser alterado.
// Já no Statelees não pode ser alterado esse aestado.

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State createState() => LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Barra de titulo
        appBar: AppBar(
          title: const Text("Layoult - Login"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(121, 202, 193, 193),
        ),
        //Menu lateral (hamburguer)
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              //Cabeçalho do Menu Lateral
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                padding: EdgeInsets.all(60),
                child: Icon(
                  Icons.home,
                  size: 45,
                ),
              ),

              //Item 1 do menu

              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.blueGrey,
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.blueGrey,
                ),
                title: const Text("Perfil"),
                onTap: () {
                  //Aqui vai um codigo de uma ação ou método
                  Navigator.pop(context);
                },
                hoverColor: Colors.grey,
              ),
              //Item 2 do menu

              ListTile(
                leading: const Icon(
                  Icons.notifications,
                  color: Colors.blueGrey,
                ),
                title: const Text("Notificações"),
                onTap: () {
                  //Aqui vai um codigo de uma ação ou método
                  Navigator.pop(context);
                },
                hoverColor: Colors.grey,
              ),
              //Item 3 do menu
              ListTile(
                leading: const Icon(
                  Icons.arrow_circle_right_sharp,
                  color: Colors.red,
                ),
                title: const Text(
                  "Sair",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  //Aqui vai um codigo de uma ação ou método
                  Navigator.pop(context);
                },
                hoverColor: Colors.red.shade100,
              )
            ],
          ),
        ),
        //Corpo da Aplicação
        body: Container(
            padding: const EdgeInsets.all(40),
            child:  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        letterSpacing: BorderSide.strokeAlignInside
                        ),
                      ),

                    //Espaçamento Login e inputs
                    const Padding(padding: EdgeInsets.only(bottom: 50)),

                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Informe seu e-mail", 
                        suffixIcon: Icon(Icons.keyboard)
                        ),
                      autofocus: true,
                      //controller: emailController
                    ),

                    //Espaçamento entre os inputs
                    const Padding(padding: EdgeInsets.only(bottom: 20)),

                     const TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Informe sua senha",
                        suffixIcon: Icon(Icons.key_sharp)
                        ),
                      autofocus: false,
                      //controller: senhaController
                    ),

                //Espaçament0 entre as entradas de valor e o botão login
                  const Padding(padding: EdgeInsets.only(bottom: 60)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          final snackBar1 = SnackBar(
                            content: const Text("Login Realizado com sucesso!"),
                            duration: const Duration(milliseconds: 5000),
                            behavior: SnackBarBehavior.floating ,
                            action: SnackBarAction(
                              label: 'Ok',
                               onPressed: () {

                                 //Aqui vai alguma ação

                               },
                               ),
                            

                            );

                            ScaffoldMessenger.of(context).showSnackBar(snackBar1);
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: BorderSide.strokeAlignOutside
                          ),
                        ),
                      )
                    ],
                  ),
                  //Espaçamento entre os botões

                  const Padding(padding: EdgeInsets.only(bottom: 30)),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      ElevatedButton(
                        onPressed: () {
                          //declaração 'final' é por que ela não vai mudar de estado, vai ser sempre esse valor, 
                          //sempre isso, nao mudara o valor
                          final snackBar = SnackBar(
                            content: const Text("Está é uma snackBar"),
                            duration: const Duration(milliseconds: 5000) ,
                            //behavior é comportamento da snackbar
                            behavior: SnackBarBehavior.floating ,
                            action: SnackBarAction(
                              label: "Ok", 
                              onPressed:() {
                                //Aqui vai o código de alguma função ou alguma ação.

                              }

                              ),

                            );

                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }, 
                        child: const Text(
                          "Mostrar SnackBar",
                          style: TextStyle(
                            fontWeight: FontWeight.w600
                          ),
                        )
                        
                        )

                    ],
                  )
                ],
              ),
            )
            ),
        // Barra de Icons Inferior
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: 'Perfil'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Cadastre-se')
          ],
        ),
      ),
    );
  }
}
