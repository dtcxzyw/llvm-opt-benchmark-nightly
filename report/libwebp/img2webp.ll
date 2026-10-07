Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/img2webp?download=true
inline.NumInlined: 11
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.WebPMuxAnimParams = type { i32, i32 }
%struct.WebPAnimEncoderOptions = type { %struct.WebPMuxAnimParams, i32, i32, i32, i32, i32, [4 x i32] }
%struct.WebPConfig = type { i32, float, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.WebPPicture = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, [2 x i32], ptr, i32, [3 x i32], ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, [3 x i32], ptr, ptr, [8 x i32], ptr, ptr, [2 x ptr] }
%struct.WebPData = type { ptr, i64 }
%struct.CommandLineArguments = type { i32, ptr, %struct.WebPData, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"Library version mismatch!\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-kmin\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-kmax\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-loop\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Invalid non-positive loop-count (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"-min_size\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"-mixed\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"-near_lossless\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"-sharp_yuv\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"WebP Encoder version: %d.%d.%d\0AWebP Mux version: %d.%d.%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"libsharpyuv: %d.%d.%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"No input file(s) for generating animation!\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"-lossy\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"-lossless\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Invalid negative duration (%d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"-exact\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"-noexact\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Unknown option [%s]\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Invalid configuration.\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Could not create WebPAnimEncoder object.\0A\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Frame #%d dimension mismatched! Got %d x %d. Was expecting %d x %d.\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Error while adding frame #%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"Added frame #%3d at time %4d (file: %s)\0A\00", align 1
@.str.31 = private unnamed_addr constant [71 x i8] c"Warning: unused option [%s]! Frame options go before the input frame.\0A\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"Error during final animation assembly.\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"output file: %s     \00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"[no output file specified]   \00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"[%d frames, %u bytes].\0A\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"  img2webp [file_options] [[frame_options] frame_file]...\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"\0ASupported input formats:\0A  %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"Error during loop-count setting\0A\00", align 1
@str = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@str.1 = private unnamed_addr constant [17 x i8] c" [-o webp_file]\0A\00", align 1
@str.2 = private unnamed_addr constant [60 x i8] c"File-level options (only used at the start of compression):\00", align 1
@str.3 = private unnamed_addr constant [38 x i8] c" -min_size ............ minimize size\00", align 1
@str.4 = private unnamed_addr constant [110 x i8] c" -kmax <int> .......... maximum number of frame between key-frames\0A                        (0=only keyframes)\00", align 1
@str.5 = private unnamed_addr constant [125 x i8] c" -kmin <int> .......... minimum number of frame between key-frames\0A                        (0=disable key-frames altogether)\00", align 1
@str.6 = private unnamed_addr constant [64 x i8] c" -mixed ............... use mixed lossy/lossless automatic mode\00", align 1
@str.7 = private unnamed_addr constant [112 x i8] c" -near_lossless <int> . use near-lossless image preprocessing\0A                        (0..100=off), default=100\00", align 1
@str.8 = private unnamed_addr constant [106 x i8] c" -sharp_yuv ........... use sharper (and slower) RGB->YUV conversion\0A                        (lossy only)\00", align 1
@str.9 = private unnamed_addr constant [65 x i8] c" -loop <int> .......... loop count (default: 0, = infinite loop)\00", align 1
@str.10 = private unnamed_addr constant [37 x i8] c" -v ................... verbose mode\00", align 1
@str.11 = private unnamed_addr constant [34 x i8] c" -h ................... this help\00", align 1
@str.12 = private unnamed_addr constant [54 x i8] c" -version ............. print version number and exit\00", align 1
@str.13 = private unnamed_addr constant [59 x i8] c"Per-frame options (only used for subsequent images input):\00", align 1
@str.14 = private unnamed_addr constant [60 x i8] c" -d <int> ............. frame duration in ms (default: 100)\00", align 1
@str.15 = private unnamed_addr constant [52 x i8] c" -lossless ............ use lossless mode (default)\00", align 1
@str.16 = private unnamed_addr constant [39 x i8] c" -lossy ............... use lossy mode\00", align 1
@str.17 = private unnamed_addr constant [32 x i8] c" -q <float> ........... quality\00", align 1
@str.18 = private unnamed_addr constant [74 x i8] c" -m <int> ............. compression method (0=fast, 6=slowest), default=4\00", align 1
@str.19 = private unnamed_addr constant [194 x i8] c" -exact, -noexact ..... preserve or alter RGB values in transparent area\0A                        (default: -noexact, may cause artifacts\0A                                  with lossy animations)\00", align 1
@str.20 = private unnamed_addr constant [94 x i8] c"example: img2webp -loop 2 in0.png -lossy in1.jpg\0A                  -d 80 in2.tiff -o out.webp\00", align 1
@str.21 = private unnamed_addr constant [78 x i8] c"\0ANote: if a single file name is passed as the argument, the arguments will be\00", align 1
@str.22 = private unnamed_addr constant [79 x i8] c"tokenized from this file. The file name must not start with the character '-'.\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.WebPMuxAnimParams, align 4  ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.WebPAnimEncoderOptions, align 4 ; 9 uses
  %4 = alloca %struct.WebPConfig, align 4         ; 14 uses
  %5 = alloca %struct.WebPPicture, align 8        ; 10 uses
  %6 = alloca %struct.WebPData, align 8           ; 13 uses
  %7 = alloca %struct.CommandLineArguments, align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.f = add nsw i32 %0, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = call i32 @ExUtilInitCommandLineArguments(i32 noundef %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %7) #7 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.ca, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %7, align 8, !tbaa !20     ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.l = call i32 @WebPAnimEncoderOptionsInitInternal(ptr noundef nonnull %3, i32 noundef 265) #7
  %.not255 = icmp eq i32 %i.l, 0
  br i1 %.not255, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @WebPConfigInitInternal(ptr noundef nonnull %4, i32 noundef 0, float noundef 7.500000e+01, i32 noundef 528) #7
  %.not256 = icmp eq i32 %i.m, 0
  br i1 %.not256, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @WebPPictureInitInternal(ptr noundef nonnull %5, i32 noundef 528) #7
  %.not257 = icmp eq i32 %i.n, 0
  br i1 %.not257, label %bb.e, label %.preheader382

.preheader382:                                    ; preds = %bb.d
  %i.o = icmp sgt i32 %i.i, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader382
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %.outer

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !23
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %i.v) #8 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %.thread546
  %i.w = sext i32 %i.di to i64                    ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25
  %i.aa = icmp eq i8 %i.z, 45
  br i1 %i.aa, label %sub_0, label %.thread546, !llvm.loop !9

sub_0:                                            ; preds = %bb.f, %.outer
  %.0187444.lcssa = phi i32 [ %.0187444.ph, %.outer ], [ 1, %bb.f ] ; 2 uses
  %.0189443.lcssa = phi i32 [ %.0189443.ph, %.outer ], [ %i.di, %bb.f ] ; 10 uses
  %.lcssa648 = phi i64 [ %i.dd, %.outer ], [ %i.w, %bb.f ]
  %.lcssa646 = phi ptr [ %i.df, %.outer ], [ %i.y, %bb.f ] ; 16 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.lcssa648 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !27
  %i.ac = load i8, ptr %.lcssa646, align 1
  %.not469 = icmp eq i8 %i.ac, 45                 ; 2 uses
  br i1 %.not469, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.ad = getelementptr inbounds nuw i8, ptr %.lcssa646, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  %.not470 = icmp eq i8 %i.ae, 111
  br i1 %.not470, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa646, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %.tail.thread

bb.g:                                             ; preds = %.tail
  %i.ai = add nsw i32 %.0189443.lcssa, 1          ; 3 uses
  %i.aj = icmp slt i32 %i.ai, %i.i
  br i1 %i.aj, label %bb.h, label %.tail.thread

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.ab, align 8, !tbaa !24
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  br label %bb.ab

.tail.thread:                                     ; preds = %sub_1, %sub_0, %bb.g, %.tail
  %i.an = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa646, ptr noundef nonnull dereferenceable(6) @.str.2) #9
  %.not280 = icmp eq i32 %i.an, 0
  br i1 %.not280, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.tail.thread
  %i.ao = add nsw i32 %.0189443.lcssa, 1          ; 3 uses
  %i.ap = icmp slt i32 %i.ao, %i.i
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.ab, align 8, !tbaa !24
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.at = call i32 @ExUtilGetInt(ptr noundef %i.as, i32 noundef 0, ptr noundef nonnull %i.d) #7
  store i32 %i.at, ptr %i.u, align 4, !tbaa !30
  br label %bb.ab

