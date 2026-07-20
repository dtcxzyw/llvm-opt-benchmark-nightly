inline.NumInlined: 71
inline.NumDeleted: 34
begin_hunk_0
@_io_FileIO___init____doc__ = internal constant [833 x i8] c"FileIO(file, mode='r', closefd=True, opener=None)\0A--\0A\0AOpen a file.\0A\0AThe mode can be 'r' (default), 'w', 'x' or 'a' for reading,\0Awriting, exclusive creation or appending.  The file will be created if it\0Adoesn't exist when opened for writing or appending; it will be truncated\0Awhen opened for writing.  A FileExistsError will be raised if it already\0Aexists when opened for creating. Opening a file for creating implies\0Awriting so this mode behaves in a similar way to 'w'.Add a '+' to the mode\0Ato allow simultaneous reading and writing. A custom opener can be used by\0Apassing a callable as *opener*. The underlying file descriptor for the file\0Aobject is then obtained by calling opener with (*name*, *flags*).\0A*opener* must return an open file descriptor (passing os.open as *opener*\0Aresults in functionality similar to passing None).\00", align 16
@fileio_getsetlist = internal global [5 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.49, ptr @fileio_get_closed, ptr null, ptr @.str.50, ptr null }, %struct.PyGetSetDef { ptr @.str.51, ptr @fileio_get_closefd, ptr null, ptr @.str.52, ptr null }, %struct.PyGetSetDef { ptr @.str.53, ptr @fileio_get_mode, ptr null, ptr @.str.54, ptr null }, %struct.PyGetSetDef { ptr @.str.55, ptr @fileio_get_blksize, ptr null, ptr @.str.56, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@fileio_slots = internal global [11 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @fileio_dealloc }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @fileio_repr }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @_io_FileIO___init____doc__ }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @fileio_traverse }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @fileio_clear }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @fileio_methods }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @fileio_members }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @fileio_getsetlist }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @_io_FileIO___init__ }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @fileio_new }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"<%.100s [closed]>\00", align 1
@_PyRuntime = external global %struct.pyruntimestate, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"<%.100s fd=%d mode='%s' closefd=%s>\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"<%.100s name=%R mode='%s' closefd=%s>\00", align 1
@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"reentrant call inside %.100s.__repr__\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"xb+\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"xb\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ab+\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@_io_FileIO_read__doc__ = internal constant [402 x i8] c"read($self, size=-1, /)\0A--\0A\0ARead at most size bytes, returned as bytes.\0A\0AIf size is less than 0, read all bytes in the file making multiple read calls.\0ASee ``FileIO.readall``.\0A\0AAttempts to make only one system call, retrying only per PEP 475 (EINTR). This\0Ameans less data may be returned than requested.\0A\0AIn non-blocking mode, returns None if no data is available. Return an empty\0Abytes object at EOF.\00", align 16
@.str.17 = private unnamed_addr constant [8 x i8] c"readall\00", align 1
@_io_FileIO_readall__doc__ = internal constant [369 x i8] c"readall($self, /)\0A--\0A\0ARead all data from the file, returned as bytes.\0A\0AReads until either there is an error or read() returns size 0 (indicates EOF).\0AIf the file is already at EOF, returns an empty bytes object.\0A\0AIn non-blocking mode, returns as much data as could be read before EAGAIN. If no\0Adata is available (EAGAIN is returned before bytes are read) returns None.\00", align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"readinto\00", align 1
@_io_FileIO_readinto__doc__ = internal constant [61 x i8] c"readinto($self, buffer, /)\0A--\0A\0ASame as RawIOBase.readinto().\00", align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@_io_FileIO_write__doc__ = internal constant [259 x i8] c"write($self, b, /)\0A--\0A\0AWrite buffer b to file, return number of bytes written.\0A\0AOnly makes one system call, so not all of the data may be written.\0AThe number of bytes actually written is returned.  In non-blocking mode,\0Areturns None if the write would block.\00", align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@_io_FileIO_seek__doc__ = internal constant [496 x i8] c"seek($self, pos, whence=0, /)\0A--\0A\0AMove to new file position and return the file position.\0A\0AArgument offset is a byte count.  Optional argument whence defaults to\0ASEEK_SET or 0 (offset from start of file, offset should be >= 0); other values\0Aare SEEK_CUR or 1 (move relative to current position, positive or negative),\0Aand SEEK_END or 2 (move relative to end of file, usually negative, although\0Amany platforms allow seeking beyond the end of a file).\0A\0ANote that not all file objects are seekable.\00", align 16
@.str.21 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@_io_FileIO_tell__doc__ = internal constant [85 x i8] c"tell($self, /)\0A--\0A\0ACurrent file position.\0A\0ACan raise OSError for non seekable files.\00", align 16
@.str.22 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@_io_FileIO_truncate__doc__ = internal constant [232 x i8] c"truncate($self, size=None, /)\0A--\0A\0ATruncate the file to at most size bytes and return the truncated size.\0A\0ASize defaults to the current file position, as returned by tell().\0AThe current file position is changed to the value of size.\00", align 16
@.str.23 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@_io_FileIO_close__doc__ = internal constant [147 x i8] c"close($self, /)\0A--\0A\0AClose the file.\0A\0AA closed file cannot be used for further I/O operations.  close() may be\0Acalled more than once without error.\00", align 16
@.str.24 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@_io_FileIO_seekable__doc__ = internal constant [60 x i8] c"seekable($self, /)\0A--\0A\0ATrue if file supports random-access.\00", align 16
@.str.25 = private unnamed_addr constant [9 x i8] c"readable\00", align 1
@_io_FileIO_readable__doc__ = internal constant [63 x i8] c"readable($self, /)\0A--\0A\0ATrue if file was opened in a read mode.\00", align 16
@.str.26 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@_io_FileIO_writable__doc__ = internal constant [64 x i8] c"writable($self, /)\0A--\0A\0ATrue if file was opened in a write mode.\00", align 16
@.str.27 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@_io_FileIO_fileno__doc__ = internal constant [73 x i8] c"fileno($self, /)\0A--\0A\0AReturn the underlying file descriptor (an integer).\00", align 16
@.str.28 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@_io_FileIO_isatty__doc__ = internal constant [68 x i8] c"isatty($self, /)\0A--\0A\0ATrue if the file is connected to a TTY device.\00", align 16
@.str.29 = private unnamed_addr constant [18 x i8] c"_isatty_open_only\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"_dealloc_warn\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"__getstate__\00", align 1
@fileio_methods = internal global [17 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.16, ptr @_io_FileIO_read, i32 642, [4 x i8] zeroinitializer, ptr @_io_FileIO_read__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.17, ptr @_io_FileIO_readall, i32 642, [4 x i8] zeroinitializer, ptr @_io_FileIO_readall__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.18, ptr @_io_FileIO_readinto, i32 642, [4 x i8] zeroinitializer, ptr @_io_FileIO_readinto__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.19, ptr @_io_FileIO_write, i32 642, [4 x i8] zeroinitializer, ptr @_io_FileIO_write__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.20, ptr @_io_FileIO_seek, i32 128, [4 x i8] zeroinitializer, ptr @_io_FileIO_seek__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.21, ptr @_io_FileIO_tell, i32 4, [4 x i8] zeroinitializer, ptr @_io_FileIO_tell__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.22, ptr @_io_FileIO_truncate, i32 642, [4 x i8] zeroinitializer, ptr @_io_FileIO_truncate__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.23, ptr @_io_FileIO_close, i32 642, [4 x i8] zeroinitializer, ptr @_io_FileIO_close__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.24, ptr @_io_FileIO_seekable, i32 4, [4 x i8] zeroinitializer, ptr @_io_FileIO_seekable__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.25, ptr @_io_FileIO_readable, i32 4, [4 x i8] zeroinitializer, ptr @_io_FileIO_readable__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.26, ptr @_io_FileIO_writable, i32 4, [4 x i8] zeroinitializer, ptr @_io_FileIO_writable__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.27, ptr @_io_FileIO_fileno, i32 4, [4 x i8] zeroinitializer, ptr @_io_FileIO_fileno__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.28, ptr @_io_FileIO_isatty, i32 4, [4 x i8] zeroinitializer, ptr @_io_FileIO_isatty__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.29, ptr @_io_FileIO_isatty_open_only, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.30, ptr @fileio_dealloc_warn, i32 8, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.31, ptr @_PyIOBase_cannot_pickle, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@_io_FileIO_read._keywords = internal constant [2 x ptr] [ptr @.str.33, ptr null], align 16
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_io_FileIO_read._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_io_FileIO_read._keywords, ptr @.str.16, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @_PyRuntime, i64 119440), ptr null }, align 8
@.str.34 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [29 x i8] c"I/O operation on closed file\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"File not open for %s\00", align 1
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [71 x i8] c"unbounded read returned more bytes than a Python bytes object can hold\00", align 1
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [29 x i8] c"readall() takes no arguments\00", align 1
@_io_FileIO_readinto._keywords = internal constant [2 x ptr] [ptr @.str.33, ptr null], align 16
@_io_FileIO_readinto._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_io_FileIO_readinto._keywords, ptr @.str.18, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @_PyRuntime, i64 119440), ptr null }, align 8
@.str.39 = private unnamed_addr constant [11 x i8] c"argument 1\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"read-write bytes-like object\00", align 1
@_io_FileIO_write._keywords = internal constant [2 x ptr] [ptr @.str.33, ptr null], align 16
@_io_FileIO_write._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_io_FileIO_write._keywords, ptr @.str.19, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @_PyRuntime, i64 119440), ptr null }, align 8
@.str.41 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@PyExc_OSError = external local_unnamed_addr global ptr, align 8
@_io_FileIO_truncate._keywords = internal constant [2 x ptr] [ptr @.str.33, ptr null], align 16
@_io_FileIO_truncate._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_io_FileIO_truncate._keywords, ptr @.str.22, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @_PyRuntime, i64 119440), ptr null }, align 8
@.str.42 = private unnamed_addr constant [27 x i8] c"close() takes no arguments\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.43 = private unnamed_addr constant [17 x i8] c"unclosed file %R\00", align 1
@PyExc_Warning = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [43 x i8] c"Exception ignored while finalizing file %R\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"_finalizing\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"__weaklistoffset__\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"__dictoffset__\00", align 1
@fileio_members = internal global [4 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.45, i32 14, [4 x i8] zeroinitializer, i64 21, i32 0, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.46, i32 19, [4 x i8] zeroinitializer, i64 32, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.47, i32 19, [4 x i8] zeroinitializer, i64 40, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.49 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"True if the file is closed\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"closefd\00", align 1
@.str.52 = private unnamed_addr constant [55 x i8] c"True if the file descriptor will be closed by close().\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"String giving the file mode\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"_blksize\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"Stat st_blksize if available\00", align 1
@_io_FileIO___init__._kwtuple = internal global %struct.anon.914 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 4 }, i64 -1, [4 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 83832), ptr getelementptr (i8, ptr @_PyRuntime, i64 91928), ptr getelementptr (i8, ptr @_PyRuntime, i64 77960), ptr getelementptr (i8, ptr @_PyRuntime, i64 94312)] }, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@_io_FileIO___init__._keywords = internal constant [5 x ptr] [ptr @.str.57, ptr @.str.53, ptr @.str.51, ptr @.str.58, ptr null], align 16
@.str.57 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"opener\00", align 1
@_io_FileIO___init__._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_io_FileIO___init__._keywords, ptr @.str.59, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @_io_FileIO___init__._kwtuple, i64 16), ptr null }, align 8
@.str.59 = private unnamed_addr constant [7 x i8] c"FileIO\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"argument 'mode'\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"embedded null character\00", align 1
@_Py_open_cloexec_works = external global i32, align 4
@PyBool_Type = external global %struct._typeobject, align 8
@PyExc_RuntimeWarning = external local_unnamed_addr global ptr, align 8
@.str.64 = private unnamed_addr constant [34 x i8] c"bool is used as a file descriptor\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"negative file descriptor\00", align 1
@.str.66 = private unnamed_addr constant [76 x i8] c"Must have exactly one of create/read/write/append mode and at most one plus\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"invalid mode: %.200s\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"Osi\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"Cannot use closefd=False with file name\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"expected integer from opener\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"opener returned %d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @_PyFileIO_closed(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.lobit = lshr i32 %i.b, 31
  ret i32 %.lobit
}

