Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtprfs?download=true
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DTPRFS\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@c__1 = internal global i32 1, align 4
@c_b19 = internal global double -1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dtprfs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr noundef %10, ptr nofree noundef writeonly captures(none) %11, ptr noundef %12, ptr noundef %13, ptr nofree noundef captures(none) initializes((0, 4)) %14) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64
  %i.b = ptrtoaddr ptr %12 to i64
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [3 x i32], align 4                ; 3 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.g = getelementptr i8, ptr %5, i64 -8         ; 30 uses
  %i.h = load i32, ptr %7, align 4, !tbaa !69     ; 2 uses
  %narrow = xor i32 %i.h, -1
  %i.i = sext i32 %narrow to i64                  ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %6, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %9, align 4, !tbaa !69     ; 2 uses
  %narrow509 = xor i32 %i.k, -1
  %i.l = sext i32 %narrow509 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %8, i64 %i.l ; 12 uses
  %i.n = getelementptr inbounds i8, ptr %10, i64 -8
  %i.o = getelementptr inbounds i8, ptr %11, i64 -8 ; 2 uses
  %i.p = getelementptr i8, ptr %12, i64 -8        ; 49 uses
  store i32 0, ptr %14, align 4, !tbaa !69
  %i.q = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #7
  %i.r = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %i.s = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  %.not = icmp eq i32 %i.q, 0                     ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  %.not510 = icmp eq i32 %i.t, 0
  br i1 %.not510, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not511 = icmp eq i32 %i.r, 0                  ; 3 uses
  br i1 %.not511, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %.not512 = icmp eq i32 %i.u, 0
  br i1 %.not512, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  %.not513 = icmp eq i32 %i.v, 0
  br i1 %.not513, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.not514 = icmp eq i32 %i.s, 0                  ; 5 uses
  br i1 %.not514, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #7
  %.not515 = icmp eq i32 %i.w, 0
  br i1 %.not515, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = load i32, ptr %3, align 4, !tbaa !69     ; 4 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %4, align 4, !tbaa !69     ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %7, align 4, !tbaa !69
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.x, i32 1) ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %spec.select
  br i1 %i.ac, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i32, ptr %9, align 4, !tbaa !69
  %i.ae = icmp slt i32 %i.ad, %spec.select
  br i1 %i.ae, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.pr = load i32, ptr %14, align 4, !tbaa !69    ; 2 uses
  %.not516 = icmp eq i32 %.pr, 0
  br i1 %.not516, label %bb.m, label %.thread

.thread.sink.split:                               ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.e ], [ -4, %bb.h ], [ -8, %bb.j ], [ -5, %bb.i ], [ -3, %bb.g ], [ -10, %bb.k ] ; 2 uses
  store i32 %.sink, ptr %14, align 4, !tbaa !69
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.l
  %i.af = phi i32 [ %.pr, %bb.l ], [ %.sink, %.thread.sink.split ]
  %i.ag = sub nsw i32 0, %i.af
  store i32 %i.ag, ptr %i.c, align 4, !tbaa !69
  %i.ah = call i32 @xerbla_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i32 %i.x, 0
  %.not547666 = icmp eq i32 %i.z, 0               ; 2 uses
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not547666, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %.not547666, label %.loopexit, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %bb.o
  %i.aj = zext nneg i32 %i.z to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %i.ak, i1 false), !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 %i.ak, i1 false), !tbaa !71
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %. = select i1 %.not511, i8 78, i8 84
  store i8 %., ptr %i.f, align 1, !tbaa !72
  %i.al = add nuw nsw i32 %i.x, 1
  %i.am = tail call double @dlamch_(ptr noundef nonnull @.str.6) #7 ; 2 uses
  %i.an = tail call double @dlamch_(ptr noundef nonnull @.str.7) #7
  %i.ao = uitofp nneg i32 %i.al to double         ; 2 uses
  %i.ap = fmul double %i.an, %i.ao                ; 10 uses
  %i.aq = fdiv double %i.ap, %i.am                ; 6 uses
  %i.ar = load i32, ptr %4, align 4, !tbaa !69    ; 2 uses
  %.not518662 = icmp slt i32 %i.ar, 1
  br i1 %.not518662, label %.loopexit, label %.lr.ph665

