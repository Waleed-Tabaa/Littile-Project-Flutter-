class Product {
  final int price, id;
  final String description, title, subtitle;
  final List<String> image;
  Product(
      {required this.description,
      required this.id,
      required this.image,
      required this.price,
      required this.subtitle,
      required this.title});
}

List<Product> product = [
  Product(
      description:
          "Compatible with ios devaice , iPadOS device ,Apple Watch,or Mac with the lasted Software",
      id: 1,
      image: [
        "images/download.jpg",
        "images/AirPodsRed.jpg",
        "images/AirPodsGreen.jpg"
      ],
      price: 20,
      subtitle: "AirPods with MagSafe Charging Case",
      title: " AirPods"),
  Product(
      description:
          " Ram : 8 GB ,Hard : 256 GB,disply : Super Amoled , camera : 200px",
      id: 2,
      image: [
        "images/download (1).jpg",
        "images/Iphon 13 pro max 13 red.jpg",
        "images/Iphon 13 pro max Green.jpg"
      ],
      price: 1900,
      subtitle: "Iphone 13 pro Max",
      title: "Iphone 13 pro max "),
  Product(
      description: "Ram : 4, Hard : 128 GB , disply : HD , Camera : 48px",
      id: 3,
      image: [
        "images/download (2).jpg",
        "images/Samsung galaxy A14 red.jpg",
        "images/Samsung galaxy A14 green.jpg"
      ],
      price: 300,
      subtitle: "Samsung Galaxy A14",
      title: "ٍSamsung Galaxy A14"),
  Product(
      description: "we can turn on with usb and bluetooth",
      id: 4,
      image: [
        "images/Speacker.jpg",
        "images/Speacker Red.jpg",
        "images/SpeackerGreen.jpg"
      ],
      price: 50,
      subtitle: "Speacker",
      title: "Specker")
];
