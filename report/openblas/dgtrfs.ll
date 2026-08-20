loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DGTRFS\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@c__1 = internal global i32 1, align 4
@c_b18 = internal global double -1.000000e+00, align 8
@c_b19 = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dgtrfs_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef readonly captures(none) %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr nofree noundef captures(none) %16, ptr noundef %17, ptr noundef %18, ptr noundef initializes((0, 4)) %19) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [3 x i32], align 4                ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.f = getelementptr inbounds i8, ptr %3, i64 -8 ; 6 uses
  %i.g = getelementptr inbounds i8, ptr %4, i64 -8 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %5, i64 -8 ; 6 uses
  %i.i = load i32, ptr %12, align 4, !tbaa !8     ; 2 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64                  ; 3 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %11, i64 %i.j ; 4 uses
  %i.l = load i32, ptr %14, align 4, !tbaa !8     ; 2 uses
  %narrow466 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow466 to i64               ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %13, i64 %i.m ; 10 uses
  %i.o = getelementptr inbounds i8, ptr %15, i64 -8
  %i.p = getelementptr inbounds i8, ptr %16, i64 -8
  %i.q = getelementptr inbounds i8, ptr %17, i64 -8 ; 24 uses
  store i32 0, ptr %19, align 4, !tbaa !8
  %i.r = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #7
  %.not = icmp eq i32 %i.r, 0                     ; 4 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  %.not467 = icmp eq i32 %i.s, 0
  br i1 %.not467, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  %.not468 = icmp eq i32 %i.t, 0
  br i1 %.not468, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.u = load i32, ptr %1, align 4, !tbaa !8      ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %2, align 4, !tbaa !8      ; 3 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %12, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1) ; 2 uses
  %i.z = icmp slt i32 %i.y, %spec.select
  br i1 %i.z, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %14, align 4, !tbaa !8
  %i.ab = icmp slt i32 %i.aa, %spec.select
  br i1 %i.ab, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.pr = load i32, ptr %19, align 4, !tbaa !8     ; 2 uses
  %.not469 = icmp eq i32 %.pr, 0
  br i1 %.not469, label %bb.i, label %.thread

.thread.sink.split:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i32 [ -1, %bb.c ], [ -2, %bb.d ], [ -13, %bb.f ], [ -3, %bb.e ], [ -15, %bb.g ] ; 2 uses
  store i32 %.sink, ptr %19, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h
  %i.ac = phi i32 [ %.pr, %bb.h ], [ %.sink, %.thread.sink.split ]
  %i.ad = sub nsw i32 0, %i.ac
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !8
  %i.ae = call i32 @xerbla_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.af = icmp eq i32 %i.u, 0
  %.not481525 = icmp eq i32 %i.w, 0               ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not481525, label %.loopexit, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %.not481525, label %.loopexit, label %.lr.ph528.preheader

