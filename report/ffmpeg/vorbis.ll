inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ff_vorbis_nth_root:bb.a
  br i1 %.not16, label %.split.preheader, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.a
  %min.iters.check = icmp ult i32 %i.a, 8
  %n.vec = and i32 %i.a, -8                       ; 3 uses
  %cmp.n = icmp eq i32 %i.a, %n.vec
  br label %.lr.ph.us

.split.preheader:                                 ; preds = %bb.a
  %i.b = add i32 %0, 1
  %i.c = tail call i32 @llvm.usub.sat.i32(i32 %i.b, i32 1)
  br label %.split15.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.011.us = phi i32 [ %i.d, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %i.d = add i32 %.011.us, 1                      ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %i.e = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.d, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.e, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.g, %vector.body ]
  %i.f = mul <4 x i32> %vec.phi, %broadcast.splat ; 2 uses
  %i.g = mul <4 x i32> %vec.phi18, %broadcast.splat ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.h = icmp eq i32 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.013.us.ph = phi i32 [ %i.d, %.lr.ph.us ], [ %i.i, %middle.block ]
  %.01012.us.ph = phi i32 [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.013.us = phi i32 [ %i.j, %scalar.ph ], [ %.013.us.ph, %scalar.ph.preheader ]
  %.01012.us = phi i32 [ %i.k, %scalar.ph ], [ %.01012.us.ph, %scalar.ph.preheader ]
  %i.j = mul i32 %.013.us, %i.d                   ; 2 uses
  %i.k = add nuw i32 %.01012.us, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !13

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.i, %middle.block ], [ %i.j, %scalar.ph ]
  %.not.us = icmp ugt i32 %.lcssa, %0
  br i1 %.not.us, label %.split15.us, label %.lr.ph.us, !llvm.loop !14

.split15.us:                                      ; preds = %._crit_edge.us, %.split.preheader
  %.us-phi = phi i32 [ %i.c, %.split.preheader ], [ %.011.us, %._crit_edge.us ]
  ret i32 %.us-phi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1094995529, 1) i32 @ff_vorbis_len2vlc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [33 x i32], align 16              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.a, i8 0, i64 132, i1 false)
  store i32 404, ptr %i.a, align 16
  %.not96 = icmp eq i32 %2, 0
  br i1 %.not96, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %.critedge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !16

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.e = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %.critedge.loopexit ] ; 3 uses
  %i.f = icmp eq i32 %.0.lcssa, %2
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.g = zext i32 %.0.lcssa to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  store i32 0, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15    ; 4 uses
  %i.k = icmp ugt i8 %i.j, 32
  br i1 %i.k, label %.loopexit, label %.preheader72

.preheader72:                                     ; preds = %bb.c
  %.not97 = icmp eq i8 %i.j, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %.preheader72
  %wide.trip.count108 = zext nneg i8 %i.j to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count108, 3      ; 3 uses
  %i.l = icmp ult i8 %i.j, 4
  br i1 %i.l, label %.lr.ph79.epil.preheader, label %.lr.ph79.preheader.new

.lr.ph79.preheader.new:                           ; preds = %.lr.ph79.preheader
  %unroll_iter = and i64 %wide.trip.count108, 60
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79, %.lr.ph79.preheader.new
  %indvars.iv105 = phi i64 [ 0, %.lr.ph79.preheader.new ], [ %indvars.iv.next106.3, %.lr.ph79 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph79.preheader.new ], [ %niter.next.3, %.lr.ph79 ]
  %i.m = trunc nuw nsw i64 %indvars.iv105 to i32
  %i.n = shl nuw i32 1, %i.m
  %indvars.iv.next106 = or disjoint i64 %indvars.iv105, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next106
  store i32 %i.n, ptr %i.o, align 4, !tbaa !17
  %i.p = trunc nuw nsw i64 %indvars.iv.next106 to i32
  %i.q = shl nuw i32 1, %i.p
  %indvars.iv.next106.1 = or disjoint i64 %indvars.iv105, 2 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next106.1
  store i32 %i.q, ptr %i.r, align 8, !tbaa !17
  %i.s = trunc nuw nsw i64 %indvars.iv.next106.1 to i32
  %i.t = shl nuw i32 1, %i.s
  %indvars.iv.next106.2 = or disjoint i64 %indvars.iv105, 3 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next106.2
  store i32 %i.t, ptr %i.u, align 4, !tbaa !17
  %i.v = trunc nuw nsw i64 %indvars.iv.next106.2 to i32
  %i.w = shl nuw i32 1, %i.v
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next106.3
  store i32 %i.w, ptr %i.x, align 16, !tbaa !17
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph79, !llvm.loop !18

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph79
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph79.epil.preheader