.lr.ph665:                                        ; preds = %bb.p
  %i.as = fmul double %i.am, %i.ao                ; 4 uses
  %i.at = sext i32 %i.k to i64
  %i.au = sext i32 %i.h to i64                    ; 3 uses
  %15 = add nuw i32 %i.ar, 1
  %i.av = zext i32 %15 to i64
  %.pre = load i32, ptr %3, align 4, !tbaa !69
  %scevgep = getelementptr i8, ptr %12, i64 -8
  %i.aw = mul nsw i64 %i.au, -8
  %i.ax = add i64 %i.b, -8
  %i.ay = or i64 %i.au, %i.i
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = add i64 %i.az, %i.a
  %i.bb = sub i64 %i.ax, %i.ba
  %invariant.op1316.a = add i64 %i.bb, -1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aq, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert951 = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat952 = shufflevector <4 x double> %broadcast.splatinsert951, <4 x double> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert953 = insertelement <4 x double> poison, double %i.ap, i64 0
  %broadcast.splat954 = shufflevector <4 x double> %broadcast.splatinsert953, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert981 = insertelement <4 x double> poison, double %i.aq, i64 0
  %broadcast.splat982 = shufflevector <4 x double> %broadcast.splatinsert981, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert983 = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat984 = shufflevector <4 x double> %broadcast.splatinsert983, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert985 = insertelement <4 x double> poison, double %i.ap, i64 0
  %broadcast.splat986 = shufflevector <4 x double> %broadcast.splatinsert985, <4 x double> poison, <4 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph665, %._crit_edge660.thread
  %indvar1201 = phi i64 [ 0, %.lr.ph665 ], [ %indvar.next1202, %._crit_edge660.thread ] ; 2 uses
  %i.bc = phi i32 [ %.pre, %.lr.ph665 ], [ %i.amy, %._crit_edge660.thread ]
  %indvars.iv807 = phi i64 [ 1, %.lr.ph665 ], [ %indvars.iv.next808, %._crit_edge660.thread ] ; 6 uses
  %i.bd = mul nsw i64 %indvars.iv807, %i.at       ; 12 uses
  %i.be = getelementptr [8 x i8], ptr %i.m, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = sext i32 %i.bc to i64
  %i.bh = getelementptr [8 x i8], ptr %i.p, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  call void @dcopy_(ptr noundef nonnull %3, ptr noundef %i.bf, ptr noundef nonnull @c__1, ptr noundef %i.bi, ptr noundef nonnull @c__1) #7
  %i.bj = load i32, ptr %3, align 4, !tbaa !69
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr %i.p, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  call void @dtpmv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %i.bm, ptr noundef nonnull @c__1) #7
  %i.bn = mul nsw i64 %indvars.iv807, %i.au       ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.j, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %3, align 4, !tbaa !69
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %i.p, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  call void @daxpy_(ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef %i.bp, ptr noundef nonnull @c__1, ptr noundef %i.bt, ptr noundef nonnull @c__1) #7
  %i.bu = load i32, ptr %3, align 4, !tbaa !69    ; 35 uses
  %.not519569 = icmp slt i32 %i.bu, 1             ; 10 uses
  br i1 %.not519569, label %._crit_edge, label %iter.check1218

iter.check1218:                                   ; preds = %bb.q
  %i.bv = add nuw i32 %i.bu, 1
  %wide.trip.count = zext i32 %i.bv to i64        ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.bn ; 7 uses
  %i.bw = zext nneg i32 %i.bu to i64              ; 5 uses
  %min.iters.check1203 = icmp ult i32 %i.bu, 4
  br i1 %min.iters.check1203, label %.lr.ph.preheader, label %vector.memcheck1204

vector.memcheck1204:                              ; preds = %iter.check1218
  %i.bx = mul i64 %indvar1201, %i.aw
  %.reass1317.a = add i64 %i.bx, %invariant.op1316.a
  %diff.check = icmp ult i64 %.reass1317.a, 127
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check1205

vector.main.loop.iter.check1205:                  ; preds = %vector.memcheck1204
  %min.iters.check1206 = icmp ult i32 %i.bu, 16
  br i1 %min.iters.check1206, label %vec.epilog.ph1222, label %vector.ph1207

