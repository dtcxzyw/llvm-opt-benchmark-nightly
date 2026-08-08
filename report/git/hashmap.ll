inline.NumInlined: 25
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@memhash:bb.a
  %i.t = mul i32 %i.p, 16777619
  %i.u = xor i32 %i.t, %i.s                       ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.059.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.q, %._crit_edge.loopexit.unr-lcssa ]
  %.068.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.059.epil = phi ptr [ %i.v, %.lr.ph.epil ], [ %.059.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.068.epil = phi i32 [ %i.z, %.lr.ph.epil ], [ %.068.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %.059.epil, i64 1
  %i.w = load i8, ptr %.059.epil, align 1, !tbaa !12
  %i.x = zext i8 %i.w to i32
  %i.y = mul i32 %.068.epil, 16777619
  %i.z = xor i32 %i.y, %i.x                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !17

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.06.lcssa = phi i32 [ -2128831035, %bb.a ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %.lr.ph.epil ]
  ret i32 %.06.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @memihash(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not13 = icmp eq i64 %1, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0916 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.i, %.lr.ph ] ; 3 uses
  %.01015 = phi i32 [ -2128831035, %.lr.ph.preheader.new ], [ %i.o, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0916, i64 1
  %i.c = load i8, ptr %.0916, align 1, !tbaa !12  ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = add i8 %i.c, -97
  %or.cond = icmp ult i8 %i.e, 26
  %i.f = add nsw i32 %i.d, -32
  %spec.select = select i1 %or.cond, i32 %i.f, i32 %i.d
  %i.g = mul i32 %.01015, 16777619
  %i.h = xor i32 %spec.select, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.0916, i64 2 ; 2 uses
  %i.j = load i8, ptr %i.b, align 1, !tbaa !12    ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = add i8 %i.j, -97
  %or.cond.1 = icmp ult i8 %i.l, 26
  %i.m = add nsw i32 %i.k, -32
  %spec.select.1 = select i1 %or.cond.1, i32 %i.m, i32 %i.k
  %i.n = mul i32 %i.h, 16777619
  %i.o = xor i32 %spec.select.1, %i.n             ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !19

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0916.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ]
  %.01015.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.p = load i8, ptr %.0916.epil.init, align 1, !tbaa !12 ; 2 uses
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = add i8 %i.p, -97
  %or.cond.epil = icmp ult i8 %i.r, 26
  %i.s = add nsw i32 %i.q, -32
  %spec.select.epil = select i1 %or.cond.epil, i32 %i.s, i32 %i.q
  %i.t = mul i32 %.01015.epil.init, 16777619
  %i.u = xor i32 %spec.select.epil, %i.t
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.010.lcssa = phi i32 [ -2128831035, %bb.a ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ]
  ret i32 %.010.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @memihash_cont(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not14 = icmp eq i64 %2, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.a = add nsw i64 %2, -1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %1, align 1, !tbaa !12      ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = add i8 %i.c, -97
  %or.cond.prol = icmp ult i8 %i.e, 26
  %i.f = add nsw i32 %i.d, -32
  %spec.select.prol = select i1 %or.cond.prol, i32 %i.f, i32 %i.d
  %i.g = mul i32 %0, 16777619
  %i.h = xor i32 %spec.select.prol, %i.g          ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.01017.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.b, %.lr.ph.prol ]
  %.01116.unr = phi i32 [ %0, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.01215.unr = phi i64 [ %2, %.lr.ph.preheader ], [ %i.a, %.lr.ph.prol ]
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01017 = phi ptr [ %i.r, %.lr.ph ], [ %.01017.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01116 = phi i32 [ %i.x, %.lr.ph ], [ %.01116.unr, %.lr.ph.prol.loopexit ]
  %.01215 = phi i64 [ %i.q, %.lr.ph ], [ %.01215.unr, %.lr.ph.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.01017, i64 1
  %i.k = load i8, ptr %.01017, align 1, !tbaa !12 ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = add i8 %i.k, -97
  %or.cond = icmp ult i8 %i.m, 26
  %i.n = add nsw i32 %i.l, -32
  %spec.select = select i1 %or.cond, i32 %i.n, i32 %i.l
  %i.o = mul i32 %.01116, 16777619
  %i.p = xor i32 %spec.select, %i.o
  %i.q = add i64 %.01215, -2                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01017, i64 2
  %i.s = load i8, ptr %i.j, align 1, !tbaa !12    ; 2 uses
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = add i8 %i.s, -97
  %or.cond.1 = icmp ult i8 %i.u, 26
  %i.v = add nsw i32 %i.t, -32
  %spec.select.1 = select i1 %or.cond.1, i32 %i.v, i32 %i.t
  %i.w = mul i32 %i.p, 16777619
  %i.x = xor i32 %spec.select.1, %i.w             ; 2 uses
  %.not.1 = icmp eq i64 %i.q, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.011.lcssa = phi i32 [ %0, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.x, %.lr.ph ]
  ret i32 %.011.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @hashmap_bucket(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  %i.c = add i32 %i.b, -1
  %i.d = and i32 %i.c, %1
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local void @hashmap_init(ptr nofree noundef captures(none) initializes((0, 48)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %.not = icmp eq ptr %1, null
  %i.a = select i1 %.not, ptr @always_equal, ptr %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !27
  %i.d = mul i64 %3, 100
  %i.e = udiv i64 %i.d, 80
  %i.f = and i64 %i.e, 4294967295
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 64, %bb.a ], [ %i.i, %bb.b ]    ; 4 uses
  %i.g = zext i32 %.0 to i64                      ; 3 uses
  %i.h = icmp samesign ugt i64 %i.f, %i.g
  %i.i = shl i32 %.0, 2
  br i1 %i.h, label %bb.b, label %bb.c, !llvm.loop !28

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0, ptr %i.j, align 4, !tbaa !21
  %i.k = tail call ptr @xcalloc(i64 noundef %i.g, i64 noundef 8) #15
  store ptr %i.k, ptr %0, align 8, !tbaa !29
  %4 = mul nuw nsw i64 %i.g, 80
  %i.l = udiv i64 %4, 100
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.m, ptr %i.n, align 8, !tbaa !30
  %i.o = icmp ult i32 %.0, 65
  %i.p = udiv i32 %i.m, 5
  %.sink.i = select i1 %i.o, i32 0, i32 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sink.i, ptr %i.q, align 4, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = or i8 %i.s, 1
  store i8 %i.t, ptr %i.r, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @always_equal(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #5 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @hashmap_partial_clear_(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp sgt i64 %1, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br i1 %i.b, label %bb.d, label %.free_individual_entries.exit_crit_edge

.free_individual_entries.exit_crit_edge:          ; preds = %bb.c
  %.pre10 = load i32, ptr %i.c, align 4, !tbaa !21
  br label %free_individual_entries.exit

bb.d:                                             ; preds = %bb.c
  %i.d = sub nsw i64 0, %1
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.sroa.4.0.i = phi ptr [ null, %bb.d ], [ %i.j, %bb.h ] ; 2 uses
  %.sroa.7.0.i = phi i32 [ 0, %bb.d ], [ %.sroa.7.1.i, %bb.h ] ; 4 uses
  %.not16.i.i = icmp eq ptr %.sroa.4.0.i, null
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %bb.h

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.e = load i32, ptr %i.c, align 4, !tbaa !21   ; 3 uses
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %.sroa.7.0.i, i32 %i.e)
  %wide.trip.count.i.i = zext i32 %umax.i.i to i64
  %exitcond.not.i.i13.not = icmp ult i32 %.sroa.7.0.i, %i.e
  br i1 %exitcond.not.i.i13.not, label %.lr.ph, label %free_individual_entries.exit.loopexit

.lr.ph:                                           ; preds = %.lr.ph.i.i
  %i.f = zext i32 %.sroa.7.0.i to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !29
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %free_individual_entries.exit.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.i.i14 = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i14, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i14
  %.0.i.i = load ptr, ptr %i.h, align 8, !tbaa !32 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g
  %i.i = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %bb.e
  %.sroa.7.1.i = phi i32 [ %.sroa.7.0.i, %bb.e ], [ %i.i, %.loopexit.i ]
  %.0.lcssa.i.i = phi ptr [ %.sroa.4.0.i, %bb.e ], [ %.0.i.i, %.loopexit.i ] ; 2 uses
  %i.j = load ptr, ptr %.0.lcssa.i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds i8, ptr %.0.lcssa.i.i, i64 %i.d
  tail call void @free(ptr noundef nonnull %i.k) #15
  br label %bb.e, !llvm.loop !36

free_individual_entries.exit.loopexit:            ; preds = %.lr.ph.i.i, %bb.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  br label %free_individual_entries.exit

free_individual_entries.exit:                     ; preds = %.free_individual_entries.exit_crit_edge, %free_individual_entries.exit.loopexit
  %i.l = phi i32 [ %i.e, %free_individual_entries.exit.loopexit ], [ %.pre10, %.free_individual_entries.exit_crit_edge ]
  %i.m = phi ptr [ %.pre, %free_individual_entries.exit.loopexit ], [ %i.a, %.free_individual_entries.exit_crit_edge ]
  %i.n = zext i32 %i.l to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.p, align 4, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.q, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %free_individual_entries.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @hashmap_clear_(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp sgt i64 %1, -1
  br i1 %i.b, label %bb.d, label %free_individual_entries.exit

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = sub nsw i64 0, %1
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.sroa.4.0.i = phi ptr [ null, %bb.d ], [ %i.i, %bb.h ] ; 2 uses
  %.sroa.7.0.i = phi i32 [ 0, %bb.d ], [ %.sroa.7.1.i, %bb.h ] ; 4 uses
  %.not16.i.i = icmp eq ptr %.sroa.4.0.i, null
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %bb.h

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.e = load i32, ptr %i.c, align 4, !tbaa !21   ; 2 uses
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %.sroa.7.0.i, i32 %i.e)
  %wide.trip.count.i.i = zext i32 %umax.i.i to i64
  %exitcond.not.i.i13.not = icmp ult i32 %.sroa.7.0.i, %i.e
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !29  ; 2 uses
  br i1 %exitcond.not.i.i13.not, label %.lr.ph, label %free_individual_entries.exit

.lr.ph:                                           ; preds = %.lr.ph.i.i
  %i.f = zext i32 %.sroa.7.0.i to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  br i1 %exitcond.not.i.i, label %free_individual_entries.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.pre16 = phi ptr [ %.pre14, %.lr.ph ], [ %.pre, %bb.f ]
  %indvars.iv.i.i15 = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i15, 1 ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.pre16, i64 %indvars.iv.i.i15
  %.0.i.i = load ptr, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g
  %i.h = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %bb.e
  %.sroa.7.1.i = phi i32 [ %.sroa.7.0.i, %bb.e ], [ %i.h, %.loopexit.i ]
  %.0.lcssa.i.i = phi ptr [ %.sroa.4.0.i, %bb.e ], [ %.0.i.i, %.loopexit.i ] ; 2 uses
  %i.i = load ptr, ptr %.0.lcssa.i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds i8, ptr %.0.lcssa.i.i, i64 %i.d
  tail call void @free(ptr noundef nonnull %i.j) #15
  br label %bb.e, !llvm.loop !36

free_individual_entries.exit:                     ; preds = %.lr.ph.i.i, %bb.f, %bb.c
  %i.k = phi ptr [ %i.a, %bb.c ], [ %.pre, %bb.f ], [ %.pre14, %.lr.ph.i.i ]
  tail call void @free(ptr noundef %i.k) #15
  store ptr null, ptr %0, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.l, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.m, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %free_individual_entries.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @hashmap_get(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %find_entry_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 28
  %.val.i = load i32, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val12.i = load i32, ptr %i.c, align 8, !tbaa !38
  %i.d = add i32 %.val.i, -1
  %i.e = and i32 %.val12.i, %i.d
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !32   ; 4 uses
  %.not16.i = icmp eq ptr %i.i, null
  %i.j = icmp eq ptr %i.i, %1
  %or.cond17.i = or i1 %.not16.i, %i.j
  br i1 %or.cond17.i, label %find_entry_ptr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %entry_equals.exit.thread.i, %.lr.ph.i
  %i.l = phi ptr [ %i.i, %.lr.ph.i ], [ %i.u, %entry_equals.exit.thread.i ] ; 3 uses
  %.018.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.t, %entry_equals.exit.thread.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38
  %i.o = load i32, ptr %i.c, align 8, !tbaa !38
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %entry_equals.exit.i, label %entry_equals.exit.thread.i

entry_equals.exit.i:                              ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.s = tail call i32 %i.q(ptr noundef %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull %1, ptr noundef %2) #15, !inline_history !39
  %.not.i.not.i = icmp eq i32 %i.s, 0
  %.pre.pre = load ptr, ptr %.018.i, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i.not.i, label %find_entry_ptr.exit, label %entry_equals.exit.thread.i

entry_equals.exit.thread.i:                       ; preds = %entry_equals.exit.i, %bb.c
  %i.t = phi ptr [ %i.l, %bb.c ], [ %.pre.pre, %entry_equals.exit.i ] ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32   ; 4 uses
  %.not.i = icmp eq ptr %i.u, null
  %i.v = icmp eq ptr %i.u, %1
  %or.cond.i = or i1 %.not.i, %i.v
  br i1 %or.cond.i, label %find_entry_ptr.exit, label %bb.c, !llvm.loop !40

find_entry_ptr.exit:                              ; preds = %entry_equals.exit.thread.i, %entry_equals.exit.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.b ], [ %i.u, %entry_equals.exit.thread.i ], [ %.pre.pre, %entry_equals.exit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hashmap_get_next(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.011 = load ptr, ptr %1, align 8, !tbaa !34    ; 4 uses
  %.not12 = icmp eq ptr %.011, null
  %i.b = icmp eq ptr %1, %.011
  %or.cond13 = or i1 %.not12, %i.b
  br i1 %or.cond13, label %entry_equals.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge.backedge
  %.014 = phi ptr [ %.011, %.lr.ph ], [ %.0, %.critedge.backedge ] ; 4 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %entry_equals.exit, label %.critedge.backedge

entry_equals.exit:                                ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.k = tail call i32 %i.i(ptr noundef %i.j, ptr noundef nonnull %1, ptr noundef nonnull %.014, ptr noundef null) #15, !inline_history !41
  %.not.i.not = icmp eq i32 %i.k, 0
  br i1 %.not.i.not, label %entry_equals.exit.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %entry_equals.exit, %bb.b
  %.0 = load ptr, ptr %.014, align 8, !tbaa !34   ; 4 uses
  %.not = icmp eq ptr %.0, null
  %i.l = icmp eq ptr %1, %.0
  %or.cond = or i1 %.not, %i.l
  br i1 %or.cond, label %entry_equals.exit.thread, label %bb.b, !llvm.loop !42

entry_equals.exit.thread:                         ; preds = %entry_equals.exit, %.critedge.backedge, %bb.a
  %.0.lcssa = phi ptr [ %.011, %bb.a ], [ %.0, %.critedge.backedge ], [ %.014, %entry_equals.exit ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @hashmap_add(ptr nofree noundef captures(none) %0, ptr noundef initializes((0, 8)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 64, ptr %i.b, align 4, !tbaa !21
  %i.c = tail call ptr @xcalloc(i64 noundef 64, i64 noundef 8) #15 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 51, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.e, align 4, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 28         ; 3 uses
  %.val = load i32, ptr %i.g, align 4, !tbaa !21  ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 8
  %.val16 = load i32, ptr %i.h, align 8, !tbaa !38
  %i.i = add i32 %.val, -1
  %i.j = and i32 %.val16, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  store ptr %i.m, ptr %1, align 8, !tbaa !34
  store ptr %1, ptr %i.l, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 1
  %.not15 = icmp eq i8 %i.p, 0
  br i1 %.not15, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !37
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !30
  %i.v = icmp ugt i32 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = shl i32 %.val, 2                         ; 3 uses
  store i32 %i.w, ptr %i.g, align 4, !tbaa !21
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = tail call ptr @xcalloc(i64 noundef %i.x, i64 noundef 8) #15 ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !29
  %2 = mul nuw nsw i64 %i.x, 80
  %i.z = udiv i64 %2, 100
  %i.aa = trunc nuw i64 %i.z to i32               ; 2 uses
  store i32 %i.aa, ptr %i.t, align 8, !tbaa !30
  %i.ab = icmp ult i32 %i.w, 65
  %i.ac = udiv i32 %i.aa, 5
  %.sink.i.i = select i1 %i.ab, i32 0, i32 %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sink.i.i, ptr %i.ad, align 4, !tbaa !31
  %.not27.i = icmp eq i32 %.val, 0
  br i1 %.not27.i, label %rehash.exit, label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %bb.e
  %wide.trip.count.i = zext i32 %.val to i64
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %._crit_edge.i, %.lr.ph25.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %.not21.i = icmp eq ptr %i.af, null
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph25.i
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !21
  %i.ag = add i32 %.val.i, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.02022.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.ah, %bb.f ] ; 4 uses
  %i.ah = load ptr, ptr %.02022.i, align 8, !tbaa !34 ; 2 uses
  %i.ai = getelementptr i8, ptr %.02022.i, i64 8
  %.020.val.i = load i32, ptr %i.ai, align 8, !tbaa !38
  %i.aj = and i32 %.020.val.i, %i.ag
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32
  store ptr %i.am, ptr %.02022.i, align 8, !tbaa !34
  store ptr %.02022.i, ptr %i.al, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.f, %.lr.ph25.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %rehash.exit, label %.lr.ph25.i, !llvm.loop !44

rehash.exit:                                      ; preds = %._crit_edge.i, %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %rehash.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hashmap_remove(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 28         ; 4 uses
  %.val.i = load i32, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val12.i = load i32, ptr %i.c, align 8, !tbaa !38
  %i.d = add i32 %.val.i, -1
  %i.e = and i32 %.val12.i, %i.d
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !32   ; 4 uses
  %.not16.i = icmp eq ptr %i.i, null
  %i.j = icmp eq ptr %i.i, %1
  %or.cond17.i = or i1 %.not16.i, %i.j
  br i1 %or.cond17.i, label %find_entry_ptr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %entry_equals.exit.thread.i, %.lr.ph.i
  %i.l = phi ptr [ %i.i, %.lr.ph.i ], [ %i.u, %entry_equals.exit.thread.i ] ; 3 uses
  %.018.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.t, %entry_equals.exit.thread.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38
  %i.o = load i32, ptr %i.c, align 8, !tbaa !38
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %entry_equals.exit.i, label %entry_equals.exit.thread.i

entry_equals.exit.i:                              ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.s = tail call i32 %i.q(ptr noundef %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull %1, ptr noundef %2) #15, !inline_history !39
  %.not.i.not.i = icmp eq i32 %i.s, 0
  %.pr = load ptr, ptr %.018.i, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i.not.i, label %find_entry_ptr.exit, label %entry_equals.exit.thread.i

entry_equals.exit.thread.i:                       ; preds = %entry_equals.exit.i, %bb.c
  %i.t = phi ptr [ %i.l, %bb.c ], [ %.pr, %entry_equals.exit.i ] ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32   ; 4 uses
  %.not.i = icmp eq ptr %i.u, null
  %i.v = icmp eq ptr %i.u, %1
  %or.cond.i = or i1 %.not.i, %i.v
  br i1 %or.cond.i, label %find_entry_ptr.exit, label %bb.c, !llvm.loop !40

find_entry_ptr.exit:                              ; preds = %entry_equals.exit.thread.i, %entry_equals.exit.i, %bb.b
  %i.w = phi ptr [ %i.i, %bb.b ], [ %i.u, %entry_equals.exit.thread.i ], [ %.pr, %entry_equals.exit.i ] ; 6 uses
  %.0.lcssa.i = phi ptr [ %i.g, %bb.b ], [ %i.t, %entry_equals.exit.thread.i ], [ %.018.i, %entry_equals.exit.i ]
  %.not18 = icmp eq ptr %i.w, null
  br i1 %.not18, label %bb.h, label %bb.d

bb.d:                                             ; preds = %find_entry_ptr.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34
  store ptr %i.x, ptr %.0.lcssa.i, align 8, !tbaa !32
  store ptr null, ptr %i.w, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 1
  %.not19 = icmp eq i8 %i.aa, 0
  br i1 %.not19, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !37
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31
  %i.ag = icmp ult i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !21  ; 4 uses
  %i.ai = lshr i32 %i.ah, 2                       ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !21
  %i.ak = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.al = tail call ptr @xcalloc(i64 noundef %i.ak, i64 noundef 8) #15 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !29
  %3 = mul nuw nsw i64 %i.ak, 80
  %4 = udiv i64 %3, 100
  %5 = trunc nuw nsw i64 %4 to i32                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %5, ptr %i.am, align 8, !tbaa !30
  %i.an = icmp ult i32 %i.ah, 260
  %i.ao = udiv i32 %5, 5
  %.sink.i.i = select i1 %i.an, i32 0, i32 %i.ao
  store i32 %.sink.i.i, ptr %i.ae, align 4, !tbaa !31
  %.not27.i = icmp eq i32 %i.ah, 0
  br i1 %.not27.i, label %rehash.exit, label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %bb.f
  %wide.trip.count.i = zext i32 %i.ah to i64
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %._crit_edge.i, %.lr.ph25.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %.not21.i = icmp eq ptr %i.aq, null
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph25.i
  %.val.i21 = load i32, ptr %i.b, align 4, !tbaa !21
  %i.ar = add i32 %.val.i21, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i20
  %.02022.i = phi ptr [ %i.aq, %.lr.ph.i20 ], [ %i.as, %bb.g ] ; 4 uses
  %i.as = load ptr, ptr %.02022.i, align 8, !tbaa !34 ; 2 uses
  %i.at = getelementptr i8, ptr %.02022.i, i64 8
  %.020.val.i = load i32, ptr %i.at, align 8, !tbaa !38
  %i.au = and i32 %.020.val.i, %i.ar
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32
  store ptr %i.ax, ptr %.02022.i, align 8, !tbaa !34
  store ptr %.02022.i, ptr %i.aw, align 8, !tbaa !32
  %.not.i22 = icmp eq ptr %i.as, null
  br i1 %.not.i22, label %._crit_edge.i, label %bb.g, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.g, %.lr.ph25.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %rehash.exit, label %.lr.ph25.i, !llvm.loop !44

rehash.exit:                                      ; preds = %._crit_edge.i, %bb.f
  tail call void @free(ptr noundef %i.aj) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %rehash.exit, %bb.e, %find_entry_ptr.exit, %bb.a
  %.0 = phi ptr [ null, %find_entry_ptr.exit ], [ null, %bb.a ], [ %i.w, %bb.e ], [ %i.w, %rehash.exit ], [ %i.w, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hashmap_put(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @hashmap_remove(ptr noundef %0, ptr noundef %1, ptr noundef null)
  tail call void @hashmap_add(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @hashmap_iter_init(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %1) local_unnamed_addr #8 {
bb.a:
  store ptr %0, ptr %1, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !49
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @hashmap_iter_next(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.015 = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %.not16 = icmp eq ptr %.015, null
  br i1 %.not16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21   ; 2 uses
  %.promoted = load i32, ptr %i.b, align 8, !tbaa !48 ; 3 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %.promoted, i32 %i.e)
  %wide.trip.count = zext i32 %umax to i64
  %exitcond.not23.not = icmp ult i32 %.promoted, %i.e
  br i1 %exitcond.not23.not, label %.lr.ph25, label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph
  %i.f = zext i32 %.promoted to i64
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !29
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  store i32 %i.i, ptr %i.b, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %.015, %bb.a ], [ %.0, %._crit_edge.loopexit ] ; 2 uses
  %i.h = load ptr, ptr %.0.lcssa, align 8, !tbaa !34
  store ptr %i.h, ptr %i.a, align 8, !tbaa !49
  br label %.loopexit

bb.b:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph25, %bb.b
  %indvars.iv24 = phi i64 [ %i.f, %.lr.ph25 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv24, 1 ; 3 uses
  %i.i = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv24
  %.0 = load ptr, ptr %i.j, align 8, !tbaa !32    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  store i32 %i.i, ptr %i.b, align 8, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph, %._crit_edge
  %.014 = phi ptr [ %.0.lcssa, %._crit_edge ], [ null, %.lr.ph ], [ null, %.loopexit.loopexit ]
  ret ptr %.014
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @memintern(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.pool_entry, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 28), align 4, !tbaa !21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @memintern.map, i8 0, i64 48, i1 false)
  store ptr @pool_entry_cmp, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 8), align 8, !tbaa !26
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 28), align 4, !tbaa !21
  %i.b = tail call ptr @xcalloc(i64 noundef 64, i64 noundef 8) #15
  store ptr %i.b, ptr @memintern.map, align 8, !tbaa !29
  store i32 51, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 32), align 8, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 36), align 4, !tbaa !31
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 40), align 8
  %i.d = or i8 %i.c, 1
  store i8 %i.d, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 40), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not7.i = icmp eq i64 %1, 0
  br i1 %.not7.i, label %memhash.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.e = icmp ult i64 %1, 4
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.059.i = phi ptr [ %0, %.lr.ph.i.preheader.new ], [ %i.u, %.lr.ph.i ] ; 5 uses
  %.068.i = phi i32 [ -2128831035, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %.059.i, i64 1
  %i.g = load i8, ptr %.059.i, align 1, !tbaa !12
  %i.h = zext i8 %i.g to i32
  %i.i = mul i32 %.068.i, 16777619
  %i.j = xor i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %.059.i, i64 2
  %i.l = load i8, ptr %i.f, align 1, !tbaa !12
  %i.m = zext i8 %i.l to i32
  %i.n = mul i32 %i.j, 16777619
  %i.o = xor i32 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %.059.i, i64 3
  %i.q = load i8, ptr %i.k, align 1, !tbaa !12
  %i.r = zext i8 %i.q to i32
  %i.s = mul i32 %i.o, 16777619
  %i.t = xor i32 %i.s, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %.059.i, i64 4 ; 2 uses
  %i.v = load i8, ptr %i.p, align 1, !tbaa !12
  %i.w = zext i8 %i.v to i32
  %i.x = mul i32 %i.t, 16777619
  %i.y = xor i32 %i.x, %i.w                       ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %memhash.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !16

memhash.exit.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %memhash.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %memhash.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.059.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.u, %memhash.exit.loopexit.unr-lcssa ]
  %.068.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i.preheader ], [ %i.y, %memhash.exit.loopexit.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.059.i.epil = phi ptr [ %i.z, %.lr.ph.i.epil ], [ %.059.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
end_hunk_0
