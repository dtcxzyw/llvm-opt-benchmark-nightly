Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtbrfs?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DTBRFS\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@c__1 = internal global i32 1, align 4
@c_b19 = internal global double -1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dtbrfs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr noundef %10, ptr nofree noundef readonly captures(none) %11, ptr noundef %12, ptr nofree noundef writeonly captures(none) %13, ptr noundef %14, ptr noundef %15, ptr nofree noundef captures(none) initializes((0, 4)) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %8 to i64
  %i.b = ptrtoaddr ptr %14 to i64
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [3 x i32], align 4                ; 3 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.g = load i32, ptr %7, align 4, !tbaa !63     ; 17 uses
  %narrow574 = xor i32 %i.g, -1
  %i.h = sext i32 %narrow574 to i64               ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %6, i64 %i.h ; 28 uses
  %i.j = load i32, ptr %9, align 4, !tbaa !63     ; 2 uses
  %narrow = xor i32 %i.j, -1
  %i.k = sext i32 %narrow to i64                  ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %8, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %11, align 4, !tbaa !63    ; 2 uses
  %narrow563 = xor i32 %i.m, -1
  %i.n = sext i32 %narrow563 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %10, i64 %i.n ; 12 uses
  %i.p = getelementptr inbounds i8, ptr %12, i64 -8
  %i.q = getelementptr inbounds i8, ptr %13, i64 -8 ; 2 uses
  %i.r = getelementptr i8, ptr %14, i64 -8        ; 43 uses
  store i32 0, ptr %16, align 4, !tbaa !63
  %i.s = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #7
  %i.t = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %i.u = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  %.not = icmp eq i32 %i.s, 0                     ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  %.not564 = icmp eq i32 %i.v, 0
  br i1 %.not564, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not565 = icmp eq i32 %i.t, 0                  ; 3 uses
  br i1 %.not565, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %.not566 = icmp eq i32 %i.w, 0
  br i1 %.not566, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  %.not567 = icmp eq i32 %i.x, 0
  br i1 %.not567, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.not568 = icmp eq i32 %i.u, 0                  ; 5 uses
  br i1 %.not568, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #7
  %.not569 = icmp eq i32 %i.y, 0
  br i1 %.not569, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = load i32, ptr %3, align 4, !tbaa !63     ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %4, align 4, !tbaa !63    ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %5, align 4, !tbaa !63    ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %7, align 4, !tbaa !63
  %.not570 = icmp sgt i32 %i.af, %i.ab
  br i1 %.not570, label %bb.l, label %.thread.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %9, align 4, !tbaa !63
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.z, i32 1) ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %spec.select
  br i1 %i.ah, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %11, align 4, !tbaa !63
  %i.aj = icmp slt i32 %i.ai, %spec.select
  br i1 %i.aj, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.pr = load i32, ptr %16, align 4, !tbaa !63    ; 2 uses
  %.not571 = icmp eq i32 %.pr, 0
  br i1 %.not571, label %bb.o, label %.thread

.thread.sink.split:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.e ], [ -4, %bb.h ], [ -6, %bb.j ], [ -10, %bb.l ], [ -8, %bb.k ], [ -5, %bb.i ], [ -3, %bb.g ], [ -12, %bb.m ] ; 2 uses
  store i32 %.sink, ptr %16, align 4, !tbaa !63
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.n
  %i.ak = phi i32 [ %.pr, %bb.n ], [ %.sink, %.thread.sink.split ]
  %i.al = sub nsw i32 0, %i.ak
  store i32 %i.al, ptr %i.c, align 4, !tbaa !63
  %i.am = call i32 @xerbla_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i32 %i.z, 0
  %.not607732 = icmp eq i32 %i.ad, 0              ; 2 uses
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not607732, label %.loopexit, label %bb.r

bb.q:                                             ; preds = %bb.o
  br i1 %.not607732, label %.loopexit, label %.lr.ph735.preheader