vector.ph1207:                                    ; preds = %vector.main.loop.iter.check1205
  %i.by = and i64 %i.bw, 12
  %n.vec1208 = and i64 %i.bw, 2147483632          ; 4 uses
  %i.bz = or disjoint i64 %n.vec1208, 1
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.ph1207, %vector.body1209
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1215, %vector.body1209 ] ; 3 uses
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1210 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = getelementptr i8, ptr %i.ca, i64 40
  %i.cd = getelementptr i8, ptr %i.ca, i64 72
  %i.ce = getelementptr i8, ptr %i.ca, i64 104
  %wide.load1211 = load <4 x double>, ptr %i.cb, align 8, !tbaa !71 ; 3 uses
  %wide.load1212 = load <4 x double>, ptr %i.cc, align 8, !tbaa !71 ; 3 uses
  %wide.load1213 = load <4 x double>, ptr %i.cd, align 8, !tbaa !71 ; 3 uses
  %wide.load1214 = load <4 x double>, ptr %i.ce, align 8, !tbaa !71 ; 3 uses
  %i.cf = fcmp oge <4 x double> %wide.load1211, zeroinitializer
  %i.cg = fcmp oge <4 x double> %wide.load1212, zeroinitializer
  %i.ch = fcmp oge <4 x double> %wide.load1213, zeroinitializer
  %i.ci = fcmp oge <4 x double> %wide.load1214, zeroinitializer
  %i.cj = fneg <4 x double> %wide.load1211
  %i.ck = fneg <4 x double> %wide.load1212
  %i.cl = fneg <4 x double> %wide.load1213
  %i.cm = fneg <4 x double> %wide.load1214
  %i.cn = select <4 x i1> %i.cf, <4 x double> %wide.load1211, <4 x double> %i.cj
  %i.co = select <4 x i1> %i.cg, <4 x double> %wide.load1212, <4 x double> %i.ck
  %i.cp = select <4 x i1> %i.ch, <4 x double> %wide.load1213, <4 x double> %i.cl
  %i.cq = select <4 x i1> %i.ci, <4 x double> %wide.load1214, <4 x double> %i.cm
  %i.cr = getelementptr [8 x i8], ptr %12, i64 %index1210 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  store <4 x double> %i.cn, ptr %i.cr, align 8, !tbaa !71
  store <4 x double> %i.co, ptr %i.cs, align 8, !tbaa !71
  store <4 x double> %i.cp, ptr %i.ct, align 8, !tbaa !71
  store <4 x double> %i.cq, ptr %i.cu, align 8, !tbaa !71
  %index.next1215 = add nuw i64 %index1210, 16    ; 2 uses
  %i.cv = icmp eq i64 %index.next1215, %n.vec1208
  br i1 %i.cv, label %middle.block1216, label %vector.body1209, !llvm.loop !8

middle.block1216:                                 ; preds = %vector.body1209
  %cmp.n1217 = icmp eq i64 %n.vec1208, %i.bw
  br i1 %cmp.n1217, label %._crit_edge, label %vec.epilog.iter.check1219

vec.epilog.iter.check1219:                        ; preds = %middle.block1216
  %min.epilog.iters.check1221 = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check1221, label %.lr.ph.preheader, label %vec.epilog.ph1222, !prof !76

vec.epilog.ph1222:                                ; preds = %vector.main.loop.iter.check1205, %vec.epilog.iter.check1219
  %vec.epilog.resume.val1223 = phi i64 [ %n.vec1208, %vec.epilog.iter.check1219 ], [ 0, %vector.main.loop.iter.check1205 ]
  %n.vec1224 = and i64 %i.bw, 2147483644          ; 3 uses
  %i.cw = or disjoint i64 %n.vec1224, 1
  br label %vec.epilog.vector.body1225

