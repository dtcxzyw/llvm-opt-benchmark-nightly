Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjtran?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tjtransform = type { %struct.tjregion, i32, i32, ptr, ptr }
%struct.tjregion = type { i32, i32, i32, i32 }

@.str.1 = private unnamed_addr constant [6 x i8] c"-crop\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%d%c%d+%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-copy\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"comments\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-flip\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"-greyscale\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"-icc\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"-maxscans\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"-maxmemory\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"-optimise\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"-rotate\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"90\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"180\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"270\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"-restart\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"-transverse\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"-transpose\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"%s in line %d while %s:\0A%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"creating TurboJPEG instance\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"setting TJPARAM_STOPONWARNING\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"setting TJPARAM_OPTIMIZE\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"setting TJPARAM_SCANLIMIT\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"setting TJPARAM_RESTARTBLOCKS\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"setting TJPARAM_RESTARTROWS\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"setting TJPARAM_MAXMEMORY\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"setting TJPARAM_SAVEMARKERS\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"ERROR in line %d while %s:\0A%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"opening input file\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"determining input file size\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"Input file contains no data\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"allocating JPEG buffer\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"reading input file\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"reading JPEG header\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"setting TJPARAM_PROGRESSIVE\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"setting TJPARAM_ARITHMETIC\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"adjusting cropping region\00", align 1
@.str.52 = private unnamed_addr constant [53 x i8] c"Could not determine subsampling level of input image\00", align 1
@tjMCUWidth = internal unnamed_addr constant [9 x i32] [i32 8, i32 16, i32 16, i32 8, i32 8, i32 32, i32 8, i32 32, i32 16], align 16
@tjMCUHeight = internal unnamed_addr constant [9 x i32] [i32 8, i32 8, i32 16, i32 8, i32 16, i32 8, i32 32, i32 16, i32 32], align 16
@.str.53 = private unnamed_addr constant [20 x i8] c"opening ICC profile\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"determining ICC profile size\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"ICC profile contains no data\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"allocating ICC profile buffer\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"reading ICC profile\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"setting ICC profile\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"transforming input image\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"opening output file\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"writing output file\00", align 1
@.str.63 = private unnamed_addr constant [62 x i8] c"\0AUSAGE: %s [options] <JPEG input image> <JPEG output image>\0A\0A\00", align 1
@str = private unnamed_addr constant [73 x i8] c"This program reads the DCT coefficients from the lossy JPEG input image,\00", align 1
@str.1 = private unnamed_addr constant [75 x i8] c"optionally transforms them, and writes them to a lossy JPEG output image.\0A\00", align 1
@str.2 = private unnamed_addr constant [30 x i8] c"OPTIONS (CAN BE ABBREVBIATED)\00", align 1
@str.3 = private unnamed_addr constant [30 x i8] c"-----------------------------\00", align 1
@str.4 = private unnamed_addr constant [12 x i8] c"-arithmetic\00", align 1
@str.5 = private unnamed_addr constant [73 x i8] c"    Use arithmetic entropy coding in the output image instead of Huffman\00", align 1
@str.6 = private unnamed_addr constant [55 x i8] c"    entropy coding (can be combined with -progressive)\00", align 1
@str.7 = private unnamed_addr constant [10 x i8] c"-copy all\00", align 1
@str.8 = private unnamed_addr constant [80 x i8] c"    Copy all extra markers (including comments, JFIF thumbnails, Exif data, and\00", align 1
@str.9 = private unnamed_addr constant [63 x i8] c"    ICC profile data) from the input image to the output image\00", align 1
@str.10 = private unnamed_addr constant [15 x i8] c"-copy comments\00", align 1
@str.11 = private unnamed_addr constant [74 x i8] c"    Do not copy any extra markers, except comment markers, from the input\00", align 1
@str.12 = private unnamed_addr constant [40 x i8] c"    image to the output image [default]\00", align 1
@str.13 = private unnamed_addr constant [10 x i8] c"-copy icc\00", align 1
@str.14 = private unnamed_addr constant [75 x i8] c"    Do not copy any extra markers, except ICC profile data, from the input\00", align 1
@str.15 = private unnamed_addr constant [30 x i8] c"    image to the output image\00", align 1
@str.16 = private unnamed_addr constant [11 x i8] c"-copy none\00", align 1
@str.17 = private unnamed_addr constant [75 x i8] c"    Do not copy any extra markers from the input image to the output image\00", align 1
@str.18 = private unnamed_addr constant [14 x i8] c"-crop WxH+X+Y\00", align 1
@str.19 = private unnamed_addr constant [79 x i8] c"    Include only the specified region of the input image.  (W, H, X, and Y are\00", align 1
@str.20 = private unnamed_addr constant [76 x i8] c"    the width, height, left boundary, and upper boundary of the region, all\00", align 1
@str.21 = private unnamed_addr constant [78 x i8] c"    specified relative to the transformed image dimensions.)  If necessary, X\00", align 1
@str.22 = private unnamed_addr constant [80 x i8] c"    and Y will be shifted up and left to the nearest iMCU boundary, and W and H\00", align 1
@str.23 = private unnamed_addr constant [35 x i8] c"    will be increased accordingly.\00", align 1
@str.24 = private unnamed_addr constant [75 x i8] c"-flip {horizontal|vertical}, -rotate {90|180|270}, -transpose, -transverse\00", align 1
@str.25 = private unnamed_addr constant [74 x i8] c"    Perform the specified lossless transform operation (these options are\00", align 1
@str.26 = private unnamed_addr constant [24 x i8] c"    mutually exclusive)\00", align 1
@str.27 = private unnamed_addr constant [11 x i8] c"-grayscale\00", align 1
@str.28 = private unnamed_addr constant [66 x i8] c"    Create a grayscale output image from a full-color input image\00", align 1
@str.29 = private unnamed_addr constant [10 x i8] c"-icc FILE\00", align 1
@str.30 = private unnamed_addr constant [76 x i8] c"    Embed the ICC (International Color Consortium) color management profile\00", align 1
@str.31 = private unnamed_addr constant [50 x i8] c"    from the specified file into the output image\00", align 1
@str.32 = private unnamed_addr constant [13 x i8] c"-maxmemory N\00", align 1
@str.33 = private unnamed_addr constant [79 x i8] c"    Memory limit (in megabytes) for intermediate buffers used with progressive\00", align 1
@str.34 = private unnamed_addr constant [78 x i8] c"    JPEG compression, Huffman table optimization, and lossless transformation\00", align 1
@str.35 = private unnamed_addr constant [25 x i8] c"    [default = no limit]\00", align 1
@str.36 = private unnamed_addr constant [12 x i8] c"-maxscans N\00", align 1
@str.37 = private unnamed_addr constant [76 x i8] c"    Refuse to transform progressive JPEG images that have more than N scans\00", align 1
@str.38 = private unnamed_addr constant [10 x i8] c"-optimize\00", align 1
@str.39 = private unnamed_addr constant [55 x i8] c"    Use Huffman table optimization in the output image\00", align 1
@str.40 = private unnamed_addr constant [9 x i8] c"-perfect\00", align 1
@str.41 = private unnamed_addr constant [78 x i8] c"    Abort if the requested transform operation is imperfect (non-reversible.)\00", align 1
@str.42 = private unnamed_addr constant [76 x i8] c"    '-flip horizontal', '-rotate 180', '-rotate 270', and '-transverse' are\00", align 1
@str.43 = private unnamed_addr constant [76 x i8] c"    imperfect if the image width is not evenly divisible by the iMCU width.\00", align 1
@str.44 = private unnamed_addr constant [73 x i8] c"    '-flip vertical', '-rotate 90', '-rotate 180', and '-transverse' are\00", align 1
@str.45 = private unnamed_addr constant [78 x i8] c"    imperfect if the image height is not evenly divisible by the iMCU height.\00", align 1
@str.46 = private unnamed_addr constant [13 x i8] c"-progressive\00", align 1
@str.47 = private unnamed_addr constant [76 x i8] c"    Create a progressive output image instead of a single-scan output image\00", align 1
@str.48 = private unnamed_addr constant [79 x i8] c"    (can be combined with -arithmetic; implies -optimize unless -arithmetic is\00", align 1
@str.49 = private unnamed_addr constant [20 x i8] c"    also specified)\00", align 1
@str.50 = private unnamed_addr constant [11 x i8] c"-restart N\00", align 1
@str.51 = private unnamed_addr constant [78 x i8] c"    Add a restart marker every N MCU rows [default = 0 (no restart markers)].\00", align 1
@str.52 = private unnamed_addr constant [63 x i8] c"    Append 'B' to specify the restart marker interval in MCUs.\00", align 1
@str.53 = private unnamed_addr constant [8 x i8] c"-strict\00", align 1
@str.54 = private unnamed_addr constant [76 x i8] c"    Treat all warnings as fatal; abort immediately if incomplete or corrupt\00", align 1
@str.55 = private unnamed_addr constant [78 x i8] c"    data is encountered in the input image, rather than trying to salvage the\00", align 1
@str.56 = private unnamed_addr constant [22 x i8] c"    rest of the image\00", align 1
@str.57 = private unnamed_addr constant [6 x i8] c"-trim\00", align 1
@str.58 = private unnamed_addr constant [76 x i8] c"    If necessary, trim the partial iMCUs at the right or bottom edge of the\00", align 1
@str.59 = private unnamed_addr constant [51 x i8] c"    image to make the requested transform perfect\0A\00", align 1
@switch.table.main = private unnamed_addr constant [8 x i8] [i8 4, i8 poison, i8 poison, i8 1, i8 6, i8 5, i8 8, i8 7], align 4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tjtransform, align 8        ; 18 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.f = icmp sgt i32 %0, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.g = add nsw i32 %0, -1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bd
  %.0467728 = phi ptr [ null, %.lr.ph ], [ %.1468, %bb.bd ] ; 24 uses
  %.0470727 = phi i32 [ -1, %.lr.ph ], [ %.1471, %bb.bd ] ; 24 uses
  %.0472726 = phi i32 [ 1, %.lr.ph ], [ %.1473, %bb.bd ] ; 22 uses
  %.0475725 = phi i32 [ -1, %.lr.ph ], [ %.2477, %bb.bd ] ; 25 uses
  %.0478724 = phi i32 [ -1, %.lr.ph ], [ %.2480, %bb.bd ] ; 25 uses
  %.0481723 = phi i32 [ 0, %.lr.ph ], [ %.1482, %bb.bd ] ; 24 uses
  %.0483722 = phi i32 [ -1, %.lr.ph ], [ %.1484, %bb.bd ] ; 23 uses
  %.0485721 = phi i32 [ -1, %.lr.ph ], [ %.1486, %bb.bd ] ; 24 uses
  %.0487720 = phi i32 [ -1, %.lr.ph ], [ %.1488, %bb.bd ] ; 24 uses
  %.0489719 = phi i32 [ 0, %.lr.ph ], [ %.1490, %bb.bd ] ; 24 uses
  %.0505718 = phi i32 [ 1, %.lr.ph ], [ %i.dr, %bb.bd ] ; 21 uses
  %i.m = sext i32 %.0505718 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %1, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13   ; 20 uses
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #17 ; 5 uses
  %spec.select = call i64 @llvm.umax.i64(i64 %i.p, i64 2) ; 13 uses
  %i.q = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.4, i64 noundef %spec.select) #17
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.bd, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select583 = call i64 @llvm.umax.i64(i64 %i.p, i64 3) ; 3 uses
  %i.r = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.1, i64 noundef %spec.select583) #17
  %.not551 = icmp eq i32 %i.r, 0
  %i.s = icmp slt i32 %.0505718, %i.g             ; 8 uses
  %or.cond585 = select i1 %.not551, i1 %i.s, i1 false
  br i1 %or.cond585, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i8 -1, ptr %i.c, align 1, !tbaa !14
  %i.t = add nsw i32 %.0505718, 1                 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.x = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.w, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #16
  %i.y = icmp ne i32 %i.x, 5
  %i.z = load i32, ptr %i.j, align 8
  %i.aa = icmp slt i32 %i.z, 1
  %or.cond = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i8, ptr %i.c, align 1, !tbaa !14
  %i.ac = and i8 %i.ab, -33
  %or.cond6 = icmp ne i8 %i.ac, 88
  %i.ad = load i32, ptr %i.k, align 4
  %i.ae = icmp slt i32 %i.ad, 1
  %or.cond10 = select i1 %or.cond6, i1 true, i1 %i.ae
  %i.af = load i32, ptr %2, align 8
  %i.ag = icmp slt i32 %i.af, 0
  %or.cond14 = select i1 %or.cond10, i1 true, i1 %i.ag
  %i.ah = load i32, ptr %i.l, align 4
  %i.ai = icmp slt i32 %i.ah, 0
  %or.cond18 = select i1 %or.cond14, i1 true, i1 %i.ai
  br i1 %or.cond18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.aj)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.i, align 4, !tbaa !17
  %i.al = or i32 %i.ak, 4
  store i32 %i.al, ptr %i.i, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.bd