.lr.ph528.preheader:                              ; preds = %bb.k
  %i.ag = zext nneg i32 %i.w to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %i.ah, i1 false), !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr align 8 %16, i8 0, i64 %i.ah, i1 false), !tbaa !9
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %. = select i1 %.not, i8 84, i8 78
  %.483 = select i1 %.not, i8 78, i8 84
  store i8 %., ptr %i.d, align 1, !tbaa !11
  store i8 %.483, ptr %i.e, align 1, !tbaa !11
  %i.ai = tail call double @dlamch_(ptr noundef nonnull @.str.4) #7 ; 3 uses
  %i.aj = tail call double @dlamch_(ptr noundef nonnull @.str.5) #7
  %i.ak = fmul double %i.aj, 4.000000e+00         ; 9 uses
  %i.al = fdiv double %i.ak, %i.ai                ; 5 uses
  %i.am = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %.not471523 = icmp slt i32 %i.am, 1
  br i1 %.not471523, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.l
  %i.an = fmul double %i.ai, 4.000000e+00         ; 3 uses
  %i.ao = sext i32 %i.i to i64                    ; 5 uses
  %i.ap = sext i32 %i.l to i64                    ; 5 uses
  %i.aq = zext nneg i32 %i.am to i64
  %scevgep = getelementptr i8, ptr %17, i64 8     ; 5 uses
  %scevgep735 = getelementptr i8, ptr %17, i64 -8
  %20 = shl nsw i64 %i.ao, 3                      ; 2 uses
  %i.ar = shl nsw i64 %i.j, 3                     ; 2 uses
  %i.as = shl nsw i64 %i.ao, 3
  %scevgep740 = getelementptr i8, ptr %5, i64 -16
  %i.at = or i64 %i.ap, %i.m
  %i.au = shl nsw i64 %i.at, 3
  %i.av = shl nsw i64 %i.ap, 3
  %scevgep744 = getelementptr i8, ptr %4, i64 8
  %scevgep745 = getelementptr i8, ptr %4, i64 -8
  %scevgep747 = getelementptr i8, ptr %3, i64 8
  %scevgep748 = getelementptr i8, ptr %3, i64 -8
  %scevgep783 = getelementptr i8, ptr %17, i64 8  ; 5 uses
  %scevgep784 = getelementptr i8, ptr %17, i64 -8
  %21 = shl nsw i64 %i.ao, 3                      ; 2 uses
  %i.aw = shl nsw i64 %i.j, 3                     ; 2 uses
  %i.ax = shl nsw i64 %i.ao, 3
  %scevgep789 = getelementptr i8, ptr %3, i64 -16
  %i.ay = or i64 %i.ap, %i.m
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = shl nsw i64 %i.ap, 3
  %scevgep793 = getelementptr i8, ptr %4, i64 8
  %scevgep794 = getelementptr i8, ptr %4, i64 -8
  %scevgep796 = getelementptr i8, ptr %5, i64 8
  %scevgep797 = getelementptr i8, ptr %5, i64 -8
  %22 = getelementptr i8, ptr %11, i64 %21
  %23 = getelementptr i8, ptr %22, i64 %i.aw
  %24 = getelementptr i8, ptr %23, i64 16
  %25 = getelementptr i8, ptr %11, i64 %21
  %i.bb = getelementptr i8, ptr %25, i64 %i.aw
  %i.bc = getelementptr i8, ptr %13, i64 %i.az
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = getelementptr i8, ptr %11, i64 %20
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.ar
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = getelementptr i8, ptr %11, i64 %20
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.ar
  %i.bj = getelementptr i8, ptr %13, i64 %i.au
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.al, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert720 = insertelement <4 x double> poison, double %i.an, i64 0
  %broadcast.splat721 = shufflevector <4 x double> %broadcast.splatinsert720, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert722 = insertelement <4 x double> poison, double %i.ak, i64 0
  %broadcast.splat723 = shufflevector <4 x double> %broadcast.splatinsert722, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge521.thread
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %._crit_edge521.thread ] ; 5 uses
  %indvars.iv563 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next564, %._crit_edge521.thread ] ; 6 uses
  %i.bl = mul i64 %i.ax, %indvar                  ; 2 uses
  %scevgep786 = getelementptr i8, ptr %24, i64 %i.bl
  %scevgep787 = getelementptr i8, ptr %i.bb, i64 %i.bl
  %i.bm = mul i64 %i.ba, %indvar
  %scevgep791 = getelementptr i8, ptr %i.bd, i64 %i.bm ; 2 uses
  %i.bn = mul i64 %i.as, %indvar                  ; 2 uses
  %scevgep737 = getelementptr i8, ptr %i.bg, i64 %i.bn
  %scevgep738 = getelementptr i8, ptr %i.bi, i64 %i.bn
  %i.bo = mul i64 %i.av, %indvar
  %scevgep742 = getelementptr i8, ptr %i.bk, i64 %i.bo ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv563 ; 2 uses
  %i.bq = mul nsw i64 %indvars.iv563, %i.ao       ; 4 uses
  %i.br = getelementptr [8 x i8], ptr %i.k, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 8      ; 2 uses
  %i.bt = mul nsw i64 %indvars.iv563, %i.ap       ; 10 uses
  %i.bu = getelementptr [8 x i8], ptr %i.n, i64 %i.bt ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 8      ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 16     ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.bq ; 2 uses
  %invariant.gep592 = getelementptr [8 x i8], ptr %i.n, i64 %i.bt ; 2 uses
  %invariant.gep594 = getelementptr [8 x i8], ptr %i.n, i64 %i.bt ; 2 uses
  %invariant.gep596 = getelementptr [8 x i8], ptr %i.n, i64 %i.bt
  %invariant.gep598 = getelementptr [8 x i8], ptr %i.k, i64 %i.bq ; 2 uses
  %invariant.gep600 = getelementptr [8 x i8], ptr %i.n, i64 %i.bt ; 2 uses
  %invariant.gep602 = getelementptr [8 x i8], ptr %i.n, i64 %i.bt ; 2 uses
  %invariant.gep604 = getelementptr [8 x i8], ptr %i.n, i64 %i.bt
  %.sink633 = getelementptr [8 x i8], ptr %i.n, i64 %i.bt
  %.sink647 = getelementptr [8 x i8], ptr %i.n, i64 %i.bt
  %.sink659 = getelementptr [8 x i8], ptr %i.k, i64 %i.bq
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.z
  %.0451 = phi i32 [ %i.lf, %bb.z ], [ 1, %.preheader ] ; 2 uses
  %.0 = phi double [ %i.le, %bb.z ], [ 3.000000e+00, %.preheader ]
  %i.bx = load i32, ptr %1, align 4, !tbaa !8
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr [8 x i8], ptr %i.q, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.bs, ptr noundef nonnull @c__1, ptr noundef %i.ca, ptr noundef nonnull @c__1) #7
  %i.cb = load i32, ptr %1, align 4, !tbaa !8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr [8 x i8], ptr %i.q, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  call void @dlagtm_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b18, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %i.bv, ptr noundef nonnull %14, ptr noundef nonnull @c_b19, ptr noundef %i.ce, ptr noundef nonnull %1) #7
  %i.cf = load i32, ptr %1, align 4, !tbaa !8     ; 10 uses
  %i.cg = icmp eq i32 %i.cf, 1                    ; 2 uses
  %i.ch = load double, ptr %i.bs, align 8, !tbaa !9 ; 3 uses
  %i.ci = fcmp oge double %i.ch, 0.000000e+00
  %i.cj = fneg double %i.ch
  %i.ck = select i1 %i.ci, double %i.ch, double %i.cj
  %i.cl = load double, ptr %4, align 8, !tbaa !9
  %i.cm = load double, ptr %i.bv, align 8, !tbaa !9
  %i.cn = fmul double %i.cl, %i.cm                ; 3 uses
  %i.co = fcmp oge double %i.cn, 0.000000e+00
  %i.cp = fneg double %i.cn
  %i.cq = select i1 %i.co, double %i.cn, double %i.cp
  %i.cr = fadd double %i.ck, %i.cq                ; 3 uses
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.cg, label %.lr.ph500.preheader.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = load double, ptr %5, align 8, !tbaa !9
  %i.ct = load double, ptr %i.bw, align 8, !tbaa !9
  %i.cu = fmul double %i.cs, %i.ct                ; 3 uses
  %i.cv = fcmp oge double %i.cu, 0.000000e+00
  %i.cw = fneg double %i.cu
  %i.cx = select i1 %i.cv, double %i.cu, double %i.cw
  %i.cy = fadd double %i.cr, %i.cx
  store double %i.cy, ptr %17, align 8, !tbaa !9
  %.not473.not489 = icmp sgt i32 %i.cf, 2
  br i1 %.not473.not489, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %i.cf to i64   ; 3 uses
  %i.cz = add nsw i64 %wide.trip.count, -2        ; 3 uses
  %min.iters.check819 = icmp ult i64 %i.cz, 4
  br i1 %min.iters.check819, label %.lr.ph.preheader852, label %vector.memcheck782

