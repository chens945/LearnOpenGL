#include "Shader.h"

#include <fstream>
#include <sstream>
#include <iostream>

Shader::Shader(const std::string &vertexPath, const std::string &fragmentPath)
	:m_isOK(false), m_vertexPath(vertexPath), m_fragmentPath(fragmentPath)
{
	m_isOK = init();
}


Shader::~Shader()
{
}

void Shader::Use()
{
	if (m_isOK)
	{
		glUseProgram(m_program);
	}
}

unsigned int Shader::getProgram()
{
	return m_program;
}

bool Shader::init()
{
	bool bCode = false;
	std::string vertextCode, fragmentCode;
	if (readShaderFile(vertextCode, fragmentCode)) {
		int ret = compileShader(vertextCode, fragmentCode);
		if (ret != -1) {
			m_program = static_cast<unsigned int>(ret);
			bCode = true;
		}
	}
	return bCode;
}

bool Shader::readShaderFile(std::string &vexTextCode, std::string &fragmentCode)
{
	std::ifstream vShaderFile;
	std::ifstream fShaderFile;

	vShaderFile.exceptions(std::ifstream::badbit);
	fShaderFile.exceptions(std::ifstream::badbit);

	try
	{
		vShaderFile.open(m_vertexPath);
		fShaderFile.open(m_fragmentPath);

		std::stringstream vShaderStram, fShaderStream;
		vShaderStram << vShaderFile.rdbuf();
		fShaderStream << fShaderFile.rdbuf();

		vShaderFile.close();
		fShaderFile.close();

		vexTextCode = vShaderStram.str();
		fragmentCode = fShaderStream.str();
		return true;
	}
	catch (const std::ifstream::failure e)
	{
		std::cout << "ERROR::SHADER::FILE_NOT_SUCCESFULLY_READ" << std::endl;
		return false;
	}
}

int Shader::compileShader(const std::string &vertexCode, const std::string &fragmentCode)
{
	const GLchar *vShaderCode = vertexCode.c_str();
	const GLchar *fShaderCode = fragmentCode.c_str();

	GLuint vertex, fragment;
	GLint success;
	GLchar infoLog[512];

	vertex = glCreateShader(GL_VERTEX_SHADER);
	glShaderSource(vertex, 1, &vShaderCode, NULL);
	glCompileShader(vertex);
	glGetShaderiv(vertex, GL_COMPILE_STATUS, &success);
	if (!success) {
		glGetShaderInfoLog(vertex, 512, NULL, infoLog);
		std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;
		return -1;
	}

	fragment = glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(fragment, 1, &fShaderCode, NULL);
	glCompileShader(fragment);
	glGetShaderiv(fragment, GL_COMPILE_STATUS, &success);
	if (!success) {
		glGetShaderInfoLog(fragment, 512, NULL, infoLog);
		std::cout << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n" << infoLog << std::endl;
		return -1;
	}

	GLuint program = glCreateProgram();
	glAttachShader(program, vertex);
	glAttachShader(program, fragment);
	glLinkProgram(program);
	glGetProgramiv(program, GL_LINK_STATUS, &success);
	if (!success) {
		glGetProgramInfoLog(program, 512, NULL, infoLog);
		std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
		return -1;
	}

	glDeleteShader(vertex);
	glDeleteShader(fragment);
	return program;
}
