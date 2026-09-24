Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/sio_perf?download=true
inline.NumInlined: 32
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.parameters_ = type { i32, i32, i64, i64, i64, i32, i32, [32 x i64], [32 x i64], [32 x i64], [32 x i32], i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.results_ = type { i32, ptr }

@sio_debug_level = dso_local local_unnamed_addr global i32 0, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@output = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: cannot open output file\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"h5perf_serial\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Transfer Buffer Size (bytes): %zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"File Size(MB): %.2f\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"IO API = \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"POSIX\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"HDF5\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Raw Data Write details:\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Raw Data Write\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Write details:\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Write Open-Close details:\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Write Open-Close\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Raw Data Read details:\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Raw Data Read\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Read details:\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Read Open-Close details:\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Read Open-Close\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Iteration %d:\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Minimum Time: %.2fs\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Maximum Time: %.2fs\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"%s (%d iteration(s)):\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Maximum Throughput: %6.2f MB/s\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" (%7.3f s)\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Average Throughput: %6.2f MB/s\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Minimum Throughput: %6.2f MB/s\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"HDF5 Library\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"==== Parameters ====\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"IO API=\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Number of iterations=%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Dataset size=\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Transfer buffer size=\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"Page Aggregation Enabled. Page size = %zu\0A\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"Page Buffering Enabled. Page Buffer size = %zu\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Page Buffering Disabled\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"Page Aggregation Disabled\0A\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"Dimension access order=\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"HDF5 data storage method=\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Chunked\0A\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"HDF5 chunk size=\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"HDF5 dataset dimensions=\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Extendable\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Fixed\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Contiguous\0A\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"HDF5 file driver=\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"sec2\0A\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"stdio\0A\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"core\0A\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"split\0A\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"multi\0A\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"family\0A\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"direct\0A\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"HDF5_PREFIX\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"Env HDF5_PREFIX=%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"not set\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"==== End of Parameters ====\0A\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"posix \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"hdf5 \00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"%lldGB%s\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"%lldMB%s\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"%lldKB%s\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%lld%s\00", align 1
@H5_optarg = external local_unnamed_addr global ptr, align 8
@.str.67 = private unnamed_addr constant [5 x i8] c"hdf5\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"sio_perf: invalid --api option %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"sio_perf: invalid --debug option %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"sec2\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"stdio\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"a:A:B:c:Cd:D:e:F:ghi:Imno:p:P:r:stT:v:wx:X:\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"api\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"chunk\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"collective\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"file-driver\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"geometry\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"interleaved\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"max-num-processes\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"min-num-processes\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"max-xfer-size\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"min-xfer-size\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"num-bytes\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"num-dsets\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"num-files\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"num-iterations\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"extendable\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"write-only\00", align 1
@l_opts = internal global [24 x { ptr, i32, i8, [3 x i8] }] [{ ptr, i32, i8, [3 x i8] } { ptr @.str.79, i32 1, i8 97, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.80, i32 1, i8 65, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.81, i32 1, i8 66, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.82, i32 0, i8 99, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.83, i32 0, i8 67, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.84, i32 1, i8 68, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.85, i32 1, i8 118, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.86, i32 0, i8 103, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.87, i32 0, i8 104, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.88, i32 1, i8 73, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.89, i32 1, i8 80, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.90, i32 1, i8 112, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.91, i32 1, i8 88, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.92, i32 1, i8 120, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.93, i32 1, i8 101, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.94, i32 1, i8 100, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.95, i32 1, i8 70, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.96, i32 1, i8 105, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.97, i32 1, i8 114, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.98, i32 1, i8 111, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.99, i32 0, i8 116, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.100, i32 1, i8 84, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.101, i32 1, i8 119, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } zeroinitializer], align 16
@.str.103 = private unnamed_addr constant [29 x i8] c"Illegal size specifier '%c'\0A\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"usage: %s [OPTIONS]\0A\00", align 1
@.str.126 = private unnamed_addr constant [29 x i8] c"          K - Kilobyte (%d)\0A\00", align 1
@.str.127 = private unnamed_addr constant [29 x i8] c"          M - Megabyte (%d)\0A\00", align 1
@.str.128 = private unnamed_addr constant [29 x i8] c"          G - Gigabyte (%d)\0A\00", align 1
@.str.129 = private unnamed_addr constant [50 x i8] c"      Example: '37M' is 37 megabytes or %d bytes\0A\00", align 1
@str = private unnamed_addr constant [10 x i8] c"  OPTIONS\00", align 1
@str.1 = private unnamed_addr constant [55 x i8] c"     -h                Print an usage message and exit\00", align 1
@str.2 = private unnamed_addr constant [42 x i8] c"     -A AL             Which APIs to test\00", align 1
@str.3 = private unnamed_addr constant [46 x i8] c"                       [default: all of them]\00", align 1
@str.4 = private unnamed_addr constant [77 x i8] c"     -c SL             Selects chunked storage and defines chunks dimensions\00", align 1
@str.5 = private unnamed_addr constant [33 x i8] c"                       and sizes\00", align 1
@str.7 = private unnamed_addr constant [55 x i8] c"     -e SL             Dimensions and sizes of dataset\00", align 1
@str.8 = private unnamed_addr constant [42 x i8] c"                       [default: 100,200]\00", align 1
@str.9 = private unnamed_addr constant [55 x i8] c"     -i N              Number of iterations to perform\00", align 1
@str.10 = private unnamed_addr constant [36 x i8] c"                       [default: 1]\00", align 1
@str.11 = private unnamed_addr constant [74 x i8] c"     -r NL             Dimension access order (see below for description)\00", align 1
@str.12 = private unnamed_addr constant [38 x i8] c"                       [default: 1,2]\00", align 1
@str.13 = private unnamed_addr constant [70 x i8] c"     -t                Selects extendable dimensions for HDF5 dataset\00", align 1
@str.15 = private unnamed_addr constant [59 x i8] c"     -v VFD            Selects file driver for HDF5 access\00", align 1
@str.16 = private unnamed_addr constant [39 x i8] c"                       [default: sec2]\00", align 1
@str.17 = private unnamed_addr constant [63 x i8] c"     -w                Perform write tests, not the read tests\00", align 1
@str.18 = private unnamed_addr constant [38 x i8] c"                       [default: Off]\00", align 1
@str.19 = private unnamed_addr constant [67 x i8] c"     -x SL             Dimensions and sizes of the transfer buffer\00", align 1
@str.20 = private unnamed_addr constant [40 x i8] c"                       [default: 10,20]\00", align 1
@str.21 = private unnamed_addr constant [26 x i8] c"  N  - is an integer > 0.\00", align 1
@str.22 = private unnamed_addr constant [73 x i8] c"  S  - is a size specifier, an integer > 0 followed by a size indicator:\00", align 1
@str.23 = private unnamed_addr constant [41 x i8] c"  AL - is an API list. Valid values are:\00", align 1
@str.24 = private unnamed_addr constant [22 x i8] c"          hdf5 - HDF5\00", align 1
@str.25 = private unnamed_addr constant [24 x i8] c"          posix - POSIX\00", align 1
@str.26 = private unnamed_addr constant [29 x i8] c"      Example: -A posix,hdf5\00", align 1
@str.27 = private unnamed_addr constant [52 x i8] c"  NL - is list of integers (N) separated by commas.\00", align 1
@str.28 = private unnamed_addr constant [21 x i8] c"      Example: 1,2,3\00", align 1
@str.29 = private unnamed_addr constant [59 x i8] c"  SL - is list of size specifiers (S) separated by commas.\00", align 1
@str.30 = private unnamed_addr constant [24 x i8] c"      Example: 2K,2K,3K\00", align 1
@str.31 = private unnamed_addr constant [74 x i8] c"      The example defines an object (dataset, transfer buffer) with three\00", align 1
@str.32 = private unnamed_addr constant [75 x i8] c"      dimensions. Be aware that as the number of dimensions increases, the\00", align 1
@str.33 = private unnamed_addr constant [60 x i8] c"      the total size of the object increases exponentially.\00", align 1
@str.34 = private unnamed_addr constant [61 x i8] c"  VFD  - is an HDF5 file driver specifier. Valid values are:\00", align 1
@str.35 = private unnamed_addr constant [58 x i8] c"          sec2, stdio, core, split, multi, family, direct\00", align 1
@str.36 = private unnamed_addr constant [26 x i8] c"  Dimension access order:\00", align 1
@str.37 = private unnamed_addr constant [73 x i8] c"      Data access starts at the cardinal origin of the dataset using the\00", align 1
@str.38 = private unnamed_addr constant [74 x i8] c"      transfer buffer. The next access occurs on a dataset region next to\00", align 1
@str.39 = private unnamed_addr constant [74 x i8] c"      the previous one. For a multidimensional dataset, there are several\00", align 1
@str.40 = private unnamed_addr constant [80 x i8] c"      directions as to where to proceed. This can be specified in the dimension\00", align 1
@str.41 = private unnamed_addr constant [77 x i8] c"      access order. For example, -r 1,2 states that the tool should traverse\00", align 1
@str.42 = private unnamed_addr constant [47 x i8] c"      dimension 1 first, and then dimension 2.\00", align 1
@str.43 = private unnamed_addr constant [25 x i8] c"  Environment variables:\00", align 1
@str.44 = private unnamed_addr constant [72 x i8] c"      HDF5_NOCLEANUP   Do not remove data files if set [default remove]\00", align 1
@str.45 = private unnamed_addr constant [40 x i8] c"      HDF5_PREFIX      Data file prefix\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.parameters_, align 8        ; 16 uses
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  %i.b = alloca [10 x i8], align 1                ; 5 uses
  %i.c = alloca [10 x i8], align 1                ; 18 uses
  %i.d = alloca [10 x i8], align 1                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 5 uses
  %i.f = alloca [10 x i8], align 1                ; 5 uses
  tail call void @h5tools_init() #19
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %i.g, ptr @output, align 8, !tbaa !11
  %i.h = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #20 ; 34 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1008 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 944 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 304 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 560 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 816 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.b ] ; 6 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 7 uses
  %i.p = mul nuw nsw i64 %indvars.iv.next.i, 10   ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  store i64 %i.p, ptr %i.q, align 8, !tbaa !43
  %i.r = mul nuw nsw i64 %indvars.iv.next.i, 100
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  store i64 %i.r, ptr %i.s, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  store i64 %i.p, ptr %i.t, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.v, ptr %i.u, align 4, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 5 uses
  %i.w = mul nuw nsw i64 %indvars.iv.next.i.1, 10 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !43
  %i.y = mul nuw nsw i64 %indvars.iv.next.i.1, 100
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i
  store i64 %i.y, ptr %i.z, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i
  store i64 %i.w, ptr %i.aa, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !15
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 32
  br i1 %exitcond.not.i.1, label %bb.c, label %bb.b, !llvm.loop !26

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 1016 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 948 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 956 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 952 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 1000 ; 10 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 960 ; 2 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 964 ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 968 ; 3 uses
  store i64 1, ptr %i.al, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 976 ; 2 uses
  store i64 1, ptr %i.am, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 984 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 988
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 992 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 996
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ar = tail call i32 @H5_get_option(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef nonnull @l_opts) #19 ; 2 uses
  %.not311.i = icmp eq i32 %i.ar, -1
  br i1 %.not311.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph.i
  %3 = phi i32 [ 1, %.lr.ph.i ], [ %6, %.critedge.i ] ; 24 uses
  %4 = phi i64 [ 0, %.lr.ph.i ], [ %7, %.critedge.i ] ; 23 uses
  %i.bb = phi i32 [ %i.ar, %.lr.ph.i ], [ %i.jm, %.critedge.i ]
  %sext.i = shl i32 %i.bb, 24
  %i.bc = ashr exact i32 %sext.i, 24
  switch i32 %i.bc, label %parse_command_line.exit.thread [
    i32 97, label %bb.e
    i32 71, label %bb.f
    i32 98, label %bb.g
    i32 65, label %bb.h
    i32 99, label %bb.s
    i32 68, label %bb.aa
    i32 101, label %bb.bn
    i32 105, label %bb.bv
    i32 111, label %bb.bw
    i32 84, label %bb.bx
    i32 118, label %bb.by
    i32 119, label %bb.cn
    i32 116, label %bb.co
    i32 120, label %bb.cp
    i32 114, label %bb.cx
  ]

bb.e:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  %i.be = call fastcc i64 @parse_size_directive(ptr noundef %i.bd)
  store i64 %i.be, ptr %i.al, align 8, !tbaa !45
  br label %.critedge.i

bb.f:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  %i.bg = call fastcc i64 @parse_size_directive(ptr noundef %i.bf)
  store i64 %i.bg, ptr %i.ad, align 8, !tbaa !47
  br label %.critedge.i

bb.g:                                             ; preds = %bb.d
  %i.bh = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  %i.bi = call fastcc i64 @parse_size_directive(ptr noundef %i.bh)
  store i64 %i.bi, ptr %i.i, align 8, !tbaa !48
  br label %.critedge.i

bb.h:                                             ; preds = %bb.d
  %i.bj = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  %5 = phi i64 [ %4, %bb.h ], [ %i.cc, %bb.r ]    ; 3 uses
  %.0244.i = phi ptr [ %i.bj, %bb.h ], [ %i.ce, %bb.r ] ; 3 uses
  %.not301.i = icmp eq ptr %.0244.i, null
  br i1 %.not301.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load i8, ptr %.0244.i, align 1, !tbaa !20 ; 2 uses
  %.not302.i = icmp eq i8 %i.bk, 0
  br i1 %.not302.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %i.bl = phi i8 [ %i.bk, %bb.k ], [ %.pre346.i, %bb.o ] ; 4 uses
  %.1251.i = phi i32 [ 0, %bb.k ], [ %.2252.i, %bb.o ] ; 4 uses
  %.1245.i = phi ptr [ %.0244.i, %bb.k ], [ %i.bx, %bb.o ] ; 2 uses
  switch i8 %i.bl, label %bb.m [
    i8 0, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

bb.m:                                             ; preds = %bb.l
  %i.bm = tail call ptr @__ctype_b_loc() #21
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.bo = sext i8 %i.bl to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !52
  %i.br = and i16 %i.bq, 8
  %i.bs = icmp ne i16 %i.br, 0
  %i.bt = icmp slt i32 %.1251.i, 10
  %or.cond.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = add nsw i32 %.1251.i, 1
  %i.bv = sext i32 %.1251.i to i64
  %i.bw = getelementptr inbounds i8, ptr %i.a, i64 %i.bv
  store i8 %i.bl, ptr %i.bw, align 1, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2252.i = phi i32 [ %i.bu, %bb.n ], [ %.1251.i, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.1245.i, i64 1 ; 2 uses
  %.pre346.i = load i8, ptr %i.bx, align 1, !tbaa !20
  br label %bb.l, !llvm.loop !27

.critedge2.i:                                     ; preds = %bb.l, %bb.l
  %i.by = call i32 @strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.67) #22
  %.not305.i = icmp eq i32 %i.by, 0
  br i1 %.not305.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.critedge2.i
  %i.bz = call i32 @strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.68) #22
  %.not306.i = icmp eq i32 %i.bz, 0
  br i1 %.not306.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.cb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ca, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.a) #23 ; 0 uses
  call void @exit(i32 noundef 1) #24
  unreachable