; Function Attrs: nounwind uwtable
define internal void @fileio_dealloc(ptr noundef initializes((21, 22)) %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 21
  store i8 1, ptr %i.a, align 1, !tbaa !18
  %i.b = tail call i32 @_PyIOBase_finalize(ptr noundef %0) #11
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -16        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 -8         ; 3 uses
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !19
  %i.f = and i64 %.val.i, -4                      ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.val12.i = load i64, ptr %i.d, align 8, !tbaa !22
  %i.h = and i64 %.val12.i, -4                    ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.g, align 8, !tbaa !22
  %i.k = and i64 %i.j, 3
  %i.l = or disjoint i64 %i.k, %i.h
  store i64 %i.l, ptr %i.g, align 8, !tbaa !22
  %i.m = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = and i64 %i.n, 3
  %i.p = or disjoint i64 %i.o, %i.f
  store i64 %i.p, ptr %i.m, align 8, !tbaa !19
  store i64 0, ptr %i.d, align 8, !tbaa !22
  %i.q = load i64, ptr %i.e, align 8, !tbaa !19
  %i.r = and i64 %i.q, 1
  store i64 %i.r, ptr %i.e, align 8, !tbaa !19
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 7428     ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !25   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %_PyObject_GC_UNTRACK.exit

bb.c:                                             ; preds = %bb.b
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !25
  br label %_PyObject_GC_UNTRACK.exit

_PyObject_GC_UNTRACK.exit:                        ; preds = %bb.b, %bb.c
  %i.y = getelementptr i8, ptr %i.t, i64 7656     ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !29
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !29
  %i.ab = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_PyObject_GC_UNTRACK.exit
  tail call void @PyMem_Free(ptr noundef nonnull %i.ac) #11
  store ptr null, ptr %i.ab, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %_PyObject_GC_UNTRACK.exit, %bb.d
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %.not14 = icmp eq ptr %i.ae, null
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyObject_ClearWeakRefs(ptr noundef nonnull %0) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 4 uses
  %.not.i15 = icmp eq ptr %i.ag, null
  br i1 %.not.i15, label %fileio_clear.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.af, align 8, !tbaa !32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !33 ; 2 uses
  %.not.i.i = icmp slt i32 %i.ah, 0
  br i1 %.not.i.i, label %fileio_clear.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !33
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %fileio_clear.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #11
  br label %fileio_clear.exit

fileio_clear.exit:                                ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.ak = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ak, align 8, !tbaa !34 ; 4 uses
  %i.al = getelementptr i8, ptr %.val, i64 320
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35
  tail call void %i.am(ptr noundef nonnull %0) #11
  %i.an = load i32, ptr %.val, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp slt i32 %i.an, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.k

bb.k:                                             ; preds = %fileio_clear.exit
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %.val, align 8, !tbaa !33
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.l, %bb.k, %fileio_clear.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @fileio_repr(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr i8, ptr %.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.2, ptr noundef %i.d) #11
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.i = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 92600), ptr noundef nonnull %i.a) #11
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %Py_DECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.e, align 8, !tbaa !11
  %i.n = getelementptr i8, ptr %0, i64 20
  %.val23 = load i8, ptr %i.n, align 4            ; 7 uses
  %.not.i24 = trunc i8 %.val23 to i1
  br i1 %.not.i24, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = and i8 %.val23, 2
  %.not13.i = icmp eq i8 %i.o, 0
  %.str.9..str.8.i = select i1 %.not13.i, ptr @.str.9, ptr @.str.8
  br label %mode_string.exit

bb.g:                                             ; preds = %bb.e
  %i.p = and i8 %.val23, 8
  %.not8.i = icmp eq i8 %i.p, 0
  %i.q = and i8 %.val23, 2
  %.not9.i = icmp eq i8 %i.q, 0                   ; 2 uses
  br i1 %.not8.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.str.11..str.10.i = select i1 %.not9.i, ptr @.str.11, ptr @.str.10
  br label %mode_string.exit

bb.i:                                             ; preds = %bb.g
  br i1 %.not9.i, label %mode_string.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = and i8 %.val23, 4
  %.not10.i = icmp eq i8 %i.r, 0
  br i1 %.not10.i, label %mode_string.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = and i8 %.val23, 64
  %.not11.i = icmp eq i8 %i.s, 0
  %.str.13..str.12.i = select i1 %.not11.i, ptr @.str.13, ptr @.str.12
  br label %mode_string.exit

mode_string.exit:                                 ; preds = %bb.f, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi ptr [ %.str.9..str.8.i, %bb.f ], [ @.str.14, %bb.j ], [ %.str.11..str.10.i, %bb.h ], [ %.str.13..str.12.i, %bb.k ], [ @.str.15, %bb.i ]
  %.not21 = icmp slt i8 %.val23, 0
  %i.t = select i1 %.not21, ptr @.str.4, ptr @.str.5
  %i.u = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.3, ptr noundef %i.d, i32 noundef %i.m, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.t) #11
  br label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.d
  %i.v = call i32 @Py_ReprEnter(ptr noundef nonnull %0) #11 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.y = getelementptr i8, ptr %0, i64 20
  %.val22 = load i8, ptr %i.y, align 4            ; 7 uses
  %.not.i25 = trunc i8 %.val22 to i1
  br i1 %.not.i25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = and i8 %.val22, 2
  %.not13.i26 = icmp eq i8 %i.z, 0
  %.str.9..str.8.i27 = select i1 %.not13.i26, ptr @.str.9, ptr @.str.8
  br label %mode_string.exit35

bb.o:                                             ; preds = %bb.m
  %i.aa = and i8 %.val22, 8
  %.not8.i29 = icmp eq i8 %i.aa, 0
  %i.ab = and i8 %.val22, 2
  %.not9.i30 = icmp eq i8 %i.ab, 0                ; 2 uses
  br i1 %.not8.i29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.str.11..str.10.i31 = select i1 %.not9.i30, ptr @.str.11, ptr @.str.10
  br label %mode_string.exit35

bb.q:                                             ; preds = %bb.o
  br i1 %.not9.i30, label %mode_string.exit35, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = and i8 %.val22, 4
  %.not10.i32 = icmp eq i8 %i.ac, 0
  br i1 %.not10.i32, label %mode_string.exit35, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = and i8 %.val22, 64
  %.not11.i33 = icmp eq i8 %i.ad, 0
  %.str.13..str.12.i34 = select i1 %.not11.i33, ptr @.str.13, ptr @.str.12
  br label %mode_string.exit35

mode_string.exit35:                               ; preds = %bb.n, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i28 = phi ptr [ %.str.9..str.8.i27, %bb.n ], [ @.str.14, %bb.r ], [ %.str.11..str.10.i31, %bb.p ], [ %.str.13..str.12.i34, %bb.s ], [ @.str.15, %bb.q ]
  %.not = icmp slt i8 %.val22, 0
  %i.ae = select i1 %.not, ptr @.str.4, ptr @.str.5
  %i.af = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.6, ptr noundef %i.d, ptr noundef %i.x, ptr noundef nonnull %.0.i28, ptr noundef nonnull %i.ae) #11
  call void @Py_ReprLeave(ptr noundef nonnull %0) #11
  br label %bb.v

