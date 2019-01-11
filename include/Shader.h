#pragma once
#include <string>
class Shader
{
public:
	Shader(const std::string &, const std::string &);
	~Shader();

	void Use();
	unsigned int getProgram();

private:
	bool init();
	bool readShaderFile(std::string &, std::string &);
	int compileShader(const std::string &, const std::string &);

private:
	std::string m_vertexPath, m_fragmentPath;
	unsigned int m_program;
	bool m_isOK;
};

