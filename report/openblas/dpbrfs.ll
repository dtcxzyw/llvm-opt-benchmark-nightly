Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpbrfs?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DPBRFS\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@c__1 = internal global i32 1, align 4
@c_b12 = internal global double -1.000000e+00, align 8
@c_b14 = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dpbrfs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr noundef %10, ptr nofree noundef readonly captures(none) %11, ptr noundef %12, ptr nofree noundef captures(none) %13, ptr noundef %14, ptr noundef %15, ptr noundef initializes((0, 4)) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %8 to i64
  %i.b = ptrtoaddr ptr %14 to i64
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [3 x i32], align 4                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.f = load i32, ptr %5, align 4, !tbaa !8      ; 2 uses
  %narrow414 = xor i32 %i.f, -1
  %i.g = sext i32 %narrow414 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %4, i64 %i.g ; 8 uses
  %i.i = load i32, ptr %9, align 4, !tbaa !8      ; 2 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64                  ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %8, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %11, align 4, !tbaa !8     ; 2 uses
  %narrow407 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow407 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %10, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds i8, ptr %12, i64 -8
  %i.p = getelementptr inbounds i8, ptr %13, i64 -8
  %i.q = getelementptr inbounds i8, ptr %14, i64 -8 ; 29 uses
  store i32 0, ptr %16, align 4, !tbaa !8
  %i.r = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #7
  %.not = icmp eq i32 %i.r, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  %.not408 = icmp eq i32 %i.s, 0
  br i1 %.not408, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load i32, ptr %1, align 4, !tbaa !8      ; 4 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %2, align 4, !tbaa !8      ; 4 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %3, align 4, !tbaa !8      ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %5, align 4, !tbaa !8
  %.not409 = icmp sgt i32 %i.z, %i.v
  br i1 %.not409, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %7, align 4, !tbaa !8
  %.not410 = icmp sgt i32 %i.aa, %i.v
  br i1 %.not410, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %9, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1) ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %spec.select
  br i1 %i.ac, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %11, align 4, !tbaa !8
  %i.ae = icmp slt i32 %i.ad, %spec.select
  br i1 %i.ae, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.pr = load i32, ptr %16, align 4, !tbaa !8     ; 2 uses
  %.not411 = icmp eq i32 %.pr, 0
  br i1 %.not411, label %bb.k, label %.thread

.thread.sink.split:                               ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -4, %bb.e ], [ -8, %bb.g ], [ -10, %bb.h ], [ -6, %bb.f ], [ -3, %bb.d ], [ -12, %bb.i ] ; 2 uses
  store i32 %.sink, ptr %16, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j
  %i.af = phi i32 [ %.pr, %bb.j ], [ %.sink, %.thread.sink.split ]
  %i.ag = sub nsw i32 0, %i.af
  store i32 %i.ag, ptr %i.c, align 4, !tbaa !8
  %i.ah = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp eq i32 %i.t, 0
  %.not427491 = icmp eq i32 %i.x, 0               ; 2 uses
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not427491, label %.loopexit, label %bb.n

bb.m:                                             ; preds = %bb.k
  br i1 %.not427491, label %.loopexit, label %.lr.ph494.preheader

.lr.ph494.preheader:                              ; preds = %bb.m
  %i.aj = zext nneg i32 %i.x to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %i.ak, i1 false), !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %i.ak, i1 false), !tbaa !9
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.al = add nuw nsw i32 %i.t, 1
  %i.am = shl nuw i32 %i.v, 1
  %i.an = add nuw nsw i32 %i.am, 2
  %i.ao = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.an)
  %i.ap = tail call double @dlamch_(ptr noundef nonnull @.str.3) #7 ; 3 uses
  %i.aq = tail call double @dlamch_(ptr noundef nonnull @.str.4) #7
  %i.ar = sitofp i32 %i.ao to double              ; 2 uses
  %i.as = fmul double %i.aq, %i.ar                ; 9 uses
  %i.at = fdiv double %i.as, %i.ap                ; 5 uses
  %i.au = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %.not413489 = icmp slt i32 %i.au, 1
  br i1 %.not413489, label %.loopexit, label %.preheader434.lr.ph

.preheader434.lr.ph:                              ; preds = %bb.n
  %i.av = fmul double %i.ap, %i.ar                ; 3 uses
  %i.aw = sext i32 %i.f to i64                    ; 3 uses
  %i.ax = sext i32 %i.i to i64                    ; 3 uses
  %i.ay = sext i32 %i.l to i64
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.b, -8
  %i.bb = or i64 %i.ax, %i.j
  %i.bc = shl nsw i64 %i.bb, 3
  %i.bd = add i64 %i.bc, %i.a
  %i.be = sub i64 %i.ba, %i.bd
  %i.bf = mul nsw i64 %i.ax, -8
  %invariant.op733 = add i64 %i.be, -1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.at, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert659 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat660 = shufflevector <4 x double> %broadcast.splatinsert659, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert661 = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat662 = shufflevector <4 x double> %broadcast.splatinsert661, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader434

.preheader434:                                    ; preds = %.preheader434.lr.ph, %._crit_edge487.thread
  %indvar = phi i64 [ 0, %.preheader434.lr.ph ], [ %indvar.next, %._crit_edge487.thread ] ; 2 uses
  %indvars.iv547 = phi i64 [ 1, %.preheader434.lr.ph ], [ %indvars.iv.next548, %._crit_edge487.thread ] ; 6 uses
  %i.bg = mul i64 %i.bf, %indvar
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv547 ; 2 uses
  %i.bi = mul nsw i64 %indvars.iv547, %i.ax       ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.k, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = mul nsw i64 %indvars.iv547, %i.ay       ; 6 uses
  %i.bm = getelementptr [8 x i8], ptr %i.n, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 8      ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.bi ; 7 uses
  %invariant.gep578 = getelementptr [8 x i8], ptr %i.n, i64 %i.bl
  %invariant.gep576 = getelementptr [8 x i8], ptr %i.n, i64 %i.bl ; 3 uses
  %invariant.gep584 = getelementptr [8 x i8], ptr %i.n, i64 %i.bl
  %invariant.gep582 = getelementptr [8 x i8], ptr %i.n, i64 %i.bl ; 3 uses
  %.reass734 = add i64 %i.bg, %invariant.op733
  %diff.check = icmp ult i64 %.reass734, 127
  br label %bb.o

bb.o:                                             ; preds = %.preheader434, %bb.aa
  %.0385 = phi i32 [ %i.lv, %bb.aa ], [ 1, %.preheader434 ] ; 2 uses
  %.0 = phi double [ %i.lu, %bb.aa ], [ 3.000000e+00, %.preheader434 ]
  %i.bo = load i32, ptr %1, align 4, !tbaa !8
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [8 x i8], ptr %i.q, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.bk, ptr noundef nonnull @c__1, ptr noundef %i.br, ptr noundef nonnull @c__1) #7
  %i.bs = load i32, ptr %1, align 4, !tbaa !8
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr [8 x i8], ptr %i.q, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  call void @dsbmv_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @c_b12, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.bn, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b14, ptr noundef %i.bv, ptr noundef nonnull @c__1) #7
  %i.bw = load i32, ptr %1, align 4, !tbaa !8     ; 19 uses
  %.not415438 = icmp slt i32 %i.bw, 1             ; 2 uses
  br i1 %.not415438, label %._crit_edge466, label %iter.check691

