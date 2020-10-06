# FlutterCASI

A sample flutter mobile app to integrate [CASI](https://auth.devclub.in/) for authentication.

## Setup

1. Register your client at [Register](https://auth.devclub.in/client/register) and obtain the `config` file.
2. Copy the file `casi_user.dart` into your project and add the following dependencies to `pubspec.yaml`
 ```
dependencies:
  flutter_webview_plugin: ^0.3.11
  corsac_jwt: ^0.2.2
  http: ^0.12.2
```

## Usage

### Classes

1. The class [`CasiLogin`](https://github.com/Harsh14901/FlutterCASI/blob/7d12d82bdf7b865a7649c46b7915317644224355/casi/lib/casi_user.dart#L33) is responsible for logging in a user through CASI. **Constructor Arguments** :
    - `String clientId` : The client-id in the `config` file given to the client at the time of registration at CASI. For details on how to register visit [Register](https://auth.devclub.in/client/register)
    - `String accessToken` : The client access-token in the `config` file given to the client at the time of registration at CASI.
    - (Optional) `Function onSuccess`: The callback function when the user logs in successfully. [Signature](https://github.com/Harsh14901/FlutterCASI/blob/7d12d82bdf7b865a7649c46b7915317644224355/casi/lib/casi_user.dart#L45)
    - (Optional) `Function onError`: The callback function when there is a error in logging in the user. [Signature](https://github.com/Harsh14901/FlutterCASI/blob/7d12d82bdf7b865a7649c46b7915317644224355/casi/lib/casi_user.dart#L46)
    
    Use the function [`CasiLogin.signIn`](https://github.com/Harsh14901/FlutterCASI/blob/7d12d82bdf7b865a7649c46b7915317644224355/casi/lib/casi_user.dart#L65) of the object to launch a web view that will allow the user to login through CASI.

2. The class [`CasiUser`](https://github.com/Harsh14901/FlutterCASI/blob/7d12d82bdf7b865a7649c46b7915317644224355/casi/lib/casi_user.dart#L6) is the model class for user data that CASI returns after logging in.