.lr.ph735.preheader:                              ; preds = %bb.q
  %i.ao = zext nneg i32 %i.ad to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %i.ap, i1 false), !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %i.ap, i1 false), !tbaa !65
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %. = select i1 %.not565, i8 78, i8 84
  store i8 %., ptr %i.f, align 1, !tbaa !66
  %i.aq = add nuw nsw i32 %i.ab, 2
  %i.ar = tail call double @dlamch_(ptr noundef nonnull @.str.6) #7 ; 2 uses
  %i.as = tail call double @dlamch_(ptr noundef nonnull @.str.7) #7
  %i.at = uitofp nneg i32 %i.aq to double         ; 2 uses
  %i.au = fmul double %i.as, %i.at                ; 10 uses
  %i.av = fdiv double %i.au, %i.ar                ; 6 uses
  %i.aw = load i32, ptr %5, align 4, !tbaa !63    ; 2 uses
  %.not573728 = icmp slt i32 %i.aw, 1
  br i1 %.not573728, label %.loopexit, label %.lr.ph731

.lr.ph731:                                        ; preds = %bb.r
  %i.ax = fmul double %i.ar, %i.at                ; 4 uses
  %i.ay = sext i32 %i.m to i64
  %i.az = sext i32 %i.j to i64                    ; 3 uses
  %17 = add nuw i32 %i.aw, 1
  %wide.trip.count867 = zext i32 %17 to i64
  %.pre = load i32, ptr %3, align 4, !tbaa !63
  %.0538635736 = add i32 %i.g, -1
  %.1539643738 = add i32 %i.g, -1
  %.2540651739 = add i32 %i.g, -1
  %.3541659740 = add i32 %i.g, -1
  %.4542668742 = add i32 %i.g, -1
  %.5543678744 = add i32 %i.g, -1
  %.6688745 = add i32 %i.g, -1
  %.7698746 = add i32 %i.g, -1                    ; 3 uses
  %i.ba = add i32 %i.g, 2                         ; 2 uses
  %i.bb = shl nsw i64 %i.h, 3
  %i.bc = getelementptr i8, ptr %6, i64 %i.bb
  %scevgep = getelementptr i8, ptr %i.bc, i64 8   ; 2 uses
  %i.bd = add i32 %i.g, 1                         ; 2 uses
  %i.be = shl nsw i64 %i.h, 3
  %i.bf = add nsw i64 %i.be, 8                    ; 2 uses
  %scevgep1246 = getelementptr i8, ptr %6, i64 %i.bf
  %i.bg = mul nsw i64 %i.az, -8
  %i.bh = add i64 %i.b, -8
  %i.bi = or i64 %i.az, %i.k
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = add i64 %i.bj, %i.a
  %i.bl = sub i64 %i.bh, %i.bk
  %invariant.op1381.a = add i64 %i.bl, -1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1014 = insertelement <4 x double> poison, double %i.ax, i64 0
  %broadcast.splat1015 = shufflevector <4 x double> %broadcast.splatinsert1014, <4 x double> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert1016 = insertelement <4 x double> poison, double %i.au, i64 0
  %broadcast.splat1017 = shufflevector <4 x double> %broadcast.splatinsert1016, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1044 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat1045 = shufflevector <4 x double> %broadcast.splatinsert1044, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1046 = insertelement <4 x double> poison, double %i.ax, i64 0
  %broadcast.splat1047 = shufflevector <4 x double> %broadcast.splatinsert1046, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1048 = insertelement <4 x double> poison, double %i.au, i64 0
  %broadcast.splat1049 = shufflevector <4 x double> %broadcast.splatinsert1048, <4 x double> poison, <4 x i32> zeroinitializer
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph731, %._crit_edge726.thread
  %indvar1293 = phi i64 [ 0, %.lr.ph731 ], [ %indvar.next1294, %._crit_edge726.thread ] ; 2 uses
  %i.bm = phi i32 [ %.pre, %.lr.ph731 ], [ %i.aib, %._crit_edge726.thread ]
  %indvars.iv864 = phi i64 [ 1, %.lr.ph731 ], [ %indvars.iv.next865, %._crit_edge726.thread ] ; 6 uses
  %i.bn = mul nsw i64 %indvars.iv864, %i.ay       ; 12 uses
  %i.bo = getelementptr [8 x i8], ptr %i.o, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr [8 x i8], ptr %i.r, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  call void @dcopy_(ptr noundef nonnull %3, ptr noundef %i.bp, ptr noundef nonnull @c__1, ptr noundef %i.bs, ptr noundef nonnull @c__1) #7
  %i.bt = load i32, ptr %3, align 4, !tbaa !63
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [8 x i8], ptr %i.r, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  call void @dtbmv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.bw, ptr noundef nonnull @c__1) #7
  %i.bx = mul nsw i64 %indvars.iv864, %i.az       ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.l, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %3, align 4, !tbaa !63
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr [8 x i8], ptr %i.r, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  call void @daxpy_(ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef %i.bz, ptr noundef nonnull @c__1, ptr noundef %i.cd, ptr noundef nonnull @c__1) #7
  %i.ce = load i32, ptr %3, align 4, !tbaa !63    ; 33 uses
  %.not575627 = icmp slt i32 %i.ce, 1             ; 10 uses
  br i1 %.not575627, label %._crit_edge, label %iter.check1310

