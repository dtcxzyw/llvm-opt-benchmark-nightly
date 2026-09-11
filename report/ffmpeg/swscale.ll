Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/swscale?download=true
inline.NumInlined: 41
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SwsFormat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.SwsColor }
%struct.SwsColor = type { i32, i32, %struct.AVPrimaryCoefficients, %struct.AVRational, %struct.AVRational, %struct.AVRational, %struct.AVRational }
%struct.AVPrimaryCoefficients = type { %struct.AVCIExy, %struct.AVCIExy, %struct.AVCIExy }
%struct.AVCIExy = type { %struct.AVRational, %struct.AVRational }
%struct.AVRational = type { i32, i32 }

@ff_dither_8x8_128 = constant [9 x [8 x i8]] [[8 x i8] c"$D<\\\22B:Z", [8 x i8] c"d\04|\1Cb\02z\1A", [8 x i8] c"4T,L2R*J", [8 x i8] c"t\14l\0Cr\12j\0A", [8 x i8] c" @8X&F>^", [8 x i8] c"`\00x\18f\06~\1E", [8 x i8] c"0P(H6V.N", [8 x i8] c"p\10h\08v\16n\0E", [8 x i8] c"$D<\\\22B:Z"], align 8
@.str = private unnamed_addr constant [89 x i8] c"Warning: dstStride is not aligned!\0A         ->cannot do aligned memory accesses anymore\0A\00", align 1
@sws_pb_64 = internal constant [8 x i8] c"@@@@@@@@", align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"(lastLumSrcY - firstLumSrcY + 1) <= hout_slice->plane[0].available_lines\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"libswscale/swscale.c\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"(lastChrSrcY - firstChrSrcY + 1) <= hout_slice->plane[1].available_lines\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Incorrectly aligned output: %u/%u not multiples of %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"Cannot convert interlaced to progressive frames or vice versa.\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Unsupported output\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Unsupported input\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed allocating scaling graph\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Failed initializing scaling graph\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Incomplete scaling graph\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"graph->num_passes\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"%s (%s): fmt:%s csp:%s prim:%s trc:%s -> fmt:%s csp:%s prim:%s trc:%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"libswscale/swscale_internal.h\00", align 1
@.str.16 = private unnamed_addr constant [83 x i8] c"One of the input parameters to sws_scale() is NULL, please check the calling code\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Slice parameters %d, %d are invalid\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"bad src image pointers\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"bad dst image pointers\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Slices start in the middle!\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"offset == 0\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"dstY >= ret\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"ret >= 0\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"sws->dst_h >= dstY\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"!frame->hw_frames_ctx\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"'%s' (%d) out of range [%d, %d]\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"alpha_blend\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"intent\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"scaler\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"scaler_sub\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ff_swscale(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
._crit_edge527:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca [4 x ptr], align 16               ; 5 uses
  %i.i = alloca [4 x i32], align 16               ; 10 uses
  %i.j = icmp sgt i32 %7, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31 ; 3 uses
  %i.k = icmp slt i32 %8, %.pre
  %i.l = select i1 %i.j, i1 true, i1 %i.k         ; 2 uses
  %i.m = zext i1 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = load i32, ptr %i.n, align 16, !tbaa !117 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32   ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 16, !tbaa !33  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !118 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.z = load i32, ptr %i.y, align 8, !tbaa !120  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3660
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !121 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52984
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !122 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 52992
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !124 ; 2 uses
  store ptr %i.af, ptr %i.b, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 53000
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !125 ; 2 uses
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 53008
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !126 ; 2 uses
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 53016
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !127 ; 2 uses
  store ptr %i.al, ptr %i.e, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 53024
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !128 ; 2 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 53032
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !129 ; 2 uses
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !123
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34 ; 2 uses
  %i.as = ashr i32 %3, %i.ar                      ; 2 uses
  %i.at = sub nsw i32 0, %4
  %i.au = ashr i32 %i.at, %i.ar                   ; 2 uses
  %i.av = sub nsw i32 0, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !35
  %i.ay = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.ax) #14 ; 2 uses
  %.not.i426 = icmp eq ptr %i.ay, null
  br i1 %.not.i426, label %bb.a, label %isNBPS.exit427

bb.a:                                             ; preds = %._crit_edge527
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 764) #14
  tail call void @abort() #15
  unreachable