bb.t:                                             ; preds = %bb.l
  %i.ag = icmp sgt i32 %i.v, 0
  br i1 %i.ag, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ah = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !32
  %i.ai = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ah, ptr noundef nonnull @.str.7, ptr noundef %i.d) #11 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %mode_string.exit35
  %.018 = phi ptr [ %i.af, %mode_string.exit35 ], [ null, %bb.u ], [ null, %bb.t ] ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp slt i32 %i.ak, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !33
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.x, label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.x, %bb.w, %bb.v, %mode_string.exit, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.u, %mode_string.exit ], [ %.018, %bb.v ], [ %.018, %bb.w ], [ %.018, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.y

bb.y:                                             ; preds = %Py_DECREF.exit, %bb.b
  %.1 = phi ptr [ %i.h, %bb.b ], [ %.0, %Py_DECREF.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @fileio_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val22 = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %.val22, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val22, ptr noundef %2) #11 ; 2 uses
  %.not19 = icmp eq i32 %i.b, 0
  br i1 %.not19, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %i.d, ptr noundef %2) #11 ; 2 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fileio_clear(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp slt i32 %i.c, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !33
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_io_FileIO___init__(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [4 x ptr], align 16               ; 3 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !45  ; 3 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 16
  %.val68 = load i64, ptr %i.e, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %.val68, %bb.b ], [ 0, %bb.a ]
  %i.g = add i64 %i.f, %.val                      ; 2 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = add i64 %.val, -1
  %i.j = icmp ult i64 %i.i, 4
  %or.cond3 = select i1 %.not, i1 %i.j, i1 false
  %i.k = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.l = icmp ne ptr %i.k, null
  %or.cond7 = and i1 %i.l, %or.cond3
  br i1 %or.cond7, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.k, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @_io_FileIO___init__._parser, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not59 = icmp eq ptr %i.m, null
  br i1 %.not59, label %bb.by, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.k, %bb.c ] ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 8 uses
  %.not60 = icmp eq i64 %i.h, 0
  br i1 %.not60, label %bb.o, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 4 uses
  %.not61 = icmp eq ptr %i.q, null
  br i1 %.not61, label %.thread75, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val69 = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.s = getelementptr i8, ptr %.val69, i64 168
  %.val70 = load i64, ptr %i.s, align 8, !tbaa !50
  %i.t = and i64 %.val70, 268435456
  %.not62 = icmp eq i64 %i.t, 0
  br i1 %.not62, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.q) #11
  br label %bb.by

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.u = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c) #11 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread72, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #12
  %i.x = load i64, ptr %i.c, align 8, !tbaa !51
  %.not63 = icmp eq i64 %i.w, %i.x
  br i1 %.not63, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.63) #11
  br label %.thread72

bb.k:                                             ; preds = %bb.i
  %i.z = add i64 %i.g, -2                         ; 2 uses
  %.not64 = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br i1 %.not64, label %bb.o, label %.thread75

.thread72:                                        ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.by

.thread75:                                        ; preds = %bb.k, %bb.e
  %.147 = phi i64 [ %i.h, %bb.e ], [ %i.z, %bb.k ]
  %.043 = phi ptr [ @.str.60, %bb.e ], [ %i.u, %bb.k ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %.not65 = icmp eq ptr %i.ab, null
  br i1 %.not65, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread75
  %i.ac = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.ab) #11 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.by, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not66 = icmp eq i64 %.147, 1
  br i1 %.not66, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread75
  %.042 = phi i32 [ %i.ac, %bb.m ], [ 1, %.thread75 ]
  %i.ae = getelementptr i8, ptr %i.n, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %.thread, %bb.n
  %.144 = phi ptr [ %.043, %bb.n ], [ %.043, %bb.m ], [ @.str.60, %.thread ], [ %i.u, %bb.k ] ; 4 uses
  %.1 = phi i32 [ %.042, %bb.n ], [ %i.ac, %bb.m ], [ 1, %.thread ], [ 1, %bb.k ] ; 2 uses
  %.041 = phi ptr [ %i.af, %bb.n ], [ @_Py_NoneStruct, %bb.m ], [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.ag = getelementptr i8, ptr %0, i64 16        ; 11 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !11
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr i8, ptr %0, i64 20
  %i.ak = load i8, ptr %i.aj, align 4
  %.not.i = icmp slt i8 %i.ak, 0
  br i1 %.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.al = call fastcc i32 @internal_close(ptr noundef nonnull %0)
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %_io_FileIO___init___impl.exit, label %bb.s

bb.r:                                             ; preds = %bb.p
  store i32 -1, ptr %i.ag, align 8, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %i.an = getelementptr i8, ptr %i.o, i64 8
  %.val159.i = load ptr, ptr %i.an, align 8, !tbaa !34
  %.not174.i.a = icmp eq ptr %.val159.i, @PyBool_Type
  br i1 %.not174.i.a, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !32
  %i.ap = call i32 @PyErr_WarnEx(ptr noundef %i.ao, ptr noundef nonnull @.str.64, i64 noundef 1) #11
  %.not123.i = icmp eq i32 %i.ap, 0
  br i1 %.not123.i, label %bb.u, label %_io_FileIO___init___impl.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.aq = call i32 @PyLong_AsInt(ptr noundef nonnull %i.o) #11 ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %.critedge145.i

bb.v:                                             ; preds = %bb.u
  %i.as = call ptr @PyErr_Occurred() #11
  %.not124.i = icmp eq ptr %i.as, null
  br i1 %.not124.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.at = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.at, ptr noundef nonnull @.str.65) #11
  br label %_io_FileIO___init___impl.exit

bb.x:                                             ; preds = %bb.v
  call void @PyErr_Clear() #11
  %i.au = call i32 @PyUnicode_FSConverter(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #11
  %.not125.i = icmp eq i32 %i.au, 0
  br i1 %.not125.i, label %_io_FileIO___init___impl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  br label %.critedge145.i

.critedge145.i:                                   ; preds = %bb.y, %bb.u
  %.0101.i = phi ptr [ %i.aw, %bb.y ], [ null, %bb.u ]
  %i.ax = load i8, ptr %.144, align 1, !tbaa !33  ; 2 uses
  %.not126180.i = icmp eq i8 %i.ax, 0
  br i1 %.not126180.i, label %.loopexit175.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge145.i
  %i.ay = getelementptr i8, ptr %0, i64 20        ; 16 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.al, %.lr.ph.i
  %i.az = phi i8 [ %i.ax, %.lr.ph.i ], [ %i.br, %bb.al ]
  %.0102184.i = phi ptr [ %.144, %.lr.ph.i ], [ %i.ba, %bb.al ]
  %.0104183.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.al ] ; 6 uses
  %.0105182.i = phi i32 [ 0, %.lr.ph.i ], [ %.1106.i, %bb.al ] ; 6 uses
  %.0107181.i = phi i32 [ 0, %.lr.ph.i ], [ %.1108.i, %bb.al ] ; 6 uses
  %i.ba = getelementptr i8, ptr %.0102184.i, i64 1 ; 2 uses
  switch i8 %i.az, label %bb.ak [
    i8 120, label %bb.aa
    i8 114, label %bb.ac
    i8 119, label %bb.ae
    i8 97, label %bb.ag
    i8 98, label %bb.al
    i8 43, label %bb.ai
  ]

bb.aa:                                            ; preds = %bb.z
  %.not141.i = icmp eq i32 %.0104183.i, 0
  br i1 %.not141.i, label %bb.ab, label %.loopexit175.i

.loopexit175.i:                                   ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %._crit_edge.i, %.critedge145.i
  %i.bb = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.bb, ptr noundef nonnull @.str.66) #11
  br label %.thread173.i

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load i8, ptr %i.ay, align 4
  %i.bd = or i8 %i.bc, 5
  store i8 %i.bd, ptr %i.ay, align 4
  %i.be = or i32 %.0107181.i, 192
  br label %bb.al

bb.ac:                                            ; preds = %bb.z
  %.not140.i = icmp eq i32 %.0104183.i, 0
  br i1 %.not140.i, label %bb.ad, label %.loopexit175.i

bb.ad:                                            ; preds = %bb.ac
  %i.bf = load i8, ptr %i.ay, align 4
  %i.bg = or i8 %i.bf, 2
  store i8 %i.bg, ptr %i.ay, align 4
  br label %bb.al

bb.ae:                                            ; preds = %bb.z
  %.not139.i = icmp eq i32 %.0104183.i, 0
  br i1 %.not139.i, label %bb.af, label %.loopexit175.i

bb.af:                                            ; preds = %bb.ae
  %i.bh = load i8, ptr %i.ay, align 4
  %i.bi = or i8 %i.bh, 68
  store i8 %i.bi, ptr %i.ay, align 4
  %i.bj = or i32 %.0107181.i, 576
  br label %bb.al

bb.ag:                                            ; preds = %bb.z
  %.not138.i = icmp eq i32 %.0104183.i, 0
  br i1 %.not138.i, label %bb.ah, label %.loopexit175.i

bb.ah:                                            ; preds = %bb.ag
  %i.bk = load i8, ptr %i.ay, align 4
  %i.bl = or i8 %i.bk, 12
  store i8 %i.bl, ptr %i.ay, align 4
  %i.bm = or i32 %.0107181.i, 1088
  br label %bb.al

bb.ai:                                            ; preds = %bb.z
  %.not137.i = icmp eq i32 %.0105182.i, 0
  br i1 %.not137.i, label %bb.aj, label %.loopexit175.i