iter.check1310:                                   ; preds = %bb.s
  %i.cf = add nuw i32 %i.ce, 1
  %wide.trip.count = zext i32 %i.cf to i64        ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.bx ; 7 uses
  %i.cg = zext nneg i32 %i.ce to i64              ; 5 uses
  %min.iters.check1295 = icmp ult i32 %i.ce, 4
  br i1 %min.iters.check1295, label %.lr.ph.preheader, label %vector.memcheck1296

vector.memcheck1296:                              ; preds = %iter.check1310
  %i.ch = mul i64 %indvar1293, %i.bg
  %.reass1382.a = add i64 %i.ch, %invariant.op1381.a
  %diff.check = icmp ult i64 %.reass1382.a, 127
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check1297

vector.main.loop.iter.check1297:                  ; preds = %vector.memcheck1296
  %min.iters.check1298 = icmp ult i32 %i.ce, 16
  br i1 %min.iters.check1298, label %vec.epilog.ph1314, label %vector.ph1299

vector.ph1299:                                    ; preds = %vector.main.loop.iter.check1297
  %i.ci = and i64 %i.cg, 12
  %n.vec1300 = and i64 %i.cg, 2147483632          ; 4 uses
  %i.cj = or disjoint i64 %n.vec1300, 1
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.ph1299, %vector.body1301
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1307, %vector.body1301 ] ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1302 ; 4 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = getelementptr i8, ptr %i.ck, i64 40
  %i.cn = getelementptr i8, ptr %i.ck, i64 72
  %i.co = getelementptr i8, ptr %i.ck, i64 104
  %wide.load1303 = load <4 x double>, ptr %i.cl, align 8, !tbaa !65 ; 3 uses
  %wide.load1304 = load <4 x double>, ptr %i.cm, align 8, !tbaa !65 ; 3 uses
  %wide.load1305 = load <4 x double>, ptr %i.cn, align 8, !tbaa !65 ; 3 uses
  %wide.load1306 = load <4 x double>, ptr %i.co, align 8, !tbaa !65 ; 3 uses
  %i.cp = fcmp oge <4 x double> %wide.load1303, zeroinitializer
  %i.cq = fcmp oge <4 x double> %wide.load1304, zeroinitializer
  %i.cr = fcmp oge <4 x double> %wide.load1305, zeroinitializer
  %i.cs = fcmp oge <4 x double> %wide.load1306, zeroinitializer
  %i.ct = fneg <4 x double> %wide.load1303
  %i.cu = fneg <4 x double> %wide.load1304
  %i.cv = fneg <4 x double> %wide.load1305
  %i.cw = fneg <4 x double> %wide.load1306
  %i.cx = select <4 x i1> %i.cp, <4 x double> %wide.load1303, <4 x double> %i.ct
  %i.cy = select <4 x i1> %i.cq, <4 x double> %wide.load1304, <4 x double> %i.cu
  %i.cz = select <4 x i1> %i.cr, <4 x double> %wide.load1305, <4 x double> %i.cv
  %i.da = select <4 x i1> %i.cs, <4 x double> %wide.load1306, <4 x double> %i.cw
  %i.db = getelementptr [8 x i8], ptr %14, i64 %index1302 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  store <4 x double> %i.cx, ptr %i.db, align 8, !tbaa !65
  store <4 x double> %i.cy, ptr %i.dc, align 8, !tbaa !65
  store <4 x double> %i.cz, ptr %i.dd, align 8, !tbaa !65
  store <4 x double> %i.da, ptr %i.de, align 8, !tbaa !65
  %index.next1307 = add nuw i64 %index1302, 16    ; 2 uses
  %i.df = icmp eq i64 %index.next1307, %n.vec1300
  br i1 %i.df, label %middle.block1308, label %vector.body1301, !llvm.loop !8

