inline.NumInlined: 16
begin_hunk_0_@MtxuntDouble:bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader17.us.preheader ], [ %indvars.iv.next.7, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %.preheader17.us.epil

.preheader17.us.epil:                             ; preds = %.preheader17.us.epil, %.preheader17.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader17.us.epil.preheader ], [ %indvars.iv.next.epil, %.preheader17.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader17.us.epil.preheader ], [ %epil.iter.next, %.preheader17.us.epil ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.c, i1 false), !tbaa !11
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.preheader17.us.epil, !llvm.loop !15

.lr.ph.preheader:                                 ; preds = %.preheader17.us.epil, %.lr.ph.preheader.unr-lcssa
  %xtraiter29 = and i64 %i.b, 3                   ; 3 uses
  %i.ad = icmp ult i32 %1, 4
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter33 = and i64 %i.b, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next24.3, %.lr.ph ] ; 6 uses
  %niter34 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter34.next.3, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv23
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv23
  store double 1.000000e+00, ptr %i.ag, align 8, !tbaa !11
  %indvars.iv.next24 = or disjoint i64 %indvars.iv23, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next24
  store double 1.000000e+00, ptr %i.aj, align 8, !tbaa !11
  %indvars.iv.next24.1 = or disjoint i64 %indvars.iv23, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next24.1
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next24.1
  store double 1.000000e+00, ptr %i.am, align 8, !tbaa !11
  %indvars.iv.next24.2 = or disjoint i64 %indvars.iv23, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next24.2
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next24.2
  store double 1.000000e+00, ptr %i.ap, align 8, !tbaa !11
  %indvars.iv.next24.3 = add nuw nsw i64 %indvars.iv23, 4 ; 2 uses
  %niter34.next.3 = add i64 %niter34, 4           ; 2 uses
  %niter34.ncmp.3 = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !17

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod31.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod31.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv23.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter29, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv23.epil = phi i64 [ %indvars.iv23.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next24.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter30 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter30.next, %.lr.ph.epil ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv23.epil
  store double 1.000000e+00, ptr %i.as, align 8, !tbaa !11
  %indvars.iv.next24.epil = add nuw nsw i64 %indvars.iv23.epil, 1
  %epil.iter30.next = add i64 %epil.iter30, 1     ; 2 uses
  %epil.iter30.cmp.not = icmp eq i64 %epil.iter30.next, %xtraiter29
  br i1 %epil.iter30.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !18

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @MtxmltDouble(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 8) #16 ; 7 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.preheader33.us.us.preheader, label %._crit_edge

.preheader33.us.us.preheader:                     ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64                  ; 5 uses
  %i.e = shl nuw nsw i64 %i.d, 3
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.f = icmp ult i32 %2, 4
  %unroll_iter = and i64 %i.d, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod61 = icmp ne i64 %xtraiter, 0
  br label %.preheader33.us.us

.preheader33.us.us:                               ; preds = %.preheader33.us.us.preheader, %._crit_edge39.split.us.us.us
  %indvars.iv54 = phi i64 [ 0, %.preheader33.us.us.preheader ], [ %indvars.iv.next55, %._crit_edge39.split.us.us.us ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv54
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.b, ptr align 8 %i.h, i64 %i.e, i1 false), !tbaa !11
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader33.us.us
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %._crit_edge.us.us.us ], [ 0, %.preheader33.us.us ] ; 7 uses
  br i1 %i.f, label %.epil.preheader, label %.preheader.us.us.us.new