bb.r:                                             ; preds = %bb.p, %.critedge2.i
  %.sink391.i = phi i64 [ 4, %.critedge2.i ], [ 1, %bb.p ]
  %i.cc = or i64 %.sink391.i, %5                  ; 3 uses
  store i64 %i.cc, ptr %i.h, align 8, !tbaa !53
  %i.cd = icmp eq i8 %i.bl, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %.1245.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.cd, label %.critedge.i, label %bb.i

bb.s:                                             ; preds = %bb.d
  store i32 1, ptr %i.an, align 8, !tbaa !54
  %i.cf = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %.critedge7.i, %bb.s
  %indvars.iv332.i = phi i64 [ %indvars.iv.next333.i, %.critedge7.i ], [ 0, %bb.s ] ; 4 uses
  %.0238.i = phi ptr [ %i.cy, %.critedge7.i ], [ %i.cf, %bb.s ] ; 3 uses
  %.not297.i = icmp eq ptr %.0238.i, null
  br i1 %.not297.i, label %.critedge5.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load i8, ptr %.0238.i, align 1, !tbaa !20
  %.not298.i = icmp eq i8 %i.cg, 0
  br i1 %.not298.i, label %.critedge5.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, i8 0, i64 10, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v
  %.3253.i = phi i32 [ 0, %bb.v ], [ %.4254.i, %bb.z ] ; 4 uses
  %.1239.i = phi ptr [ %.0238.i, %bb.v ], [ %i.ct, %bb.z ] ; 4 uses
  %i.ch = load i8, ptr %.1239.i, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.ch, label %bb.x [
    i8 0, label %.critedge7.i
    i8 44, label %.critedge7.i
  ]