middle.block1308:                                 ; preds = %vector.body1301
  %cmp.n1309 = icmp eq i64 %n.vec1300, %i.cg
  br i1 %cmp.n1309, label %._crit_edge, label %vec.epilog.iter.check1311

vec.epilog.iter.check1311:                        ; preds = %middle.block1308
  %min.epilog.iters.check1313 = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check1313, label %.lr.ph.preheader, label %vec.epilog.ph1314, !prof !70

vec.epilog.ph1314:                                ; preds = %vector.main.loop.iter.check1297, %vec.epilog.iter.check1311
  %vec.epilog.resume.val1315 = phi i64 [ %n.vec1300, %vec.epilog.iter.check1311 ], [ 0, %vector.main.loop.iter.check1297 ]
  %n.vec1316 = and i64 %i.cg, 2147483644          ; 3 uses
  %i.dg = or disjoint i64 %n.vec1316, 1
  br label %vec.epilog.vector.body1317

vec.epilog.vector.body1317:                       ; preds = %vec.epilog.vector.body1317, %vec.epilog.ph1314
  %index1318 = phi i64 [ %vec.epilog.resume.val1315, %vec.epilog.ph1314 ], [ %index.next1320, %vec.epilog.vector.body1317 ] ; 3 uses
  %i.dh = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1318
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %wide.load1319 = load <4 x double>, ptr %i.di, align 8, !tbaa !65 ; 3 uses
  %i.dj = fcmp oge <4 x double> %wide.load1319, zeroinitializer
  %i.dk = fneg <4 x double> %wide.load1319
  %i.dl = select <4 x i1> %i.dj, <4 x double> %wide.load1319, <4 x double> %i.dk
  %i.dm = getelementptr [8 x i8], ptr %14, i64 %index1318
  store <4 x double> %i.dl, ptr %i.dm, align 8, !tbaa !65
  %index.next1320 = add nuw i64 %index1318, 4     ; 2 uses
  %i.dn = icmp eq i64 %index.next1320, %n.vec1316
  br i1 %i.dn, label %vec.epilog.middle.block1321, label %vec.epilog.vector.body1317, !llvm.loop !9

vec.epilog.middle.block1321:                      ; preds = %vec.epilog.vector.body1317
  %cmp.n1322 = icmp eq i64 %n.vec1316, %i.cg
  br i1 %cmp.n1322, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check1310, %vector.memcheck1296, %vec.epilog.iter.check1311, %vec.epilog.middle.block1321
  %indvars.iv.ph = phi i64 [ 1, %iter.check1310 ], [ 1, %vector.memcheck1296 ], [ %i.cj, %vec.epilog.iter.check1311 ], [ %i.dg, %vec.epilog.middle.block1321 ] ; 4 uses
  %i.do = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.dp = zext nneg i32 %i.ce to i64
  %i.dq = sub nsw i64 %i.dp, %indvars.iv.ph
  %xtraiter = and i64 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.dr = load double, ptr %gep.prol, align 8, !tbaa !65 ; 3 uses
  %i.ds = fcmp oge double %i.dr, 0.000000e+00
  %i.dt = fneg double %i.dr
  %i.du = select i1 %i.ds, double %i.dr, double %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.prol
  store double %i.du, ptr %i.dv, align 8, !tbaa !65
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !10

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dw = icmp ult i64 %i.dq, 3
  br i1 %i.dw, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dx = load double, ptr %gep, align 8, !tbaa !65 ; 3 uses
  %i.dy = fcmp oge double %i.dx, 0.000000e+00
  %i.dz = fneg double %i.dx
  %i.ea = select i1 %i.dy, double %i.dx, double %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store double %i.ea, ptr %i.eb, align 8, !tbaa !65
  %i.ec = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ec, i64 8
  %i.ed = load double, ptr %gep.1, align 8, !tbaa !65 ; 3 uses
  %i.ee = fcmp oge double %i.ed, 0.000000e+00
  %i.ef = fneg double %i.ed
  %i.eg = select i1 %i.ee, double %i.ed, double %i.ef
  %i.eh = getelementptr [8 x i8], ptr %14, i64 %indvars.iv
  store double %i.eg, ptr %i.eh, align 8, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ei = load double, ptr %gep.2, align 8, !tbaa !65 ; 3 uses
  %i.ej = fcmp oge double %i.ei, 0.000000e+00
  %i.ek = fneg double %i.ei
  %i.el = select i1 %i.ej, double %i.ei, double %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.1
  store double %i.el, ptr %i.em, align 8, !tbaa !65
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.en = load double, ptr %gep.3, align 8, !tbaa !65 ; 3 uses
  %i.eo = fcmp oge double %i.en, 0.000000e+00
  %i.ep = fneg double %i.en
  %i.eq = select i1 %i.eo, double %i.en, double %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.2
  store double %i.eq, ptr %i.er, align 8, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1308, %vec.epilog.middle.block1321, %bb.s
  br i1 %.not565, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not568, label %.preheader622, label %.preheader624

