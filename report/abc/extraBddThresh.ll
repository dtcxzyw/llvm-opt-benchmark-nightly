inline.NumInlined: 72
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Extra_ThreshSelectWeights:bb.a
Extra_ThreshSelectWeights3.exit.loopexit74:       ; preds = %bb.ay
  store i32 %i.hm, ptr %i.hg, align 4, !tbaa !8
  store i32 %i.hp, ptr %i.hh, align 4, !tbaa !8
  store i32 %i.ht, ptr %i.hi, align 4, !tbaa !8
  store i32 %i.hy, ptr %2, align 4, !tbaa !8
  br label %Extra_ThreshSelectWeights3.exit

Extra_ThreshSelectWeights3.exit.loopexit75:       ; preds = %.split209.us.split.us.split.us.us.us.us.i
  store i32 %i.jp, ptr %i.hg, align 4, !tbaa !8
  br label %Extra_ThreshSelectWeights3.exit

Extra_ThreshSelectWeights3.exit:                  ; preds = %Extra_ThreshSelectWeights3.exit.loopexit75, %Extra_ThreshSelectWeights3.exit.loopexit74, %Extra_ThreshSelectWeights3.exit.loopexit73, %Extra_ThreshSelectWeights3.exit.loopexit72, %Extra_ThreshSelectWeights3.exit.loopexit71, %Extra_ThreshSelectWeights3.exit.loopexit, %bb.c, %bb.bc, %bb.bb, %bb.ba, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.c ], [ 0, %Extra_ThreshSelectWeights3.exit.loopexit71 ], [ 0, %Extra_ThreshSelectWeights3.exit.loopexit73 ], [ %i.jr, %bb.ba ], [ %i.js, %bb.bb ], [ %i.jt, %bb.bc ], [ %.135.us.us.us.us.us.us.us.us.us.us.i.7.lcssa, %Extra_ThreshSelectWeights3.exit.loopexit ], [ %.140.us.us.us.us.us.us.us.us.us.us.us.us.us.i.lcssa163, %Extra_ThreshSelectWeights3.exit.loopexit72 ], [ %.147.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %Extra_ThreshSelectWeights3.exit.loopexit74 ], [ 0, %Extra_ThreshSelectWeights3.exit.loopexit75 ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Extra_ThreshIncrementWeights(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %2, %0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %0 to i64           ; 2 uses
  %i.c = sub nsw i64 %wide.trip.count, %i.b       ; 3 uses
  %min.iters.check = icmp ult i64 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, -8                       ; 3 uses
  %i.d = add nsw i64 %n.vec, %i.b
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !8
  %wide.load8 = load <4 x i32>, ptr %i.e, align 4, !tbaa !8
  %i.f = add nsw <4 x i32> %wide.load, splat (i32 1)
  %i.g = add nsw <4 x i32> %wide.load8, splat (i32 1)
  store <4 x i32> %i.f, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %i.g, ptr %i.e, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader9, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader9 ] ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Extra_ThreshDecrementWeights(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %2, %0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %0 to i64           ; 2 uses
  %i.c = sub nsw i64 %wide.trip.count, %i.b       ; 3 uses
  %min.iters.check = icmp ult i64 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, -8                       ; 3 uses
  %i.d = add nsw i64 %n.vec, %i.b
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !8
  %wide.load8 = load <4 x i32>, ptr %i.e, align 4, !tbaa !8
  %i.f = add nsw <4 x i32> %wide.load, splat (i32 -1)
  %i.g = add nsw <4 x i32> %wide.load8, splat (i32 -1)
  store <4 x i32> %i.f, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %i.g, ptr %i.e, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader9, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader9 ] ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Extra_ThreshPrintInequalities(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.us.us.preheader, label %.lr.ph24.split.split

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph24
  %wide.trip.count41 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge21.us.us
  %indvars.iv38 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next39, %._crit_edge21.us.us ] ; 4 uses
  %i.c = trunc nuw nsw i64 %indvars.iv38 to i32
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv38
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.h) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond32.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !91

bb.c:                                             ; preds = %._crit_edge.us.us, %bb.c
  %indvars.iv33 = phi i64 [ 0, %._crit_edge.us.us ], [ %indvars.iv.next34, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %i.o, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv33
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.l) ; 0 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count
  br i1 %exitcond37.not, label %._crit_edge21.us.us, label %bb.c, !llvm.loop !92

._crit_edge.us.us:                                ; preds = %bb.b
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv38
  br label %bb.c

._crit_edge21.us.us:                              ; preds = %bb.c
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge25, label %.lr.ph.us.us, !llvm.loop !93