isNBPS.exit427:                                   ; preds = %._crit_edge527
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !37
  %i.bb = add i32 %i.ba, -15
  %narrow = icmp ult i32 %i.bb, -6
  br i1 %narrow, label %bb.b, label %bb.d

bb.b:                                             ; preds = %isNBPS.exit427
  %i.bc = load i32, ptr %i.aw, align 8, !tbaa !35
  %i.bd = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.bc) #14 ; 2 uses
  %.not.i429 = icmp eq ptr %i.bd, null
  br i1 %.not.i429, label %bb.c, label %is16BPS.exit430

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 750) #14
  tail call void @abort() #15
  unreachable

is16BPS.exit430:                                  ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !37
  %i.bg = icmp eq i32 %i.bf, 16
  br label %bb.d

bb.d:                                             ; preds = %is16BPS.exit430, %isNBPS.exit427
  %i.bh = phi i1 [ true, %isNBPS.exit427 ], [ %i.bg, %is16BPS.exit430 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3696 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 16, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !130
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3564 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !131
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !39 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.br = load i32, ptr %i.bq, align 16, !tbaa !39 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !132 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !133 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !134
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr [152 x i8], ptr %i.bv, i64 %i.by ; 20 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -304   ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 -152
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !135 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.cg = load i32, ptr %i.aw, align 8, !tbaa !35 ; 3 uses
  %i.ch = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.cg) #14 ; 3 uses
  %.not.i431 = icmp eq ptr %i.ch, null
  br i1 %.not.i431, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 910) #14
  tail call void @abort() #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !41
  %i.ck = icmp ugt i8 %i.cj, 1
  br i1 %i.ck, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !42
  %.fr462 = freeze i64 %i.cm
  %i.cn = and i64 %.fr462, 16
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = add i32 %i.cg, -9
  %i.cq = icmp ult i32 %i.cp, 3
  %or.cond473 = or i1 %i.cq, %i.co
  br i1 %or.cond473, label %isPacked.exit.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cr = add i32 %i.cg, -9
  %i.cs = icmp ult i32 %i.cr, 3
  br i1 %i.cs, label %isPacked.exit.thread, label %bb.i