.preheader624:                                    ; preds = %bb.u
  br i1 %.not575627, label %._crit_edge705.thread, label %.lr.ph636

.lr.ph636:                                        ; preds = %.preheader624
  %i.es = load i32, ptr %4, align 4, !tbaa !63    ; 4 uses
  %i.et = sub i32 1, %i.es
  %i.eu = add nuw i32 %i.ce, 1
  %wide.trip.count768 = zext i32 %i.eu to i64
  %invariant.gep906 = getelementptr [8 x i8], ptr %i.o, i64 %i.bn
  %.not606629 = icmp slt i32 %i.es, 0
end_hunk_0
begin_hunk_1_@dtbrfs_:bb.a

iter.check:                                       ; preds = %bb.au
  %i.ajj = zext nneg i32 %i.aib to i64
  %i.ajk = add nuw i32 %i.aib, 1
  %wide.trip.count857 = zext i32 %i.ajk to i64
  %invariant.gep942 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ajj ; 3 uses
  %i.ajl = zext nneg i32 %i.aib to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.aib, 4
  br i1 %min.iters.check, label %.lr.ph719.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check962 = icmp ult i32 %i.aib, 16
  br i1 %min.iters.check962, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ajm = and i64 %i.ajl, 12
  %n.vec = and i64 %i.ajl, 2147483632             ; 4 uses
  %i.ajn = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ajo = getelementptr [8 x i8], ptr %14, i64 %index ; 4 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 32
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajo, i64 64
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajo, i64 96
  %wide.load = load <4 x double>, ptr %i.ajo, align 8, !tbaa !65
  %wide.load963 = load <4 x double>, ptr %i.ajp, align 8, !tbaa !65
  %wide.load964 = load <4 x double>, ptr %i.ajq, align 8, !tbaa !65
  %wide.load965 = load <4 x double>, ptr %i.ajr, align 8, !tbaa !65
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep942, i64 %index ; 4 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajs, i64 40 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajs, i64 72 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajs, i64 104 ; 2 uses
  %wide.load966 = load <4 x double>, ptr %i.ajt, align 8, !tbaa !65
  %wide.load967 = load <4 x double>, ptr %i.aju, align 8, !tbaa !65
  %wide.load968 = load <4 x double>, ptr %i.ajv, align 8, !tbaa !65
  %wide.load969 = load <4 x double>, ptr %i.ajw, align 8, !tbaa !65
  %i.ajx = fmul <4 x double> %wide.load, %wide.load966
  %i.ajy = fmul <4 x double> %wide.load963, %wide.load967
  %i.ajz = fmul <4 x double> %wide.load964, %wide.load968
  %i.aka = fmul <4 x double> %wide.load965, %wide.load969
  store <4 x double> %i.ajx, ptr %i.ajt, align 8, !tbaa !65
  store <4 x double> %i.ajy, ptr %i.aju, align 8, !tbaa !65
  store <4 x double> %i.ajz, ptr %i.ajv, align 8, !tbaa !65
  store <4 x double> %i.aka, ptr %i.ajw, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.akb = icmp eq i64 %index.next, %n.vec
  br i1 %i.akb, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ajl
  br i1 %cmp.n, label %._crit_edge720, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ajm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph719.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec970 = and i64 %i.ajl, 2147483644          ; 3 uses
  %i.akc = or disjoint i64 %n.vec970, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index971 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next974, %vec.epilog.vector.body ] ; 3 uses
  %i.akd = getelementptr [8 x i8], ptr %14, i64 %index971
  %wide.load972 = load <4 x double>, ptr %i.akd, align 8, !tbaa !65
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep942, i64 %index971
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 8 ; 2 uses
  %wide.load973 = load <4 x double>, ptr %i.akf, align 8, !tbaa !65
  %i.akg = fmul <4 x double> %wide.load972, %wide.load973
  store <4 x double> %i.akg, ptr %i.akf, align 8, !tbaa !65
  %index.next974 = add nuw i64 %index971, 4       ; 2 uses
  %i.akh = icmp eq i64 %index.next974, %n.vec970
  br i1 %i.akh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n975 = icmp eq i64 %n.vec970, %i.ajl
  br i1 %cmp.n975, label %._crit_edge720, label %.lr.ph719.preheader