bb.aj:                                            ; preds = %bb.ai
  %i.bn = load i8, ptr %i.ay, align 4
  %i.bo = or i8 %i.bn, 6
  store i8 %i.bo, ptr %i.ay, align 4
  br label %bb.al

bb.ak:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  %i.bq = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bp, ptr noundef nonnull @.str.67, ptr noundef nonnull %.144) #11 ; 0 uses
  br label %.thread173.i

bb.al:                                            ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z
  %.1108.i = phi i32 [ %i.be, %bb.ab ], [ %.0107181.i, %bb.ad ], [ %i.bj, %bb.af ], [ %i.bm, %bb.ah ], [ %.0107181.i, %bb.z ], [ %.0107181.i, %bb.aj ] ; 2 uses
  %.1106.i = phi i32 [ %.0105182.i, %bb.ab ], [ %.0105182.i, %bb.ad ], [ %.0105182.i, %bb.af ], [ %.0105182.i, %bb.ah ], [ %.0105182.i, %bb.z ], [ 1, %bb.aj ]
  %.1.i = phi i32 [ 1, %bb.ab ], [ 1, %bb.ad ], [ 1, %bb.af ], [ 1, %bb.ah ], [ %.0104183.i, %bb.z ], [ %.0104183.i, %bb.aj ] ; 2 uses
  %i.br = load i8, ptr %i.ba, align 1, !tbaa !33  ; 2 uses
  %.not126.i = icmp eq i8 %i.br, 0
  br i1 %.not126.i, label %._crit_edge.i, label %bb.z, !llvm.loop !52

._crit_edge.i:                                    ; preds = %bb.al
  %3 = trunc nuw i32 %.1.i to i1
  br i1 %3, label %bb.am, label %.loopexit175.i

bb.am:                                            ; preds = %._crit_edge.i
  %i.bs = load i8, ptr %i.ay, align 4             ; 2 uses
  %i.bt = and i8 %i.bs, 2
  %.not128.i = icmp eq i8 %i.bt, 0
  %i.bu = and i8 %i.bs, 6
  %or.cond.not.i = icmp eq i8 %i.bu, 6
  %i.bv = zext i1 %.not128.i to i32
  %.2.v.i = select i1 %or.cond.not.i, i32 2, i32 %i.bv
  %.2.i = or i32 %.1108.i, %.2.v.i
  %i.bw = or i32 %.2.i, 524288                    ; 3 uses
  %i.bx = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.o, ptr noundef nonnull %.144, i32 noundef %i.bw) #11
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %.thread173.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bz = icmp sgt i32 %i.aq, -1                  ; 2 uses
  br i1 %i.bz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 %i.aq, ptr %i.ag, align 8, !tbaa !11
  %i.ca = trunc i32 %.1 to i8
  %i.cb = load i8, ptr %i.ay, align 4
  %i.cc = shl i8 %i.ca, 7
  %i.cd = and i8 %i.cb, 127
  %i.ce = or disjoint i8 %i.cd, %i.cc
  store i8 %i.ce, ptr %i.ay, align 4
  br label %bb.bf

bb.ap:                                            ; preds = %bb.an
  %i.cf = load i8, ptr %i.ay, align 4
  %i.cg = or i8 %i.cf, -128
  store i8 %i.cg, ptr %i.ay, align 4
  %.not131.i = icmp eq i32 %.1, 0
  br i1 %.not131.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ch = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.ch, ptr noundef nonnull @.str.70) #11
  br label %.thread173.i

bb.ar:                                            ; preds = %bb.ap
  %i.ci = tail call ptr @__errno_location() #13   ; 2 uses
  store i32 0, ptr %i.ci, align 4, !tbaa !7
  %i.cj = icmp eq ptr %.041, @_Py_NoneStruct
  br i1 %i.cj, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %bb.ar, %bb.at
  %i.ck = call ptr @PyEval_SaveThread() #11
  %i.cl = call i32 (ptr, i32, ...) @open64(ptr noundef %.0101.i, i32 noundef %i.bw, i32 noundef 438) #11
  store i32 %i.cl, ptr %i.ag, align 8, !tbaa !11
  call void @PyEval_RestoreThread(ptr noundef %i.ck) #11
  %i.cm = load i32, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.as, label %.loopexit.i

bb.as:                                            ; preds = %.preheader.i
  %i.co = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.cp = icmp eq i32 %i.co, 4
  br i1 %i.cp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.cq = call i32 @PyErr_CheckSignals() #11
  %.not134.i = icmp eq i32 %i.cq, 0
  br i1 %.not134.i, label %.preheader.i, label %.thread173.i, !llvm.loop !54

bb.au:                                            ; preds = %bb.as
  %i.cr = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.cs = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.cr, ptr noundef nonnull %i.o) #11 ; 0 uses
  br label %.thread173.i

bb.av:                                            ; preds = %bb.ar
  %i.ct = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %.041, ptr noundef nonnull @.str.71, ptr noundef nonnull %i.o, i32 noundef %i.bw) #11 ; 9 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.thread173.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cv = getelementptr i8, ptr %i.ct, i64 8
  %.val.i = load ptr, ptr %i.cv, align 8, !tbaa !34
  %i.cw = getelementptr i8, ptr %.val.i, i64 168
  %.val158.i = load i64, ptr %i.cw, align 8, !tbaa !50
  %i.cx = and i64 %.val158.i, 16777216
  %.not132.i = icmp eq i64 %i.cx, 0
  br i1 %.not132.i, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.cy = load i32, ptr %i.ct, align 8, !tbaa !33 ; 2 uses
  %.not.i153.i = icmp slt i32 %i.cy, 0
  br i1 %.not.i153.i, label %Py_DECREF.exit154.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.cz, ptr %i.ct, align 8, !tbaa !33
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.az, label %Py_DECREF.exit154.i

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.ct) #11
  br label %Py_DECREF.exit154.i

Py_DECREF.exit154.i:                              ; preds = %bb.az, %bb.ay, %bb.ax
  %i.db = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.db, ptr noundef nonnull @.str.72) #11
  br label %.thread173.i

bb.ba:                                            ; preds = %bb.aw
  %i.dc = call i32 @PyLong_AsInt(ptr noundef nonnull %i.ct) #11 ; 2 uses
  store i32 %i.dc, ptr %i.ag, align 8, !tbaa !11
  %i.dd = load i32, ptr %i.ct, align 8, !tbaa !33 ; 2 uses
  %.not.i151.i = icmp slt i32 %i.dd, 0
  br i1 %.not.i151.i, label %Py_DECREF.exit152.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.de = add nsw i32 %i.dd, -1                   ; 2 uses
  store i32 %i.de, ptr %i.ct, align 8, !tbaa !33
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.bc, label %Py_DECREF.exit152thread-pre-split.i

bb.bc:                                            ; preds = %bb.bb
  call void @_Py_Dealloc(ptr noundef nonnull %i.ct) #11
  br label %Py_DECREF.exit152thread-pre-split.i

Py_DECREF.exit152thread-pre-split.i:              ; preds = %bb.bc, %bb.bb
  %.pr.i = load i32, ptr %i.ag, align 8, !tbaa !11
  br label %Py_DECREF.exit152.i

Py_DECREF.exit152.i:                              ; preds = %Py_DECREF.exit152thread-pre-split.i, %bb.ba
  %i.dg = phi i32 [ %.pr.i, %Py_DECREF.exit152thread-pre-split.i ], [ %i.dc, %bb.ba ] ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %bb.bd, label %.loopexit.i

bb.bd:                                            ; preds = %Py_DECREF.exit152.i
  %i.di = call ptr @PyErr_Occurred() #11
  %.not133.i = icmp eq ptr %i.di, null
  br i1 %.not133.i, label %bb.be, label %.thread173.i

bb.be:                                            ; preds = %bb.bd
  %i.dj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  %i.dk = load i32, ptr %i.ag, align 8, !tbaa !11
  %i.dl = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dj, ptr noundef nonnull @.str.73, i32 noundef %i.dk) #11 ; 0 uses
  br label %.thread173.i

.loopexit.i:                                      ; preds = %.preheader.i, %Py_DECREF.exit152.i
  %i.dm = phi i32 [ %i.dg, %Py_DECREF.exit152.i ], [ %i.cm, %.preheader.i ]
  %.0113.i = phi ptr [ null, %Py_DECREF.exit152.i ], [ @_Py_open_cloexec_works, %.preheader.i ]
  %i.dn = call i32 @_Py_set_inheritable(i32 noundef %i.dm, i32 noundef 0, ptr noundef %.0113.i) #11
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %.critedge.thread169.i, label %bb.bf

bb.bf:                                            ; preds = %.loopexit.i, %bb.ao
  %i.dp = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !30
  call void @PyMem_Free(ptr noundef %i.dq) #11
  %i.dr = call ptr @PyMem_Malloc(i64 noundef 144) #11 ; 2 uses
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !30
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dt = call ptr @PyErr_NoMemory() #11          ; 0 uses
  br label %.critedge.i

bb.bh:                                            ; preds = %bb.bf
  %i.du = call ptr @PyEval_SaveThread() #11
  %i.dv = load i32, ptr %i.ag, align 8, !tbaa !11
  %i.dw = load ptr, ptr %i.dp, align 8, !tbaa !30
  %i.dx = call i32 @_Py_fstat_noraise(i32 noundef %i.dv, ptr noundef %i.dw) #11
  call void @PyEval_RestoreThread(ptr noundef %i.du) #11
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.dz = tail call ptr @__errno_location() #13
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !7
  %i.eb = icmp eq i32 %i.ea, 9
  br i1 %i.eb, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ec = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.ed = call ptr @PyErr_SetFromErrno(ptr noundef %i.ec) #11 ; 0 uses
  br label %.critedge.i