bb.x:                                             ; preds = %bb.w
  %i.ci = tail call ptr @__ctype_b_loc() #21
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !50
  %i.ck = sext i8 %i.ch to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !52
  %i.cn = and i16 %i.cm, 8
  %i.co = icmp ne i16 %i.cn, 0
  %i.cp = icmp slt i32 %.3253.i, 10
  %or.cond9.i = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond9.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cq = add nsw i32 %.3253.i, 1
  %i.cr = sext i32 %.3253.i to i64
  %i.cs = getelementptr inbounds i8, ptr %i.b, i64 %i.cr
  store i8 %i.ch, ptr %i.cs, align 1, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.4254.i = phi i32 [ %i.cq, %bb.y ], [ %.3253.i, %bb.x ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.1239.i, i64 1
  br label %bb.w, !llvm.loop !28

.critedge7.i:                                     ; preds = %bb.w, %bb.w
  %i.cu = call fastcc i64 @parse_size_directive(ptr noundef nonnull %i.b)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv332.i
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !43
  %indvars.iv.next333.i = add nuw nsw i64 %indvars.iv332.i, 1 ; 2 uses
  %i.cw = load i8, ptr %.1239.i, align 1, !tbaa !20
  %i.cx = icmp eq i8 %i.cw, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %.1239.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %i.cx, label %.critedge5.i, label %bb.t

.critedge5.i:                                     ; preds = %.critedge7.i, %bb.u, %bb.t
  %.1237.in.i = phi i64 [ %indvars.iv.next333.i, %.critedge7.i ], [ %indvars.iv332.i, %bb.u ], [ %indvars.iv332.i, %bb.t ]
  %.1237.i = trunc i64 %.1237.in.i to i32
  store i32 %.1237.i, ptr %i.ag, align 4, !tbaa !55
  br label %.critedge.i

bb.aa:                                            ; preds = %bb.d
  %i.cz = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.bm, %bb.aa
  %.0233.i = phi ptr [ %i.cz, %bb.aa ], [ %i.gf, %bb.bm ] ; 3 uses
  %.not290.i = icmp eq ptr %.0233.i, null
  br i1 %.not290.i, label %.critedge.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = load i8, ptr %.0233.i, align 1, !tbaa !20
  %.not291.i = icmp eq i8 %i.da, 0
  br i1 %.not291.i, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.c, i8 0, i64 10, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %bb.ad
  %.5255.i = phi i32 [ 0, %bb.ad ], [ %.6.i, %bb.ah ] ; 4 uses
  %.1234.i = phi ptr [ %.0233.i, %bb.ad ], [ %i.dn, %bb.ah ] ; 4 uses
  %i.db = load i8, ptr %.1234.i, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.db, label %bb.af [
    i8 0, label %.critedge13.i
    i8 44, label %.critedge13.i
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dc = tail call ptr @__ctype_b_loc() #21
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !50
  %i.de = sext i8 %i.db to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !52
  %i.dh = and i16 %i.dg, 8
  %i.di = icmp ne i16 %i.dh, 0
  %i.dj = icmp slt i32 %.5255.i, 10
  %or.cond15.i = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond15.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dk = add nsw i32 %.5255.i, 1
  %i.dl = sext i32 %.5255.i to i64
  %i.dm = getelementptr inbounds i8, ptr %i.c, i64 %i.dl
  store i8 %i.db, ptr %i.dm, align 1, !tbaa !20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.6.i = phi i32 [ %i.dk, %bb.ag ], [ %.5255.i, %bb.af ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.1234.i, i64 1
  br label %bb.ae, !llvm.loop !29

.critedge13.i:                                    ; preds = %bb.ae, %bb.ae
  %i.do = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #22
  %i.dp = icmp ugt i64 %i.do, 1
  %.pre.i = load i8, ptr %i.c, align 1, !tbaa !20 ; 4 uses
  br i1 %i.dp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge13.i
  %i.dq = tail call ptr @__ctype_b_loc() #21
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !50
  %i.ds = sext i8 %.pre.i to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !52
  %i.dv = and i16 %i.du, 2048
  %.not294.i = icmp eq i16 %i.dv, 0
  br i1 %.not294.i, label %bb.bh, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge13.i
  %.not295.i = icmp eq i8 %.pre.i, 0
  br i1 %.not295.i, label %.critedge17.i, label %bb.bc

bb.ak:                                            ; preds = %bb.bc
  %i.dw = load i8, ptr %i.as, align 1, !tbaa !20  ; 2 uses
  %.not295.1.i = icmp eq i8 %i.dw, 0
  br i1 %.not295.1.i, label %.critedge17.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dx = sext i8 %i.dw to i64
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !52
  %i.ea = and i16 %i.dz, 2048
  %.not296.1.i = icmp eq i16 %i.ea, 0
  br i1 %.not296.1.i, label %bb.bd, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eb = load i8, ptr %i.at, align 1, !tbaa !20  ; 2 uses
  %.not295.2.i = icmp eq i8 %i.eb, 0
  br i1 %.not295.2.i, label %.critedge17.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = sext i8 %i.eb to i64
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !52
  %i.ef = and i16 %i.ee, 2048
  %.not296.2.i = icmp eq i16 %i.ef, 0
  br i1 %.not296.2.i, label %bb.bd, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eg = load i8, ptr %i.au, align 1, !tbaa !20  ; 2 uses
  %.not295.3.i = icmp eq i8 %i.eg, 0
  br i1 %.not295.3.i, label %.critedge17.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eh = sext i8 %i.eg to i64
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !52
  %i.ek = and i16 %i.ej, 2048
  %.not296.3.i = icmp eq i16 %i.ek, 0
  br i1 %.not296.3.i, label %bb.bd, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.el = load i8, ptr %i.av, align 1, !tbaa !20  ; 2 uses
  %.not295.4.i = icmp eq i8 %i.el, 0
  br i1 %.not295.4.i, label %.critedge17.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.em = sext i8 %i.el to i64
  %i.en = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !52
  %i.ep = and i16 %i.eo, 2048
  %.not296.4.i = icmp eq i16 %i.ep, 0
  br i1 %.not296.4.i, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.ar
end_hunk_0
begin_hunk_1_@main:bb.a
bb.at:                                            ; preds = %bb.as
  %i.er = sext i8 %i.eq to i64
  %i.es = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !52
  %i.eu = and i16 %i.et, 2048
  %.not296.5.i = icmp eq i16 %i.eu, 0
  br i1 %.not296.5.i, label %bb.bd, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ev = load i8, ptr %i.ax, align 1, !tbaa !20  ; 2 uses
  %.not295.6.i = icmp eq i8 %i.ev, 0
  br i1 %.not295.6.i, label %.critedge17.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ew = sext i8 %i.ev to i64
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !52
  %i.ez = and i16 %i.ey, 2048
  %.not296.6.i = icmp eq i16 %i.ez, 0
  br i1 %.not296.6.i, label %bb.bd, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fa = load i8, ptr %i.ay, align 1, !tbaa !20  ; 2 uses
  %.not295.7.i = icmp eq i8 %i.fa, 0
  br i1 %.not295.7.i, label %.critedge17.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fb = sext i8 %i.fa to i64
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !52
  %i.fe = and i16 %i.fd, 2048
  %.not296.7.i = icmp eq i16 %i.fe, 0
  br i1 %.not296.7.i, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ff = load i8, ptr %i.az, align 1, !tbaa !20  ; 2 uses
  %.not295.8.i = icmp eq i8 %i.ff, 0
  br i1 %.not295.8.i, label %.critedge17.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fg = sext i8 %i.ff to i64
  %i.fh = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !52
  %i.fj = and i16 %i.fi, 2048
  %.not296.8.i = icmp eq i16 %i.fj, 0
  br i1 %.not296.8.i, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = load i8, ptr %i.ba, align 1, !tbaa !20  ; 2 uses
  %.not295.9.i = icmp eq i8 %i.fk, 0
  br i1 %.not295.9.i, label %.critedge17.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fl = sext i8 %i.fk to i64
  %i.fm = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !52
  %i.fo = and i16 %i.fn, 2048
  %.not296.9.i = icmp eq i16 %i.fo, 0
  br i1 %.not296.9.i, label %bb.bd, label %.critedge17.i

bb.bc:                                            ; preds = %bb.aj
  %i.fp = tail call ptr @__ctype_b_loc() #21
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !50 ; 10 uses
  %i.fr = sext i8 %.pre.i to i64
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !52
  %i.fu = and i16 %i.ft, 2048
  %.not296.i = icmp eq i16 %i.fu, 0
  br i1 %.not296.i, label %bb.bd, label %bb.ak

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fv, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.c) #23 ; 0 uses
  call void @exit(i32 noundef 1) #24
  unreachable

.critedge17.i:                                    ; preds = %bb.bb, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.aj
  %i.fx = call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #19, !inline_history !30
  %i.fy = trunc i64 %i.fx to i32                  ; 3 uses
  store i32 %i.fy, ptr @sio_debug_level, align 4, !tbaa !15
  %i.fz = icmp sgt i32 %i.fy, 4
  br i1 %i.fz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.critedge17.i
  store i32 4, ptr @sio_debug_level, align 4, !tbaa !15
  br label %bb.bm

bb.bf:                                            ; preds = %.critedge17.i
  %i.ga = icmp slt i32 %i.fy, 0
  br i1 %i.ga, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr @sio_debug_level, align 4, !tbaa !15
  br label %bb.bm

bb.bh:                                            ; preds = %bb.ai
  switch i8 %.pre.i, label %bb.bl [
    i8 114, label %bb.bi
    i8 116, label %bb.bj
    i8 118, label %bb.bk
  ]

bb.bi:                                            ; preds = %bb.bh
  store i32 1, ptr %i.ak, align 4, !tbaa !18
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  store i32 1, ptr %i.aj, align 8, !tbaa !17
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  store i32 1, ptr %i.aq, align 4, !tbaa !56
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  %i.gb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gb, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.c) #23 ; 0 uses
  call void @exit(i32 noundef 1) #24
  unreachable

bb.bm:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.be
  %i.gd = load i8, ptr %.1234.i, align 1, !tbaa !20
  %i.ge = icmp eq i8 %i.gd, 0
  %i.gf = getelementptr inbounds nuw i8, ptr %.1234.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br i1 %i.ge, label %.critedge.i, label %bb.ab

bb.bn:                                            ; preds = %bb.d
  %i.gg = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  br label %bb.bo

bb.bo:                                            ; preds = %.critedge21.i, %bb.bn
  %indvars.iv327.i = phi i64 [ %indvars.iv.next328.i, %.critedge21.i ], [ 0, %bb.bn ] ; 4 uses
  %.0229.i = phi ptr [ %i.gz, %.critedge21.i ], [ %i.gg, %bb.bn ] ; 3 uses
  %.not286.i = icmp eq ptr %.0229.i, null
  br i1 %.not286.i, label %.critedge19.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gh = load i8, ptr %.0229.i, align 1, !tbaa !20
  %.not287.i = icmp eq i8 %i.gh, 0
  br i1 %.not287.i, label %.critedge19.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.d, i8 0, i64 10, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bu, %bb.bq
  %.7.i = phi i32 [ 0, %bb.bq ], [ %.8.i, %bb.bu ] ; 4 uses
  %.1230.i = phi ptr [ %.0229.i, %bb.bq ], [ %i.gu, %bb.bu ] ; 4 uses
  %i.gi = load i8, ptr %.1230.i, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.gi, label %bb.bs [
    i8 0, label %.critedge21.i
    i8 44, label %.critedge21.i
  ]

bb.bs:                                            ; preds = %bb.br
  %i.gj = tail call ptr @__ctype_b_loc() #21
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !50
  %i.gl = sext i8 %i.gi to i64
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !52
  %i.go = and i16 %i.gn, 8
  %i.gp = icmp ne i16 %i.go, 0
  %i.gq = icmp slt i32 %.7.i, 10
  %or.cond23.i = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond23.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gr = add nsw i32 %.7.i, 1
  %i.gs = sext i32 %.7.i to i64
  %i.gt = getelementptr inbounds i8, ptr %i.d, i64 %i.gs
  store i8 %i.gi, ptr %i.gt, align 1, !tbaa !20
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.8.i = phi i32 [ %i.gr, %bb.bt ], [ %.7.i, %bb.bs ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.1230.i, i64 1
  br label %bb.br, !llvm.loop !31

.critedge21.i:                                    ; preds = %bb.br, %bb.br
  %i.gv = call fastcc i64 @parse_size_directive(ptr noundef nonnull %i.d)
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv327.i
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !43
  %indvars.iv.next328.i = add nuw nsw i64 %indvars.iv327.i, 1 ; 2 uses
  %i.gx = load i8, ptr %.1230.i, align 1, !tbaa !20
  %i.gy = icmp eq i8 %i.gx, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %.1230.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br i1 %i.gy, label %.critedge19.i, label %bb.bo

.critedge19.i:                                    ; preds = %.critedge21.i, %bb.bp, %bb.bo
  %.1228.in.i = phi i64 [ %indvars.iv.next328.i, %.critedge21.i ], [ %indvars.iv327.i, %bb.bp ], [ %indvars.iv327.i, %bb.bo ]
  %.1228.i = trunc i64 %.1228.in.i to i32
  store i32 %.1228.i, ptr %i.k, align 8, !tbaa !57
  br label %.critedge.i

bb.bv:                                            ; preds = %bb.d
  %i.ha = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  %i.hb = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ha, ptr noundef null, i32 noundef 10) #19, !inline_history !30
  %i.hc = trunc i64 %i.hb to i32                  ; 2 uses
  store i32 %i.hc, ptr %i.j, align 8, !tbaa !42
  br label %.critedge.i

bb.bw:                                            ; preds = %bb.d
  %i.hd = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  store ptr %i.hd, ptr %i.ae, align 8, !tbaa !58
  br label %.critedge.i

bb.bx:                                            ; preds = %bb.d
  %i.he = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  %i.hf = call fastcc i64 @parse_size_directive(ptr noundef %i.he)
  store i64 %i.hf, ptr %i.am, align 8, !tbaa !46
  br label %.critedge.i

bb.by:                                            ; preds = %bb.d
  %i.hg = load ptr, ptr @H5_optarg, align 8, !tbaa !19 ; 8 uses
  %i.hh = call i32 @strcasecmp(ptr noundef %i.hg, ptr noundef nonnull @.str.71) #22
  %.not279.i = icmp eq i32 %i.hh, 0
  br i1 %.not279.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.ai, align 8, !tbaa !44
  br label %.critedge.i

bb.ca:                                            ; preds = %bb.by
  %i.hi = call i32 @strcasecmp(ptr noundef %i.hg, ptr noundef nonnull @.str.72) #22
  %.not280.i = icmp eq i32 %i.hi, 0
  br i1 %.not280.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 1, ptr %i.ai, align 8, !tbaa !44
  br label %.critedge.i

bb.cc:                                            ; preds = %bb.ca
  %i.hj = call i32 @strcasecmp(ptr noundef %i.hg, ptr noundef nonnull @.str.73) #22
  %.not281.i = icmp eq i32 %i.hj, 0
  br i1 %.not281.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 2, ptr %i.ai, align 8, !tbaa !44
  br label %.critedge.i

bb.ce:                                            ; preds = %bb.cc
  %i.hk = call i32 @strcasecmp(ptr noundef %i.hg, ptr noundef nonnull @.str.74) #22
  %.not282.i = icmp eq i32 %i.hk, 0
  br i1 %.not282.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 3, ptr %i.ai, align 8, !tbaa !44
  br label %.critedge.i

bb.cg:                                            ; preds = %bb.ce
  %i.hl = call i32 @strcasecmp(ptr noundef %i.hg, ptr noundef nonnull @.str.75) #22
  %.not283.i = icmp eq i32 %i.hl, 0
  br i1 %.not283.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 4, ptr %i.ai, align 8, !tbaa !44
  br label %.critedge.i

bb.ci:                                            ; preds = %bb.cg
  %i.hm = call i32 @strcasecmp(ptr noundef %i.hg, ptr noundef nonnull @.str.76) #22
  %.not284.i = icmp eq i32 %i.hm, 0
  br i1 %.not284.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 5, ptr %i.ai, align 8, !tbaa !44
  br label %.critedge.i

bb.ck:                                            ; preds = %bb.ci
  %i.hn = call i32 @strcasecmp(ptr noundef %i.hg, ptr noundef nonnull @.str.77) #22
  %.not285.i = icmp eq i32 %i.hn, 0
  br i1 %.not285.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 6, ptr %i.ai, align 8, !tbaa !44
  br label %.critedge.i

bb.cm:                                            ; preds = %bb.ck
  %i.ho = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ho, ptr noundef nonnull @.str.69, ptr noundef %i.hg) #23 ; 0 uses
  call void @exit(i32 noundef 1) #24
  unreachable