vec.epilog.vector.body1225:                       ; preds = %vec.epilog.vector.body1225, %vec.epilog.ph1222
  %index1226 = phi i64 [ %vec.epilog.resume.val1223, %vec.epilog.ph1222 ], [ %index.next1228, %vec.epilog.vector.body1225 ] ; 3 uses
  %i.cx = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1226
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %wide.load1227 = load <4 x double>, ptr %i.cy, align 8, !tbaa !71 ; 3 uses
  %i.cz = fcmp oge <4 x double> %wide.load1227, zeroinitializer
  %i.da = fneg <4 x double> %wide.load1227
  %i.db = select <4 x i1> %i.cz, <4 x double> %wide.load1227, <4 x double> %i.da
  %i.dc = getelementptr [8 x i8], ptr %12, i64 %index1226
  store <4 x double> %i.db, ptr %i.dc, align 8, !tbaa !71
  %index.next1228 = add nuw i64 %index1226, 4     ; 2 uses
  %i.dd = icmp eq i64 %index.next1228, %n.vec1224
  br i1 %i.dd, label %vec.epilog.middle.block1229, label %vec.epilog.vector.body1225, !llvm.loop !9

vec.epilog.middle.block1229:                      ; preds = %vec.epilog.vector.body1225
  %cmp.n1230 = icmp eq i64 %n.vec1224, %i.bw
  br i1 %cmp.n1230, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check1218, %vector.memcheck1204, %vec.epilog.iter.check1219, %vec.epilog.middle.block1229
  %indvars.iv.ph = phi i64 [ 1, %iter.check1218 ], [ 1, %vector.memcheck1204 ], [ %i.bz, %vec.epilog.iter.check1219 ], [ %i.cw, %vec.epilog.middle.block1229 ] ; 4 uses
  %i.de = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.df = zext nneg i32 %i.bu to i64
  %i.dg = sub nsw i64 %i.df, %indvars.iv.ph
  %xtraiter = and i64 %i.de, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.dh = load double, ptr %gep.prol, align 8, !tbaa !71 ; 3 uses
  %i.di = fcmp oge double %i.dh, 0.000000e+00
  %i.dj = fneg double %i.dh
  %i.dk = select i1 %i.di, double %i.dh, double %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.prol
  store double %i.dk, ptr %i.dl, align 8, !tbaa !71
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !10

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dm = icmp ult i64 %i.dg, 3
  br i1 %i.dm, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dn = load double, ptr %gep, align 8, !tbaa !71 ; 3 uses
  %i.do = fcmp oge double %i.dn, 0.000000e+00
  %i.dp = fneg double %i.dn
  %i.dq = select i1 %i.do, double %i.dn, double %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store double %i.dq, ptr %i.dr, align 8, !tbaa !71
  %i.ds = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ds, i64 8
  %i.dt = load double, ptr %gep.1, align 8, !tbaa !71 ; 3 uses
  %i.du = fcmp oge double %i.dt, 0.000000e+00
  %i.dv = fneg double %i.dt
  %i.dw = select i1 %i.du, double %i.dt, double %i.dv
  %i.dx = getelementptr [8 x i8], ptr %12, i64 %indvars.iv
  store double %i.dw, ptr %i.dx, align 8, !tbaa !71
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dy = load double, ptr %gep.2, align 8, !tbaa !71 ; 3 uses
  %i.dz = fcmp oge double %i.dy, 0.000000e+00
  %i.ea = fneg double %i.dy
  %i.eb = select i1 %i.dz, double %i.dy, double %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  store double %i.eb, ptr %i.ec, align 8, !tbaa !71
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ed = load double, ptr %gep.3, align 8, !tbaa !71 ; 3 uses
  %i.ee = fcmp oge double %i.ed, 0.000000e+00
  %i.ef = fneg double %i.ed
  %i.eg = select i1 %i.ee, double %i.ed, double %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  store double %i.eg, ptr %i.eh, align 8, !tbaa !71
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1216, %vec.epilog.middle.block1229, %bb.q
  br i1 %.not511, label %bb.v, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not514, label %.preheader564, label %.preheader566

.preheader566:                                    ; preds = %bb.s
  br i1 %.not519569, label %._crit_edge639.thread, label %.lr.ph575.preheader

.lr.ph575.preheader:                              ; preds = %.preheader566
  %i.ei = add nuw i32 %i.bu, 1
  %wide.trip.count697 = zext i32 %i.ei to i64
  %invariant.gep843.a = getelementptr [8 x i8], ptr %i.m, i64 %i.bd
  br label %iter.check1181