bb.k:                                             ; preds = %bb.i, %.tail.thread
  %i.au = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa646, ptr noundef nonnull dereferenceable(6) @.str.3) #9
  %.not281 = icmp eq i32 %i.au, 0
  br i1 %.not281, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.av = add nsw i32 %.0189443.lcssa, 1          ; 3 uses
  %i.aw = icmp slt i32 %i.av, %i.i
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.ab, align 8, !tbaa !24
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24
  %i.ba = call i32 @ExUtilGetInt(ptr noundef %i.az, i32 noundef 0, ptr noundef nonnull %i.d) #7
  store i32 %i.ba, ptr %i.t, align 4, !tbaa !31
  br label %bb.ab

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa646, ptr noundef nonnull dereferenceable(6) @.str.4) #9
  %.not282 = icmp eq i32 %i.bb, 0
  br i1 %.not282, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bc = add nsw i32 %.0189443.lcssa, 1          ; 3 uses
  %i.bd = icmp slt i32 %i.bc, %i.i
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.ab, align 8, !tbaa !24
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !24
  %i.bh = call i32 @ExUtilGetInt(ptr noundef %i.bg, i32 noundef 0, ptr noundef nonnull %i.d) #7 ; 4 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.p
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.5, i32 noundef %i.bh) #10 ; 0 uses
  br label %.thread307

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa646, ptr noundef nonnull dereferenceable(10) @.str.6) #9
  %.not283 = icmp eq i32 %i.bl, 0
  br i1 %.not283, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.s, align 4, !tbaa !32
  br label %bb.ab