bb.h:                                             ; preds = %bb.c
  %i.am = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.3, i64 noundef %spec.select) #17
  %.not552 = icmp eq i32 %i.am, 0
  %or.cond588 = select i1 %.not552, i1 %i.s, i1 false
  br i1 %or.cond588, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.an = add nsw i32 %.0505718, 1                ; 5 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !13 ; 5 uses
  %i.ar = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #17
  %spec.select589 = call i64 @llvm.umax.i64(i64 %i.ar, i64 1) ; 4 uses
  %i.as = call i32 @strncasecmp(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.4, i64 noundef %spec.select589) #17
  %.not553 = icmp eq i32 %i.as, 0
  br i1 %.not553, label %bb.bd, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = call i32 @strncasecmp(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.5, i64 noundef %spec.select589) #17
  %.not554 = icmp eq i32 %i.at, 0
  br i1 %.not554, label %bb.bd, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = call i32 @strncasecmp(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.6, i64 noundef %spec.select589) #17
  %.not555 = icmp eq i32 %i.au, 0
  br i1 %.not555, label %bb.bd, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = call i32 @strncasecmp(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.7, i64 noundef %spec.select589) #17
  %.not556 = icmp eq i32 %i.av, 0
  br i1 %.not556, label %bb.bd, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.aw)
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.ax = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.8, i64 noundef %spec.select) #17
  %.not557 = icmp eq i32 %i.ax, 0
  %or.cond595 = select i1 %.not557, i1 %i.s, i1 false
  br i1 %or.cond595, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ay = add nsw i32 %.0505718, 1                ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %1, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13 ; 3 uses
  %i.bc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #17
  %spec.select596 = call i64 @llvm.umax.i64(i64 %i.bc, i64 1) ; 2 uses
  %i.bd = call i32 @strncasecmp(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.9, i64 noundef %spec.select596) #17
  %.not558 = icmp eq i32 %i.bd, 0
  br i1 %.not558, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.h, align 8, !tbaa !18
  br label %bb.bd

bb.q:                                             ; preds = %bb.o
  %i.be = call i32 @strncasecmp(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.10, i64 noundef %spec.select596) #17
  %.not559 = icmp eq i32 %i.be, 0
  br i1 %.not559, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 2, ptr %i.h, align 8, !tbaa !18
  br label %bb.bd

bb.s:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.bf)
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.bg = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.27, i64 noundef %spec.select) #17
  %.not560 = icmp eq i32 %i.bg, 0
  br i1 %.not560, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.12, i64 noundef %spec.select) #17
  %.not561 = icmp eq i32 %i.bh, 0
  br i1 %.not561, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bi = load i32, ptr %i.i, align 4, !tbaa !17
  %i.bj = or i32 %i.bi, 8
  store i32 %i.bj, ptr %i.i, align 4, !tbaa !17
  br label %bb.bd