vector.memcheck782:                               ; preds = %.lr.ph.preheader
  %i.da = shl nuw nsw i64 %wide.trip.count, 3     ; 6 uses
  %scevgep785 = getelementptr i8, ptr %scevgep784, i64 %i.da ; 5 uses
  %scevgep788 = getelementptr i8, ptr %scevgep787, i64 %i.da
  %scevgep790 = getelementptr i8, ptr %scevgep789, i64 %i.da
  %scevgep792 = getelementptr i8, ptr %scevgep791, i64 %i.da
  %scevgep795 = getelementptr i8, ptr %scevgep794, i64 %i.da
  %scevgep798 = getelementptr i8, ptr %scevgep797, i64 %i.da
  %bound0799 = icmp ult ptr %scevgep783, %scevgep788
  %bound1800 = icmp ult ptr %scevgep786, %scevgep785
  %found.conflict801 = and i1 %bound0799, %bound1800
  %bound0802 = icmp ult ptr %scevgep783, %scevgep790
  %bound1803 = icmp ult ptr %3, %scevgep785
  %found.conflict804 = and i1 %bound0802, %bound1803
  %conflict.rdx805 = or i1 %found.conflict801, %found.conflict804
  %bound0806 = icmp ult ptr %scevgep783, %scevgep792
  %bound1807 = icmp ult ptr %scevgep791, %scevgep785
  %found.conflict808 = and i1 %bound0806, %bound1807
  %conflict.rdx809 = or i1 %conflict.rdx805, %found.conflict808
  %bound0810 = icmp ult ptr %scevgep783, %scevgep795
  %bound1811 = icmp ult ptr %scevgep793, %scevgep785
  %found.conflict812 = and i1 %bound0810, %bound1811
  %conflict.rdx813 = or i1 %conflict.rdx809, %found.conflict812
  %bound0814 = icmp ult ptr %scevgep783, %scevgep798
  %bound1815 = icmp ult ptr %scevgep796, %scevgep785
  %found.conflict816 = and i1 %bound0814, %bound1815
  %conflict.rdx817 = or i1 %conflict.rdx813, %found.conflict816
  br i1 %conflict.rdx817, label %.lr.ph.preheader852, label %vector.ph820