bb.s:                                             ; preds = %bb.q
  %i.bm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa646, ptr noundef nonnull dereferenceable(7) @.str.7) #9
  %.not284 = icmp eq i32 %i.bm, 0
  br i1 %.not284, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.r, align 4, !tbaa !33
  store i32 0, ptr %4, align 4, !tbaa !36
  br label %bb.ab

bb.u:                                             ; preds = %bb.s
  %i.bn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa646, ptr noundef nonnull dereferenceable(15) @.str.8) #9
  %.not285 = icmp eq i32 %i.bn, 0
  br i1 %.not285, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bo = add nsw i32 %.0189443.lcssa, 1          ; 3 uses
  %i.bp = icmp slt i32 %i.bo, %i.i
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.ab, align 8, !tbaa !24
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.bt = call i32 @ExUtilGetInt(ptr noundef %i.bs, i32 noundef 0, ptr noundef nonnull %i.d) #7
  store i32 %i.bt, ptr %i.q, align 4, !tbaa !37
  br label %bb.ab

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa646, ptr noundef nonnull dereferenceable(11) @.str.9) #9
  %.not286 = icmp eq i32 %i.bu, 0
  br i1 %.not286, label %bb.y, label %sub_0358

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %i.p, align 4, !tbaa !38
  br label %bb.ab

sub_0358:                                         ; preds = %bb.x
  br i1 %.not469, label %sub_1359, label %.tail362.thread

sub_1359:                                         ; preds = %sub_0358
  %i.bv = getelementptr inbounds nuw i8, ptr %.lcssa646, i64 1
  %i.bw = load i8, ptr %i.bv, align 1
  %.not472 = icmp eq i8 %i.bw, 118
  br i1 %.not472, label %.tail357, label %sub_1364

.tail357:                                         ; preds = %sub_1359
  %i.bx = getelementptr inbounds nuw i8, ptr %.lcssa646, i64 2
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.ab, label %sub_1364

sub_1364:                                         ; preds = %.tail357, %sub_1359
  %i.ca = getelementptr inbounds nuw i8, ptr %.lcssa646, i64 1
  %i.cb = load i8, ptr %i.ca, align 1
  %.not474 = icmp eq i8 %i.cb, 104
  br i1 %.not474, label %.tail362, label %.tail362.thread