bb.w:                                             ; preds = %bb.u
  %i.bk = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.13, i64 noundef %spec.select) #17
  %.not562 = icmp eq i32 %i.bk, 0
  %or.cond602 = select i1 %.not562, i1 %i.s, i1 false
  br i1 %or.cond602, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = add nsw i32 %.0505718, 1                ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !13
  br label %bb.bd

bb.y:                                             ; preds = %bb.w
  %spec.select603 = call i64 @llvm.umax.i64(i64 %i.p, i64 5)
  %i.bp = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.14, i64 noundef %spec.select603) #17
  %.not563 = icmp eq i32 %i.bp, 0
  %or.cond605 = select i1 %.not563, i1 %i.s, i1 false
  br i1 %or.cond605, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bq = add nsw i32 %.0505718, 1                ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !13
  %i.bu = call i64 @strtol(ptr noundef nonnull captures(none) %i.bt, ptr noundef null, i32 noundef 10) #16, !inline_history !9
  %i.bv = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.aa, label %bb.bd

bb.aa:                                            ; preds = %bb.z
  %i.bx = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.bx)
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.by = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.15, i64 noundef %spec.select) #17
  %.not564 = icmp eq i32 %i.by, 0
  %or.cond608 = select i1 %.not564, i1 %i.s, i1 false
  br i1 %or.cond608, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bz = add nsw i32 %.0505718, 1                ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !13
  %i.cd = call i64 @strtol(ptr noundef nonnull captures(none) %i.cc, ptr noundef null, i32 noundef 10) #16, !inline_history !9
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.ad, label %bb.bd

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.cg)
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ch = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.38, i64 noundef %spec.select) #17
  %.not565 = icmp eq i32 %i.ch, 0
  br i1 %.not565, label %bb.bd, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.17, i64 noundef %spec.select) #17
  %.not566 = icmp eq i32 %i.ci, 0
  br i1 %.not566, label %bb.bd, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.40, i64 noundef %spec.select583) #17
  %.not567 = icmp eq i32 %i.cj, 0
  br i1 %.not567, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ck = load i32, ptr %i.i, align 4, !tbaa !17
  %i.cl = or i32 %i.ck, 1
  store i32 %i.cl, ptr %i.i, align 4, !tbaa !17
  br label %bb.bd

bb.ai:                                            ; preds = %bb.ag
  %i.cm = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.46, i64 noundef %spec.select) #17
  %.not568 = icmp eq i32 %i.cm, 0
  br i1 %.not568, label %bb.bd, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.20, i64 noundef %spec.select583) #17
  %.not569 = icmp eq i32 %i.cn, 0
  %or.cond615 = select i1 %.not569, i1 %i.s, i1 false
  br i1 %or.cond615, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.co = add nsw i32 %.0505718, 1                ; 4 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !13 ; 4 uses
  %i.cs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cr) #17 ; 2 uses
  %spec.select616 = call i64 @llvm.umax.i64(i64 %i.cs, i64 2)
  %i.ct = call i32 @strncasecmp(ptr noundef nonnull %i.cr, ptr noundef nonnull @.str.21, i64 noundef %spec.select616) #17
  %.not570 = icmp eq i32 %i.ct, 0
  br i1 %.not570, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 5, ptr %i.h, align 8, !tbaa !18
  br label %bb.bd

bb.am:                                            ; preds = %bb.ak
  %spec.select617 = call i64 @llvm.umax.i64(i64 %i.cs, i64 3) ; 2 uses
  %i.cu = call i32 @strncasecmp(ptr noundef nonnull %i.cr, ptr noundef nonnull @.str.22, i64 noundef %spec.select617) #17
  %.not571 = icmp eq i32 %i.cu, 0
  br i1 %.not571, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 6, ptr %i.h, align 8, !tbaa !18
  br label %bb.bd

bb.ao:                                            ; preds = %bb.am
  %i.cv = call i32 @strncasecmp(ptr noundef nonnull %i.cr, ptr noundef nonnull @.str.23, i64 noundef %spec.select617) #17
  %.not572 = icmp eq i32 %i.cv, 0
  br i1 %.not572, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 7, ptr %i.h, align 8, !tbaa !18
  br label %bb.bd

bb.aq:                                            ; preds = %bb.ao
  %i.cw = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.cw)
  unreachable

bb.ar:                                            ; preds = %bb.aj
  %i.cx = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.24, i64 noundef %spec.select) #17
  %.not573 = icmp eq i32 %i.cx, 0
  %or.cond621 = select i1 %.not573, i1 %i.s, i1 false
  br i1 %or.cond621, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 -1, ptr %i.d, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i8 0, ptr %i.e, align 1, !tbaa !14
  %i.cy = add nsw i32 %.0505718, 1                ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !13
  %i.dc = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.db, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #16 ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 1
  %i.de = load i32, ptr %i.d, align 4             ; 3 uses
  %i.df = icmp ugt i32 %i.de, 65535
  %or.cond22 = select i1 %i.dd, i1 true, i1 %i.df
  br i1 %or.cond22, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dg = icmp eq i32 %i.dc, 2
  %i.dh = load i8, ptr %i.e, align 1
  %i.di = and i8 %i.dh, -33                       ; 2 uses
  %i.dj = icmp ne i8 %i.di, 66
  %or.cond28 = select i1 %i.dg, i1 %i.dj, i1 false
  br i1 %or.cond28, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dk = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.dk)
  unreachable

bb.av:                                            ; preds = %bb.at
  %or.cond31 = icmp eq i8 %i.di, 66               ; 2 uses
  %..0478 = select i1 %or.cond31, i32 %i.de, i32 %.0478724
  %.0475. = select i1 %or.cond31, i32 %.0475725, i32 %i.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.bd

bb.aw:                                            ; preds = %bb.ar
  %i.dl = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.53, i64 noundef %spec.select) #17
  %.not574 = icmp eq i32 %i.dl, 0
  br i1 %.not574, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %spec.select623 = call i64 @llvm.umax.i64(i64 %i.p, i64 7)
  %i.dm = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.27, i64 noundef %spec.select623) #17
  %.not575 = icmp eq i32 %i.dm, 0
  br i1 %.not575, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 4, ptr %i.h, align 8, !tbaa !18
  br label %bb.bd

bb.az:                                            ; preds = %bb.ax
  %spec.select624 = call i64 @llvm.umax.i64(i64 %i.p, i64 4)
  %i.dn = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.57, i64 noundef %spec.select624) #17
  %.not576 = icmp eq i32 %i.dn, 0
  br i1 %.not576, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.do = load i32, ptr %i.i, align 4, !tbaa !17
  %i.dp = or i32 %i.do, 2
  store i32 %i.dp, ptr %i.i, align 4, !tbaa !17
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %i.dq = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.29, i64 noundef %spec.select) #17
  %.not577 = icmp eq i32 %i.dq, 0
  br i1 %.not577, label %bb.bc, label %._crit_edge

bb.bc:                                            ; preds = %bb.bb
  store i32 3, ptr %i.h, align 8, !tbaa !18
  br label %bb.bd

