inline.NumInlined: 70
inline.NumDeleted: 36
begin_hunk_0
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
define hidden noundef i32 @safe_memcpy(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_byte_copy(ptr noundef writeonly captures(none) initializes((0, 1)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !10
  store i8 %i.a, ptr %0, align 1, !tbaa !10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_memchr(ptr noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @memchr(ptr noundef %1, i32 noundef %2, i64 noundef %3) #14
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_memmove(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_copy_from_slice(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i64 %4, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %4, 7
  %ident.check.not = icmp eq i64 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.d = add i64 %2, %i.b
  %i.e = sub i64 %i.d, %i.a
  %diff.check = icmp ult i64 %i.e, 32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %4, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %4, 24
  %n.vec = and i64 %4, 9223372036854775776        ; 5 uses
  %i.f = add i64 %2, %n.vec
  %i.g = getelementptr i8, ptr %0, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 %index     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !10
  %wide.load13 = load <16 x i8>, ptr %i.i, align 1, !tbaa !10
  %i.j = getelementptr i8, ptr %i.g, i64 %index   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  store <16 x i8> %wide.load, ptr %i.j, align 1, !tbaa !10
  store <16 x i8> %wide.load13, ptr %i.k, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %4, 9223372036854775800      ; 4 uses
  %i.m = add i64 %2, %n.vec15
  %i.n = getelementptr i8, ptr %0, i64 %2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.o, align 1, !tbaa !10
  %i.p = getelementptr i8, ptr %i.n, i64 %index16
  store <8 x i8> %wide.load17, ptr %i.p, align 1, !tbaa !10
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %4, %n.vec15
  br i1 %cmp.n19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %.0910.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.f, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.011.prol = phi i64 [ %i.v, %.lr.ph.prol ], [ %.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.0910.prol = phi i64 [ %i.u, %.lr.ph.prol ], [ %.0910.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.r = getelementptr i8, ptr %1, i64 %.011.prol
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = getelementptr i8, ptr %0, i64 %.0910.prol
  store i8 %i.s, ptr %i.t, align 1, !tbaa !10
  %i.u = add i64 %.0910.prol, %3                  ; 2 uses
  %i.v = add nuw nsw i64 %.011.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !20

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.011.unr = phi i64 [ %.011.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.0910.unr = phi i64 [ %.0910.ph, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %i.w = sub nsw i64 %.011.ph, %4
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i64 [ %i.ar, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0910 = phi i64 [ %i.aq, %.lr.ph ], [ %.0910.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %.011
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = getelementptr i8, ptr %0, i64 %.0910
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !10
  %i.ab = add i64 %.0910, %3                      ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 %.011
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = getelementptr i8, ptr %0, i64 %i.ab
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !10
  %i.ag = add i64 %i.ab, %3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %1, i64 %.011
  %i.ai = getelementptr i8, ptr %i.ah, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !10
  %i.ak = getelementptr i8, ptr %0, i64 %i.ag
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !10
  %i.al = add i64 %i.ag, %3                       ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 %.011
  %i.an = getelementptr i8, ptr %i.am, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !10
  %i.ap = getelementptr i8, ptr %0, i64 %i.al
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !10
  %i.aq = add i64 %i.al, %3
  %i.ar = add nuw nsw i64 %.011, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ar, %4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @safe_copy_to_slice(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i64 %4, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %4, 7
  %ident.check.not = icmp eq i64 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.d = add i64 %2, %i.a
  %i.e = sub i64 %i.b, %i.d
  %diff.check = icmp ult i64 %i.e, 32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %4, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %4, 24
  %n.vec = and i64 %4, 9223372036854775776        ; 5 uses
  %i.f = add i64 %2, %n.vec
  %i.g = getelementptr i8, ptr %1, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 %index   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !10
  %wide.load13 = load <16 x i8>, ptr %i.i, align 1, !tbaa !10
  %i.j = getelementptr i8, ptr %0, i64 %index     ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  store <16 x i8> %wide.load, ptr %i.j, align 1, !tbaa !10
  store <16 x i8> %wide.load13, ptr %i.k, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %4, 9223372036854775800      ; 4 uses
  %i.m = add i64 %2, %n.vec15
  %i.n = getelementptr i8, ptr %1, i64 %2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.o, align 1, !tbaa !10
  %i.p = getelementptr i8, ptr %0, i64 %index16
  store <8 x i8> %wide.load17, ptr %i.p, align 1, !tbaa !10
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %4, %n.vec15
  br i1 %cmp.n19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %.0910.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.f, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.011.prol = phi i64 [ %i.v, %.lr.ph.prol ], [ %.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.0910.prol = phi i64 [ %i.u, %.lr.ph.prol ], [ %.0910.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.r = getelementptr i8, ptr %1, i64 %.0910.prol
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = getelementptr i8, ptr %0, i64 %.011.prol
  store i8 %i.s, ptr %i.t, align 1, !tbaa !10
  %i.u = add i64 %.0910.prol, %3                  ; 2 uses
  %i.v = add nuw nsw i64 %.011.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !25

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.011.unr = phi i64 [ %.011.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.0910.unr = phi i64 [ %.0910.ph, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %i.w = sub nsw i64 %.011.ph, %4
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i64 [ %i.ar, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0910 = phi i64 [ %i.aq, %.lr.ph ], [ %.0910.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %.0910
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = getelementptr i8, ptr %0, i64 %.011
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !10
  %i.ab = add i64 %.0910, %3                      ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10
  %i.ae = getelementptr i8, ptr %0, i64 %.011
  %i.af = getelementptr i8, ptr %i.ae, i64 1
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !10
  %i.ag = add i64 %i.ab, %3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.aj = getelementptr i8, ptr %0, i64 %.011
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !10
  %i.al = add i64 %i.ag, %3                       ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10
  %i.ao = getelementptr i8, ptr %0, i64 %.011
  %i.ap = getelementptr i8, ptr %i.ao, i64 3
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !10
  %i.aq = add i64 %i.al, %3
  %i.ar = add nuw nsw i64 %.011, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ar, %4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_safe_PyBytes_Find(ptr noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @_PyBytes_Find(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) #15
  store i64 %i.a, ptr %0, align 8, !tbaa !27
  ret i32 0
}

declare i64 @_PyBytes_Find(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_safe_PyBytes_ReverseFind(ptr noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @_PyBytes_ReverseFind(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) #15
  store i64 %i.a, ptr %0, align 8, !tbaa !27
  ret i32 0
}

declare i64 @_PyBytes_ReverseFind(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden ptr @_safe_PyBytes_FromStringAndSize(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
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
  %i.a = load ptr, ptr @PyExc_OSError, align 8, !tbaa !29
  %i.b = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %i.a) #15
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyType_FromModuleAndSpec(ptr noundef %0, ptr noundef nonnull @mmap_object_spec, ptr noundef null) #15 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @PyModule_AddType(ptr noundef %0, ptr noundef nonnull %i.d) #15
  %i.g = load i32, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !10
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  %i.j = icmp slt i32 %i.f, 0
  br i1 %i.j, label %bb.ar, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit
  %i.k = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef 4) #15
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.ar, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 1) #15
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.ar, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.5, i64 noundef 2) #15
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.ar, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef 1) #15
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.ar, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef 2) #15
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.ar, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef 2048) #15
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.ar, label %bb.l

end_hunk_0
begin_hunk_1_@mmap_ass_item:bb.a
bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %.not.i = icmp slt i64 %1, %i.g
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.117) #15
  br label %mmap_ass_item_lock_held.exit

bb.f:                                             ; preds = %bb.d
  %i.i = icmp eq ptr %2, null
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.118) #15
  br label %mmap_ass_item_lock_held.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %2, i64 8
  %.val17.i = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr i8, ptr %.val17.i, i64 168
  %.val18.i = load i64, ptr %i.l, align 8, !tbaa !59
  %i.m = and i64 %.val18.i, 134217728
  %.not15.i = icmp eq i64 %i.m, 0
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i64 @PyBytes_Size(ptr noundef nonnull %2) #15
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.119) #15
  br label %mmap_ass_item_lock_held.exit

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr i8, ptr %0, i64 72
  %.val.i = load i32, ptr %i.q, align 8, !tbaa !55
  %.not.i.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i.i, label %is_writable.exit.thread.i, label %is_writable.exit.i

is_writable.exit.thread.i:                        ; preds = %bb.k
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.s = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.r, ptr noundef nonnull @.str.93) #15 ; 0 uses
  br label %mmap_ass_item_lock_held.exit

is_writable.exit.i:                               ; preds = %bb.k
  %i.t = tail call ptr @PyBytes_AsString(ptr noundef nonnull %2) #15
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.v = getelementptr i8, ptr %i.u, i64 %1
  %i.w = load i8, ptr %i.t, align 1, !tbaa !10
  store i8 %i.w, ptr %i.v, align 1, !tbaa !10
  br label %mmap_ass_item_lock_held.exit

mmap_ass_item_lock_held.exit:                     ; preds = %bb.b, %bb.e, %bb.g, %bb.j, %is_writable.exit.thread.i, %is_writable.exit.i
  %.0.i = phi i32 [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.j ], [ 0, %is_writable.exit.i ], [ -1, %is_writable.exit.thread.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @mmap_subscript(ptr noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.86) #15
  br label %mmap_subscript_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @PyIndex_Check(ptr noundef %1) #15
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !29
  %i.j = tail call i64 @PyNumber_AsSsize_t(ptr noundef %1, ptr noundef %i.i) #15 ; 4 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @PyErr_Occurred() #15
  %.not38.i = icmp eq ptr %i.l, null
  br i1 %.not38.i, label %.thread.i, label %mmap_subscript_lock_held.exit

bb.f:                                             ; preds = %bb.d
  %i.m = icmp slt i64 %i.j, 0
  br i1 %i.m, label %.thread.i, label %..thread40_crit_edge.i

..thread40_crit_edge.i:                           ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  br label %.thread40.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.p = add i64 %i.o, %i.j                       ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %.thread40.i

.thread40.i:                                      ; preds = %.thread.i, %..thread40_crit_edge.i
  %i.r = phi i64 [ %i.o, %.thread.i ], [ %.pre.i, %..thread40_crit_edge.i ]
  %.03142.i = phi i64 [ %i.p, %.thread.i ], [ %i.j, %..thread40_crit_edge.i ] ; 2 uses
  %.not39.i = icmp slt i64 %.03142.i, %i.r
  br i1 %.not39.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread40.i, %.thread.i
  %i.s = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.117) #15
  br label %mmap_subscript_lock_held.exit

bb.h:                                             ; preds = %.thread40.i
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.86) #15
  br label %mmap_subscript_lock_held.exit

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.t, i64 %.03142.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10
  %i.y = zext i8 %i.x to i64
  %i.z = tail call ptr @PyLong_FromLong(i64 noundef %i.y) #15
  br label %mmap_subscript_lock_held.exit

bb.k:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.aa, align 8, !tbaa !56
  %.not43.i = icmp eq ptr %.val.i, @PySlice_Type
  br i1 %.not43.i, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ab = call i32 @PySlice_Unpack(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !47
  %i.af = load i64, ptr %i.c, align 8, !tbaa !27
  %i.ag = call i64 @PySlice_AdjustIndices(i64 noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.af) #15 ; 14 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.86) #15
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.ak = icmp slt i64 %i.ag, 1
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = call ptr @Py_GetConstant(i32 noundef 8) #15
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.am = load i64, ptr %i.c, align 8, !tbaa !27
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !27
  %i.ap = getelementptr i8, ptr %i.ah, i64 %i.ao
  %i.aq = call ptr @_safe_PyBytes_FromStringAndSize(ptr noundef %i.ap, i64 noundef %i.ag)
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ar = call ptr @PyMem_Malloc(i64 noundef %i.ag) #15 ; 11 uses
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = icmp eq ptr %i.ar, null
  br i1 %i.at, label %bb.t, label %iter.check

bb.t:                                             ; preds = %bb.s
  %i.au = call ptr @PyErr_NoMemory() #15
  br label %bb.u

iter.check:                                       ; preds = %bb.s
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !44  ; 8 uses
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !27  ; 7 uses
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !27  ; 6 uses
  %min.iters.check = icmp ugt i64 %i.ag, 7
  %ident.check.not = icmp eq i64 %i.ax, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.i.i.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = ptrtoaddr ptr %i.av to i64
  %i.az = add i64 %i.aw, %i.ay
  %i.ba = sub i64 %i.as, %i.az
  %diff.check = icmp ult i64 %i.ba, 32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %i.ag, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ag, 24
  %n.vec = and i64 %i.ag, 9223372036854775776     ; 5 uses
  %i.bb = add i64 %i.aw, %n.vec
  %i.bc = getelementptr i8, ptr %i.av, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 %index ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !10
  %wide.load9 = load <16 x i8>, ptr %i.be, align 1, !tbaa !10
  %i.bf = getelementptr i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store <16 x i8> %wide.load, ptr %i.bf, align 1, !tbaa !10
  store <16 x i8> %wide.load9, ptr %i.bg, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %safe_copy_to_slice.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.ag, 9223372036854775800   ; 4 uses
  %i.bi = add i64 %i.aw, %n.vec11
  %i.bj = getelementptr i8, ptr %i.av, i64 %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 %index12
  %wide.load13 = load <8 x i8>, ptr %i.bk, align 1, !tbaa !10
  %i.bl = getelementptr i8, ptr %i.ar, i64 %index12
  store <8 x i8> %wide.load13, ptr %i.bl, align 1, !tbaa !10
  %index.next14 = add nuw i64 %index12, 8         ; 2 uses
  %i.bm = icmp eq i64 %index.next14, %n.vec11
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %i.ag, %n.vec11
  br i1 %cmp.n15, label %safe_copy_to_slice.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %.0910.i.i.ph = phi i64 [ %i.aw, %iter.check ], [ %i.aw, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.011.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i.prol ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.0910.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.prol ], [ %.0910.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bn = getelementptr i8, ptr %i.av, i64 %.0910.i.i.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.bp = getelementptr i8, ptr %i.ar, i64 %.011.i.i.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !10
  %i.bq = add i64 %.0910.i.i.prol, %i.ax          ; 2 uses
  %i.br = add nuw nsw i64 %.011.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !62

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.011.i.i.unr = phi i64 [ %.011.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.br, %.lr.ph.i.i.prol ]
  %.0910.i.i.unr = phi i64 [ %.0910.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.prol ]
  %i.bs = sub nsw i64 %.011.i.i.ph, %i.ag
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %safe_copy_to_slice.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %.011.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i = phi i64 [ %i.cm, %.lr.ph.i.i ], [ %.0910.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.bu = getelementptr i8, ptr %i.av, i64 %.0910.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !10
  %i.bw = getelementptr i8, ptr %i.ar, i64 %.011.i.i
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !10
  %i.bx = add i64 %.0910.i.i, %i.ax               ; 2 uses
  %i.by = getelementptr i8, ptr %i.av, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10
  %i.ca = getelementptr i8, ptr %i.ar, i64 %.011.i.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 1
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !10
  %i.cc = add i64 %i.bx, %i.ax                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.av, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !10
  %i.cf = getelementptr i8, ptr %i.ar, i64 %.011.i.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 2
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !10
  %i.ch = add i64 %i.cc, %i.ax                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.av, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !10
  %i.ck = getelementptr i8, ptr %i.ar, i64 %.011.i.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 3
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !10
  %i.cm = add i64 %i.ch, %i.ax
  %i.cn = add nuw nsw i64 %.011.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cn, %i.ag
  br i1 %exitcond.not.i.i.3, label %safe_copy_to_slice.exit.i, label %.lr.ph.i.i, !llvm.loop !63

safe_copy_to_slice.exit.i:                        ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %i.co = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.ar, i64 noundef %i.ag) #15
  call void @PyMem_Free(ptr noundef nonnull %i.ar) #15
  br label %bb.u

bb.u:                                             ; preds = %safe_copy_to_slice.exit.i, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l
  %.3.i = phi ptr [ null, %bb.l ], [ null, %bb.n ], [ %i.al, %bb.p ], [ %i.aq, %bb.r ], [ %i.au, %bb.t ], [ %i.co, %safe_copy_to_slice.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %mmap_subscript_lock_held.exit

bb.v:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.cp, ptr noundef nonnull @.str.120) #15
  br label %mmap_subscript_lock_held.exit

mmap_subscript_lock_held.exit:                    ; preds = %bb.b, %bb.e, %bb.g, %bb.i, %bb.j, %bb.u, %bb.v
  %.4.i = phi ptr [ null, %bb.b ], [ null, %bb.v ], [ %.3.i, %bb.u ], [ %i.z, %bb.j ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.e ]
  ret ptr %.4.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @mmap_ass_subscript(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.Py_buffer, align 8          ; 9 uses
  %i.d = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.86) #15
  br label %mmap_ass_subscript_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 72
  %.val.i = load i32, ptr %i.h, align 8, !tbaa !55
  %.not.i.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i.i, label %is_writable.exit.thread.i, label %is_writable.exit.i

is_writable.exit.thread.i:                        ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.93) #15 ; 0 uses
  br label %mmap_ass_subscript_lock_held.exit

is_writable.exit.i:                               ; preds = %bb.c
  %i.k = tail call i32 @PyIndex_Check(ptr noundef %1) #15
  %.not46.i = icmp eq i32 %i.k, 0
  br i1 %.not46.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %is_writable.exit.i
  %i.l = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !29
  %i.m = tail call i64 @PyNumber_AsSsize_t(ptr noundef %1, ptr noundef %i.l) #15 ; 4 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @PyErr_Occurred() #15
  %.not49.i = icmp eq ptr %i.o, null
  br i1 %.not49.i, label %.thread.i, label %mmap_ass_subscript_lock_held.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp slt i64 %i.m, 0
  br i1 %i.p, label %.thread.i, label %..thread56_crit_edge.i

..thread56_crit_edge.i:                           ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  br label %.thread56.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.q = getelementptr i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %i.s = add i64 %i.r, %i.m                       ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %.thread56.i

.thread56.i:                                      ; preds = %.thread.i, %..thread56_crit_edge.i
  %i.u = phi i64 [ %i.r, %.thread.i ], [ %.pre.i, %..thread56_crit_edge.i ]
  %.03758.i = phi i64 [ %i.s, %.thread.i ], [ %i.m, %..thread56_crit_edge.i ] ; 2 uses
  %.not50.i = icmp slt i64 %.03758.i, %i.u
  br i1 %.not50.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread56.i, %.thread.i
  %i.v = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.117) #15
  br label %mmap_ass_subscript_lock_held.exit

bb.h:                                             ; preds = %.thread56.i
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.121) #15
  br label %mmap_ass_subscript_lock_held.exit

bb.j:                                             ; preds = %bb.h
  %i.y = tail call i32 @PyIndex_Check(ptr noundef nonnull %2) #15
  %.not51.i = icmp eq i32 %i.y, 0
  %i.z = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29 ; 2 uses
  br i1 %.not51.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.122) #15
  br label %mmap_ass_subscript_lock_held.exit

bb.l:                                             ; preds = %bb.j
  %i.aa = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %2, ptr noundef %i.z) #15 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = tail call ptr @PyErr_Occurred() #15
  %.not52.i = icmp eq ptr %i.ac, null
  br i1 %.not52.i, label %.thread59.i, label %mmap_ass_subscript_lock_held.exit

bb.n:                                             ; preds = %bb.l
  %or.cond.i = icmp ugt i64 %i.aa, 255
  br i1 %or.cond.i, label %.thread59.i, label %bb.o

.thread59.i:                                      ; preds = %bb.n, %bb.m
  %i.ad = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ad, ptr noundef nonnull @.str.123) #15
  br label %mmap_ass_subscript_lock_held.exit

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.p, label %bb.q
end_hunk_1
begin_hunk_2_@mmap_gfind_lock_held:bb.a
  %.pre = load i64, ptr %i.a, align 8, !tbaa !47  ; 4 uses
  br i1 %i.w, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.x = add i64 %.pre, %.045                     ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.m, %bb.n
  %.14672 = phi i64 [ %i.x, %bb.n ], [ %.045, %bb.m ]
  %spec.select = tail call i64 @llvm.smin.i64(i64 %.14672, i64 %.pre)
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %.247 = phi i64 [ %spec.select, %.thread ], [ 0, %bb.n ] ; 5 uses
  %i.z = icmp slt i64 %.044, 0
  br i1 %i.z, label %bb.p, label %.thread73

bb.p:                                             ; preds = %bb.o
  %i.aa = add i64 %.pre, %.044                    ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.q, label %.thread73

.thread73:                                        ; preds = %bb.o, %bb.p
  %.175 = phi i64 [ %i.aa, %bb.p ], [ %.044, %bb.o ]
  %spec.select61 = tail call i64 @llvm.smin.i64(i64 %.175, i64 %.pre)
  br label %bb.q

bb.q:                                             ; preds = %.thread73, %bb.p
  %.2 = phi i64 [ %spec.select61, %.thread73 ], [ 0, %bb.p ] ; 2 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ae, ptr noundef nonnull @.str.86) #15
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.af = icmp slt i64 %.2, %.247
  br i1 %i.af, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ag = tail call ptr @PyLong_FromSsize_t(i64 noundef -1) #15
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %.not60 = icmp eq i32 %4, 0
  %i.ah = getelementptr i8, ptr %i.ac, i64 %.247  ; 2 uses
  %i.ai = sub i64 %.2, %.247                      ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.ak = getelementptr i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !64 ; 2 uses
  br i1 %.not60, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = tail call i64 @_PyBytes_ReverseFind(ptr noundef %i.ah, i64 noundef %i.ai, ptr noundef %i.aj, i64 noundef %i.al, i64 noundef %.247) #15
  %i.an = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.am) #15
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ao = tail call i64 @_PyBytes_Find(ptr noundef %i.ah, i64 noundef %i.ai, ptr noundef %i.aj, i64 noundef %i.al, i64 noundef %.247) #15
  %i.ap = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.ao) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.r, %bb.v, %bb.w, %bb.t, %_As_Py_ssize_t.exit65.thread, %_As_Py_ssize_t.exit.thread, %bb.b
  %.149 = phi ptr [ null, %bb.b ], [ null, %_As_Py_ssize_t.exit65.thread ], [ null, %_As_Py_ssize_t.exit.thread ], [ null, %bb.r ], [ %i.ag, %bb.t ], [ %i.ap, %bb.w ], [ %i.an, %bb.v ]
  ret ptr %.149
}

declare ptr @PyErr_Occurred() local_unnamed_addr #5

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #5

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #5

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #5

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #5

declare i32 @msync(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @_Py_convert_optional_to_ssize_t(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #5

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @mremap(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #6

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare i32 @_Py_fstat(i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #5

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal ptr @mmap_closed_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq ptr %i.b, null
  %i.d = zext i1 %i.c to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #15
  ret ptr %i.e
}

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #5

declare i64 @PyBytes_Size(ptr noundef) local_unnamed_addr #5

declare ptr @PyBytes_AsString(ptr noundef) local_unnamed_addr #5

declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #5

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @PySlice_Unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @PySlice_AdjustIndices(i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #5

declare ptr @PyErr_NoMemory() local_unnamed_addr #5

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #5

declare i32 @PyBuffer_FillInfo(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 8, i32 24}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !15, !16}
!23 = distinct !{!23, !15, !16, !17}
!24 = distinct !{!24, !15, !16, !17}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !15, !16}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS7_object", !13, i64 0}
!31 = !{!32, !7, i64 24}
!32 = !{!"stat", !28, i64 0, !28, i64 8, !28, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !33, i64 72, !33, i64 88, !33, i64 104, !8, i64 120}
!33 = !{!"timespec", !28, i64 0, !28, i64 8}
!34 = !{!32, !28, i64 48}
!35 = !{!36, !13, i64 304}
!36 = !{!"_typeobject", !37, i64 0, !12, i64 24, !28, i64 32, !28, i64 40, !13, i64 48, !28, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !28, i64 168, !12, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !28, i64 208, !13, i64 216, !13, i64 224, !40, i64 232, !41, i64 240, !42, i64 248, !39, i64 256, !30, i64 264, !13, i64 272, !13, i64 280, !28, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !30, i64 336, !30, i64 344, !30, i64 352, !13, i64 360, !30, i64 368, !13, i64 376, !7, i64 384, !13, i64 392, !13, i64 400, !8, i64 408, !43, i64 410}
!37 = !{!"PyVarObject", !38, i64 0, !28, i64 16}
!38 = !{!"_object", !8, i64 0, !39, i64 8}
!39 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!40 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!41 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!42 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!43 = !{!"short", !8, i64 0}
!44 = !{!45, !12, i64 16}
!45 = !{!"", !38, i64 0, !12, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !7, i64 56, !7, i64 60, !30, i64 64, !7, i64 72, !46, i64 76}
!46 = !{!"_Bool", !8, i64 0}
!47 = !{!45, !28, i64 24}
!48 = !{!45, !28, i64 32}
!49 = !{!45, !30, i64 64}
!50 = !{!45, !28, i64 48}
!51 = !{!45, !28, i64 40}
!52 = !{!45, !46, i64 76}
!53 = !{!45, !7, i64 56}
!54 = !{!45, !7, i64 60}
!55 = !{!45, !7, i64 72}
!56 = !{!38, !39, i64 8}
!57 = !{!36, !13, i64 320}
!58 = !{!36, !12, i64 24}
!59 = !{!36, !28, i64 168}
!60 = distinct !{!60, !15, !16, !17}
!61 = distinct !{!61, !15, !16, !17}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !15, !16}
!64 = !{!65, !28, i64 16}
!65 = !{!"", !13, i64 0, !30, i64 8, !28, i64 16, !28, i64 24, !7, i64 32, !7, i64 36, !12, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !13, i64 72}
!66 = !{!"p1 long", !13, i64 0}
!67 = !{!65, !13, i64 0}
!68 = distinct !{!68, !15, !16}
!69 = distinct !{!69, !21}
!70 = !{!71, !7, i64 12}
!71 = !{!"PyConfig", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !28, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !72, i64 64, !7, i64 72, !7, i64 76, !72, i64 80, !72, i64 88, !72, i64 96, !7, i64 104, !73, i64 112, !73, i64 128, !73, i64 144, !73, i64 160, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !72, i64 232, !72, i64 240, !72, i64 248, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !72, i64 288, !72, i64 296, !72, i64 304, !72, i64 312, !7, i64 320, !73, i64 328, !72, i64 344, !72, i64 352, !72, i64 360, !72, i64 368, !72, i64 376, !72, i64 384, !72, i64 392, !7, i64 400, !72, i64 408, !72, i64 416, !72, i64 424, !72, i64 432, !7, i64 440, !7, i64 444, !7, i64 448}
!72 = !{!"p1 int", !13, i64 0}
!73 = !{!"", !28, i64 0, !74, i64 8}
!74 = !{!"p2 int", !75, i64 0}
!75 = !{!"any p2 pointer", !13, i64 0}
!76 = !{!65, !30, i64 8}
!77 = !{!37, !28, i64 16}
!78 = !{i8 0, i8 2}
!79 = !{}
end_hunk_2
