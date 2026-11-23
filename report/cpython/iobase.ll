Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/iobase?download=true
inline.NumInlined: 104
inline.NumDeleted: 43
begin_hunk_0
%struct._PyOptimizationConfig = type { i16, i16, i16, i16, i8, i8 }
%struct._rare_events = type { i8, i8, i8, i8, i8 }
%struct._Py_GlobalMonitors = type { [16 x i8] }
%struct._PyOnceFlag = type { i8 }
%struct._Py_interp_cached_objects = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._Py_interp_static_objects = type { %struct.anon.912 }
%struct.anon.912 = type { i32, %struct.PyGC_Head, %struct.PyHamtObject, %struct.PyBaseExceptionObject }
%struct.PyHamtObject = type { %struct._object, ptr, ptr, i64 }
%struct.PyBaseExceptionObject = type { %struct._object, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct._PyThreadStateImpl = type { %struct._ts, %struct._PyInterpreterFrame, i64, i64, i64, i64, i64, i64, ptr, ptr, i32, %struct.llist_node, ptr, %struct.llist_node }
%struct._ts = type { ptr, ptr, ptr, i64, %struct.anon.913, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64, i64, ptr, i64, i32, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, %struct._err_stackitem, ptr, ptr, i64, ptr, ptr, %struct._PyRemoteDebuggerSupport }
%struct.anon.913 = type { i32 }
%struct._err_stackitem = type { ptr, ptr }
%struct._PyRemoteDebuggerSupport = type { i32, [512 x i8] }
%struct._PyInterpreterFrame = type { %union._PyStackRef, ptr, %union._PyStackRef, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, i8, [1 x %union._PyStackRef] }
%union._PyStackRef = type { i64 }
%struct.PyGetSetDef = type { ptr, ptr, ptr, ptr, ptr }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.PyModuleDef_Base = type { %struct._object, ptr, i64, ptr }

@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"cannot pickle '%.100s' instances\00", align 1, !guid !11
@_PyRuntime = external global %struct.pyruntimestate, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"File or stream is not seekable.\00", align 1, !guid !12
@.str.2 = private unnamed_addr constant [32 x i8] c"File or stream is not readable.\00", align 1, !guid !13
@.str.3 = private unnamed_addr constant [32 x i8] c"File or stream is not writable.\00", align 1, !guid !14
@.str.4 = private unnamed_addr constant [12 x i8] c"_io._IOBase\00", align 1, !guid !15
@_Py_iobase_spec = hidden local_unnamed_addr global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.4, i32 32, i32 0, i32 17664, [4 x i8] zeroinitializer, ptr @iobase_slots }, align 8, !guid !16
@.str.5 = private unnamed_addr constant [15 x i8] c"_io._RawIOBase\00", align 1, !guid !17
@_Py_rawiobase_spec = hidden local_unnamed_addr global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.5, i32 0, i32 0, i32 1280, [4 x i8] zeroinitializer, ptr @rawiobase_slots }, align 8, !guid !18
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"I/O operation on closed file.\00", align 1, !guid !19
@iobase_doc = internal constant [1236 x i8] c"The abstract base class for all I/O classes.\0A\0AThis class provides dummy implementations for many methods that\0Aderived classes can override selectively; the default implementations\0Arepresent a file that cannot be read, written or seeked.\0A\0AEven though IOBase does not declare read, readinto, or write because\0Atheir signatures will vary, implementations and clients should\0Aconsider those methods part of the interface. Also, implementations\0Amay raise UnsupportedOperation when operations they do not support are\0Acalled.\0A\0AThe basic type used for binary data read from or written to a file is\0Abytes. Other bytes-like objects are accepted as method arguments too.\0AIn some cases (such as readinto), a writable object is required. Text\0AI/O classes work with str data.\0A\0ANote that calling any method (except additional calls to close(),\0Awhich are ignored) on a closed stream should raise a ValueError.\0A\0AIOBase (and its subclasses) support the iterator protocol, meaning\0Athat an IOBase object can be iterated over yielding the lines in a\0Astream.\0A\0AIOBase also supports the :keyword:`with` statement. In this example,\0Afp is closed after the suite of the with statement is complete:\0A\0Awith open('spam.txt', 'r') as fp:\0A    fp.write('Spam and eggs!')\0A\00", align 16, !guid !20
@iobase_getset = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.37, ptr @PyObject_GenericGetDict, ptr null, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.38, ptr @iobase_closed_get, ptr null, ptr null, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16, !guid !21
@iobase_slots = internal global [11 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @iobase_dealloc }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @iobase_doc }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @iobase_traverse }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @iobase_clear }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @iobase_iter }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @iobase_iternext }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @iobase_methods }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @iobase_members }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @iobase_getset }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @iobase_finalize }, { i32, [4 x i8], ptr } zeroinitializer], align 16, !guid !22
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"seek\00", align 1, !guid !23
@_io__IOBase_seek__doc__ = internal constant [559 x i8] c"seek($self, offset, whence=os.SEEK_SET, /)\0A--\0A\0AChange the stream position to the given byte offset.\0A\0A  offset\0A    The stream position, relative to 'whence'.\0A  whence\0A    The relative position to seek from.\0A\0AThe offset is interpreted relative to the position indicated by whence.\0AValues for whence are:\0A\0A* os.SEEK_SET or 0 -- start of stream (the default); offset should be zero or positive\0A* os.SEEK_CUR or 1 -- current stream position; offset may be negative\0A* os.SEEK_END or 2 -- end of stream; offset is usually negative\0A\0AReturn the new absolute position.\00", align 16, !guid !24
@.str.9 = private unnamed_addr constant [5 x i8] c"tell\00", align 1, !guid !25
@_io__IOBase_tell__doc__ = internal constant [51 x i8] c"tell($self, /)\0A--\0A\0AReturn current stream position.\00", align 16, !guid !26
@.str.10 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1, !guid !27
@_io__IOBase_truncate__doc__ = internal constant [181 x i8] c"truncate($self, size=None, /)\0A--\0A\0ATruncate file to size bytes.\0A\0AFile pointer is left unchanged. Size defaults to the current IO position\0Aas reported by tell(). Return the new size.\00", align 16, !guid !28
@.str.11 = private unnamed_addr constant [6 x i8] c"flush\00", align 1, !guid !29
@_io__IOBase_flush__doc__ = internal constant [121 x i8] c"flush($self, /)\0A--\0A\0AFlush write buffers, if applicable.\0A\0AThis is not implemented for read-only and non-blocking streams.\00", align 16, !guid !30
@.str.12 = private unnamed_addr constant [6 x i8] c"close\00", align 1, !guid !31
@_io__IOBase_close__doc__ = internal constant [109 x i8] c"close($self, /)\0A--\0A\0AFlush and close the IO object.\0A\0AThis method has no effect if the file is already closed.\00", align 16, !guid !32
@.str.13 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1, !guid !33
@_io__IOBase_seekable__doc__ = internal constant [172 x i8] c"seekable($self, /)\0A--\0A\0AReturn whether object supports random access.\0A\0AIf False, seek(), tell() and truncate() will raise OSError.\0AThis method may need to do a test seek().\00", align 16, !guid !34
@.str.14 = private unnamed_addr constant [9 x i8] c"readable\00", align 1, !guid !35
@_io__IOBase_readable__doc__ = internal constant [107 x i8] c"readable($self, /)\0A--\0A\0AReturn whether object was opened for reading.\0A\0AIf False, read() will raise OSError.\00", align 16, !guid !36
@.str.15 = private unnamed_addr constant [9 x i8] c"writable\00", align 1, !guid !37
@_io__IOBase_writable__doc__ = internal constant [108 x i8] c"writable($self, /)\0A--\0A\0AReturn whether object was opened for writing.\0A\0AIf False, write() will raise OSError.\00", align 16, !guid !38
@.str.16 = private unnamed_addr constant [13 x i8] c"_checkClosed\00", align 1, !guid !39
@.str.17 = private unnamed_addr constant [15 x i8] c"_checkSeekable\00", align 1, !guid !40
@.str.18 = private unnamed_addr constant [15 x i8] c"_checkReadable\00", align 1, !guid !41
@.str.19 = private unnamed_addr constant [15 x i8] c"_checkWritable\00", align 1, !guid !42
@.str.20 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1, !guid !43
@_io__IOBase_fileno__doc__ = internal constant [134 x i8] c"fileno($self, /)\0A--\0A\0AReturn underlying file descriptor if one exists.\0A\0ARaise OSError if the IO object does not use a file descriptor.\00", align 16, !guid !44
@.str.21 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1, !guid !45
@_io__IOBase_isatty__doc__ = internal constant [110 x i8] c"isatty($self, /)\0A--\0A\0AReturn whether this is an 'interactive' stream.\0A\0AReturn False if it can't be determined.\00", align 16, !guid !46
@.str.22 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1, !guid !47
@.str.23 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1, !guid !48
@.str.24 = private unnamed_addr constant [9 x i8] c"readline\00", align 1, !guid !49
@_io__IOBase_readline__doc__ = internal constant [286 x i8] c"readline($self, size=-1, /)\0A--\0A\0ARead and return a line from the stream.\0A\0AIf size is specified, at most size bytes will be read.\0A\0AThe line terminator is always b'\\n' for binary files; for text\0Afiles, the newlines argument to open can be used to select the line\0Aterminator(s) recognized.\00", align 16, !guid !50
@.str.25 = private unnamed_addr constant [10 x i8] c"readlines\00", align 1, !guid !51
@_io__IOBase_readlines__doc__ = internal constant [234 x i8] c"readlines($self, hint=-1, /)\0A--\0A\0AReturn a list of lines from the stream.\0A\0Ahint can be specified to control the number of lines read: no more\0Alines will be read if the total size (in bytes/characters) of all\0Alines so far exceeds hint.\00", align 16, !guid !52
@.str.26 = private unnamed_addr constant [11 x i8] c"writelines\00", align 1, !guid !53
@_io__IOBase_writelines__doc__ = internal constant [180 x i8] c"writelines($self, lines, /)\0A--\0A\0AWrite a list of lines to stream.\0A\0ALine separators are not added, so it is usual for each of the\0Alines provided to have a line separator at the end.\00", align 16, !guid !54
@iobase_methods = internal global [20 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.8, ptr @_io__IOBase_seek, i32 642, [4 x i8] zeroinitializer, ptr @_io__IOBase_seek__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.9, ptr @_io__IOBase_tell, i32 4, [4 x i8] zeroinitializer, ptr @_io__IOBase_tell__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.10, ptr @_io__IOBase_truncate, i32 642, [4 x i8] zeroinitializer, ptr @_io__IOBase_truncate__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.11, ptr @_io__IOBase_flush, i32 4, [4 x i8] zeroinitializer, ptr @_io__IOBase_flush__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.12, ptr @_io__IOBase_close, i32 4, [4 x i8] zeroinitializer, ptr @_io__IOBase_close__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.13, ptr @_io__IOBase_seekable, i32 4, [4 x i8] zeroinitializer, ptr @_io__IOBase_seekable__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.14, ptr @_io__IOBase_readable, i32 4, [4 x i8] zeroinitializer, ptr @_io__IOBase_readable__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.15, ptr @_io__IOBase_writable, i32 4, [4 x i8] zeroinitializer, ptr @_io__IOBase_writable__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.16, ptr @_PyIOBase_check_closed, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.17, ptr @iobase_check_seekable, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.18, ptr @iobase_check_readable, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.19, ptr @iobase_check_writable, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.20, ptr @_io__IOBase_fileno, i32 642, [4 x i8] zeroinitializer, ptr @_io__IOBase_fileno__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.21, ptr @_io__IOBase_isatty, i32 4, [4 x i8] zeroinitializer, ptr @_io__IOBase_isatty__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.22, ptr @iobase_enter, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.23, ptr @iobase_exit, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.24, ptr @_io__IOBase_readline, i32 128, [4 x i8] zeroinitializer, ptr @_io__IOBase_readline__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.25, ptr @_io__IOBase_readlines, i32 128, [4 x i8] zeroinitializer, ptr @_io__IOBase_readlines__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.26, ptr @_io__IOBase_writelines, i32 8, [4 x i8] zeroinitializer, ptr @_io__IOBase_writelines__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16, !guid !55
@_io__IOBase_seek._keywords = internal constant [3 x ptr] [ptr @.str.28, ptr @.str.28, ptr null], align 16, !guid !56
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !57
@_io__IOBase_seek._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_io__IOBase_seek._keywords, ptr @.str.8, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @_PyRuntime, i64 119440), ptr null }, align 8, !guid !58
@.str.29 = private unnamed_addr constant [3 x i8] c"ii\00", align 1, !guid !59
@_io__IOBase_truncate._keywords = internal constant [2 x ptr] [ptr @.str.28, ptr null], align 16, !guid !60
@_io__IOBase_truncate._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_io__IOBase_truncate._keywords, ptr @.str.10, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @_PyRuntime, i64 119440), ptr null }, align 8, !guid !61
@_Py_FalseStruct = external global %struct._longobject, align 8
@_PyIO_Module = external global %struct.PyModuleDef, align 8
@.str.30 = private unnamed_addr constant [28 x i8] c"fileno() takes no arguments\00", align 1, !guid !62
@PyExc_OSError = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [57 x i8] c"peek() should have returned a bytes object, not '%.200s'\00", align 1, !guid !63
@.str.32 = private unnamed_addr constant [2 x i8] c"n\00", align 1, !guid !64
@.str.33 = private unnamed_addr constant [57 x i8] c"read() should have returned a bytes object, not '%.200s'\00", align 1, !guid !65
@.str.34 = private unnamed_addr constant [19 x i8] c"__weaklistoffset__\00", align 1, !guid !66
@.str.35 = private unnamed_addr constant [15 x i8] c"__dictoffset__\00", align 1, !guid !67
@iobase_members = internal global [3 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.34, i32 19, [4 x i8] zeroinitializer, i64 24, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.35, i32 19, [4 x i8] zeroinitializer, i64 16, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16, !guid !68
@.str.37 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1, !guid !69
@.str.38 = private unnamed_addr constant [7 x i8] c"closed\00", align 1, !guid !70
@.str.39 = private unnamed_addr constant [43 x i8] c"Exception ignored while finalizing file %R\00", align 1, !guid !71
@rawiobase_doc = internal constant [31 x i8] c"Base class for raw binary I/O.\00", align 16, !guid !72
@rawiobase_slots = internal global [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @rawiobase_doc }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @rawiobase_methods }, { i32, [4 x i8], ptr } zeroinitializer], align 16, !guid !73
@.str.41 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !guid !74
@_io__RawIOBase_read__doc__ = internal constant [29 x i8] c"read($self, size=-1, /)\0A--\0A\0A\00", align 16, !guid !75
@.str.42 = private unnamed_addr constant [8 x i8] c"readall\00", align 1, !guid !76
@_io__RawIOBase_readall__doc__ = internal constant [66 x i8] c"readall($self, /)\0A--\0A\0ARead until EOF, using multiple read() call.\00", align 16, !guid !77
@.str.43 = private unnamed_addr constant [9 x i8] c"readinto\00", align 1, !guid !78
@.str.44 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !guid !79
@rawiobase_methods = internal global [5 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.41, ptr @_io__RawIOBase_read, i32 128, [4 x i8] zeroinitializer, ptr @_io__RawIOBase_read__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.42, ptr @_io__RawIOBase_readall, i32 4, [4 x i8] zeroinitializer, ptr @_io__RawIOBase_readall__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.43, ptr @rawiobase_readinto, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.44, ptr @rawiobase_write, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16, !guid !80
@.str.46 = private unnamed_addr constant [46 x i8] c"readinto returned %zd outside buffer size %zd\00", align 1, !guid !81
@.str.47 = private unnamed_addr constant [2 x i8] c"i\00", align 1, !guid !82
@.str.48 = private unnamed_addr constant [27 x i8] c"read() should return bytes\00", align 1, !guid !83
@PyExc_NotImplementedError = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_PyIOBase_check_closed(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !117 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912), ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %iobase_check_closed.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.e = call i32 @PyObject_IsTrue(ptr noundef %i.d) #6 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i, label %bb.c, label %Py_DECREF.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !87
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %Py_DECREF.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.b
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %iobase_check_closed.exit.thread, label %iobase_check_closed.exit

iobase_check_closed.exit.thread:                  ; preds = %Py_DECREF.exit.i
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !86
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

iobase_check_closed.exit:                         ; preds = %bb.a, %Py_DECREF.exit.i
  %.04.i = phi i32 [ %i.b, %bb.a ], [ %i.e, %Py_DECREF.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.04.i.fr = freeze i32 %.04.i
  %.not = icmp eq i32 %.04.i.fr, 0
  %spec.select = select i1 %.not, ptr @_Py_NoneStruct, ptr null
  br label %bb.e

bb.e:                                             ; preds = %iobase_check_closed.exit, %iobase_check_closed.exit.thread
  %i.l = phi ptr [ null, %iobase_check_closed.exit.thread ], [ %spec.select, %iobase_check_closed.exit ]
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @_PyIOBase_cannot_pickle(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 !guid !118 {
bb.a:
  %i.a = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !86
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.c = tail call ptr @_PyType_Name(ptr noundef %.val) #6
  %i.d = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef %i.c) #6 ; 0 uses
  ret ptr null
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @_PyType_Name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @_PyIOBase_finalize(ptr noundef %0) local_unnamed_addr #0 !guid !119 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !87
  %i.a = icmp eq i32 %.val, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @PyObject_CallFinalizerFromDealloc(ptr noundef nonnull %0) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @PyObject_CallFinalizer(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @PyObject_CallFinalizerFromDealloc(ptr noundef) local_unnamed_addr #1

declare void @PyObject_CallFinalizer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden ptr @_PyIOBase_check_seekable(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 !guid !120 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !86
  %i.b = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 98744), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #6 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, @_Py_TrueStruct
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %.not.i13 = icmp sgt i32 %i.d, -1
  br i1 %.not.i13, label %bb.d, label %Py_DECREF.exit14

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.b, align 8, !tbaa !87
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %Py_DECREF.exit14

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.c, %bb.d, %bb.e
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !92
  call void @PyErr_SetString(ptr noundef %.val, ptr noundef nonnull @.str.1) #6
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %2, @_Py_TrueStruct
  br i1 %i.h, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !87
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.a, %Py_DECREF.exit14
  %.0 = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit14 ], [ %i.b, %bb.f ], [ %i.b, %bb.g ], [ %i.b, %bb.h ], [ %i.b, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyIOBase_check_readable(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 !guid !121 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !86
  %i.b = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96896), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #6 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, @_Py_TrueStruct
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %.not.i13 = icmp sgt i32 %i.d, -1
  br i1 %.not.i13, label %bb.d, label %Py_DECREF.exit14

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.b, align 8, !tbaa !87
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %Py_DECREF.exit14

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.c, %bb.d, %bb.e
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !92
  call void @PyErr_SetString(ptr noundef %.val, ptr noundef nonnull @.str.2) #6
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %2, @_Py_TrueStruct
  br i1 %i.h, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !87
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.a, %Py_DECREF.exit14
  %.0 = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit14 ], [ %i.b, %bb.f ], [ %i.b, %bb.g ], [ %i.b, %bb.h ], [ %i.b, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyIOBase_check_writable(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 !guid !122 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !86
  %i.b = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104776), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #6 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, @_Py_TrueStruct
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %.not.i13 = icmp sgt i32 %i.d, -1
  br i1 %.not.i13, label %bb.d, label %Py_DECREF.exit14

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.b, align 8, !tbaa !87
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %Py_DECREF.exit14

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.c, %bb.d, %bb.e
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !92
  call void @PyErr_SetString(ptr noundef %.val, ptr noundef nonnull @.str.3) #6
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %2, @_Py_TrueStruct
  br i1 %i.h, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !87
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.a, %Py_DECREF.exit14
  %.0 = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit14 ], [ %i.b, %bb.f ], [ %i.b, %bb.g ], [ %i.b, %bb.h ], [ %i.b, %bb.i ]
  ret ptr %.0
}

declare i32 @PyObject_GetOptionalAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @iobase_dealloc(ptr noundef %0) #0 !guid !123 {
bb.a:
  %.val.i = load i32, ptr %0, align 8, !tbaa !87
  %i.a = icmp eq i32 %.val.i, 0
  br i1 %i.a, label %_PyIOBase_finalize.exit, label %_PyIOBase_finalize.exit.thread

_PyIOBase_finalize.exit.thread:                   ; preds = %bb.a
  tail call void @PyObject_CallFinalizer(ptr noundef nonnull %0) #6
  br label %bb.e

_PyIOBase_finalize.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyObject_CallFinalizerFromDealloc(ptr noundef nonnull %0) #6
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_PyIOBase_finalize.exit
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val22 = load ptr, ptr %i.d, align 8, !tbaa !90 ; 3 uses
  %i.e = getelementptr i8, ptr %.val22, i64 168
  %.val23 = load i64, ptr %i.e, align 8, !tbaa !101
  %i.f = and i64 %.val23, 512
  %.not17 = icmp eq i64 %i.f, 0
  br i1 %.not17, label %Py_INCREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %.val22, align 8, !tbaa !87 ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %Py_INCREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %.val22, align 8, !tbaa !87
  br label %Py_INCREF.exit

bb.e:                                             ; preds = %_PyIOBase_finalize.exit.thread, %_PyIOBase_finalize.exit
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !90  ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 -16        ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 -8         ; 3 uses
  %.val.i24 = load i64, ptr %i.l, align 8, !tbaa !125
  %i.m = and i64 %.val.i24, -4                    ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %.val12.i = load i64, ptr %i.k, align 8, !tbaa !126
  %i.o = and i64 %.val12.i, -4                    ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.n, align 8, !tbaa !126
  %i.r = and i64 %i.q, 3
  %i.s = or disjoint i64 %i.r, %i.o
  store i64 %i.s, ptr %i.n, align 8, !tbaa !126
  %i.t = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !125
  %i.v = and i64 %i.u, 3
  %i.w = or disjoint i64 %i.v, %i.m
  store i64 %i.w, ptr %i.t, align 8, !tbaa !125
  store i64 0, ptr %i.k, align 8, !tbaa !126
  %i.x = load i64, ptr %i.l, align 8, !tbaa !125
  %i.y = and i64 %i.x, 1
  store i64 %i.y, ptr %i.l, align 8, !tbaa !125
  %i.z = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !128 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 7428   ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !132 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_PyObject_GC_UNTRACK.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !132
  br label %_PyObject_GC_UNTRACK.exit

_PyObject_GC_UNTRACK.exit:                        ; preds = %bb.e, %bb.f
  %i.af = getelementptr i8, ptr %i.aa, i64 7656   ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !133
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !133
  %i.ai = getelementptr i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !134
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_PyObject_GC_UNTRACK.exit
  tail call void @PyObject_ClearWeakRefs(ptr noundef nonnull %0) #6
  br label %bb.h

bb.h:                                             ; preds = %_PyObject_GC_UNTRACK.exit, %bb.g
  %i.ak = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !86 ; 4 uses
  %.not16 = icmp eq ptr %i.al, null
  br i1 %.not16, label %Py_DECREF.exit19, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ak, align 8, !tbaa !86
  %i.am = load i32, ptr %i.al, align 8, !tbaa !87 ; 2 uses
  %.not.i18 = icmp sgt i32 %i.am, -1
  br i1 %.not.i18, label %bb.j, label %Py_DECREF.exit19

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !87
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %Py_DECREF.exit19

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.al) #6
  br label %Py_DECREF.exit19

Py_DECREF.exit19:                                 ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.ap = getelementptr i8, ptr %.val, i64 320
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !135
  tail call void %i.aq(ptr noundef nonnull %0) #6
  %i.ar = load i32, ptr %.val, align 8, !tbaa !87 ; 2 uses
  %.not.i = icmp sgt i32 %i.ar, -1
  br i1 %.not.i, label %bb.l, label %Py_INCREF.exit

bb.l:                                             ; preds = %Py_DECREF.exit19
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %.val, align 8, !tbaa !87
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.m, label %Py_INCREF.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #6
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.m, %bb.l, %Py_DECREF.exit19, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @iobase_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 !guid !136 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val23 = load ptr, ptr %i.a, align 8, !tbaa !90 ; 2 uses
  %.not = icmp eq ptr %.val23, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val23, ptr noundef %2) #6 ; 2 uses
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %i.d, ptr noundef %2) #6 ; 2 uses
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @iobase_clear(ptr nofree noundef captures(none) %0) #0 !guid !138 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !86
  %i.c = load i32, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 0
