Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/mmapmodule?download=true
inline.NumInlined: 70
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@PyExc_OSError = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"PROT_EXEC\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PROT_READ\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"PROT_WRITE\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"MAP_SHARED\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"MAP_PRIVATE\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"MAP_DENYWRITE\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"MAP_EXECUTABLE\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"MAP_ANON\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"MAP_ANONYMOUS\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"MAP_POPULATE\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MAP_STACK\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"MAP_NORESERVE\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"MAP_32BIT\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"PAGESIZE\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"ALLOCATIONGRANULARITY\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"ACCESS_DEFAULT\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"ACCESS_READ\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"ACCESS_WRITE\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"ACCESS_COPY\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"MS_INVALIDATE\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"MS_ASYNC\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"MS_SYNC\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"MADV_NORMAL\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"MADV_RANDOM\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"MADV_SEQUENTIAL\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"MADV_WILLNEED\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"MADV_DONTNEED\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"MADV_REMOVE\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"MADV_DONTFORK\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"MADV_DOFORK\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"MADV_HWPOISON\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"MADV_MERGEABLE\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"MADV_UNMERGEABLE\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"MADV_HUGEPAGE\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"MADV_NOHUGEPAGE\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"MADV_DONTDUMP\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"MADV_DODUMP\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"MADV_FREE\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"mmap.mmap\00", align 1
@mmap_object_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.41, i32 80, i32 0, i32 17664, [4 x i8] zeroinitializer, ptr @mmap_object_slots }, align 8
@mmap_doc = internal constant [1124 x i8] c"Windows: mmap(fileno, length[, tagname[, access[, offset[, trackfd]]]])\0A\0AMaps length bytes from the file specified by the file handle fileno,\0Aand returns a mmap object.  If length is larger than the current size\0Aof the file, the file is extended to contain length bytes.  If length\0Ais 0, the maximum length of the map is the current size of the file,\0Aexcept that if the file is empty Windows raises an exception (you cannot\0Acreate an empty mapping on Windows).\0A\0AUnix: mmap(fileno, length[, flags[, prot[, access[, offset[, trackfd]]]]])\0A\0AMaps length bytes from the file specified by the file descriptor fileno,\0Aand returns a mmap object.  If length is 0, the maximum length of the map\0Awill be the current size of the file when mmap is called.\0Aflags specifies the nature of the mapping. MAP_PRIVATE creates a\0Aprivate copy-on-write mapping, so changes to the contents of the mmap\0Aobject will be private to this process, and MAP_SHARED creates a mapping\0Athat's shared with all other processes mapping the same areas of the file.\0AThe default value is MAP_SHARED.\0A\0ATo map anonymous memory, pass -1 as the fileno (both versions).\00", align 16
@mmap_object_getset = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.116, ptr @mmap_closed_get, ptr null, ptr null, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@mmap_object_slots = internal global [18 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @new_mmap_object }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @mmap_object_dealloc }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @mmap__repr__method }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @mmap_doc }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @mmap_object_methods }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @mmap_object_members }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @mmap_object_getset }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @PyObject_GenericGetAttr }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @_PyObject_VisitType }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @mmap_length }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @mmap_item }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @mmap_ass_item }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @mmap_length }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @mmap_subscript }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @mmap_ass_subscript }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @mmap_buffer_getbuf }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @mmap_buffer_releasebuf }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@new_mmap_object.keywords = internal global [8 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr null], align 16
@.str.44 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"prot\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"trackfd\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"in|iiil$p\00", align 1
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [38 x i8] c"memory mapped length must be positive\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"memory mapped offset must be positive\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [48 x i8] c"mmap can't specify both access and flags, prot.\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"mmap invalid access parameter.\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"mmap.__new__\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"inil\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"cannot mmap an empty file\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"mmap offset is greater than file size\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"mmap length is greater than file size\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"cpython:mmap\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"<%s closed=True>\00", align 1
@.str.64 = private unnamed_addr constant [62 x i8] c"<%s closed=False, access=%s, length=%zd, pos=%zd, offset=%ld>\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@mmap_mmap_close__doc__ = internal constant [21 x i8] c"close($self, /)\0A--\0A\0A\00", align 16
@.str.66 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@mmap_mmap_find__doc__ = internal constant [48 x i8] c"find($self, view, start=None, end=None, /)\0A--\0A\0A\00", align 16
@.str.67 = private unnamed_addr constant [6 x i8] c"rfind\00", align 1
@mmap_mmap_rfind__doc__ = internal constant [49 x i8] c"rfind($self, view, start=None, end=None, /)\0A--\0A\0A\00", align 16
@.str.68 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@mmap_mmap_flush__doc__ = internal constant [52 x i8] c"flush($self, offset=0, size=-1, /, *, flags=0)\0A--\0A\0A\00", align 16
@.str.69 = private unnamed_addr constant [8 x i8] c"madvise\00", align 1
@mmap_mmap_madvise__doc__ = internal constant [53 x i8] c"madvise($self, option, start=0, length=None, /)\0A--\0A\0A\00", align 16
@.str.70 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@mmap_mmap_move__doc__ = internal constant [38 x i8] c"move($self, dest, src, count, /)\0A--\0A\0A\00", align 16
@.str.71 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@mmap_mmap_read__doc__ = internal constant [28 x i8] c"read($self, n=None, /)\0A--\0A\0A\00", align 16
@.str.72 = private unnamed_addr constant [10 x i8] c"read_byte\00", align 1
@mmap_mmap_read_byte__doc__ = internal constant [25 x i8] c"read_byte($self, /)\0A--\0A\0A\00", align 16
@.str.73 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@mmap_mmap_readline__doc__ = internal constant [24 x i8] c"readline($self, /)\0A--\0A\0A\00", align 16
@.str.74 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@mmap_mmap_resize__doc__ = internal constant [31 x i8] c"resize($self, newsize, /)\0A--\0A\0A\00", align 16
@.str.75 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@mmap_mmap_seek__doc__ = internal constant [35 x i8] c"seek($self, pos, whence=0, /)\0A--\0A\0A\00", align 16
@.str.76 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@mmap_mmap_seekable__doc__ = internal constant [24 x i8] c"seekable($self, /)\0A--\0A\0A\00", align 16
@.str.77 = private unnamed_addr constant [9 x i8] c"set_name\00", align 1
@mmap_mmap_set_name__doc__ = internal constant [30 x i8] c"set_name($self, name, /)\0A--\0A\0A\00", align 16
@.str.78 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@mmap_mmap_size__doc__ = internal constant [20 x i8] c"size($self, /)\0A--\0A\0A\00", align 16
@.str.79 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@mmap_mmap_tell__doc__ = internal constant [20 x i8] c"tell($self, /)\0A--\0A\0A\00", align 16
@.str.80 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@mmap_mmap_write__doc__ = internal constant [28 x i8] c"write($self, bytes, /)\0A--\0A\0A\00", align 16
@.str.81 = private unnamed_addr constant [11 x i8] c"write_byte\00", align 1
@mmap_mmap_write_byte__doc__ = internal constant [32 x i8] c"write_byte($self, byte, /)\0A--\0A\0A\00", align 16
@.str.82 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@mmap_mmap___enter____doc__ = internal constant [25 x i8] c"__enter__($self, /)\0A--\0A\0A\00", align 16
@.str.83 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@mmap_mmap___exit____doc__ = internal constant [56 x i8] c"__exit__($self, exc_type, exc_value, traceback, /)\0A--\0A\0A\00", align 16
@mmap_object_methods = internal global [20 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.65, ptr @mmap_mmap_close, i32 4, [4 x i8] zeroinitializer, ptr @mmap_mmap_close__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.66, ptr @mmap_mmap_find, i32 128, [4 x i8] zeroinitializer, ptr @mmap_mmap_find__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.67, ptr @mmap_mmap_rfind, i32 128, [4 x i8] zeroinitializer, ptr @mmap_mmap_rfind__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.68, ptr @mmap_mmap_flush, i32 130, [4 x i8] zeroinitializer, ptr @mmap_mmap_flush__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.69, ptr @mmap_mmap_madvise, i32 128, [4 x i8] zeroinitializer, ptr @mmap_mmap_madvise__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.70, ptr @mmap_mmap_move, i32 128, [4 x i8] zeroinitializer, ptr @mmap_mmap_move__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.71, ptr @mmap_mmap_read, i32 128, [4 x i8] zeroinitializer, ptr @mmap_mmap_read__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.72, ptr @mmap_mmap_read_byte, i32 4, [4 x i8] zeroinitializer, ptr @mmap_mmap_read_byte__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.73, ptr @mmap_mmap_readline, i32 4, [4 x i8] zeroinitializer, ptr @mmap_mmap_readline__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.74, ptr @mmap_mmap_resize, i32 8, [4 x i8] zeroinitializer, ptr @mmap_mmap_resize__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.75, ptr @mmap_mmap_seek, i32 128, [4 x i8] zeroinitializer, ptr @mmap_mmap_seek__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.76, ptr @mmap_mmap_seekable, i32 4, [4 x i8] zeroinitializer, ptr @mmap_mmap_seekable__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.77, ptr @mmap_mmap_set_name, i32 8, [4 x i8] zeroinitializer, ptr @mmap_mmap_set_name__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.78, ptr @mmap_mmap_size, i32 4, [4 x i8] zeroinitializer, ptr @mmap_mmap_size__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.79, ptr @mmap_mmap_tell, i32 4, [4 x i8] zeroinitializer, ptr @mmap_mmap_tell__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.80, ptr @mmap_mmap_write, i32 8, [4 x i8] zeroinitializer, ptr @mmap_mmap_write__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.81, ptr @mmap_mmap_write_byte, i32 8, [4 x i8] zeroinitializer, ptr @mmap_mmap_write_byte__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.82, ptr @mmap_mmap___enter__, i32 4, [4 x i8] zeroinitializer, ptr @mmap_mmap___enter____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.83, ptr @mmap_mmap___exit__, i32 128, [4 x i8] zeroinitializer, ptr @mmap_mmap___exit____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@PyExc_BufferError = external local_unnamed_addr global ptr, align 8
@.str.85 = private unnamed_addr constant [37 x i8] c"cannot close exported pointers exist\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.86 = private unnamed_addr constant [23 x i8] c"mmap closed or invalid\00", align 1
@mmap_mmap_flush._keywords = internal constant [4 x ptr] [ptr @.str.87, ptr @.str.87, ptr @.str.46, ptr null], align 16
@.str.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mmap_mmap_flush._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @mmap_mmap_flush._keywords, ptr @.str.68, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.88 = private unnamed_addr constant [26 x i8] c"flush values out of range\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"madvise start out of bounds\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"madvise length invalid\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"madvise length too large\00", align 1
@.str.92 = private unnamed_addr constant [43 x i8] c"source, destination, or count out of range\00", align 1
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.93 = private unnamed_addr constant [41 x i8] c"mmap can't modify a readonly memory map.\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"read byte out of range\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"new size out of range\00", align 1
@.str.96 = private unnamed_addr constant [55 x i8] c"mmap: can't expand a shared anonymous mapping on Linux\00", align 1
@.str.97 = private unnamed_addr constant [48 x i8] c"mmap can't resize with extant buffers exported.\00", align 1
@.str.98 = private unnamed_addr constant [38 x i8] c"mmap can't resize with trackfd=False.\00", align 1
@.str.99 = private unnamed_addr constant [58 x i8] c"mmap can't resize a readonly or copy-on-write memory map.\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"unknown seek type\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"seek out of range\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.102 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"embedded null character\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"cpython:mmap:\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"name is too long\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.108 = private unnamed_addr constant [48 x i8] c"Cannot set annotation on non-anonymous mappings\00", align 1
@.str.109 = private unnamed_addr constant [34 x i8] c"can't get size with trackfd=False\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"data out of range\00", align 1
@.str.111 = private unnamed_addr constant [43 x i8] c"unsigned byte integer is less than minimum\00", align 1
@.str.112 = private unnamed_addr constant [46 x i8] c"unsigned byte integer is greater than maximum\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"write byte out of range\00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"__weaklistoffset__\00", align 1
@mmap_object_members = internal global [2 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.114, i32 19, [4 x i8] zeroinitializer, i64 64, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.116 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@PyExc_IndexError = external local_unnamed_addr global ptr, align 8
@.str.117 = private unnamed_addr constant [24 x i8] c"mmap index out of range\00", align 1
@.str.118 = private unnamed_addr constant [42 x i8] c"mmap object doesn't support item deletion\00", align 1
@.str.119 = private unnamed_addr constant [41 x i8] c"mmap assignment must be length-1 bytes()\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@.str.120 = private unnamed_addr constant [30 x i8] c"mmap indices must be integers\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"mmap doesn't support item deletion\00", align 1
@.str.122 = private unnamed_addr constant [31 x i8] c"mmap item value must be an int\00", align 1
@.str.123 = private unnamed_addr constant [41 x i8] c"mmap item value must be in range(0, 256)\00", align 1
@.str.124 = private unnamed_addr constant [43 x i8] c"mmap object doesn't support slice deletion\00", align 1
@.str.125 = private unnamed_addr constant [36 x i8] c"mmap slice assignment is wrong size\00", align 1
@.str.126 = private unnamed_addr constant [29 x i8] c"mmap indices must be integer\00", align 1
@switch.table.mmap__repr__method = private unnamed_addr constant [4 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_memcpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_byte_copy(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !10
  store i8 %i.a, ptr %0, align 1, !tbaa !10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_memchr(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @memchr(ptr noundef %1, i32 noundef %2, i64 noundef %3) #14
  store ptr %i.a, ptr %0, align 8, !tbaa !60
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_memmove(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_copy_from_slice(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i64 %4, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %4, 3
  %ident.check.not = icmp eq i64 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.d = add i64 %2, %i.b
  %i.e = sub i64 %i.a, %i.d
  %diff.check = icmp ugt i64 %i.e, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %4, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %4, 28
  %n.vec = and i64 %4, 9223372036854775776        ; 5 uses
  %i.g = add i64 %2, %n.vec
  %i.h = getelementptr i8, ptr %0, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 %index     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !10
  %wide.load13 = load <16 x i8>, ptr %i.j, align 1, !tbaa !10
  %i.k = getelementptr i8, ptr %i.h, i64 %index   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  store <16 x i8> %wide.load, ptr %i.k, align 1, !tbaa !10
  store <16 x i8> %wide.load13, ptr %i.l, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %4, 9223372036854775804      ; 4 uses
  %i.n = add i64 %2, %n.vec14
  %i.o = getelementptr i8, ptr %0, i64 %2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.p = getelementptr i8, ptr %1, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.p, align 1, !tbaa !10
  %i.q = getelementptr i8, ptr %i.o, i64 %index15
  store <4 x i8> %wide.load16, ptr %i.q, align 1, !tbaa !10
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %4, %n.vec14
  br i1 %cmp.n18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %.0910.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.g, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.011.prol = phi i64 [ %i.w, %.lr.ph.prol ], [ %.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.0910.prol = phi i64 [ %i.v, %.lr.ph.prol ], [ %.0910.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.s = getelementptr i8, ptr %1, i64 %.011.prol
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10
  %i.u = getelementptr i8, ptr %0, i64 %.0910.prol
  store i8 %i.t, ptr %i.u, align 1, !tbaa !10
  %i.v = add i64 %.0910.prol, %3                  ; 2 uses
  %i.w = add nuw nsw i64 %.011.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !63

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.011.unr = phi i64 [ %.011.ph, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.0910.unr = phi i64 [ %.0910.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.x = sub nsw i64 %.011.ph, %4
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i64 [ %i.as, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0910 = phi i64 [ %i.ar, %.lr.ph ], [ %.0910.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %.011
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = getelementptr i8, ptr %0, i64 %.0910
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !10
  %i.ac = add i64 %.0910, %3                      ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 %.011
  %i.ae = getelementptr i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10
  %i.ag = getelementptr i8, ptr %0, i64 %i.ac
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !10
  %i.ah = add i64 %i.ac, %3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 %.011
  %i.aj = getelementptr i8, ptr %i.ai, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.al = getelementptr i8, ptr %0, i64 %i.ah
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !10
  %i.am = add i64 %i.ah, %3                       ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 %.011
  %i.ao = getelementptr i8, ptr %i.an, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.aq = getelementptr i8, ptr %0, i64 %i.am
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !10
  %i.ar = add i64 %i.am, %3
  %i.as = add nuw nsw i64 %.011, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.as, %4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_copy_to_slice(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i64 %4, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %4, 3
  %ident.check.not = icmp eq i64 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.d = add i64 %2, %i.a
  %i.e = sub i64 %i.d, %i.b
  %diff.check = icmp ugt i64 %i.e, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %4, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %4, 28
  %n.vec = and i64 %4, 9223372036854775776        ; 5 uses
  %i.g = add i64 %2, %n.vec
  %i.h = getelementptr i8, ptr %1, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 %index   ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !10
  %wide.load13 = load <16 x i8>, ptr %i.j, align 1, !tbaa !10
  %i.k = getelementptr i8, ptr %0, i64 %index     ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  store <16 x i8> %wide.load, ptr %i.k, align 1, !tbaa !10
  store <16 x i8> %wide.load13, ptr %i.l, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %4, 9223372036854775804      ; 4 uses
  %i.n = add i64 %2, %n.vec14
  %i.o = getelementptr i8, ptr %1, i64 %2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.p, align 1, !tbaa !10
  %i.q = getelementptr i8, ptr %0, i64 %index15
  store <4 x i8> %wide.load16, ptr %i.q, align 1, !tbaa !10
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %4, %n.vec14
  br i1 %cmp.n18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %.0910.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.g, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.011.prol = phi i64 [ %i.w, %.lr.ph.prol ], [ %.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.0910.prol = phi i64 [ %i.v, %.lr.ph.prol ], [ %.0910.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.s = getelementptr i8, ptr %1, i64 %.0910.prol
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10
  %i.u = getelementptr i8, ptr %0, i64 %.011.prol
  store i8 %i.t, ptr %i.u, align 1, !tbaa !10
  %i.v = add i64 %.0910.prol, %3                  ; 2 uses
  %i.w = add nuw nsw i64 %.011.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !67

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.011.unr = phi i64 [ %.011.ph, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.0910.unr = phi i64 [ %.0910.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.x = sub nsw i64 %.011.ph, %4
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i64 [ %i.as, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0910 = phi i64 [ %i.ar, %.lr.ph ], [ %.0910.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %.0910
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = getelementptr i8, ptr %0, i64 %.011
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !10
  %i.ac = add i64 %.0910, %3                      ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = getelementptr i8, ptr %0, i64 %.011
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !10
  %i.ah = add i64 %i.ac, %3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !10
  %i.ak = getelementptr i8, ptr %0, i64 %.011
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !10
  %i.am = add i64 %i.ah, %3                       ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !10
  %i.ap = getelementptr i8, ptr %0, i64 %.011
  %i.aq = getelementptr i8, ptr %i.ap, i64 3
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !10
  %i.ar = add i64 %i.am, %3
  %i.as = add nuw nsw i64 %.011, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.as, %4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_safe_PyBytes_Find(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @_PyBytes_Find(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) #15
  store i64 %i.a, ptr %0, align 8, !tbaa !19
  ret i32 0
}

declare i64 @_PyBytes_Find(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_safe_PyBytes_ReverseFind(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @_PyBytes_ReverseFind(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) #15
  store i64 %i.a, ptr %0, align 8, !tbaa !19
  ret i32 0
}

declare i64 @_PyBytes_ReverseFind(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden ptr @_safe_PyBytes_FromStringAndSize(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = load i8, ptr %0, align 1, !tbaa !10
  store i8 %i.c, ptr %i.a, align 1, !tbaa !10
  %i.d = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.a, i64 noundef 1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyBytesWriter_Create(i64 noundef %1) #15 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.e) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.h = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.e) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.2 = phi ptr [ %i.d, %bb.b ], [ %i.h, %bb.d ], [ null, %bb.c ]
  ret ptr %.2
}

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #5

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #5

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @PyInit_mmap() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @mmapmodule) #15
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @mmap_exec(ptr noundef %0) #4 {
bb.a:
  %i.a = load ptr, ptr @PyExc_OSError, align 8, !tbaa !21
  %i.b = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %i.a) #15
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyType_FromModuleAndSpec(ptr noundef %0, ptr noundef nonnull @mmap_object_spec, ptr noundef null) #15 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.ar, label %bb.c

end_hunk_0
