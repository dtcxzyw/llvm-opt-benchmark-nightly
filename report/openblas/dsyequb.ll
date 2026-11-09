Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsyequb?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DSYEQUB\00", align 1
@c__1 = internal global i32 1, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"SAFEMIN\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: nounwind uwtable
define void @dsyequb_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr noundef %7, ptr nofree noundef captures(none) initializes((0, 4)) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.f = load i32, ptr %3, align 4, !tbaa !35     ; 8 uses
  %narrow = xor i32 %i.f, -1
  %i.g = sext i32 %narrow to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 13 uses
  %i.i = getelementptr inbounds i8, ptr %4, i64 -8 ; 37 uses
  %i.j = getelementptr inbounds i8, ptr %7, i64 -8 ; 32 uses
  store i32 0, ptr %8, align 4, !tbaa !35
  %i.k = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  %.not502 = icmp eq i32 %i.l, 0
  br i1 %.not502, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load i32, ptr %1, align 4, !tbaa !35     ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %3, align 4, !tbaa !35
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.m, i32 1)
  %i.p = icmp slt i32 %i.o, %spec.select
  br i1 %i.p, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.pr = load i32, ptr %8, align 4, !tbaa !35     ; 2 uses
  %.not503 = icmp eq i32 %.pr, 0
  br i1 %.not503, label %bb.f, label %.thread

.thread.sink.split:                               ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -4, %bb.d ] ; 2 uses
  store i32 %.sink, ptr %8, align 4, !tbaa !35
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %i.q = phi i32 [ %.pr, %bb.e ], [ %.sink, %.thread.sink.split ]
  %i.r = sub nsw i32 0, %i.q
  store i32 %i.r, ptr %i.c, align 4, !tbaa !35
  %i.s = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c, i32 noundef 7) #8 ; 0 uses
  br label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #8 ; 2 uses
  store double 0.000000e+00, ptr %6, align 8, !tbaa !37
  %i.u = load i32, ptr %1, align 4, !tbaa !35     ; 11 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double 1.000000e+00, ptr %5, align 8, !tbaa !37
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %.not504536 = icmp slt i32 %i.u, 1              ; 2 uses
  br i1 %.not504536, label %._crit_edge, label %._crit_edge.thread

._crit_edge:                                      ; preds = %bb.h
  %.not505 = icmp eq i32 %i.t, 0
  br label %.loopexit532

._crit_edge.thread:                               ; preds = %bb.h
  %i.w = zext nneg i32 %i.u to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %i.x, i1 false), !tbaa !37
  store double 0.000000e+00, ptr %6, align 8, !tbaa !37
  %.not505739 = icmp eq i32 %i.t, 0
  %i.y = sext i32 %i.f to i64                     ; 2 uses
  br i1 %.not505739, label %.lr.ph551.preheader, label %.preheader533.lr.ph

.preheader533.lr.ph:                              ; preds = %._crit_edge.thread
  %i.z = add i32 %i.f, 1
  %i.aa = add nuw i32 %i.u, 1
  %wide.trip.count636 = zext i32 %i.aa to i64
  br label %.preheader533

.preheader533:                                    ; preds = %.preheader533.lr.ph, %._crit_edge541
  %indvars.iv633 = phi i64 [ 1, %.preheader533.lr.ph ], [ %indvars.iv.next634, %._crit_edge541 ] ; 7 uses
  %.not523.not538 = icmp samesign ugt i64 %indvars.iv633, 1
  br i1 %.not523.not538, label %.lr.ph540, label %._crit_edge541

