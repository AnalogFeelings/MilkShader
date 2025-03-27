# :milk_glass: Milk Shader

[![GitHub issues](https://img.shields.io/github/issues/analogfeelings/milkshader?label=Issues&style=flat-square&logo=github)](https://github.com/AnalogFeelings/MilkShader/issues)
[![GitHub Issues or Pull Requests](https://img.shields.io/github/issues-pr/analogfeelings/milkshader?style=flat-square&label=Pull%20Requests&logo=github)](https://github.com/AnalogFeelings/MilkShader/pulls)
[![GitHub Repo stars](https://img.shields.io/github/stars/analogfeelings/milkshader?label=Stargazers&style=flat-square&logo=github)](https://github.com/AnalogFeelings/MilkShader/stargazers)
[![Steam Downloads](https://img.shields.io/steam/downloads/3452733745?style=flat-square&logo=steam&label=Steam%20Downloads)](https://steamcommunity.com/sharedfiles/filedetails/?id=3452733745)
[![GitHub](https://img.shields.io/github/license/analogfeelings/milkshader?label=License&style=flat-square&logo=opensourceinitiative&logoColor=white)](https://github.com/AnalogFeelings/MilkShader/blob/master/LICENSE.txt)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/w/analogfeelings/milkshader?label=Commit%20Activity&style=flat-square&logo=github)](https://github.com/AnalogFeelings/MilkShader/graphs/commit-activity)
[![Mastodon Follow](https://img.shields.io/mastodon/follow/109309123442839534?domain=https%3A%2F%2Ftech.lgbt%2F&style=flat-square&logo=mastodon&logoColor=white&label=Follow%20Me!&color=6364ff)](https://tech.lgbt/@analog_feelings)

This is a custom post processing shader for Garry's Mod, that requires the March 2025 update.

Visuals inspired by **Milk inside a bag of milk inside a bag of milk**. Shader code based on https://github.com/LucaSinUnaS/Milk-Filter.

## :inbox_tray: Downloads
You can find this addon in its [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3452733745) page.

## :package: Building
1. Grab a copy of [ShaderCompile](https://github.com/SCell555/ShaderCompile/releases/latest), and place it in the root of the repository.
2. Open cmd or PowerShell in the repository root and execute `./ShaderCompile.exe /O 3 -ver 20b -shaderpath ./shaders milk_ps20b.hlsl`.
3. Once done, go to **shaders** > **shaders** > **fxc** and copy **milk_ps20b.vsc**.
4. Paste the file in **shaders** > **fxc**.
5. Go to where your Garry's Mod install is, then go to **garrysmod** > **addons**, and in a subfolder, place everything from the repository.

When starting up the game, you should see the filter apply on map load.

# :balance_scale: License
Licensed under the MIT License. You can read it [here](LICENSE.txt).

> [!WARNING]  
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