.preheader.us.us.us.new:                          ; preds = %.preheader.us.us.us, %.preheader.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ] ; 6 uses
  %.02836.us.us.us = phi double [ %i.aj, %.preheader.us.us.us.new ], [ 0.000000e+00, %.preheader.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.j = load double, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv49
  %i.n = load double, ptr %i.m, align 8, !tbaa !11
  %i.o = tail call double @llvm.fmuladd.f64(double %i.j, double %i.n, double %.02836.us.us.us)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv49
  %i.u = load double, ptr %i.t, align 8, !tbaa !11
  %i.v = tail call double @llvm.fmuladd.f64(double %i.q, double %i.u, double %i.o)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.1
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv49
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ab, double %i.v)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.2
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv49
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ai, double %i.ac) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.preheader.us.us.us.new, !llvm.loop !19

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.preheader.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us.us.us ], [ %indvars.iv.next.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.02836.us.us.us.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.us ], [ %i.aj, %._crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.b ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 3 uses
  %.02836.us.us.us.epil = phi double [ %i.aq, %bb.b ], [ %.02836.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.epil
  %i.al = load double, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv49
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !11
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ap, double %.02836.us.us.us.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us, label %bb.b, !llvm.loop !20

._crit_edge.us.us.us:                             ; preds = %bb.b, %._crit_edge.us.us.us.unr-lcssa
  %.lcssa = phi double [ %i.aj, %._crit_edge.us.us.us.unr-lcssa ], [ %i.aq, %bb.b ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv49
  store double %.lcssa, ptr %i.ar, align 8, !tbaa !11
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %i.d
  br i1 %exitcond53.not, label %._crit_edge39.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !21

._crit_edge39.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %i.d
  br i1 %exitcond58.not, label %._crit_edge, label %.preheader33.us.us, !llvm.loop !22

._crit_edge:                                      ; preds = %._crit_edge39.split.us.us.us, %bb.a
  tail call void @free(ptr noundef %i.b) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateCharVec(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 1) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ReallocateCharMtx(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %2, 1
  %i.c = sext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call ptr @realloc(ptr noundef %i.e, i64 noundef %i.c) #20 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !25
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %2) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateCharMtx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.2, i32 noundef %0, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i32 %1, 0
  %i.g = icmp sgt i32 %0, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %AllocateCharVec.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %AllocateCharVec.exit ] ; 2 uses
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 1) #16 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %AllocateCharVec.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

AllocateCharVec.exit:                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.i, ptr %i.m, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !28

.loopexit:                                        ; preds = %AllocateCharVec.exit, %bb.c
  %i.n = sext i32 %0 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.n
  store ptr null, ptr %i.o, align 8, !tbaa !25
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeCharMtx(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateFloatVec(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.3, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @FreeFloatVec(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateFloatHalfMtx(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, 1
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %0 to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.f = zext nneg i32 %0 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.4, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = sub nsw i64 %i.f, %indvars.iv
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #16 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.j, ptr %i.k, align 8, !tbaa !31
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.5, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.f, %bb.c ]
  %i.n = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.pre-phi
  store ptr null, ptr %i.n, align 8, !tbaa !31
  ret ptr %i.c
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateFloatMtx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, 1
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.6, i32 noundef %0, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i32 %1, 0
  %i.g = icmp sgt i32 %0, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #16 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.i, ptr %i.j, align 8, !tbaa !31
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.7, i32 noundef %0, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.m = sext i32 %0 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.m
  store ptr null, ptr %i.n, align 8, !tbaa !31
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeFloatHalfMtx(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.c) #17
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeFloatMtx(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateIntVec(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.8, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @FreeIntVec(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateFloatTri(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, 1
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.9, i64 31, i64 1, ptr %i.e) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %AllocateFloatVec.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %AllocateFloatVec.exit ] ; 3 uses
  %i.g = add nuw nsw i64 %indvars.iv, 3           ; 2 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %AllocateFloatVec.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %i.g to i32
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.3, i32 noundef %i.j) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

AllocateFloatVec.exit:                            ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.h, ptr %i.m, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %AllocateFloatVec.exit, %.preheader
  %i.n = sext i32 %0 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.n
  store ptr null, ptr %i.o, align 8, !tbaa !31
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeFloatTri(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateIntMtx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.10, i32 noundef %0, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not15 = icmp ne i32 %1, 0
  %i.f = icmp sgt i32 %0, 0
  %or.cond = and i1 %.not15, %i.f
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.g = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %AllocateIntVec.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %AllocateIntVec.exit ] ; 2 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %AllocateIntVec.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.8, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

AllocateIntVec.exit:                              ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.h, ptr %i.l, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !40

.loopexit:                                        ; preds = %AllocateIntVec.exit, %bb.c
  %i.m = sext i32 %0 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.m
  store ptr null, ptr %i.n, align 8, !tbaa !38
  ret ptr %i.c
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateCharCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.11, i32 noundef %0, i32 noundef %1, i32 noundef %2) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp ne i32 %1, 0
  %i.f = icmp sgt i32 %0, 0
  %or.cond = and i1 %.not17, %i.f
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.g = tail call ptr @AllocateCharMtx(i32 noundef %1, i32 noundef %2)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.g, ptr %i.h, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !44

.loopexit:                                        ; preds = %.lr.ph, %bb.c
  %i.i = sext i32 %0 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.i
  store ptr null, ptr %i.j, align 8, !tbaa !41
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeCharCub(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %FreeCharMtx.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %FreeCharMtx.exit ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.h, %FreeCharMtx.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not6.i = icmp eq ptr %i.c, null
  br i1 %.not6.i, label %FreeCharMtx.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph ]
  %i.d = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.d) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %FreeCharMtx.exit, label %.lr.ph.i, !llvm.loop !29

FreeCharMtx.exit:                                 ; preds = %.lr.ph.i, %.lr.ph
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %FreeCharMtx.exit, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @freeintmtx(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.c) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeIntMtx(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateCharHcu(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = add nsw i32 %1, 1
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %.not17.i = icmp ne i32 %2, 0
  %i.h = icmp sgt i32 %1, 0
  %or.cond.i = and i1 %i.h, %.not17.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %i.i = add nsw i32 %2, 1
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = sext i32 %3 to i64
  %wide.trip.count.i17 = zext nneg i32 %2 to i64
  %i.l = sext i32 %2 to i64                       ; 2 uses
  %i.m = sext i32 %1 to i64                       ; 3 uses
  br i1 %or.cond.i, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.n = icmp sgt i32 %2, 0
  %.not.i14 = icmp ne i32 %3, 0
  %or.cond.i15 = and i1 %i.n, %.not.i14
  %wide.trip.count46 = zext nneg i32 %0 to i64    ; 2 uses
  br i1 %or.cond.i15, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %AllocateCharCub.exit.loopexit.split.us.us.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %AllocateCharCub.exit.loopexit.split.us.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.o = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 8) #16 ; 4 uses
  %.not.i.us.us = icmp eq ptr %i.o, null
  br i1 %.not.i.us.us, label %.split31.us, label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %.lr.ph.split.us.split.us, %AllocateCharMtx.exit.loopexit.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us, %AllocateCharMtx.exit.loopexit.us.us.us ], [ 0, %.lr.ph.split.us.split.us ] ; 2 uses
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #16 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.split.us, label %.lr.ph.i16.us.us.us

.lr.ph.i16.us.us.us:                              ; preds = %.lr.ph.i.us.us.us, %AllocateCharVec.exit.i.us.us.us
  %indvars.iv.i18.us.us.us = phi i64 [ %indvars.iv.next.i19.us.us.us, %AllocateCharVec.exit.i.us.us.us ], [ 0, %.lr.ph.i.us.us.us ] ; 2 uses
  %i.r = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 1) #16 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.split22.us, label %AllocateCharVec.exit.i.us.us.us

AllocateCharVec.exit.i.us.us.us:                  ; preds = %.lr.ph.i16.us.us.us
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i18.us.us.us
  store ptr %i.r, ptr %i.t, align 8, !tbaa !25
  %indvars.iv.next.i19.us.us.us = add nuw nsw i64 %indvars.iv.i18.us.us.us, 1 ; 2 uses
  %exitcond.not.i20.us.us.us = icmp eq i64 %indvars.iv.next.i19.us.us.us, %wide.trip.count.i17
  br i1 %exitcond.not.i20.us.us.us, label %AllocateCharMtx.exit.loopexit.us.us.us, label %.lr.ph.i16.us.us.us, !llvm.loop !28

AllocateCharMtx.exit.loopexit.us.us.us:           ; preds = %AllocateCharVec.exit.i.us.us.us
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr null, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.us.us.us
  store ptr %i.p, ptr %i.v, align 8, !tbaa !41
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us = icmp eq i64 %indvars.iv.next.i.us.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.us, label %AllocateCharCub.exit.loopexit.split.us.us.us, label %.lr.ph.i.us.us.us, !llvm.loop !44

AllocateCharCub.exit.loopexit.split.us.us.us:     ; preds = %AllocateCharMtx.exit.loopexit.us.us.us
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m
  store ptr null, ptr %i.w, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv43
  store ptr %i.o, ptr %i.x, align 8, !tbaa !48
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !51

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %AllocateCharCub.exit.loopexit.split.us28
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %AllocateCharCub.exit.loopexit.split.us28 ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.y = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 8) #16 ; 4 uses
  %.not.i.us = icmp eq ptr %i.y, null
  br i1 %.not.i.us, label %.split31.us, label %.lr.ph.i.us24

.lr.ph.i.us24:                                    ; preds = %.lr.ph.split.us.split, %AllocateCharMtx.exit.us
  %indvars.iv.i.us25 = phi i64 [ %indvars.iv.next.i.us26, %AllocateCharMtx.exit.us ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %i.z = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #16 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.split.us, label %AllocateCharMtx.exit.us

AllocateCharMtx.exit.us:                          ; preds = %.lr.ph.i.us24
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.l
  store ptr null, ptr %i.ab, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.us25
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !41
  %indvars.iv.next.i.us26 = add nuw nsw i64 %indvars.iv.i.us25, 1 ; 2 uses
  %exitcond.not.i.us27 = icmp eq i64 %indvars.iv.next.i.us26, %wide.trip.count.i
  br i1 %exitcond.not.i.us27, label %AllocateCharCub.exit.loopexit.split.us28, label %.lr.ph.i.us24, !llvm.loop !44

AllocateCharCub.exit.loopexit.split.us28:         ; preds = %AllocateCharMtx.exit.us
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.m
  store ptr null, ptr %i.ad, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv38
  store ptr %i.y, ptr %i.ae, align 8, !tbaa !48
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count46
  br i1 %exitcond42.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !51

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #19
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %AllocateCharCub.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %AllocateCharCub.exit ] ; 2 uses
  %i.af = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 8) #16 ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %.split31.us, label %AllocateCharCub.exit