.tail362:                                         ; preds = %sub_1364
  %i.cc = getelementptr inbounds nuw i8, ptr %.lcssa646, i64 2
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.ad, label %.tail362.thread

.tail362.thread:                                  ; preds = %sub_0358, %sub_1364, %.tail362
  %i.cf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa646, ptr noundef nonnull dereferenceable(6) @.str.12) #9
  %.not290 = icmp eq i32 %i.cf, 0
  br i1 %.not290, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %.tail362.thread
  %i.cg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa646, ptr noundef nonnull dereferenceable(9) @.str.13) #9
  %.not291 = icmp eq i32 %i.cg, 0
  br i1 %.not291, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ch = call i32 @WebPGetEncoderVersion() #7    ; 3 uses
  %i.ci = call i32 @WebPGetMuxVersion() #7        ; 3 uses
  %i.cj = call i32 @SharpYuvGetVersion() #7       ; 3 uses
  %i.ck = lshr i32 %i.ch, 16
  %i.cl = and i32 %i.ck, 255
  %i.cm = lshr i32 %i.ch, 8
  %i.cn = and i32 %i.cm, 255
  %i.co = and i32 %i.ch, 255
  %i.cp = lshr i32 %i.ci, 16
  %i.cq = and i32 %i.cp, 255
  %i.cr = lshr i32 %i.ci, 8
  %i.cs = and i32 %i.cr, 255
  %i.ct = and i32 %i.ci, 255
  %i.cu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.cl, i32 noundef %i.cn, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.ct) ; 0 uses
  %i.cv = lshr i32 %i.cj, 24
  %i.cw = lshr i32 %i.cj, 16
  %i.cx = and i32 %i.cj, 255
  %i.cy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef %i.cx) ; 0 uses
  br label %.thread307

bb.ab:                                            ; preds = %.tail357, %bb.j, %bb.p, %bb.t, %bb.y, %bb.w, %bb.r, %bb.m, %bb.h
  %.1225.ph = phi ptr [ %.0224440.ph, %.tail357 ], [ %.0224440.ph, %bb.j ], [ %.0224440.ph, %bb.m ], [ %.0224440.ph, %bb.p ], [ %.0224440.ph, %bb.r ], [ %.0224440.ph, %bb.t ], [ %.0224440.ph, %bb.w ], [ %.0224440.ph, %bb.y ], [ %i.am, %bb.h ] ; 2 uses
  %.1217.ph = phi i32 [ 1, %.tail357 ], [ %.0216441.ph, %bb.j ], [ %.0216441.ph, %bb.m ], [ %.0216441.ph, %bb.p ], [ %.0216441.ph, %bb.r ], [ %.0216441.ph, %bb.t ], [ %.0216441.ph, %bb.w ], [ %.0216441.ph, %bb.y ], [ %.0216441.ph, %bb.h ]
  %.1204.ph = phi i32 [ %.0203442.ph, %.tail357 ], [ %.0203442.ph, %bb.j ], [ %.0203442.ph, %bb.m ], [ %i.bh, %bb.p ], [ %.0203442.ph, %bb.r ], [ %.0203442.ph, %bb.t ], [ %.0203442.ph, %bb.w ], [ %.0203442.ph, %bb.y ], [ %.0203442.ph, %bb.h ] ; 2 uses
  %.1190.ph = phi i32 [ %.0189443.lcssa, %.tail357 ], [ %i.ao, %bb.j ], [ %i.av, %bb.m ], [ %i.bc, %bb.p ], [ %.0189443.lcssa, %bb.r ], [ %.0189443.lcssa, %bb.t ], [ %i.bo, %bb.w ], [ %.0189443.lcssa, %bb.y ], [ %i.ai, %bb.h ] ; 2 uses
  %.pr = load i32, ptr %i.d, align 4, !tbaa !27
  %.not288 = icmp eq i32 %.pr, 0
  br i1 %.not288, label %bb.ac, label %.thread307

bb.ac:                                            ; preds = %bb.ab
  %i.cz = sext i32 %.1190.ph to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cz
  store ptr null, ptr %i.da, align 8, !tbaa !24
  br label %bb.ae

