#include <filesystem>
namespace fs = std::filesystem;

// Defining Path shaders
std::string vertexShader = fs::absolute("src/shaders/vertex.glsl");
std::string fragmentShader = fs::absolute("src/shaders/fragment.glsl");