bb.bk:                                            ; preds = %bb.bi
  %i.ee = load ptr, ptr %i.dp, align 8, !tbaa !30
  call void @PyMem_Free(ptr noundef %i.ee) #11
  store ptr null, ptr %i.dp, align 8, !tbaa !30
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bh
  %i.ef = load ptr, ptr %i.dp, align 8, !tbaa !30
  %i.eg = getelementptr i8, ptr %i.ef, i64 24
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !55
  %i.ei = and i32 %i.eh, 61440
  %i.ej = icmp eq i32 %i.ei, 16384
  br i1 %i.ej, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ek = tail call ptr @__errno_location() #13
  store i32 21, ptr %i.ek, align 4, !tbaa !7
  %i.el = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.em = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.el, ptr noundef nonnull %i.o) #11 ; 0 uses
  br label %.critedge.i

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.en = call i32 @PyObject_SetAttr(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 92600), ptr noundef nonnull %i.o) #11
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %.critedge.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ep = load i8, ptr %i.ay, align 4
  %i.eq = and i8 %i.ep, 8
  %.not136.i = icmp eq i8 %i.eq, 0
  br i1 %.not136.i, label %Py_DECREF.exit150.thread.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.er = call fastcc ptr @portable_lseek(ptr noundef nonnull %0, ptr noundef null, i32 noundef 2, i1 noundef zeroext true) ; 4 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.critedge.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.et = load i32, ptr %i.er, align 8, !tbaa !33 ; 2 uses
  %.not.i149.i = icmp slt i32 %i.et, 0
  br i1 %.not.i149.i, label %Py_DECREF.exit150.thread.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.er, align 8, !tbaa !33
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.bs, label %Py_DECREF.exit150.thread.i

bb.bs:                                            ; preds = %bb.br
  call void @_Py_Dealloc(ptr noundef nonnull %i.er) #11
  br label %Py_DECREF.exit150.thread.i

.critedge.i:                                      ; preds = %bb.bp, %bb.bn, %bb.bm, %bb.bj, %bb.bg
  br i1 %i.bz, label %.thread173.i, label %.critedge.thread169.i

.thread173.i:                                     ; preds = %bb.at, %.critedge.i, %bb.be, %bb.bd, %Py_DECREF.exit154.i, %bb.av, %bb.au, %bb.aq, %bb.am, %bb.ak, %.loopexit175.i
  store i32 -1, ptr %i.ag, align 8, !tbaa !11
  br label %bb.bu

.critedge.thread169.i:                            ; preds = %.critedge.i, %.loopexit.i
  %.pr172.i = load i32, ptr %i.ag, align 8, !tbaa !11
  %i.ew = icmp sgt i32 %.pr172.i, -1
  br i1 %i.ew, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.critedge.thread169.i
  %i.ex = call ptr @PyErr_GetRaisedException() #11
  %i.ey = call fastcc i32 @internal_close(ptr noundef nonnull %0) ; 0 uses
  call void @_PyErr_ChainExceptions1(ptr noundef %i.ex) #11
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.critedge.thread169.i, %.thread173.i
  %i.ez = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !30
  call void @PyMem_Free(ptr noundef %i.fa) #11
  store ptr null, ptr %i.ez, align 8, !tbaa !30
  br label %Py_DECREF.exit150.thread.i

Py_DECREF.exit150.thread.i:                       ; preds = %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bo
  %.0103.i = phi i32 [ -1, %bb.bu ], [ 0, %bb.bo ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.bs ] ; 4 uses
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !32  ; 4 uses
  %.not143.i = icmp eq ptr %i.fb, null
  br i1 %.not143.i, label %_io_FileIO___init___impl.exit, label %bb.bv

bb.bv:                                            ; preds = %Py_DECREF.exit150.thread.i
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !33 ; 2 uses
  %.not.i.i = icmp slt i32 %i.fc, 0
  br i1 %.not.i.i, label %_io_FileIO___init___impl.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fd = add nsw i32 %i.fc, -1                   ; 2 uses
  store i32 %i.fd, ptr %i.fb, align 8, !tbaa !33
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.bx, label %_io_FileIO___init___impl.exit

bb.bx:                                            ; preds = %bb.bw
  call void @_Py_Dealloc(ptr noundef nonnull %i.fb) #11
  br label %_io_FileIO___init___impl.exit

_io_FileIO___init___impl.exit:                    ; preds = %bb.q, %bb.t, %bb.w, %bb.x, %Py_DECREF.exit150.thread.i, %bb.bv, %bb.bw, %bb.bx
  %.0.i = phi i32 [ -1, %bb.w ], [ -1, %bb.q ], [ -1, %bb.x ], [ -1, %bb.t ], [ %.0103.i, %Py_DECREF.exit150.thread.i ], [ %.0103.i, %bb.bv ], [ %.0103.i, %bb.bw ], [ %.0103.i, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.by

bb.by:                                            ; preds = %.thread72, %bb.g, %_io_FileIO___init___impl.exit, %bb.d, %bb.l
  %.048 = phi i32 [ -1, %bb.l ], [ %.0.i, %_io_FileIO___init___impl.exit ], [ -1, %.thread72 ], [ -1, %bb.g ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal ptr @fileio_new(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 0) #11 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 16
  store i32 -1, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %i.c, i64 20
  %i.g = getelementptr i8, ptr %i.c, i64 24
  store ptr null, ptr %i.g, align 8, !tbaa !30
  store i8 -80, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %i.c, i64 32
  store ptr null, ptr %i.h, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @_PyIOBase_finalize(ptr noundef) local_unnamed_addr #3

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #3

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #3

declare i32 @PyObject_GetOptionalAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @Py_ReprEnter(ptr noundef) local_unnamed_addr #3

declare void @Py_ReprLeave(ptr noundef) local_unnamed_addr #3

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_read(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 -1, ptr %i.b, align 8, !tbaa !51
  %i.c = icmp eq ptr %4, null
  %i.d = icmp ult i64 %3, 2
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_io_FileIO_read._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_io_FileIO_read_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]
  %i.h = icmp slt i64 %3, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.j = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef %i.i, ptr noundef nonnull %i.b) #11
  %.not20 = icmp eq i32 %i.j, 0
  br i1 %.not20, label %_io_FileIO_read_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.b, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.thread
  %i.k = phi i64 [ %.pre, %._crit_edge ], [ -1, %.thread ] ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !11
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_read_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 20
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, 2
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %1, i64 888
  %.val.i = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.t = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.u = getelementptr i8, ptr %.val.val.i, i64 8
  %.val22.i = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.v = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val22.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34) #11
  br label %_io_FileIO_read_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.w = icmp slt i64 %i.k, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = call fastcc ptr @_io_FileIO_readall_impl(ptr noundef nonnull readonly %0, ptr noundef readonly %1)
  br label %_io_FileIO_read_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.y = call ptr @PyBytesWriter_Create(i64 noundef %i.k) #11 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_io_FileIO_read_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.y) #11
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !11
  %i.ac = call i64 @_Py_read(i32 noundef %i.ab, ptr noundef %i.aa, i64 noundef %i.k) #11 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call ptr @__errno_location() #13
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.y) #11
  %i.ag = icmp eq i32 %i.af, 11
  br i1 %i.ag, label %bb.m, label %_io_FileIO_read_impl.exit

bb.m:                                             ; preds = %bb.l
  call void @PyErr_Clear() #11
  br label %_io_FileIO_read_impl.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.y, i64 noundef %i.ac) #11
  br label %_io_FileIO_read_impl.exit

_io_FileIO_read_impl.exit:                        ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.e, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ %i.x, %bb.i ], [ %i.v, %bb.g ], [ null, %bb.j ], [ %i.ah, %bb.n ], [ @_Py_NoneStruct, %bb.m ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_readall(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) #1 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !45
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.38) #11
  br label %bb.f

end_hunk_0
begin_hunk_1_@_io_FileIO_seek:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !32
  %i.d = icmp slt i64 %2, 2
  br i1 %i.d, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = tail call i32 @PyLong_AsInt(ptr noundef %i.f) #11 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @PyErr_Occurred() #11
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %bb.f, label %_io_FileIO_seek_impl.exit

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.e ], [ %i.g, %bb.d ]
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_seek_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.n = tail call fastcc ptr @portable_lseek(ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef %.0, i1 noundef zeroext false)
  br label %_io_FileIO_seek_impl.exit

_io_FileIO_seek_impl.exit:                        ; preds = %bb.h, %bb.g, %bb.e, %bb.b
  %.011 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ %i.n, %bb.h ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_tell(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_tell_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyEval_SaveThread() #11
  %i.f = tail call i64 @lseek64(i32 noundef %i.b, i64 noundef 0, i32 noundef 1) #11 ; 3 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.e) #11
  %i.g = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.h = load i8, ptr %i.g, align 4               ; 2 uses
  %.mask.i.i = and i8 %i.h, 32
  %.not17.i.i = icmp eq i8 %.mask.i.i, 0
  br i1 %.not17.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp sgt i64 %i.f, -1
  %i.j = select i1 %i.i, i8 16, i8 0
  %i.k = and i8 %i.h, -49
  %i.l = or disjoint i8 %i.k, %i.j
  store i8 %i.l, ptr %i.g, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.o = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.n) #11
  br label %_io_FileIO_tell_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyLong_FromLong(i64 noundef %i.f) #11
  br label %_io_FileIO_tell_impl.exit