.thread307:                                       ; preds = %bb.ab, %bb.aa, %.thread
  %.2226.ph = phi ptr [ %.0224440.ph, %.thread ], [ %.0224440.ph, %bb.aa ], [ %.1225.ph, %bb.ab ]
  %.2205.ph = phi i32 [ %i.bh, %.thread ], [ %.0203442.ph, %bb.aa ], [ %.1204.ph, %bb.ab ]
  %.1182.ph = phi i32 [ 0, %.thread ], [ %.0181445.ph, %bb.aa ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.loopexit

bb.ad:                                            ; preds = %.tail362, %.tail362.thread
  call fastcc void @Help()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.ca

bb.ae:                                            ; preds = %bb.ac, %bb.z
  %.2226.ph315 = phi ptr [ %.1225.ph, %bb.ac ], [ %.0224440.ph, %bb.z ] ; 3 uses
  %.2218.ph = phi i32 [ %.1217.ph, %bb.ac ], [ %.0216441.ph, %bb.z ] ; 2 uses
  %.2205.ph316 = phi i32 [ %.1204.ph, %bb.ac ], [ %.0203442.ph, %bb.z ] ; 3 uses
  %.2191.ph = phi i32 [ %.1190.ph, %bb.ac ], [ %.0189443.lcssa, %bb.z ]
  %.1182.ph317 = phi i32 [ 1, %bb.ac ], [ %.0181445.ph, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.db = add nsw i32 %.2191.ph, 1                ; 2 uses
  %i.dc = icmp slt i32 %i.db, %i.i
  br i1 %i.dc, label %.outer, label %._crit_edge, !llvm.loop !9

.outer:                                           ; preds = %bb.ae, %.lr.ph
  %.0181445.ph = phi i32 [ %.1182.ph317, %bb.ae ], [ %i.h, %.lr.ph ] ; 2 uses
  %.0187444.ph = phi i32 [ %.0187444.lcssa, %bb.ae ], [ 0, %.lr.ph ]
  %.0189443.ph = phi i32 [ %i.db, %bb.ae ], [ 0, %.lr.ph ] ; 3 uses
  %.0203442.ph = phi i32 [ %.2205.ph316, %bb.ae ], [ 0, %.lr.ph ] ; 11 uses
  %.0216441.ph = phi i32 [ %.2218.ph, %bb.ae ], [ 0, %.lr.ph ] ; 10 uses
  %.0224440.ph = phi ptr [ %.2226.ph315, %bb.ae ], [ null, %.lr.ph ] ; 12 uses
  %i.dd = sext i32 %.0189443.ph to i64            ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !24 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !25
  %i.dh = icmp eq i8 %i.dg, 45
  br i1 %i.dh, label %sub_0, label %.thread546

.thread546:                                       ; preds = %.outer, %bb.f
  %.0189443677 = phi i32 [ %i.di, %bb.f ], [ %.0189443.ph, %.outer ]
  %i.di = add nsw i32 %.0189443677, 1             ; 4 uses
  %i.dj = icmp slt i32 %i.di, %i.i
  br i1 %i.dj, label %bb.f, label %._crit_edge.thread557, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.ae
  %8 = icmp eq i32 %.0187444.lcssa, 0
  br i1 %8, label %._crit_edge.thread, label %._crit_edge.thread557

._crit_edge.thread:                               ; preds = %.preheader382, %._crit_edge
  %.0203.lcssa545 = phi i32 [ %.2205.ph316, %._crit_edge ], [ 0, %.preheader382 ]
  %.0224.lcssa544 = phi ptr [ %.2226.ph315, %._crit_edge ], [ null, %.preheader382 ]
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !23
  %fwrite259 = call i64 @fwrite(ptr nonnull @.str.16, i64 43, i64 1, ptr %i.dk) #8 ; 0 uses
  call fastcc void @Help()
  br label %.loopexit

._crit_edge.thread557:                            ; preds = %.thread546, %._crit_edge
  %.in = phi i32 [ %.2218.ph, %._crit_edge ], [ %.0216441.ph, %.thread546 ]
  %.3227553563 = phi ptr [ %.2226.ph315, %._crit_edge ], [ %.0224440.ph, %.thread546 ] ; 8 uses
  %.3206555562 = phi i32 [ %.2205.ph316, %._crit_edge ], [ %.0203442.ph, %.thread546 ] ; 8 uses
  %i.dl = icmp eq i32 %.in, 0
  store i32 1, ptr %4, align 4, !tbaa !36
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  br label %bb.af

.preheader:                                       ; preds = %bb.bk
  %.7196465 = add nsw i32 %.1186, 1
  %i.ds = icmp slt i32 %.7196465, %i.i
  br i1 %i.ds, label %.lr.ph467.preheader, label %._crit_edge468

.lr.ph467.preheader:                              ; preds = %.preheader
  %i.dt = sext i32 %.1186 to i64
  %i.du = add nsw i64 %i.dt, 1
  br label %.lr.ph467

bb.af:                                            ; preds = %._crit_edge.thread557, %bb.bk
  %.0185458 = phi i32 [ 0, %._crit_edge.thread557 ], [ %.1186, %bb.bk ] ; 2 uses
  %.4193457 = phi i32 [ 0, %._crit_edge.thread557 ], [ %i.gz, %bb.bk ] ; 14 uses
  %.0197456 = phi i32 [ 0, %._crit_edge.thread557 ], [ %.2199, %bb.bk ] ; 3 uses
  %.0200455 = phi i32 [ 0, %._crit_edge.thread557 ], [ %.2202, %bb.bk ] ; 3 uses
  %.0208454 = phi i32 [ 0, %._crit_edge.thread557 ], [ %.1209, %bb.bk ] ; 5 uses
  %.0210453 = phi i32 [ 100, %._crit_edge.thread557 ], [ %.2212, %bb.bk ] ; 12 uses
  %.0213451 = phi i32 [ 0, %._crit_edge.thread557 ], [ %.1214, %bb.bk ] ; 12 uses
  %.0220449 = phi ptr [ null, %._crit_edge.thread557 ], [ %.2222, %bb.bk ] ; 9 uses
  %i.dv = sext i32 %.4193457 to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dv ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !24 ; 14 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.bk, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !25
  %i.ea = icmp eq i8 %i.dz, 45
  br i1 %i.ea, label %bb.ah, label %bb.ay

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.eb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dx, ptr noundef nonnull dereferenceable(7) @.str.17) #9
  %.not269 = icmp eq i32 %i.eb, 0
  br i1 %.not269, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ec = load i32, ptr %i.dr, align 4, !tbaa !33
  %.not270 = icmp eq i32 %i.ec, 0
  br i1 %.not270, label %bb.aj, label %bb.ax

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %4, align 4, !tbaa !36
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ah
  %i.ed = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dx, ptr noundef nonnull dereferenceable(10) @.str.18) #9
  %.not271 = icmp eq i32 %i.ed, 0
  br i1 %.not271, label %bb.al, label %sub_0368