end_hunk_0
begin_hunk_1_@iobase_finalize:bb.a

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.39, ptr noundef %0) #6
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.i
  %i.o = load i32, ptr %i.m, align 8, !tbaa !87   ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !87
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit9, %bb.f, %bb.b, %bb.m, %bb.l, %bb.k, %bb.j
  call void @PyErr_SetRaisedException(ptr noundef %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret void
}

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

declare i64 @PyObject_Size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_io__IOBase_seek(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 !guid !142 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = icmp eq ptr %4, null
  %i.c = add i64 %3, -1
  %i.d = icmp ult i64 %i.c, 2
  %or.cond3 = and i1 %i.b, %i.d
  %i.e = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_io__IOBase_seek._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = call i32 @PyLong_AsInt(ptr noundef %i.h) #6
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.k = call ptr @PyErr_Occurred() #6
  %.not27 = icmp eq ptr %i.k, null
  br i1 %.not27, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %.thread
  %i.l = icmp slt i64 %3, 2
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.o = call i32 @PyLong_AsInt(ptr noundef %i.n) #6
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = call ptr @PyErr_Occurred() #6
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.r = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.r, align 8, !tbaa !111
  %i.s = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.s, align 8, !tbaa !114
  %i.t = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.t, align 8, !tbaa !92
  call void @PyErr_SetString(ptr noundef %.val.val.val, ptr noundef nonnull @.str.8) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.b, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__IOBase_tell(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !143 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 98696), ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef 1) #6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_io__IOBase_truncate(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 !guid !144 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = icmp eq ptr %4, null
  %i.c = icmp ult i64 %3, 2
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_io__IOBase_truncate._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.g = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.h = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.h, align 8, !tbaa !92
  call void @PyErr_SetString(ptr noundef %.val.val.val, ptr noundef nonnull @.str.10) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_io__IOBase_flush(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !145 {
bb.a:
  %i.a = tail call i32 @PyObject_HasAttrWithError(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62064)) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_io__IOBase_flush_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %_io__IOBase_flush_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !86
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.6) #6
  br label %_io__IOBase_flush_impl.exit

