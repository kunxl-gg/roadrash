#include "mesh.hpp"
#include "shader.hpp"

#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>

class Model {
public:
    // Constructor
    Model(); 

    // Destructor
    ~Model(); 

    void Draw(Shader &shader) {
        for (unsigned int i = 0; i < meshes.size(); i++) {
            meshes[i].Draw(shader);
        }
    }
private:
    // model data
    vector<Mesh> meshes;
    string directory;

};