bb.al:                                            ; preds = %bb.ak
  %i.ee = load i32, ptr %i.dr, align 4, !tbaa !33
  %.not272 = icmp eq i32 %i.ee, 0
  br i1 %.not272, label %bb.am, label %bb.ax

bb.am:                                            ; preds = %bb.al
  store i32 1, ptr %4, align 4, !tbaa !36
  br label %bb.ax

sub_0368:                                         ; preds = %bb.ak
  %i.ef = load i8, ptr %i.dx, align 1
  %.not475 = icmp eq i8 %i.ef, 45
  br i1 %.not475, label %sub_1369, label %.tail377.thread

sub_1369:                                         ; preds = %sub_0368
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.eh = load i8, ptr %i.eg, align 1
  %.not476 = icmp eq i8 %i.eh, 113
  br i1 %.not476, label %.tail367, label %sub_1374

.tail367:                                         ; preds = %sub_1369
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.an, label %sub_1374

bb.an:                                            ; preds = %.tail367
  %i.el = add nsw i32 %.4193457, 1                ; 3 uses
  %i.em = icmp slt i32 %i.el, %i.i
  br i1 %i.em, label %bb.ao, label %sub_1374

bb.ao:                                            ; preds = %bb.an
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !24
  %i.eq = call float @ExUtilGetFloat(ptr noundef %i.ep, ptr noundef nonnull %i.e) #7
  store float %i.eq, ptr %i.dq, align 4, !tbaa !39
  br label %bb.ax

