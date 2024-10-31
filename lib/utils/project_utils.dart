class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.githubLink,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/D9BA6C60-8EE0-4E9C-9687-BD778C38E7AD.png',
    title: 'Facebook Clone',
    subtitle: 'Replicating Facebook’s UI with Flutter Magic',
    githubLink: 'https://github.com/thrilokprakashh/facebook_cloneApp',
  ),
  ProjectUtils(
    image: 'assets/projects/D994333F-29A0-4B89-B198-5A99E7F6BF13.png',
    title: 'WhatsApp clone',
    subtitle: 'Exploring UI Dynamics: A WhatsApp Interface Clone',
    githubLink: 'https://github.com/thrilokprakashh/whatsapp_clone',
  ),
  ProjectUtils(
    image: 'assets/projects/1600w-2M8uaWgGUPg.png',
    title: 'Food Recipe app',
    subtitle: 'Discover, Cook, Enjoy – Your Ultimate Recipe Guide',
    githubLink: 'https://github.com/thrilokprakashh/food_recipe_app',
  ),
  ProjectUtils(
    image: 'assets/projects/IMG_2776.png',
    title: 'Quiz App',
    subtitle: 'Challenge Your Mind, Test Your Knowledge',
    githubLink: 'https://github.com/thrilokprakashh/quiz_app_',
  ),
];