.preheader564:                                    ; preds = %bb.s
end_hunk_0
begin_hunk_1_@dtprfs_:bb.a

iter.check:                                       ; preds = %bb.am
  %i.aog = zext nneg i32 %i.amy to i64
  %i.aoh = add nuw i32 %i.amy, 1
  %wide.trip.count800 = zext i32 %i.aoh to i64
  %invariant.gep879 = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aog ; 3 uses
  %i.aoi = zext nneg i32 %i.amy to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.amy, 4
  br i1 %min.iters.check, label %.lr.ph653.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check899 = icmp ult i32 %i.amy, 16
  br i1 %min.iters.check899, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aoj = and i64 %i.aoi, 12
  %n.vec = and i64 %i.aoi, 2147483632             ; 4 uses
  %i.aok = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aol = getelementptr [8 x i8], ptr %12, i64 %index ; 4 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 32
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aol, i64 64
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aol, i64 96
  %wide.load = load <4 x double>, ptr %i.aol, align 8, !tbaa !71
  %wide.load900 = load <4 x double>, ptr %i.aom, align 8, !tbaa !71
  %wide.load901 = load <4 x double>, ptr %i.aon, align 8, !tbaa !71
  %wide.load902 = load <4 x double>, ptr %i.aoo, align 8, !tbaa !71
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep879, i64 %index ; 4 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 8 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aop, i64 40 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aop, i64 72 ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aop, i64 104 ; 2 uses
  %wide.load903 = load <4 x double>, ptr %i.aoq, align 8, !tbaa !71
  %wide.load904 = load <4 x double>, ptr %i.aor, align 8, !tbaa !71
  %wide.load905 = load <4 x double>, ptr %i.aos, align 8, !tbaa !71
  %wide.load906 = load <4 x double>, ptr %i.aot, align 8, !tbaa !71
  %i.aou = fmul <4 x double> %wide.load, %wide.load903
  %i.aov = fmul <4 x double> %wide.load900, %wide.load904
  %i.aow = fmul <4 x double> %wide.load901, %wide.load905
  %i.aox = fmul <4 x double> %wide.load902, %wide.load906
  store <4 x double> %i.aou, ptr %i.aoq, align 8, !tbaa !71
  store <4 x double> %i.aov, ptr %i.aor, align 8, !tbaa !71
  store <4 x double> %i.aow, ptr %i.aos, align 8, !tbaa !71
  store <4 x double> %i.aox, ptr %i.aot, align 8, !tbaa !71
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aoy = icmp eq i64 %index.next, %n.vec
  br i1 %i.aoy, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aoi
  br i1 %cmp.n, label %._crit_edge654, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aoj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph653.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec907 = and i64 %i.aoi, 2147483644          ; 3 uses
  %i.aoz = or disjoint i64 %n.vec907, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index908 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next911, %vec.epilog.vector.body ] ; 3 uses
  %i.apa = getelementptr [8 x i8], ptr %12, i64 %index908
  %wide.load909 = load <4 x double>, ptr %i.apa, align 8, !tbaa !71
  %i.apb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep879, i64 %index908
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 8 ; 2 uses
  %wide.load910 = load <4 x double>, ptr %i.apc, align 8, !tbaa !71
  %i.apd = fmul <4 x double> %wide.load909, %wide.load910
  store <4 x double> %i.apd, ptr %i.apc, align 8, !tbaa !71
  %index.next911 = add nuw i64 %index908, 4       ; 2 uses
  %i.ape = icmp eq i64 %index.next911, %n.vec907
  br i1 %i.ape, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n912 = icmp eq i64 %n.vec907, %i.aoi
  br i1 %cmp.n912, label %._crit_edge654, label %.lr.ph653.preheader

.lr.ph653.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv797.ph = phi i64 [ 1, %iter.check ], [ %i.aok, %vec.epilog.iter.check ], [ %i.aoz, %vec.epilog.middle.block ]
  br label %.lr.ph653