.lr.ph719.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv854.ph = phi i64 [ 1, %iter.check ], [ %i.ajn, %vec.epilog.iter.check ], [ %i.akc, %vec.epilog.middle.block ]
  br label %.lr.ph719

.lr.ph719:                                        ; preds = %.lr.ph719.preheader, %.lr.ph719
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %.lr.ph719 ], [ %indvars.iv854.ph, %.lr.ph719.preheader ] ; 3 uses
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv854
  %i.akj = load double, ptr %i.aki, align 8, !tbaa !65
  %gep943 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep942, i64 %indvars.iv854 ; 2 uses
  %i.akk = load double, ptr %gep943, align 8, !tbaa !65
  %i.akl = fmul double %i.akj, %i.akk
  store double %i.akl, ptr %gep943, align 8, !tbaa !65
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 1 ; 2 uses
  %exitcond858.not = icmp eq i64 %indvars.iv.next855, %wide.trip.count857
  br i1 %exitcond858.not, label %._crit_edge720, label %.lr.ph719, !llvm.loop !59

._crit_edge720:                                   ; preds = %.lr.ph719, %middle.block, %vec.epilog.middle.block, %bb.au
  %i.akm = sext i32 %i.aib to i64
  %i.akn = getelementptr [8 x i8], ptr %i.r, i64 %i.akm
  %i.ako = getelementptr i8, ptr %i.akn, i64 8
  call void @dtbsv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.ako, ptr noundef nonnull @c__1) #7
  %.pre870.pre = load i32, ptr %3, align 4, !tbaa !63
  br label %.loopexit610.backedge

bb.av:                                            ; preds = %.loopexit610
  %.not602721 = icmp slt i32 %i.aib, 1
  br i1 %.not602721, label %._crit_edge726.thread, label %.lr.ph725.preheader

.lr.ph725.preheader:                              ; preds = %bb.av
  %invariant.gep944 = getelementptr [8 x i8], ptr %i.o, i64 %i.bn ; 5 uses
  %i.akp = zext nneg i32 %i.aib to i64            ; 2 uses
  %xtraiter1358 = and i64 %i.akp, 3               ; 3 uses
  %i.akq = icmp ult i32 %i.aib, 4
  br i1 %i.akq, label %.lr.ph725.epil.preheader, label %.lr.ph725.preheader.new

.lr.ph725.preheader.new:                          ; preds = %.lr.ph725.preheader
  %unroll_iter1362 = and i64 %i.akp, 2147483644
  br label %.lr.ph725