_io_FileIO_tell_impl.exit:                        ; preds = %bb.b, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.b ], [ %i.p, %bb.g ], [ %i.o, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_truncate(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq ptr %4, null
  %i.c = icmp ult i64 %3, 2
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_io_FileIO_truncate._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_io_FileIO_truncate_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = icmp slt i64 %3, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.0 = phi ptr [ @_Py_NoneStruct, %.thread ], [ %i.h, %bb.c ] ; 5 uses
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !11   ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_truncate_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, 4
  %.not.i.a = icmp eq i8 %i.o, 0
  br i1 %.not.i.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %1, i64 888
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.q = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.r = getelementptr i8, ptr %.val.val.i, i64 8
  %.val31.i = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.s = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val31.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.41) #11
  br label %_io_FileIO_truncate_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %.0, @_Py_NoneStruct
  br i1 %i.t, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.u = call ptr @PyEval_SaveThread() #11
  %i.v = call i64 @lseek64(i32 noundef %i.j, i64 noundef 0, i32 noundef 1) #11 ; 3 uses
  call void @PyEval_RestoreThread(ptr noundef %i.u) #11
  %i.w = load i8, ptr %i.m, align 4               ; 2 uses
  %.mask.i.i = and i8 %i.w, 32
  %.not17.i.i = icmp eq i8 %.mask.i.i, 0
  br i1 %.not17.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.v, -1
  %i.y = select i1 %i.x, i8 16, i8 0
  %i.z = and i8 %i.w, -49
  %i.aa = or disjoint i8 %i.z, %i.y
  store i8 %i.aa, ptr %i.m, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = icmp slt i64 %i.v, 0
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.ad = call ptr @PyErr_SetFromErrno(ptr noundef %i.ac) #11
  br label %portable_lseek.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ae = call ptr @PyLong_FromLong(i64 noundef %i.v) #11
  br label %portable_lseek.exit.i

portable_lseek.exit.i:                            ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %i.ae, %bb.m ], [ %i.ad, %bb.l ] ; 2 uses
  %i.af = icmp eq ptr %.0.i.i, null
  br i1 %i.af, label %_io_FileIO_truncate_impl.exit, label %Py_INCREF.exit.i

bb.n:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %.0, align 8, !tbaa !33   ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, -1073741825
  br i1 %i.ah, label %Py_INCREF.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = add nuw i32 %i.ag, 1
  store i32 %i.ai, ptr %.0, align 8, !tbaa !33
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.o, %bb.n, %portable_lseek.exit.i
  %.020.i = phi ptr [ %.0.i.i, %portable_lseek.exit.i ], [ %.0, %bb.n ], [ %.0, %bb.o ] ; 9 uses
  %i.aj = call i64 @PyLong_AsLong(ptr noundef nonnull %.020.i) #11
  %i.ak = call ptr @PyErr_Occurred() #11
  %.not25.i.a = icmp eq ptr %i.ak, null
  br i1 %.not25.i.a, label %bb.s, label %bb.p

bb.p:                                             ; preds = %Py_INCREF.exit.i
  %i.al = load i32, ptr %.020.i, align 8, !tbaa !33 ; 2 uses
  %.not.i27.i = icmp slt i32 %i.al, 0
  br i1 %.not.i27.i, label %_io_FileIO_truncate_impl.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %.020.i, align 8, !tbaa !33
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.r, label %_io_FileIO_truncate_impl.exit

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %.020.i) #11
  br label %_io_FileIO_truncate_impl.exit

bb.s:                                             ; preds = %Py_INCREF.exit.i
  %i.ao = call ptr @PyEval_SaveThread() #11
  %i.ap = tail call ptr @__errno_location() #13
  store i32 0, ptr %i.ap, align 4, !tbaa !7
  %i.aq = call i32 @ftruncate64(i32 noundef %i.j, i64 noundef %i.aj) #11
  call void @PyEval_RestoreThread(ptr noundef %i.ao) #11
  %.not26.i.a = icmp eq i32 %i.aq, 0
  br i1 %.not26.i.a, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.as = call ptr @PyErr_SetFromErrno(ptr noundef %i.ar) #11 ; 0 uses
  %i.at = load i32, ptr %.020.i, align 8, !tbaa !33 ; 2 uses
  %.not.i.i = icmp slt i32 %i.at, 0
  br i1 %.not.i.i, label %_io_FileIO_truncate_impl.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %.020.i, align 8, !tbaa !33
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.v, label %_io_FileIO_truncate_impl.exit

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %.020.i) #11
  br label %_io_FileIO_truncate_impl.exit

bb.w:                                             ; preds = %bb.s
  %i.aw = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %.not27.i = icmp eq ptr %i.ax, null
  br i1 %.not27.i, label %_io_FileIO_truncate_impl.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @PyMem_Free(ptr noundef nonnull %i.ax) #11
  store ptr null, ptr %i.aw, align 8, !tbaa !30
  br label %_io_FileIO_truncate_impl.exit

_io_FileIO_truncate_impl.exit:                    ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %portable_lseek.exit.i, %bb.g, %bb.e, %bb.b
  %.019 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ %i.s, %bb.g ], [ %.020.i, %bb.w ], [ null, %bb.r ], [ null, %portable_lseek.exit.i ], [ %.020.i, %bb.x ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.019
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_close(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !45
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.42) #11
  br label %_io_FileIO_close_impl.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr i8, ptr %1, i64 888
  %.val8 = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr i8, ptr %.val8, i64 24
  %.val8.val = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr i8, ptr %.val8.val, i64 32
  %.val8.val.val = load ptr, ptr %i.f, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %.val8.val.val, ptr %i.a, align 16, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !32
  %i.h = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #11 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.i = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %.not.i = icmp slt i8 %i.j, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 16
  store i32 -1, ptr %i.k, align 8, !tbaa !11
  br label %_io_FileIO_close_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.l = icmp eq ptr %i.h, null                   ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = call ptr @PyErr_GetRaisedException() #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.017.i = phi ptr [ %i.m, %bb.h ], [ null, %bb.g ]
  %i.n = getelementptr i8, ptr %0, i64 21
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %.not26.i = icmp eq i8 %i.o, 0
  br i1 %.not26.i, label %Py_DECREF.exit29.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !11
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.k, label %fileio_dealloc_warn.exit.i

bb.k:                                             ; preds = %bb.j
  %i.s = load i8, ptr %i.i, align 4
  %.not.i31.i = icmp slt i8 %i.s, 0
  br i1 %.not.i31.i, label %bb.l, label %fileio_dealloc_warn.exit.i

bb.l:                                             ; preds = %bb.k
  %i.t = call ptr @PyErr_GetRaisedException() #11
  %i.u = call i32 (ptr, i64, ptr, ...) @PyErr_ResourceWarning(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull %0) #11
  %.not7.i.i = icmp eq i32 %i.u, 0
  br i1 %.not7.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr @PyExc_Warning, align 8, !tbaa !32
  %i.w = call i32 @PyErr_ExceptionMatches(ptr noundef %i.v) #11
  %.not8.i.i = icmp eq i32 %i.w, 0
  br i1 %.not8.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.44, ptr noundef nonnull %0) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  call void @PyErr_SetRaisedException(ptr noundef %i.t) #11
  br label %fileio_dealloc_warn.exit.i

fileio_dealloc_warn.exit.i:                       ; preds = %bb.o, %bb.k, %bb.j
  %i.x = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !33 ; 2 uses
  %.not.i28.i = icmp slt i32 %i.x, 0
  br i1 %.not.i28.i, label %Py_DECREF.exit29.i, label %bb.p

bb.p:                                             ; preds = %fileio_dealloc_warn.exit.i
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr @_Py_NoneStruct, align 8, !tbaa !33
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.q, label %Py_DECREF.exit29.i

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #11
  br label %Py_DECREF.exit29.i

Py_DECREF.exit29.i:                               ; preds = %bb.q, %bb.p, %fileio_dealloc_warn.exit.i, %bb.i
  %i.aa = call fastcc i32 @internal_close(ptr noundef nonnull %0)
  br i1 %i.l, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %Py_DECREF.exit29.i
  call void @_PyErr_ChainExceptions1(ptr noundef %.017.i) #11
  br label %_io_FileIO_close_impl.exit

.thread.i:                                        ; preds = %Py_DECREF.exit29.i
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.thread1.i, label %_io_FileIO_close_impl.exit

.thread1.i:                                       ; preds = %.thread.i
  %i.ac = load i32, ptr %i.h, align 8, !tbaa !33  ; 2 uses
  %.not.i.i = icmp slt i32 %i.ac, 0
  br i1 %.not.i.i, label %_io_FileIO_close_impl.exit, label %bb.s

bb.s:                                             ; preds = %.thread1.i
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.h, align 8, !tbaa !33
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.t, label %_io_FileIO_close_impl.exit

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #11
  br label %_io_FileIO_close_impl.exit

_io_FileIO_close_impl.exit:                       ; preds = %bb.t, %bb.s, %.thread1.i, %.thread.i, %bb.r, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.h, %bb.f ], [ null, %bb.r ], [ %i.h, %.thread.i ], [ null, %bb.t ], [ null, %.thread1.i ], [ null, %bb.s ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_seekable(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_seekable_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.f = load i8, ptr %i.e, align 4
  %.mask.i = and i8 %i.f, 32
  %.not.i = icmp eq i8 %.mask.i, 0
  br i1 %.not.i, label %Py_DECREF.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyEval_SaveThread() #11
  %i.h = tail call i64 @lseek64(i32 noundef %i.b, i64 noundef 0, i32 noundef 1) #11 ; 3 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.g) #11
  %i.i = load i8, ptr %i.e, align 4               ; 2 uses
  %.mask.i.i = and i8 %i.i, 32
  %.not17.i.i = icmp eq i8 %.mask.i.i, 0
  br i1 %.not17.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp sgt i64 %i.h, -1
  %i.k = select i1 %i.j, i8 16, i8 0
  %i.l = and i8 %i.i, -49
  %i.m = or disjoint i8 %i.l, %i.k
  store i8 %i.m, ptr %i.e, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = icmp slt i64 %i.h, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.p = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.o) #11
  br label %portable_lseek.exit.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call ptr @PyLong_FromLong(i64 noundef %i.h) #11
  br label %portable_lseek.exit.i

portable_lseek.exit.i:                            ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.q, %bb.h ], [ %i.p, %bb.g ] ; 4 uses
  %i.r = icmp eq ptr %.0.i.i, null
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %portable_lseek.exit.i
  tail call void @PyErr_Clear() #11
  br label %Py_DECREF.exit.i

