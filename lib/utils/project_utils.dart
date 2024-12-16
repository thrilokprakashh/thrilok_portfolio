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
    image: 'assets/projects/logohere.png',
    title: 'Trendy Times',
    subtitle: 'Get real-time news and trends in a simple, easy-to-use app.',
    githubLink: 'https://github.com/thrilokprakashh/flutter_news_app',
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