vector.ph820:                                     ; preds = %vector.memcheck782
  %n.vec821 = and i64 %i.cz, -4                   ; 3 uses
  %i.db = or disjoint i64 %n.vec821, 2
  br label %vector.body822

vector.body822:                                   ; preds = %vector.body822, %vector.ph820
  %index823 = phi i64 [ 0, %vector.ph820 ], [ %index.next831, %vector.body822 ] ; 5 uses
  %i.dc = or disjoint i64 %index823, 2            ; 5 uses
  %i.dd = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dc
  %wide.load824 = load <4 x double>, ptr %i.dd, align 8, !tbaa !9, !alias.scope !12 ; 3 uses
  %i.de = fcmp oge <4 x double> %wide.load824, zeroinitializer
  %i.df = fneg <4 x double> %wide.load824
  %i.dg = select <4 x i1> %i.de, <4 x double> %wide.load824, <4 x double> %i.df
  %i.dh = getelementptr [8 x i8], ptr %3, i64 %index823
  %wide.load825 = load <4 x double>, ptr %i.dh, align 8, !tbaa !9, !alias.scope !15
  %i.di = getelementptr [8 x i8], ptr %invariant.gep592, i64 %index823
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %wide.load826 = load <4 x double>, ptr %i.dj, align 8, !tbaa !9, !alias.scope !17
  %i.dk = fmul <4 x double> %wide.load825, %wide.load826 ; 3 uses
  %i.dl = fcmp oge <4 x double> %i.dk, zeroinitializer
  %i.dm = fneg <4 x double> %i.dk
  %i.dn = select <4 x i1> %i.dl, <4 x double> %i.dk, <4 x double> %i.dm
  %i.do = fadd <4 x double> %i.dg, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dc
  %wide.load827 = load <4 x double>, ptr %i.dp, align 8, !tbaa !9, !alias.scope !19
  %i.dq = getelementptr [8 x i8], ptr %invariant.gep594, i64 %i.dc
  %wide.load828 = load <4 x double>, ptr %i.dq, align 8, !tbaa !9, !alias.scope !17
  %i.dr = fmul <4 x double> %wide.load827, %wide.load828 ; 3 uses
  %i.ds = fcmp oge <4 x double> %i.dr, zeroinitializer
  %i.dt = fneg <4 x double> %i.dr
  %i.du = select <4 x i1> %i.ds, <4 x double> %i.dr, <4 x double> %i.dt
  %i.dv = fadd <4 x double> %i.do, %i.du
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dc
  %wide.load829 = load <4 x double>, ptr %i.dw, align 8, !tbaa !9, !alias.scope !21
  %i.dx = getelementptr [8 x i8], ptr %invariant.gep596, i64 %index823
  %i.dy = getelementptr i8, ptr %i.dx, i64 24
  %wide.load830 = load <4 x double>, ptr %i.dy, align 8, !tbaa !9, !alias.scope !17
  %i.dz = fmul <4 x double> %wide.load829, %wide.load830 ; 3 uses
  %i.ea = fcmp oge <4 x double> %i.dz, zeroinitializer
  %i.eb = fneg <4 x double> %i.dz
  %i.ec = select <4 x i1> %i.ea, <4 x double> %i.dz, <4 x double> %i.eb
  %i.ed = fadd <4 x double> %i.dv, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dc
  store <4 x double> %i.ed, ptr %i.ee, align 8, !tbaa !9, !alias.scope !23, !noalias !25
  %index.next831 = add nuw i64 %index823, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next831, %n.vec821
  br i1 %i.ef, label %middle.block832, label %vector.body822, !llvm.loop !26

