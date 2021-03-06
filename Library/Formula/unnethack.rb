require 'formula'

class Unnethack < Formula
  url 'https://downloads.sourceforge.net/project/unnethack/unnethack/3.6.1/unnethack-3.6.1-20120205.tar.gz'
  homepage 'http://sourceforge.net/apps/trac/unnethack/'
  md5 '675c00d776e513d5aedaf11f071af569'

  skip_clean "var/unnethack/bones"
  skip_clean "var/unnethack/level"
  skip_clean "var/unnethack/saves"

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--with-owner=#{`id -un`}", "--with-group=staff",
                          "--enable-wizmode=#{`id -un`}"
    system "make install"
  end
end