.lr.ph24.split.split:                             ; preds = %.lr.ph24, %.lr.ph24.split.split
  %.022 = phi i32 [ %i.r, %.lr.ph24.split.split ], [ 0, %.lr.ph24 ] ; 2 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.022) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.r = add nuw nsw i32 %.022, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %3
  br i1 %exitcond.not, label %._crit_edge25, label %.lr.ph24.split.split, !llvm.loop !93

._crit_edge25:                                    ; preds = %.lr.ph24.split.split, %._crit_edge21.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Extra_ThreshCreateInequalities(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %i.b = add nsw i32 %2, 3                        ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = udiv i64 %i.a, %i.c
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.g = udiv i64 %i.f, %i.c
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = mul nsw i32 %i.h, %i.e                   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = icmp sgt i32 %5, 0
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %.preheader73.preheader, label %.preheader72

.preheader73.preheader:                           ; preds = %bb.a
  %i.l = zext nneg i32 %5 to i64
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 10 uses
  %i.n = zext nneg i32 %i.i to i64                ; 2 uses
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.o = icmp ult i32 %i.i, 4
  br i1 %i.o, label %.preheader73.epil.preheader, label %.preheader73.preheader.new

.preheader73.preheader.new:                       ; preds = %.preheader73.preheader
  %unroll_iter = and i64 %i.n, 2147483644
  br label %.preheader73

.preheader73:                                     ; preds = %.preheader73, %.preheader73.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader73.preheader.new ], [ %indvars.iv.next.3, %.preheader73 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader73.preheader.new ], [ %niter.next.3, %.preheader73 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.m, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.m, i1 false), !tbaa !11
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.m, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.m, i1 false), !tbaa !11
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next.1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.m, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.m, i1 false), !tbaa !11
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next.2
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next.2
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.m, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.m, i1 false), !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader72.loopexit.unr-lcssa, label %.preheader73, !llvm.loop !94

.preheader72.loopexit.unr-lcssa:                  ; preds = %.preheader73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader72, label %.preheader73.epil.preheader

.preheader73.epil.preheader:                      ; preds = %.preheader72.loopexit.unr-lcssa, %.preheader73.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader73.preheader ], [ %indvars.iv.next.3, %.preheader72.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %.preheader73.epil

.preheader73.epil:                                ; preds = %.preheader73.epil, %.preheader73.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader73.epil.preheader ], [ %indvars.iv.next.epil, %.preheader73.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader73.epil.preheader ], [ %epil.iter.next, %.preheader73.epil ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.m, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.m, i1 false), !tbaa !11
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader72, label %.preheader73.epil, !llvm.loop !95

.preheader72:                                     ; preds = %.preheader72.loopexit.unr-lcssa, %.preheader73.epil, %bb.a
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %i.ak = trunc i64 %i.aj to i32
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = icmp sgt i32 %i.h, 0
  %or.cond135 = and i1 %i.al, %i.am
  %i.an = icmp sgt i32 %2, 0
  %or.cond136 = and i1 %or.cond135, %i.an
  br i1 %or.cond136, label %.preheader71.us.us.preheader, label %.preheader69

.preheader71.us.us.preheader:                     ; preds = %.preheader72
  %i.ao = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter139 = and i64 %wide.trip.count, 1
  %i.ap = icmp eq i32 %2, 1
  %unroll_iter143 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod141.not = icmp eq i64 %xtraiter139, 0
  %lcmp.mod142 = trunc i32 %2 to i1
  br label %.preheader71.us.us

.preheader71.us.us:                               ; preds = %.preheader71.us.us.preheader, %._crit_edge80.split.us.us.us
  %indvars.iv112 = phi i64 [ 0, %.preheader71.us.us.preheader ], [ %indvars.iv.next113, %._crit_edge80.split.us.us.us ] ; 2 uses
  %.06281.us.us = phi i64 [ 0, %.preheader71.us.us.preheader ], [ %indvars.iv.next110.a, %._crit_edge80.split.us.us.us ]
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv112 ; 3 uses
  br label %.preheader70.us.us.us