bb.j:                                             ; preds = %portable_lseek.exit.i
  %i.s = load i32, ptr %.0.i.i, align 8, !tbaa !33 ; 2 uses
  %.not.i.i = icmp slt i32 %i.s, 0
  br i1 %.not.i.i, label %Py_DECREF.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %.0.i.i, align 8, !tbaa !33
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %Py_DECREF.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #11
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.c
  %i.v = load i8, ptr %i.e, align 4
  %i.w = shl i8 %i.v, 2
  %i.x = ashr i8 %i.w, 6
  %i.y = sext i8 %i.x to i64
  %i.z = tail call ptr @PyBool_FromLong(i64 noundef %i.y) #11
  br label %_io_FileIO_seekable_impl.exit

_io_FileIO_seekable_impl.exit:                    ; preds = %bb.b, %Py_DECREF.exit.i
  %.0.i = phi ptr [ null, %bb.b ], [ %i.z, %Py_DECREF.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_readable(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_readable_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i8, ptr %i.e, align 4
  %i.g = lshr i8 %i.f, 1
  %i.h = and i8 %i.g, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = tail call ptr @PyBool_FromLong(i64 noundef %i.i) #11
  br label %_io_FileIO_readable_impl.exit

_io_FileIO_readable_impl.exit:                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_writable(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_writable_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i8, ptr %i.e, align 4
  %i.g = lshr i8 %i.f, 2
  %i.h = and i8 %i.g, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = tail call ptr @PyBool_FromLong(i64 noundef %i.i) #11
  br label %_io_FileIO_writable_impl.exit

_io_FileIO_writable_impl.exit:                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_fileno(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i32, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.b = icmp slt i32 %.val, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_fileno_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %.val to i64
  %i.e = tail call ptr @PyLong_FromLong(i64 noundef %i.d) #11
  br label %_io_FileIO_fileno_impl.exit

_io_FileIO_fileno_impl.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_isatty(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_isatty_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyEval_SaveThread() #11
  %i.f = load i32, ptr %i.a, align 8, !tbaa !11
  %i.g = tail call i32 @isatty(i32 noundef %i.f) #11
  %i.h = sext i32 %i.g to i64
  tail call void @PyEval_RestoreThread(ptr noundef %i.e) #11
  %i.i = tail call ptr @PyBool_FromLong(i64 noundef %i.h) #11
  br label %_io_FileIO_isatty_impl.exit

_io_FileIO_isatty_impl.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_isatty_open_only(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 8192
  br i1 %i.f, label %bb.c, label %_io_FileIO_isatty_impl.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !11
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_isatty_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.k = tail call ptr @PyEval_SaveThread() #11
  %i.l = load i32, ptr %i.g, align 8, !tbaa !11
  %i.m = tail call i32 @isatty(i32 noundef %i.l) #11
  %i.n = sext i32 %i.m to i64
  tail call void @PyEval_RestoreThread(ptr noundef %i.k) #11
  %i.o = tail call ptr @PyBool_FromLong(i64 noundef %i.n) #11
  br label %_io_FileIO_isatty_impl.exit

_io_FileIO_isatty_impl.exit:                      ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ @_Py_FalseStruct, %bb.b ], [ null, %bb.d ], [ %i.o, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @fileio_dealloc_warn(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %.not = icmp slt i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @PyErr_GetRaisedException() #11
  %i.g = tail call i32 (ptr, i64, ptr, ...) @PyErr_ResourceWarning(ptr noundef %1, i64 noundef 1, ptr noundef nonnull @.str.43, ptr noundef %1) #11
  %.not7 = icmp eq i32 %i.g, 0
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_Warning, align 8, !tbaa !32
  %i.i = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.h) #11
  %.not8 = icmp eq i32 %i.i, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.44, ptr noundef nonnull %0) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  tail call void @PyErr_SetRaisedException(ptr noundef %i.f) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a
  ret ptr @_Py_NoneStruct
}

declare ptr @_PyIOBase_cannot_pickle(ptr noundef, ptr noundef) #3

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_Py_convert_optional_to_ssize_t(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_io_FileIO_readall_impl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.35) #11
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 2
  %.not.a = icmp eq i8 %i.g, 0
  br i1 %.not.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.i = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.j = getelementptr i8, ptr %.val.val, i64 8
  %.val62 = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val62, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34) #11
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %.not59 = icmp eq ptr %i.m, null
  br i1 %.not59, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.m, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !76   ; 5 uses
  %i.p = add i64 %i.o, -9223372036854775807
  %or.cond = icmp ult i64 %i.p, -9223372036854775806
  br i1 %or.cond, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add nuw nsw i64 %i.o, 1                  ; 3 uses
  %i.r = icmp samesign ugt i64 %i.o, 65535
  br i1 %i.r, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @PyEval_SaveThread() #11
  %i.t = load i32, ptr %i.a, align 8, !tbaa !11
  %i.u = tail call i64 @lseek64(i32 noundef %i.t, i64 noundef 0, i32 noundef 1) #11 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.s) #11
  %or.cond.not = icmp ugt i64 %i.u, %i.o
  br i1 %or.cond.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = sub nuw nsw i64 %i.o, %i.u               ; 2 uses
  %i.w = icmp samesign ult i64 %i.v, 9223372036854775806
  %i.x = add nuw nsw i64 %i.v, 1
  %spec.select = select i1 %i.w, i64 %i.x, i64 %i.q
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.i, %bb.g, %bb.h
  %.1 = phi i64 [ %i.q, %bb.g ], [ 8192, %bb.f ], [ %spec.select, %bb.i ], [ %i.q, %bb.h ], [ 8192, %bb.e ] ; 2 uses
  %i.y = tail call ptr @PyBytesWriter_Create(i64 noundef %.1) #11 ; 8 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.thread, %bb.s
  %.052 = phi i64 [ %i.as, %bb.s ], [ 0, %.thread ] ; 10 uses
  %.2 = phi i64 [ %.3, %bb.s ], [ %.1, %.thread ] ; 2 uses
  %.not61 = icmp slt i64 %.052, %.2
  br i1 %.not61, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.aa = icmp ugt i64 %.052, 65536
  %i.ab = lshr i64 %.052, 3
  %i.ac = add nuw nsw i64 %.052, 256
  %.0.i = select i1 %i.aa, i64 %i.ab, i64 %i.ac
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %.0.i, i64 8192)
  %i.ad = add i64 %spec.store.select.i, %.052     ; 5 uses
  %or.cond3 = icmp slt i64 %i.ad, 1
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.ae, ptr noundef nonnull @.str.37) #11
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.y) #11
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.af = tail call i64 @PyBytesWriter_GetSize(ptr noundef nonnull %i.y) #11
  %i.ag = icmp slt i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call i32 @PyBytesWriter_Resize(ptr noundef nonnull %i.y, i64 noundef %i.ad) #11
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %.preheader
  %.3 = phi i64 [ %i.ad, %bb.m ], [ %i.ad, %bb.l ], [ %.2, %.preheader ] ; 2 uses
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !11
  %i.ak = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.y) #11
  %i.al = getelementptr i8, ptr %i.ak, i64 %.052
  %i.am = sub i64 %.3, %.052
  %i.an = tail call i64 @_Py_read(i32 noundef %i.aj, ptr noundef %i.al, i64 noundef %i.am) #11 ; 2 uses
  switch i64 %i.an, label %bb.s [
    i64 0, label %.loopexit64
    i64 -1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ao = tail call ptr @__errno_location() #13
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = icmp eq i32 %i.ap, 11
  br i1 %i.aq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  tail call void @PyErr_Clear() #11
  %i.ar = icmp sgt i64 %.052, 0
  br i1 %i.ar, label %.loopexit64, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.y) #11
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.y) #11
  br label %.loopexit

bb.s:                                             ; preds = %bb.n
  %i.as = add i64 %i.an, %.052
  br label %.preheader

.loopexit64:                                      ; preds = %bb.n, %bb.p
  %i.at = tail call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.y, i64 noundef %.052) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.thread, %.loopexit64, %bb.r, %bb.q, %bb.k, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.k, %bb.d ], [ null, %bb.k ], [ null, %.thread ], [ %i.at, %.loopexit64 ], [ @_Py_NoneStruct, %bb.q ], [ null, %bb.r ], [ null, %bb.m ]
  ret ptr %.0
}

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #3