isPacked.exit.thread:                             ; preds = %bb.h, %bb.g
  %i.ct = load ptr, ptr %1, align 8, !tbaa !43
  %i.cu = insertelement <4 x ptr> poison, ptr %i.ct, i64 0
  %i.cv = shufflevector <4 x ptr> %i.cu, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.cv, ptr %i.h, align 16, !tbaa !43
  %i.cw = load i32, ptr %2, align 4, !tbaa !39    ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !39
  store i32 %i.cw, ptr %i.i, align 16, !tbaa !39
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %.phi.trans.insert528 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.pre529 = load i32, ptr %.phi.trans.insert528, align 4, !tbaa !39
  %.phi.trans.insert530 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre531 = load i32, ptr %.phi.trans.insert530, align 8, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %isPacked.exit.thread
  %i.cy = phi i32 [ %.pre531, %bb.i ], [ %i.cw, %isPacked.exit.thread ]
  %i.cz = phi i32 [ %.pre529, %bb.i ], [ %i.cw, %isPacked.exit.thread ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.db = load i32, ptr %i.da, align 16, !tbaa !137 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.dd = shl i32 %i.cz, %i.db
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !39
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.df = shl i32 %i.cy, %i.db
  store i32 %i.df, ptr %i.de, align 8, !tbaa !39
  %i.dg = load i32, ptr %6, align 4, !tbaa !39
  %i.dh = and i32 %i.dg, 15
  %.not404 = icmp eq i32 %i.dh, 0
  br i1 %.not404, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !39
  %i.dk = and i32 %i.dj, 15
  %.not405 = icmp eq i32 %i.dk, 0
  br i1 %.not405, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !39
  %i.dn = and i32 %i.dm, 15
  %.not406 = icmp eq i32 %i.dn, 0
  br i1 %.not406, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !39
  %i.dq = and i32 %i.dp, 15
  %.not407 = icmp eq i32 %i.dq, 0
  %i.dr = and i32 %i.t, 4096
  %.not409 = icmp eq i32 %i.dr, 0
  %or.cond470 = select i1 %.not407, i1 true, i1 %.not409
  br i1 %or.cond470, label %bb.q, label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.old = and i32 %i.t, 4096
  %.not409.old = icmp eq i32 %.old, 0
  br i1 %.not409.old, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !138 ; 2 uses
  %.not408 = icmp eq ptr %i.dt, null
  %spec.select = select i1 %.not408, ptr %0, ptr %i.dt
  %i.du = getelementptr inbounds nuw i8, ptr %spec.select, i64 53208
  %i.dv = atomicrmw xchg ptr %i.du, i32 1 monotonic, align 8
  %.not410 = icmp eq i32 %i.dv, 0
  br i1 %.not410, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.m
  br i1 %i.l, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = add nsw i32 %8, %7
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.dx = icmp eq i32 %3, 0
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %.0377 = phi i32 [ %7, %bb.r ], [ 0, %bb.t ], [ %i.bj, %bb.s ] ; 9 uses
  %.0374 = phi i32 [ -1, %bb.r ], [ -1, %bb.t ], [ %i.bl, %bb.s ] ; 3 uses
  %.0371 = phi i32 [ -1, %bb.r ], [ -1, %bb.t ], [ %i.bn, %bb.s ] ; 3 uses
  %.0366 = phi i32 [ %i.dw, %bb.r ], [ %.pre, %bb.t ], [ %.pre, %bb.s ] ; 3 uses
  br i1 %i.bh, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 52872
  store ptr @sws_pb_64, ptr %i.dy, align 8, !tbaa !139
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 52864
  store ptr @sws_pb_64, ptr %i.dz, align 16, !tbaa !140
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 52880
  %i.eb = load i32, ptr %i.ea, align 16, !tbaa !141
  tail call void @ff_init_vscale_pfn(ptr noundef nonnull %0, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.ap, i32 noundef %i.eb) #14
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !142
  %i.ee = call i32 @ff_init_slice_from_src(ptr noundef %i.bv, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef %i.ed, i32 noundef %3, i32 noundef %4, i32 noundef %i.as, i32 noundef %i.av, i32 noundef 1) #14 ; 0 uses
  %i.ef = load i32, ptr %i.n, align 16, !tbaa !117
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !44 ; 2 uses
  %i.ei = ashr i32 %.0377, %i.eh
  %i.ej = sub nsw i32 0, %8
  %i.ek = ashr i32 %i.ej, %i.eh
  %i.el = sub nsw i32 0, %i.ek
  %i.em = call i32 @ff_init_slice_from_src(ptr noundef %i.cb, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %i.ef, i32 noundef %.0377, i32 noundef %8, i32 noundef %i.ei, i32 noundef %i.el, i32 noundef %i.m) #14 ; 0 uses
  %i.en = icmp eq i32 %3, 0
  br i1 %i.en, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eo = add nsw i32 %.0374, 1                   ; 2 uses
  %i.ep = getelementptr i8, ptr %i.bz, i64 -276
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !144
  %i.eq = add nsw i32 %.0371, 1                   ; 2 uses
  %i.er = getelementptr i8, ptr %i.bz, i64 -244
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !144
  %i.es = getelementptr i8, ptr %i.bz, i64 -212
  store i32 %i.eq, ptr %i.es, align 4, !tbaa !144
  %i.et = getelementptr i8, ptr %i.bz, i64 -180
  store i32 %i.eo, ptr %i.et, align 4, !tbaa !144
  %i.eu = getelementptr i8, ptr %i.bz, i64 -176
  store i32 0, ptr %i.eu, align 8, !tbaa !145
  %i.ev = getelementptr i8, ptr %i.bz, i64 -208
  store i32 0, ptr %i.ev, align 8, !tbaa !145
  %i.ew = getelementptr i8, ptr %i.bz, i64 -240
  store i32 0, ptr %i.ew, align 8, !tbaa !145
  %i.ex = getelementptr i8, ptr %i.bz, i64 -272
  store i32 0, ptr %i.ex, align 8, !tbaa !145
  store i32 %i.o, ptr %i.ca, align 8, !tbaa !147
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ey = icmp slt i32 %.0377, %.0366
  br i1 %i.ey, label %.lr.ph493, label %._crit_edge494

.lr.ph493:                                        ; preds = %bb.y
  %i.ez = sub nsw i32 1, %i.z                     ; 2 uses
  %i.fa = sub nsw i32 1, %i.ab
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.fd = getelementptr i8, ptr %i.bz, i64 -276   ; 2 uses
  %i.fe = getelementptr i8, ptr %i.bz, i64 -180
  %i.ff = getelementptr i8, ptr %i.bz, i64 -176
  %i.fg = getelementptr i8, ptr %i.bz, i64 -272   ; 2 uses
  %i.fh = getelementptr i8, ptr %i.bz, i64 -244   ; 2 uses
  %i.fi = getelementptr i8, ptr %i.bz, i64 -212
  %i.fj = getelementptr i8, ptr %i.bz, i64 -208
  %i.fk = getelementptr i8, ptr %i.bz, i64 -240   ; 2 uses
  %i.fl = add nsw i32 %4, %3                      ; 5 uses
  %i.fm = sub nsw i32 0, %i.fl                    ; 3 uses
  %i.fn = sub nsw i32 %i.as, %i.au                ; 2 uses
  %i.fo = getelementptr i8, ptr %i.bz, i64 -280
  %i.fp = getelementptr i8, ptr %i.bz, i64 -248
  %i.fq = icmp slt i32 %i.bp, 1
  %i.fr = icmp sge i32 %i.bp, %i.br
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 52864
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 52872
  %i.fu = icmp slt i32 %i.br, %i.bt
  %i.fv = sext i32 %i.bp to i64
  %i.fw = sext i32 %i.br to i64
  %i.fx = sext i32 %.0377 to i64
  %wide.trip.count = zext nneg i32 %i.bp to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph493, %._crit_edge
  %indvars.iv521 = phi i64 [ %i.fx, %.lr.ph493 ], [ %indvars.iv.next522, %._crit_edge ] ; 5 uses
  %.0367491 = phi i32 [ 1, %.lr.ph493 ], [ %.1368, %._crit_edge ]
  %.0369490 = phi i32 [ 1, %.lr.ph493 ], [ %.1370, %._crit_edge ]
  %.1372489 = phi i32 [ %.0371, %.lr.ph493 ], [ %.0364, %._crit_edge ] ; 2 uses
  %.1375488 = phi i32 [ %.0374, %.lr.ph493 ], [ %.0365.pre-phi, %._crit_edge ] ; 2 uses
  %i.fy = load i32, ptr %i.eg, align 4, !tbaa !44 ; 2 uses
  %i.fz = trunc nsw i64 %indvars.iv521 to i32     ; 4 uses
  %i.ga = ashr i32 %i.fz, %i.fy                   ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv521
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !39
  %. = call i32 @llvm.smax.i32(i32 %i.ez, i32 %i.gc) ; 8 uses
  %notmask = shl nsw i32 -1, %i.fy
  %i.gd = xor i32 %notmask, -1
  %i.ge = or i32 %i.fz, %i.gd
  %i.gf = load i32, ptr %i.p, align 4, !tbaa !31
  %i.gg = add nsw i32 %i.gf, -1
  %i.gh = call i32 @llvm.smin.i32(i32 %i.ge, i32 %i.gg)
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !39
  %spec.select460 = call i32 @llvm.smax.i32(i32 %i.ez, i32 %i.gk)
  %i.gl = sext i32 %i.ga to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !39
  %.423 = call i32 @llvm.smax.i32(i32 %i.fa, i32 %i.gn) ; 8 uses
  %i.go = load i32, ptr %i.fb, align 4, !tbaa !46 ; 2 uses
  %i.gp = add nsw i32 %., %i.z
  %i.gq = call i32 @llvm.smin.i32(i32 %i.go, i32 %i.gp)
  %i.gr = add nsw i32 %spec.select460, %i.z
  %i.gs = call i32 @llvm.smin.i32(i32 %i.go, i32 %i.gr)
  %i.gt = load i32, ptr %i.fc, align 4, !tbaa !148
  %i.gu = add nsw i32 %.423, %i.ab
  %i.gv = call i32 @llvm.smin.i32(i32 %i.gt, i32 %i.gu) ; 2 uses
  %i.gw = icmp sgt i32 %., %.1375488
  br i1 %i.gw, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.gx = add nsw i32 %., -1
  %.not463 = icmp eq i32 %.1375488, %i.gx
  br i1 %.not463, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %., ptr %i.fd, align 4, !tbaa !144
  store i32 %., ptr %i.fe, align 4, !tbaa !144
  store i32 0, ptr %i.ff, align 8, !tbaa !145
  store i32 0, ptr %i.fg, align 8, !tbaa !145
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %.1370 = phi i32 [ %.0369490, %bb.z ], [ 1, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %i.gy = icmp sgt i32 %.423, %.1372489
  br i1 %i.gy, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gz = add nsw i32 %.423, -1
  %.not464 = icmp eq i32 %.1372489, %i.gz
  br i1 %.not464, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %.423, ptr %i.fh, align 4, !tbaa !144
  store i32 %.423, ptr %i.fi, align 4, !tbaa !144
  store i32 0, ptr %i.fj, align 8, !tbaa !145
  store i32 0, ptr %i.fk, align 8, !tbaa !145
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.1368 = phi i32 [ %.0367491, %bb.ac ], [ 1, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %.not414 = icmp sgt i32 %i.gs, %i.fl
  br i1 %.not414, label %.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ha = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.hb = ashr i32 %i.fm, %i.ha
  %i.hc = sub nsw i32 0, %i.hb
  %i.hd = icmp sle i32 %i.gv, %i.hc
  %cond.fr450 = freeze i1 %i.hd
  br i1 %cond.fr450, label %..split_crit_edge, label %.split

..split_crit_edge:                                ; preds = %bb.ag
  br label %.split

.split:                                           ; preds = %bb.ag, %..split_crit_edge, %bb.af
  %i.he = phi i32 [ %i.gq, %..split_crit_edge ], [ %i.fl, %bb.af ], [ %i.fl, %bb.ag ] ; 3 uses
  %i.hf = phi i1 [ true, %..split_crit_edge ], [ false, %bb.af ], [ false, %bb.ag ]
  %i.hg = phi i32 [ %i.gv, %..split_crit_edge ], [ %i.fn, %bb.af ], [ %i.fn, %bb.ag ] ; 3 uses
  %.0365.pre-phi = add i32 %i.he, -1              ; 5 uses
  %.0364 = add nsw i32 %i.hg, -1                  ; 5 uses
  %i.hh = sub nsw i32 %.0365.pre-phi, %.
  %i.hi = load i32, ptr %i.fo, align 8, !tbaa !149 ; 2 uses
  %.not415.not = icmp slt i32 %i.hh, %i.hi
  br i1 %.not415.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.split
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 474) #14
  call void @abort() #15
  unreachable

bb.ai:                                            ; preds = %.split
  %i.hj = sub nsw i32 %.0364, %.423
  %i.hk = load i32, ptr %i.fp, align 8, !tbaa !149 ; 2 uses
  %.not416.not = icmp slt i32 %i.hj, %i.hk
  br i1 %.not416.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 475) #14
  call void @abort() #15
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.hl = load i32, ptr %i.fd, align 4, !tbaa !144
  %i.hm = load i32, ptr %i.fg, align 8, !tbaa !145
  %i.hn = add nsw i32 %i.hm, %i.hl                ; 4 uses
  %i.ho = icmp sge i32 %i.hn, %i.he
  %i.hp = icmp ne i32 %.1370, 0
  %or.cond = select i1 %i.ho, i1 true, i1 %i.hp
  br i1 %or.cond, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hq = call i32 @llvm.smax.i32(i32 %., i32 %i.hn)
  %i.hr = add nsw i32 %i.hi, %.
  %.425 = call i32 @llvm.smin.i32(i32 %i.hr, i32 %i.fl)
  %i.hs = add nsw i32 %.425, -1
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.0362 = phi i32 [ %i.hq, %bb.al ], [ %i.hn, %bb.ak ] ; 2 uses
  %.0361 = phi i32 [ %i.hs, %bb.al ], [ %.0365.pre-phi, %bb.ak ] ; 2 uses
  %i.ht = load i32, ptr %i.fh, align 4, !tbaa !144
  %i.hu = load i32, ptr %i.fk, align 8, !tbaa !145
  %i.hv = add nsw i32 %i.hu, %i.ht                ; 4 uses
  %i.hw = icmp sge i32 %i.hv, %i.hg
  %i.hx = icmp ne i32 %.1368, 0
  %or.cond3 = select i1 %i.hw, i1 true, i1 %i.hx
  br i1 %or.cond3, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hy = call i32 @llvm.smax.i32(i32 %.423, i32 %i.hv)
  %i.hz = add nsw i32 %i.hk, %.423                ; 2 uses
  %i.ia = load i32, ptr %i.aq, align 4, !tbaa !34 ; 2 uses
  %i.ib = ashr i32 %i.fm, %i.ia
  %i.ic = sub nsw i32 0, %i.ib
  %i.id = icmp sgt i32 %i.hz, %i.ic
  %i.ie = ashr i32 %i.fm, %i.ia
  %i.if = sub nsw i32 0, %i.ie
  %.in417 = select i1 %i.id, i32 %i.if, i32 %i.hz
  %i.ig = add nsw i32 %.in417, -1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.0360 = phi i32 [ %i.hy, %bb.an ], [ %i.hv, %bb.am ] ; 2 uses
  %.0359 = phi i32 [ %i.ig, %bb.an ], [ %.0364, %bb.am ] ; 2 uses
  %i.ih = call i32 @ff_rotate_slice(ptr noundef %i.ca, i32 noundef %.0361, i32 noundef %.0359) #14 ; 0 uses
  %i.ii = icmp sge i32 %i.hn, %i.he
  %brmerge = select i1 %i.ii, i1 true, i1 %i.fq
  br i1 %brmerge, label %.loopexit477, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao
  %invariant.op = add i32 %.0361, 1
  %.reass = sub i32 %invariant.op, %.0362
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.ap
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ap ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %indvars.iv ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !151
  %i.im = call i32 %i.il(ptr noundef %0, ptr noundef %i.ij, i32 noundef %.0362, i32 noundef %.reass) #14 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit477, label %bb.ap, !llvm.loop !104

.loopexit477:                                     ; preds = %bb.ap, %bb.ao
  %i.in = icmp sge i32 %i.hv, %i.hg
  %brmerge566 = select i1 %i.in, i1 true, i1 %i.fr
  br i1 %brmerge566, label %.loopexit, label %.lr.ph484

.lr.ph484:                                        ; preds = %.loopexit477
  %invariant.op481 = add nsw i32 %.0359, 1
  %.reass482 = sub i32 %invariant.op481, %.0360
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph484, %bb.aq
  %indvars.iv512 = phi i64 [ %i.fv, %.lr.ph484 ], [ %indvars.iv.next513, %bb.aq ] ; 2 uses
  %i.io = getelementptr inbounds [40 x i8], ptr %i.cd, i64 %indvars.iv512 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !151
  %i.ir = call i32 %i.iq(ptr noundef %0, ptr noundef %i.io, i32 noundef %.0360, i32 noundef %.reass482) #14 ; 0 uses
  %indvars.iv.next513 = add nsw i64 %indvars.iv512, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next513 to i32
  %exitcond515.not = icmp eq i32 %i.br, %lftr.wideiv
  br i1 %exitcond515.not, label %.loopexit, label %bb.aq, !llvm.loop !105

.loopexit:                                        ; preds = %bb.aq, %.loopexit477
  br i1 %i.hf, label %bb.ar, label %._crit_edge494

bb.ar:                                            ; preds = %.loopexit
  br i1 %i.bh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.is = and i32 %i.ga, 7
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr @ff_dither_8x8_128, i64 %i.it
  store ptr %i.iu, ptr %i.fs, align 16, !tbaa !140
  %i.iv = and i64 %indvars.iv521, 7
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr @ff_dither_8x8_128, i64 %i.iv
  store ptr %i.iw, ptr %i.ft, align 8, !tbaa !139
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ix = load i32, ptr %i.p, align 4, !tbaa !31
  %i.iy = add nsw i32 %i.ix, -2
  %i.iz = sext i32 %i.iy to i64
  %.not418 = icmp slt i64 %indvars.iv521, %i.iz
  br i1 %.not418, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @ff_sws_init_output_funcs(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #14
  %i.ja = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.jb = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.jc = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.jd = load ptr, ptr %i.d, align 8, !tbaa !123
  %i.je = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.jf = load ptr, ptr %i.f, align 8, !tbaa !123
  %i.jg = load ptr, ptr %i.g, align 8, !tbaa !123
  call void @ff_init_vscale_pfn(ptr noundef nonnull %0, ptr noundef %i.ja, ptr noundef %i.jb, ptr noundef %i.jc, ptr noundef %i.jd, ptr noundef %i.je, ptr noundef %i.jf, ptr noundef %i.jg, i32 noundef 0) #14
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.fu, label %.lr.ph486, label %._crit_edge

.lr.ph486:                                        ; preds = %bb.av, %.lr.ph486
  %indvars.iv516 = phi i64 [ %indvars.iv.next517, %.lr.ph486 ], [ %i.fw, %bb.av ] ; 2 uses
  %i.jh = getelementptr inbounds [40 x i8], ptr %i.cd, i64 %indvars.iv516 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !151
  %i.jk = call i32 %i.jj(ptr noundef nonnull %0, ptr noundef %i.jh, i32 noundef %i.fz, i32 noundef 1) #14 ; 0 uses
  %indvars.iv.next517 = add nsw i64 %indvars.iv516, 1 ; 2 uses
  %lftr.wideiv519 = trunc i64 %indvars.iv.next517 to i32
  %exitcond520.not = icmp eq i32 %i.bt, %lftr.wideiv519
  br i1 %exitcond520.not, label %._crit_edge, label %.lr.ph486, !llvm.loop !106

._crit_edge:                                      ; preds = %.lr.ph486, %bb.av
  %indvars.iv.next522 = add nsw i64 %indvars.iv521, 1 ; 2 uses
  %lftr.wideiv524 = trunc i64 %indvars.iv.next522 to i32
  %exitcond525.not = icmp eq i32 %.0366, %lftr.wideiv524
  br i1 %exitcond525.not, label %._crit_edge494, label %bb.z, !llvm.loop !107

._crit_edge494:                                   ; preds = %._crit_edge, %.loopexit, %bb.y
  %.1378.lcssa = phi i32 [ %.0377, %bb.y ], [ %i.fz, %.loopexit ], [ %.0366, %._crit_edge ] ; 4 uses
  %.2376 = phi i32 [ %.0374, %bb.y ], [ %.0365.pre-phi, %.loopexit ], [ %.0365.pre-phi, %._crit_edge ]
  %.2373 = phi i32 [ %.0371, %bb.y ], [ %.0364, %.loopexit ], [ %.0364, %._crit_edge ]
  %i.jl = call ptr @av_pix_fmt_desc_get(i32 noundef %i.r) #14 ; 3 uses
  %.not.i432 = icmp eq ptr %i.jl, null
  br i1 %.not.i432, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge494
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 919) #14
  call void @abort() #15
  unreachable

bb.ax:                                            ; preds = %._crit_edge494
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !41
  %i.jo = icmp ugt i8 %i.jn, 1
  br i1 %i.jo, label %isPlanar.exit, label %fillPlane16.exit

isPlanar.exit:                                    ; preds = %bb.ax
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !42
  %i.jr = and i64 %i.jq, 16
  %.not419 = icmp eq i64 %i.jr, 0
  br i1 %.not419, label %fillPlane16.exit, label %bb.ay

bb.ay:                                            ; preds = %isPlanar.exit
  %i.js = call ptr @av_pix_fmt_desc_get(i32 noundef %i.r) #14 ; 2 uses
  %.not.i433 = icmp eq ptr %i.js, null
  br i1 %.not.i433, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 901) #14
  call void @abort() #15
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.jt = icmp eq i32 %i.r, 11
  br i1 %i.jt, label %isALPHA.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !42
  %i.jw = and i64 %i.jv, 128
  %i.jx = icmp eq i64 %i.jw, 0
  br label %isALPHA.exit