.lr.ph653:                                        ; preds = %.lr.ph653.preheader, %.lr.ph653
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %.lr.ph653 ], [ %indvars.iv797.ph, %.lr.ph653.preheader ] ; 3 uses
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv797
  %i.apg = load double, ptr %i.apf, align 8, !tbaa !71
  %gep880 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep879, i64 %indvars.iv797 ; 2 uses
  %i.aph = load double, ptr %gep880, align 8, !tbaa !71
  %i.api = fmul double %i.apg, %i.aph
  store double %i.api, ptr %gep880, align 8, !tbaa !71
  %indvars.iv.next798 = add nuw nsw i64 %indvars.iv797, 1 ; 2 uses
  %exitcond801.not = icmp eq i64 %indvars.iv.next798, %wide.trip.count800
  br i1 %exitcond801.not, label %._crit_edge654, label %.lr.ph653, !llvm.loop !65

._crit_edge654:                                   ; preds = %.lr.ph653, %middle.block, %vec.epilog.middle.block, %bb.am
  %i.apj = sext i32 %i.amy to i64
  %i.apk = getelementptr [8 x i8], ptr %i.p, i64 %i.apj
  %i.apl = getelementptr i8, ptr %i.apk, i64 8
  call void @dtpsv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %i.apl, ptr noundef nonnull @c__1) #7
  %.pre813.pre = load i32, ptr %3, align 4, !tbaa !69
  br label %.loopexit550.backedge

bb.an:                                            ; preds = %.loopexit550
  %.not542655 = icmp slt i32 %i.amy, 1
  br i1 %.not542655, label %._crit_edge660.thread, label %.lr.ph659.preheader

.lr.ph659.preheader:                              ; preds = %bb.an
  %invariant.gep881 = getelementptr [8 x i8], ptr %i.m, i64 %i.bd ; 5 uses
  %i.apm = zext nneg i32 %i.amy to i64            ; 2 uses
  %xtraiter1295 = and i64 %i.apm, 3               ; 3 uses
  %i.apn = icmp ult i32 %i.amy, 4
  br i1 %i.apn, label %.lr.ph659.epil.preheader, label %.lr.ph659.preheader.new

.lr.ph659.preheader.new:                          ; preds = %.lr.ph659.preheader
  %unroll_iter1300 = and i64 %i.apm, 2147483644
  br label %.lr.ph659

.lr.ph659:                                        ; preds = %.lr.ph659, %.lr.ph659.preheader.new
  %indvars.iv802 = phi i64 [ 1, %.lr.ph659.preheader.new ], [ %indvars.iv.next803.3, %.lr.ph659 ] ; 5 uses
  %.0657 = phi double [ 0.000000e+00, %.lr.ph659.preheader.new ], [ %i.aqo, %.lr.ph659 ] ; 2 uses
  %niter1301 = phi i64 [ 0, %.lr.ph659.preheader.new ], [ %niter1301.next.3, %.lr.ph659 ]
  %gep882 = getelementptr [8 x i8], ptr %invariant.gep881, i64 %indvars.iv802
  %i.apo = load double, ptr %gep882, align 8, !tbaa !71 ; 3 uses
  %i.app = fcmp oge double %i.apo, 0.000000e+00
  %i.apq = fneg double %i.apo
  %i.apr = select i1 %i.app, double %i.apo, double %i.apq ; 2 uses
  %i.aps = fcmp oge double %.0657, %i.apr
  %i.apt = select i1 %i.aps, double %.0657, double %i.apr ; 2 uses
  %i.apu = getelementptr [8 x i8], ptr %invariant.gep881, i64 %indvars.iv802
  %gep882.1 = getelementptr i8, ptr %i.apu, i64 8
  %i.apv = load double, ptr %gep882.1, align 8, !tbaa !71 ; 3 uses
  %i.apw = fcmp oge double %i.apv, 0.000000e+00
  %i.apx = fneg double %i.apv
  %i.apy = select i1 %i.apw, double %i.apv, double %i.apx ; 2 uses
  %i.apz = fcmp oge double %i.apt, %i.apy
  %i.aqa = select i1 %i.apz, double %i.apt, double %i.apy ; 2 uses
  %i.aqb = getelementptr [8 x i8], ptr %invariant.gep881, i64 %indvars.iv802
  %gep882.2 = getelementptr i8, ptr %i.aqb, i64 16
  %i.aqc = load double, ptr %gep882.2, align 8, !tbaa !71 ; 3 uses
  %i.aqd = fcmp oge double %i.aqc, 0.000000e+00
  %i.aqe = fneg double %i.aqc
  %i.aqf = select i1 %i.aqd, double %i.aqc, double %i.aqe ; 2 uses
  %i.aqg = fcmp oge double %i.aqa, %i.aqf
  %i.aqh = select i1 %i.aqg, double %i.aqa, double %i.aqf ; 2 uses
  %i.aqi = getelementptr [8 x i8], ptr %invariant.gep881, i64 %indvars.iv802
  %gep882.3 = getelementptr i8, ptr %i.aqi, i64 24
  %i.aqj = load double, ptr %gep882.3, align 8, !tbaa !71 ; 3 uses
  %i.aqk = fcmp oge double %i.aqj, 0.000000e+00
  %i.aql = fneg double %i.aqj
  %i.aqm = select i1 %i.aqk, double %i.aqj, double %i.aql ; 2 uses
  %i.aqn = fcmp oge double %i.aqh, %i.aqm
  %i.aqo = select i1 %i.aqn, double %i.aqh, double %i.aqm ; 3 uses
  %indvars.iv.next803.3 = add nuw nsw i64 %indvars.iv802, 4 ; 2 uses
  %niter1301.next.3 = add i64 %niter1301, 4       ; 2 uses
  %niter1301.ncmp.3 = icmp eq i64 %niter1301.next.3, %unroll_iter1300
  br i1 %niter1301.ncmp.3, label %._crit_edge660.unr-lcssa, label %.lr.ph659, !llvm.loop !66