.lr.ph540:                                        ; preds = %.preheader533
  %i.ab = mul nsw i64 %indvars.iv633, %i.y
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv633 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.ab
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph540, %bb.i
  %indvars.iv = phi i64 [ 1, %.lr.ph540 ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !37 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.af = load double, ptr %gep, align 8, !tbaa !37 ; 3 uses
  %i.ag = fcmp oge double %i.af, 0.000000e+00
  %i.ah = fneg double %i.af
  %i.ai = select i1 %i.ag, double %i.af, double %i.ah ; 2 uses
  %i.aj = fcmp oge double %i.ae, %i.ai
  %i.ak = select i1 %i.aj, double %i.ae, double %i.ai
  store double %i.ak, ptr %i.ad, align 8, !tbaa !37
  %i.al = load double, ptr %i.ac, align 8, !tbaa !37 ; 2 uses
  %i.am = load double, ptr %gep, align 8, !tbaa !37 ; 3 uses
  %i.an = fcmp oge double %i.am, 0.000000e+00
  %i.ao = fneg double %i.am
  %i.ap = select i1 %i.an, double %i.am, double %i.ao ; 2 uses
  %i.aq = fcmp oge double %i.al, %i.ap
  %i.ar = select i1 %i.aq, double %i.al, double %i.ap
  store double %i.ar, ptr %i.ac, align 8, !tbaa !37
  %i.as = load double, ptr %6, align 8, !tbaa !37 ; 2 uses
  %i.at = load double, ptr %gep, align 8, !tbaa !37 ; 3 uses
  %i.au = fcmp oge double %i.at, 0.000000e+00
  %i.av = fneg double %i.at
  %i.aw = select i1 %i.au, double %i.at, double %i.av ; 2 uses
  %i.ax = fcmp oge double %i.as, %i.aw
  %i.ay = select i1 %i.ax, double %i.as, double %i.aw
  store double %i.ay, ptr %6, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv633
  br i1 %exitcond.not, label %._crit_edge541, label %bb.i, !llvm.loop !8

._crit_edge541:                                   ; preds = %bb.i, %.preheader533
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv633 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !37 ; 2 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv633 to i32
  %i.bc = mul i32 %i.z, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bd ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !37 ; 3 uses
  %i.bg = fcmp oge double %i.bf, 0.000000e+00
  %i.bh = fneg double %i.bf
  %i.bi = select i1 %i.bg, double %i.bf, double %i.bh ; 2 uses
  %i.bj = fcmp oge double %i.ba, %i.bi
  %i.bk = select i1 %i.bj, double %i.ba, double %i.bi
  store double %i.bk, ptr %i.az, align 8, !tbaa !37
  %i.bl = load double, ptr %6, align 8, !tbaa !37 ; 2 uses
  %i.bm = load double, ptr %i.be, align 8, !tbaa !37 ; 3 uses
  %i.bn = fcmp oge double %i.bm, 0.000000e+00
  %i.bo = fneg double %i.bm
  %i.bp = select i1 %i.bn, double %i.bm, double %i.bo ; 2 uses
  %i.bq = fcmp oge double %i.bl, %i.bp
  %i.br = select i1 %i.bq, double %i.bl, double %i.bp
  store double %i.br, ptr %6, align 8, !tbaa !37
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 2 uses
  %exitcond637.not = icmp eq i64 %indvars.iv.next634, %wide.trip.count636
  br i1 %exitcond637.not, label %.loopexit532, label %.preheader533, !llvm.loop !9

.lr.ph551.preheader:                              ; preds = %._crit_edge.thread
  %i.bs = add nuw i32 %i.u, 1                     ; 2 uses
  %i.bt = zext nneg i32 %i.u to i64
  %wide.trip.count = zext i32 %i.bs to i64
  br label %.lr.ph551

.loopexit531:                                     ; preds = %.lr.ph547, %.lr.ph551
  %indvars.iv.next639 = add nuw i32 %indvars.iv638, 1
  %exitcond647.not = icmp eq i64 %indvars.iv.next645, %wide.trip.count
  br i1 %exitcond647.not, label %.loopexit532, label %.lr.ph551, !llvm.loop !10

.lr.ph551:                                        ; preds = %.lr.ph551.preheader, %.loopexit531
  %indvars.iv644 = phi i64 [ 1, %.lr.ph551.preheader ], [ %indvars.iv.next645, %.loopexit531 ] ; 6 uses
  %indvars.iv638 = phi i32 [ 2, %.lr.ph551.preheader ], [ %indvars.iv.next639, %.loopexit531 ] ; 2 uses
  %indvars646 = trunc i64 %indvars.iv644 to i32
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv644 ; 4 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !37 ; 2 uses
  %i.bw = mul nsw i32 %i.f, %indvars646
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv644
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !37 ; 3 uses
  %i.cb = fcmp oge double %i.ca, 0.000000e+00
  %i.cc = fneg double %i.ca
  %i.cd = select i1 %i.cb, double %i.ca, double %i.cc ; 2 uses
  %i.ce = fcmp oge double %i.bv, %i.cd
  %i.cf = select i1 %i.ce, double %i.bv, double %i.cd
  store double %i.cf, ptr %i.bu, align 8, !tbaa !37
  %i.cg = load double, ptr %6, align 8, !tbaa !37 ; 2 uses
  %i.ch = load double, ptr %i.bz, align 8, !tbaa !37 ; 3 uses
  %i.ci = fcmp oge double %i.ch, 0.000000e+00
  %i.cj = fneg double %i.ch
  %i.ck = select i1 %i.ci, double %i.ch, double %i.cj ; 2 uses
  %i.cl = fcmp oge double %i.cg, %i.ck
  %i.cm = select i1 %i.cl, double %i.cg, double %i.ck
  store double %i.cm, ptr %6, align 8, !tbaa !37
  %indvars.iv.next645 = add nuw nsw i64 %indvars.iv644, 1 ; 2 uses
  %.not507544.not = icmp samesign ult i64 %indvars.iv644, %i.bt
  br i1 %.not507544.not, label %.lr.ph547.preheader, label %.loopexit531

.lr.ph547.preheader:                              ; preds = %.lr.ph551
  %i.cn = mul nsw i64 %indvars.iv644, %i.y
  %i.co = sext i32 %indvars.iv638 to i64
  %invariant.gep763 = getelementptr [8 x i8], ptr %i.h, i64 %i.cn
  br label %.lr.ph547

.lr.ph547:                                        ; preds = %.lr.ph547.preheader, %.lr.ph547
  %indvars.iv640 = phi i64 [ %i.co, %.lr.ph547.preheader ], [ %indvars.iv.next641, %.lr.ph547 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv640 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !37 ; 2 uses
  %gep764 = getelementptr [8 x i8], ptr %invariant.gep763, i64 %indvars.iv640 ; 3 uses
  %i.cr = load double, ptr %gep764, align 8, !tbaa !37 ; 3 uses
  %i.cs = fcmp oge double %i.cr, 0.000000e+00
  %i.ct = fneg double %i.cr
  %i.cu = select i1 %i.cs, double %i.cr, double %i.ct ; 2 uses
  %i.cv = fcmp oge double %i.cq, %i.cu
  %i.cw = select i1 %i.cv, double %i.cq, double %i.cu
  store double %i.cw, ptr %i.cp, align 8, !tbaa !37
  %i.cx = load double, ptr %i.bu, align 8, !tbaa !37 ; 2 uses
  %i.cy = load double, ptr %gep764, align 8, !tbaa !37 ; 3 uses
  %i.cz = fcmp oge double %i.cy, 0.000000e+00
  %i.da = fneg double %i.cy
  %i.db = select i1 %i.cz, double %i.cy, double %i.da ; 2 uses
  %i.dc = fcmp oge double %i.cx, %i.db
  %i.dd = select i1 %i.dc, double %i.cx, double %i.db
  store double %i.dd, ptr %i.bu, align 8, !tbaa !37
  %i.de = load double, ptr %6, align 8, !tbaa !37 ; 2 uses
  %i.df = load double, ptr %gep764, align 8, !tbaa !37 ; 3 uses
  %i.dg = fcmp oge double %i.df, 0.000000e+00
  %i.dh = fneg double %i.df
  %i.di = select i1 %i.dg, double %i.df, double %i.dh ; 2 uses
  %i.dj = fcmp oge double %i.de, %i.di
  %i.dk = select i1 %i.dj, double %i.de, double %i.di
  store double %i.dk, ptr %6, align 8, !tbaa !37
  %indvars.iv.next641 = add nsw i64 %indvars.iv640, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next641 to i32
  %exitcond643.not = icmp eq i32 %i.bs, %lftr.wideiv
  br i1 %exitcond643.not, label %.loopexit531, label %.lr.ph547, !llvm.loop !11

.loopexit532:                                     ; preds = %._crit_edge541, %.loopexit531, %._crit_edge
  %.not505740 = phi i1 [ %.not505, %._crit_edge ], [ true, %.loopexit531 ], [ false, %._crit_edge541 ] ; 2 uses
  br i1 %.not504536, label %._crit_edge556, label %iter.check

iter.check:                                       ; preds = %.loopexit532
  %i.dl = add nuw i32 %i.u, 1
  %wide.trip.count651 = zext i32 %i.dl to i64
  %i.dm = zext nneg i32 %i.u to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.u, 4
  br i1 %min.iters.check, label %.lr.ph555.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check789 = icmp ult i32 %i.u, 16
  br i1 %min.iters.check789, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %i.dm, 12
  %n.vec = and i64 %i.dm, 2147483632              ; 4 uses
  %i.do = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %4, i64 %index ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.dp, align 8, !tbaa !37
  %wide.load790 = load <4 x double>, ptr %i.dq, align 8, !tbaa !37
  %wide.load791 = load <4 x double>, ptr %i.dr, align 8, !tbaa !37
  %wide.load792 = load <4 x double>, ptr %i.ds, align 8, !tbaa !37
  %i.dt = fdiv <4 x double> splat (double 1.000000e+00), %wide.load
  %i.du = fdiv <4 x double> splat (double 1.000000e+00), %wide.load790
  %i.dv = fdiv <4 x double> splat (double 1.000000e+00), %wide.load791
  %i.dw = fdiv <4 x double> splat (double 1.000000e+00), %wide.load792
  store <4 x double> %i.dt, ptr %i.dp, align 8, !tbaa !37
  store <4 x double> %i.du, ptr %i.dq, align 8, !tbaa !37
  store <4 x double> %i.dv, ptr %i.dr, align 8, !tbaa !37
  store <4 x double> %i.dw, ptr %i.ds, align 8, !tbaa !37
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dm
  br i1 %cmp.n, label %._crit_edge556, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph555.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec793 = and i64 %i.dm, 2147483644           ; 3 uses
  %i.dy = or disjoint i64 %n.vec793, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index794 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next796, %vec.epilog.vector.body ] ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %4, i64 %index794 ; 2 uses
  %wide.load795 = load <4 x double>, ptr %i.dz, align 8, !tbaa !37
  %i.ea = fdiv <4 x double> splat (double 1.000000e+00), %wide.load795
  store <4 x double> %i.ea, ptr %i.dz, align 8, !tbaa !37
  %index.next796 = add nuw i64 %index794, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next796, %n.vec793
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n797 = icmp eq i64 %n.vec793, %i.dm
  br i1 %cmp.n797, label %._crit_edge556, label %.lr.ph555.preheader

.lr.ph555.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv648.ph = phi i64 [ 1, %iter.check ], [ %i.do, %vec.epilog.iter.check ], [ %i.dy, %vec.epilog.middle.block ]
  br label %.lr.ph555

.lr.ph555:                                        ; preds = %.lr.ph555.preheader, %.lr.ph555
  %indvars.iv648 = phi i64 [ %indvars.iv.next649, %.lr.ph555 ], [ %indvars.iv648.ph, %.lr.ph555.preheader ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv648 ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !37
  %i.ee = fdiv double 1.000000e+00, %i.ed
  store double %i.ee, ptr %i.ec, align 8, !tbaa !37
  %indvars.iv.next649 = add nuw nsw i64 %indvars.iv648, 1 ; 2 uses
  %exitcond652.not = icmp eq i64 %indvars.iv.next649, %wide.trip.count651
  br i1 %exitcond652.not, label %._crit_edge556, label %.lr.ph555, !llvm.loop !14

._crit_edge556:                                   ; preds = %.lr.ph555, %middle.block, %vec.epilog.middle.block, %.loopexit532
  %i.ef = sitofp i32 %i.u to double
  %i.eg = fmul nnan double %i.ef, 2.000000e+00
  %i.eh = tail call double @sqrt(double noundef %i.eg) #8
  %i.ei = fdiv double 1.000000e+00, %i.eh
  %i.ej = add i32 %i.f, 1
  %i.ek = sext i32 %i.f to i64                    ; 13 uses
  %.pre = load i32, ptr %1, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge556, %._crit_edge609
  %i.el = phi i32 [ %.pre, %._crit_edge556 ], [ %i.yv, %._crit_edge609 ] ; 13 uses
  %.0497611 = phi i32 [ 1, %._crit_edge556 ], [ %i.yw, %._crit_edge609 ]
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !37
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !37
  %.not510557 = icmp slt i32 %i.el, 1
  br i1 %.not510557, label %._crit_edge581, label %._crit_edge561.thread

._crit_edge561.thread:                            ; preds = %bb.j
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl nuw nsw i64 %i.em, 3
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.en, i1 false), !tbaa !37
  %i.eo = add nuw i32 %i.el, 1                    ; 3 uses
  br i1 %.not505740, label %.lr.ph575.preheader, label %.preheader528.preheader

.preheader528.preheader:                          ; preds = %._crit_edge561.thread
  %wide.trip.count664 = zext i32 %i.eo to i64
  br label %.preheader528

.preheader528:                                    ; preds = %.preheader528.preheader, %._crit_edge565
  %indvar = phi i64 [ 0, %.preheader528.preheader ], [ %indvar.next, %._crit_edge565 ] ; 5 uses
  %indvars.iv661 = phi i64 [ 1, %.preheader528.preheader ], [ %indvars.iv.next662, %._crit_edge565 ] ; 9 uses
  %.not522.not562 = icmp samesign ugt i64 %indvars.iv661, 1
  br i1 %.not522.not562, label %.lr.ph564, label %.preheader528.._crit_edge565_crit_edge

.preheader528.._crit_edge565_crit_edge:           ; preds = %.preheader528
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv661
  %.pre725 = load double, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %._crit_edge565

.lr.ph564:                                        ; preds = %.preheader528
  %i.ep = mul nsw i64 %indvars.iv661, %i.ek
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv661 ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv661 ; 6 uses
  %invariant.gep765 = getelementptr [8 x i8], ptr %i.h, i64 %i.ep ; 3 uses
  %xtraiter = and i64 %indvar, 1
  %i.es = icmp eq i64 %indvar, 1
  br i1 %i.es, label %.epil.preheader, label %.lr.ph564.new

.lr.ph564.new:                                    ; preds = %.lr.ph564
  %unroll_iter = and i64 %indvar, -2
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph564.new
  %indvars.iv656 = phi i64 [ 1, %.lr.ph564.new ], [ %indvars.iv.next657.1, %bb.k ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph564.new ], [ %niter.next.1, %bb.k ]
  %gep766 = getelementptr [8 x i8], ptr %invariant.gep765, i64 %indvars.iv656 ; 2 uses
  %i.et = load double, ptr %gep766, align 8, !tbaa !37 ; 3 uses
  %i.eu = fcmp oge double %i.et, 0.000000e+00
  %i.ev = fneg double %i.et
  %i.ew = select i1 %i.eu, double %i.et, double %i.ev
  %i.ex = load double, ptr %i.eq, align 8, !tbaa !37
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv656 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !37
  %i.fa = call double @llvm.fmuladd.f64(double %i.ew, double %i.ex, double %i.ez)
  store double %i.fa, ptr %i.ey, align 8, !tbaa !37
  %i.fb = load double, ptr %gep766, align 8, !tbaa !37 ; 3 uses
  %i.fc = fcmp oge double %i.fb, 0.000000e+00
  %i.fd = fneg double %i.fb
  %i.fe = select i1 %i.fc, double %i.fb, double %i.fd
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv656
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !37
  %i.fh = load double, ptr %i.er, align 8, !tbaa !37
  %i.fi = call double @llvm.fmuladd.f64(double %i.fe, double %i.fg, double %i.fh)
  store double %i.fi, ptr %i.er, align 8, !tbaa !37
  %i.fj = getelementptr [8 x i8], ptr %invariant.gep765, i64 %indvars.iv656
  %gep766.1 = getelementptr i8, ptr %i.fj, i64 8  ; 2 uses
  %i.fk = load double, ptr %gep766.1, align 8, !tbaa !37 ; 3 uses
  %i.fl = fcmp oge double %i.fk, 0.000000e+00
  %i.fm = fneg double %i.fk
  %i.fn = select i1 %i.fl, double %i.fk, double %i.fm
  %i.fo = load double, ptr %i.eq, align 8, !tbaa !37
  %i.fp = getelementptr [8 x i8], ptr %7, i64 %indvars.iv656 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !37
  %i.fr = call double @llvm.fmuladd.f64(double %i.fn, double %i.fo, double %i.fq)
  store double %i.fr, ptr %i.fp, align 8, !tbaa !37
  %i.fs = load double, ptr %gep766.1, align 8, !tbaa !37 ; 3 uses
  %i.ft = fcmp oge double %i.fs, 0.000000e+00
  %i.fu = fneg double %i.fs
  %i.fv = select i1 %i.ft, double %i.fs, double %i.fu
  %i.fw = getelementptr [8 x i8], ptr %4, i64 %indvars.iv656
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !37
  %i.fy = load double, ptr %i.er, align 8, !tbaa !37
  %i.fz = call double @llvm.fmuladd.f64(double %i.fv, double %i.fx, double %i.fy) ; 2 uses
  store double %i.fz, ptr %i.er, align 8, !tbaa !37
  %indvars.iv.next657.1 = add nuw nsw i64 %indvars.iv656, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge565.loopexit.unr-lcssa, label %bb.k, !llvm.loop !15

._crit_edge565.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge565, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge565.loopexit.unr-lcssa, %.lr.ph564
  %indvars.iv656.epil.init = phi i64 [ 1, %.lr.ph564 ], [ %indvars.iv.next657.1, %._crit_edge565.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod826 = trunc i64 %indvar to i1
  call void @llvm.assume(i1 %lcmp.mod826)
  %gep766.epil = getelementptr [8 x i8], ptr %invariant.gep765, i64 %indvars.iv656.epil.init ; 2 uses
  %i.ga = load double, ptr %gep766.epil, align 8, !tbaa !37 ; 3 uses
  %i.gb = fcmp oge double %i.ga, 0.000000e+00
  %i.gc = fneg double %i.ga
  %i.gd = select i1 %i.gb, double %i.ga, double %i.gc
  %i.ge = load double, ptr %i.eq, align 8, !tbaa !37
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv656.epil.init ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !37
  %i.gh = call double @llvm.fmuladd.f64(double %i.gd, double %i.ge, double %i.gg)
  store double %i.gh, ptr %i.gf, align 8, !tbaa !37
  %i.gi = load double, ptr %gep766.epil, align 8, !tbaa !37 ; 3 uses
  %i.gj = fcmp oge double %i.gi, 0.000000e+00
  %i.gk = fneg double %i.gi
  %i.gl = select i1 %i.gj, double %i.gi, double %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv656.epil.init
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !37
  %i.go = load double, ptr %i.er, align 8, !tbaa !37
  %i.gp = call double @llvm.fmuladd.f64(double %i.gl, double %i.gn, double %i.go) ; 2 uses
  store double %i.gp, ptr %i.er, align 8, !tbaa !37
  br label %._crit_edge565

._crit_edge565:                                   ; preds = %.epil.preheader, %._crit_edge565.loopexit.unr-lcssa, %.preheader528.._crit_edge565_crit_edge
  %i.gq = phi double [ %.pre725, %.preheader528.._crit_edge565_crit_edge ], [ %i.fz, %._crit_edge565.loopexit.unr-lcssa ], [ %i.gp, %.epil.preheader ]
  %i.gr = trunc nuw nsw i64 %indvars.iv661 to i32
  %i.gs = mul i32 %i.ej, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !37 ; 3 uses
  %i.gw = fcmp oge double %i.gv, 0.000000e+00
  %i.gx = fneg double %i.gv
  %i.gy = select i1 %i.gw, double %i.gv, double %i.gx
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv661
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !37
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv661
  %i.hc = call double @llvm.fmuladd.f64(double %i.gy, double %i.ha, double %i.gq)
  store double %i.hc, ptr %i.hb, align 8, !tbaa !37
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next662, %wide.trip.count664
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond665.not, label %.lr.ph580.preheader, label %.preheader528, !llvm.loop !16

.lr.ph575.preheader:                              ; preds = %._crit_edge561.thread
  %i.hd = zext nneg i32 %i.el to i64
  %wide.trip.count676 = zext i32 %i.eo to i64
  %i.he = add nsw i32 %i.el, -2
  br label %.lr.ph575

.loopexit527:                                     ; preds = %.lr.ph571.prol.loopexit, %.lr.ph571, %.lr.ph575
  %indvars.iv.next667 = add nuw i32 %indvars.iv666, 1
  %exitcond677.not = icmp eq i64 %indvars.iv.next674, %wide.trip.count676
  %indvar.next828 = add i32 %indvar827, 1
  br i1 %exitcond677.not, label %.lr.ph580.preheader, label %.lr.ph575, !llvm.loop !17

.lr.ph575:                                        ; preds = %.lr.ph575.preheader, %.loopexit527
  %indvar827 = phi i32 [ 0, %.lr.ph575.preheader ], [ %indvar.next828, %.loopexit527 ] ; 3 uses
  %indvars.iv673 = phi i64 [ 1, %.lr.ph575.preheader ], [ %indvars.iv.next674, %.loopexit527 ] ; 7 uses
  %indvars.iv666 = phi i32 [ 2, %.lr.ph575.preheader ], [ %indvars.iv.next667, %.loopexit527 ] ; 2 uses
  %indvars675 = trunc i64 %indvars.iv673 to i32
  %i.hf = mul nsw i32 %i.f, %indvars675
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv673
  %i.hi = getelementptr [8 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !37 ; 3 uses
  %i.hk = fcmp oge double %i.hj, 0.000000e+00
  %i.hl = fneg double %i.hj
  %i.hm = select i1 %i.hk, double %i.hj, double %i.hl
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv673 ; 4 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !37
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv673 ; 8 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !37
  %i.hr = call double @llvm.fmuladd.f64(double %i.hm, double %i.ho, double %i.hq)
  store double %i.hr, ptr %i.hp, align 8, !tbaa !37
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv673, 1 ; 2 uses
  %.not512568.not = icmp samesign ult i64 %indvars.iv673, %i.hd
  br i1 %.not512568.not, label %.lr.ph571.preheader, label %.loopexit527

.lr.ph571.preheader:                              ; preds = %.lr.ph575
  %i.hs = mul nsw i64 %indvars.iv673, %i.ek
  %i.ht = sext i32 %indvars.iv666 to i64          ; 5 uses
  %invariant.gep767 = getelementptr [8 x i8], ptr %i.h, i64 %i.hs ; 3 uses
  %i.hu = sub i32 %indvar827, %i.el
  %i.hv = and i32 %i.hu, 1
  %lcmp.mod830.not.not = icmp eq i32 %i.hv, 0
  br i1 %lcmp.mod830.not.not, label %.lr.ph571.prol, label %.lr.ph571.prol.loopexit

.lr.ph571.prol:                                   ; preds = %.lr.ph571.preheader
  %gep768.prol = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.ht ; 2 uses
  %i.hw = load double, ptr %gep768.prol, align 8, !tbaa !37 ; 3 uses
  %i.hx = fcmp oge double %i.hw, 0.000000e+00
  %i.hy = fneg double %i.hw
  %i.hz = select i1 %i.hx, double %i.hw, double %i.hy
  %i.ia = load double, ptr %i.hn, align 8, !tbaa !37
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ht ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !37
  %i.id = call double @llvm.fmuladd.f64(double %i.hz, double %i.ia, double %i.ic)
  store double %i.id, ptr %i.ib, align 8, !tbaa !37
  %i.ie = load double, ptr %gep768.prol, align 8, !tbaa !37 ; 3 uses
  %i.if = fcmp oge double %i.ie, 0.000000e+00
  %i.ig = fneg double %i.ie
  %i.ih = select i1 %i.if, double %i.ie, double %i.ig
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ht
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !37
  %i.ik = load double, ptr %i.hp, align 8, !tbaa !37
  %i.il = call double @llvm.fmuladd.f64(double %i.ih, double %i.ij, double %i.ik)
  store double %i.il, ptr %i.hp, align 8, !tbaa !37
  %indvars.iv.next669.prol = add nsw i64 %i.ht, 1
  br label %.lr.ph571.prol.loopexit

.lr.ph571.prol.loopexit:                          ; preds = %.lr.ph571.prol, %.lr.ph571.preheader
  %indvars.iv668.unr = phi i64 [ %i.ht, %.lr.ph571.preheader ], [ %indvars.iv.next669.prol, %.lr.ph571.prol ]
  %i.im = icmp eq i32 %i.he, %indvar827
  br i1 %i.im, label %.loopexit527, label %.lr.ph571

.lr.ph571:                                        ; preds = %.lr.ph571.prol.loopexit, %.lr.ph571
  %indvars.iv668 = phi i64 [ %indvars.iv.next669.1, %.lr.ph571 ], [ %indvars.iv668.unr, %.lr.ph571.prol.loopexit ] ; 7 uses
  %gep768 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %indvars.iv668 ; 2 uses
  %i.in = load double, ptr %gep768, align 8, !tbaa !37 ; 3 uses
  %i.io = fcmp oge double %i.in, 0.000000e+00
  %i.ip = fneg double %i.in
  %i.iq = select i1 %i.io, double %i.in, double %i.ip
  %i.ir = load double, ptr %i.hn, align 8, !tbaa !37
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv668 ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !37
  %i.iu = call double @llvm.fmuladd.f64(double %i.iq, double %i.ir, double %i.it)
  store double %i.iu, ptr %i.is, align 8, !tbaa !37
  %i.iv = load double, ptr %gep768, align 8, !tbaa !37 ; 3 uses
  %i.iw = fcmp oge double %i.iv, 0.000000e+00
  %i.ix = fneg double %i.iv
  %i.iy = select i1 %i.iw, double %i.iv, double %i.ix
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv668
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !37
  %i.jb = load double, ptr %i.hp, align 8, !tbaa !37
  %i.jc = call double @llvm.fmuladd.f64(double %i.iy, double %i.ja, double %i.jb)
  store double %i.jc, ptr %i.hp, align 8, !tbaa !37
  %i.jd = getelementptr [8 x i8], ptr %invariant.gep767, i64 %indvars.iv668
  %gep768.1 = getelementptr i8, ptr %i.jd, i64 8  ; 2 uses
  %i.je = load double, ptr %gep768.1, align 8, !tbaa !37 ; 3 uses
  %i.jf = fcmp oge double %i.je, 0.000000e+00
  %i.jg = fneg double %i.je
  %i.jh = select i1 %i.jf, double %i.je, double %i.jg
  %i.ji = load double, ptr %i.hn, align 8, !tbaa !37
  %i.jj = getelementptr [8 x i8], ptr %7, i64 %indvars.iv668 ; 2 uses
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !37
  %i.jl = call double @llvm.fmuladd.f64(double %i.jh, double %i.ji, double %i.jk)
  store double %i.jl, ptr %i.jj, align 8, !tbaa !37
  %i.jm = load double, ptr %gep768.1, align 8, !tbaa !37 ; 3 uses
  %i.jn = fcmp oge double %i.jm, 0.000000e+00
  %i.jo = fneg double %i.jm
  %i.jp = select i1 %i.jn, double %i.jm, double %i.jo
  %i.jq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv668
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !37
  %i.js = load double, ptr %i.hp, align 8, !tbaa !37
  %i.jt = call double @llvm.fmuladd.f64(double %i.jp, double %i.jr, double %i.js)
  store double %i.jt, ptr %i.hp, align 8, !tbaa !37
  %indvars.iv.next669.1 = add nsw i64 %indvars.iv668, 2 ; 2 uses
  %lftr.wideiv671.1 = trunc i64 %indvars.iv.next669.1 to i32
  %exitcond672.not.1 = icmp eq i32 %i.eo, %lftr.wideiv671.1
  br i1 %exitcond672.not.1, label %.loopexit527, label %.lr.ph571, !llvm.loop !18

.lr.ph580.preheader:                              ; preds = %._crit_edge565, %.loopexit527
  %i.ju = zext nneg i32 %i.el to i64              ; 2 uses
  %xtraiter831 = and i64 %i.ju, 7                 ; 3 uses
  %i.jv = icmp ult i32 %i.el, 8
  br i1 %i.jv, label %.lr.ph580.epil.preheader, label %.lr.ph580.preheader.new

.lr.ph580.preheader.new:                          ; preds = %.lr.ph580.preheader
  %unroll_iter835 = and i64 %i.ju, 2147483640
  br label %.lr.ph580

.lr.ph580:                                        ; preds = %.lr.ph580, %.lr.ph580.preheader.new
  %indvars.iv678 = phi i64 [ 1, %.lr.ph580.preheader.new ], [ %indvars.iv.next679.7, %.lr.ph580 ] ; 11 uses
  %.1578 = phi double [ 0.000000e+00, %.lr.ph580.preheader.new ], [ %i.lj, %.lr.ph580 ]
  %niter836 = phi i64 [ 0, %.lr.ph580.preheader.new ], [ %niter836.next.7, %.lr.ph580 ]
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv678
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !37
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv678
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !37
  %i.ka = call double @llvm.fmuladd.f64(double %i.jx, double %i.jz, double %.1578)
  %i.kb = getelementptr [8 x i8], ptr %4, i64 %indvars.iv678
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !37
  %i.kd = getelementptr [8 x i8], ptr %7, i64 %indvars.iv678
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !37
  %i.kf = call double @llvm.fmuladd.f64(double %i.kc, double %i.ke, double %i.ka)
  %indvars.iv.next679.1 = add nuw nsw i64 %indvars.iv678, 2 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next679.1
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !37
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next679.1
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !37
  %i.kk = call double @llvm.fmuladd.f64(double %i.kh, double %i.kj, double %i.kf)
  %indvars.iv.next679.2 = add nuw nsw i64 %indvars.iv678, 3 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next679.2
  %i.km = load double, ptr %i.kl, align 8, !tbaa !37
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next679.2
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !37
  %i.kp = call double @llvm.fmuladd.f64(double %i.km, double %i.ko, double %i.kk)
  %indvars.iv.next679.3 = add nuw nsw i64 %indvars.iv678, 4 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next679.3
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !37
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next679.3
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !37
  %i.ku = call double @llvm.fmuladd.f64(double %i.kr, double %i.kt, double %i.kp)
  %indvars.iv.next679.4 = add nuw nsw i64 %indvars.iv678, 5 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next679.4
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !37
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next679.4
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !37
  %i.kz = call double @llvm.fmuladd.f64(double %i.kw, double %i.ky, double %i.ku)
  %indvars.iv.next679.5 = add nuw nsw i64 %indvars.iv678, 6 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next679.5
  %i.lb = load double, ptr %i.la, align 8, !tbaa !37
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next679.5
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !37
  %i.le = call double @llvm.fmuladd.f64(double %i.lb, double %i.ld, double %i.kz)
  %indvars.iv.next679.6 = add nuw nsw i64 %indvars.iv678, 7 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next679.6
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !37
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next679.6
  %i.li = load double, ptr %i.lh, align 8, !tbaa !37
  %i.lj = call double @llvm.fmuladd.f64(double %i.lg, double %i.li, double %i.le) ; 3 uses
  %indvars.iv.next679.7 = add nuw nsw i64 %indvars.iv678, 8 ; 2 uses
  %niter836.next.7 = add i64 %niter836, 8         ; 2 uses
  %niter836.ncmp.7 = icmp eq i64 %niter836.next.7, %unroll_iter835
  br i1 %niter836.ncmp.7, label %._crit_edge581.loopexit.unr-lcssa, label %.lr.ph580, !llvm.loop !19

._crit_edge581.loopexit.unr-lcssa:                ; preds = %.lr.ph580
  %lcmp.mod832.not = icmp eq i64 %xtraiter831, 0
  br i1 %lcmp.mod832.not, label %._crit_edge581, label %.lr.ph580.epil.preheader

.lr.ph580.epil.preheader:                         ; preds = %._crit_edge581.loopexit.unr-lcssa, %.lr.ph580.preheader
  %indvars.iv678.epil.init = phi i64 [ 1, %.lr.ph580.preheader ], [ %indvars.iv.next679.7, %._crit_edge581.loopexit.unr-lcssa ]
  %.1578.epil.init = phi double [ 0.000000e+00, %.lr.ph580.preheader ], [ %i.lj, %._crit_edge581.loopexit.unr-lcssa ]
  %lcmp.mod834 = icmp ne i64 %xtraiter831, 0
  call void @llvm.assume(i1 %lcmp.mod834)
  br label %.lr.ph580.epil

.lr.ph580.epil:                                   ; preds = %.lr.ph580.epil, %.lr.ph580.epil.preheader
  %indvars.iv678.epil = phi i64 [ %indvars.iv678.epil.init, %.lr.ph580.epil.preheader ], [ %indvars.iv.next679.epil, %.lr.ph580.epil ] ; 3 uses
  %.1578.epil = phi double [ %.1578.epil.init, %.lr.ph580.epil.preheader ], [ %i.lo, %.lr.ph580.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph580.epil.preheader ], [ %epil.iter.next, %.lr.ph580.epil ]
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv678.epil
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !37
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv678.epil
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !37
  %i.lo = call double @llvm.fmuladd.f64(double %i.ll, double %i.ln, double %.1578.epil) ; 2 uses
  %indvars.iv.next679.epil = add nuw nsw i64 %indvars.iv678.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter831
  br i1 %epil.iter.cmp.not, label %._crit_edge581, label %.lr.ph580.epil, !llvm.loop !20

._crit_edge581:                                   ; preds = %._crit_edge581.loopexit.unr-lcssa, %.lr.ph580.epil, %bb.j
  %.1.lcssa = phi double [ 0.000000e+00, %bb.j ], [ %i.lj, %._crit_edge581.loopexit.unr-lcssa ], [ %i.lo, %.lr.ph580.epil ]
  %i.lp = sitofp i32 %i.el to double
  %i.lq = fdiv double %.1.lcssa, %i.lp            ; 5 uses
  %i.lr = shl i32 %i.el, 1                        ; 2 uses
  %.not515.not582 = icmp slt i32 %i.el, %i.lr
  br i1 %.not515.not582, label %.lr.ph585, label %._crit_edge581.._crit_edge586_crit_edge

._crit_edge581.._crit_edge586_crit_edge:          ; preds = %._crit_edge581
  %.pre726 = sext i32 %i.el to i64
  br label %._crit_edge586

.lr.ph585:                                        ; preds = %._crit_edge581
  %i.ls = fneg double %i.lq                       ; 6 uses
  %i.lt = sext i32 %i.el to i64                   ; 15 uses
  %wide.trip.count686 = sext i32 %i.lr to i64     ; 4 uses
  %i.lu = sub nsw i64 %wide.trip.count686, %i.lt  ; 3 uses
  %min.iters.check799 = icmp ult i64 %i.lu, 8
  br i1 %min.iters.check799, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph585
  %i.lv = shl nsw i64 %i.lt, 3                    ; 2 uses
  %i.lw = add i64 %i.lv, %i.a
  %9 = sub i64 %i.b, %i.lw
  %diff.check = icmp ugt i64 %9, -64
  %i.lx = add nsw i64 %i.lv, -1
  %diff.check800 = icmp ult i64 %i.lx, 63
  %conflict.rdx = or i1 %diff.check, %diff.check800
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph801

vector.ph801:                                     ; preds = %vector.memcheck
  %n.vec802 = and i64 %i.lu, -8                   ; 3 uses
  %i.ly = add nsw i64 %n.vec802, %i.lt
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ls, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = sub i64 1, %i.lt
  br label %vector.body803

vector.body803:                                   ; preds = %vector.body803, %vector.ph801
  %index804 = phi i64 [ 0, %vector.ph801 ], [ %index.next809, %vector.body803 ] ; 2 uses
  %i.lz = add i64 %index804, %i.lt                ; 2 uses
  %.reass = add i64 %i.lz, %invariant.op          ; 2 uses
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.reass ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %wide.load805 = load <4 x double>, ptr %i.ma, align 8, !tbaa !37
  %wide.load806 = load <4 x double>, ptr %i.mb, align 8, !tbaa !37
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.reass ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  %wide.load807 = load <4 x double>, ptr %i.mc, align 8, !tbaa !37
  %wide.load808 = load <4 x double>, ptr %i.md, align 8, !tbaa !37
  %i.me = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load805, <4 x double> %wide.load807, <4 x double> %broadcast.splat)
  %i.mf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load806, <4 x double> %wide.load808, <4 x double> %broadcast.splat)
  %i.mg = getelementptr [8 x i8], ptr %7, i64 %i.lz ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 32
  store <4 x double> %i.me, ptr %i.mg, align 8, !tbaa !37
  store <4 x double> %i.mf, ptr %i.mh, align 8, !tbaa !37
  %index.next809 = add nuw i64 %index804, 8       ; 2 uses
  %i.mi = icmp eq i64 %index.next809, %n.vec802
  br i1 %i.mi, label %middle.block810, label %vector.body803, !llvm.loop !21

middle.block810:                                  ; preds = %vector.body803
  %cmp.n811 = icmp eq i64 %i.lu, %n.vec802
  br i1 %cmp.n811, label %._crit_edge586, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph585, %middle.block810
  %indvars.iv683.ph = phi i64 [ %i.lt, %vector.memcheck ], [ %i.lt, %.lr.ph585 ], [ %i.ly, %middle.block810 ] ; 4 uses
  %i.mj = sub nsw i64 %wide.trip.count686, %indvars.iv683.ph
  %xtraiter837 = and i64 %i.mj, 3                 ; 2 uses
  %lcmp.mod838.not = icmp eq i64 %xtraiter837, 0
  br i1 %lcmp.mod838.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv683.prol = phi i64 [ %indvars.iv.next684.prol, %scalar.ph.prol ], [ %indvars.iv683.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next684.prol = add nsw i64 %indvars.iv683.prol, 1 ; 3 uses
  %i.mk = sub nsw i64 %indvars.iv.next684.prol, %i.lt ; 2 uses
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.mk
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !37
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.mk
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !37
  %i.mp = call double @llvm.fmuladd.f64(double %i.mm, double %i.mo, double %i.ls)
  %i.mq = getelementptr [8 x i8], ptr %7, i64 %indvars.iv683.prol
  store double %i.mp, ptr %i.mq, align 8, !tbaa !37
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter837
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !22

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv683.unr = phi i64 [ %indvars.iv683.ph, %scalar.ph.preheader ], [ %indvars.iv.next684.prol, %scalar.ph.prol ]
  %i.mr = sub nsw i64 %indvars.iv683.ph, %wide.trip.count686
  %i.ms = icmp ugt i64 %i.mr, -4
  br i1 %i.ms, label %._crit_edge586, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv683 = phi i64 [ %indvars.iv.next684.3, %scalar.ph ], [ %indvars.iv683.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.next684 = add nsw i64 %indvars.iv683, 1 ; 2 uses
  %i.mt = sub nsw i64 %indvars.iv.next684, %i.lt  ; 2 uses
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.mt
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !37
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.mt
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !37
  %i.my = call double @llvm.fmuladd.f64(double %i.mv, double %i.mx, double %i.ls)
  %i.mz = getelementptr [8 x i8], ptr %7, i64 %indvars.iv683
  store double %i.my, ptr %i.mz, align 8, !tbaa !37
  %indvars.iv.next684.1 = add nsw i64 %indvars.iv683, 2 ; 2 uses
  %i.na = sub nsw i64 %indvars.iv.next684.1, %i.lt ; 2 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.na
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !37
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.na
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !37
  %i.nf = call double @llvm.fmuladd.f64(double %i.nc, double %i.ne, double %i.ls)
  %i.ng = getelementptr [8 x i8], ptr %7, i64 %indvars.iv.next684
  store double %i.nf, ptr %i.ng, align 8, !tbaa !37
  %indvars.iv.next684.2 = add nsw i64 %indvars.iv683, 3 ; 2 uses
  %i.nh = sub nsw i64 %indvars.iv.next684.2, %i.lt ; 2 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nh
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !37
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.nh
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !37
  %i.nm = call double @llvm.fmuladd.f64(double %i.nj, double %i.nl, double %i.ls)
  %i.nn = getelementptr [8 x i8], ptr %7, i64 %indvars.iv.next684.1
  store double %i.nm, ptr %i.nn, align 8, !tbaa !37
  %indvars.iv.next684.3 = add nsw i64 %indvars.iv683, 4 ; 3 uses
  %i.no = sub nsw i64 %indvars.iv.next684.3, %i.lt ; 2 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.no
  %i.nq = load double, ptr %i.np, align 8, !tbaa !37
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.no
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !37
  %i.nt = call double @llvm.fmuladd.f64(double %i.nq, double %i.ns, double %i.ls)
  %i.nu = getelementptr [8 x i8], ptr %7, i64 %indvars.iv.next684.2
  store double %i.nt, ptr %i.nu, align 8, !tbaa !37
  %exitcond687.not.3 = icmp eq i64 %indvars.iv.next684.3, %wide.trip.count686
  br i1 %exitcond687.not.3, label %._crit_edge586, label %scalar.ph, !llvm.loop !23

._crit_edge586:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block810, %._crit_edge581.._crit_edge586_crit_edge
  %.pre-phi = phi i64 [ %.pre726, %._crit_edge581.._crit_edge586_crit_edge ], [ %i.lt, %middle.block810 ], [ %i.lt, %scalar.ph ], [ %i.lt, %scalar.ph.prol.loopexit ]
  %i.nv = getelementptr [8 x i8], ptr %i.j, i64 %.pre-phi
  %i.nw = getelementptr i8, ptr %i.nv, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.nw, ptr noundef nonnull @c__1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #8
  %i.nx = load double, ptr %i.d, align 8, !tbaa !37
  %i.ny = load double, ptr %i.e, align 8, !tbaa !37
  %i.nz = load i32, ptr %1, align 4, !tbaa !35
  %i.oa = sitofp i32 %i.nz to double
  %i.ob = fdiv double %i.ny, %i.oa
  %i.oc = call double @sqrt(double noundef %i.ob) #8
  %i.od = fmul double %i.nx, %i.oc
  %i.oe = fmul double %i.ei, %i.lq
  %i.of = fcmp olt double %i.od, %i.oe
  br i1 %i.of, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge586
  %i.og = load i32, ptr %1, align 4, !tbaa !35    ; 4 uses
  %.not516603 = icmp slt i32 %i.og, 1
  br i1 %.not516603, label %._crit_edge609, label %.lr.ph608.preheader

.lr.ph608.preheader:                              ; preds = %bb.l
  %i.oh = add nuw i32 %i.og, 2
  %wide.trip.count717 = zext i32 %i.oh to i64
  br label %.lr.ph608

.lr.ph608:                                        ; preds = %.lr.ph608.preheader, %.loopexit
  %indvar839 = phi i64 [ 0, %.lr.ph608.preheader ], [ %indvar.next840, %.loopexit ] ; 8 uses
  %i.oi = phi i32 [ %i.og, %.lr.ph608.preheader ], [ %i.yo, %.loopexit ] ; 3 uses
  %indvars.iv712 = phi i64 [ 2, %.lr.ph608.preheader ], [ %indvars.iv.next713, %.loopexit ]
  %indvars.iv695 = phi i64 [ 1, %.lr.ph608.preheader ], [ %indvars.iv.next696, %.loopexit ] ; 16 uses
  %.2606 = phi double [ %i.lq, %.lr.ph608.preheader ], [ %i.yu, %.loopexit ] ; 2 uses
  %i.oj = xor i64 %indvar839, -1
  %i.ok = xor i64 %indvar839, -1
  %i.ol = add i64 %indvar839, 1                   ; 2 uses
  %indvars716 = trunc i64 %indvars.iv695 to i32
  %i.om = mul nsw i64 %indvars.iv695, %i.ek       ; 2 uses
  %i.on = mul nsw i32 %i.f, %indvars716
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv695
  %i.oq = getelementptr [8 x i8], ptr %i.op, i64 %i.oo
  %i.or = load double, ptr %i.oq, align 8, !tbaa !37 ; 3 uses
  %i.os = fcmp oge double %i.or, 0.000000e+00
  %i.ot = fneg double %i.or
  %i.ou = select i1 %i.os, double %i.or, double %i.ot ; 3 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv695 ; 2 uses
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !37 ; 5 uses
  %i.ox = add nsw i32 %i.oi, -1
  %i.oy = sitofp i32 %i.ox to double
  %i.oz = add nsw i32 %i.oi, -2
  %i.pa = sitofp i32 %i.oz to double
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv695 ; 2 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !37 ; 2 uses
  %i.pd = fneg double %i.ou
  %i.pe = call double @llvm.fmuladd.f64(double %i.pd, double %i.ow, double %i.pc)
  %i.pf = fmul double %i.pe, %i.pa                ; 3 uses
  %i.pg = fneg double %i.ow
  %i.ph = fmul double %i.ou, %i.pg
  %i.pi = fmul double %i.pc, 2.000000e+00
  %i.pj = fmul double %i.ow, %i.pi
  %i.pk = call double @llvm.fmuladd.f64(double %i.ph, double %i.ow, double %i.pj)
  %i.pl = sitofp i32 %i.oi to double
  %i.pm = fneg double %i.pl
  %i.pn = call double @llvm.fmuladd.f64(double %i.pm, double %.2606, double %i.pk) ; 2 uses
  %i.po = fmul double %i.pn, 4.000000e+00
  %i.pp = fneg double %i.oy
  %i.pq = fmul double %i.ou, %i.pp
  %i.pr = fmul double %i.pq, %i.po
  %i.ps = call double @llvm.fmuladd.f64(double %i.pf, double %i.pf, double %i.pr) ; 2 uses
  %i.pt = fcmp ugt double %i.ps, 0.000000e+00
  br i1 %i.pt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph608
  store i32 -1, ptr %8, align 4, !tbaa !35
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph608
  %i.pu = fmul double %i.pn, -2.000000e+00
  %i.pv = call double @sqrt(double noundef %i.ps) #8
  %i.pw = fadd double %i.pf, %i.pv
  %i.px = fdiv double %i.pu, %i.pw                ; 2 uses
  %i.py = fsub double %i.px, %i.ow                ; 21 uses
  br i1 %.not505740, label %.preheader.preheader, label %.preheader526.preheader

.preheader526.preheader:                          ; preds = %bb.n
  %invariant.gep769 = getelementptr [8 x i8], ptr %i.h, i64 %i.om ; 5 uses
  %xtraiter841 = and i64 %i.ol, 3                 ; 3 uses
  %i.pz = icmp ult i64 %indvar839, 3
  br i1 %i.pz, label %.preheader526.epil.preheader, label %.preheader526.preheader.new

.preheader526.preheader.new:                      ; preds = %.preheader526.preheader
end_hunk_0
