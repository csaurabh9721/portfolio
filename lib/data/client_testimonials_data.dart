List<ClientTestimonialsModel> clientTestimonials =
    List<ClientTestimonialsModel>.from(
        testimonials.map((e) => ClientTestimonialsModel.fromJson(e)));

class ClientTestimonialsModel {
  final String name;
  final String text;

  ClientTestimonialsModel(this.name, this.text);

  factory ClientTestimonialsModel.fromJson(Map<String, dynamic> json) {
    return ClientTestimonialsModel(
      json['name'],
      json['text'],
    );
  }
}

final List<Map<String, String>> testimonials = [
  {
    'name': 'Rahul Verma',
    'text':
        'Saurabh exceeded expectations and delivered a top-tier mobile app. Highly recommended!'
  },
  {
    'name': 'Anjali Singh',
    'text':
        'Reliable and professional developer. Took full ownership and delivered on time.'
  },
];