.split31.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

AllocateCharCub.exit:                             ; preds = %.lr.ph.split
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.m
  store ptr null, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !51

.split.us:                                        ; preds = %.lr.ph.i.us24, %.lr.ph.i.us.us.us
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.2, i32 noundef %2, i32 noundef %3) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

.split22.us:                                      ; preds = %.lr.ph.i16.us.us.us
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str, i32 noundef %3) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

._crit_edge:                                      ; preds = %AllocateCharCub.exit, %AllocateCharCub.exit.loopexit.split.us28, %AllocateCharCub.exit.loopexit.split.us.us.us, %.preheader
  %i.ao = sext i32 %0 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ao
  store ptr null, ptr %i.ap, align 8, !tbaa !48
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeCharHcu(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %FreeCharCub.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %FreeCharCub.exit ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.l, %FreeCharCub.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not6.i = icmp eq ptr %i.c, null
  br i1 %.not6.i, label %FreeCharCub.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %FreeCharMtx.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %FreeCharMtx.exit.i ], [ 0, %.lr.ph ]
  %i.d = phi ptr [ %i.j, %FreeCharMtx.exit.i ], [ %i.c, %.lr.ph ] ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.e, null
  br i1 %.not6.i.i, label %FreeCharMtx.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i ]
  %i.f = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.e, %.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.f) #17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %FreeCharMtx.exit.i, label %.lr.ph.i.i, !llvm.loop !29