bb.cn:                                            ; preds = %bb.d
  store i32 1, ptr %i.ao, align 4, !tbaa !59
  br label %.critedge.i

bb.co:                                            ; preds = %bb.d
  store i32 1, ptr %i.ap, align 8, !tbaa !60
  br label %.critedge.i

bb.cp:                                            ; preds = %bb.d
  %i.hq = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  br label %bb.cq

bb.cq:                                            ; preds = %.critedge27.i, %bb.cp
  %indvars.iv323.i.a = phi i64 [ %indvars.iv.next324.i.a, %.critedge27.i ], [ 0, %bb.cp ] ; 4 uses
  %.0224.i = phi ptr [ %i.ij, %.critedge27.i ], [ %i.hq, %bb.cp ] ; 3 uses
  %.not275.i = icmp eq ptr %.0224.i, null
  br i1 %.not275.i, label %.critedge25.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hr = load i8, ptr %.0224.i, align 1, !tbaa !20
  %.not276.i = icmp eq i8 %i.hr, 0
  br i1 %.not276.i, label %.critedge25.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, i8 0, i64 10, i1 false)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cw, %bb.cs
  %.9.i = phi i32 [ 0, %bb.cs ], [ %.10.i, %bb.cw ] ; 4 uses
  %.1225.i = phi ptr [ %.0224.i, %bb.cs ], [ %i.ie, %bb.cw ] ; 4 uses
  %i.hs = load i8, ptr %.1225.i, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.hs, label %bb.cu [
    i8 0, label %.critedge27.i
    i8 44, label %.critedge27.i
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.ht = tail call ptr @__ctype_b_loc() #21
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !50
  %i.hv = sext i8 %i.hs to i64
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.hu, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !52
  %i.hy = and i16 %i.hx, 8
  %i.hz = icmp ne i16 %i.hy, 0
  %i.ia = icmp slt i32 %.9.i, 10
  %or.cond29.i = select i1 %i.hz, i1 %i.ia, i1 false
  br i1 %or.cond29.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ib = add nsw i32 %.9.i, 1
  %i.ic = sext i32 %.9.i to i64
  %i.id = getelementptr inbounds i8, ptr %i.e, i64 %i.ic
  store i8 %i.hs, ptr %i.id, align 1, !tbaa !20
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.10.i = phi i32 [ %i.ib, %bb.cv ], [ %.9.i, %bb.cu ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.1225.i, i64 1
  br label %bb.ct, !llvm.loop !32

.critedge27.i:                                    ; preds = %bb.ct, %bb.ct
  %i.if = call fastcc i64 @parse_size_directive(ptr noundef nonnull %i.e)
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv323.i.a
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !43
  %indvars.iv.next324.i.a = add nuw nsw i64 %indvars.iv323.i.a, 1 ; 2 uses
  %i.ih = load i8, ptr %.1225.i, align 1, !tbaa !20
  %i.ii = icmp eq i8 %i.ih, 0
  %i.ij = getelementptr inbounds nuw i8, ptr %.1225.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br i1 %i.ii, label %.critedge25.i, label %bb.cq

.critedge25.i:                                    ; preds = %.critedge27.i, %bb.cr, %bb.cq
  %.1223.in.i = phi i64 [ %indvars.iv.next324.i.a, %.critedge27.i ], [ %indvars.iv323.i.a, %bb.cr ], [ %indvars.iv323.i.a, %bb.cq ]
  %.1223.i = trunc i64 %.1223.in.i to i32
  store i32 %.1223.i, ptr %i.af, align 4, !tbaa !61
  br label %.critedge.i

bb.cx:                                            ; preds = %bb.d
  %i.ik = load ptr, ptr @H5_optarg, align 8, !tbaa !19
  br label %bb.cy

bb.cy:                                            ; preds = %.critedge33.i, %bb.cx
  %indvars.iv320.i = phi i64 [ %indvars.iv.next321.i, %.critedge33.i ], [ 0, %bb.cx ] ; 4 uses
  %.0220.i = phi ptr [ %i.je, %.critedge33.i ], [ %i.ik, %bb.cx ] ; 3 uses
  %.not271.i = icmp eq ptr %.0220.i, null
  br i1 %.not271.i, label %.critedge31.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.il = load i8, ptr %.0220.i, align 1, !tbaa !20
  %.not272.i = icmp eq i8 %i.il, 0
  br i1 %.not272.i, label %.critedge31.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.f, i8 0, i64 10, i1 false)
  br label %bb.db

bb.db:                                            ; preds = %bb.de, %bb.da
  %.11.i = phi i32 [ 0, %bb.da ], [ %.12.i, %bb.de ] ; 4 uses
  %.1221.i = phi ptr [ %.0220.i, %bb.da ], [ %i.iy, %bb.de ] ; 4 uses
  %i.im = load i8, ptr %.1221.i, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.im, label %bb.dc [
    i8 0, label %.critedge33.i
    i8 44, label %.critedge33.i
  ]

bb.dc:                                            ; preds = %bb.db
  %i.in = tail call ptr @__ctype_b_loc() #21
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !50
  %i.ip = sext i8 %i.im to i64
  %i.iq = getelementptr inbounds [2 x i8], ptr %i.io, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !52
  %i.is = and i16 %i.ir, 8
  %i.it = icmp ne i16 %i.is, 0
  %i.iu = icmp slt i32 %.11.i, 10
  %or.cond35.i = select i1 %i.it, i1 %i.iu, i1 false
  br i1 %or.cond35.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.iv = add nsw i32 %.11.i, 1
  %i.iw = sext i32 %.11.i to i64
  %i.ix = getelementptr inbounds i8, ptr %i.f, i64 %i.iw
  store i8 %i.im, ptr %i.ix, align 1, !tbaa !20
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.12.i = phi i32 [ %i.iv, %bb.dd ], [ %.11.i, %bb.dc ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.1221.i, i64 1
  br label %bb.db, !llvm.loop !33

.critedge33.i:                                    ; preds = %bb.db, %bb.db
  %i.iz = call fastcc i64 @parse_size_directive(ptr noundef nonnull %i.f)
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv320.i
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !15
  %indvars.iv.next321.i = add nuw nsw i64 %indvars.iv320.i, 1 ; 2 uses
  %i.jc = load i8, ptr %.1221.i, align 1, !tbaa !20
  %i.jd = icmp eq i8 %i.jc, 0
  %i.je = getelementptr inbounds nuw i8, ptr %.1221.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br i1 %i.jd, label %.critedge31.i, label %bb.cy

.critedge31.i:                                    ; preds = %.critedge33.i, %bb.cz, %bb.cy
  %.1.in.i = phi i64 [ %indvars.iv.next321.i, %.critedge33.i ], [ %indvars.iv320.i, %bb.cz ], [ %indvars.iv320.i, %bb.cy ]
  %.1.i = trunc i64 %.1.in.i to i32
  store i32 %.1.i, ptr %i.ah, align 8, !tbaa !62
  br label %.critedge.i

parse_command_line.exit.thread:                   ; preds = %bb.d
  call void @print_version(ptr noundef nonnull @.str.2) #19
  %i.jf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.104, ptr noundef nonnull @.str.2) ; 0 uses
  %puts.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts2.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts3.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts4.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts5.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts6.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts7.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %puts8.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts9.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts10.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts11.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts12.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %puts13.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts14.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %puts15.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %puts16.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %puts17.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  %puts18.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  %puts19.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %puts20.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  %puts21.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  %putchar.i.i = call i32 @putchar(i32 10)        ; 0 uses
  %puts22.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.21) ; 0 uses
  %putchar23.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts24.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.22) ; 0 uses
  %i.jg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.126, i32 noundef 1024) ; 0 uses
  %i.jh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, i32 noundef 1048576) ; 0 uses
  %i.ji = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.128, i32 noundef 1073741824) ; 0 uses
  %putchar25.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %i.jj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.129, i32 noundef 38797312) ; 0 uses
  %putchar26.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts27.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.23) ; 0 uses
  %puts28.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.24) ; 0 uses
  %puts29.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %putchar30.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts31.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %putchar32.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts33.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.27) ; 0 uses
  %putchar34.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts35.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.28) ; 0 uses
  %putchar36.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts37.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.29) ; 0 uses
  %putchar38.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts39.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.30) ; 0 uses
  %putchar40.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts41.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.31) ; 0 uses
  %puts42.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.32) ; 0 uses
  %puts43.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.33) ; 0 uses
  %putchar44.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts45.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.34) ; 0 uses
  %puts46.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.35) ; 0 uses
  %putchar47.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts48.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.36) ; 0 uses
  %puts49.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.37) ; 0 uses
  %puts50.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.38) ; 0 uses
  %puts51.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.39) ; 0 uses
  %puts52.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.40) ; 0 uses
  %puts53.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.41) ; 0 uses
  %puts54.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.42) ; 0 uses
  %putchar55.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %puts56.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.43) ; 0 uses
  %puts57.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.44) ; 0 uses
  %puts58.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.45) ; 0 uses
  %putchar59.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %i.jk = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.jl = call i32 @fflush(ptr noundef %i.jk)     ; 0 uses
  call void @free(ptr noundef %i.h) #19
  br label %bb.et

