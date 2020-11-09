# Homebrew Formula for Google Test
# Usage: brew install web-eid/gtest/gtest

require 'formula'

class Gtest < Formula
  desc "Google Testing and Mocking Framework"
  homepage "https://github.com/google/googletest"
  head "https://github.com/google/googletest.git"

  stable do
    url "https://github.com/google/googletest/archive/release-1.10.0.tar.gz"
    sha256 "9dc9157a9a1551ec7a7e43daea9a694a0bb5fb8bec81235d8a1e6ef64c716dcb"
  end

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", "-DCMAKE_CXX_STANDARD=17", *std_cmake_args
      system "cmake", "--build", ".", "--target", "install"
    end
  end
end