FreeCharMtx.exit.i:                               ; preds = %.lr.ph.i.i, %.lr.ph.i
  tail call void @free(ptr noundef nonnull %i.d) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %FreeCharCub.exit, label %.lr.ph.i, !llvm.loop !45

FreeCharCub.exit:                                 ; preds = %FreeCharMtx.exit.i, %.lr.ph
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %FreeCharCub.exit, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local noalias noundef ptr @AllocateDoubleVec(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 8) #16
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @FreeDoubleVec(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateIntCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.12, i64 23, i64 1, ptr %i.f) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.h = tail call ptr @AllocateIntMtx(i32 noundef %1, i32 noundef %2)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.h, ptr %i.i, align 8, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.j = sext i32 %0 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.j
  store ptr null, ptr %i.k, align 8, !tbaa !53
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeIntCub(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %FreeIntMtx.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %FreeIntMtx.exit ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.h, %FreeIntMtx.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not6.i = icmp eq ptr %i.c, null
  br i1 %.not6.i, label %FreeIntMtx.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph ]
  %i.d = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.d) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %FreeIntMtx.exit, label %.lr.ph.i, !llvm.loop !47

FreeIntMtx.exit:                                  ; preds = %.lr.ph.i, %.lr.ph
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %FreeIntMtx.exit, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateDoubleMtx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.13, i64 26, i64 1, ptr %i.d) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not13 = icmp ne i32 %1, 0
  %i.f = icmp sgt i32 %0, 0
  %or.cond = and i1 %.not13, %i.f
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.g = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.h = tail call noalias noundef ptr @calloc(i64 noundef %i.g, i64 noundef 8) #16
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.h, ptr %i.i, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !57

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.j = sext i32 %0 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.j
  store ptr null, ptr %i.k, align 8, !tbaa !8
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeDoubleMtx(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateFloatCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.14, i64 28, i64 1, ptr %i.e) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.g = tail call ptr @AllocateFloatMtx(i32 noundef %1, i32 noundef %2)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.g, ptr %i.h, align 8, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.i = sext i32 %0 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.i
  store ptr null, ptr %i.j, align 8, !tbaa !59
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeFloatCub(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %FreeFloatMtx.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %FreeFloatMtx.exit ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.h, %FreeFloatMtx.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not6.i = icmp eq ptr %i.c, null
  br i1 %.not6.i, label %FreeFloatMtx.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph ]
  %i.d = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.d) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %FreeFloatMtx.exit, label %.lr.ph.i, !llvm.loop !35

