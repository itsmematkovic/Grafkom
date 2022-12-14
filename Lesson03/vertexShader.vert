#version 330
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 texCoord;

uniform mat4 view;
uniform mat4 projection;

out vec2 TexCoord;
out vec3 ourColor;

void main()
{
	gl_Position = projection * view * vec4(position, 1.0f);
	ourColor = aColor;
	TexCoord = vec2(texCoord.x, 1-texCoord.y);
}