.critedge.i:                                      ; preds = %bb.bm, %bb.ac, %bb.ab, %bb.r, %bb.j, %bb.i, %.critedge31.i, %.critedge25.i, %bb.co, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.bw, %bb.bv, %.critedge19.i, %.critedge5.i, %bb.g, %bb.f, %bb.e
  %6 = phi i32 [ %3, %bb.r ], [ %3, %bb.e ], [ %3, %bb.bz ], [ %3, %bb.cd ], [ %3, %bb.ch ], [ %3, %bb.cl ], [ %3, %bb.cj ], [ %3, %bb.cf ], [ %3, %bb.cb ], [ %3, %.critedge31.i ], [ %3, %.critedge25.i ], [ %3, %bb.co ], [ %3, %bb.cn ], [ %3, %bb.bx ], [ %3, %bb.bw ], [ %i.hc, %bb.bv ], [ %3, %.critedge19.i ], [ %3, %.critedge5.i ], [ %3, %bb.g ], [ %3, %bb.f ], [ %3, %bb.i ], [ %3, %bb.j ], [ %3, %bb.ab ], [ %3, %bb.ac ], [ %3, %bb.bm ] ; 2 uses
  %7 = phi i64 [ %i.cc, %bb.r ], [ %4, %bb.e ], [ %4, %bb.bz ], [ %4, %bb.cd ], [ %4, %bb.ch ], [ %4, %bb.cl ], [ %4, %bb.cj ], [ %4, %bb.cf ], [ %4, %bb.cb ], [ %4, %.critedge31.i ], [ %4, %.critedge25.i ], [ %4, %bb.co ], [ %4, %bb.cn ], [ %4, %bb.bx ], [ %4, %bb.bw ], [ %4, %bb.bv ], [ %4, %.critedge19.i ], [ %4, %.critedge5.i ], [ %4, %bb.g ], [ %4, %bb.f ], [ %5, %bb.j ], [ %5, %bb.i ], [ %4, %bb.ab ], [ %4, %bb.ac ], [ %4, %bb.bm ] ; 2 uses
  %i.jm = call i32 @H5_get_option(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef nonnull @l_opts) #19 ; 2 uses
  %.not.i = icmp eq i32 %i.jm, -1
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.d, !llvm.loop !34

