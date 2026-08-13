inline.NumInlined: 48
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_Z12EditDistanceRK11StringPieceS1_bi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %.fr210 = freeze i64 %i.b                       ; 2 uses
  %i.c = trunc i64 %.fr210 to i32                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 4 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = shl i64 %i.e, 32                         ; 2 uses
  %sext = add i64 %i.g, 4294967296                ; 3 uses
  %i.h = ashr exact i64 %sext, 32                 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #7
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = ashr exact i64 %sext, 30
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #8 ; 4 uses
  store i32 0, ptr %i.k, align 4, !tbaa !17
  %i.l = add nsw i64 %i.h, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.k, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !17
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.sroa.068.0 = phi ptr [ %i.k, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %bb.c ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 21 uses
  %.not85 = icmp slt i32 %i.f, 1
  br i1 %.not85, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.o = add nuw nsw i64 %i.e, 1
  %wide.trip.count = and i64 %i.o, 4294967295     ; 2 uses
  %i.p = add nsw i64 %wide.trip.count, -1         ; 9 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.preheader221, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.p, -8                       ; 3 uses
  %i.q = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store <4 x i32> %vec.ind, ptr %i.s, align 4, !tbaa !17
  store <4 x i32> %step.add, ptr %i.t, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.preheader.thread, label %.lr.ph.preheader221

.lr.ph.preheader221:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.not5292 = icmp slt i32 %i.c, 1
  br i1 %.not5292, label %.thread, label %.lr.ph96.split.us

.preheader.thread:                                ; preds = %.lr.ph, %middle.block
  %.not5292181 = icmp slt i32 %i.c, 1
  br i1 %.not5292181, label %.thread, label %.lr.ph96.split

.lr.ph96.split.us:                                ; preds = %.preheader
  %.not54 = icmp eq i32 %3, 0
  %i.v = add nsw i32 %3, 1                        ; 2 uses
  br i1 %.not54, label %..thread_crit_edge.split.us, label %.lr.ph96.split.us.split.preheader

.lr.ph96.split.us.split.preheader:                ; preds = %.lr.ph96.split.us
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 0) ; 2 uses
  %i.w = add nuw i32 %smax, 1
  %i.x = add nsw i32 %i.c, -1
  %umin = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %smax) ; 2 uses
  %min.iters.check198 = icmp samesign ult i32 %umin, 8
  br i1 %min.iters.check198, label %.lr.ph96.split.us.split.preheader212, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph96.split.us.split.preheader
  %i.y = add nuw i32 %umin, 1                     ; 2 uses
  %i.z = and i32 %i.y, 7                          ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = select i1 %i.aa, i32 8, i32 %i.z
  %n.vec200 = sub i32 %i.y, %i.ab                 ; 2 uses
  %i.ac = add i32 %n.vec200, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i32 [ 0, %vector.ph199 ], [ %index.next206, %vector.body201 ]
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph199 ], [ %i.af, %vector.body201 ]
  %vec.phi203 = phi <4 x i1> [ zeroinitializer, %vector.ph199 ], [ %i.ag, %vector.body201 ]
  %vec.ind204 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph199 ], [ %vec.ind.next207, %vector.body201 ] ; 3 uses
  %step.add205 = add nuw <4 x i32> %vec.ind204, splat (i32 4)
  %i.ad = icmp sgt <4 x i32> %vec.ind204, %broadcast.splat
  %i.ae = icmp sgt <4 x i32> %step.add205, %broadcast.splat
  %i.af = or <4 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <4 x i1> %vec.phi203, %i.ae          ; 2 uses
  %index.next206 = add nuw i32 %index202, 8       ; 2 uses
  %vec.ind.next207 = add nuw <4 x i32> %vec.ind204, splat (i32 8)
  %i.ah = icmp eq i32 %index.next206, %n.vec200
  br i1 %i.ah, label %middle.block208, label %vector.body201, !llvm.loop !22