.preheader70.us.us.us:                            ; preds = %._crit_edge77.us.us.us, %.preheader71.us.us
  %indvars.iv109.a = phi i64 [ %indvars.iv.next110.a, %._crit_edge77.us.us.us ], [ %.06281.us.us, %.preheader71.us.us ] ; 2 uses
  %.06079.us.us.us = phi i32 [ %i.bs, %._crit_edge77.us.us.us ], [ 0, %.preheader71.us.us ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv109.a ; 3 uses
  br i1 %i.ap, label %.epil.preheader, label %.preheader70.us.us.us.new

.preheader70.us.us.us.new:                        ; preds = %.preheader70.us.us.us, %bb.e
  %indvars.iv106 = phi i64 [ %indvars.iv.next107.1, %bb.e ], [ 0, %.preheader70.us.us.us ] ; 4 uses
  %niter144 = phi i64 [ %niter144.next.1, %bb.e ], [ 0, %.preheader70.us.us.us ]
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv106
  %i.ar = load i8, ptr %gep, align 1, !tbaa !97
  %i.as = icmp eq i8 %i.ar, 49
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader70.us.us.us.new
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !88
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv106
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader70.us.us.us.new
  %indvars.iv.next107 = or disjoint i64 %indvars.iv106, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next107
  %i.ba = load i8, ptr %gep.1, align 1, !tbaa !97
  %i.bb = icmp eq i8 %i.ba, 49
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bc = load ptr, ptr %i.aq, align 8, !tbaa !88
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next107
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next107.1 = add nuw nsw i64 %indvars.iv106, 2 ; 2 uses
  %niter144.next.1 = add i64 %niter144, 2         ; 2 uses
  %niter144.ncmp.1 = icmp eq i64 %niter144.next.1, %unroll_iter143
  br i1 %niter144.ncmp.1, label %._crit_edge77.us.us.us.unr-lcssa, label %.preheader70.us.us.us.new, !llvm.loop !98

._crit_edge77.us.us.us.unr-lcssa:                 ; preds = %bb.e
  br i1 %lcmp.mod141.not, label %._crit_edge77.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge77.us.us.us.unr-lcssa, %.preheader70.us.us.us
  %indvars.iv106.epil.init = phi i64 [ 0, %.preheader70.us.us.us ], [ %indvars.iv.next107.1, %._crit_edge77.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv106.epil.init
  %i.bj = load i8, ptr %gep.epil, align 1, !tbaa !97
  %i.bk = icmp eq i8 %i.bj, 49
  br i1 %i.bk, label %bb.f, label %._crit_edge77.us.us.us

bb.f:                                             ; preds = %.epil.preheader
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !88
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv106.epil.init
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !8
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !11
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !11
  br label %._crit_edge77.us.us.us

._crit_edge77.us.us.us:                           ; preds = %.epil.preheader, %bb.f, %._crit_edge77.us.us.us.unr-lcssa
  %indvars.iv.next110.a = add nsw i64 %indvars.iv109.a, 1 ; 2 uses
  %i.bs = add nuw nsw i32 %.06079.us.us.us, 1     ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %i.h
  br i1 %i.bt, label %.preheader70.us.us.us, label %._crit_edge80.split.us.us.us, !llvm.loop !99

._crit_edge80.split.us.us.us:                     ; preds = %._crit_edge77.us.us.us
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, %i.ao ; 2 uses
  %i.bu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = trunc nuw i64 %indvars.iv.next113 to i32
  %i.bx = icmp slt i32 %i.bw, %i.bv
  br i1 %i.bx, label %.preheader71.us.us, label %.preheader69, !llvm.loop !100

.preheader69:                                     ; preds = %._crit_edge80.split.us.us.us, %.preheader72
  %i.by = icmp sgt i32 %i.e, 0
  %i.bz = icmp sgt i32 %2, 0
  %or.cond137 = and i1 %i.by, %i.bz
  br i1 %or.cond137, label %.preheader68.us.preheader, label %._crit_edge97

.preheader68.us.preheader:                        ; preds = %.preheader69
  %i.ca = zext nneg i32 %i.b to i64
  %wide.trip.count118 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter146 = and i64 %wide.trip.count118, 1
  %i.cb = icmp eq i32 %2, 1
  %unroll_iter150 = and i64 %wide.trip.count118, 2147483646
  %lcmp.mod148.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod149 = trunc i32 %2 to i1
  br label %.preheader68.us

.preheader68.us:                                  ; preds = %.preheader68.us.preheader, %._crit_edge94.split.us.us
  %.296.us = phi i32 [ %i.ch, %._crit_edge94.split.us.us ], [ 0, %.preheader68.us.preheader ]
  %.26495.us = phi i32 [ %.3.lcssa.us, %._crit_edge94.split.us.us ], [ 0, %.preheader68.us.preheader ] ; 2 uses
  %i.cc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.preheader.us.us.preheader, label %._crit_edge94.split.us.us

.preheader.us.us.preheader:                       ; preds = %.preheader68.us
  %i.cf = sext i32 %.26495.us to i64
  br label %.preheader.us.us

._crit_edge94.split.us.us.loopexit:               ; preds = %._crit_edge91.us.us
  %i.cg = trunc nsw i64 %indvars.iv.next123 to i32
  br label %._crit_edge94.split.us.us

._crit_edge94.split.us.us:                        ; preds = %._crit_edge94.split.us.us.loopexit, %.preheader68.us
  %.3.lcssa.us = phi i32 [ %.26495.us, %.preheader68.us ], [ %i.cg, %._crit_edge94.split.us.us.loopexit ]
  %i.ch = add nuw nsw i32 %.296.us, 1             ; 2 uses
  %i.ci = icmp slt i32 %i.ch, %i.e
  br i1 %i.ci, label %.preheader68.us, label %._crit_edge97, !llvm.loop !101

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge91.us.us
  %indvars.iv122 = phi i64 [ %i.cf, %.preheader.us.us.preheader ], [ %indvars.iv.next123, %._crit_edge91.us.us ] ; 2 uses
  %indvars.iv120 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next121, %._crit_edge91.us.us ] ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv122 ; 3 uses
  %invariant.gep133 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv120 ; 3 uses
  br i1 %i.cb, label %.epil.preheader145, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %bb.j
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %bb.j ], [ 0, %.preheader.us.us ] ; 4 uses
  %niter151 = phi i64 [ %niter151.next.1, %bb.j ], [ 0, %.preheader.us.us ]
  %gep134 = getelementptr inbounds nuw i8, ptr %invariant.gep133, i64 %indvars.iv115
  %i.ck = load i8, ptr %gep134, align 1, !tbaa !97
  %i.cl = icmp eq i8 %i.ck, 45
  br i1 %i.cl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.us.us.new
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !88
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv115
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cp ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !11
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.us.us.new
  %indvars.iv.next116 = or disjoint i64 %indvars.iv115, 1 ; 2 uses
  %gep134.1 = getelementptr inbounds nuw i8, ptr %invariant.gep133, i64 %indvars.iv.next116
  %i.ct = load i8, ptr %gep134.1, align 1, !tbaa !97
  %i.cu = icmp eq i8 %i.ct, 45
  br i1 %i.cu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !88
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next116
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cy ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !11
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2 ; 2 uses
  %niter151.next.1 = add i64 %niter151, 2         ; 2 uses
  %niter151.ncmp.1 = icmp eq i64 %niter151.next.1, %unroll_iter150
  br i1 %niter151.ncmp.1, label %._crit_edge91.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !102