._crit_edge.loopexit.i:                           ; preds = %.critedge.i
  %8 = call i32 @llvm.smax.i32(i32 %6, i32 1)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %spec.store.select307.i = phi i32 [ %8, %._crit_edge.loopexit.i ], [ 1, %bb.c ]
  %9 = phi i64 [ %7, %._crit_edge.loopexit.i ], [ 0, %bb.c ] ; 2 uses
  %i.jn = load i32, ptr %i.k, align 8, !tbaa !57  ; 3 uses
  %i.jo = load i32, ptr %i.af, align 4, !tbaa !61 ; 3 uses
  %i.jp = load i32, ptr %i.ah, align 8, !tbaa !62 ; 5 uses
  %i.jq = load i32, ptr %i.ag, align 4, !tbaa !55 ; 5 uses
  %i.jr = icmp sgt i32 %i.jn, 0
  %i.js = icmp slt i32 %i.jo, 1                   ; 2 uses
  br i1 %i.jr, label %bb.dg, label %.thread.i

bb.df:                                            ; preds = %bb.dg, %bb.di, %bb.dh
  call void @exit(i32 noundef 1) #24
  unreachable

bb.dg:                                            ; preds = %._crit_edge.i
  %.not270.1.i = icmp eq i32 %i.jn, %i.jo
  %or.cond = or i1 %i.js, %.not270.1.i
  br i1 %or.cond, label %.thread367.i, label %bb.df