bb.bd:                                            ; preds = %bb.aw, %bb.ai, %bb.ae, %bb.af, %bb.ac, %bb.z, %bb.k, %bb.j, %bb.i, %bb.b, %bb.l, %bb.v, %bb.av, %bb.ay, %bb.bc, %bb.ba, %bb.al, %bb.ap, %bb.an, %bb.ah, %bb.x, %bb.p, %bb.r, %bb.g
  %.1506 = phi i32 [ %.0505718, %bb.bc ], [ %.0505718, %bb.ba ], [ %.0505718, %bb.ay ], [ %.0505718, %bb.ai ], [ %i.cy, %bb.av ], [ %.0505718, %bb.aw ], [ %i.co, %bb.ap ], [ %i.co, %bb.an ], [ %i.co, %bb.al ], [ %.0505718, %bb.ae ], [ %.0505718, %bb.ah ], [ %i.bz, %bb.ac ], [ %i.bq, %bb.z ], [ %i.an, %bb.k ], [ %i.bl, %bb.x ], [ %.0505718, %bb.v ], [ %.0505718, %bb.af ], [ %i.ay, %bb.r ], [ %i.ay, %bb.p ], [ %i.t, %bb.g ], [ %i.an, %bb.l ], [ %i.an, %bb.j ], [ %i.an, %bb.i ], [ %.0505718, %bb.b ]
  %.1490 = phi i32 [ %.0489719, %bb.bc ], [ %.0489719, %bb.ba ], [ %.0489719, %bb.ay ], [ %.0489719, %bb.ai ], [ %.0489719, %bb.av ], [ %.0489719, %bb.aw ], [ %.0489719, %bb.ap ], [ %.0489719, %bb.an ], [ %.0489719, %bb.al ], [ %.0489719, %bb.ae ], [ %.0489719, %bb.ah ], [ %.0489719, %bb.ac ], [ %.0489719, %bb.z ], [ %.0489719, %bb.k ], [ %.0489719, %bb.x ], [ %.0489719, %bb.v ], [ %.0489719, %bb.af ], [ %.0489719, %bb.r ], [ %.0489719, %bb.p ], [ %.0489719, %bb.g ], [ %.0489719, %bb.l ], [ %.0489719, %bb.j ], [ %.0489719, %bb.i ], [ 1, %bb.b ] ; 2 uses
  %.1488 = phi i32 [ %.0487720, %bb.bc ], [ %.0487720, %bb.ba ], [ %.0487720, %bb.ay ], [ %.0487720, %bb.ai ], [ %.0487720, %bb.av ], [ %.0487720, %bb.aw ], [ %.0487720, %bb.ap ], [ %.0487720, %bb.an ], [ %.0487720, %bb.al ], [ %.0487720, %bb.ae ], [ %.0487720, %bb.ah ], [ %i.ce, %bb.ac ], [ %.0487720, %bb.z ], [ %.0487720, %bb.k ], [ %.0487720, %bb.x ], [ %.0487720, %bb.v ], [ %.0487720, %bb.af ], [ %.0487720, %bb.r ], [ %.0487720, %bb.p ], [ %.0487720, %bb.g ], [ %.0487720, %bb.l ], [ %.0487720, %bb.j ], [ %.0487720, %bb.i ], [ %.0487720, %bb.b ] ; 2 uses
  %.1486 = phi i32 [ %.0485721, %bb.bc ], [ %.0485721, %bb.ba ], [ %.0485721, %bb.ay ], [ %.0485721, %bb.ai ], [ %.0485721, %bb.av ], [ %.0485721, %bb.aw ], [ %.0485721, %bb.ap ], [ %.0485721, %bb.an ], [ %.0485721, %bb.al ], [ %.0485721, %bb.ae ], [ %.0485721, %bb.ah ], [ %.0485721, %bb.ac ], [ %i.bv, %bb.z ], [ %.0485721, %bb.k ], [ %.0485721, %bb.x ], [ %.0485721, %bb.v ], [ %.0485721, %bb.af ], [ %.0485721, %bb.r ], [ %.0485721, %bb.p ], [ %.0485721, %bb.g ], [ %.0485721, %bb.l ], [ %.0485721, %bb.j ], [ %.0485721, %bb.i ], [ %.0485721, %bb.b ] ; 2 uses
  %.1484 = phi i32 [ %.0483722, %bb.bc ], [ %.0483722, %bb.ba ], [ %.0483722, %bb.ay ], [ %.0483722, %bb.ai ], [ %.0483722, %bb.av ], [ %.0483722, %bb.aw ], [ %.0483722, %bb.ap ], [ %.0483722, %bb.an ], [ %.0483722, %bb.al ], [ 1, %bb.ae ], [ %.0483722, %bb.ah ], [ %.0483722, %bb.ac ], [ %.0483722, %bb.z ], [ %.0483722, %bb.k ], [ %.0483722, %bb.x ], [ %.0483722, %bb.v ], [ 1, %bb.af ], [ %.0483722, %bb.r ], [ %.0483722, %bb.p ], [ %.0483722, %bb.g ], [ %.0483722, %bb.l ], [ %.0483722, %bb.j ], [ %.0483722, %bb.i ], [ %.0483722, %bb.b ] ; 2 uses
  %.1482 = phi i32 [ %.0481723, %bb.bc ], [ %.0481723, %bb.ba ], [ %.0481723, %bb.ay ], [ 1, %bb.ai ], [ %.0481723, %bb.av ], [ %.0481723, %bb.aw ], [ %.0481723, %bb.ap ], [ %.0481723, %bb.an ], [ %.0481723, %bb.al ], [ %.0481723, %bb.ae ], [ %.0481723, %bb.ah ], [ %.0481723, %bb.ac ], [ %.0481723, %bb.z ], [ %.0481723, %bb.k ], [ %.0481723, %bb.x ], [ %.0481723, %bb.v ], [ %.0481723, %bb.af ], [ %.0481723, %bb.r ], [ %.0481723, %bb.p ], [ %.0481723, %bb.g ], [ %.0481723, %bb.l ], [ %.0481723, %bb.j ], [ %.0481723, %bb.i ], [ %.0481723, %bb.b ] ; 2 uses
  %.2480 = phi i32 [ %.0478724, %bb.bc ], [ %.0478724, %bb.ba ], [ %.0478724, %bb.ay ], [ %.0478724, %bb.ai ], [ %..0478, %bb.av ], [ %.0478724, %bb.aw ], [ %.0478724, %bb.ap ], [ %.0478724, %bb.an ], [ %.0478724, %bb.al ], [ %.0478724, %bb.ae ], [ %.0478724, %bb.ah ], [ %.0478724, %bb.ac ], [ %.0478724, %bb.z ], [ %.0478724, %bb.k ], [ %.0478724, %bb.x ], [ %.0478724, %bb.v ], [ %.0478724, %bb.af ], [ %.0478724, %bb.r ], [ %.0478724, %bb.p ], [ %.0478724, %bb.g ], [ %.0478724, %bb.l ], [ %.0478724, %bb.j ], [ %.0478724, %bb.i ], [ %.0478724, %bb.b ] ; 2 uses
  %.2477 = phi i32 [ %.0475725, %bb.bc ], [ %.0475725, %bb.ba ], [ %.0475725, %bb.ay ], [ %.0475725, %bb.ai ], [ %.0475., %bb.av ], [ %.0475725, %bb.aw ], [ %.0475725, %bb.ap ], [ %.0475725, %bb.an ], [ %.0475725, %bb.al ], [ %.0475725, %bb.ae ], [ %.0475725, %bb.ah ], [ %.0475725, %bb.ac ], [ %.0475725, %bb.z ], [ %.0475725, %bb.k ], [ %.0475725, %bb.x ], [ %.0475725, %bb.v ], [ %.0475725, %bb.af ], [ %.0475725, %bb.r ], [ %.0475725, %bb.p ], [ %.0475725, %bb.g ], [ %.0475725, %bb.l ], [ %.0475725, %bb.j ], [ %.0475725, %bb.i ], [ %.0475725, %bb.b ] ; 2 uses
  %.1473 = phi i32 [ %.0472726, %bb.bc ], [ %.0472726, %bb.ba ], [ %.0472726, %bb.ay ], [ %.0472726, %bb.ai ], [ %.0472726, %bb.av ], [ %.0472726, %bb.aw ], [ %.0472726, %bb.ap ], [ %.0472726, %bb.an ], [ %.0472726, %bb.al ], [ %.0472726, %bb.ae ], [ %.0472726, %bb.ah ], [ %.0472726, %bb.ac ], [ %.0472726, %bb.z ], [ 0, %bb.k ], [ %.0472726, %bb.x ], [ %.0472726, %bb.v ], [ %.0472726, %bb.af ], [ %.0472726, %bb.r ], [ %.0472726, %bb.p ], [ %.0472726, %bb.g ], [ %.0472726, %bb.l ], [ 4, %bb.j ], [ 2, %bb.i ], [ %.0472726, %bb.b ] ; 2 uses
  %.1471 = phi i32 [ %.0470727, %bb.bc ], [ %.0470727, %bb.ba ], [ %.0470727, %bb.ay ], [ %.0470727, %bb.ai ], [ %.0470727, %bb.av ], [ 1, %bb.aw ], [ %.0470727, %bb.ap ], [ %.0470727, %bb.an ], [ %.0470727, %bb.al ], [ %.0470727, %bb.ae ], [ %.0470727, %bb.ah ], [ %.0470727, %bb.ac ], [ %.0470727, %bb.z ], [ %.0470727, %bb.k ], [ %.0470727, %bb.x ], [ %.0470727, %bb.v ], [ %.0470727, %bb.af ], [ %.0470727, %bb.r ], [ %.0470727, %bb.p ], [ %.0470727, %bb.g ], [ %.0470727, %bb.l ], [ %.0470727, %bb.j ], [ %.0470727, %bb.i ], [ %.0470727, %bb.b ] ; 2 uses
  %.1468 = phi ptr [ %.0467728, %bb.bc ], [ %.0467728, %bb.ba ], [ %.0467728, %bb.ay ], [ %.0467728, %bb.ai ], [ %.0467728, %bb.av ], [ %.0467728, %bb.aw ], [ %.0467728, %bb.ap ], [ %.0467728, %bb.an ], [ %.0467728, %bb.al ], [ %.0467728, %bb.ae ], [ %.0467728, %bb.ah ], [ %.0467728, %bb.ac ], [ %.0467728, %bb.z ], [ %.0467728, %bb.k ], [ %i.bo, %bb.x ], [ %.0467728, %bb.v ], [ %.0467728, %bb.af ], [ %.0467728, %bb.r ], [ %.0467728, %bb.p ], [ %.0467728, %bb.g ], [ %.0467728, %bb.l ], [ %.0467728, %bb.j ], [ %.0467728, %bb.i ], [ %.0467728, %bb.b ] ; 2 uses
  %i.dr = add nsw i32 %.1506, 1                   ; 3 uses
  %i.ds = icmp slt i32 %i.dr, %0
  br i1 %i.ds, label %bb.b, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.bd, %bb.bb
  %.0505.lcssa = phi i32 [ %.0505718, %bb.bb ], [ %i.dr, %bb.bd ] ; 2 uses
  %.0489.lcssa = phi i32 [ %.0489719, %bb.bb ], [ %.1490, %bb.bd ]
  %.0487.lcssa = phi i32 [ %.0487720, %bb.bb ], [ %.1488, %bb.bd ] ; 2 uses
  %.0485.lcssa = phi i32 [ %.0485721, %bb.bb ], [ %.1486, %bb.bd ] ; 2 uses
  %.0483.lcssa = phi i32 [ %.0483722, %bb.bb ], [ %.1484, %bb.bd ] ; 2 uses
  %.0481.lcssa = phi i32 [ %.0481723, %bb.bb ], [ %.1482, %bb.bd ]
  %.0478.lcssa = phi i32 [ %.0478724, %bb.bb ], [ %.2480, %bb.bd ] ; 2 uses
  %.0475.lcssa = phi i32 [ %.0475725, %bb.bb ], [ %.2477, %bb.bd ] ; 2 uses
  %.0472.lcssa = phi i32 [ %.0472726, %bb.bb ], [ %.1473, %bb.bd ] ; 4 uses
  %.0470.lcssa = phi i32 [ %.0470727, %bb.bb ], [ %.1471, %bb.bd ] ; 15 uses
  %.0467.lcssa = phi ptr [ %.0467728, %bb.bb ], [ %.1468, %bb.bd ] ; 3 uses
  %i.dt = add nsw i32 %0, -2
  %.not578 = icmp eq i32 %.0505.lcssa, %i.dt
  br i1 %.not578, label %bb.be, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.du = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.du)
  unreachable