declare i64 @_Py_read(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #3

declare void @PyErr_Clear() local_unnamed_addr #3

declare ptr @PyBytesWriter_FinishWithSize(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyEval_SaveThread() local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #3

declare i64 @PyBytesWriter_GetSize(ptr noundef) local_unnamed_addr #3

declare i32 @PyBytesWriter_Resize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #3

declare i64 @_Py_write(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #3

declare ptr @PyErr_Occurred() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @portable_lseek(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @PyLong_AsLong(ptr noundef nonnull %1) #11
  %i.e = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.b
  %.013 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call ptr @PyEval_SaveThread() #11
  %i.g = tail call i64 @lseek64(i32 noundef %i.b, i64 noundef %.013, i32 noundef %2) #11 ; 3 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.f) #11
  %i.h = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.i = load i8, ptr %i.h, align 4               ; 2 uses
  %.mask = and i8 %i.i, 32
  %.not17 = icmp eq i8 %.mask, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i64 %i.g, -1
  %i.k = select i1 %i.j, i8 16, i8 0
  %i.l = and i8 %i.i, -49
  %i.m = or disjoint i8 %i.l, %i.k
  store i8 %i.m, ptr %i.h, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = icmp slt i64 %i.g, 0
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @__errno_location() #13
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = icmp eq i32 %i.p, 29
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.s = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.r) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.e
  %.014 = phi i64 [ %i.g, %bb.e ], [ 0, %bb.g ]
  %i.t = tail call ptr @PyLong_FromLong(i64 noundef %.014) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i, %bb.h
  %.0 = phi ptr [ %i.t, %bb.i ], [ %i.s, %bb.h ], [ null, %bb.b ]
  ret ptr %.0
}

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #3

declare ptr @PyErr_SetFromErrno(ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @internal_close(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.a, align 8, !tbaa !11
  %i.d = tail call ptr @PyEval_SaveThread() #11   ; 2 uses
  %i.e = tail call i32 @close(i32 noundef %i.b) #11
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.critedge14

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #13    ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  tail call void @PyEval_RestoreThread(ptr noundef %i.d) #11
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  tail call void @PyMem_Free(ptr noundef %i.j) #11
  store ptr null, ptr %i.i, align 8, !tbaa !30
  store i32 %i.h, ptr %i.g, align 4, !tbaa !7
  %i.k = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.l = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.k) #11 ; 0 uses
  br label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  tail call void @PyMem_Free(ptr noundef %i.n) #11
  store ptr null, ptr %i.m, align 8, !tbaa !30
  br label %bb.d

.critedge14:                                      ; preds = %bb.b
  tail call void @PyEval_RestoreThread(ptr noundef %i.d) #11
  %i.o = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  tail call void @PyMem_Free(ptr noundef %i.p) #11
  store ptr null, ptr %i.o, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %.critedge14, %.critedge, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %.critedge ], [ 0, %.critedge14 ]
  ret i32 %.0
}

declare void @_PyErr_ChainExceptions1(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #6

declare i32 @PyErr_ResourceWarning(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #3

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #3

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @fileio_get_closed(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.lobit = lshr i32 %i.b, 31
  %i.c = zext nneg i32 %.lobit to i64
  %i.d = tail call ptr @PyBool_FromLong(i64 noundef %i.c) #11
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal ptr @fileio_get_closefd(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4
  %i.c = lshr i8 %i.b, 7
  %i.d = zext nneg i8 %i.c to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #11
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @fileio_get_mode(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %.val = load i8, ptr %i.a, align 4              ; 6 uses
  %.not.i = trunc i8 %.val to i1
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i8 %.val, 2
  %.not13.i = icmp eq i8 %i.b, 0
  %.str.9..str.8.i = select i1 %.not13.i, ptr @.str.9, ptr @.str.8
  br label %mode_string.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i8 %.val, 8
  %.not8.i = icmp eq i8 %i.c, 0
  %i.d = and i8 %.val, 2
  %.not9.i = icmp eq i8 %i.d, 0                   ; 2 uses
  br i1 %.not8.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.str.11..str.10.i = select i1 %.not9.i, ptr @.str.11, ptr @.str.10
  br label %mode_string.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not9.i, label %mode_string.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = and i8 %.val, 4
  %.not10.i = icmp eq i8 %i.e, 0
  br i1 %.not10.i, label %mode_string.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = and i8 %.val, 64
  %.not11.i = icmp eq i8 %i.f, 0
  %.str.13..str.12.i = select i1 %.not11.i, ptr @.str.13, ptr @.str.12
  br label %mode_string.exit

mode_string.exit:                                 ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %.str.9..str.8.i, %bb.b ], [ @.str.14, %bb.f ], [ %.str.11..str.10.i, %bb.d ], [ %.str.13..str.12.i, %bb.g ], [ @.str.15, %bb.e ]
  %i.g = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %.0.i) #11
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @fileio_get_blksize(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 131072, %bb.c ], [ %i.d, %bb.b ]
  %i.f = tail call ptr @PyLong_FromLong(i64 noundef %.sink) #11
  ret ptr %i.f
}

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #3

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @PyUnicode_FSConverter(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PySys_Audit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #9

declare i32 @PyErr_CheckSignals() local_unnamed_addr #3

declare ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_CallFunction(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @_Py_set_inheritable(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #3

declare ptr @PyErr_NoMemory() local_unnamed_addr #3

declare i32 @_Py_fstat_noraise(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_SetAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 16}
!12 = !{!"", !13, i64 0, !8, i64 16, !8, i64 20, !8, i64 20, !8, i64 20, !8, i64 20, !8, i64 20, !8, i64 20, !8, i64 20, !9, i64 21, !16, i64 24, !17, i64 32, !17, i64 40}
!13 = !{!"_object", !9, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTS11_typeobject", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTS4stat", !15, i64 0}
!17 = !{!"p1 _ZTS7_object", !15, i64 0}
!18 = !{!12, !9, i64 21}
!19 = !{!20, !21, i64 8}
!20 = !{!"", !21, i64 0, !21, i64 8}
!21 = !{!"long", !9, i64 0}
!22 = !{!20, !21, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTS3_is", !15, i64 0}
!25 = !{!26, !8, i64 28}
!26 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !27, i64 8, !9, i64 32, !27, i64 80, !9, i64 104, !8, i64 224, !28, i64 232, !17, i64 240, !17, i64 248, !21, i64 256, !21, i64 264, !8, i64 272, !8, i64 276}
!27 = !{!"gc_generation", !20, i64 0, !8, i64 16, !8, i64 20}
!28 = !{!"p1 _ZTS19_PyInterpreterFrame", !15, i64 0}
!29 = !{!26, !21, i64 256}
!30 = !{!12, !16, i64 24}
!31 = !{!12, !17, i64 32}
!32 = !{!17, !17, i64 0}
!33 = !{!9, !9, i64 0}
!34 = !{!13, !14, i64 8}
!35 = !{!36, !15, i64 320}
!36 = !{!"_typeobject", !37, i64 0, !38, i64 24, !21, i64 32, !21, i64 40, !15, i64 48, !21, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !21, i64 168, !38, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !21, i64 208, !15, i64 216, !15, i64 224, !39, i64 232, !40, i64 240, !41, i64 248, !14, i64 256, !17, i64 264, !15, i64 272, !15, i64 280, !21, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !17, i64 336, !17, i64 344, !17, i64 352, !15, i64 360, !17, i64 368, !15, i64 376, !8, i64 384, !15, i64 392, !15, i64 400, !9, i64 408, !42, i64 410}
!37 = !{!"PyVarObject", !13, i64 0, !21, i64 16}
!38 = !{!"p1 omnipotent char", !15, i64 0}
!39 = !{!"p1 _ZTS11PyMethodDef", !15, i64 0}
!40 = !{!"p1 _ZTS11PyMemberDef", !15, i64 0}
!41 = !{!"p1 _ZTS11PyGetSetDef", !15, i64 0}
!42 = !{!"short", !9, i64 0}
!43 = !{!36, !38, i64 24}
!44 = !{!12, !17, i64 40}
!45 = !{!37, !21, i64 16}
!46 = !{!47, !21, i64 16}
!47 = !{!"", !13, i64 0, !21, i64 16, !21, i64 24, !48, i64 32, !49, i64 40}
!48 = !{!"p1 _ZTS15_dictkeysobject", !15, i64 0}
!49 = !{!"p1 _ZTS11_dictvalues", !15, i64 0}
!50 = !{!36, !21, i64 168}
!51 = !{!21, !21, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = !{!56, !8, i64 24}
!56 = !{!"stat", !21, i64 0, !21, i64 8, !21, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !57, i64 72, !57, i64 88, !57, i64 104, !9, i64 120}
!57 = !{!"timespec", !21, i64 0, !21, i64 8}
!58 = !{!36, !15, i64 304}
!59 = !{!60, !17, i64 888}
!60 = !{!"_heaptypeobject", !36, i64 0, !61, i64 416, !62, i64 448, !63, i64 736, !64, i64 760, !65, i64 840, !17, i64 856, !17, i64 864, !17, i64 872, !48, i64 880, !17, i64 888, !38, i64 896, !15, i64 904, !66, i64 912}
!61 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!62 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280}
!63 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16}
!64 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72}
!65 = !{!"", !15, i64 0, !15, i64 8}
!66 = !{!"_specialization_cache", !17, i64 0, !8, i64 8, !17, i64 16}
!67 = !{!68, !15, i64 24}
!68 = !{!"", !13, i64 0, !17, i64 16, !15, i64 24, !17, i64 32, !17, i64 40, !69, i64 48, !21, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96}
!69 = !{!"_Bool", !9, i64 0}
!70 = !{!71, !17, i64 8}
!71 = !{!"_io_state", !8, i64 0, !17, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120}
!72 = !{!73, !17, i64 8}
!73 = !{!"", !15, i64 0, !17, i64 8, !21, i64 16, !21, i64 24, !8, i64 32, !8, i64 36, !38, i64 40, !74, i64 48, !74, i64 56, !74, i64 64, !15, i64 72}
!74 = !{!"p1 long", !15, i64 0}
!75 = !{!71, !14, i64 32}
!76 = !{!56, !21, i64 48}
!77 = !{!56, !21, i64 56}
end_hunk_1
