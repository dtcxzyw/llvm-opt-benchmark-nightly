Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilSupp?download=true
inline.NumInlined: 120
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Abc_SuppGenFindBest:bb.a
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.ae) ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !23 ; 2 uses
  %i.ak = icmp slt i32 %i.ah, %i.aj
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.ak, i32 %i.al, i32 %spec.select
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %i.aj) ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.1
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23 ; 2 uses
  %i.ap = icmp slt i32 %i.am, %i.ao
  %i.aq = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %spec.select.2 = select i1 %i.ap, i32 %i.aq, i32 %spec.select.1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %i.ao) ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.2
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23 ; 2 uses
  %i.au = icmp slt i32 %i.ar, %i.at
  %i.av = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %spec.select.3 = select i1 %i.au, i32 %i.av, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.at) ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.012.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.ax = phi i32 [ %.epil.init, %.lr.ph.epil.preheader ], [ %i.bc, %.lr.ph.epil ] ; 2 uses
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.012.epil = phi i32 [ %.012.epil.init, %.lr.ph.epil.preheader ], [ %spec.select.epil, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !23 ; 2 uses
  %i.ba = icmp slt i32 %i.ax, %i.az
  %i.bb = trunc nuw nsw i64 %indvars.iv.epil to i32
  %spec.select.epil = select i1 %i.ba, i32 %i.bb, i32 %.012.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 %i.az)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !59

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.lr.ph20.i, %Abc_SuppGenProfile.exit
  %.0.lcssa = phi i32 [ 0, %Abc_SuppGenProfile.exit ], [ 0, %.lr.ph20.i ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ] ; 2 uses
  %i.bd = zext nneg i32 %.0.lcssa to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !23
  store i32 %i.bf, ptr %2, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_SuppGenSelectVar(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.b, align 4, !tbaa !17  ; 2 uses
  %i.c = sext i32 %.val to i64
  %.idx = shl nsw i64 %i.c, 3
  %i.d = getelementptr inbounds i8, ptr %.val9, i64 %.idx
  %i.e = icmp sgt i32 %.val, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext nneg i32 %2 to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = zext nneg i32 %1 to i64
  %i.i = shl nuw i64 1, %i.h
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.010 = phi ptr [ %.val9, %.lr.ph ], [ %i.m, %bb.d ] ; 3 uses
  %i.j = load i64, ptr %.010, align 8, !tbaa !21  ; 2 uses
  %i.k = and i64 %i.j, %i.g
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = xor i64 %i.j, %i.i
  store i64 %i.l, ptr %.010, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.d
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_SuppGenFilter(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !17  ; 4 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.c, align 8, !tbaa !19 ; 6 uses
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl nuw i64 1, %i.d                      ; 3 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %.val, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %.015 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val12, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = and i64 %i.h, %i.e
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.015, 1
  %i.l = sext i32 %.015 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val12, i64 %i.l
  store i64 %i.h, ptr %i.m, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.k, %bb.c ], [ %.015, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val12, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = and i64 %i.p, %i.e
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %.1, 1
  %i.t = sext i32 %.1 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.val12, i64 %i.t
  store i64 %i.p, ptr %i.u, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %i.s, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !4

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ]
  %.015.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %.critedge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod18 = trunc i32 %.val to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val12, i64 %indvars.iv.epil.init
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = and i64 %i.w, %i.e
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.epil.preheader
  %i.z = add nsw i32 %.015.epil.init, 1
  %i.aa = sext i32 %.015.epil.init to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.val12, i64 %i.aa
  store i64 %i.w, ptr %i.ab, align 8, !tbaa !21
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %.critedge.loopexit.unr-lcssa ], [ %i.z, %bb.g ], [ %.015.epil.init, %.epil.preheader ]
  store i32 %.0.lcssa, ptr %i.a, align 4, !tbaa !17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Abc_SuppFindOne(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 21 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val17.i.i = load i32, ptr %i.b, align 4, !tbaa !17 ; 3 uses
  %i.c = icmp sgt i32 %.val17.i.i, 0
  %i.d = zext i32 %1 to i64                       ; 7 uses
  %i.e = zext nneg i32 %.val17.i.i to i64         ; 2 uses
  %.idx.i14 = shl nuw nsw i64 %i.e, 3
  %i.f = icmp sgt i32 %1, 1                       ; 2 uses
  %2 = sext i32 %.val17.i.i to i64
  %.idx.i = shl nuw nsw i64 %2, 3
  %i.g = shl nuw i64 1, %i.d                      ; 2 uses
  br i1 %i.c, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp sgt i32 %1, 0
  %.val15.i.i.us = load ptr, ptr %i.h, align 8, !tbaa !19 ; 5 uses
  br i1 %i.i, label %.lr.ph20.i.i.us.us.preheader, label %.thread.us.lr.ph

.lr.ph20.i.i.us.us.preheader:                     ; preds = %.split.us
  %3 = getelementptr inbounds nuw i8, ptr %.val15.i.i.us, i64 %.idx.i
  %i.j = add nsw i64 %i.d, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %i.d, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  %xtraiter55 = and i64 %i.j, 3                   ; 3 uses
  %i.k = add nsw i32 %1, -2
  %i.l = icmp ult i32 %i.k, 3
  %unroll_iter62 = and i64 %i.j, -4
  %lcmp.mod59.not = icmp eq i64 %xtraiter55, 0
  %lcmp.mod61 = icmp ne i64 %xtraiter55, 0
  br label %.lr.ph20.i.i.us.us

.lr.ph20.i.i.us.us:                               ; preds = %.lr.ph20.i.i.us.us.preheader, %Abc_SuppGenSelectVar.exit.loopexit.us.us
  %.08.us.us = phi i64 [ %i.bn, %Abc_SuppGenSelectVar.exit.loopexit.us.us ], [ 0, %.lr.ph20.i.i.us.us.preheader ] ; 2 uses
  %.0.us.us = phi i32 [ %i.bg, %Abc_SuppGenSelectVar.exit.loopexit.us.us ], [ -1, %.lr.ph20.i.i.us.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %._crit_edge.i.i.us.us, %.lr.ph20.i.i.us.us
  %indvars.iv22.i.i.us.us = phi i64 [ %indvars.iv.next23.i.i.us.us, %._crit_edge.i.i.us.us ], [ 0, %.lr.ph20.i.i.us.us ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val15.i.i.us, i64 %indvars.iv22.i.i.us.us
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21   ; 3 uses
  %i.o = lshr i64 %i.n, %i.d                      ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.us.us
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat50 = shufflevector <4 x i64> %broadcast.splatinsert49, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.p = lshr <4 x i64> %broadcast.splat, %vec.ind
  %i.q = xor <4 x i64> %i.p, %broadcast.splat50
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.r, align 16, !tbaa !23
  %i.s = trunc <4 x i64> %i.q to <4 x i32>
  %i.t = and <4 x i32> %i.s, splat (i32 1)
  %i.u = add <4 x i32> %i.t, %wide.load
  store <4 x i32> %i.u, ptr %i.r, align 16, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.us.us, %middle.block
  %indvars.iv.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %scalar.ph ], [ %indvars.iv.i.i.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = lshr i64 %i.n, %indvars.iv.i.i.us.us
  %i.x = xor i64 %i.w, %i.o
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.us.us ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23
  %i.aa = trunc i64 %i.x to i32
  %i.ab = and i32 %i.aa, 1
  %i.ac = add i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !23
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us, 1 ; 2 uses
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %i.d
  br i1 %exitcond.not.i.i.us.us, label %._crit_edge.i.i.us.us, label %scalar.ph, !llvm.loop !61

._crit_edge.i.i.us.us:                            ; preds = %scalar.ph, %middle.block
  %indvars.iv.next23.i.i.us.us = add nuw nsw i64 %indvars.iv22.i.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next23.i.i.us.us, %i.e
  br i1 %exitcond.not.i.us.us, label %Abc_SuppGenProfile.exit.i.loopexit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !1

Abc_SuppGenProfile.exit.i.loopexit.us.us:         ; preds = %._crit_edge.i.i.us.us
  br i1 %i.f, label %.lr.ph.preheader.i.us.us, label %Abc_SuppGenFindBest.exit.us.us

.lr.ph.preheader.i.us.us:                         ; preds = %Abc_SuppGenProfile.exit.i.loopexit.us.us
  %.pre.i.us.us = load i32, ptr %i.a, align 16, !tbaa !23 ; 2 uses
  br i1 %i.l, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.preheader.i.us.us, %.lr.ph.i.us.us
  %i.ad = phi i32 [ %i.ax, %.lr.ph.i.us.us ], [ %.pre.i.us.us, %.lr.ph.preheader.i.us.us ] ; 2 uses
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us ], [ 1, %.lr.ph.preheader.i.us.us ] ; 6 uses
  %.012.i.us.us = phi i32 [ %spec.select.i.us.us.3, %.lr.ph.i.us.us ], [ 0, %.lr.ph.preheader.i.us.us ]
  %niter63 = phi i64 [ %niter63.next.3, %.lr.ph.i.us.us ], [ 0, %.lr.ph.preheader.i.us.us ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23 ; 2 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  %i.ah = trunc nuw nsw i64 %indvars.iv.i.us.us to i32
  %spec.select.i.us.us = select i1 %i.ag, i32 %i.ah, i32 %.012.i.us.us
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 %i.af) ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.us.us
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !23 ; 2 uses
  %i.al = icmp slt i32 %i.ai, %i.ak
  %i.am = trunc nuw nsw i64 %indvars.iv.next.i.us.us to i32
  %spec.select.i.us.us.1 = select i1 %i.al, i32 %i.am, i32 %spec.select.i.us.us
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us, 2 ; 2 uses
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.ak) ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.us.us.1
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !23 ; 2 uses
  %i.aq = icmp slt i32 %i.an, %i.ap
  %i.ar = trunc nuw nsw i64 %indvars.iv.next.i.us.us.1 to i32
  %spec.select.i.us.us.2 = select i1 %i.aq, i32 %i.ar, i32 %spec.select.i.us.us.1
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.i.us.us, 3 ; 2 uses
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %i.ap) ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.us.us.2
  %i.au = load i32, ptr %i.at, align 4, !tbaa !23 ; 2 uses
  %i.av = icmp slt i32 %i.as, %i.au
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.i.us.us.2 to i32
  %spec.select.i.us.us.3 = select i1 %i.av, i32 %i.aw, i32 %spec.select.i.us.us.2 ; 3 uses
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us, 4 ; 2 uses
  %i.ax = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %i.au) ; 2 uses
  %niter63.next.3 = add nuw i64 %niter63, 4       ; 2 uses
  %niter63.ncmp.3 = icmp eq i64 %niter63.next.3, %unroll_iter62
  br i1 %niter63.ncmp.3, label %Abc_SuppGenFindBest.exit.us.us.loopexit.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !2

