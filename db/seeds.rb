# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create sample projects for the morphing portfolio
projects_data = [
  {
    title: "Neural Network Visualizer",
    description: "An interactive web application that visualizes how neural networks process information in real-time. Built with advanced WebGL rendering and machine learning algorithms to create stunning visual representations of AI decision-making processes.",
    category: "AI/ML",
    featured: true
  },
  {
    title: "Quantum Physics Simulator",
    description: "A cutting-edge simulation platform that demonstrates quantum mechanics principles through interactive 3D visualizations. Users can manipulate quantum states and observe wave-particle duality in action.",
    category: "Science",
    featured: true
  },
  {
    title: "Morphing UI Components",
    description: "A revolutionary design system featuring components that seamlessly transform between different states. Each interaction creates fluid animations that guide users through complex interfaces.",
    category: "Design",
    featured: true
  },
  {
    title: "Holographic Data Dashboard",
    description: "A futuristic data visualization platform that presents complex datasets through holographic projections. Features real-time updates and immersive 3D data exploration.",
    category: "Data Viz",
    featured: false
  },
  {
    title: "Time Dilation Explorer",
    description: "An educational tool that demonstrates Einstein's theory of relativity through interactive time dilation simulations. Users can adjust variables and see how time behaves at different speeds.",
    category: "Science",
    featured: false
  },
  {
    title: "Particle System Generator",
    description: "A creative tool for generating beautiful particle effects and animations. Features real-time editing capabilities and export options for various platforms.",
    category: "Creative",
    featured: false
  },
  {
    title: "Virtual Reality Portfolio",
    description: "An immersive VR experience showcasing creative work in a three-dimensional space. Users can navigate through different rooms and interact with projects using hand tracking.",
    category: "VR/AR",
    featured: false
  },
  {
    title: "Blockchain Art Gallery",
    description: "A decentralized platform for showcasing digital art with NFT integration. Features smart contracts for ownership verification and community-driven curation.",
    category: "Web3",
    featured: false
  },
  {
    title: "Fluid Dynamics Simulator",
    description: "A physics simulation engine that accurately models fluid behavior in real-time. Used for educational purposes and scientific research applications.",
    category: "Science",
    featured: false
  },
  {
    title: "Interactive Music Visualizer",
    description: "A dynamic audio visualization tool that creates stunning visual representations of music. Features multiple visualization modes and real-time audio analysis.",
    category: "Creative",
    featured: false
  },
  {
    title: "Augmented Reality Shopping",
    description: "An AR-powered e-commerce platform that allows users to visualize products in their real environment before purchasing. Features advanced object recognition and spatial mapping.",
    category: "VR/AR",
    featured: false
  },
  {
    title: "Climate Change Tracker",
    description: "A comprehensive dashboard that tracks global climate data and presents it through interactive maps and charts. Features historical data analysis and future projections.",
    category: "Data Viz",
    featured: false
  }
]

projects_data.each do |project_attrs|
  Project.find_or_create_by!(title: project_attrs[:title]) do |project|
    project.description = project_attrs[:description]
    project.category = project_attrs[:category]
    project.featured = project_attrs[:featured]
    project.image_url = "https://picsum.photos/800/600?random=#{rand(1000)}"
  end
end

puts "Created #{Project.count} projects for the morphing portfolio!"