.thread.i:                                        ; preds = %._crit_edge.i
  br i1 %i.js, label %.thread370.i, label %.thread367.i

.thread367.i:                                     ; preds = %.thread.i, %bb.dg
  %.1248.1.i = phi i32 [ %i.jo, %.thread.i ], [ %i.jn, %bb.dg ] ; 2 uses
  %i.jt = icmp sgt i32 %i.jp, 0
  br i1 %i.jt, label %bb.dh, label %.thread373.i

.thread370.i:                                     ; preds = %.thread.i
  %i.ju = icmp sgt i32 %i.jp, 0
  br i1 %i.ju, label %.thread373.i, label %.thread376.i

bb.dh:                                            ; preds = %.thread367.i
  %.not270.2.i = icmp eq i32 %.1248.1.i, %i.jp
  br i1 %.not270.2.i, label %.thread373.i, label %bb.df

.thread373.i:                                     ; preds = %bb.dh, %.thread370.i, %.thread367.i
  %.1248.2.i = phi i32 [ %i.jp, %.thread370.i ], [ %.1248.1.i, %.thread367.i ], [ %i.jp, %bb.dh ]
  %.1248.2.fr.i = freeze i32 %.1248.2.i           ; 3 uses
  %i.jv = icmp sgt i32 %i.jq, 0
  %.not269.3.i = icmp eq i32 %.1248.2.fr.i, 0     ; 2 uses
  br i1 %i.jv, label %bb.di, label %bb.dj

.thread376.i:                                     ; preds = %.thread370.i
  %i.jw = icmp sgt i32 %i.jq, 0
  br i1 %i.jw, label %.lr.ph316.i, label %.thread386.i

bb.di:                                            ; preds = %.thread373.i
  %.not270.3.i = icmp eq i32 %.1248.2.fr.i, %i.jq
  %or.cond393.i = select i1 %.not269.3.i, i1 true, i1 %.not270.3.i
  br i1 %or.cond393.i, label %.lr.ph316.i, label %bb.df

bb.dj:                                            ; preds = %.thread373.i
  br i1 %.not269.3.i, label %.thread386.i, label %.lr.ph316.i

.thread386.i:                                     ; preds = %bb.dj, %.thread376.i
  br label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %.thread386.i, %bb.dj, %bb.di, %.thread376.i
  %i.jx = phi i32 [ 2, %.thread386.i ], [ %.1248.2.fr.i, %bb.dj ], [ %i.jq, %.thread376.i ], [ %i.jq, %bb.di ] ; 4 uses
  %i.jy = insertelement <4 x i32> poison, i32 %i.jx, i64 0
  %i.jz = shufflevector <4 x i32> %i.jy, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.jz, ptr %i.k, align 8, !tbaa !15
  %wide.trip.count.i = zext nneg i32 %i.jx to i64
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dl
  %indvars.iv.next342.i = add nuw nsw i64 %indvars.iv341.i, 1 ; 2 uses
  %exitcond345.not.i = icmp eq i64 %indvars.iv.next342.i, %wide.trip.count.i
  br i1 %exitcond345.not.i, label %bb.dn, label %bb.dl, !llvm.loop !35

bb.dl:                                            ; preds = %bb.dk, %.lr.ph316.i
  %indvars.iv341.i = phi i64 [ 0, %.lr.ph316.i ], [ %indvars.iv.next342.i, %bb.dk ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv341.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !15
  %i.kc = icmp sgt i32 %i.kb, %i.jx
  br i1 %i.kc, label %bb.dm, label %bb.dk

bb.dm:                                            ; preds = %bb.dl
  call void @exit(i32 noundef 1) #24
  unreachable

bb.dn:                                            ; preds = %bb.dk
  %.not268.i = icmp eq i64 %9, 0
  %spec.store.select.i = select i1 %.not268.i, i64 5, i64 %9
  store i64 %spec.store.select.i, ptr %i.h, align 8
  store i32 %spec.store.select307.i, ptr %i.j, align 8
  %i.kd = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %.not11 = icmp eq ptr %i.kd, null
  br i1 %.not11, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ke = call noalias ptr @fopen64(ptr noundef nonnull %i.kd, ptr noundef nonnull @.str) ; 2 uses
  store ptr %i.ke, ptr @output, align 8, !tbaa !11
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.dp, label %._crit_edge

._crit_edge:                                      ; preds = %bb.do
  %.pre = load i32, ptr %i.k, align 8, !tbaa !57
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.kh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #23 ; 0 uses
  %i.ki = load ptr, ptr %i.ae, align 8, !tbaa !58
  call void @perror(ptr noundef %i.ki) #25
  br label %bb.et

bb.dq:                                            ; preds = %._crit_edge, %bb.dn
  %i.kj = phi i32 [ %.pre, %._crit_edge ], [ %i.jx, %bb.dn ] ; 4 uses
  call void @print_version(ptr noundef nonnull @.str.30) #19
  %i.kk = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.31, i64 21, i64 1, ptr %i.kk) ; 0 uses
  %i.kl = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite42.i = call i64 @fwrite(ptr nonnull @.str.32, i64 7, i64 1, ptr %i.kl) ; 0 uses
  %i.km = load i64, ptr %i.h, align 8, !tbaa !53  ; 2 uses
  %i.kn = and i64 %i.km, 1
  %.not.i.i = icmp eq i64 %i.kn, 0
  br i1 %.not.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ko = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.61, i64 6, i64 1, ptr %i.ko) ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.kp = and i64 %i.km, 4
  %.not2.i.i = icmp eq i64 %i.kp, 0
  br i1 %.not2.i.i, label %print_io_api.exit.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.kq = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite3.i.i = call i64 @fwrite(ptr nonnull @.str.62, i64 5, i64 1, ptr %i.kq) ; 0 uses
  br label %print_io_api.exit.i

print_io_api.exit.i:                              ; preds = %bb.dt, %bb.ds
  %i.kr = load ptr, ptr @output, align 8, !tbaa !11
  %fputc.i.i = call i32 @fputc(i32 10, ptr %i.kr) ; 0 uses
  %i.ks = load ptr, ptr @output, align 8, !tbaa !11
  %i.kt = load i32, ptr %i.j, align 8, !tbaa !42
  %i.ku = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ks, ptr noundef nonnull @.str.33, i32 noundef %i.kt) #19 ; 0 uses
  %i.kv = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite43.i = call i64 @fwrite(ptr nonnull @.str.34, i64 13, i64 1, ptr %i.kv) ; 0 uses
  %i.kw = icmp sgt i32 %i.kj, 0                   ; 3 uses
  br i1 %i.kw, label %.lr.ph.i13, label %._crit_edge82.critedge.i

