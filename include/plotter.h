#ifndef PLOTTER_H
#define PLOTTER_H

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <vector>
#include <stdexcept>

class Plotter {
private:
    GLFWwindow* window;
    std::vector<float> points;
    float xMin, xMax, yMin, yMax;
    
    // Window dimensions
    int width;
    int height;
    
    void initializeGL();
    void normalizeCoordinates(float x, float y, float& nx, float& ny) const;

public:
    Plotter(int windowWidth = 800, int windowHeight = 600);
    ~Plotter();
    
    // Add a point to the plot
    void addPoint(float x, float y);
    
    // Clear all points
    void clear();
    
    // Set axis limits
    void setLimits(float xmin, float xmax, float ymin, float ymax);
    
    // Draw the plot
    void draw();
    
    // Check if window should close
    bool shouldClose() const;
};

#endif