_io__IOBase_flush_impl.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__IOBase_close(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !146 {
bb.a:
  %i.a = tail call i32 @PyObject_HasAttrWithError(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62064)) #6 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_io__IOBase_close_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %_io__IOBase_close_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @_PyFile_Flush(ptr noundef %0) #6
  %i.d = tail call ptr @PyErr_GetRaisedException() #6
  %i.e = tail call i32 @PyObject_SetAttr(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62064), ptr noundef nonnull @_Py_TrueStruct) #6
  tail call void @_PyErr_ChainExceptions1(ptr noundef %i.d) #6
  %i.f = icmp slt i32 %i.c, 0
  %i.g = icmp slt i32 %i.e, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  %._Py_NoneStruct.i = select i1 %or.cond.i, ptr null, ptr @_Py_NoneStruct
  br label %_io__IOBase_close_impl.exit

_io__IOBase_close_impl.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  %.1.i = phi ptr [ %._Py_NoneStruct.i, %bb.c ], [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_io__IOBase_seekable(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #4 !guid !147 {
bb.a:
  ret ptr @_Py_FalseStruct
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_io__IOBase_readable(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #4 !guid !148 {
bb.a:
  ret ptr @_Py_FalseStruct
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_io__IOBase_writable(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #4 !guid !149 {
bb.a:
  ret ptr @_Py_FalseStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @iobase_check_seekable(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) #0 !guid !150 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.c = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @_PyIO_Module) #6
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !86
  %i.e = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 98744), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #6 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_PyIOBase_check_seekable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, @_Py_TrueStruct
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.not.i13.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i13.i, label %bb.d, label %Py_DECREF.exit14.i

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.e, align 8, !tbaa !87
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit14.i

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #6
  br label %Py_DECREF.exit14.i

Py_DECREF.exit14.i:                               ; preds = %bb.e, %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %.val.i, i64 8
  %.val.i4 = load ptr, ptr %i.j, align 8, !tbaa !92
  call void @PyErr_SetString(ptr noundef %.val.i4, ptr noundef nonnull @.str.1) #6
  br label %_PyIOBase_check_seekable.exit

bb.f:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %1, @_Py_TrueStruct
  br i1 %i.k, label %bb.g, label %_PyIOBase_check_seekable.exit

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i, label %bb.h, label %_PyIOBase_check_seekable.exit

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !87
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %_PyIOBase_check_seekable.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #6
  br label %_PyIOBase_check_seekable.exit

_PyIOBase_check_seekable.exit:                    ; preds = %bb.a, %Py_DECREF.exit14.i, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit14.i ], [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %i.e, %bb.h ], [ %i.e, %bb.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @iobase_check_readable(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) #0 !guid !151 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.c = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @_PyIO_Module) #6
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !86
  %i.e = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96896), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #6 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_PyIOBase_check_readable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, @_Py_TrueStruct
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.not.i13.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i13.i, label %bb.d, label %Py_DECREF.exit14.i

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.e, align 8, !tbaa !87
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit14.i

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #6
  br label %Py_DECREF.exit14.i

Py_DECREF.exit14.i:                               ; preds = %bb.e, %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %.val.i, i64 8
  %.val.i4 = load ptr, ptr %i.j, align 8, !tbaa !92
  call void @PyErr_SetString(ptr noundef %.val.i4, ptr noundef nonnull @.str.2) #6
  br label %_PyIOBase_check_readable.exit

bb.f:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %1, @_Py_TrueStruct
  br i1 %i.k, label %bb.g, label %_PyIOBase_check_readable.exit

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i, label %bb.h, label %_PyIOBase_check_readable.exit

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !87
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %_PyIOBase_check_readable.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #6
  br label %_PyIOBase_check_readable.exit

_PyIOBase_check_readable.exit:                    ; preds = %bb.a, %Py_DECREF.exit14.i, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit14.i ], [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %i.e, %bb.h ], [ %i.e, %bb.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @iobase_check_writable(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) #0 !guid !152 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.c = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @_PyIO_Module) #6
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !86
  %i.e = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104776), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #6 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_PyIOBase_check_writable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, @_Py_TrueStruct
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.not.i13.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i13.i, label %bb.d, label %Py_DECREF.exit14.i

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.e, align 8, !tbaa !87
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit14.i

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #6
  br label %Py_DECREF.exit14.i

Py_DECREF.exit14.i:                               ; preds = %bb.e, %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %.val.i, i64 8
  %.val.i4 = load ptr, ptr %i.j, align 8, !tbaa !92
  call void @PyErr_SetString(ptr noundef %.val.i4, ptr noundef nonnull @.str.3) #6
  br label %_PyIOBase_check_writable.exit

bb.f:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %1, @_Py_TrueStruct
  br i1 %i.k, label %bb.g, label %_PyIOBase_check_writable.exit

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i, label %bb.h, label %_PyIOBase_check_writable.exit

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !87
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %_PyIOBase_check_writable.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #6
  br label %_PyIOBase_check_writable.exit

_PyIOBase_check_writable.exit:                    ; preds = %bb.a, %Py_DECREF.exit14.i, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit14.i ], [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %i.e, %bb.h ], [ %i.e, %bb.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_io__IOBase_fileno(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) #0 !guid !153 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !115
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !86
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.30) #6
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr i8, ptr %1, i64 888
  %.val8 = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.d = getelementptr i8, ptr %.val8, i64 24
  %.val8.val = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.e = getelementptr i8, ptr %.val8.val, i64 8
  %.val8.val.val = load ptr, ptr %i.e, align 8, !tbaa !92
  tail call void @PyErr_SetString(ptr noundef %.val8.val.val, ptr noundef nonnull @.str.20) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_io__IOBase_isatty(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !154 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912), ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %iobase_check_closed.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.e = call i32 @PyObject_IsTrue(ptr noundef %i.d) #6 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i.i, label %bb.c, label %Py_DECREF.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !87
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %Py_DECREF.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.d, %bb.c, %bb.b
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %iobase_check_closed.exit.thread.i, label %iobase_check_closed.exit.i

