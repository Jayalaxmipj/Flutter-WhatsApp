class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final bool isActive;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
    required this.isActive,
  });
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Vivek",
      message: "Hi Vivek,Flutter is very Intersting",
      time: "06:00",
      isActive: true,
      avatarUrl:
          "https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg"),
  new ChatModel(
      name: "Richard",
      message: "Hoe are you?",
      time: "08:00",
      isActive: false,
      avatarUrl:
          "https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg"),
  new ChatModel(
      name: "Fujitsu IT",
      message: "Now my Pc is working fine.Thanks for your help",
      time: "11:00",
      isActive: false,
      avatarUrl:
          "https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg"),
  new ChatModel(
      name: "Jayalaxmi",
      message: "How was your day?",
      time: "10:00",
      isActive: true,
      avatarUrl: "https://blog.jijitechnologies.com/assets/img/user.jpg"),
  new ChatModel(
      name: "Shrikant",
      message: "hello",
      time: "06:00",
      isActive: false,
      avatarUrl:
          "https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg"),
  new ChatModel(
      name: "Divya",
      message: "hi",
      time: "08:00",
      isActive: false,
      avatarUrl: "https://blog.jijitechnologies.com/assets/img/user.jpg"),
];