.lr.ph79.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph79.preheader
  %indvars.iv105.epil.init = phi i64 [ 0, %.lr.ph79.preheader ], [ %indvars.iv.next106.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod230 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod230)
  br label %.lr.ph79.epil

.lr.ph79.epil:                                    ; preds = %.lr.ph79.epil, %.lr.ph79.epil.preheader
  %indvars.iv105.epil = phi i64 [ %indvars.iv105.epil.init, %.lr.ph79.epil.preheader ], [ %indvars.iv.next106.epil, %.lr.ph79.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph79.epil.preheader ], [ %epil.iter.next, %.lr.ph79.epil ]
  %i.y = trunc nuw nsw i64 %indvars.iv105.epil to i32
  %i.z = shl nuw i32 1, %i.y
  %indvars.iv.next106.epil = add nuw nsw i64 %indvars.iv105.epil, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next106.epil
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !17
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph79.epil, !llvm.loop !19

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph79.epil, %.preheader72
  %i.ab = add i32 %.0.lcssa, 1                    ; 4 uses
  %i.ac = icmp ult i32 %i.ab, %2
  br i1 %i.ac, label %.lr.ph82.preheader, label %.critedge2.thread135

.lr.ph82.preheader:                               ; preds = %._crit_edge
  %i.ad = zext i32 %i.ab to i64
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %bb.d
  %indvars.iv110 = phi i64 [ %i.ad, %.lr.ph82.preheader ], [ %indvars.iv.next111, %bb.d ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv110
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %.lr.ph82
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next111 to i32
  %exitcond113.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond113.not, label %.loopexit, label %.lr.ph82, !llvm.loop !21

.critedge2:                                       ; preds = %.lr.ph82
  %i.ah = trunc nuw i64 %indvars.iv110 to i32
  %i.ai = icmp eq i32 %2, %i.ah
  br i1 %i.ai, label %.loopexit, label %.lr.ph94

.critedge2.thread135:                             ; preds = %._crit_edge
  %i.aj = icmp eq i32 %i.ab, %2
  br i1 %i.aj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.h, %.critedge2.thread135
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = load <32 x i32>, ptr %i.ak, align 4
  %.fr = freeze <32 x i32> %i.al
  %i.am = icmp ne <32 x i32> %.fr, zeroinitializer
  %i.an = bitcast <32 x i1> %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  %spec.select = select i1 %i.ao, i32 0, i32 -1094995529
  br label %.loopexit

.lr.ph94:                                         ; preds = %.critedge2, %bb.h
  %.193 = phi i32 [ %4, %bb.h ], [ %i.ab, %.critedge2 ] ; 2 uses
  %3 = zext i32 %.193 to i64                      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15  ; 3 uses
  %i.ar = zext i8 %i.aq to i32                    ; 3 uses
  %i.as = icmp ugt i8 %i.aq, 32
  br i1 %i.as, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph94
  %i.at = icmp eq i8 %i.aq, 0
  br i1 %i.at, label %bb.h, label %.preheader68

.preheader68:                                     ; preds = %bb.e, %bb.f
  %indvar = phi i32 [ %indvar.next, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.26087 = phi i32 [ %i.ax, %bb.f ], [ %i.ar, %bb.e ] ; 3 uses
  %i.au = zext i32 %.26087 to i64                 ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17 ; 7 uses
  %.not65 = icmp eq i32 %i.aw, 0
  br i1 %.not65, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader68
  %i.ax = add nsw i32 %.26087, -1                 ; 2 uses
  %cond = icmp eq i32 %i.ax, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond, label %.loopexit, label %.preheader68, !llvm.loop !22

bb.g:                                             ; preds = %.preheader68
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au
  store i32 0, ptr %i.ay, align 4, !tbaa !17
  %.not67.not88 = icmp ult i32 %.26087, %i.ar
  br i1 %.not67.not88, label %.lr.ph91.preheader, label %._crit_edge92

.lr.ph91.preheader:                               ; preds = %bb.g
  %i.az = add i32 %indvar, -1
  %xtraiter232 = and i32 %indvar, 3               ; 2 uses
  %lcmp.mod233.not = icmp eq i32 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph91.prol.loopexit, label %.lr.ph91.prol

.lr.ph91.prol:                                    ; preds = %.lr.ph91.preheader, %.lr.ph91.prol
  %indvars.iv116.prol = phi i64 [ %indvars.iv.next117.prol, %.lr.ph91.prol ], [ %i.au, %.lr.ph91.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph91.prol ], [ 0, %.lr.ph91.preheader ]
  %indvars.iv.next117.prol = add nuw nsw i64 %indvars.iv116.prol, 1 ; 3 uses
  %i.ba = trunc nuw i64 %indvars.iv116.prol to i32
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = add i32 %i.bb, %i.aw
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next117.prol
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !17
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter232
  br i1 %prol.iter.cmp.not, label %.lr.ph91.prol.loopexit, label %.lr.ph91.prol, !llvm.loop !23

.lr.ph91.prol.loopexit:                           ; preds = %.lr.ph91.prol, %.lr.ph91.preheader
  %indvars.iv116.unr = phi i64 [ %i.au, %.lr.ph91.preheader ], [ %indvars.iv.next117.prol, %.lr.ph91.prol ]
  %i.be = icmp ult i32 %i.az, 3
  br i1 %i.be, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.prol.loopexit, %.lr.ph91
  %indvars.iv116 = phi i64 [ %indvars.iv.next117.3, %.lr.ph91 ], [ %indvars.iv116.unr, %.lr.ph91.prol.loopexit ] ; 5 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.bf = trunc nuw i64 %indvars.iv116 to i32
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = add i32 %i.bg, %i.aw
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next117
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !17
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 2 uses
  %i.bj = trunc nuw i64 %indvars.iv.next117 to i32
  %i.bk = shl nuw i32 1, %i.bj
  %i.bl = add i32 %i.bk, %i.aw
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next117.1
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !17
  %indvars.iv.next117.2 = add nuw nsw i64 %indvars.iv116, 3 ; 2 uses
  %i.bn = trunc nuw i64 %indvars.iv.next117.1 to i32
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = add i32 %i.bo, %i.aw
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next117.2
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !17
  %indvars.iv.next117.3 = add nuw nsw i64 %indvars.iv116, 4 ; 3 uses
  %i.br = trunc nuw i64 %indvars.iv.next117.2 to i32
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = add i32 %i.bs, %i.aw
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next117.3
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !17
  %lftr.wideiv119.3 = trunc i64 %indvars.iv.next117.3 to i32
  %exitcond120.not.3 = icmp eq i32 %lftr.wideiv119.3, %i.ar
  br i1 %exitcond120.not.3, label %._crit_edge92, label %.lr.ph91, !llvm.loop !24

._crit_edge92:                                    ; preds = %.lr.ph91.prol.loopexit, %.lr.ph91, %bb.g
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %._crit_edge92
  %4 = add nuw i32 %.193, 1                       ; 2 uses
  %exitcond121.not = icmp eq i32 %4, %2
  br i1 %exitcond121.not, label %.preheader, label %.lr.ph94, !llvm.loop !25

.loopexit:                                        ; preds = %bb.b, %bb.d, %.lr.ph94, %bb.f, %.preheader, %.critedge2.thread135, %.critedge2, %bb.c, %.critedge
  %.061 = phi i32 [ 0, %.critedge2.thread135 ], [ 0, %.critedge ], [ -1094995529, %bb.c ], [ 0, %.critedge2 ], [ -1094995529, %.lr.ph94 ], [ 0, %bb.d ], [ %spec.select, %.preheader ], [ -1094995529, %bb.f ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.061
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_vorbis_ready_floor1_list(ptr noundef %0, ptr nofree noundef captures(none) initializes((2, 4), (10, 12)) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 1, ptr %i.b, align 2, !tbaa !26
  %i.c = icmp sgt i32 %2, 2
  br i1 %i.c, label %.lr.ph73.preheader, label %.critedge.preheader

.lr.ph73.preheader:                               ; preds = %bb.a
  %wide.trip.count84 = zext nneg i32 %2 to i64
  br label %.lr.ph73

.critedge.preheader:                              ; preds = %._crit_edge, %bb.a
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph79.preheader, label %.loopexit

.lr.ph79.preheader:                               ; preds = %.critedge.preheader
  %i.e = add nsw i32 %2, -1
  %wide.trip.count95 = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph77

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %._crit_edge
  %indvars.iv81 = phi i64 [ 2, %.lr.ph73.preheader ], [ %indvars.iv.next82, %._crit_edge ] ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv81 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store i16 0, ptr %i.g, align 2, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 6 ; 2 uses
  store i16 1, ptr %i.h, align 2, !tbaa !30
  %i.i = trunc i64 %indvars.iv81 to i16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 %i.i, ptr %i.j, align 2, !tbaa !26
  %i.k = icmp samesign ugt i64 %indvars.iv81, 2
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph73
  %i.l = load i16, ptr %i.f, align 2, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.m = phi i16 [ 0, %.lr.ph ], [ %i.ab, %bb.g ] ; 4 uses
  %i.n = phi i16 [ 1, %.lr.ph ], [ %i.ac, %bb.g ] ; 4 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !31   ; 3 uses
  %i.q = icmp ult i16 %i.p, %i.l
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = zext i16 %i.m to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !31
  %i.u = icmp ugt i16 %i.p, %i.t
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = trunc i64 %indvars.iv to i16             ; 2 uses
  store i16 %i.v, ptr %i.g, align 2, !tbaa !29
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.w = zext i16 %i.n to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !31
  %i.z = icmp ult i16 %i.p, %i.y
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = trunc i64 %indvars.iv to i16            ; 2 uses
  store i16 %i.aa, ptr %i.h, align 2, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %i.ab = phi i16 [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.c ], [ %i.v, %bb.d ]
  %i.ac = phi i16 [ %i.n, %bb.e ], [ %i.aa, %bb.f ], [ %i.n, %bb.c ], [ %i.n, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv81
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.g, %.lr.ph73
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.critedge.preheader, label %.lr.ph73, !llvm.loop !33

.critedge.loopexit:                               ; preds = %bb.l
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %.loopexit, label %.lr.ph77, !llvm.loop !34

.lr.ph77:                                         ; preds = %.critedge.loopexit, %.lr.ph79.preheader
  %indvars.iv92 = phi i64 [ 0, %.lr.ph79.preheader ], [ %indvars.iv.next93, %.critedge.loopexit ] ; 2 uses
  %indvars.iv86 = phi i64 [ 1, %.lr.ph79.preheader ], [ %indvars.iv.next87, %.critedge.loopexit ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv92 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph77, %bb.l
  %indvars.iv88 = phi i64 [ %indvars.iv86, %.lr.ph77 ], [ %indvars.iv.next89, %bb.l ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv88 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !31
  %i.ai = icmp eq i16 %i.ae, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str) #10
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i16, ptr %i.af, align 2, !tbaa !26 ; 2 uses
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !26 ; 2 uses
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !31
  %i.as = icmp ugt i16 %i.am, %i.ar
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 %i.ao, ptr %i.af, align 2, !tbaa !26
  store i16 %i.aj, ptr %i.an, align 2, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond91.not, label %.critedge.loopexit, label %bb.h, !llvm.loop !35

.loopexit:                                        ; preds = %.critedge.loopexit, %.critedge.preheader, %bb.i
  %.2 = phi i32 [ -1094995529, %bb.i ], [ 0, %.critedge.preheader ], [ 0, %.critedge.loopexit ]
  ret i32 %.2
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_vorbis_floor1_render_list(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = load i16, ptr %2, align 2, !tbaa !36
  %i.b = zext i16 %i.a to i32
  %i.c = mul nsw i32 %4, %i.b                     ; 2 uses
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.03644 = phi i32 [ %i.c, %.lr.ph.preheader ], [ %.1, %bb.d ] ; 2 uses
  %.03743 = phi i32 [ 0, %.lr.ph.preheader ], [ %.138, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !26
  %i.h = zext i16 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.l = load i16, ptr %i.k, align 2, !tbaa !31
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.h
  %i.o = load i16, ptr %i.n, align 2, !tbaa !36
  %i.p = zext i16 %i.o to i32
  %i.q = mul nsw i32 %4, %i.p                     ; 3 uses
  %i.r = icmp slt i32 %.03743, %6
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.m)
  tail call fastcc void @render_line(i32 noundef %.03743, i32 noundef %.03644, i32 noundef %i.s, i32 noundef %i.q, ptr noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %.138 = phi i32 [ %.03743, %.lr.ph ], [ %i.m, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %.1 = phi i32 [ %.03644, %.lr.ph ], [ %i.q, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.not42 = icmp sge i32 %.138, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_0
