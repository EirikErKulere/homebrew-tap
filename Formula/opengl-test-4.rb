class OpenglTest4 < Formula
  desc "Prosjekt for å teste ting i OpenGL"
  homepage "https://github.com/E1fl4/OpenGL_Test_4"
  url "https://github.com/E1fl4/OpenGL_Test_4/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "da0bbe5655ad038639f12cad38e481d877e197c2f848f61ef4bd7cc545b0527b"
  license ""

  depends_on "cmake" => :build
  depends_on "assimp"
  depends_on "glfw"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    assert_path_exists bin/"OpenGL_Test_4"
  end
end