bb.be:                                            ; preds = %._crit_edge
  %.not579 = icmp eq ptr %.0467.lcssa, null       ; 2 uses
  br i1 %.not579, label %.thread786, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dv = icmp eq i32 %.0472.lcssa, 2
  br i1 %i.dv, label %.thread786, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dw = icmp eq i32 %.0472.lcssa, 4
  %spec.store.select = select i1 %i.dw, i32 0, i32 %.0472.lcssa
  br label %.thread786

.thread786:                                       ; preds = %bb.bf, %bb.bg, %bb.be
  %.0467.lcssa785799 = phi ptr [ null, %bb.be ], [ %.0467.lcssa, %bb.bg ], [ %.0467.lcssa, %bb.bf ]
  %.2474 = phi i32 [ %.0472.lcssa, %bb.be ], [ %spec.store.select, %bb.bg ], [ 3, %bb.bf ]
  %i.dx = call ptr @tj3InitVersion(i32 noundef 2, i32 noundef 3002000) #16 ; 39 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.thread786
  %i.dz = call i32 @tj3GetErrorCode(ptr noundef null) #16 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = select i1 %i.ea, ptr @.str.31, ptr @.str.32
  %i.ec = call ptr @tj3GetErrorStr(ptr noundef null) #16
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.eb, i32 noundef 270, ptr noundef nonnull @.str.33, ptr noundef %i.ec) ; 0 uses
  %i.ee = icmp eq i32 %i.dz, 1
  %i.ef = icmp eq i32 %.0470.lcssa, 1
  %or.cond33 = select i1 %i.ee, i1 true, i1 %i.ef
  br i1 %or.cond33, label %bb.dv, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.thread786
  %i.eg = icmp sgt i32 %.0470.lcssa, -1
  br i1 %i.eg, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.eh = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 0, i32 noundef %.0470.lcssa) #16
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ej = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  %i.el = select i1 %i.ek, ptr @.str.31, ptr @.str.32
  %i.em = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.el, i32 noundef 274, ptr noundef nonnull @.str.34, ptr noundef %i.em) ; 0 uses
  %i.eo = icmp eq i32 %i.ej, 1
  %i.ep = icmp eq i32 %.0470.lcssa, 1
  %or.cond35 = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond35, label %bb.dv, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.eq = icmp sgt i32 %.0483.lcssa, -1
  br i1 %i.eq, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.er = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 11, i32 noundef %.0483.lcssa) #16
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.et = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  %i.ev = select i1 %i.eu, ptr @.str.31, ptr @.str.32
  %i.ew = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.ex = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.ev, i32 noundef 276, ptr noundef nonnull @.str.35, ptr noundef %i.ew) ; 0 uses
  %i.ey = icmp eq i32 %i.et, 1
  %i.ez = icmp eq i32 %.0470.lcssa, 1
  %or.cond37 = select i1 %i.ey, i1 true, i1 %i.ez
  br i1 %or.cond37, label %bb.dv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.fa = icmp sgt i32 %.0485.lcssa, -1
  br i1 %i.fa, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.fb = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 13, i32 noundef %.0485.lcssa) #16
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.fd = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = select i1 %i.fe, ptr @.str.31, ptr @.str.32
  %i.fg = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.fh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.ff, i32 noundef 278, ptr noundef nonnull @.str.36, ptr noundef %i.fg) ; 0 uses
  %i.fi = icmp eq i32 %i.fd, 1
  %i.fj = icmp eq i32 %.0470.lcssa, 1
  %or.cond39 = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond39, label %bb.dv, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.fk = icmp sgt i32 %.0478.lcssa, -1
  br i1 %i.fk, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.fl = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 18, i32 noundef %.0478.lcssa) #16
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.fn = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 0
  %i.fp = select i1 %i.fo, ptr @.str.31, ptr @.str.32
  %i.fq = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.fp, i32 noundef 281, ptr noundef nonnull @.str.37, ptr noundef %i.fq) ; 0 uses
  %i.fs = icmp eq i32 %i.fn, 1
  %i.ft = icmp eq i32 %.0470.lcssa, 1
  %or.cond41 = select i1 %i.fs, i1 true, i1 %i.ft
  br i1 %or.cond41, label %bb.dv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.fu = icmp sgt i32 %.0475.lcssa, -1
  br i1 %i.fu, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.fv = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 19, i32 noundef %.0475.lcssa) #16
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.fx = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
  %i.fz = select i1 %i.fy, ptr @.str.31, ptr @.str.32
  %i.ga = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.gb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.fz, i32 noundef 284, ptr noundef nonnull @.str.38, ptr noundef %i.ga) ; 0 uses
  %i.gc = icmp eq i32 %i.fx, 1
  %i.gd = icmp eq i32 %.0470.lcssa, 1
  %or.cond43 = select i1 %i.gc, i1 true, i1 %i.gd
  br i1 %or.cond43, label %bb.dv, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.ge = icmp sgt i32 %.0487.lcssa, -1
  br i1 %i.ge, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.gf = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 23, i32 noundef %.0487.lcssa) #16
  %i.gg = icmp slt i32 %i.gf, 0
  br i1 %i.gg, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.gh = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.gi = icmp eq i32 %i.gh, 0
  %i.gj = select i1 %i.gi, ptr @.str.31, ptr @.str.32
  %i.gk = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.gl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.gj, i32 noundef 286, ptr noundef nonnull @.str.39, ptr noundef %i.gk) ; 0 uses
  %i.gm = icmp eq i32 %i.gh, 1
  %i.gn = icmp eq i32 %.0470.lcssa, 1
  %or.cond45 = select i1 %i.gm, i1 true, i1 %i.gn
  br i1 %or.cond45, label %bb.dv, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %i.go = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 25, i32 noundef %.2474) #16
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.gq = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  %i.gs = select i1 %i.gr, ptr @.str.31, ptr @.str.32
  %i.gt = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.gu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.gs, i32 noundef 288, ptr noundef nonnull @.str.40, ptr noundef %i.gt) ; 0 uses
  %i.gv = icmp eq i32 %i.gq, 1
  %i.gw = icmp eq i32 %.0470.lcssa, 1
  %or.cond47 = select i1 %i.gv, i1 true, i1 %i.gw
  br i1 %or.cond47, label %bb.dv, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.gx = sext i32 %.0505.lcssa to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !13
  %i.ha = call noalias ptr @fopen(ptr noundef %i.gz, ptr noundef nonnull @.str.41) ; 10 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hc = tail call ptr @__errno_location() #18
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !19
  %i.he = call ptr @strerror(i32 noundef %i.hd) #16
  %i.hf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 291, ptr noundef nonnull @.str.43, ptr noundef %i.he) ; 0 uses
  br label %bb.dv