iter.check691:                                    ; preds = %bb.o
  %i.bx = add nuw i32 %i.bw, 1                    ; 2 uses
  %wide.trip.count = zext i32 %i.bx to i64        ; 2 uses
  %i.by = zext nneg i32 %i.bw to i64              ; 5 uses
  %min.iters.check675 = icmp ult i32 %i.bw, 4
  %or.cond704 = select i1 %min.iters.check675, i1 true, i1 %diff.check
  br i1 %or.cond704, label %.lr.ph.preheader, label %vector.main.loop.iter.check676

vector.main.loop.iter.check676:                   ; preds = %iter.check691
  %min.iters.check677 = icmp ult i32 %i.bw, 16
  br i1 %min.iters.check677, label %vec.epilog.ph695, label %vector.ph678

vector.ph678:                                     ; preds = %vector.main.loop.iter.check676
  %i.bz = and i64 %i.by, 12
  %n.vec679 = and i64 %i.by, 2147483632           ; 4 uses
  %i.ca = or disjoint i64 %n.vec679, 1
  br label %vector.body680

vector.body680:                                   ; preds = %vector.body680, %vector.ph678
  %index681 = phi i64 [ 0, %vector.ph678 ], [ %index.next686, %vector.body680 ] ; 3 uses
  %i.cb = getelementptr [8 x i8], ptr %invariant.gep, i64 %index681 ; 4 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 40
  %i.ce = getelementptr i8, ptr %i.cb, i64 72
  %i.cf = getelementptr i8, ptr %i.cb, i64 104
  %wide.load682 = load <4 x double>, ptr %i.cc, align 8, !tbaa !9 ; 3 uses
  %wide.load683 = load <4 x double>, ptr %i.cd, align 8, !tbaa !9 ; 3 uses
  %wide.load684 = load <4 x double>, ptr %i.ce, align 8, !tbaa !9 ; 3 uses
  %wide.load685 = load <4 x double>, ptr %i.cf, align 8, !tbaa !9 ; 3 uses
  %i.cg = fcmp oge <4 x double> %wide.load682, zeroinitializer
  %i.ch = fcmp oge <4 x double> %wide.load683, zeroinitializer
  %i.ci = fcmp oge <4 x double> %wide.load684, zeroinitializer
  %i.cj = fcmp oge <4 x double> %wide.load685, zeroinitializer
  %i.ck = fneg <4 x double> %wide.load682
  %i.cl = fneg <4 x double> %wide.load683
  %i.cm = fneg <4 x double> %wide.load684
  %i.cn = fneg <4 x double> %wide.load685
  %i.co = select <4 x i1> %i.cg, <4 x double> %wide.load682, <4 x double> %i.ck
  %i.cp = select <4 x i1> %i.ch, <4 x double> %wide.load683, <4 x double> %i.cl
  %i.cq = select <4 x i1> %i.ci, <4 x double> %wide.load684, <4 x double> %i.cm
  %i.cr = select <4 x i1> %i.cj, <4 x double> %wide.load685, <4 x double> %i.cn
  %i.cs = getelementptr [8 x i8], ptr %14, i64 %index681 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store <4 x double> %i.co, ptr %i.cs, align 8, !tbaa !9
  store <4 x double> %i.cp, ptr %i.ct, align 8, !tbaa !9
  store <4 x double> %i.cq, ptr %i.cu, align 8, !tbaa !9
  store <4 x double> %i.cr, ptr %i.cv, align 8, !tbaa !9
  %index.next686 = add nuw i64 %index681, 16      ; 2 uses
  %i.cw = icmp eq i64 %index.next686, %n.vec679
  br i1 %i.cw, label %middle.block687, label %vector.body680, !llvm.loop !11

middle.block687:                                  ; preds = %vector.body680
  %cmp.n688 = icmp eq i64 %n.vec679, %i.by
  br i1 %cmp.n688, label %._crit_edge.thread, label %vec.epilog.iter.check693

vec.epilog.iter.check693:                         ; preds = %middle.block687
  %min.epilog.iters.check694 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check694, label %.lr.ph.preheader, label %vec.epilog.ph695, !prof !15

vec.epilog.ph695:                                 ; preds = %vector.main.loop.iter.check676, %vec.epilog.iter.check693
  %vec.epilog.resume.val689 = phi i64 [ %n.vec679, %vec.epilog.iter.check693 ], [ 0, %vector.main.loop.iter.check676 ]
  %n.vec696 = and i64 %i.by, 2147483644           ; 3 uses
  %i.cx = or disjoint i64 %n.vec696, 1
  br label %vec.epilog.vector.body697

vec.epilog.vector.body697:                        ; preds = %vec.epilog.vector.body697, %vec.epilog.ph695
  %index698 = phi i64 [ %vec.epilog.resume.val689, %vec.epilog.ph695 ], [ %index.next700, %vec.epilog.vector.body697 ] ; 3 uses
  %i.cy = getelementptr [8 x i8], ptr %invariant.gep, i64 %index698
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %wide.load699 = load <4 x double>, ptr %i.cz, align 8, !tbaa !9 ; 3 uses
  %i.da = fcmp oge <4 x double> %wide.load699, zeroinitializer
  %i.db = fneg <4 x double> %wide.load699
  %i.dc = select <4 x i1> %i.da, <4 x double> %wide.load699, <4 x double> %i.db
  %i.dd = getelementptr [8 x i8], ptr %14, i64 %index698
  store <4 x double> %i.dc, ptr %i.dd, align 8, !tbaa !9
  %index.next700 = add nuw i64 %index698, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next700, %n.vec696
  br i1 %i.de, label %vec.epilog.middle.block701, label %vec.epilog.vector.body697, !llvm.loop !16

vec.epilog.middle.block701:                       ; preds = %vec.epilog.vector.body697
  %cmp.n702 = icmp eq i64 %n.vec696, %i.by
  br i1 %cmp.n702, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check691, %vec.epilog.iter.check693, %vec.epilog.middle.block701
  %indvars.iv.ph = phi i64 [ 1, %iter.check691 ], [ %i.ca, %vec.epilog.iter.check693 ], [ %i.cx, %vec.epilog.middle.block701 ] ; 4 uses
  %i.df = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.dg = zext nneg i32 %i.bw to i64
  %i.dh = sub nsw i64 %i.dg, %indvars.iv.ph
  %xtraiter = and i64 %i.df, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.di = load double, ptr %gep.prol, align 8, !tbaa !9 ; 3 uses
  %i.dj = fcmp oge double %i.di, 0.000000e+00
  %i.dk = fneg double %i.di
  %i.dl = select i1 %i.dj, double %i.di, double %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.prol
  store double %i.dl, ptr %i.dm, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !17

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dn = icmp ult i64 %i.dh, 3
  br i1 %i.dn, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.do = load double, ptr %gep, align 8, !tbaa !9 ; 3 uses
  %i.dp = fcmp oge double %i.do, 0.000000e+00
  %i.dq = fneg double %i.do
  %i.dr = select i1 %i.dp, double %i.do, double %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store double %i.dr, ptr %i.ds, align 8, !tbaa !9
  %i.dt = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.dt, i64 8
  %i.du = load double, ptr %gep.1, align 8, !tbaa !9 ; 3 uses
  %i.dv = fcmp oge double %i.du, 0.000000e+00
  %i.dw = fneg double %i.du
  %i.dx = select i1 %i.dv, double %i.du, double %i.dw
  %i.dy = getelementptr [8 x i8], ptr %14, i64 %indvars.iv
  store double %i.dx, ptr %i.dy, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dz = load double, ptr %gep.2, align 8, !tbaa !9 ; 3 uses
  %i.ea = fcmp oge double %i.dz, 0.000000e+00
  %i.eb = fneg double %i.dz
  %i.ec = select i1 %i.ea, double %i.dz, double %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store double %i.ec, ptr %i.ed, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ee = load double, ptr %gep.3, align 8, !tbaa !9 ; 3 uses
  %i.ef = fcmp oge double %i.ee, 0.000000e+00
  %i.eg = fneg double %i.ee
  %i.eh = select i1 %i.ef, double %i.ee, double %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store double %i.eh, ptr %i.ei, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !19

