require "formula"

class Ctlib < Formula
  homepage "http://ctl.appliedtopology.org"
  url "http://ctl.appliedtopology.org/r/v0.1.tgz"
  sha1 "9c8ad348c1760a3646cc454b1e9cb66b695d58f6"

  depends_on "cmake" => :build
  depends_on "tbb"
  depends_on "boost"
  depends_on "metis"

  def install
     args = std_cmake_args
     args << "-DCXXFLAGS=-mmacosx-version-min"
     system "cmake", *args
     system "make VERBOSE=1"
     system "make install"
  end
end
__END__
