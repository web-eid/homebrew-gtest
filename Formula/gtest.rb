# Homebrew Formula for Google Test
# Usage: brew install web-eid/gtest/gtest

require 'formula'

class Gtest < Formula
  desc "Google Testing and Mocking Framework"
  homepage "https://github.com/google/googletest"
  head "https://github.com/google/googletest.git"

  stable do
    url "https://github.com/google/googletest/releases/download/v1.16.0/googletest-1.16.0.tar.gz"
    sha256 "78c676fc63881529bf97bf9d45948d905a66833fbfa5318ea2cd7478cb98f399"
  end

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", "-DCMAKE_CXX_STANDARD=17", *std_cmake_args
      system "cmake", "--build", ".", "--target", "install"
    end
  end
end