FreeFloatMtx.exit:                                ; preds = %.lr.ph.i, %.lr.ph
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %FreeFloatMtx.exit, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateDoubleCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = add nsw i32 %1, 1
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %.not13.i = icmp ne i32 %2, 0
  %i.g = icmp sgt i32 %1, 0
  %or.cond.i = and i1 %i.g, %.not13.i
  %i.h = sext i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %1 to i64
  %i.i = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count20 = zext nneg i32 %0 to i64    ; 2 uses
  br i1 %or.cond.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %AllocateDoubleMtx.exit.loopexit.us
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %AllocateDoubleMtx.exit.loopexit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 8) #16 ; 4 uses
  %.not.i.us = icmp eq ptr %i.j, null
  br i1 %.not.i.us, label %.split.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.k = tail call noalias noundef ptr @calloc(i64 noundef %i.h, i64 noundef 8) #16
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.us
  store ptr %i.k, ptr %i.l, align 8, !tbaa !8
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %AllocateDoubleMtx.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !57

AllocateDoubleMtx.exit.loopexit.us:               ; preds = %.lr.ph.i.us
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  store ptr null, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv17
  store ptr %i.j, ptr %i.n, align 8, !tbaa !63
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %exitcond21.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count20
  br i1 %exitcond21.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !65

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.p = tail call i64 @fwrite(ptr nonnull @.str.15, i64 29, i64 1, ptr %i.o) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph, %AllocateDoubleMtx.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %AllocateDoubleMtx.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 8) #16 ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %.split.us, label %AllocateDoubleMtx.exit

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.s = tail call i64 @fwrite(ptr nonnull @.str.13, i64 26, i64 1, ptr %i.r) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

AllocateDoubleMtx.exit:                           ; preds = %.lr.ph.split
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.i
  store ptr null, ptr %i.t, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.q, ptr %i.u, align 8, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count20
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !65

._crit_edge:                                      ; preds = %AllocateDoubleMtx.exit, %AllocateDoubleMtx.exit.loopexit.us, %.preheader
  %i.v = sext i32 %0 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.v
  store ptr null, ptr %i.w, align 8, !tbaa !63
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeDoubleCub(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %FreeDoubleMtx.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %FreeDoubleMtx.exit ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.h, %FreeDoubleMtx.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not6.i = icmp eq ptr %i.c, null
  br i1 %.not6.i, label %FreeDoubleMtx.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph ]
  %i.d = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.d) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %FreeDoubleMtx.exit, label %.lr.ph.i, !llvm.loop !58

FreeDoubleMtx.exit:                               ; preds = %.lr.ph.i, %.lr.ph
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %FreeDoubleMtx.exit, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateShortVec(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 2) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.16, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @FreeShortVec(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateShortMtx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.17, i32 noundef %0, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %.lr.ph, %AllocateShortVec.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %AllocateShortVec.exit ] ; 2 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 2) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %AllocateShortVec.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.16, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

AllocateShortVec.exit:                            ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.h, ptr %i.l, align 8, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !69

._crit_edge:                                      ; preds = %AllocateShortVec.exit, %.preheader
  %i.m = sext i32 %0 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.m
  store ptr null, ptr %i.n, align 8, !tbaa !67
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeShortMtx(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 double", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !10, i64 0}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 float", !10, i64 0}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 int", !10, i64 0}
!40 = distinct !{!40, !14}
!41 = !{!42, !42, i64 0}
!42 = !{!"p2 omnipotent char", !43, i64 0}
!43 = !{!"any p2 pointer", !10, i64 0}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = !{!49, !49, i64 0}
!49 = !{!"p3 omnipotent char", !50, i64 0}
!50 = !{!"any p3 pointer", !43, i64 0}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = !{!54, !54, i64 0}
!54 = !{!"p2 int", !43, i64 0}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = !{!60, !60, i64 0}
!60 = !{!"p2 float", !43, i64 0}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = !{!64, !64, i64 0}
!64 = !{!"p2 double", !43, i64 0}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 short", !10, i64 0}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
end_hunk_0