.lr.ph725:                                        ; preds = %.lr.ph725, %.lr.ph725.preheader.new
  %indvars.iv859 = phi i64 [ 1, %.lr.ph725.preheader.new ], [ %indvars.iv.next860.3, %.lr.ph725 ] ; 5 uses
  %.0723 = phi double [ 0.000000e+00, %.lr.ph725.preheader.new ], [ %i.alr, %.lr.ph725 ] ; 2 uses
  %niter1363 = phi i64 [ 0, %.lr.ph725.preheader.new ], [ %niter1363.next.3, %.lr.ph725 ]
  %gep945 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %indvars.iv859
  %i.akr = load double, ptr %gep945, align 8, !tbaa !65 ; 3 uses
  %i.aks = fcmp oge double %i.akr, 0.000000e+00
  %i.akt = fneg double %i.akr
  %i.aku = select i1 %i.aks, double %i.akr, double %i.akt ; 2 uses
  %i.akv = fcmp oge double %.0723, %i.aku
  %i.akw = select i1 %i.akv, double %.0723, double %i.aku ; 2 uses
  %i.akx = getelementptr [8 x i8], ptr %invariant.gep944, i64 %indvars.iv859
  %gep945.1 = getelementptr i8, ptr %i.akx, i64 8
  %i.aky = load double, ptr %gep945.1, align 8, !tbaa !65 ; 3 uses
  %i.akz = fcmp oge double %i.aky, 0.000000e+00
  %i.ala = fneg double %i.aky
  %i.alb = select i1 %i.akz, double %i.aky, double %i.ala ; 2 uses
  %i.alc = fcmp oge double %i.akw, %i.alb
  %i.ald = select i1 %i.alc, double %i.akw, double %i.alb ; 2 uses
  %i.ale = getelementptr [8 x i8], ptr %invariant.gep944, i64 %indvars.iv859
  %gep945.2 = getelementptr i8, ptr %i.ale, i64 16
  %i.alf = load double, ptr %gep945.2, align 8, !tbaa !65 ; 3 uses
  %i.alg = fcmp oge double %i.alf, 0.000000e+00
  %i.alh = fneg double %i.alf
  %i.ali = select i1 %i.alg, double %i.alf, double %i.alh ; 2 uses
  %i.alj = fcmp oge double %i.ald, %i.ali
  %i.alk = select i1 %i.alj, double %i.ald, double %i.ali ; 2 uses
  %i.all = getelementptr [8 x i8], ptr %invariant.gep944, i64 %indvars.iv859
  %gep945.3 = getelementptr i8, ptr %i.all, i64 24
  %i.alm = load double, ptr %gep945.3, align 8, !tbaa !65 ; 3 uses
  %i.aln = fcmp oge double %i.alm, 0.000000e+00
  %i.alo = fneg double %i.alm
  %i.alp = select i1 %i.aln, double %i.alm, double %i.alo ; 2 uses
  %i.alq = fcmp oge double %i.alk, %i.alp
  %i.alr = select i1 %i.alq, double %i.alk, double %i.alp ; 3 uses
  %indvars.iv.next860.3 = add nuw nsw i64 %indvars.iv859, 4 ; 2 uses
  %niter1363.next.3 = add i64 %niter1363, 4       ; 2 uses
  %niter1363.ncmp.3 = icmp eq i64 %niter1363.next.3, %unroll_iter1362
  br i1 %niter1363.ncmp.3, label %._crit_edge726.unr-lcssa, label %.lr.ph725, !llvm.loop !60

._crit_edge726.unr-lcssa:                         ; preds = %.lr.ph725
  %lcmp.mod1359.not = icmp eq i64 %xtraiter1358, 0
  br i1 %lcmp.mod1359.not, label %._crit_edge726, label %.lr.ph725.epil.preheader

.lr.ph725.epil.preheader:                         ; preds = %._crit_edge726.unr-lcssa, %.lr.ph725.preheader
  %indvars.iv859.epil.init = phi i64 [ 1, %.lr.ph725.preheader ], [ %indvars.iv.next860.3, %._crit_edge726.unr-lcssa ]
  %.0723.epil.init = phi double [ 0.000000e+00, %.lr.ph725.preheader ], [ %i.alr, %._crit_edge726.unr-lcssa ]
  %lcmp.mod1361 = icmp ne i64 %xtraiter1358, 0
  call void @llvm.assume(i1 %lcmp.mod1361)
  br label %.lr.ph725.epil

.lr.ph725.epil:                                   ; preds = %.lr.ph725.epil, %.lr.ph725.epil.preheader
  %indvars.iv859.epil = phi i64 [ %indvars.iv859.epil.init, %.lr.ph725.epil.preheader ], [ %indvars.iv.next860.epil, %.lr.ph725.epil ] ; 2 uses
  %.0723.epil = phi double [ %.0723.epil.init, %.lr.ph725.epil.preheader ], [ %i.alx, %.lr.ph725.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph725.epil.preheader ], [ %epil.iter.next, %.lr.ph725.epil ]
  %gep945.epil = getelementptr [8 x i8], ptr %invariant.gep944, i64 %indvars.iv859.epil
  %i.als = load double, ptr %gep945.epil, align 8, !tbaa !65 ; 3 uses
  %i.alt = fcmp oge double %i.als, 0.000000e+00
  %i.alu = fneg double %i.als
  %i.alv = select i1 %i.alt, double %i.als, double %i.alu ; 2 uses
  %i.alw = fcmp oge double %.0723.epil, %i.alv
  %i.alx = select i1 %i.alw, double %.0723.epil, double %i.alv ; 2 uses
  %indvars.iv.next860.epil = add nuw nsw i64 %indvars.iv859.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1358
  br i1 %epil.iter.cmp.not, label %._crit_edge726, label %.lr.ph725.epil, !llvm.loop !61

