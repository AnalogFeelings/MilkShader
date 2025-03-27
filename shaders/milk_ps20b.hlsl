// Milk Shader - A simple custom shader example for Garry's Mod.
// Copyright (C) 2025 Analog Feelings
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#include "common.hlsl"

float4 main( PS_INPUT i ) : COLOR
{
    float3 color = tex2D(TexBase, i.uv).rgb;

    float brightness = (color.x + color.y + color.z) / 3;

    // if you couldn't tell this is very stinky code
    // but it gets the job done
    if(brightness <= 0.09)
    {
        return float4(0, 0, 0, 1);
    }
    else if(brightness > 0.09 && brightness <= 0.27)
    {
        return float4(0.4, 0, 0.12, 1);
    }
    else if(brightness > 0.27 && brightness < 0.47)
    {
        return float4(0, 0, 0, 1);
    }
    else if(brightness >= 0.47 && brightness < 0.78)
    {
        return float4(0.4, 0, 0.12, 1);
    }
    else if(brightness >= 0.78 && brightness < 0.9)
    {
        return float4(0.4, 0, 0.12, 1);
    }
    else if(brightness >= 0.9)
    {
        return float4(0.53, 0, 0.57, 1);
    }
    else
    {
        return float4(0, 0, 0, 1);
    }
}