Abc_SuppGenFindBest.exit.us.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod59.not, label %Abc_SuppGenFindBest.exit.us.us.loopexit, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %Abc_SuppGenFindBest.exit.us.us.loopexit.unr-lcssa, %.lr.ph.preheader.i.us.us
  %.epil.init58 = phi i32 [ %.pre.i.us.us, %.lr.ph.preheader.i.us.us ], [ %i.ax, %Abc_SuppGenFindBest.exit.us.us.loopexit.unr-lcssa ]
  %indvars.iv.i.us.us.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.us.us ], [ %indvars.iv.next.i.us.us.3, %Abc_SuppGenFindBest.exit.us.us.loopexit.unr-lcssa ]
  %.012.i.us.us.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.us.us ], [ %spec.select.i.us.us.3, %Abc_SuppGenFindBest.exit.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.us.us.epil

.lr.ph.i.us.us.epil:                              ; preds = %.lr.ph.i.us.us.epil, %.lr.ph.i.us.us.epil.preheader
  %i.ay = phi i32 [ %.epil.init58, %.lr.ph.i.us.us.epil.preheader ], [ %i.bd, %.lr.ph.i.us.us.epil ] ; 2 uses
  %indvars.iv.i.us.us.epil = phi i64 [ %indvars.iv.i.us.us.epil.init, %.lr.ph.i.us.us.epil.preheader ], [ %indvars.iv.next.i.us.us.epil, %.lr.ph.i.us.us.epil ] ; 3 uses
  %.012.i.us.us.epil = phi i32 [ %.012.i.us.us.epil.init, %.lr.ph.i.us.us.epil.preheader ], [ %spec.select.i.us.us.epil, %.lr.ph.i.us.us.epil ]
  %epil.iter56 = phi i64 [ 0, %.lr.ph.i.us.us.epil.preheader ], [ %epil.iter56.next, %.lr.ph.i.us.us.epil ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.us.epil
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !23 ; 2 uses
  %i.bb = icmp slt i32 %i.ay, %i.ba
  %i.bc = trunc nuw nsw i64 %indvars.iv.i.us.us.epil to i32
  %spec.select.i.us.us.epil = select i1 %i.bb, i32 %i.bc, i32 %.012.i.us.us.epil ; 2 uses
  %indvars.iv.next.i.us.us.epil = add nuw nsw i64 %indvars.iv.i.us.us.epil, 1
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 %i.ba)
  %epil.iter56.next = add i64 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i64 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %Abc_SuppGenFindBest.exit.us.us.loopexit, label %.lr.ph.i.us.us.epil, !llvm.loop !62

Abc_SuppGenFindBest.exit.us.us.loopexit:          ; preds = %.lr.ph.i.us.us.epil, %Abc_SuppGenFindBest.exit.us.us.loopexit.unr-lcssa
  %spec.select.i.us.us.lcssa = phi i32 [ %spec.select.i.us.us.3, %Abc_SuppGenFindBest.exit.us.us.loopexit.unr-lcssa ], [ %spec.select.i.us.us.epil, %.lr.ph.i.us.us.epil ]
  %i.be = zext nneg i32 %spec.select.i.us.us.lcssa to i64
  br label %Abc_SuppGenFindBest.exit.us.us

Abc_SuppGenFindBest.exit.us.us:                   ; preds = %Abc_SuppGenFindBest.exit.us.us.loopexit, %Abc_SuppGenProfile.exit.i.loopexit.us.us
  %.0.lcssa.i.us.us = phi i64 [ 0, %Abc_SuppGenProfile.exit.i.loopexit.us.us ], [ %i.be, %Abc_SuppGenFindBest.exit.us.us.loopexit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0.lcssa.i.us.us
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.us.us = icmp slt i32 %.0.us.us, %i.bg
  br i1 %.not.us.us, label %.lr.ph.i10.us.us, label %.split17.us

.lr.ph.i10.us.us:                                 ; preds = %Abc_SuppGenFindBest.exit.us.us
  %i.bh = shl nuw i64 1, %.0.lcssa.i.us.us        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i10.us.us
  %.010.i.us.us = phi ptr [ %.val15.i.i.us, %.lr.ph.i10.us.us ], [ %i.bl, %bb.d ] ; 3 uses
  %i.bi = load i64, ptr %.010.i.us.us, align 8, !tbaa !21 ; 2 uses
  %i.bj = and i64 %i.bi, %i.bh
  %.not.i.us.us = icmp eq i64 %i.bj, 0
  br i1 %.not.i.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = xor i64 %i.bi, %i.g
  store i64 %i.bk, ptr %.010.i.us.us, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i.us.us, i64 8 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %3
  br i1 %i.bm, label %bb.b, label %Abc_SuppGenSelectVar.exit.loopexit.us.us, !llvm.loop !3

Abc_SuppGenSelectVar.exit.loopexit.us.us:         ; preds = %bb.d
  %i.bn = or i64 %i.bh, %.08.us.us
  br label %.lr.ph20.i.i.us.us

.thread.us.lr.ph:                                 ; preds = %.split.us
  %4 = getelementptr inbounds nuw i8, ptr %.val15.i.i.us, i64 %.idx.i14
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.thread.us.lr.ph
  %.010.i.us = phi ptr [ %.val15.i.i.us, %.thread.us.lr.ph ], [ %i.br, %bb.g ] ; 3 uses
  %i.bo = load i64, ptr %.010.i.us, align 8, !tbaa !21 ; 2 uses
  %i.bp = and i64 %i.bo, 1
  %.not.i.us = icmp eq i64 %i.bp, 0
  br i1 %.not.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = xor i64 %i.bo, %i.g
  store i64 %i.bq, ptr %.010.i.us, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i.us, i64 8 ; 2 uses
  %i.bs = icmp ult ptr %i.br, %4
  br i1 %i.bs, label %bb.e, label %.split17.us, !llvm.loop !3

.split:                                           ; preds = %bb.a
  br i1 %i.f, label %Abc_SuppGenProfile.exit.i.us18.preheader, label %.split17.us

Abc_SuppGenProfile.exit.i.us18.preheader:         ; preds = %.split
  %i.bt = add nsw i64 %i.d, -1                    ; 2 uses
  %xtraiter = and i64 %i.bt, 3                    ; 3 uses
  %i.bu = add nsw i32 %1, -2
  %i.bv = icmp ult i32 %i.bu, 3
  %unroll_iter = and i64 %i.bt, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod54 = icmp ne i64 %xtraiter, 0
  br label %Abc_SuppGenProfile.exit.i.us18

Abc_SuppGenProfile.exit.i.us18:                   ; preds = %Abc_SuppGenProfile.exit.i.us18.preheader, %Abc_SuppGenSelectVar.exit.us34
  %.08.us19 = phi i64 [ %i.db, %Abc_SuppGenSelectVar.exit.us34 ], [ 0, %Abc_SuppGenProfile.exit.i.us18.preheader ] ; 2 uses
  %.0.us20 = phi i32 [ %i.cz, %Abc_SuppGenSelectVar.exit.us34 ], [ -1, %Abc_SuppGenProfile.exit.i.us18.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  br i1 %i.bv, label %.lr.ph.i.us23.epil.preheader, label %.lr.ph.i.us23

.lr.ph.i.us23:                                    ; preds = %Abc_SuppGenProfile.exit.i.us18, %.lr.ph.i.us23
  %i.bw = phi i32 [ %i.cq, %.lr.ph.i.us23 ], [ 0, %Abc_SuppGenProfile.exit.i.us18 ] ; 2 uses
  %indvars.iv.i.us24 = phi i64 [ %indvars.iv.next.i.us27.3, %.lr.ph.i.us23 ], [ 1, %Abc_SuppGenProfile.exit.i.us18 ] ; 6 uses
  %.012.i.us25 = phi i32 [ %spec.select.i.us26.3, %.lr.ph.i.us23 ], [ 0, %Abc_SuppGenProfile.exit.i.us18 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.us23 ], [ 0, %Abc_SuppGenProfile.exit.i.us18 ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us24
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !23 ; 2 uses
  %i.bz = icmp slt i32 %i.bw, %i.by
  %i.ca = trunc nuw nsw i64 %indvars.iv.i.us24 to i32
  %spec.select.i.us26 = select i1 %i.bz, i32 %i.ca, i32 %.012.i.us25
  %indvars.iv.next.i.us27 = add nuw nsw i64 %indvars.iv.i.us24, 1 ; 2 uses
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 %i.by) ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.us27
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !23 ; 2 uses
  %i.ce = icmp slt i32 %i.cb, %i.cd
  %i.cf = trunc nuw nsw i64 %indvars.iv.next.i.us27 to i32
  %spec.select.i.us26.1 = select i1 %i.ce, i32 %i.cf, i32 %spec.select.i.us26
  %indvars.iv.next.i.us27.1 = add nuw nsw i64 %indvars.iv.i.us24, 2 ; 2 uses
  %i.cg = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 %i.cd) ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.us27.1
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !23 ; 2 uses
  %i.cj = icmp slt i32 %i.cg, %i.ci
  %i.ck = trunc nuw nsw i64 %indvars.iv.next.i.us27.1 to i32
  %spec.select.i.us26.2 = select i1 %i.cj, i32 %i.ck, i32 %spec.select.i.us26.1
  %indvars.iv.next.i.us27.2 = add nuw nsw i64 %indvars.iv.i.us24, 3 ; 2 uses
  %i.cl = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 %i.ci) ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.us27.2
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !23 ; 2 uses
  %i.co = icmp slt i32 %i.cl, %i.cn
  %i.cp = trunc nuw nsw i64 %indvars.iv.next.i.us27.2 to i32
  %spec.select.i.us26.3 = select i1 %i.co, i32 %i.cp, i32 %spec.select.i.us26.2 ; 3 uses
  %indvars.iv.next.i.us27.3 = add nuw nsw i64 %indvars.iv.i.us24, 4 ; 2 uses
  %i.cq = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 %i.cn) ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_SuppGenFindBest.exit.loopexit.us29.unr-lcssa, label %.lr.ph.i.us23, !llvm.loop !2