iobase_check_closed.exit.thread.i:                ; preds = %Py_DECREF.exit.i.i
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !86
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_io__IOBase_isatty_impl.exit

iobase_check_closed.exit.i:                       ; preds = %Py_DECREF.exit.i.i, %bb.a
  %.04.i.i = phi i32 [ %i.b, %bb.a ], [ %i.e, %Py_DECREF.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.04.i.fr.i = freeze i32 %.04.i.i
  %.not.i = icmp eq i32 %.04.i.fr.i, 0
  %spec.select.i = select i1 %.not.i, ptr @_Py_FalseStruct, ptr null
  br label %_io__IOBase_isatty_impl.exit

_io__IOBase_isatty_impl.exit:                     ; preds = %iobase_check_closed.exit.thread.i, %iobase_check_closed.exit.i
  %i.l = phi ptr [ null, %iobase_check_closed.exit.thread.i ], [ %spec.select.i, %iobase_check_closed.exit.i ]
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @iobase_enter(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !155 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912), ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %iobase_check_closed.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.e = call i32 @PyObject_IsTrue(ptr noundef %i.d) #6 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i, label %bb.c, label %Py_DECREF.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !87
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %Py_DECREF.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.b
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %iobase_check_closed.exit.thread, label %iobase_check_closed.exit

iobase_check_closed.exit.thread:                  ; preds = %Py_DECREF.exit.i
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !86
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_Py_NewRef.exit

iobase_check_closed.exit:                         ; preds = %bb.a, %Py_DECREF.exit.i
  %.04.i = phi i32 [ %i.b, %bb.a ], [ %i.e, %Py_DECREF.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.not = icmp eq i32 %.04.i, 0
  br i1 %.not, label %bb.e, label %_Py_NewRef.exit

bb.e:                                             ; preds = %iobase_check_closed.exit
  %i.l = load i32, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %0, align 8, !tbaa !87
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %bb.e, %iobase_check_closed.exit.thread, %iobase_check_closed.exit
  %.0 = phi ptr [ null, %iobase_check_closed.exit.thread ], [ null, %iobase_check_closed.exit ], [ %0, %bb.e ], [ %0, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @iobase_exit(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !156 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !86
  %i.b = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__IOBase_readline(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !157 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 -1, ptr %i.b, align 8, !tbaa !116
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.24, i64 noundef %2, i64 noundef 0, i64 noundef 1) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = icmp slt i64 %2, 1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !86
  %i.f = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef %i.e, ptr noundef nonnull %i.b) #6
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.aq, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %i.b, align 8, !tbaa !116
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.g = phi i64 [ %.pre, %._crit_edge ], [ -1, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.h = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 95272), ptr noundef nonnull %i.a) #6
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_io__IOBase_readline_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call ptr @PyByteArray_FromStringAndSize(ptr noundef null, i64 noundef 0) #6 ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %.preheader131.i

.preheader131.i:                                  ; preds = %bb.f
  %i.l = icmp slt i64 %i.g, 0
end_hunk_1
begin_hunk_2_@_PyArg_CheckPositional

declare i32 @_Py_convert_optional_to_ssize_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyByteArray_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyIO_trap_eintr() local_unnamed_addr #1

declare i32 @PyByteArray_Resize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #1

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #1

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GenericGetDict(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @iobase_closed_get(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !165 {
bb.a:
  %i.a = tail call i32 @PyObject_HasAttrWithError(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62064)) #6 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = tail call ptr @PyBool_FromLong(i64 noundef %i.c) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #1

declare void @PyErr_Clear() local_unnamed_addr #1

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #1

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_io__RawIOBase_read(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !166 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.41, i64 noundef %2, i64 noundef 0, i64 noundef 1) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_io__RawIOBase_read_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = icmp slt i64 %2, 1
  br i1 %i.d, label %.thread28, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !86
  %i.f = tail call ptr @_PyNumber_Index(ptr noundef %i.e) #6 ; 5 uses
  %.not20 = icmp eq ptr %i.f, null
  br i1 %.not20, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.f) #6 ; 5 uses
  %i.h = load i32, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.f, align 8, !tbaa !87
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.k = icmp eq i64 %i.g, -1
  br i1 %i.k, label %Py_DECREF.exit.thread, label %bb.h

Py_DECREF.exit.thread:                            ; preds = %bb.d, %Py_DECREF.exit
  %i.l = tail call ptr @PyErr_Occurred() #6
  %.not21 = icmp eq ptr %i.l, null
  br i1 %.not21, label %.thread28, label %_io__RawIOBase_read_impl.exit

bb.h:                                             ; preds = %Py_DECREF.exit
  %i.m = icmp slt i64 %i.g, 0
  br i1 %i.m, label %.thread28, label %bb.i

.thread28:                                        ; preds = %Py_DECREF.exit.thread, %bb.c, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !tbaa !86
  %i.n = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96952), ptr noundef nonnull %i.b, i64 noundef -9223372036854775807, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_io__RawIOBase_read_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @PyByteArray_FromStringAndSize(ptr noundef null, i64 noundef %i.g) #6 ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_io__RawIOBase_read_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97000), ptr noundef nonnull %i.o, ptr noundef null) #6 ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp eq ptr %i.q, @_Py_NoneStruct
  %or.cond.i = or i1 %i.r, %i.s
  br i1 %or.cond.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !86
  %i.u = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %i.q, ptr noundef %i.t) #6 ; 4 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !87   ; 2 uses
  %.not.i31.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i31.i, label %bb.l, label %Py_DECREF.exit32.i

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.q, align 8, !tbaa !87
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %Py_DECREF.exit32.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #6
  br label %Py_DECREF.exit32.i

Py_DECREF.exit32.i:                               ; preds = %bb.m, %bb.l, %bb.k
  %i.y = icmp eq i64 %i.u, -1
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %Py_DECREF.exit32.i
  %i.z = tail call ptr @PyErr_Occurred() #6
  %.not.i22 = icmp eq ptr %i.z, null
  br i1 %.not.i22, label %.thread.i, label %bb.r

bb.o:                                             ; preds = %Py_DECREF.exit32.i
  %or.cond30.i = icmp ugt i64 %i.u, %i.g
  br i1 %or.cond30.i, label %.thread.i, label %bb.p

.thread.i:                                        ; preds = %bb.o, %bb.n
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !86
  %i.ab = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.46, i64 noundef %i.u, i64 noundef %i.g) #6 ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ac = tail call i32 @PyByteArray_Resize(ptr noundef nonnull %i.o, i64 noundef %i.u) #6
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8, !tbaa !86
  %i.ae = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 101632), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.thread.i, %bb.n, %bb.j
  %.1.i = phi ptr [ %i.q, %bb.j ], [ null, %bb.n ], [ null, %.thread.i ], [ null, %bb.p ], [ %i.ae, %bb.q ] ; 3 uses
  %i.af = load i32, ptr %i.o, align 8, !tbaa !87  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i, label %bb.s, label %_io__RawIOBase_read_impl.exit