isALPHA.exit:                                     ; preds = %bb.ba, %bb.bb
  %.0.i = phi i1 [ %i.jx, %bb.bb ], [ false, %bb.ba ]
  %i.jy = icmp ne i32 %i.cf, 0
  %or.cond5 = select i1 %.0.i, i1 true, i1 %i.jy
  br i1 %or.cond5, label %fillPlane16.exit, label %bb.bc

bb.bc:                                            ; preds = %isALPHA.exit
  %i.jz = sub nsw i32 %.0377, %7                  ; 3 uses
  %i.ka = sub i32 %.1378.lcssa, %.0377            ; 7 uses
  %i.kb = call ptr @av_pix_fmt_desc_get(i32 noundef %i.r) #14 ; 2 uses
  %.not.i428 = icmp eq ptr %i.kb, null
  br i1 %.not.i428, label %bb.bd, label %is16BPS.exit

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 750) #14
  call void @abort() #15
  unreachable

is16BPS.exit:                                     ; preds = %bb.bc
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !37
  %.not465 = icmp eq i32 %i.kd, 16
  br i1 %.not465, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %is16BPS.exit
  %i.ke = call ptr @av_pix_fmt_desc_get(i32 noundef %i.r) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.ke, null
  br i1 %.not.i, label %bb.bf, label %isNBPS.exit

