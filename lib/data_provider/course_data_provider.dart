import 'package:codeia_final/model/course.dart';
import 'package:codeia_final/model/course_category.dart';
import 'package:codeia_final/model/lecture.dart';
import 'package:codeia_final/model/roadMap.dart';
import 'package:codeia_final/model/section.dart';

class CourseDataProvider {
  //Here I have already created courses & section list which we will we using hence forth

  static List<Roadmap> road0 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road1 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road2 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road3 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road4 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road5 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road6 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road7 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road8 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road9 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road10 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road11 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];
  static List<Roadmap> road12 = [
    Roadmap(
      "assets/images/courses/1.jpg",
      "assets/images/courses/2.jpg",
      "assets/images/courses/3.jpg",
    )
  ];

  //Section List
  static List<Section> course0Sections = [
    Section(0, "Introduction", [
      Lecture("Introduction", "01:48 mins"),
      Lecture("What is Flutter", "05:54 mins"),
      Lecture("Understanding Flutter Architecture", "04:45 mins"),
      Lecture("Flutter Alternatives", "06:10 mins"),
    ]),
    Section(1, "Flutter Basics", [
      Lecture("Module Introduction", "02:25 mins"),
      Lecture("Creating New Project", "05:17 mins"),
      Lecture("Dart Basics", "17:20 mins"),
      Lecture("Dart Fundamentals", "11:10 mins"),
      Lecture("Flutter App Basic", "07:40 mins"),
    ]),
  ];
  static List<Section> course1Sections = [
    Section(1, "Firebase Introduction", [
      Lecture("Introduction to Firebase", "02:00 mins"),
      Lecture("Firebase Authentication", "05:30 mins"),
      Lecture("Firebase Firestore", "10:15 mins"),
    ]),
    Section(1, "Flutter Integration", [
      Lecture("Setting up Firebase in Flutter", "03:20 mins"),
      Lecture("Real-time Database Integration", "06:45 mins"),
      Lecture("Firebase Cloud Messaging", "08:50 mins"),
    ]),
  ];
  static List<Section> course2Sections = [
    Section(2, "Web Development Basics", [
      Lecture("Introduction to HTML", "02:30 mins"),
      Lecture("Styling with CSS", "04:15 mins"),
      Lecture("Introduction to JavaScript", "06:20 mins"),
    ]),
    Section(2, "Frontend Frameworks", [
      Lecture("Introduction to React", "03:45 mins"),
      Lecture("Vue.js Fundamentals", "05:10 mins"),
      Lecture("Angular Basics", "07:25 mins"),
    ]),
  ];
  static List<Section> course3Sections = [
    Section(3, "Getting Started", [
      Lecture("Introduction to Programming", "02:15 mins"),
      Lecture("Setting up Development Environment", "04:40 mins"),
      Lecture("Basics of Data Types", "06:55 mins"),
    ]),
    Section(3, "Advanced Topics", [
      Lecture("Object-Oriented Programming", "03:30 mins"),
      Lecture("Exception Handling", "05:45 mins"),
      Lecture("Concurrency in Programming", "07:10 mins"),
    ]),
  ];
  static List<Section> course4Sections = [
    Section(4, "React Fundamentals", [
      Lecture("Introduction to React", "02:20 mins"),
      Lecture("Components and Props", "04:35 mins"),
      Lecture("State and Lifecycle", "06:50 mins"),
    ]),
    Section(4, "Advanced React", [
      Lecture("Hooks in React", "03:15 mins"),
      Lecture("Context API", "05:30 mins"),
      Lecture("Redux Integration", "07:45 mins"),
    ]),
  ];
  static List<Section> course5Sections = [
    Section(5, "Marketing Basics", [
      Lecture("Introduction to Marketing", "02:45 mins"),
      Lecture("Market Research", "04:10 mins"),
      Lecture("Understanding Consumer Behavior", "06:25 mins"),
    ]),
    Section(5, "Digital Marketing", [
      Lecture("SEO Fundamentals", "03:30 mins"),
      Lecture("Social Media Marketing", "05:55 mins"),
      Lecture("Email Marketing Strategies", "07:20 mins"),
    ]),
  ];
  static List<Section> course6Sections = [
    Section(6, "Content Marketing", [
      Lecture("Creating Engaging Content", "03:00 mins"),
      Lecture("Content Distribution Strategies", "05:25 mins"),
      Lecture("Content Analytics", "07:40 mins"),
    ]),
    Section(6, "Brand Management", [
      Lecture("Building Brand Identity", "03:15 mins"),
      Lecture("Brand Positioning", "05:40 mins"),
      Lecture("Brand Reputation Management", "07:55 mins"),
    ]),
  ];
  static List<Section> course7Sections = [
    Section(7, "Sales Fundamentals", [
      Lecture("Sales Techniques", "02:50 mins"),
      Lecture("Understanding Sales Funnel", "04:15 mins"),
      Lecture("Effective Communication Skills", "06:30 mins"),
    ]),
    Section(7, "Sales Strategies", [
      Lecture("Prospecting and Lead Generation", "03:25 mins"),
      Lecture("Negotiation Skills", "05:50 mins"),
      Lecture("Closing Techniques", "07:15 mins"),
    ]),
  ];
  static List<Section> course8Sections = [
    Section(8, "Market Analysis", [
      Lecture("Market Segmentation", "02:35 mins"),
      Lecture("Competitor Analysis", "04:00 mins"),
      Lecture("SWOT Analysis", "06:15 mins"),
    ]),
    Section(8, "Marketing Planning", [
      Lecture("Setting Marketing Objectives", "03:20 mins"),
      Lecture("Developing Marketing Strategies", "05:45 mins"),
      Lecture("Implementation and Control", "07:10 mins"),
    ]),
  ];
  static List<Section> course9Sections = [
    Section(9, "Investment Basics", [
      Lecture("Introduction to Investing", "02:55 mins"),
      Lecture("Types of Investments", "04:20 mins"),
      Lecture("Risk and Return", "06:35 mins"),
    ]),
    Section(9, "Portfolio Management", [
      Lecture("Asset Allocation", "03:30 mins"),
      Lecture("Diversification Strategies", "05:55 mins"),
      Lecture("Portfolio Rebalancing", "07:20 mins"),
    ]),
  ];
  static List<Section> course10Sections = [
    Section(10, "Cryptocurrency Basics", [
      Lecture("Introduction to Cryptocurrencies", "02:40 mins"),
      Lecture("Blockchain Technology", "04:05 mins"),
      Lecture("Cryptocurrency Exchanges", "06:20 mins"),
    ]),
    Section(10, "Technical Analysis", [
      Lecture("Chart Patterns", "03:15 mins"),
      Lecture("Indicators and Oscillators", "05:40 mins"),
      Lecture("Trading Strategies", "07:55 mins"),
    ]),
  ];
  static List<Section> course11Sections = [
    Section(11, "Cryptocurrency Fundamentals", [
      Lecture("Cryptocurrency Mining", "02:45 mins"),
      Lecture("Wallets and Security", "04:10 mins"),
      Lecture("Smart Contracts", "06:25 mins"),
    ]),
    Section(11, "Cryptocurrency Regulation", [
      Lecture("Legal Frameworks", "03:30 mins"),
      Lecture("Tax Implications", "05:55 mins"),
      Lecture("Future of Cryptocurrencies", "07:20 mins"),
    ]),
  ];
  static List<Section> course12Sections = [
    Section(12, "Intro to BackEnd", [
      Lecture("Introduction to Back-End Development", "17:20 mins"),
      Lecture("Programming in Python", "17:20 mins"),
      Lecture("Laravel-install", "17:20 mins"),
      Lecture("Laravel-Structure", "17:20 mins"),
      Lecture("Laravel-Routes", "17:20 mins"),
      Lecture("APIS", "17:20 mins"),
      Lecture("Laravel-controllers", "17:20 mins"),
      Lecture("HTML & JavaScript", "17:20 mins"),
    ]),
  ];