._crit_edge660.unr-lcssa:                         ; preds = %.lr.ph659
  %lcmp.mod1297.not = icmp eq i64 %xtraiter1295, 0
  br i1 %lcmp.mod1297.not, label %._crit_edge660, label %.lr.ph659.epil.preheader

.lr.ph659.epil.preheader:                         ; preds = %._crit_edge660.unr-lcssa, %.lr.ph659.preheader
  %indvars.iv802.epil.init = phi i64 [ 1, %.lr.ph659.preheader ], [ %indvars.iv.next803.3, %._crit_edge660.unr-lcssa ]
  %.0657.epil.init = phi double [ 0.000000e+00, %.lr.ph659.preheader ], [ %i.aqo, %._crit_edge660.unr-lcssa ]
  %lcmp.mod1299 = icmp ne i64 %xtraiter1295, 0
  call void @llvm.assume(i1 %lcmp.mod1299)
  br label %.lr.ph659.epil

.lr.ph659.epil:                                   ; preds = %.lr.ph659.epil, %.lr.ph659.epil.preheader
  %indvars.iv802.epil = phi i64 [ %indvars.iv802.epil.init, %.lr.ph659.epil.preheader ], [ %indvars.iv.next803.epil, %.lr.ph659.epil ] ; 2 uses
  %.0657.epil = phi double [ %.0657.epil.init, %.lr.ph659.epil.preheader ], [ %i.aqu, %.lr.ph659.epil ] ; 2 uses
  %epil.iter1296 = phi i64 [ 0, %.lr.ph659.epil.preheader ], [ %epil.iter1296.next, %.lr.ph659.epil ]
  %gep882.epil = getelementptr [8 x i8], ptr %invariant.gep881, i64 %indvars.iv802.epil
  %i.aqp = load double, ptr %gep882.epil, align 8, !tbaa !71 ; 3 uses
  %i.aqq = fcmp oge double %i.aqp, 0.000000e+00
  %i.aqr = fneg double %i.aqp
  %i.aqs = select i1 %i.aqq, double %i.aqp, double %i.aqr ; 2 uses
  %i.aqt = fcmp oge double %.0657.epil, %i.aqs
  %i.aqu = select i1 %i.aqt, double %.0657.epil, double %i.aqs ; 2 uses
  %indvars.iv.next803.epil = add nuw nsw i64 %indvars.iv802.epil, 1
  %epil.iter1296.next = add i64 %epil.iter1296, 1 ; 2 uses
  %epil.iter1296.cmp.not = icmp eq i64 %epil.iter1296.next, %xtraiter1295
  br i1 %epil.iter1296.cmp.not, label %._crit_edge660, label %.lr.ph659.epil, !llvm.loop !67