._crit_edge.thread:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block701, %middle.block687
  %i.ej = load i32, ptr %2, align 4, !tbaa !8     ; 5 uses
  br i1 %.not, label %.lr.ph460, label %.lr.ph448

.lr.ph448:                                        ; preds = %._crit_edge.thread
  %i.ek = add nsw i32 %i.ej, 1                    ; 2 uses
  %i.el = sub i32 1, %i.ej
  %i.em = sext i32 %i.ek to i64
  %i.en = add nuw i32 %i.bw, 1
  %wide.trip.count509 = zext i32 %i.en to i64
  %invariant.gep580 = getelementptr [8 x i8], ptr %i.h, i64 %i.em
  br label %bb.p

.lr.ph460:                                        ; preds = %._crit_edge.thread
  %i.eo = add nuw i32 %i.bw, 1
  %wide.trip.count519 = zext i32 %i.eo to i64
  %wide.trip.count519.a = zext nneg i32 %i.bw to i64
  %17 = add i32 %i.ej, 1
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph448, %._crit_edge445
  %indvar712 = phi i64 [ 0, %.lr.ph448 ], [ %indvar.next713, %._crit_edge445 ] ; 2 uses
  %indvars.iv506 = phi i64 [ 1, %.lr.ph448 ], [ %indvars.iv.next507, %._crit_edge445 ] ; 10 uses
  %indvars.iv501 = phi i32 [ %i.el, %.lr.ph448 ], [ %indvars.iv.next502, %._crit_edge445 ] ; 3 uses
  %smax711 = call i32 @llvm.smax.i32(i32 %indvars.iv501, i32 1)
  %i.ep = zext nneg i32 %smax711 to i64           ; 2 uses
  %gep579 = getelementptr [8 x i8], ptr %invariant.gep578, i64 %indvars.iv506
  %i.eq = load double, ptr %gep579, align 8, !tbaa !9 ; 3 uses
  %i.er = fcmp oge double %i.eq, 0.000000e+00
  %i.es = fneg double %i.eq
  %i.et = select i1 %i.er, double %i.eq, double %i.es ; 4 uses
  %i.eu = trunc i64 %indvars.iv506 to i32
  %i.ev = sub i32 %i.eu, %i.ej
  %i.ew = call i32 @llvm.smax.i32(i32 %i.ev, i32 1)
  %i.ex = zext nneg i32 %i.ew to i64
  %.not426.not440 = icmp samesign ugt i64 %indvars.iv506, %i.ex
  br i1 %.not426.not440, label %.lr.ph444, label %.._crit_edge445_crit_edge

.._crit_edge445_crit_edge:                        ; preds = %bb.p
  %.pre554 = mul nsw i64 %indvars.iv506, %i.aw
  br label %._crit_edge445