middle.block208:                                  ; preds = %vector.body201
  %bin.rdx = or <4 x i1> %i.ag, %i.af
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ai = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not211 = icmp eq i4 %i.ai, 0
  %rdx.select = select i1 %.not211, i32 undef, i32 %i.v
  br label %.lr.ph96.split.us.split.preheader212

.lr.ph96.split.us.split.preheader212:             ; preds = %.lr.ph96.split.us.split.preheader, %middle.block208
  %.095.us.ph = phi i32 [ undef, %.lr.ph96.split.us.split.preheader ], [ %rdx.select, %middle.block208 ]
  %.04893.us.ph = phi i32 [ 1, %.lr.ph96.split.us.split.preheader ], [ %i.ac, %middle.block208 ]
  br label %.lr.ph96.split.us.split

.lr.ph96.split.us.split:                          ; preds = %.lr.ph96.split.us.split.preheader212, %bb.d
  %.095.us = phi i32 [ %.1.us, %bb.d ], [ %.095.us.ph, %.lr.ph96.split.us.split.preheader212 ]
  %.04893.us = phi i32 [ %i.aj, %bb.d ], [ %.04893.us.ph, %.lr.ph96.split.us.split.preheader212 ] ; 5 uses
  %.not117 = icmp sgt i32 %.04893.us, %3
  %.1.us = select i1 %.not117, i32 %i.v, i32 %.095.us ; 2 uses
  %exitcond168 = icmp eq i32 %.04893.us, %i.w
  br i1 %exitcond168, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph96.split.us.split
  %i.aj = add nuw i32 %.04893.us, 1
  %exitcond169.not = icmp eq i32 %.04893.us, %i.c
  br i1 %exitcond169.not, label %..thread_crit_edge.split.us, label %.lr.ph96.split.us.split, !llvm.loop !23

..thread_crit_edge.split.us:                      ; preds = %bb.d, %.lr.ph96.split.us
  %.us-phi = phi i32 [ %i.c, %.lr.ph96.split.us ], [ %.04893.us, %bb.d ]
  store i32 %.us-phi, ptr %.sroa.068.0, align 4, !tbaa !17
  br label %.thread

.lr.ph96.split:                                   ; preds = %.preheader.thread
  %.not54182 = icmp eq i32 %3, 0                  ; 2 uses
  %i.ak = add nsw i32 %3, 1                       ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !24    ; 4 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !24    ; 8 uses
  %i.an = add nuw nsw i64 %i.e, 1
  %i.ao = add nuw nsw i64 %.fr210, 1
  %wide.trip.count166 = and i64 %i.ao, 4294967295 ; 4 uses
  %wide.trip.count161 = and i64 %i.an, 4294967295 ; 4 uses
  br i1 %2, label %.lr.ph96.split.split.us, label %.lr.ph96.split.split

.lr.ph96.split.split.us:                          ; preds = %.lr.ph96.split
  br i1 %.not54182, label %.lr.ph91.us.us.preheader, label %.lr.ph91.us

.lr.ph91.us.us.preheader:                         ; preds = %.lr.ph96.split.split.us
  %xtraiter224 = and i64 %i.p, 1
  %i.ap = icmp eq i64 %wide.trip.count161, 2
  %unroll_iter229 = and i64 %i.p, -2
  %lcmp.mod227.not = icmp eq i64 %xtraiter224, 0
  %lcmp.mod228 = trunc i64 %i.p to i1
  br label %.lr.ph91.us.us

.lr.ph91.us.us:                                   ; preds = %.lr.ph91.us.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %._crit_edge.split.us.us.us ], [ 1, %.lr.ph91.us.us.preheader ] ; 4 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv163 to i32 ; 3 uses
  store i32 %i.aq, ptr %.sroa.068.0, align 4, !tbaa !17
  %4 = getelementptr i8, ptr %i.al, i64 %indvars.iv163
  %i.ar = getelementptr i8, ptr %4, i64 -1
  %i.as = trunc i64 %indvars.iv163 to i32
  %5 = add i32 %i.as, -1                          ; 2 uses
  %.pre172 = load i8, ptr %i.ar, align 1, !tbaa !25 ; 3 uses
  br i1 %i.ap, label %.epil.preheader223, label %.lr.ph91.us.us.new

