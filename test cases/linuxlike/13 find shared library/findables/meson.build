project('findables', 'c')

# findable1 is a versioned shared library.
shared_library('findable1', 'shared1.c', version : '7.6.1', install : true)

# findable2 is both a static library and versioned shared library.
static_library('findable2', 'static2.c', install : true)
shared_library('findable2', 'shared2.c', version : '0', install : true)