//Course List
  static List<Course> courseList = [
    Course(
        "0",
        "Flutter Master class",
        "assets/images/course/programming1.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "This complete flutter development course from beginner to expert. Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.",
        ''' 
 1-Develop cross-platform mobile apps.
 2-Use reactive widgets for UI.
 3-Manage layouts, navigation, and state.
 4-Integrate networking for data exchange.
 5-Implement persistence for local data.
 6-Integrate platform-specific features.
 7-Create animations for a better user experience.
''',
        "Effortless Code Learning",
        "01-Jan-2022",
        4.2,
        false,
        CourseCategory.programming,
        100,
        '2.5 Hours',
        15,
        course0Sections,
        0,
        road0),
    Course(
        "1",
        "Flutter with Firebase",
        "assets/images/course/programming4.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.",
        '''
        1-Integrate Firebase services for authentication.
        2-Use Firebase Realtime Database or Firestore for data storage.
        3-Implement cloud functions for server-side logic.
        4-Utilize Firebase Cloud Messaging for push notifications.
        5-Perform user analytics with Firebase Analytics.
        6-Manage app performance with Firebase Performance Monitoring.
        7-Implement remote config to update app behavior.
        ''',
        "Effortless Code Learning",
        "01-Apr-2022",
        4.5,
        false,
        CourseCategory.programming,
        50,
        '3 Hours',
        10,
        course1Sections,
        1,
        road2),
    Course(
        "2",
        "Front-End",
        "assets/images/course/front-end.jpg",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "Welcome to Become a Blockchain Developer with Ethereum and Solidity! This course is a complete introduction to decentralized application (Dapp) development.",
        ''' 
        HTML: Creating the structure of web pages.
        CSS: Styling and formatting web content.
        JavaScript: Adding interactivity and dynamic behavior.
        Responsive Design: Ensuring your websites adapt to different screen sizes.
        Frontend Frameworks: Using libraries like React, Angular, or Vue.js for efficient development.
        Version Control: Managing code changes with tools like Git.
        Web Performance Optimization: Improving website speed and efficiency.
        ''',
        "Perfect Academy",
        "01-Mar-2022",
        5,
        false,
        CourseCategory.programming,
        75,
        '2.7 Hours',
        15,
        course2Sections,
        2,
        road3),
    Course(
        "3",
        "Learn Programming Trick",
        "assets/images/course/programming3.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "One of the common and basic questions among students or someone who wants to learn code is “How can I learn to code fast and make a career as a programmer?”. Whether you are a student, fresher or experienced person trying to switch your job in programming you will definitely try to find tips and tricks to learn programming quickly and effectively",
        ''' 
        Problem-solving strategies: Techniques to break down complex problems into manageable chunks.
        Algorithmic thinking: Strategies for designing efficient algorithms and data structures.
        Code optimization: Tips for writing clean, concise, and efficient code.
        Debugging skills: Methods to identify and fix errors in code effectively.
        Time-saving shortcuts: Keyboard shortcuts and IDE features to streamline coding workflow.
        ''',
        "Effortless Code Learning",
        "01-Jan-2022",
        4,
        false,
        CourseCategory.programming,
        40,
        '5 Hours',
        30,
        course3Sections,
        3,
        road4),
    Course(
        "4",
        "Complete React Course",
        "assets/images/course/programming5.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "This course is fully up-to-date with React 18 (the latest version of React)!\nIt was completely updated and re-recorded from the ground up - it teaches the very latest version of React with all the core, modern features you need to know!",
        ''' 
        Fundamentals: Understand React's core concepts like components, JSX, state, and props.
        Component Lifecycle: Learn about the lifecycle methods of React components.
        State Management: Explore state management techniques using hooks like useState and Redux.
        Routing: Implement client-side routing with React Router.
        Forms and Validation: Handle user input with forms and implement validation.
        API Integration: Fetch data from external APIs and manage state in React applications.
        Authentication: Implement user authentication and authorization mechanisms.
''',
        "Effortless Code Learning",
        "01-Jan-2022",
        4.5,
        false,
        CourseCategory.programming,
        120,
        '4.3 Hours',
        25,
        course4Sections,
        4,
        road5),
    Course(
        "5",
        "Learn Marketing",
        "assets/images/course/marketing1.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "This is complete marketing master class. In this course, you will learn how to increase sales, approach new clients.",
        '''
        Market Research: Understanding target audiences, competitors, and market trends.
        Brand Strategy: Developing a unique brand identity and positioning in the market.
        Digital Marketing: Utilizing online channels like social media, email, SEO, and PPC for promotion.
        Content Marketing: Creating valuable content to engage and attract potential customers.
        Marketing Analytics: Analyzing data to measure campaign effectiveness and make data-driven decisions.
        ''',
        "ECL",
        "01-MAR-2022",
        4.2,
        false,
        CourseCategory.marketing,
        150,
        '4 Hours',
        20,
        course5Sections,
        5,
        road6),
    Course(
        "6",
        "Marketing MasterClass",
        "assets/images/course/marketing2.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "You're looking for a complete digital marketing course to teach you everything you need to become a digital marketing expert, right?",
        '''
        Advanced Market Research: Delve into sophisticated techniques for understanding consumer behavior and market trends.
        Strategic Brand Management: Learn to develop and maintain strong brand identities that resonate with target audiences.
        Data-Driven Decision Making: Harness the power of data analytics to inform marketing strategies and optimize campaigns.
        Cutting-Edge Digital Marketing Tactics: Explore the latest trends and tools in digital marketing, including AI-driven marketing automation.
        ''',
        "Effortless Code Learning",
        "01-Jan-2022",
        4.7,
        false,
        CourseCategory.marketing,
        80,
        '4.2 Hours',
        21,
        course6Sections,
        6,
        road7),
    Course(
        "7",
        "How to Increase Sales",
        "assets/images/course/marketing3.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "You're looking for a complete digital marketing course to teach you everything you need to become a digital marketing expert, right?",
        ''' Widgets: Flutter uses a reactive framework composed of widgets, which are building blocks for constructing user interfaces. You'll learn about different types of widgets like StatelessWidget and StatefulWidget and how to compose them to create complex UIs.

Layouts: Understanding layout widgets like Row, Column, Stack, and Container is essential for designing UIs that adapt to various screen sizes and orientations.

Navigation: You'll learn how to navigate between different screens or pages in your app using techniques such as Navigator and routes.

State Management: Managing state is crucial for building interactive applications. Flutter offers various approaches for state management such as setState, Provider, Bloc, Redux, and Riverpod.

Networking: You'll learn how to make HTTP requests to fetch data from remote servers using packages like http or dio.''',
        "Effortless Code Learning",
        "01-Apr-2022",
        4.3,
        false,
        CourseCategory.marketing,
        100,
        '4.5 Hours',
        20,
        course7Sections,
        7,
        road8),
    Course(
        "8",
        "Marketing Strategy",
        "assets/images/course/marketing4.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "In this course, you will learn various marketing strategy",
        ''' Widgets: Flutter uses a reactive framework composed of widgets, which are building blocks for constructing user interfaces. You'll learn about different types of widgets like StatelessWidget and StatefulWidget and how to compose them to create complex UIs.

Layouts: Understanding layout widgets like Row, Column, Stack, and Container is essential for designing UIs that adapt to various screen sizes and orientations.

Navigation: You'll learn how to navigate between different screens or pages in your app using techniques such as Navigator and routes.

State Management: Managing state is crucial for building interactive applications. Flutter offers various approaches for state management such as setState, Provider, Bloc, Redux, and Riverpod.

Networking: You'll learn how to make HTTP requests to fetch data from remote servers using packages like http or dio.''',
        "Effortless Code Learning",
        "01-June-2022",
        5,
        false,
        CourseCategory.marketing,
        120,
        '3.5 Hours',
        32,
        course8Sections,
        8,
        road9),
    Course(
        "9",
        "Invest money",
        "assets/images/course/finance1.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "In this course, you will learn invest money wisely in various categories. Learn basic of capital market, other debt options.",
        ''' Widgets: Flutter uses a reactive framework composed of widgets, which are building blocks for constructing user interfaces. You'll learn about different types of widgets like StatelessWidget and StatefulWidget and how to compose them to create complex UIs.

Layouts: Understanding layout widgets like Row, Column, Stack, and Container is essential for designing UIs that adapt to various screen sizes and orientations.

Navigation: You'll learn how to navigate between different screens or pages in your app using techniques such as Navigator and routes.

State Management: Managing state is crucial for building interactive applications. Flutter offers various approaches for state management such as setState, Provider, Bloc, Redux, and Riverpod.

Networking: You'll learn how to make HTTP requests to fetch data from remote servers using packages like http or dio.''',
        "Effortless Code Learning",
        "15-Feb-2022",
        5,
        false,
        CourseCategory.finance,
        100,
        '6 Hours',
        35,
        course9Sections,
        9,
        road10),
    Course(
        "10",
        "Crypto Technical Analysis",
        "assets/images/course/finance2.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "In this course, you will learn thorough crypto technical analysis. It will covers basic understanding on various crypto currencies. Volatility in crypto market.",
        ''' Widgets: Flutter uses a reactive framework composed of widgets, which are building blocks for constructing user interfaces. You'll learn about different types of widgets like StatelessWidget and StatefulWidget and how to compose them to create complex UIs.

Layouts: Understanding layout widgets like Row, Column, Stack, and Container is essential for designing UIs that adapt to various screen sizes and orientations.

Navigation: You'll learn how to navigate between different screens or pages in your app using techniques such as Navigator and routes.

State Management: Managing state is crucial for building interactive applications. Flutter offers various approaches for state management such as setState, Provider, Bloc, Redux, and Riverpod.

Networking: You'll learn how to make HTTP requests to fetch data from remote servers using packages like http or dio.''',
        "Effortless Code Learning",
        "15-Feb-2022",
        4.6,
        false,
        CourseCategory.finance,
        90,
        '3 Hours',
        22,
        course10Sections,
        10,
        road11),
    Course(
        "11",
        "All about Crypto",
        "assets/images/course/finance3.png",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "In this course, you will learn thorough crypto technical analysis. It will covers basic understanding on various crypto currencies. Volatility in crypto market.",
        ''' Widgets: Flutter uses a reactive framework composed of widgets, which are building blocks for constructing user interfaces. You'll learn about different types of widgets like StatelessWidget and StatefulWidget and how to compose them to create complex UIs.

Layouts: Understanding layout widgets like Row, Column, Stack, and Container is essential for designing UIs that adapt to various screen sizes and orientations.

Navigation: You'll learn how to navigate between different screens or pages in your app using techniques such as Navigator and routes.

State Management: Managing state is crucial for building interactive applications. Flutter offers various approaches for state management such as setState, Provider, Bloc, Redux, and Riverpod.

Networking: You'll learn how to make HTTP requests to fetch data from remote servers using packages like http or dio.''',
        "Effortless Code Learning",
        "20-Mar-2022",
        4.8,
        false,
        CourseCategory.finance,
        75,
        '3.5 Hours',
        28,
        course11Sections,
        11,
        road12),
    Course(
        "12",
        "Back-End Course",
        "assets/images/course/back_end.jpg",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "Backend development can be a fulfilling career choice for those with web development experience or who have a keen interest in development technologies. What is it exactly that a backend developer does, and how can you begin working towards earning the qualifications for this exciting career ",
        '''
        Server-Side Programming.
        Database Management.
        API Development.
        Authentication and Authorization.
        Middleware Integration.
        Web Frameworks.
''',
        "Conducted by Habiba Mohamed",
        "20-Mar-2022",
        4.8,
        false,
        CourseCategory.finance,
        75,
        '3.5 Hours',
        28,
        course12Sections,
        12,
        road12),
    Course(
        "13",
        "Ai Course",
        "assets/images/course/AiCourse.jpg",
        "assets/images/courses/1.jpg",
        "assets/images/courses/2.jpg",
        "assets/images/courses/3.jpg",
        "Backend development can be a fulfilling career choice for those with web development experience or who have a keen interest in development technologies. What is it exactly that a backend developer does, and how can you begin working towards earning the qualifications for this exciting career ",
        '''
        Machine Learning Basics.
        Neural Networks.
        Deep Learning.
        Natural Language Processing (NLP).
        Computer Vision.
        AI Ethics and Bias.
        AI Applications.
        ''',
        "Route Academy",
        "20-Mar-2022",
        4.8,
        false,
        CourseCategory.finance,
        150,
        '3.5 Hours',
        28,
        course12Sections,
        13,
        road12),
  ];
}