.lr.ph91.us.us.new:                               ; preds = %.lr.ph91.us.us, %.lr.ph91.us.us.new
  %i.at = phi i32 [ %.sroa.speculated.us.us.us.1, %.lr.ph91.us.us.new ], [ %i.aq, %.lr.ph91.us.us ]
  %indvars.iv158 = phi i64 [ %indvars.iv.next159.1, %.lr.ph91.us.us.new ], [ 1, %.lr.ph91.us.us ] ; 5 uses
  %.04589.us.us.us = phi i32 [ %i.bg, %.lr.ph91.us.us.new ], [ %5, %.lr.ph91.us.us ]
  %niter230 = phi i64 [ %niter230.next.1, %.lr.ph91.us.us.new ], [ 0, %.lr.ph91.us.us ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv158 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 %indvars.iv158
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !25
  %i.az = icmp ne i8 %.pre172, %i.ay
  %i.ba = zext i1 %i.az to i32
  %i.bb = add nsw i32 %.04589.us.us.us, %i.ba
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.at)
  %i.bd = add nsw i32 %i.bc, 1
  %.sroa.speculated.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.bb) ; 2 uses
  store i32 %.sroa.speculated.us.us.us, ptr %i.au, align 4, !tbaa !17
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv158
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !17 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.am, i64 %indvars.iv158
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25
  %i.bj = icmp ne i8 %.pre172, %i.bi
  %i.bk = zext i1 %i.bj to i32
  %i.bl = add nsw i32 %i.av, %i.bk
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %.sroa.speculated.us.us.us)
  %i.bn = add nsw i32 %i.bm, 1
  %.sroa.speculated.us.us.us.1 = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.bl) ; 3 uses
  store i32 %.sroa.speculated.us.us.us.1, ptr %i.bf, align 4, !tbaa !17
  %indvars.iv.next159.1 = add nuw nsw i64 %indvars.iv158, 2 ; 2 uses
  %niter230.next.1 = add nuw i64 %niter230, 2     ; 2 uses
  %niter230.ncmp.1 = icmp eq i64 %niter230.next.1, %unroll_iter229
  br i1 %niter230.ncmp.1, label %._crit_edge.split.us.us.us.unr-lcssa, label %.lr.ph91.us.us.new, !llvm.loop !26

._crit_edge.split.us.us.us.unr-lcssa:             ; preds = %.lr.ph91.us.us.new
  br i1 %lcmp.mod227.not, label %._crit_edge.split.us.us.us, label %.epil.preheader223

.epil.preheader223:                               ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.lr.ph91.us.us
  %.epil.init226 = phi i32 [ %i.aq, %.lr.ph91.us.us ], [ %.sroa.speculated.us.us.us.1, %._crit_edge.split.us.us.us.unr-lcssa ]
  %indvars.iv158.epil.init = phi i64 [ 1, %.lr.ph91.us.us ], [ %indvars.iv.next159.1, %._crit_edge.split.us.us.us.unr-lcssa ] ; 2 uses
  %.04589.us.us.us.epil.init = phi i32 [ %5, %.lr.ph91.us.us ], [ %i.bg, %._crit_edge.split.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv158.epil.init ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !17
  %i.bq = getelementptr i8, ptr %i.am, i64 %indvars.iv158.epil.init
  %i.br = getelementptr i8, ptr %i.bq, i64 -1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !25
  %i.bt = icmp ne i8 %.pre172, %i.bs
  %i.bu = zext i1 %i.bt to i32
  %i.bv = add nsw i32 %.04589.us.us.us.epil.init, %i.bu
  %i.bw = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %.epil.init226)
  %i.bx = add nsw i32 %i.bw, 1
  %.sroa.speculated.us.us.us.epil = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.bv)
  store i32 %.sroa.speculated.us.us.us.epil, ptr %i.bo, align 4, !tbaa !17
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.epil.preheader223
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %.thread, label %.lr.ph91.us.us, !llvm.loop !27