bb.s:                                             ; preds = %bb.r
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.o, align 8, !tbaa !87
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.t, label %_io__RawIOBase_read_impl.exit

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #6
  br label %_io__RawIOBase_read_impl.exit

_io__RawIOBase_read_impl.exit:                    ; preds = %bb.t, %bb.s, %bb.r, %bb.i, %.thread28, %Py_DECREF.exit.thread, %bb.b
  %.017 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.b ], [ %i.n, %.thread28 ], [ null, %bb.i ], [ %.1.i, %bb.r ], [ %.1.i, %bb.s ], [ %.1.i, %bb.t ]
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__RawIOBase_readall(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !167 {
bb.a:
  %i.a = tail call ptr @PyBytesWriter_Create(i64 noundef 0) #6 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_io__RawIOBase_readall_impl.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i.backedge
  %i.c = tail call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96800), ptr noundef nonnull @.str.47, i32 noundef 131072) #6 ; 19 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader.i
  %i.d = tail call i32 @_PyIO_trap_eintr() #6
  %.not24.i = icmp eq i32 %i.d, 0
  br i1 %.not24.i, label %bb.c, label %.preheader.i.backedge

bb.c:                                             ; preds = %bb.b
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.a) #6
  br label %_io__RawIOBase_readall_impl.exit

