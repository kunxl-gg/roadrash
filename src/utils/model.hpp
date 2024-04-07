#include "mesh.hpp"
#include <string>

#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>

class Model {
public: 
    Model(char *path);
    void Draw();

private:
    vector<Mesh> meshes;
    std::string directory;

    void loadModel(string *path);

    void processNode(aiNode *node, const aiScene *scene);
    Mesh processMesh(aiMesh *mesh, const aiScene *scene);

    vector<Texture> loadMaterialTextures(aiMaterial *mat, aiTextureType type, string typeName);


};