._crit_edge660:                                   ; preds = %.lr.ph659.epil, %._crit_edge660.unr-lcssa
  %.lcssa1247 = phi double [ %i.aqo, %._crit_edge660.unr-lcssa ], [ %i.aqu, %.lr.ph659.epil ] ; 2 uses
  %i.aqv = fcmp une double %.lcssa1247, 0.000000e+00
  br i1 %i.aqv, label %bb.ao, label %._crit_edge660.thread

bb.ao:                                            ; preds = %._crit_edge660
  %i.aqw = load double, ptr %i.amo, align 8, !tbaa !71
  %i.aqx = fdiv double %i.aqw, %.lcssa1247
  store double %i.aqx, ptr %i.amo, align 8, !tbaa !71
  br label %._crit_edge660.thread

._crit_edge660.thread:                            ; preds = %bb.an, %._crit_edge660, %bb.ao
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 1 ; 2 uses
  %exitcond811.not = icmp eq i64 %indvars.iv.next808, %i.av
  %indvar.next1202 = add i64 %indvar1201, 1
  br i1 %exitcond811.not, label %.loopexit, label %bb.q, !llvm.loop !68

.loopexit:                                        ; preds = %._crit_edge660.thread, %bb.n, %.lr.ph669.preheader, %bb.p, %bb.o, %.thread
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

declare void @dtpmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dlacn2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtpsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

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
!8 = distinct !{!8, !73, !74, !75}
!9 = distinct !{!9, !73, !74, !75}
!10 = distinct !{!10, !77}
!11 = distinct !{!11, !73, !74}
!12 = distinct !{!12, i1 false, !"LVerDomain"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !73, !74, !75}
!16 = distinct !{!16, !73, !74, !75}
!17 = distinct !{!17, !77}
!18 = distinct !{!18, !73, !74}
!19 = distinct !{!19, !73}
!20 = distinct !{!20, i1 false, !"LVerDomain"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !73, !74, !75}
!24 = distinct !{!24, !73, !74, !75}
!25 = distinct !{!25, !77}
!26 = distinct !{!26, !73, !74}
!27 = distinct !{!27, !73}
!28 = distinct !{!28, i1 false, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !73, !74, !75}
!32 = distinct !{!32, !73, !74, !75}
!33 = distinct !{!33, !77}
!34 = distinct !{!34, !73, !74}
!35 = distinct !{!35, !73}
!36 = distinct !{!36, i1 false, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !73, !74, !75}
!40 = distinct !{!40, !73, !74, !75}
!41 = distinct !{!41, !77}
!42 = distinct !{!42, !73, !74}
!43 = distinct !{!43, !73}
!44 = distinct !{!44, !73}
!45 = distinct !{!45, !77}
!46 = distinct !{!46, !73}
!47 = distinct !{!47, !73}
!48 = distinct !{!48, !77}
!49 = distinct !{!49, !73}
!50 = distinct !{!50, !77}
!51 = distinct !{!51, !73}
!52 = distinct !{!52, !73}
!53 = distinct !{!53, !77}
!54 = distinct !{!54, !73}
!55 = distinct !{!55, !73}
!56 = distinct !{!56, !73}
!57 = distinct !{!57, !73, !74, !75}
!58 = distinct !{!58, !73, !74, !75}
!59 = distinct !{!59, !73, !75, !74}
!60 = distinct !{!60, !73, !74, !75}
!61 = distinct !{!61, !73, !74, !75}
!62 = distinct !{!62, !73, !75, !74}
!63 = distinct !{!63, !73, !74, !75}
!64 = distinct !{!64, !73, !74, !75}
!65 = distinct !{!65, !73, !75, !74}
!66 = distinct !{!66, !73}
!67 = distinct !{!67, !77}
!68 = distinct !{!68, !73}
!69 = !{!5, !5, i64 0}
!70 = !{!"double", !4, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!4, !4, i64 0}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!"branch_weights", i32 4, i32 12}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!13}
!79 = !{!14}
!80 = !{!21}
!81 = !{!22}
!82 = !{!29}
!83 = !{!30}
!84 = !{!37}
!85 = !{!38}
end_hunk_1