._crit_edge726:                                   ; preds = %.lr.ph725.epil, %._crit_edge726.unr-lcssa
  %.lcssa1336 = phi double [ %i.alr, %._crit_edge726.unr-lcssa ], [ %i.alx, %.lr.ph725.epil ] ; 2 uses
  %i.aly = fcmp une double %.lcssa1336, 0.000000e+00
  br i1 %i.aly, label %bb.aw, label %._crit_edge726.thread

bb.aw:                                            ; preds = %._crit_edge726
  %i.alz = load double, ptr %i.ahr, align 8, !tbaa !65
  %i.ama = fdiv double %i.alz, %.lcssa1336
  store double %i.ama, ptr %i.ahr, align 8, !tbaa !65
  br label %._crit_edge726.thread

._crit_edge726.thread:                            ; preds = %bb.av, %._crit_edge726, %bb.aw
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %exitcond868.not = icmp eq i64 %indvars.iv.next865, %wide.trip.count867
  %indvar.next1294 = add i64 %indvar1293, 1
  br i1 %exitcond868.not, label %.loopexit, label %bb.s, !llvm.loop !62

.loopexit:                                        ; preds = %._crit_edge726.thread, %bb.p, %.lr.ph735.preheader, %bb.r, %bb.q, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtbmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dlacn2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtbsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !67, !68, !69}
!9 = distinct !{!9, !67, !68, !69}
!10 = distinct !{!10, !71}
!11 = distinct !{!11, !67, !68}
!12 = distinct !{!12, i1 false, !"LVerDomain"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !67, !68, !69}
!16 = distinct !{!16, !67, !68, !69}
!17 = distinct !{!17, !67, !68}
!18 = distinct !{!18, !67}
!19 = distinct !{!19, i1 false, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !67, !68, !69}
!23 = distinct !{!23, !67, !68, !69}
!24 = distinct !{!24, !67, !68}
!25 = distinct !{!25, !67}
!26 = distinct !{!26, i1 false, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !67, !68, !69}
!30 = distinct !{!30, !67, !68, !69}
!31 = distinct !{!31, !67, !68}
!32 = distinct !{!32, !67}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !67, !68, !69}
!37 = distinct !{!37, !67, !68, !69}
!38 = distinct !{!38, !67, !68}
!39 = distinct !{!39, !67}
!40 = distinct !{!40, !67}
!41 = distinct !{!41, !67}
!42 = distinct !{!42, !71}
!43 = distinct !{!43, !67}
!44 = distinct !{!44, !67}
!45 = distinct !{!45, !71}
!46 = distinct !{!46, !67}
!47 = distinct !{!47, !67}
!48 = distinct !{!48, !67}
!49 = distinct !{!49, !67}
!50 = distinct !{!50, !67}
!51 = distinct !{!51, !67, !68, !69}
!52 = distinct !{!52, !67, !68, !69}
!53 = distinct !{!53, !67, !69, !68}
!54 = distinct !{!54, !67, !68, !69}
!55 = distinct !{!55, !67, !68, !69}
!56 = distinct !{!56, !67, !69, !68}
!57 = distinct !{!57, !67, !68, !69}
!58 = distinct !{!58, !67, !68, !69}
!59 = distinct !{!59, !67, !69, !68}
!60 = distinct !{!60, !67}
!61 = distinct !{!61, !71}
!62 = distinct !{!62, !67}
!63 = !{!5, !5, i64 0}
!64 = !{!"double", !4, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!4, !4, i64 0}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"branch_weights", i32 4, i32 12}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!13}
!73 = !{!14}
!74 = !{!20}
!75 = !{!21}
!76 = !{!27}
!77 = !{!28}
!78 = !{!34}
!79 = !{!35}
end_hunk_1
