require "formula"

class Ctlib < Formula
  homepage "http://ctl.appliedtopology.org"
  url "https://github.com/appliedtopology/ctl/archive/v0.2.tar.gz"
  sha1 "2cc4f0f8c31e4943529d99570025b2424630ec5e"

  depends_on "cmake" => :build
  depends_on "tbb"
  depends_on "boost"
  depends_on "metis"
  depends_on "doxygen"
  depends_on "openmpi"
  depends_on "ann"

  def install
     args = std_cmake_args
     args << "-DCXXFLAGS=-mmacosx-version-min"
     system "cmake", *args
     system "make VERBOSE=1"
     system "make install"
  end
end
__END__