bb.ce:                                            ; preds = %bb.cc
  %i.hg = call i32 @fseek(ptr noundef nonnull %i.ha, i64 noundef 0, i32 noundef 2)
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hi = call i64 @ftell(ptr noundef nonnull %i.ha) ; 6 uses
  %i.hj = icmp slt i64 %i.hi, 0
  br i1 %i.hj, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hk = call i32 @fseek(ptr noundef nonnull %i.ha, i64 noundef 0, i32 noundef 0)
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.hm = tail call ptr @__errno_location() #18
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !19
  %i.ho = call ptr @strerror(i32 noundef %i.hn) #16
  %i.hp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 294, ptr noundef nonnull @.str.44, ptr noundef %i.ho) ; 0 uses
  br label %bb.dv

bb.ci:                                            ; preds = %bb.cg
  %i.hq = icmp eq i64 %i.hi, 0
  br i1 %i.hq, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.hr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 296, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) ; 0 uses
  br label %bb.dv

bb.ck:                                            ; preds = %bb.ci
  %i.hs = call ptr @tj3Alloc(i64 noundef %i.hi) #16 ; 17 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.hu = tail call ptr @__errno_location() #18
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !19
  %i.hw = call ptr @strerror(i32 noundef %i.hv) #16
  %i.hx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 299, ptr noundef nonnull @.str.46, ptr noundef %i.hw) ; 0 uses
  br label %bb.dv

bb.cm:                                            ; preds = %bb.ck
  %i.hy = call i64 @fread(ptr noundef nonnull %i.hs, i64 noundef %i.hi, i64 noundef 1, ptr noundef nonnull %i.ha)
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ia = tail call ptr @__errno_location() #18
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !19
  %i.ic = call ptr @strerror(i32 noundef %i.ib) #16
  %i.id = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 301, ptr noundef nonnull @.str.47, ptr noundef %i.ic) ; 0 uses
  br label %bb.dv

bb.co:                                            ; preds = %bb.cm
  %i.ie = call i32 @fclose(ptr noundef nonnull %i.ha) ; 0 uses
  %i.if = call i32 @tj3DecompressHeader(ptr noundef %i.dx, ptr noundef nonnull %i.hs, i64 noundef %i.hi) #16
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ih = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  %i.ij = select i1 %i.ii, ptr @.str.31, ptr @.str.32
  %i.ik = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.il = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.ij, i32 noundef 305, ptr noundef nonnull @.str.48, ptr noundef %i.ik) ; 0 uses
  %i.im = icmp eq i32 %i.ih, 1
  %i.in = icmp eq i32 %.0470.lcssa, 1
  %or.cond49 = select i1 %i.im, i1 true, i1 %i.in
  br i1 %or.cond49, label %bb.dv, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.io = call i32 @tj3Get(ptr noundef %i.dx, i32 noundef 4) #16
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !17
  %i.ir = and i32 %i.iq, 8
  %.not580 = icmp eq i32 %i.ir, 0
  %spec.store.select50 = select i1 %.not580, i32 %i.io, i32 3 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.it = load i32, ptr %i.is, align 8, !tbaa !18
  switch i32 %i.it, label %bb.cs [
    i32 7, label %bb.cr
    i32 5, label %bb.cr
    i32 4, label %bb.cr
    i32 3, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq, %bb.cq, %bb.cq, %bb.cq
  %switch.tableidx = add i32 %spec.store.select50, -1 ; 3 uses
  %i.iu = icmp ult i32 %switch.tableidx, 8
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -7, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond810 = select i1 %i.iu, i1 %switch.lobit, i1 false
  br i1 %or.cond810, label %switch.lookup, label %bb.cs

switch.lookup:                                    ; preds = %bb.cr
  %i.iv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.main, i64 %i.iv
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %switch.lookup, %bb.cq
  %.0469 = phi i32 [ %spec.store.select50, %bb.cq ], [ %switch.ext, %switch.lookup ], [ %spec.store.select50, %bb.cr ] ; 2 uses
  %i.iw = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 12, i32 noundef %.0481.lcssa) #16
  %i.ix = icmp slt i32 %i.iw, 0
  br i1 %i.ix, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.iy = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 0
  %i.ja = select i1 %i.iz, ptr @.str.31, ptr @.str.32
  %i.jb = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.jc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.ja, i32 noundef 320, ptr noundef nonnull @.str.49, ptr noundef %i.jb) ; 0 uses
  %i.jd = icmp eq i32 %i.iy, 1
  %i.je = icmp eq i32 %.0470.lcssa, 1
  %or.cond62 = select i1 %i.jd, i1 true, i1 %i.je
  br i1 %or.cond62, label %bb.dv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.jf = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 14, i32 noundef %.0489.lcssa) #16
  %i.jg = icmp slt i32 %i.jf, 0
  br i1 %i.jg, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.jh = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  %i.jj = select i1 %i.ji, ptr @.str.31, ptr @.str.32
  %i.jk = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.jl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.jj, i32 noundef 322, ptr noundef nonnull @.str.50, ptr noundef %i.jk) ; 0 uses
  %i.jm = icmp eq i32 %i.jh, 1
  %i.jn = icmp eq i32 %.0470.lcssa, 1
  %or.cond64 = select i1 %i.jm, i1 true, i1 %i.jn
  br i1 %or.cond64, label %bb.dv, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %3 = load i32, ptr %2, align 8, !tbaa !21       ; 3 uses
  %4 = icmp ne i32 %3, 0
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %6 = load i32, ptr %5, align 4                  ; 3 uses
  %7 = icmp ne i32 %6, 0
  %or.cond68 = select i1 %4, i1 true, i1 %7
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %9 = load i32, ptr %8, align 8                  ; 2 uses
  %10 = icmp ne i32 %9, 0
  %or.cond72 = select i1 %or.cond68, i1 true, i1 %10
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %12 = load i32, ptr %11, align 4                ; 2 uses
  %13 = icmp ne i32 %12, 0
  %or.cond76 = select i1 %or.cond72, i1 true, i1 %13
  br i1 %or.cond76, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.jo = icmp eq i32 %.0469, -1
  br i1 %i.jo, label %bb.cy, label %.thread