middle.block832:                                  ; preds = %vector.body822
  %cmp.n833 = icmp eq i64 %i.cz, %n.vec821
  br i1 %cmp.n833, label %._crit_edge, label %.lr.ph.preheader852

.lr.ph.preheader852:                              ; preds = %vector.memcheck782, %.lr.ph.preheader, %middle.block832
  %indvars.iv.ph = phi i64 [ 2, %vector.memcheck782 ], [ 2, %.lr.ph.preheader ], [ %i.db, %middle.block832 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader852, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader852 ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.eg = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !9
  %gep593 = getelementptr [8 x i8], ptr %invariant.gep592, i64 %i.eg
  %i.ej = load double, ptr %gep593, align 8, !tbaa !9
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.el = load double, ptr %i.ek, align 8, !tbaa !9
  %gep595 = getelementptr [8 x i8], ptr %invariant.gep594, i64 %indvars.iv
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.en = load double, ptr %i.em, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eo = load double, ptr %gep, align 8, !tbaa !9
  %i.ep = load <2 x double>, ptr %gep595, align 8, !tbaa !9
  %i.eq = insertelement <4 x double> poison, double %i.eo, i64 0
  %i.er = insertelement <4 x double> %i.eq, double %i.ei, i64 1
  %i.es = insertelement <4 x double> %i.er, double %i.el, i64 2
  %i.et = insertelement <4 x double> %i.es, double %i.en, i64 3
  %i.eu = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %i.ej, i64 1
  %i.ev = shufflevector <2 x double> %i.ep, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ew = shufflevector <4 x double> %i.eu, <4 x double> %i.ev, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ex = fmul <4 x double> %i.et, %i.ew          ; 3 uses
  %i.ey = fcmp oge <4 x double> %i.ex, zeroinitializer
  %i.ez = fneg <4 x double> %i.ex
  %i.fa = select <4 x i1> %i.ey, <4 x double> %i.ex, <4 x double> %i.ez ; 4 uses
  %shift = shufflevector <4 x double> %i.fa, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x double> %i.fa, %shift
  %shift836 = shufflevector <4 x double> %i.fa, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop837 = fadd <4 x double> %foldExtExtBinop, %shift836
  %shift839 = shufflevector <4 x double> %i.fa, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop840 = fadd <4 x double> %foldExtExtBinop837, %shift839
  %i.fb = extractelement <4 x double> %foldExtExtBinop840, i64 0
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store double %i.fb, ptr %i.fc, align 8, !tbaa !9
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

bb.p:                                             ; preds = %bb.m
  br i1 %i.cg, label %.lr.ph500.preheader.sink.split, label %bb.q

end_hunk_0