.lr.ph444:                                        ; preds = %bb.p
  %i.ey = sub nsw i64 %indvars.iv506, %i.ep
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv501, i32 1) ; 2 uses
  %i.ez = zext nneg i32 %smax to i64              ; 4 uses
  %i.fa = trunc nuw nsw i64 %indvars.iv506 to i32
  %invariant.op = sub i32 %i.ek, %i.fa
  %i.fb = mul nsw i64 %indvars.iv506, %i.aw       ; 3 uses
  %i.fc = trunc nsw i64 %i.fb to i32
  %.reass = add i32 %invariant.op, %i.fc          ; 3 uses
  %xtraiter714 = and i64 %i.ey, 1
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph444
  %i.fd = add i32 %.reass, %smax
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fe ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !9 ; 3 uses
  %i.fh = fcmp oge double %i.fg, 0.000000e+00
  %i.fi = fneg double %i.fg
  %i.fj = select i1 %i.fh, double %i.fg, double %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ez ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !9
  %i.fm = call double @llvm.fmuladd.f64(double %i.fj, double %i.et, double %i.fl)
  store double %i.fm, ptr %i.fk, align 8, !tbaa !9
  %i.fn = load double, ptr %i.ff, align 8, !tbaa !9 ; 3 uses
  %i.fo = fcmp oge double %i.fn, 0.000000e+00
  %i.fp = fneg double %i.fn
  %i.fq = select i1 %i.fo, double %i.fn, double %i.fp
  %gep577.prol = getelementptr [8 x i8], ptr %invariant.gep576, i64 %i.ez
  %i.fr = load double, ptr %gep577.prol, align 8, !tbaa !9 ; 3 uses
  %i.fs = fcmp oge double %i.fr, 0.000000e+00
  %i.ft = fneg double %i.fr
  %i.fu = select i1 %i.fs, double %i.fr, double %i.ft
  %i.fv = call double @llvm.fmuladd.f64(double %i.fq, double %i.fu, double 0.000000e+00) ; 2 uses
  %indvars.iv.next504.prol = add nuw nsw i64 %i.ez, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph444
  %indvars.iv503.unr = phi i64 [ %i.ez, %.lr.ph444 ], [ %indvars.iv.next504.prol, %.prol.loopexit.unr-lcssa ]
  %.0386442.unr = phi double [ 0.000000e+00, %.lr.ph444 ], [ %i.fv, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi double [ poison, %.lr.ph444 ], [ %i.fv, %.prol.loopexit.unr-lcssa ]
  %i.fw = icmp eq i64 %indvar712, %i.ep
  br i1 %i.fw, label %._crit_edge445, label %.lr.ph444.new

.lr.ph444.new:                                    ; preds = %.prol.loopexit, %.lr.ph444.new
  %indvars.iv503 = phi i64 [ %indvars.iv.next504.1, %.lr.ph444.new ], [ %indvars.iv503.unr, %.prol.loopexit ] ; 6 uses
  %.0386442 = phi double [ %i.hk, %.lr.ph444.new ], [ %.0386442.unr, %.prol.loopexit ]
  %i.fx = trunc nuw nsw i64 %indvars.iv503 to i32
  %i.fy = add i32 %.reass, %i.fx
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fz ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !9 ; 3 uses
  %i.gc = fcmp oge double %i.gb, 0.000000e+00
  %i.gd = fneg double %i.gb
  %i.ge = select i1 %i.gc, double %i.gb, double %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv503 ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !9
  %i.gh = call double @llvm.fmuladd.f64(double %i.ge, double %i.et, double %i.gg)
  store double %i.gh, ptr %i.gf, align 8, !tbaa !9
  %i.gi = load double, ptr %i.ga, align 8, !tbaa !9 ; 3 uses
  %i.gj = fcmp oge double %i.gi, 0.000000e+00
  %i.gk = fneg double %i.gi
  %i.gl = select i1 %i.gj, double %i.gi, double %i.gk
  %gep577 = getelementptr [8 x i8], ptr %invariant.gep576, i64 %indvars.iv503
  %i.gm = load double, ptr %gep577, align 8, !tbaa !9 ; 3 uses
  %i.gn = fcmp oge double %i.gm, 0.000000e+00
  %i.go = fneg double %i.gm
  %i.gp = select i1 %i.gn, double %i.gm, double %i.go
  %i.gq = call double @llvm.fmuladd.f64(double %i.gl, double %i.gp, double %.0386442)
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.next504 to i32
  %i.gs = add i32 %.reass, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.gt ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !9 ; 3 uses
  %i.gw = fcmp oge double %i.gv, 0.000000e+00
  %i.gx = fneg double %i.gv
  %i.gy = select i1 %i.gw, double %i.gv, double %i.gx
  %i.gz = getelementptr [8 x i8], ptr %14, i64 %indvars.iv503 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !9
  %i.hb = call double @llvm.fmuladd.f64(double %i.gy, double %i.et, double %i.ha)
  store double %i.hb, ptr %i.gz, align 8, !tbaa !9
  %i.hc = load double, ptr %i.gu, align 8, !tbaa !9 ; 3 uses
  %i.hd = fcmp oge double %i.hc, 0.000000e+00
  %i.he = fneg double %i.hc
  %i.hf = select i1 %i.hd, double %i.hc, double %i.he
  %gep577.1 = getelementptr [8 x i8], ptr %invariant.gep576, i64 %indvars.iv.next504
  %i.hg = load double, ptr %gep577.1, align 8, !tbaa !9 ; 3 uses
  %i.hh = fcmp oge double %i.hg, 0.000000e+00
  %i.hi = fneg double %i.hg
  %i.hj = select i1 %i.hh, double %i.hg, double %i.hi
  %i.hk = call double @llvm.fmuladd.f64(double %i.hf, double %i.hj, double %i.gq) ; 2 uses
  %indvars.iv.next504.1 = add nuw nsw i64 %indvars.iv503, 2 ; 2 uses
  %.not426.not.1 = icmp samesign ult i64 %indvars.iv.next504.1, %indvars.iv506
  br i1 %.not426.not.1, label %.lr.ph444.new, label %._crit_edge445, !llvm.loop !20

._crit_edge445:                                   ; preds = %.prol.loopexit, %.lr.ph444.new, %.._crit_edge445_crit_edge
  %.pre-phi = phi i64 [ %.pre554, %.._crit_edge445_crit_edge ], [ %i.fb, %.lr.ph444.new ], [ %i.fb, %.prol.loopexit ]
  %.0386.lcssa = phi double [ 0.000000e+00, %.._crit_edge445_crit_edge ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.hk, %.lr.ph444.new ]
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv506 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !9
  %gep581 = getelementptr [8 x i8], ptr %invariant.gep580, i64 %.pre-phi
  %i.hn = load double, ptr %gep581, align 8, !tbaa !9 ; 3 uses
  %i.ho = fcmp oge double %i.hn, 0.000000e+00
  %i.hp = fneg double %i.hn
  %i.hq = select i1 %i.ho, double %i.hn, double %i.hp
  %i.hr = call double @llvm.fmuladd.f64(double %i.hq, double %i.et, double %i.hm)
  %i.hs = fadd double %.0386.lcssa, %i.hr
  store double %i.hs, ptr %i.hl, align 8, !tbaa !9
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 2 uses
  %indvars.iv.next502 = add i32 %indvars.iv501, 1
  %exitcond510.not = icmp eq i64 %indvars.iv.next507, %wide.trip.count509
  %indvar.next713 = add i64 %indvar712, 1
  br i1 %exitcond510.not, label %.lr.ph465.preheader, label %bb.p, !llvm.loop !21

bb.q:                                             ; preds = %.lr.ph460, %._crit_edge456
  %indvar721 = phi i64 [ 0, %.lr.ph460 ], [ %indvar.next722, %._crit_edge456 ] ; 3 uses
  %indvar719 = phi i32 [ 0, %.lr.ph460 ], [ %indvar.next720, %._crit_edge456 ] ; 2 uses
  %indvars.iv516 = phi i64 [ 1, %.lr.ph460 ], [ %indvars.iv.next517, %._crit_edge456 ] ; 7 uses
  %indvars.iv511 = phi i32 [ 2, %.lr.ph460 ], [ %indvars.iv.next512, %._crit_edge456 ] ; 2 uses
  %18 = add i32 %17, %indvar719
  %19 = sext i32 %18 to i64
  %smin = call i64 @llvm.smin.i64(i64 %wide.trip.count519.a, i64 %19) ; 2 uses
  %reass.sub = sub i64 %smin, %indvar721
  %gep585 = getelementptr [8 x i8], ptr %invariant.gep584, i64 %indvars.iv516
  %i.ht = load double, ptr %gep585, align 8, !tbaa !9 ; 3 uses
  %i.hu = fcmp oge double %i.ht, 0.000000e+00
  %i.hv = fneg double %i.ht
  %i.hw = select i1 %i.hu, double %i.ht, double %i.hv ; 4 uses
  %i.hx = mul nsw i64 %indvars.iv516, %i.aw       ; 2 uses
  %i.hy = getelementptr [8 x i8], ptr %i.h, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !9 ; 3 uses
  %i.ib = fcmp oge double %i.ia, 0.000000e+00
  %i.ic = fneg double %i.ia
  %i.id = select i1 %i.ib, double %i.ia, double %i.ic
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv516 ; 4 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !9
  %i.ig = call double @llvm.fmuladd.f64(double %i.id, double %i.hw, double %i.if) ; 2 uses
  store double %i.ig, ptr %i.ie, align 8, !tbaa !9
  %i.ih = trunc i64 %indvars.iv516 to i32
  %i.ii = add i32 %i.ej, %i.ih
  %i.ij = call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.ii)
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %i.ik = sext i32 %i.ij to i64                   ; 2 uses
  %.not418451.not = icmp slt i64 %indvars.iv516, %i.ik
  br i1 %.not418451.not, label %.lr.ph455, label %._crit_edge456

.lr.ph455:                                        ; preds = %bb.q
  %i.il = sext i32 %indvars.iv511 to i64          ; 5 uses
  %invariant.op449 = add i64 %i.hx, 1
  %.reass450 = sub i64 %invariant.op449, %indvars.iv516 ; 3 uses
  %.reass450.a = sub i64 %indvar721, %smin
  %20 = and i64 %.reass450.a, 1
  %lcmp.mod724.not.not = icmp eq i64 %20, 0
  br i1 %lcmp.mod724.not.not, label %.prol.loopexit718.unr-lcssa, label %.prol.loopexit718

.prol.loopexit718.unr-lcssa:                      ; preds = %.lr.ph455
  %21 = add i64 %.reass450, %i.il
  %sext.prol = shl i64 %21, 32
  %22 = ashr exact i64 %sext.prol, 29
  %23 = getelementptr inbounds i8, ptr %i.h, i64 %22 ; 2 uses
  %24 = load double, ptr %23, align 8, !tbaa !9   ; 3 uses
  %25 = fcmp oge double %24, 0.000000e+00
  %26 = fneg double %24
  %27 = select i1 %25, double %24, double %26
  %28 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.il ; 2 uses
  %29 = load double, ptr %28, align 8, !tbaa !9
  %30 = call double @llvm.fmuladd.f64(double %27, double %i.hw, double %29)
  store double %30, ptr %28, align 8, !tbaa !9
  %31 = load double, ptr %23, align 8, !tbaa !9   ; 3 uses
  %32 = fcmp oge double %31, 0.000000e+00
  %33 = fneg double %31
  %34 = select i1 %32, double %31, double %33
  %gep583.prol = getelementptr [8 x i8], ptr %invariant.gep582, i64 %i.il
  %35 = load double, ptr %gep583.prol, align 8, !tbaa !9 ; 3 uses
  %36 = fcmp oge double %35, 0.000000e+00
  %37 = fneg double %35
  %38 = select i1 %36, double %35, double %37
  %39 = call double @llvm.fmuladd.f64(double %34, double %38, double 0.000000e+00) ; 2 uses
  %indvars.iv.next514.prol = add nuw nsw i64 %i.il, 1
  br label %.prol.loopexit718