.thread:                                          ; preds = %bb.cx
  %i.jp = sext i32 %.0469 to i64                  ; 2 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr @tjMCUWidth, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !19
  %14 = srem i32 %3, %i.jr                        ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr @tjMCUHeight, i64 %i.jp
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !19
  %15 = srem i32 %6, %i.jt                        ; 2 uses
  %16 = sub nsw i32 %3, %14
  store i32 %16, ptr %2, align 8, !tbaa !21
  %17 = add nsw i32 %14, %9
  store i32 %17, ptr %8, align 8, !tbaa !22
  %18 = sub nsw i32 %6, %15
  store i32 %18, ptr %5, align 4, !tbaa !23
  %19 = add nsw i32 %15, %12
  store i32 %19, ptr %11, align 4, !tbaa !24
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ju = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 329, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) ; 0 uses
  br label %bb.dv

bb.cz:                                            ; preds = %.thread, %bb.cw
  br i1 %.not579, label %bb.dp, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jv = call noalias ptr @fopen(ptr noundef nonnull %.0467.lcssa785799, ptr noundef nonnull @.str.41) ; 10 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.jx = tail call ptr @__errno_location() #18
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !19
  %i.jz = call ptr @strerror(i32 noundef %i.jy) #16
  %i.ka = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 340, ptr noundef nonnull @.str.53, ptr noundef %i.jz) ; 0 uses
  br label %bb.dv

bb.dc:                                            ; preds = %bb.da
  %i.kb = call i32 @fseek(ptr noundef nonnull %i.jv, i64 noundef 0, i32 noundef 2)
  %i.kc = icmp slt i32 %i.kb, 0
  br i1 %i.kc, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kd = call i64 @ftell(ptr noundef nonnull %i.jv) ; 5 uses
  %i.ke = icmp slt i64 %i.kd, 0
  br i1 %i.ke, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.kf = call i32 @fseek(ptr noundef nonnull %i.jv, i64 noundef 0, i32 noundef 0)
  %i.kg = icmp slt i32 %i.kf, 0
  br i1 %i.kg, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %i.kh = tail call ptr @__errno_location() #18
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !19
  %i.kj = call ptr @strerror(i32 noundef %i.ki) #16
  %i.kk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 343, ptr noundef nonnull @.str.54, ptr noundef %i.kj) ; 0 uses
  br label %bb.dv

bb.dg:                                            ; preds = %bb.de
  %i.kl = icmp eq i64 %i.kd, 0
  br i1 %i.kl, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.km = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 345, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) ; 0 uses
  br label %bb.dv

bb.di:                                            ; preds = %bb.dg
  %i.kn = call noalias ptr @malloc(i64 noundef %i.kd) #19 ; 6 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.kp = tail call ptr @__errno_location() #18
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !19
  %i.kr = call ptr @strerror(i32 noundef %i.kq) #16
  %i.ks = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 348, ptr noundef nonnull @.str.56, ptr noundef %i.kr) ; 0 uses
  br label %bb.dv

bb.dk:                                            ; preds = %bb.di
  %i.kt = call i64 @fread(ptr noundef nonnull %i.kn, i64 noundef %i.kd, i64 noundef 1, ptr noundef nonnull %i.jv)
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.kv = tail call ptr @__errno_location() #18
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !19
  %i.kx = call ptr @strerror(i32 noundef %i.kw) #16
  %i.ky = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 350, ptr noundef nonnull @.str.57, ptr noundef %i.kx) ; 0 uses
  br label %bb.dv

bb.dm:                                            ; preds = %bb.dk
  %i.kz = call i32 @fclose(ptr noundef nonnull %i.jv) ; 0 uses
  %i.la = call i32 @tj3SetICCProfile(ptr noundef %i.dx, ptr noundef nonnull %i.kn, i64 noundef %i.kd) #16
  %i.lb = icmp slt i32 %i.la, 0
  br i1 %i.lb, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.lc = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.ld = icmp eq i32 %i.lc, 0
  %i.le = select i1 %i.ld, ptr @.str.31, ptr @.str.32
  %i.lf = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.lg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.le, i32 noundef 353, ptr noundef nonnull @.str.58, ptr noundef %i.lf) ; 0 uses
  %i.lh = icmp eq i32 %i.lc, 1
  %i.li = icmp eq i32 %.0470.lcssa, 1
  %or.cond78 = select i1 %i.lh, i1 true, i1 %i.li
  br i1 %or.cond78, label %bb.dv, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  call void @free(ptr noundef nonnull %i.kn) #16
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.cz
  %i.lj = call i32 @tj3Transform(ptr noundef %i.dx, ptr noundef nonnull %i.hs, i64 noundef %i.hi, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #16
  %i.lk = icmp slt i32 %i.lj, 0
  br i1 %i.lk, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.ll = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.lm = icmp eq i32 %i.ll, 0
  %i.ln = select i1 %i.lm, ptr @.str.31, ptr @.str.32
  %i.lo = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.lp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.ln, i32 noundef 359, ptr noundef nonnull @.str.59, ptr noundef %i.lo) ; 0 uses
  %i.lq = icmp eq i32 %i.ll, 1
  %i.lr = icmp eq i32 %.0470.lcssa, 1
  %or.cond80 = select i1 %i.lq, i1 true, i1 %i.lr
  br i1 %or.cond80, label %bb.dv, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  call void @tj3Free(ptr noundef nonnull %i.hs) #16
  %i.ls = getelementptr i8, ptr %i.gy, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !13
  %i.lu = call noalias ptr @fopen(ptr noundef %i.lt, ptr noundef nonnull @.str.60) ; 4 uses
  %i.lv = icmp eq ptr %i.lu, null
  br i1 %i.lv, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.lw = tail call ptr @__errno_location() #18
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !19
  %i.ly = call ptr @strerror(i32 noundef %i.lx) #16
  %i.lz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 363, ptr noundef nonnull @.str.61, ptr noundef %i.ly) ; 0 uses
  br label %bb.dv

