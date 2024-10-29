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
    image:
        'assets/projects/Simulator Screenshot - iPhone 16 Pro - 2024-10-29 at 12.46.29.png',
    title: 'WhatsApp clone',
    subtitle: 'Exploring UI Dynamics: A WhatsApp Interface Clone',
    githubLink: 'https://github.com/thrilokprakashh/whatsapp_clone',
  ),
  ProjectUtils(
    image:
        'assets/projects/Simulator Screenshot - iPhone 16 Pro - 2024-10-29 at 12.48.06.png',
    title: 'Food Recipe app',
    subtitle: 'Discover, Cook, Enjoy – Your Ultimate Recipe Guide',
    githubLink: 'https://github.com/thrilokprakashh/food_recipe_app',
  ),
  ProjectUtils(
    image:
        'assets/projects/Simulator Screenshot - iPhone 16 Pro - 2024-10-29 at 12.45.12.png',
    title: 'Quiz App',
    subtitle: 'Challenge Your Mind, Test Your Knowledge',
    githubLink: 'https://github.com/thrilokprakashh/quiz_app',
  ),
 ];