.prol.loopexit718:                                ; preds = %.prol.loopexit718.unr-lcssa, %.lr.ph455
  %indvars.iv513.unr = phi i64 [ %i.il, %.lr.ph455 ], [ %indvars.iv.next514.prol, %.prol.loopexit718.unr-lcssa ]
  %.1387453.unr = phi double [ 0.000000e+00, %.lr.ph455 ], [ %39, %.prol.loopexit718.unr-lcssa ]
  %.lcssa707.unr = phi double [ poison, %.lr.ph455 ], [ %39, %.prol.loopexit718.unr-lcssa ]
  %40 = icmp eq i64 %reass.sub, 2
  br i1 %40, label %._crit_edge456.loopexit, label %bb.r

bb.r:                                             ; preds = %.prol.loopexit718, %bb.r
  %indvars.iv513 = phi i64 [ %indvars.iv.next514.a, %bb.r ], [ %indvars.iv513.unr, %.prol.loopexit718 ] ; 6 uses
  %.1387453 = phi double [ %i.je, %bb.r ], [ %.1387453.unr, %.prol.loopexit718 ]
  %41 = add i64 %.reass450, %indvars.iv513
  %sext = shl i64 %41, 32
  %42 = ashr exact i64 %sext, 29
  %43 = getelementptr inbounds i8, ptr %i.h, i64 %42 ; 2 uses
  %44 = load double, ptr %43, align 8, !tbaa !9   ; 3 uses
  %45 = fcmp oge double %44, 0.000000e+00
  %46 = fneg double %44
  %47 = select i1 %45, double %44, double %46
  %48 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv513 ; 2 uses
  %49 = load double, ptr %48, align 8, !tbaa !9
  %50 = call double @llvm.fmuladd.f64(double %47, double %i.hw, double %49)
  store double %50, ptr %48, align 8, !tbaa !9
  %51 = load double, ptr %43, align 8, !tbaa !9   ; 3 uses
  %52 = fcmp oge double %51, 0.000000e+00
  %53 = fneg double %51
  %54 = select i1 %52, double %51, double %53
  %gep583 = getelementptr [8 x i8], ptr %invariant.gep582, i64 %indvars.iv513
  %55 = load double, ptr %gep583, align 8, !tbaa !9 ; 3 uses
  %56 = fcmp oge double %55, 0.000000e+00
  %57 = fneg double %55
  %58 = select i1 %56, double %55, double %57
  %59 = call double @llvm.fmuladd.f64(double %54, double %58, double %.1387453)
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 3 uses
  %i.im = add i64 %.reass450, %indvars.iv.next514
  %sext.a = shl i64 %i.im, 32
  %i.in = ashr exact i64 %sext.a, 29
  %i.io = getelementptr inbounds i8, ptr %i.h, i64 %i.in ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !9 ; 3 uses
  %i.iq = fcmp oge double %i.ip, 0.000000e+00
  %i.ir = fneg double %i.ip
  %i.is = select i1 %i.iq, double %i.ip, double %i.ir
  %i.it = getelementptr [8 x i8], ptr %14, i64 %indvars.iv513 ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !9
  %i.iv = call double @llvm.fmuladd.f64(double %i.is, double %i.hw, double %i.iu)
  store double %i.iv, ptr %i.it, align 8, !tbaa !9
  %i.iw = load double, ptr %i.io, align 8, !tbaa !9 ; 3 uses
  %i.ix = fcmp oge double %i.iw, 0.000000e+00
  %i.iy = fneg double %i.iw
  %i.iz = select i1 %i.ix, double %i.iw, double %i.iy
  %gep583.a = getelementptr [8 x i8], ptr %invariant.gep582, i64 %indvars.iv.next514
  %i.ja = load double, ptr %gep583.a, align 8, !tbaa !9 ; 3 uses
  %i.jb = fcmp oge double %i.ja, 0.000000e+00
  %i.jc = fneg double %i.ja
  %i.jd = select i1 %i.jb, double %i.ja, double %i.jc
  %i.je = call double @llvm.fmuladd.f64(double %i.iz, double %i.jd, double %59) ; 2 uses
  %indvars.iv.next514.a = add nuw nsw i64 %indvars.iv513, 2
  %.not418.not = icmp slt i64 %indvars.iv.next514, %i.ik
  br i1 %.not418.not, label %bb.r, label %._crit_edge456.loopexit, !llvm.loop !22

._crit_edge456.loopexit:                          ; preds = %bb.r, %.prol.loopexit718
  %.lcssa707 = phi double [ %.lcssa707.unr, %.prol.loopexit718 ], [ %i.je, %bb.r ]
  %.pre = load double, ptr %i.ie, align 8, !tbaa !9
  br label %._crit_edge456

._crit_edge456:                                   ; preds = %._crit_edge456.loopexit, %bb.q
  %i.jf = phi double [ %i.ig, %bb.q ], [ %.pre, %._crit_edge456.loopexit ]
  %.1387.lcssa = phi double [ 0.000000e+00, %bb.q ], [ %.lcssa707, %._crit_edge456.loopexit ]
  %i.jg = fadd double %.1387.lcssa, %i.jf
  store double %i.jg, ptr %i.ie, align 8, !tbaa !9
  %indvars.iv.next512 = add nuw i32 %indvars.iv511, 1
  %exitcond520.not = icmp eq i64 %indvars.iv.next517, %wide.trip.count519
  %indvar.next720 = add i32 %indvar719, 1
  %indvar.next722 = add i64 %indvar721, 1
  br i1 %exitcond520.not, label %.lr.ph465.preheader, label %bb.q, !llvm.loop !23

.lr.ph465.preheader:                              ; preds = %._crit_edge445, %._crit_edge456
  %i.jh = zext nneg i32 %i.bw to i64              ; 2 uses
  %invariant.gep586 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.jh ; 3 uses
  %invariant.gep588 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.jh ; 3 uses
  %i.ji = zext nneg i32 %i.bw to i64              ; 2 uses
  %xtraiter717 = and i64 %i.ji, 1
  %i.jj = icmp eq i32 %i.bx, 2
  br i1 %i.jj, label %.lr.ph465.epil.preheader, label %.lr.ph465.preheader.new

.lr.ph465.preheader.new:                          ; preds = %.lr.ph465.preheader
  %unroll_iter = and i64 %i.ji, 2147483646
  br label %.lr.ph465