bb.dt:                                            ; preds = %bb.dr
  %i.ma = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.mb = load i64, ptr %i.a, align 8, !tbaa !26
  %i.mc = call i64 @fwrite(ptr noundef %i.ma, i64 noundef %i.mb, i64 noundef 1, ptr noundef nonnull %i.lu)
  %i.md = icmp eq i64 %i.mc, 0
  br i1 %i.md, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.me = tail call ptr @__errno_location() #18
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !19
  %i.mg = call ptr @strerror(i32 noundef %i.mf) #16
  %i.mh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 365, ptr noundef nonnull @.str.62, ptr noundef %i.mg) ; 0 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.cy, %bb.dq, %bb.dn, %bb.cv, %bb.ct, %bb.cp, %bb.cb, %bb.bz, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh, %bb.dt, %bb.du, %bb.ds, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.db, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cd
  %.29 = phi i32 [ -1, %bb.cd ], [ -1, %bb.ch ], [ -1, %bb.cj ], [ -1, %bb.cl ], [ -1, %bb.cn ], [ -1, %bb.db ], [ -1, %bb.df ], [ -1, %bb.dh ], [ -1, %bb.dj ], [ -1, %bb.dl ], [ -1, %bb.ds ], [ -1, %bb.du ], [ 0, %bb.dt ], [ -1, %bb.dq ], [ -1, %bb.dn ], [ -1, %bb.cy ], [ -1, %bb.cv ], [ -1, %bb.ct ], [ -1, %bb.cp ], [ -1, %bb.cb ], [ -1, %bb.bz ], [ -1, %bb.bw ], [ -1, %bb.bt ], [ -1, %bb.bq ], [ -1, %bb.bn ], [ -1, %bb.bk ], [ -1, %bb.bh ]
  %.1466 = phi ptr [ null, %bb.cd ], [ null, %bb.ch ], [ null, %bb.cj ], [ null, %bb.cl ], [ null, %bb.cn ], [ null, %bb.db ], [ %i.jv, %bb.df ], [ %i.jv, %bb.dh ], [ %i.jv, %bb.dj ], [ %i.jv, %bb.dl ], [ null, %bb.ds ], [ null, %bb.du ], [ null, %bb.dt ], [ null, %bb.dq ], [ null, %bb.dn ], [ null, %bb.cy ], [ null, %bb.cv ], [ null, %bb.ct ], [ null, %bb.cp ], [ null, %bb.cb ], [ null, %bb.bz ], [ null, %bb.bw ], [ null, %bb.bt ], [ null, %bb.bq ], [ null, %bb.bn ], [ null, %bb.bk ], [ null, %bb.bh ] ; 2 uses
  %.0464 = phi ptr [ null, %bb.cd ], [ %i.ha, %bb.ch ], [ %i.ha, %bb.cj ], [ %i.ha, %bb.cl ], [ %i.ha, %bb.cn ], [ null, %bb.db ], [ null, %bb.df ], [ null, %bb.dh ], [ null, %bb.dj ], [ null, %bb.dl ], [ null, %bb.ds ], [ %i.lu, %bb.du ], [ %i.lu, %bb.dt ], [ null, %bb.dq ], [ null, %bb.dn ], [ null, %bb.cy ], [ null, %bb.cv ], [ null, %bb.ct ], [ null, %bb.cp ], [ null, %bb.cb ], [ null, %bb.bz ], [ null, %bb.bw ], [ null, %bb.bt ], [ null, %bb.bq ], [ null, %bb.bn ], [ null, %bb.bk ], [ null, %bb.bh ] ; 2 uses
  %.0463 = phi ptr [ null, %bb.cd ], [ null, %bb.ch ], [ null, %bb.cj ], [ null, %bb.cl ], [ %i.hs, %bb.cn ], [ %i.hs, %bb.db ], [ %i.hs, %bb.df ], [ %i.hs, %bb.dh ], [ %i.hs, %bb.dj ], [ %i.hs, %bb.dl ], [ null, %bb.ds ], [ null, %bb.du ], [ null, %bb.dt ], [ %i.hs, %bb.dq ], [ %i.hs, %bb.dn ], [ %i.hs, %bb.cy ], [ %i.hs, %bb.cv ], [ %i.hs, %bb.ct ], [ %i.hs, %bb.cp ], [ null, %bb.cb ], [ null, %bb.bz ], [ null, %bb.bw ], [ null, %bb.bt ], [ null, %bb.bq ], [ null, %bb.bn ], [ null, %bb.bk ], [ null, %bb.bh ]
  %.1462 = phi ptr [ null, %bb.cd ], [ null, %bb.ch ], [ null, %bb.cj ], [ null, %bb.cl ], [ null, %bb.cn ], [ null, %bb.db ], [ null, %bb.df ], [ null, %bb.dh ], [ null, %bb.dj ], [ %i.kn, %bb.dl ], [ null, %bb.ds ], [ null, %bb.du ], [ null, %bb.dt ], [ null, %bb.dq ], [ %i.kn, %bb.dn ], [ null, %bb.cy ], [ null, %bb.cv ], [ null, %bb.ct ], [ null, %bb.cp ], [ null, %bb.cb ], [ null, %bb.bz ], [ null, %bb.bw ], [ null, %bb.bt ], [ null, %bb.bq ], [ null, %bb.bn ], [ null, %bb.bk ], [ null, %bb.bh ]
  call void @tj3Destroy(ptr noundef %i.dx) #16
  call void @tj3Free(ptr noundef %.0463) #16
  %.not581 = icmp eq ptr %.1466, null
  br i1 %.not581, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.mi = call i32 @fclose(ptr noundef nonnull %.1466) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  call void @free(ptr noundef %.1462) #16
  %.not582 = icmp eq ptr %.0464, null
  br i1 %.not582, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.mj = call i32 @fclose(ptr noundef nonnull %.0464) ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.mk = load ptr, ptr %i.b, align 8, !tbaa !13
  call void @tj3Free(ptr noundef %i.mk) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.29
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal fastcc void @usage(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, ptr noundef %0) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %puts12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %puts14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %puts16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  %puts17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  %puts18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %puts19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  %puts20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  %puts21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21) ; 0 uses
  %puts22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22) ; 0 uses
  %puts23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23) ; 0 uses
  %puts24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24) ; 0 uses
  %puts25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %puts26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %puts27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27) ; 0 uses
  %puts28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28) ; 0 uses
  %puts29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29) ; 0 uses
  %puts30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30) ; 0 uses
  %puts31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31) ; 0 uses
  %puts32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32) ; 0 uses
  %puts33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33) ; 0 uses
  %puts34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34) ; 0 uses
  %puts35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35) ; 0 uses
  %puts36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.36) ; 0 uses
  %puts37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.37) ; 0 uses
  %puts38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.38) ; 0 uses
  %puts39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.39) ; 0 uses
  %puts40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40) ; 0 uses
  %puts41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41) ; 0 uses
  %puts42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42) ; 0 uses
  %puts43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43) ; 0 uses
  %puts44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44) ; 0 uses
  %puts45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45) ; 0 uses
  %puts46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46) ; 0 uses
  %puts47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.47) ; 0 uses
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48) ; 0 uses
  %puts49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.49) ; 0 uses
  %puts50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.50) ; 0 uses
  %puts51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51) ; 0 uses
  %puts52 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52) ; 0 uses
  %puts53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.53) ; 0 uses
  %puts54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54) ; 0 uses
  %puts55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55) ; 0 uses
  %puts56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.56) ; 0 uses
  %puts57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57) ; 0 uses
  %puts58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.58) ; 0 uses
  %puts59 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59) ; 0 uses
  tail call void @exit(i32 noundef 1) #20
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @tj3InitVersion(i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @tj3GetErrorCode(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @tj3GetErrorStr(ptr noundef) local_unnamed_addr #7

declare i32 @tj3Set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @tj3Alloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @tj3DecompressHeader(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @tj3Get(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare i32 @tj3SetICCProfile(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

declare i32 @tj3Transform(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @tj3Free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare void @tj3Destroy(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{null}
!10 = distinct !{!10, !20}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!16 = !{!"tjtransform", !15, i64 0, !6, i64 16, !6, i64 20, !11, i64 24, !11, i64 32}
!17 = !{!16, !6, i64 20}
!18 = !{!16, !6, i64 16}
!19 = !{!6, !6, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!16, !6, i64 0}
!22 = !{!16, !6, i64 8}
!23 = !{!16, !6, i64 4}
!24 = !{!16, !6, i64 12}
!25 = !{!"long", !5, i64 0}
!26 = !{!25, !25, i64 0}
end_hunk_0