.lr.ph91.us:                                      ; preds = %.lr.ph96.split.split.us, %bb.e
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %bb.e ], [ 1, %.lr.ph96.split.split.us ] ; 4 uses
  %i.by = trunc nuw nsw i64 %indvars.iv153 to i32 ; 3 uses
  store i32 %i.by, ptr %.sroa.068.0, align 4, !tbaa !17
  %6 = getelementptr i8, ptr %i.al, i64 %indvars.iv153
  %i.bz = getelementptr i8, ptr %6, i64 -1
  %i.ca = trunc i64 %indvars.iv153 to i32
  %7 = add i32 %i.ca, -1
  %.pre171 = load i8, ptr %i.bz, align 1, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.split.us.us
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count166
  br i1 %exitcond157.not, label %.thread, label %.lr.ph91.us, !llvm.loop !27

bb.f:                                             ; preds = %bb.f, %.lr.ph91.us
  %i.cb = phi i32 [ %.sroa.speculated.us.us, %bb.f ], [ %i.by, %.lr.ph91.us ]
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %bb.f ], [ 1, %.lr.ph91.us ] ; 3 uses
  %.04589.us.us = phi i32 [ %i.cd, %bb.f ], [ %7, %.lr.ph91.us ]
  %.08288.us.us = phi i32 [ %.sroa.speculated64.us.us, %bb.f ], [ %i.by, %.lr.ph91.us ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv148 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !17 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.am, i64 %indvars.iv148
  %i.cf = getelementptr i8, ptr %i.ce, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !25
  %i.ch = icmp ne i8 %.pre171, %i.cg
  %i.ci = zext i1 %i.ch to i32
  %i.cj = add nsw i32 %.04589.us.us, %i.ci
  %i.ck = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.cb)
  %i.cl = add nsw i32 %i.ck, 1
  %.sroa.speculated.us.us = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.cj) ; 3 uses
  store i32 %.sroa.speculated.us.us, ptr %i.cc, align 4, !tbaa !17
  %.sroa.speculated64.us.us = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.us.us, i32 %.08288.us.us) ; 2 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count161
  br i1 %exitcond152.not, label %._crit_edge.split.us.us, label %bb.f, !llvm.loop !26

._crit_edge.split.us.us:                          ; preds = %bb.f
  %.not114 = icmp sgt i32 %.sroa.speculated64.us.us, %3
  br i1 %.not114, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

.lr.ph96.split.split:                             ; preds = %.lr.ph96.split
  br i1 %.not54182, label %.lr.ph91.us105.preheader, label %.lr.ph91

.lr.ph91.us105.preheader:                         ; preds = %.lr.ph96.split.split
  %xtraiter = and i64 %i.p, 1
  %i.cm = icmp eq i64 %wide.trip.count161, 2
  %unroll_iter = and i64 %i.p, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod222 = trunc i64 %i.p to i1
  br label %.lr.ph91.us105

.lr.ph91.us105:                                   ; preds = %.lr.ph91.us105.preheader, %._crit_edge.split.us
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %._crit_edge.split.us ], [ 1, %.lr.ph91.us105.preheader ] ; 4 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv143 to i32 ; 3 uses
  store i32 %i.cn, ptr %.sroa.068.0, align 4, !tbaa !17
  %8 = getelementptr i8, ptr %i.al, i64 %indvars.iv143
  %i.co = getelementptr i8, ptr %8, i64 -1
  %i.cp = trunc i64 %indvars.iv143 to i32
  %9 = add i32 %i.cp, -1                          ; 2 uses
  %.pre170 = load i8, ptr %i.co, align 1, !tbaa !25 ; 3 uses
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph91.us105.new