.lr.ph465:                                        ; preds = %bb.w, %.lr.ph465.preheader.new
  %indvars.iv521 = phi i64 [ 1, %.lr.ph465.preheader.new ], [ %indvars.iv.next522.1, %bb.w ] ; 6 uses
  %.2463 = phi double [ 0.000000e+00, %.lr.ph465.preheader.new ], [ %i.kr, %bb.w ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph465.preheader.new ], [ %niter.next.1, %bb.w ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv521
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !9 ; 3 uses
  %i.jm = fcmp ogt double %i.jl, %i.at
  br i1 %i.jm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph465
  %gep589 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep588, i64 %indvars.iv521
  %i.jn = load double, ptr %gep589, align 8, !tbaa !9 ; 3 uses
  %i.jo = fcmp oge double %i.jn, 0.000000e+00
  %i.jp = fneg double %i.jn
  %i.jq = select i1 %i.jo, double %i.jn, double %i.jp
  %i.jr = fdiv double %i.jq, %i.jl
  br label %.lr.ph465.1

bb.t:                                             ; preds = %.lr.ph465
  %gep587 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep586, i64 %indvars.iv521
  %i.js = load double, ptr %gep587, align 8, !tbaa !9 ; 3 uses
  %i.jt = fcmp oge double %i.js, 0.000000e+00
  %i.ju = fneg double %i.js
  %i.jv = select i1 %i.jt, double %i.js, double %i.ju
  %i.jw = fadd double %i.as, %i.jv
  %i.jx = fadd double %i.as, %i.jl
  %i.jy = fdiv double %i.jw, %i.jx
  br label %.lr.ph465.1

.lr.ph465.1:                                      ; preds = %bb.s, %bb.t
  %.sink602 = phi double [ %i.jr, %bb.s ], [ %i.jy, %bb.t ] ; 2 uses
  %i.jz = fcmp oge double %.2463, %.sink602
  %i.ka = select i1 %i.jz, double %.2463, double %.sink602 ; 2 uses
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %i.kb = getelementptr [8 x i8], ptr %14, i64 %indvars.iv521
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !9 ; 3 uses
  %i.kd = fcmp ogt double %i.kc, %i.at
  br i1 %i.kd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph465.1
  %gep587.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep586, i64 %indvars.iv.next522
  %i.ke = load double, ptr %gep587.1, align 8, !tbaa !9 ; 3 uses
  %i.kf = fcmp oge double %i.ke, 0.000000e+00
  %i.kg = fneg double %i.ke
  %i.kh = select i1 %i.kf, double %i.ke, double %i.kg
  %i.ki = fadd double %i.as, %i.kh
  %i.kj = fadd double %i.as, %i.kc
  %i.kk = fdiv double %i.ki, %i.kj
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph465.1
  %gep589.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep588, i64 %indvars.iv.next522
  %i.kl = load double, ptr %gep589.1, align 8, !tbaa !9 ; 3 uses
  %i.km = fcmp oge double %i.kl, 0.000000e+00
  %i.kn = fneg double %i.kl
  %i.ko = select i1 %i.km, double %i.kl, double %i.kn
  %i.kp = fdiv double %i.ko, %i.kc
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink602.1 = phi double [ %i.kp, %bb.v ], [ %i.kk, %bb.u ] ; 2 uses
  %i.kq = fcmp oge double %i.ka, %.sink602.1
  %i.kr = select i1 %i.kq, double %i.ka, double %.sink602.1 ; 3 uses
  %indvars.iv.next522.1 = add nuw nsw i64 %indvars.iv521, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge466.loopexit.unr-lcssa, label %.lr.ph465, !llvm.loop !24

._crit_edge466.loopexit.unr-lcssa:                ; preds = %bb.w
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  br i1 %lcmp.mod718.not, label %._crit_edge466, label %.lr.ph465.epil.preheader

.lr.ph465.epil.preheader:                         ; preds = %._crit_edge466.loopexit.unr-lcssa, %.lr.ph465.preheader
  %indvars.iv521.epil.init = phi i64 [ 1, %.lr.ph465.preheader ], [ %indvars.iv.next522.1, %._crit_edge466.loopexit.unr-lcssa ] ; 3 uses
  %.2463.epil.init = phi double [ 0.000000e+00, %.lr.ph465.preheader ], [ %i.kr, %._crit_edge466.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod720 = trunc i32 %i.bw to i1
  call void @llvm.assume(i1 %lcmp.mod720)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv521.epil.init
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !9 ; 3 uses
  %i.ku = fcmp ogt double %i.kt, %i.at
  br i1 %i.ku, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph465.epil.preheader
  %gep587.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep586, i64 %indvars.iv521.epil.init
  %i.kv = load double, ptr %gep587.epil, align 8, !tbaa !9 ; 3 uses
  %i.kw = fcmp oge double %i.kv, 0.000000e+00
  %i.kx = fneg double %i.kv
  %i.ky = select i1 %i.kw, double %i.kv, double %i.kx
  %i.kz = fadd double %i.as, %i.ky
  %i.la = fadd double %i.as, %i.kt
  %i.lb = fdiv double %i.kz, %i.la
  br label %._crit_edge466.loopexit.epilog-lcssa

bb.y:                                             ; preds = %.lr.ph465.epil.preheader
  %gep589.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep588, i64 %indvars.iv521.epil.init
  %i.lc = load double, ptr %gep589.epil, align 8, !tbaa !9 ; 3 uses
  %i.ld = fcmp oge double %i.lc, 0.000000e+00
  %i.le = fneg double %i.lc
  %i.lf = select i1 %i.ld, double %i.lc, double %i.le
  %i.lg = fdiv double %i.lf, %i.kt
  br label %._crit_edge466.loopexit.epilog-lcssa

._crit_edge466.loopexit.epilog-lcssa:             ; preds = %bb.y, %bb.x
  %.sink602.epil = phi double [ %i.lg, %bb.y ], [ %i.lb, %bb.x ] ; 2 uses
  %i.lh = fcmp oge double %.2463.epil.init, %.sink602.epil
  %i.li = select i1 %i.lh, double %.2463.epil.init, double %.sink602.epil
  br label %._crit_edge466

._crit_edge466:                                   ; preds = %._crit_edge466.loopexit.epilog-lcssa, %._crit_edge466.loopexit.unr-lcssa, %bb.o
  %.2.lcssa = phi double [ 0.000000e+00, %bb.o ], [ %i.kr, %._crit_edge466.loopexit.unr-lcssa ], [ %i.li, %._crit_edge466.loopexit.epilog-lcssa ] ; 3 uses
  store double %.2.lcssa, ptr %i.bh, align 8, !tbaa !9
  %i.lj = fcmp ogt double %.2.lcssa, %i.ap
  br i1 %i.lj, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %._crit_edge466
  %i.lk = fmul double %.2.lcssa, 2.000000e+00
  %i.ll = fcmp ole double %i.lk, %.0
  %i.lm = icmp samesign ult i32 %.0385, 6
  %or.cond = select i1 %i.ll, i1 %i.lm, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ln = sext i32 %i.bw to i64
  %i.lo = getelementptr [8 x i8], ptr %i.q, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lo, i64 8
  call void @dpbtrs_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @c__1, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.lp, ptr noundef nonnull %1, ptr noundef nonnull %16) #7
  %i.lq = load i32, ptr %1, align 4, !tbaa !8
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr [8 x i8], ptr %i.q, i64 %i.lr
  %i.lt = getelementptr i8, ptr %i.ls, i64 8
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull @c_b14, ptr noundef %i.lt, ptr noundef nonnull @c__1, ptr noundef %i.bn, ptr noundef nonnull @c__1) #7
  %i.lu = load double, ptr %i.bh, align 8, !tbaa !9
  %i.lv = add nuw nsw i32 %.0385, 1
  br label %bb.o

bb.ab:                                            ; preds = %bb.z, %._crit_edge466
  br i1 %.not415438, label %._crit_edge472, label %.lr.ph471.preheader

.lr.ph471.preheader:                              ; preds = %bb.ab
  %i.lw = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.lx = add nuw i32 %i.bw, 1
  %wide.trip.count530 = zext i32 %i.lx to i64
  %invariant.gep590 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.lw ; 2 uses
  %invariant.gep592 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.lw ; 2 uses
  %i.ly = zext nneg i32 %i.bw to i64              ; 2 uses
  %min.iters.check656 = icmp ult i32 %i.bw, 8
  br i1 %min.iters.check656, label %.lr.ph471.preheader706, label %vector.ph657

