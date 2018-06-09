project('find shared library', 'c')

# Test that find_library() can find versioned shared libraries outside
# the compiler's default dirs.  This case was failing on OpenBSD.

# First we must install some libraries.
install_sh = find_program('install.sh')
prefix = meson.build_root() + '/prefix'
result = run_command(install_sh, prefix)
assert (result.returncode() == 0, 'install.sh failed')

# Now find the libraries and use them.
cc = meson.get_compiler('c')
prefix_lib = prefix + '/lib'
lib1 = cc.find_library('findable1', dirs : prefix_lib)
lib2 = cc.find_library('findable2', dirs : prefix_lib)
main = executable('main', 'main.c', dependencies : [lib1, lib2],
                  build_rpath : prefix_lib, install_rpath : prefix_lib)
test('main', main)
