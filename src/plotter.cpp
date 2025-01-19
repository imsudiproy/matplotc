#include "plotter.h"

Plotter::Plotter(int windowWidth, int windowHeight) 
    : width(windowWidth), height(windowHeight),
      xMin(-10.0f), xMax(10.0f), yMin(-10.0f), yMax(10.0f) {
    initializeGL();
}

void Plotter::initializeGL() {
    if (!glfwInit()) {
        throw std::runtime_error("Failed to initialize GLFW");
    }
    
    window = glfwCreateWindow(width, height, "Simple Plot", nullptr, nullptr);
    if (!window) {
        glfwTerminate();
        throw std::runtime_error("Failed to create GLFW window");
    }
    
    glfwMakeContextCurrent(window);
    
    if (glewInit() != GLEW_OK) {
        throw std::runtime_error("Failed to initialize GLEW");
    }
}

Plotter::~Plotter() {
    glfwDestroyWindow(window);
    glfwTerminate();
}

void Plotter::normalizeCoordinates(float x, float y, float& nx, float& ny) const {
    nx = 2.0f * (x - xMin) / (xMax - xMin) - 1.0f;
    ny = 2.0f * (y - yMin) / (yMax - yMin) - 1.0f;
}

void Plotter::addPoint(float x, float y) {
    float nx, ny;
    normalizeCoordinates(x, y, nx, ny);
    points.push_back(nx);
    points.push_back(ny);
}

void Plotter::clear() {
    points.clear();
}

void Plotter::setLimits(float xmin, float xmax, float ymin, float ymax) {
    xMin = xmin;
    xMax = xmax;
    yMin = ymin;
    yMax = ymax;
}

void Plotter::draw() {
    glClear(GL_COLOR_BUFFER_BIT);
    
    // Draw axes
    glBegin(GL_LINES);
    glColor3f(0.5f, 0.5f, 0.5f);
    
    // X-axis
    float nx, ny;
    normalizeCoordinates(xMin, 0, nx, ny);
    glVertex2f(nx, ny);
    normalizeCoordinates(xMax, 0, nx, ny);
    glVertex2f(nx, ny);
    
    // Y-axis
    normalizeCoordinates(0, yMin, nx, ny);
    glVertex2f(nx, ny);
    normalizeCoordinates(0, yMax, nx, ny);
    glVertex2f(nx, ny);
    glEnd();
    
    // Draw points
    glColor3f(1.0f, 0.0f, 0.0f);
    glPointSize(5.0f);
    glBegin(GL_POINTS);
    for (size_t i = 0; i < points.size(); i += 2) {
        glVertex2f(points[i], points[i + 1]);
    }
    glEnd();
    
    glfwSwapBuffers(window);
    glfwPollEvents();
}

bool Plotter::shouldClose() const {
    return glfwWindowShouldClose(window);
}