bb.d:                                             ; preds = %.preheader.i
  %i.e = icmp eq ptr %i.c, @_Py_NoneStruct
  br i1 %i.e, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i64 @PyBytesWriter_GetSize(ptr noundef nonnull %i.a) #6
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.a) #6
  br label %_io__RawIOBase_readall_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %.not.i32.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i32.i, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.c, align 8, !tbaa !87
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.sink.split.i, label %bb.w

bb.i:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.l = getelementptr i8, ptr %.val.i, i64 168
  %.val38.i = load i64, ptr %i.l, align 8, !tbaa !101
  %i.m = and i64 %.val38.i, 134217728
  %.not25.i = icmp eq i64 %i.m, 0
  br i1 %.not25.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.n = load i32, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %.not.i30.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i30.i, label %bb.k, label %Py_DECREF.exit31.i

bb.k:                                             ; preds = %bb.j
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !87
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.l, label %Py_DECREF.exit31.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #6
  br label %Py_DECREF.exit31.i

Py_DECREF.exit31.i:                               ; preds = %bb.l, %bb.k, %bb.j
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !86
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.48) #6
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.a) #6
  br label %_io__RawIOBase_readall_impl.exit

bb.m:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %i.c, i64 16
  %.val40.i = load i64, ptr %i.r, align 8, !tbaa !115 ; 2 uses
  %i.s = icmp eq i64 %.val40.i, 0
  br i1 %i.s, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.t = load i32, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %.not.i28.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i28.i, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.c, align 8, !tbaa !87
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.sink.split.i, label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.w = getelementptr i8, ptr %i.c, i64 32
  %i.x = tail call i32 @PyBytesWriter_WriteBytes(ptr noundef nonnull %i.a, ptr noundef %i.w, i64 noundef %.val40.i) #6
  %i.y = icmp slt i32 %i.x, 0
  %i.z = load i32, ptr %i.c, align 8, !tbaa !87   ; 3 uses
  %.not.i26.i = icmp sgt i32 %i.z, -1             ; 2 uses
  br i1 %i.y, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i26.i, label %bb.r, label %Py_DECREF.exit27.i

