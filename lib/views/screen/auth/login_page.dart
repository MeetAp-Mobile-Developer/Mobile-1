part of 'auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // scafold bagaikan body di HTML

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final _formKey = GlobalKey<FormState>();

    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/pager.png', width: screenWidth * 0.5),

                SizedBox(height: screenHeight * 0.06), // Jarak dinamis

                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        offset: Offset(1, 2),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.06), // Jarak dinamis

                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        offset: Offset(1, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(), // Border untuk input field
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 13),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        offset: Offset(1, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.visibility_off,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    obscureText: false, // Atur visibilitas password
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 13),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    minimumSize: const Size(200, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