Abc_SuppGenFindBest.exit.loopexit.us29.unr-lcssa: ; preds = %.lr.ph.i.us23
  br i1 %lcmp.mod.not, label %Abc_SuppGenFindBest.exit.loopexit.us29, label %.lr.ph.i.us23.epil.preheader

.lr.ph.i.us23.epil.preheader:                     ; preds = %Abc_SuppGenFindBest.exit.loopexit.us29.unr-lcssa, %Abc_SuppGenProfile.exit.i.us18
  %.epil.init = phi i32 [ 0, %Abc_SuppGenProfile.exit.i.us18 ], [ %i.cq, %Abc_SuppGenFindBest.exit.loopexit.us29.unr-lcssa ]
  %indvars.iv.i.us24.epil.init = phi i64 [ 1, %Abc_SuppGenProfile.exit.i.us18 ], [ %indvars.iv.next.i.us27.3, %Abc_SuppGenFindBest.exit.loopexit.us29.unr-lcssa ]
  %.012.i.us25.epil.init = phi i32 [ 0, %Abc_SuppGenProfile.exit.i.us18 ], [ %spec.select.i.us26.3, %Abc_SuppGenFindBest.exit.loopexit.us29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %.lr.ph.i.us23.epil

.lr.ph.i.us23.epil:                               ; preds = %.lr.ph.i.us23.epil, %.lr.ph.i.us23.epil.preheader
  %i.cr = phi i32 [ %.epil.init, %.lr.ph.i.us23.epil.preheader ], [ %i.cw, %.lr.ph.i.us23.epil ] ; 2 uses
  %indvars.iv.i.us24.epil = phi i64 [ %indvars.iv.i.us24.epil.init, %.lr.ph.i.us23.epil.preheader ], [ %indvars.iv.next.i.us27.epil, %.lr.ph.i.us23.epil ] ; 3 uses
  %.012.i.us25.epil = phi i32 [ %.012.i.us25.epil.init, %.lr.ph.i.us23.epil.preheader ], [ %spec.select.i.us26.epil, %.lr.ph.i.us23.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.us23.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.us23.epil ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us24.epil
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !23 ; 2 uses
  %i.cu = icmp slt i32 %i.cr, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv.i.us24.epil to i32
  %spec.select.i.us26.epil = select i1 %i.cu, i32 %i.cv, i32 %.012.i.us25.epil ; 2 uses
  %indvars.iv.next.i.us27.epil = add nuw nsw i64 %indvars.iv.i.us24.epil, 1
  %i.cw = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 %i.ct)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_SuppGenFindBest.exit.loopexit.us29, label %.lr.ph.i.us23.epil, !llvm.loop !63

Abc_SuppGenFindBest.exit.loopexit.us29:           ; preds = %.lr.ph.i.us23.epil, %Abc_SuppGenFindBest.exit.loopexit.us29.unr-lcssa
  %spec.select.i.us26.lcssa = phi i32 [ %spec.select.i.us26.3, %Abc_SuppGenFindBest.exit.loopexit.us29.unr-lcssa ], [ %spec.select.i.us26.epil, %.lr.ph.i.us23.epil ]
  %i.cx = zext nneg i32 %spec.select.i.us26.lcssa to i64 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.us33 = icmp slt i32 %.0.us20, %i.cz
  br i1 %.not.us33, label %Abc_SuppGenSelectVar.exit.us34, label %.split17.us

Abc_SuppGenSelectVar.exit.us34:                   ; preds = %Abc_SuppGenFindBest.exit.loopexit.us29
  %i.da = shl nuw i64 1, %i.cx
  %i.db = or i64 %i.da, %.08.us19
  br label %Abc_SuppGenProfile.exit.i.us18

.split17.us:                                      ; preds = %Abc_SuppGenFindBest.exit.loopexit.us29, %bb.g, %Abc_SuppGenFindBest.exit.us.us, %.split
  %.us-phi = phi i64 [ 1, %.split ], [ %.08.us.us, %Abc_SuppGenFindBest.exit.us.us ], [ 1, %bb.g ], [ %.08.us19, %Abc_SuppGenFindBest.exit.loopexit.us29 ]
  ret i64 %.us-phi
}