sub_1374:                                         ; preds = %bb.an, %.tail367, %sub_1369
  %i.er = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.es = load i8, ptr %i.er, align 1
  %.not478 = icmp eq i8 %i.es, 109
  br i1 %.not478, label %.tail372, label %sub_1379

.tail372:                                         ; preds = %sub_1374
  %i.et = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.ap, label %sub_1379

bb.ap:                                            ; preds = %.tail372
  %i.ew = add nsw i32 %.4193457, 1                ; 3 uses
  %i.ex = icmp slt i32 %i.ew, %i.i
  br i1 %i.ex, label %bb.aq, label %sub_1379

bb.aq:                                            ; preds = %bb.ap
  %i.ey = sext i32 %i.ew to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !24
  %i.fb = call i32 @ExUtilGetInt(ptr noundef %i.fa, i32 noundef 0, ptr noundef nonnull %i.e) #7
  store i32 %i.fb, ptr %i.dp, align 4, !tbaa !40
  br label %bb.ax

sub_1379:                                         ; preds = %bb.ap, %.tail372, %sub_1374
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.fd = load i8, ptr %i.fc, align 1
  %.not480 = icmp eq i8 %i.fd, 100
  br i1 %.not480, label %.tail377, label %.tail377.thread

.tail377:                                         ; preds = %sub_1379
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %bb.ar, label %.tail377.thread

bb.ar:                                            ; preds = %.tail377
  %i.fh = add nsw i32 %.4193457, 1                ; 3 uses
  %i.fi = icmp slt i32 %i.fh, %i.i
  br i1 %i.fi, label %bb.as, label %.tail377.thread

bb.as:                                            ; preds = %bb.ar
  %i.fj = sext i32 %i.fh to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !24
  %i.fm = call i32 @ExUtilGetInt(ptr noundef %i.fl, i32 noundef 0, ptr noundef nonnull %i.e) #7 ; 3 uses
  %i.fn = icmp slt i32 %i.fm, 1
  br i1 %i.fn, label %.thread327, label %bb.ax

.thread327:                                       ; preds = %bb.as
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.fp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fo, ptr noundef nonnull @.str.22, i32 noundef %i.fm) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.loopexit

.tail377.thread:                                  ; preds = %sub_0368, %sub_1379, %bb.ar, %.tail377
  %i.fq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dx, ptr noundef nonnull dereferenceable(7) @.str.23) #9
  %.not276 = icmp eq i32 %i.fq, 0
  br i1 %.not276, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.tail377.thread
  store i32 1, ptr %i.do, align 4, !tbaa !41
  br label %bb.ax

bb.au:                                            ; preds = %.tail377.thread
  %i.fr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dx, ptr noundef nonnull dereferenceable(9) @.str.24) #9
  %.not277 = icmp eq i32 %i.fr, 0
  br i1 %.not277, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.do, align 4, !tbaa !41
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  store i32 1, ptr %i.e, align 4, !tbaa !27
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.ft = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.dx) #10 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.am, %bb.al, %bb.aq, %bb.at, %bb.aw, %bb.av, %bb.as, %bb.ao, %bb.ai, %bb.aj
  %.1211.ph = phi i32 [ %.0210453, %bb.aj ], [ %.0210453, %bb.ai ], [ %.0210453, %bb.am ], [ %.0210453, %bb.al ], [ %.0210453, %bb.ao ], [ %.0210453, %bb.aq ], [ %i.fm, %bb.as ], [ %.0210453, %bb.at ], [ %.0210453, %bb.av ], [ %.0210453, %bb.aw ]
  %.5194.ph = phi i32 [ %.4193457, %bb.aj ], [ %.4193457, %bb.ai ], [ %.4193457, %bb.am ], [ %.4193457, %bb.al ], [ %i.el, %bb.ao ], [ %i.ew, %bb.aq ], [ %i.fh, %bb.as ], [ %.4193457, %bb.at ], [ %.4193457, %bb.av ], [ %.4193457, %bb.aw ]
  %.pr326 = load i32, ptr %i.e, align 4, !tbaa !27
  %.not278 = icmp eq i32 %.pr326, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br i1 %.not278, label %bb.bk, label %.loopexit
end_hunk_0
