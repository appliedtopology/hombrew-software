require "formula"

class Ctlib < Formula
  homepage "http://ctl.appliedtopology.org"
  head "https://github.com/appliedtopology/ctl", :using => :git, :branch => :master 

  depends_on "cmake" => :build
  depends_on "tbb"
  depends_on "boost"
  depends_on "metis"
  depends_on "doxygen"
  depends_on "openmpi"
  depends_on "ann"

  def install
     args = std_cmake_args
     system "mkdir build"
     system "cd    build"
     system "cmake ..", *args
     system "make VERBOSE=1"
     system "make install"
  end
end
__END__