vector.ph657:                                     ; preds = %.lr.ph471.preheader
  %n.vec658 = and i64 %i.ly, 2147483640           ; 3 uses
  %i.lz = or disjoint i64 %n.vec658, 1
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph657
  %index664 = phi i64 [ 0, %vector.ph657 ], [ %index.next671, %vector.body663 ] ; 3 uses
  %i.ma = or disjoint i64 %index664, 1            ; 2 uses
  %i.mb = getelementptr [8 x i8], ptr %14, i64 %index664 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32 ; 2 uses
  %wide.load665 = load <4 x double>, ptr %i.mb, align 8, !tbaa !9 ; 3 uses
  %wide.load666 = load <4 x double>, ptr %i.mc, align 8, !tbaa !9 ; 3 uses
  %i.md = fcmp ogt <4 x double> %wide.load665, %broadcast.splat ; 3 uses
  %i.me = fcmp ogt <4 x double> %wide.load666, %broadcast.splat ; 3 uses
  %i.mf = xor <4 x i1> %i.md, splat (i1 true)
  %i.mg = xor <4 x i1> %i.me, splat (i1 true)
  %i.mh = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.ma ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 32
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.mh, <4 x i1> %i.mf, <4 x double> poison), !tbaa !9 ; 3 uses
  %wide.masked.load667 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.mi, <4 x i1> %i.mg, <4 x double> poison), !tbaa !9 ; 3 uses
  %i.mj = fcmp oge <4 x double> %wide.masked.load, zeroinitializer
  %i.mk = fcmp oge <4 x double> %wide.masked.load667, zeroinitializer
  %i.ml = fneg <4 x double> %wide.masked.load
  %i.mm = fneg <4 x double> %wide.masked.load667
  %i.mn = select <4 x i1> %i.mj, <4 x double> %wide.masked.load, <4 x double> %i.ml
  %i.mo = select <4 x i1> %i.mk, <4 x double> %wide.masked.load667, <4 x double> %i.mm
  %i.mp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat660, <4 x double> %wide.load665, <4 x double> %i.mn)
  %i.mq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat660, <4 x double> %wide.load666, <4 x double> %i.mo)
  %i.mr = fadd <4 x double> %broadcast.splat662, %i.mp
  %i.ms = fadd <4 x double> %broadcast.splat662, %i.mq
  %i.mt = getelementptr [8 x i8], ptr %invariant.gep592, i64 %i.ma ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 32
  %wide.masked.load668 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.mt, <4 x i1> %i.md, <4 x double> poison), !tbaa !9 ; 3 uses
  %wide.masked.load669 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.mu, <4 x i1> %i.me, <4 x double> poison), !tbaa !9 ; 3 uses
  %i.mv = fcmp oge <4 x double> %wide.masked.load668, zeroinitializer
  %i.mw = fcmp oge <4 x double> %wide.masked.load669, zeroinitializer
  %i.mx = fneg <4 x double> %wide.masked.load668
end_hunk_0
begin_hunk_1_@dpbrfs_:bb.a
vec.epilog.ph646:                                 ; preds = %vector.main.loop.iter.check624, %vec.epilog.iter.check644
  %vec.epilog.resume.val641 = phi i64 [ %n.vec627, %vec.epilog.iter.check644 ], [ 0, %vector.main.loop.iter.check624 ]
  %n.vec647 = and i64 %i.pn, 2147483644           ; 3 uses
  %i.qe = or disjoint i64 %n.vec647, 1
  br label %vec.epilog.vector.body648

vec.epilog.vector.body648:                        ; preds = %vec.epilog.vector.body648, %vec.epilog.ph646
  %index649 = phi i64 [ %vec.epilog.resume.val641, %vec.epilog.ph646 ], [ %index.next652, %vec.epilog.vector.body648 ] ; 3 uses
  %i.qf = getelementptr [8 x i8], ptr %14, i64 %index649
  %wide.load650 = load <4 x double>, ptr %i.qf, align 8, !tbaa !9
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep594, i64 %index649
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 2 uses
  %wide.load651 = load <4 x double>, ptr %i.qh, align 8, !tbaa !9
  %i.qi = fmul <4 x double> %wide.load650, %wide.load651
  store <4 x double> %i.qi, ptr %i.qh, align 8, !tbaa !9
  %index.next652 = add nuw i64 %index649, 4       ; 2 uses
  %i.qj = icmp eq i64 %index.next652, %n.vec647
  br i1 %i.qj, label %vec.epilog.middle.block653, label %vec.epilog.vector.body648, !llvm.loop !31

vec.epilog.middle.block653:                       ; preds = %vec.epilog.vector.body648
  %cmp.n654 = icmp eq i64 %n.vec647, %i.pn
  br i1 %cmp.n654, label %._crit_edge477, label %.lr.ph476.preheader

.lr.ph476.preheader:                              ; preds = %iter.check642, %vec.epilog.iter.check644, %vec.epilog.middle.block653
  %indvars.iv532.ph = phi i64 [ 1, %iter.check642 ], [ %i.pp, %vec.epilog.iter.check644 ], [ %i.qe, %vec.epilog.middle.block653 ]
  br label %.lr.ph476

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %.lr.ph476
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph476 ], [ %indvars.iv532.ph, %.lr.ph476.preheader ] ; 3 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv532
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !9
  %gep595 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep594, i64 %indvars.iv532 ; 2 uses
  %i.qm = load double, ptr %gep595, align 8, !tbaa !9
  %i.qn = fmul double %i.ql, %i.qm
  store double %i.qn, ptr %gep595, align 8, !tbaa !9
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1 ; 2 uses
  %exitcond536.not = icmp eq i64 %indvars.iv.next533, %wide.trip.count535
  br i1 %exitcond536.not, label %._crit_edge477, label %.lr.ph476, !llvm.loop !32

._crit_edge477:                                   ; preds = %.lr.ph476, %middle.block639, %vec.epilog.middle.block653, %bb.ah
  %i.qo = sext i32 %i.pk to i64
  %i.qp = getelementptr [8 x i8], ptr %i.q, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qp, i64 8
  call void @dpbtrs_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @c__1, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.qq, ptr noundef nonnull %1, ptr noundef nonnull %16) #7
  br label %.loopexit430

.loopexit430:                                     ; preds = %.lr.ph481, %middle.block, %vec.epilog.middle.block, %bb.ag, %bb.af, %._crit_edge477
  %.pre553 = load i32, ptr %1, align 4, !tbaa !8
  br label %bb.af

bb.ai:                                            ; preds = %bb.af
  %i.qr = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %.not423482 = icmp slt i32 %i.qr, 1
  br i1 %.not423482, label %._crit_edge487.thread, label %.lr.ph486.preheader

.lr.ph486.preheader:                              ; preds = %bb.ai
  %invariant.gep598 = getelementptr [8 x i8], ptr %i.n, i64 %i.bl ; 5 uses
  %i.qs = zext nneg i32 %i.qr to i64              ; 2 uses
  %xtraiter721 = and i64 %i.qs, 3                 ; 3 uses
  %i.qt = icmp ult i32 %i.qr, 4
  br i1 %i.qt, label %.lr.ph486.epil.preheader, label %.lr.ph486.preheader.new

.lr.ph486.preheader.new:                          ; preds = %.lr.ph486.preheader
  %unroll_iter725 = and i64 %i.qs, 2147483644
  br label %.lr.ph486