.lr.ph91.us105.new:                               ; preds = %.lr.ph91.us105, %bb.j
  %i.cq = phi i32 [ %storemerge112.1, %bb.j ], [ %i.cn, %.lr.ph91.us105 ]
  %indvars.iv138 = phi i64 [ %indvars.iv.next139.1, %bb.j ], [ 1, %.lr.ph91.us105 ] ; 7 uses
  %.04589.us = phi i32 [ %i.dc, %bb.j ], [ %9, %.lr.ph91.us105 ]
  %niter = phi i64 [ %niter.next.1, %bb.j ], [ 0, %.lr.ph91.us105 ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv138 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !17 ; 2 uses
  %10 = getelementptr i8, ptr %i.am, i64 %indvars.iv138
  %i.ct = getelementptr i8, ptr %10, i64 -1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !25
  %i.cv = icmp eq i8 %.pre170, %i.cu
  br i1 %i.cv, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph91.us105.new
  %i.cw = getelementptr [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv138
  %11 = getelementptr i8, ptr %i.cw, i64 -4
  %i.cx = icmp slt i32 %i.cs, %i.cq
  %..i58.us = select i1 %i.cx, ptr %i.cr, ptr %11
  %i.cy = load i32, ptr %..i58.us, align 4, !tbaa !17
  %i.cz = add nsw i32 %i.cy, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph91.us105.new, %bb.g
  %storemerge112 = phi i32 [ %i.cz, %bb.g ], [ %.04589.us, %.lr.ph91.us105.new ] ; 2 uses
  store i32 %storemerge112, ptr %i.cr, align 4, !tbaa !17
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv138
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !17 ; 3 uses
  %i.dd = getelementptr i8, ptr %i.am, i64 %indvars.iv138
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !25
  %i.df = icmp eq i8 %.pre170, %i.de
  br i1 %i.df, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dg = getelementptr [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv138
  %i.dh = icmp slt i32 %i.dc, %storemerge112
  %..i58.us.1 = select i1 %i.dh, ptr %i.db, ptr %i.dg
  %i.di = load i32, ptr %..i58.us.1, align 4, !tbaa !17
  %i.dj = add nsw i32 %i.di, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge112.1 = phi i32 [ %i.dj, %bb.i ], [ %i.cs, %bb.h ] ; 3 uses
  store i32 %storemerge112.1, ptr %i.db, align 4, !tbaa !17
  %indvars.iv.next139.1 = add nuw nsw i64 %indvars.iv138, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.unr-lcssa, label %.lr.ph91.us105.new, !llvm.loop !26

._crit_edge.split.us.unr-lcssa:                   ; preds = %bb.j
  br i1 %lcmp.mod.not, label %._crit_edge.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph91.us105
  %.epil.init = phi i32 [ %i.cn, %.lr.ph91.us105 ], [ %storemerge112.1, %._crit_edge.split.us.unr-lcssa ]
  %indvars.iv138.epil.init = phi i64 [ 1, %.lr.ph91.us105 ], [ %indvars.iv.next139.1, %._crit_edge.split.us.unr-lcssa ] ; 3 uses
  %.04589.us.epil.init = phi i32 [ %9, %.lr.ph91.us105 ], [ %i.dc, %._crit_edge.split.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv138.epil.init ; 3 uses
  %12 = getelementptr i8, ptr %i.am, i64 %indvars.iv138.epil.init
  %i.dl = getelementptr i8, ptr %12, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !25
  %i.dn = icmp eq i8 %.pre170, %i.dm
  br i1 %i.dn, label %._crit_edge.split.us.epilog-lcssa, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.do = load i32, ptr %i.dk, align 4, !tbaa !17
  %i.dp = getelementptr [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv138.epil.init
  %13 = getelementptr i8, ptr %i.dp, i64 -4
  %i.dq = icmp slt i32 %i.do, %.epil.init
  %..i58.us.epil = select i1 %i.dq, ptr %i.dk, ptr %13
  %i.dr = load i32, ptr %..i58.us.epil, align 4, !tbaa !17
  %i.ds = add nsw i32 %i.dr, 1
  br label %._crit_edge.split.us.epilog-lcssa

._crit_edge.split.us.epilog-lcssa:                ; preds = %bb.k, %.epil.preheader
  %storemerge112.epil = phi i32 [ %i.ds, %bb.k ], [ %.04589.us.epil.init, %.epil.preheader ]
  store i32 %storemerge112.epil, ptr %i.dk, align 4, !tbaa !17
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.unr-lcssa, %._crit_edge.split.us.epilog-lcssa
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count166
  br i1 %exitcond147.not, label %.thread, label %.lr.ph91.us105, !llvm.loop !27

.lr.ph:                                           ; preds = %.lr.ph.preheader221, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader221 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv
  %i.du = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.thread, label %.lr.ph, !llvm.loop !28

bb.l:                                             ; preds = %._crit_edge.split
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count166
  br i1 %exitcond137.not, label %.thread, label %.lr.ph91, !llvm.loop !27

.lr.ph91:                                         ; preds = %.lr.ph96.split.split, %bb.l
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %bb.l ], [ 1, %.lr.ph96.split.split ] ; 4 uses
  %i.dv = trunc nuw nsw i64 %indvars.iv133 to i32 ; 3 uses
  store i32 %i.dv, ptr %.sroa.068.0, align 4, !tbaa !17
  %14 = getelementptr i8, ptr %i.al, i64 %indvars.iv133
  %i.dw = getelementptr i8, ptr %14, i64 -1
  %i.dx = trunc i64 %indvars.iv133 to i32
  %15 = add i32 %i.dx, -1
  %.pre = load i8, ptr %i.dw, align 1, !tbaa !25
  br label %bb.m

._crit_edge.split:                                ; preds = %bb.o
  %.not = icmp sgt i32 %.sroa.speculated64, %3
  br i1 %.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.m:                                             ; preds = %.lr.ph91, %bb.o
  %i.dy = phi i32 [ %i.dv, %.lr.ph91 ], [ %storemerge, %bb.o ]
  %indvars.iv128 = phi i64 [ 1, %.lr.ph91 ], [ %indvars.iv.next129, %bb.o ] ; 4 uses
  %.04589 = phi i32 [ %15, %.lr.ph91 ], [ %i.ea, %bb.o ]
  %.08288 = phi i32 [ %i.dv, %.lr.ph91 ], [ %.sroa.speculated64, %bb.o ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv128 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !17 ; 2 uses
  %16 = getelementptr i8, ptr %i.am, i64 %indvars.iv128
  %i.eb = getelementptr i8, ptr %16, i64 -1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !25
  %i.ed = icmp eq i8 %.pre, %i.ec
  br i1 %i.ed, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = getelementptr [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv128
  %17 = getelementptr i8, ptr %i.ee, i64 -4
  %i.ef = icmp slt i32 %i.ea, %i.dy
  %..i58 = select i1 %i.ef, ptr %i.dz, ptr %17
  %i.eg = load i32, ptr %..i58, align 4, !tbaa !17
  %i.eh = add nsw i32 %i.eg, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %storemerge = phi i32 [ %i.eh, %bb.n ], [ %.04589, %bb.m ] ; 3 uses
  store i32 %storemerge, ptr %i.dz, align 4, !tbaa !17
  %.sroa.speculated64 = tail call i32 @llvm.smin.i32(i32 %storemerge, i32 %.08288) ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count161
  br i1 %exitcond132.not, label %._crit_edge.split, label %bb.m, !llvm.loop !26

.thread:                                          ; preds = %bb.l, %._crit_edge.split.us, %bb.e, %._crit_edge.split.us.us.us, %.preheader.thread, %..thread_crit_edge.split.us, %.preheader
  %i.ei = ashr exact i64 %i.g, 30
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.068.0, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph96.split.us.split, %.thread
  %.3 = phi i32 [ %i.ek, %.thread ], [ %i.ak, %._crit_edge.split.us.us ], [ %.1.us, %.lr.ph96.split.us.split ], [ %i.ak, %._crit_edge.split ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.068.0) #9
  ret i32 %.3
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { builtin nounwind allocsize(0) }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !16, i64 8}
!13 = !{!"_ZTS11StringPiece", !14, i64 0, !16, i64 8}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!9, !9, i64 0}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !19, !20, !21}
!23 = distinct !{!23, !19, !21, !20}
!24 = !{!13, !14, i64 0}
!25 = !{!10, !10, i64 0}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19, !21, !20}
end_hunk_0