bb.bf:                                            ; preds = %bb.be
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 764) #14
  call void @abort() #15
  unreachable

isNBPS.exit:                                      ; preds = %bb.be
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !37
  %i.kh = add i32 %i.kg, -15
  %narrow466 = icmp ult i32 %i.kh, -6
  br i1 %narrow466, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %isNBPS.exit, %is16BPS.exit
  %i.ki = call ptr @av_pix_fmt_desc_get(i32 noundef %i.r) #14
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !43
  %i.kl = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !39 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 100
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !37
  %i.kp = call ptr @av_pix_fmt_desc_get(i32 noundef %i.r) #14 ; 2 uses
  %.not.i435 = icmp eq ptr %i.kp, null
  br i1 %.not.i435, label %bb.bh, label %isBE.exit436

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 771) #14
  call void @abort() #15
  unreachable

isBE.exit436:                                     ; preds = %bb.bg
  %i.kq = icmp sgt i32 %i.ka, 0
  br i1 %i.kq, label %.preheader.lr.ph.i, label %fillPlane16.exit

.preheader.lr.ph.i:                               ; preds = %isBE.exit436
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !42
  %i.kt = sub nsw i32 16, %i.ko
  %i.ku = lshr i32 65535, %i.kt
  %i.kv = trunc nuw i32 %i.ku to i16              ; 2 uses
  %i.kw = call i16 @llvm.bswap.i16(i16 %i.kv)
  %i.kx = and i64 %i.ks, 1
  %.not.i439 = icmp eq i64 %i.kx, 0
  %i.ky = icmp sgt i32 %i.o, 0
  %i.kz = select i1 %.not.i439, i16 %i.kv, i16 %i.kw ; 3 uses
  %i.la = sext i32 %i.km to i64
  br i1 %i.ky, label %.preheader.preheader.i, label %fillPlane16.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.lb = mul nsw i32 %i.km, %i.jz
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds i8, ptr %i.kk, i64 %i.lc
  %wide.trip.count.i = zext nneg i32 %i.o to i64  ; 6 uses
  %min.iters.check574.a = icmp ult i32 %i.o, 4
  %min.iters.check575 = icmp ult i32 %i.o, 16
  %i.le = and i64 %wide.trip.count.i, 12
  %n.vec577 = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  %broadcast.splatinsert578 = insertelement <8 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat579 = shufflevector <8 x i16> %broadcast.splatinsert578, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n584 = icmp eq i64 %n.vec577, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.le, 0
  %n.vec585 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert586 = insertelement <4 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat587 = shufflevector <4 x i16> %broadcast.splatinsert586, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n590 = icmp eq i64 %n.vec585, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01823.i = phi i32 [ %i.ln, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.02022.i = phi ptr [ %i.lm, %._crit_edge.i ], [ %i.ld, %.preheader.preheader.i ] ; 4 uses
  br i1 %min.iters.check574.a, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check575, label %vec.epilog.ph, label %vector.body580

vector.body580:                                   ; preds = %vector.main.loop.iter.check, %vector.body580
  %index581 = phi i64 [ %index.next582, %vector.body580 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.lf = shl nuw nsw i64 %index581, 1
  %i.lg = getelementptr inbounds nuw i8, ptr %.02022.i, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store <8 x i16> %broadcast.splat579, ptr %i.lg, align 1, !tbaa !48
  store <8 x i16> %broadcast.splat579, ptr %i.lh, align 1, !tbaa !48
  %index.next582 = add nuw i64 %index581, 16      ; 2 uses
  %i.li = icmp eq i64 %index.next582, %n.vec577
  br i1 %i.li, label %middle.block583, label %vector.body580, !llvm.loop !108

middle.block583:                                  ; preds = %vector.body580
  br i1 %cmp.n584, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block583
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec577, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index588 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next589, %vec.epilog.vector.body ] ; 2 uses
  %i.lj = shl nuw nsw i64 %index588, 1
  %i.lk = getelementptr inbounds nuw i8, ptr %.02022.i, i64 %i.lj
  store <4 x i16> %broadcast.splat587, ptr %i.lk, align 1, !tbaa !48
  %index.next589 = add nuw i64 %index588, 4       ; 2 uses
  %i.ll = icmp eq i64 %index.next589, %n.vec585
  br i1 %i.ll, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n590, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec577, %vec.epilog.iter.check ], [ %n.vec585, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block583
  %i.lm = getelementptr inbounds i8, ptr %.02022.i, i64 %i.la
  %i.ln = add nuw nsw i32 %.01823.i, 1            ; 2 uses
  %exitcond26.not.i = icmp eq i32 %i.ln, %i.ka
  br i1 %exitcond26.not.i, label %fillPlane16.exit, label %iter.check, !llvm.loop !110
end_hunk_0