; Function Attrs: nofree nounwind uwtable
define i32 @Abc_SuppMinimize(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 12 uses
  %.val1420 = load i32, ptr %i.a, align 4, !tbaa !17
  %i.b = icmp sgt i32 %.val1420, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.d = zext nneg i32 %2 to i64                  ; 2 uses
  %i.e = shl nuw i64 1, %i.d                      ; 9 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %Abc_SuppGenFilter.exit.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %Abc_SuppGenFilter.exit.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.f = tail call i64 @Abc_SuppFindOne(ptr noundef nonnull %1, i32 noundef %2)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv47
  store i64 %i.f, ptr %i.g, align 8, !tbaa !21
  %.val.i.us = load i32, ptr %i.a, align 4, !tbaa !17 ; 4 uses
  %i.h = icmp sgt i32 %.val.i.us, 0
  br i1 %i.h, label %.lr.ph.i.us, label %Abc_SuppGenFilter.exit.us.thread

Abc_SuppGenFilter.exit.us.thread:                 ; preds = %.lr.ph.split.us
  store i32 0, ptr %i.a, align 4, !tbaa !17
  %indvars.iv.next4851 = add nuw nsw i64 %indvars.iv47, 1
  br label %._crit_edge.loopexit

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us
  %.val12.i.us = load ptr, ptr %i.c, align 8, !tbaa !19 ; 6 uses
  %wide.trip.count.i.us = zext nneg i32 %.val.i.us to i64 ; 2 uses
  %xtraiter66 = and i64 %wide.trip.count.i.us, 1
  %i.i = icmp eq i32 %.val.i.us, 1
  br i1 %i.i, label %.epil.preheader65, label %.lr.ph.i.us.new

.lr.ph.i.us.new:                                  ; preds = %.lr.ph.i.us
  %unroll_iter70 = and i64 %wide.trip.count.i.us, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.us.new
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us.new ], [ %indvars.iv.next.i.us.1, %bb.f ] ; 3 uses
  %.015.i.us = phi i32 [ 0, %.lr.ph.i.us.new ], [ %.1.i.us.1, %bb.f ] ; 3 uses
  %niter71 = phi i64 [ 0, %.lr.ph.i.us.new ], [ %niter71.next.1, %bb.f ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val12.i.us, i64 %indvars.iv.i.us
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = and i64 %i.k, %i.e
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.015.i.us, 1
  %i.o = sext i32 %.015.i.us to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val12.i.us, i64 %i.o
  store i64 %i.k, ptr %i.p, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i.us = phi i32 [ %i.n, %bb.c ], [ %.015.i.us, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val12.i.us, i64 %indvars.iv.i.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = and i64 %i.s, %i.e
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %.1.i.us, 1
  %i.w = sext i32 %.1.i.us to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.val12.i.us, i64 %i.w
  store i64 %i.s, ptr %i.x, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i.us.1 = phi i32 [ %i.v, %bb.e ], [ %.1.i.us, %bb.d ] ; 3 uses
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter71.next.1 = add i64 %niter71, 2           ; 2 uses
  %niter71.ncmp.1 = icmp eq i64 %niter71.next.1, %unroll_iter70
  br i1 %niter71.ncmp.1, label %Abc_SuppGenFilter.exit.us.unr-lcssa, label %bb.b, !llvm.loop !4

Abc_SuppGenFilter.exit.us.unr-lcssa:              ; preds = %bb.f
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %Abc_SuppGenFilter.exit.us, label %.epil.preheader65

.epil.preheader65:                                ; preds = %Abc_SuppGenFilter.exit.us.unr-lcssa, %.lr.ph.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us.1, %Abc_SuppGenFilter.exit.us.unr-lcssa ]
  %.015.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.us ], [ %.1.i.us.1, %Abc_SuppGenFilter.exit.us.unr-lcssa ] ; 3 uses
  %lcmp.mod69 = trunc i32 %.val.i.us to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val12.i.us, i64 %indvars.iv.i.us.epil.init
  %i.z = load i64, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = and i64 %i.z, %i.e
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %Abc_SuppGenFilter.exit.us

bb.g:                                             ; preds = %.epil.preheader65
end_hunk_0