._crit_edge91.us.us.unr-lcssa:                    ; preds = %bb.j
  br i1 %lcmp.mod148.not, label %._crit_edge91.us.us, label %.epil.preheader145

.epil.preheader145:                               ; preds = %._crit_edge91.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv115.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next116.1, %._crit_edge91.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod149)
  %gep134.epil = getelementptr inbounds nuw i8, ptr %invariant.gep133, i64 %indvars.iv115.epil.init
  %i.dc = load i8, ptr %gep134.epil, align 1, !tbaa !97
  %i.dd = icmp eq i8 %i.dc, 45
  br i1 %i.dd, label %bb.k, label %._crit_edge91.us.us

bb.k:                                             ; preds = %.epil.preheader145
  %i.de = load ptr, ptr %i.cj, align 8, !tbaa !88
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv115.epil.init
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dh ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !11
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !11
  br label %._crit_edge91.us.us

._crit_edge91.us.us:                              ; preds = %.epil.preheader145, %bb.k, %._crit_edge91.us.us.unr-lcssa
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, %i.ca ; 2 uses
  %i.dl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = trunc nuw i64 %indvars.iv.next121 to i32
  %i.do = icmp slt i32 %i.dn, %i.dm
  br i1 %i.do, label %.preheader.us.us, label %._crit_edge94.split.us.us.loopexit, !llvm.loop !103

._crit_edge97:                                    ; preds = %._crit_edge94.split.us.us, %.preheader69
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Extra_ThreshSimplifyInequalities(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge52.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count57 = zext nneg i32 %0 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next55, %._crit_edge ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv54
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv54
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 4 uses
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.g, align 8, !tbaa !11
  store i64 0, ptr %i.i, align 8, !tbaa !11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ugt i64 %i.h, %i.j
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = sub nuw i64 %i.h, %i.j
  store i64 %i.m, ptr %i.g, align 8, !tbaa !11
  store i64 0, ptr %i.i, align 8, !tbaa !11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = sub nuw i64 %i.j, %i.h
  store i64 %i.n, ptr %i.i, align 8, !tbaa !11
  store i64 0, ptr %i.g, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge52.split, label %.preheader, !llvm.loop !105

._crit_edge52.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, 1001) i32 @Extra_ThreshAssignWeights(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #7 {
bb.a:
  %i.a = shl nsw i32 %3, 1
  %i.b = sext i32 %6 to i64                       ; 8 uses
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #19 ; 30 uses
end_hunk_0
