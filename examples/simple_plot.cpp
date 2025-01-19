#include "plotter.h"
#include <cmath>
#include <iostream>

int main() {
    try {
        Plotter plot(800, 600);
        
        // Set plot limits
        plot.setLimits(-5, 5, -2, 2);
        
        // Add sine wave points
        for (float x = -5; x <= 5; x += 0.1) {
            float y = sin(x);
            plot.addPoint(x, y);
        }
        
        std::cout << "Created sine wave plot. Close window to exit." << std::endl;
        
        // Main loop
        while (!plot.shouldClose()) {
            plot.draw();
        }
        
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return -1;
    }
    
    return 0;
}