.lr.ph486:                                        ; preds = %.lr.ph486, %.lr.ph486.preheader.new
  %indvars.iv542 = phi i64 [ 1, %.lr.ph486.preheader.new ], [ %indvars.iv.next543.3, %.lr.ph486 ] ; 5 uses
  %.1484 = phi double [ 0.000000e+00, %.lr.ph486.preheader.new ], [ %i.ru, %.lr.ph486 ] ; 2 uses
  %niter726 = phi i64 [ 0, %.lr.ph486.preheader.new ], [ %niter726.next.3, %.lr.ph486 ]
  %gep599 = getelementptr [8 x i8], ptr %invariant.gep598, i64 %indvars.iv542
  %i.qu = load double, ptr %gep599, align 8, !tbaa !9 ; 3 uses
  %i.qv = fcmp oge double %i.qu, 0.000000e+00
  %i.qw = fneg double %i.qu
  %i.qx = select i1 %i.qv, double %i.qu, double %i.qw ; 2 uses
  %i.qy = fcmp oge double %.1484, %i.qx
  %i.qz = select i1 %i.qy, double %.1484, double %i.qx ; 2 uses
  %i.ra = getelementptr [8 x i8], ptr %invariant.gep598, i64 %indvars.iv542
  %gep599.1 = getelementptr i8, ptr %i.ra, i64 8
  %i.rb = load double, ptr %gep599.1, align 8, !tbaa !9 ; 3 uses
  %i.rc = fcmp oge double %i.rb, 0.000000e+00
  %i.rd = fneg double %i.rb
  %i.re = select i1 %i.rc, double %i.rb, double %i.rd ; 2 uses
  %i.rf = fcmp oge double %i.qz, %i.re
  %i.rg = select i1 %i.rf, double %i.qz, double %i.re ; 2 uses
  %i.rh = getelementptr [8 x i8], ptr %invariant.gep598, i64 %indvars.iv542
  %gep599.2 = getelementptr i8, ptr %i.rh, i64 16
  %i.ri = load double, ptr %gep599.2, align 8, !tbaa !9 ; 3 uses
  %i.rj = fcmp oge double %i.ri, 0.000000e+00
  %i.rk = fneg double %i.ri
  %i.rl = select i1 %i.rj, double %i.ri, double %i.rk ; 2 uses
  %i.rm = fcmp oge double %i.rg, %i.rl
  %i.rn = select i1 %i.rm, double %i.rg, double %i.rl ; 2 uses
  %i.ro = getelementptr [8 x i8], ptr %invariant.gep598, i64 %indvars.iv542
  %gep599.3 = getelementptr i8, ptr %i.ro, i64 24
  %i.rp = load double, ptr %gep599.3, align 8, !tbaa !9 ; 3 uses
  %i.rq = fcmp oge double %i.rp, 0.000000e+00
  %i.rr = fneg double %i.rp
  %i.rs = select i1 %i.rq, double %i.rp, double %i.rr ; 2 uses
  %i.rt = fcmp oge double %i.rn, %i.rs
  %i.ru = select i1 %i.rt, double %i.rn, double %i.rs ; 3 uses
  %indvars.iv.next543.3 = add nuw nsw i64 %indvars.iv542, 4 ; 2 uses
  %niter726.next.3 = add i64 %niter726, 4         ; 2 uses
  %niter726.ncmp.3 = icmp eq i64 %niter726.next.3, %unroll_iter725
  br i1 %niter726.ncmp.3, label %._crit_edge487.unr-lcssa, label %.lr.ph486, !llvm.loop !33

._crit_edge487.unr-lcssa:                         ; preds = %.lr.ph486
  %lcmp.mod722.not = icmp eq i64 %xtraiter721, 0
  br i1 %lcmp.mod722.not, label %._crit_edge487, label %.lr.ph486.epil.preheader

.lr.ph486.epil.preheader:                         ; preds = %._crit_edge487.unr-lcssa, %.lr.ph486.preheader
  %indvars.iv542.epil.init = phi i64 [ 1, %.lr.ph486.preheader ], [ %indvars.iv.next543.3, %._crit_edge487.unr-lcssa ]
  %.1484.epil.init = phi double [ 0.000000e+00, %.lr.ph486.preheader ], [ %i.ru, %._crit_edge487.unr-lcssa ]
  %lcmp.mod724 = icmp ne i64 %xtraiter721, 0
  call void @llvm.assume(i1 %lcmp.mod724)
  br label %.lr.ph486.epil

.lr.ph486.epil:                                   ; preds = %.lr.ph486.epil, %.lr.ph486.epil.preheader
  %indvars.iv542.epil = phi i64 [ %indvars.iv542.epil.init, %.lr.ph486.epil.preheader ], [ %indvars.iv.next543.epil, %.lr.ph486.epil ] ; 2 uses
  %.1484.epil = phi double [ %.1484.epil.init, %.lr.ph486.epil.preheader ], [ %i.sa, %.lr.ph486.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph486.epil.preheader ], [ %epil.iter.next, %.lr.ph486.epil ]
  %gep599.epil = getelementptr [8 x i8], ptr %invariant.gep598, i64 %indvars.iv542.epil
  %i.rv = load double, ptr %gep599.epil, align 8, !tbaa !9 ; 3 uses
  %i.rw = fcmp oge double %i.rv, 0.000000e+00
  %i.rx = fneg double %i.rv
  %i.ry = select i1 %i.rw, double %i.rv, double %i.rx ; 2 uses
  %i.rz = fcmp oge double %.1484.epil, %i.ry
  %i.sa = select i1 %i.rz, double %.1484.epil, double %i.ry ; 2 uses
  %indvars.iv.next543.epil = add nuw nsw i64 %indvars.iv542.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter721
  br i1 %epil.iter.cmp.not, label %._crit_edge487, label %.lr.ph486.epil, !llvm.loop !34

._crit_edge487:                                   ; preds = %.lr.ph486.epil, %._crit_edge487.unr-lcssa
  %.lcssa710 = phi double [ %i.ru, %._crit_edge487.unr-lcssa ], [ %i.sa, %.lr.ph486.epil ] ; 2 uses
  %i.sb = fcmp une double %.lcssa710, 0.000000e+00
  br i1 %i.sb, label %bb.aj, label %._crit_edge487.thread

bb.aj:                                            ; preds = %._crit_edge487
  %i.sc = load double, ptr %i.ns, align 8, !tbaa !9
  %i.sd = fdiv double %i.sc, %.lcssa710
  store double %i.sd, ptr %i.ns, align 8, !tbaa !9
  br label %._crit_edge487.thread

._crit_edge487.thread:                            ; preds = %bb.ai, %._crit_edge487, %bb.aj
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1
  %.not413.not = icmp samesign ult i64 %indvars.iv547, %i.az
  %indvar.next = add i64 %indvar, 1
  br i1 %.not413.not, label %.preheader434, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %._crit_edge487.thread, %bb.l, %.lr.ph494.preheader, %bb.n, %bb.m, %.thread
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

declare void @dsbmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dpbtrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacn2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12, !13, !14}
!26 = distinct !{!26, !12, !14, !13}
!27 = distinct !{!27, !12, !13, !14}
!28 = distinct !{!28, !12, !13, !14}
!29 = distinct !{!29, !12, !14, !13}
!30 = distinct !{!30, !12, !13, !14}
!31 = distinct !{!31, !12, !13, !14}
!32 = distinct !{!32, !12, !14, !13}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !12}
end_hunk_1