bb.r:                                             ; preds = %bb.q
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !87
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.s, label %Py_DECREF.exit27.i

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #6
  br label %Py_DECREF.exit27.i

Py_DECREF.exit27.i:                               ; preds = %bb.s, %bb.r, %bb.q
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.a) #6
  br label %_io__RawIOBase_readall_impl.exit

bb.t:                                             ; preds = %bb.p
  br i1 %.not.i26.i, label %bb.u, label %.preheader.i.backedge

bb.u:                                             ; preds = %bb.t
  %i.ac = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.ac, ptr %i.c, align 8, !tbaa !87
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.v, label %.preheader.i.backedge

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #6
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.v, %bb.u, %bb.t, %bb.b
  br label %.preheader.i

.sink.split.i:                                    ; preds = %bb.o, %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #6
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i, %bb.o, %bb.n, %bb.h, %bb.g
  %i.ae = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.a) #6
  br label %_io__RawIOBase_readall_impl.exit

_io__RawIOBase_readall_impl.exit:                 ; preds = %bb.a, %bb.c, %bb.f, %Py_DECREF.exit31.i, %Py_DECREF.exit27.i, %bb.w
  %.2.i = phi ptr [ %i.ae, %bb.w ], [ null, %bb.a ], [ null, %bb.c ], [ null, %Py_DECREF.exit31.i ], [ null, %Py_DECREF.exit27.i ], [ %i.c, %bb.f ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @rawiobase_readinto(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !168 {
bb.a:
  %i.a = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !86
  tail call void @PyErr_SetNone(ptr noundef %i.a) #6
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @rawiobase_write(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !169 {
bb.a:
  %i.a = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !86
  tail call void @PyErr_SetNone(ptr noundef %i.a) #6
  ret ptr null
}

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare i64 @PyBytesWriter_GetSize(ptr noundef) local_unnamed_addr #1

declare i32 @PyBytesWriter_WriteBytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetNone(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i64 3080201303214192128}
!12 = !{i64 -412343909299291850}
!13 = !{i64 6461515447013224138}
!14 = !{i64 6729890096977182646}
!15 = !{i64 6861738812200665718}
!16 = !{i64 -7577883919792735109}
!17 = !{i64 2651052275935040691}
!18 = !{i64 145425679268159643}
!19 = !{i64 6512760708159758572}
!20 = !{i64 5395900523913758525}
!21 = !{i64 -965125555709146902}
!22 = !{i64 959829235035351147}
!23 = !{i64 663423948742091509}
!24 = !{i64 -1835373120965258015}
!25 = !{i64 2459106317612113587}
!26 = !{i64 -5156685158645082402}
!27 = !{i64 -6663382874081230195}
!28 = !{i64 -4949055025332730199}
!29 = !{i64 -3719467848813041217}
!30 = !{i64 4484581033201190727}
!31 = !{i64 -6740926595766254680}
!32 = !{i64 -5742985765390161604}
!33 = !{i64 278015228489415166}
!34 = !{i64 1164919251334734878}
!35 = !{i64 -4268317599536504649}
!36 = !{i64 1769532919557280005}
!37 = !{i64 -5552673395340649235}
!38 = !{i64 -1954260362284603280}
!39 = !{i64 5738094238450729569}
!40 = !{i64 -6944227807914564684}
!41 = !{i64 -7155345802097467085}
!42 = !{i64 -490954346934365223}
!43 = !{i64 8801520174954633489}
!44 = !{i64 6188092832155241646}
!45 = !{i64 -7488404860995398092}
!46 = !{i64 2076570759568823451}
!47 = !{i64 -6354915769178480833}
!48 = !{i64 6265197168279336515}
!49 = !{i64 4537773729041725021}
!50 = !{i64 8964084578525716501}
!51 = !{i64 -4357194063600877603}
!52 = !{i64 1320092152334253035}
!53 = !{i64 7772213453357840718}
!54 = !{i64 7921641481307966593}
!55 = !{i64 6561737091878876680}
!56 = !{i64 -4959687798101304052}
!57 = !{i64 2270424795709298314}
!58 = !{i64 -4031256869813654555}
!59 = !{i64 9082480965294259178}
!60 = !{i64 -8512661666027504987}
!61 = !{i64 -5277317112728567872}
!62 = !{i64 -611809023859122337}
!63 = !{i64 6610113058193288869}
!64 = !{i64 -8759879748240009351}
!65 = !{i64 2483159429441030871}
!66 = !{i64 2940411992521508320}
!67 = !{i64 7987884021533833928}
!68 = !{i64 -4010024942039397194}
!69 = !{i64 -91974750467427740}
!70 = !{i64 -4675631902558866980}
!71 = !{i64 1569033795999923824}
!72 = !{i64 7971657783599446847}
!73 = !{i64 3456573190943634912}
!74 = !{i64 -8417158426339361925}
!75 = !{i64 8179413953942575394}
!76 = !{i64 -56848801051195085}
!77 = !{i64 -119897904178678614}
!78 = !{i64 1852289306674975229}
!79 = !{i64 -2387444816612356150}
!80 = !{i64 -6881599918582604659}
!81 = !{i64 -4341117886802874744}
!82 = !{i64 4065277736957718353}
!83 = !{i64 -4197942118581037390}
!84 = !{!"any pointer", !8, i64 0}
!85 = !{!"p1 _ZTS7_object", !84, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!8, !8, i64 0}
!88 = !{!"p1 _ZTS11_typeobject", !84, i64 0}
!89 = !{!"_object", !8, i64 0, !88, i64 8}
!90 = !{!89, !88, i64 8}
!91 = !{!"_io_state", !9, i64 0, !85, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !88, i64 112, !88, i64 120}
!92 = !{!91, !85, i64 8}
!93 = !{!"long", !8, i64 0}
!94 = !{!"PyVarObject", !89, i64 0, !93, i64 16}
!95 = !{!"p1 omnipotent char", !84, i64 0}
!96 = !{!"p1 _ZTS11PyMethodDef", !84, i64 0}
!97 = !{!"p1 _ZTS11PyMemberDef", !84, i64 0}
!98 = !{!"p1 _ZTS11PyGetSetDef", !84, i64 0}
!99 = !{!"short", !8, i64 0}
!100 = !{!"_typeobject", !94, i64 0, !95, i64 24, !93, i64 32, !93, i64 40, !84, i64 48, !93, i64 56, !84, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !84, i64 96, !84, i64 104, !84, i64 112, !84, i64 120, !84, i64 128, !84, i64 136, !84, i64 144, !84, i64 152, !84, i64 160, !93, i64 168, !95, i64 176, !84, i64 184, !84, i64 192, !84, i64 200, !93, i64 208, !84, i64 216, !84, i64 224, !96, i64 232, !97, i64 240, !98, i64 248, !88, i64 256, !85, i64 264, !84, i64 272, !84, i64 280, !93, i64 288, !84, i64 296, !84, i64 304, !84, i64 312, !84, i64 320, !84, i64 328, !85, i64 336, !85, i64 344, !85, i64 352, !84, i64 360, !85, i64 368, !84, i64 376, !9, i64 384, !84, i64 392, !84, i64 400, !8, i64 408, !99, i64 410}
!101 = !{!100, !93, i64 168}
!102 = !{!"", !89, i64 0, !85, i64 16, !85, i64 24}
!103 = !{!"", !84, i64 0, !84, i64 8, !84, i64 16, !84, i64 24}
!104 = !{!"", !84, i64 0, !84, i64 8, !84, i64 16, !84, i64 24, !84, i64 32, !84, i64 40, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !84, i64 96, !84, i64 104, !84, i64 112, !84, i64 120, !84, i64 128, !84, i64 136, !84, i64 144, !84, i64 152, !84, i64 160, !84, i64 168, !84, i64 176, !84, i64 184, !84, i64 192, !84, i64 200, !84, i64 208, !84, i64 216, !84, i64 224, !84, i64 232, !84, i64 240, !84, i64 248, !84, i64 256, !84, i64 264, !84, i64 272, !84, i64 280}
!105 = !{!"", !84, i64 0, !84, i64 8, !84, i64 16}
!106 = !{!"", !84, i64 0, !84, i64 8, !84, i64 16, !84, i64 24, !84, i64 32, !84, i64 40, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72}
!107 = !{!"", !84, i64 0, !84, i64 8}
!108 = !{!"p1 _ZTS15_dictkeysobject", !84, i64 0}
!109 = !{!"_specialization_cache", !85, i64 0, !9, i64 8, !85, i64 16}
!110 = !{!"_heaptypeobject", !100, i64 0, !103, i64 416, !104, i64 448, !105, i64 736, !106, i64 760, !107, i64 840, !85, i64 856, !85, i64 864, !85, i64 872, !108, i64 880, !85, i64 888, !95, i64 896, !84, i64 904, !109, i64 912}
!111 = !{!110, !85, i64 888}
!112 = !{!"_Bool", !8, i64 0}
!113 = !{!"", !89, i64 0, !85, i64 16, !84, i64 24, !85, i64 32, !85, i64 40, !112, i64 48, !93, i64 56, !84, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !84, i64 96}
!114 = !{!113, !84, i64 24}
!115 = !{!94, !93, i64 16}
!116 = !{!93, !93, i64 0}
!117 = !{i64 8130920006794716249}
!118 = !{i64 -4313511078641552078}
!119 = !{i64 -6964105611821888838}
!120 = !{i64 -7150383862470033575}
!121 = !{i64 -8548571851330527843}
!122 = !{i64 -1256800469108676196}
!123 = !{i64 -1497377431871324309}
!124 = !{!"", !93, i64 0, !93, i64 8}
!125 = !{!124, !93, i64 8}
!126 = !{!124, !93, i64 0}
!127 = !{!"p1 _ZTS3_is", !84, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!"gc_generation", !124, i64 0, !9, i64 16, !9, i64 20}
!130 = !{!"p1 _ZTS19_PyInterpreterFrame", !84, i64 0}
!131 = !{!"_gc_runtime_state", !9, i64 0, !9, i64 4, !129, i64 8, !8, i64 32, !129, i64 80, !8, i64 104, !9, i64 224, !130, i64 232, !85, i64 240, !85, i64 248, !93, i64 256, !93, i64 264, !9, i64 272, !9, i64 276}
!132 = !{!131, !9, i64 28}
!133 = !{!131, !93, i64 256}
!134 = !{!102, !85, i64 24}
!135 = !{!100, !84, i64 320}
!136 = !{i64 4793606593462097054}
!137 = !{!102, !85, i64 16}
!138 = !{i64 6087255195046325415}
!139 = !{i64 -4747437049193060883}
!140 = !{i64 242925289121666749}
!141 = !{i64 -2731708019086527175}
!142 = !{i64 5700936426232627236}
!143 = !{i64 465373526856283156}
!144 = !{i64 1536056914436617651}
!145 = !{i64 4403474019954488031}
!146 = !{i64 2560279161455813914}
!147 = !{i64 -5705224419372539101}
end_hunk_2
