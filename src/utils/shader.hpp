#ifndef SHADER
#define SHADER
#include <glm/glm.hpp>
#include <glad/glad.h>
#include <string>

class Shader{
public: 
    unsigned int programId;

    // Constructor
    Shader(const char* vertexPath, const char* shaderPath);

    // use or activate the shader
    void use(); 

    // utility functions
    void setBool(const std::string &name, bool value) const;
    void setInt(const std::string &name, int value) const; 
    void setFloat(const std::string &name, float value) const; 
    void setVec4(const std::string &name, float x, float y, float z, float w) const; 
    void setMat4(const std::string &name, glm::mat4 value) const; 

};
#endif // !SHADER