.lr.ph.i13:                                       ; preds = %print_io_api.exit.i
  %wide.trip.count.i14 = zext nneg i32 %i.kj to i64 ; 2 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.du, %.lr.ph.i13
  %indvars.iv.i15 = phi i64 [ 0, %.lr.ph.i13 ], [ %indvars.iv.next.i16, %bb.du ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i15
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !43
  call fastcc void @recover_size_and_print(i64 noundef %i.ky)
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %indvars.iv.next.i16, %wide.trip.count.i14
  br i1 %exitcond.not.i17, label %._crit_edge.i18, label %bb.du, !llvm.loop !36

._crit_edge.i18:                                  ; preds = %bb.du
  %i.kz = load ptr, ptr @output, align 8, !tbaa !11
  %fputc.i = call i32 @fputc(i32 10, ptr %i.kz)   ; 0 uses
  %i.la = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite45.i = call i64 @fwrite(ptr nonnull @.str.36, i64 21, i64 1, ptr %i.la) ; 0 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %._crit_edge.i18
  %indvars.iv92.i = phi i64 [ 0, %._crit_edge.i18 ], [ %indvars.iv.next93.i, %bb.dv ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv92.i
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !43
  call fastcc void @recover_size_and_print(i64 noundef %i.lc)
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %exitcond96.not.i = icmp eq i64 %indvars.iv.next93.i, %wide.trip.count.i14
  br i1 %exitcond96.not.i, label %._crit_edge82.i, label %bb.dv, !llvm.loop !37

._crit_edge82.critedge.i:                         ; preds = %print_io_api.exit.i
  %i.ld = load ptr, ptr @output, align 8, !tbaa !11
  %fputc.c.i = call i32 @fputc(i32 10, ptr %i.ld) ; 0 uses
  %i.le = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite45.c.i = call i64 @fwrite(ptr nonnull @.str.36, i64 21, i64 1, ptr %i.le) ; 0 uses
  br label %._crit_edge82.i

._crit_edge82.i:                                  ; preds = %bb.dv, %._crit_edge82.critedge.i
  %i.lf = load ptr, ptr @output, align 8, !tbaa !11
  %fputc47.i = call i32 @fputc(i32 10, ptr %i.lf) ; 0 uses
  %i.lg = load i64, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %.not.i12 = icmp eq i64 %i.lg, 0
  %i.lh = load ptr, ptr @output, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i12, label %bb.dz, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge82.i
  %i.li = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lh, ptr noundef nonnull @.str.37, i64 noundef %i.lg) #19 ; 0 uses
  %i.lj = load i64, ptr %i.i, align 8, !tbaa !48  ; 2 uses
  %.not49.i = icmp eq i64 %i.lj, 0
  %i.lk = load ptr, ptr @output, align 8, !tbaa !11 ; 2 uses
  br i1 %.not49.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ll = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lk, ptr noundef nonnull @.str.38, i64 noundef %i.lj) #19 ; 0 uses
  br label %bb.ea

bb.dy:                                            ; preds = %bb.dw
  %fwrite50.i = call i64 @fwrite(ptr nonnull @.str.39, i64 24, i64 1, ptr %i.lk) ; 0 uses
  br label %bb.ea

bb.dz:                                            ; preds = %._crit_edge82.i
  %fwrite48.i = call i64 @fwrite(ptr nonnull @.str.40, i64 26, i64 1, ptr %i.lh) ; 0 uses
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %i.lm = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite51.i = call i64 @fwrite(ptr nonnull @.str.41, i64 23, i64 1, ptr %i.lm) ; 0 uses
  br i1 %i.kw, label %.lr.ph85.i, label %._crit_edge86.i

.lr.ph85.i:                                       ; preds = %bb.ea
  %wide.trip.count100.i = zext nneg i32 %i.kj to i64
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %.lr.ph85.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph85.i ], [ %indvars.iv.next98.i, %bb.eb ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv97.i
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !15
  %i.lp = sext i32 %i.lo to i64
  call fastcc void @recover_size_and_print(i64 noundef %i.lp)
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond101.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count100.i
  br i1 %exitcond101.not.i, label %._crit_edge86.i, label %bb.eb, !llvm.loop !38

._crit_edge86.i:                                  ; preds = %bb.eb, %bb.ea
  %i.lq = load ptr, ptr @output, align 8, !tbaa !11
  %fputc53.i = call i32 @fputc(i32 10, ptr %i.lq) ; 0 uses
  %i.lr = load i64, ptr %i.h, align 8, !tbaa !53
  %i.ls = and i64 %i.lr, 4
  %.not54.i = icmp eq i64 %i.ls, 0
  br i1 %.not54.i, label %report_parameters.exit, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge86.i
  %i.lt = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite55.i = call i64 @fwrite(ptr nonnull @.str.42, i64 25, i64 1, ptr %i.lt) ; 0 uses
  %i.lu = load i32, ptr %i.an, align 8, !tbaa !54
  %.not56.i = icmp eq i32 %i.lu, 0
  %i.lv = load ptr, ptr @output, align 8, !tbaa !11 ; 2 uses
  br i1 %.not56.i, label %bb.eh, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %fwrite58.i = call i64 @fwrite(ptr nonnull @.str.43, i64 8, i64 1, ptr %i.lv) ; 0 uses
  %i.lw = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite59.i = call i64 @fwrite(ptr nonnull @.str.44, i64 16, i64 1, ptr %i.lw) ; 0 uses
  br i1 %i.kw, label %.lr.ph89.i, label %._crit_edge90.i

.lr.ph89.i:                                       ; preds = %bb.ed
  %wide.trip.count105.i = zext nneg i32 %i.kj to i64
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ee, %.lr.ph89.i
  %indvars.iv102.i = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next103.i, %bb.ee ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv102.i
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !43
  call fastcc void @recover_size_and_print(i64 noundef %i.ly)
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond106.not.i = icmp eq i64 %indvars.iv.next103.i, %wide.trip.count105.i
  br i1 %exitcond106.not.i, label %._crit_edge90.i, label %bb.ee, !llvm.loop !39

._crit_edge90.i:                                  ; preds = %bb.ee, %bb.ed
  %i.lz = load ptr, ptr @output, align 8, !tbaa !11
  %fputc61.i = call i32 @fputc(i32 10, ptr %i.lz) ; 0 uses
  %i.ma = load ptr, ptr @output, align 8, !tbaa !11
  %fwrite62.i = call i64 @fwrite(ptr nonnull @.str.45, i64 24, i64 1, ptr %i.ma) ; 0 uses
  %i.mb = load i32, ptr %i.ap, align 8, !tbaa !60
  %.not63.i = icmp eq i32 %i.mb, 0
  %i.mc = load ptr, ptr @output, align 8, !tbaa !11 ; 2 uses
  br i1 %.not63.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %._crit_edge90.i
  %fwrite65.i = call i64 @fwrite(ptr nonnull @.str.46, i64 11, i64 1, ptr %i.mc) ; 0 uses
  br label %bb.ei

bb.eg:                                            ; preds = %._crit_edge90.i
  %fwrite64.i = call i64 @fwrite(ptr nonnull @.str.47, i64 6, i64 1, ptr %i.mc) ; 0 uses
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ec
  %fwrite57.i = call i64 @fwrite(ptr nonnull @.str.48, i64 11, i64 1, ptr %i.lv) ; 0 uses
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %bb.ef
  %i.md = load ptr, ptr @output, align 8, !tbaa !11
end_hunk_1
