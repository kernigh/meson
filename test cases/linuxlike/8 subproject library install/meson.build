project('subproj lib install', 'c',
  version : '2.3.4',
  license : 'mylicense')

system = host_machine.system()
if system == 'cygwin' or system == 'openbsd'
  error('MESON_SKIP_TEST linuxlike soversions not supported on Cygwin nor OpenBSD.')
endif

# Test that the subproject library gets installed
subproject('sublib', version : '1.0.0')
