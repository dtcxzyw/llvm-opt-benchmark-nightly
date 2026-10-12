Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_han_algorithms?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mca_coll_han_bcast_intra_simple
declare i32 @mca_coll_han_bcast_intra_simple(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @mca_coll_han_gather_intra(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @mca_coll_han_gather_intra_simple(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @mca_coll_han_reduce_intra(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @mca_coll_han_reduce_intra_simple(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @mca_coll_han_reduce_reproducible(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @mca_coll_han_scatter_intra(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @mca_coll_han_scatter_intra_simple(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mca_coll_han_algorithm_id_is_valid(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @mca_coll_han_is_coll_dynamic_implemented(i32 noundef %0) #10
  %i.b = icmp sgt i32 %1, -1
  %or.cond.not = and i1 %i.b, %i.a
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 944), i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = icmp sle i32 %1, %i.e
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %.0
}

declare zeroext i1 @mca_coll_han_is_coll_dynamic_implemented(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define ptr @mca_coll_han_algorithm_id_to_fn(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %mca_coll_han_algorithm_id_is_valid.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @mca_coll_han_is_coll_dynamic_implemented(i32 noundef %0) #10
  %i.c = icmp sgt i32 %1, -1
  %or.cond.not.i = and i1 %i.c, %i.b
  br i1 %or.cond.not.i, label %mca_coll_han_algorithm_id_is_valid.exit, label %mca_coll_han_algorithm_id_is_valid.exit.thread

mca_coll_han_algorithm_id_is_valid.exit:          ; preds = %bb.b
  %i.d = sext i32 %0 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 944), i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %.not8 = icmp sgt i32 %1, %i.f
  br i1 %.not8, label %mca_coll_han_algorithm_id_is_valid.exit.thread, label %bb.c

bb.c:                                             ; preds = %mca_coll_han_algorithm_id_is_valid.exit
  %i.g = getelementptr inbounds [8 x i8], ptr @mca_coll_han_available_algorithms, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr [16 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %mca_coll_han_algorithm_id_is_valid.exit.thread

mca_coll_han_algorithm_id_is_valid.exit.thread:   ; preds = %bb.b, %bb.a, %mca_coll_han_algorithm_id_is_valid.exit, %bb.c
  %.0 = phi ptr [ %i.l, %bb.c ], [ null, %mca_coll_han_algorithm_id_is_valid.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @mca_coll_han_algorithm_id_to_name(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @mca_coll_han_is_coll_dynamic_implemented(i32 noundef %0) #10
  %i.b = icmp sgt i32 %1, -1
  %or.cond.not.i = and i1 %i.b, %i.a
  br i1 %or.cond.not.i, label %mca_coll_han_algorithm_id_is_valid.exit, label %mca_coll_han_algorithm_id_is_valid.exit.thread

mca_coll_han_algorithm_id_is_valid.exit:          ; preds = %bb.a
  %i.c = sext i32 %0 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 944), i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %.not8 = icmp sgt i32 %1, %i.e
  br i1 %.not8, label %mca_coll_han_algorithm_id_is_valid.exit.thread, label %bb.b

bb.b:                                             ; preds = %mca_coll_han_algorithm_id_is_valid.exit
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %mca_coll_han_algorithm_id_is_valid.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds [8 x i8], ptr @mca_coll_han_available_algorithms, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr [16 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  br label %mca_coll_han_algorithm_id_is_valid.exit.thread

mca_coll_han_algorithm_id_is_valid.exit.thread:   ; preds = %bb.a, %bb.b, %mca_coll_han_algorithm_id_is_valid.exit, %bb.c
  %.0 = phi ptr [ null, %mca_coll_han_algorithm_id_is_valid.exit ], [ %i.l, %bb.c ], [ @.str, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mca_coll_han_algorithm_name_to_id(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str) #11
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %0 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 944), i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1032), i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.k = phi ptr [ %i.p, %bb.d ], [ %i.j, %bb.c ]
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.k) #11
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit.loopexit.split.loop.exit20, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

.loopexit.loopexit.split.loop.exit20:             ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit20, %bb.c, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ], [ -1, %bb.c ], [ %i.q, %.loopexit.loopexit.split.loop.exit20 ], [ -1, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mca_coll_han_init_algorithms() local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 944), i8 0, i64 264, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %mca_han_algorithm_enumerator_create.exit.thread
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mca_han_algorithm_enumerator_create.exit.thread ] ; 6 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @mca_coll_han_available_algorithms, i64 %indvars.iv ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %mca_han_algorithm_count.exit.thread, label %.preheader.i

mca_han_algorithm_count.exit.thread:              ; preds = %bb.b
  %i.c = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 944), i64 %indvars.iv
  store i32 0, ptr %i.c, align 4, !tbaa !8
  br label %mca_han_algorithm_enumerator_create.exit.thread

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %.not4.i = icmp eq ptr %i.e, null
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not4.i, label %mca_han_algorithm_count.exit, label %.preheader.i, !llvm.loop !22

mca_han_algorithm_count.exit:                     ; preds = %.preheader.i
  %i.f = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.g = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 944), i64 %indvars.iv
  store i32 %i.f, ptr %i.g, align 4, !tbaa !8
  %i.h = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.h, label %mca_han_algorithm_enumerator_create.exit.thread, label %bb.c

bb.c:                                             ; preds = %mca_han_algorithm_count.exit
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = tail call zeroext i1 @mca_coll_han_is_coll_dynamic_implemented(i32 noundef %i.i) #10
  br i1 %i.j, label %bb.d, label %mca_han_algorithm_enumerator_create.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1032), i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !11   ; 5 uses
  store ptr null, ptr %i.k, align 8, !tbaa !16
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %mca_han_algorithm_enumerator_create.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 0, %bb.d ] ; 6 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %.not4.i.i = icmp eq ptr %i.n, null
  %indvars.iv.next.i.i = add nuw i64 %indvars.iv.i.i, 1
  br i1 %.not4.i.i, label %mca_han_algorithm_count.exit.i, label %.preheader.i.i, !llvm.loop !22

mca_han_algorithm_count.exit.i:                   ; preds = %.preheader.i.i
  %indvars20.le = trunc i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.o = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %i.o, label %mca_han_algorithm_enumerator_create.exit.thread, label %bb.e

bb.e:                                             ; preds = %mca_han_algorithm_count.exit.i
  %i.p = shl i64 %indvars.iv.i.i, 32
  %sext.i = add i64 %i.p, 8589934592
  %0 = ashr exact i64 %sext.i, 28
  %i.q = tail call noalias ptr @malloc(i64 noundef %0) #12 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  store i32 0, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @.str, ptr %i.s, align 8, !tbaa !18
  %smax.i = tail call i32 @llvm.smax.i32(i32 %indvars20.le, i32 1) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %1 = icmp slt i32 %indvars20.le, 2
  br i1 %1, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i12.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i13.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i32 %smax.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %indvars.iv.next.i13.epil = add nuw nsw i64 %indvars.iv.i12.epil.init, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.next.i13.epil ; 2 uses
  %i.u = trunc nuw nsw i64 %indvars.iv.next.i13.epil to i32
  store i32 %i.u, ptr %i.t, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv.i12.epil.init
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.y = getelementptr [16 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.k, align 8, !tbaa !16
  br label %mca_han_algorithm_enumerator_create.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i12 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i13.1, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %indvars.iv.next.i13 = or disjoint i64 %indvars.iv.i12, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.next.i13 ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i13 to i32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv.i12
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !18
  %indvars.iv.next.i13.1 = add nuw nsw i64 %indvars.iv.i12, 2 ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.next.i13.1 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next.i13.1 to i32
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv.next.i13
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !18
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !23

mca_han_algorithm_enumerator_create.exit.thread:  ; preds = %bb.d, %._crit_edge.i, %mca_han_algorithm_count.exit.i, %mca_han_algorithm_count.exit.thread, %mca_han_algorithm_count.exit, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 22
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !24

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.10) #10
  %i.ak = tail call i32 @mca_coll_han_free_algorithms() ; 0 uses
  br label %.thread

.thread:                                          ; preds = %mca_han_algorithm_enumerator_create.exit.thread, %bb.f
  %.011 = phi i32 [ -1, %bb.f ], [ 0, %mca_han_algorithm_enumerator_create.exit.thread ]
  ret i32 %.011
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i32 @mca_coll_han_free_algorithms() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1032), align 8, !tbaa !16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1040), align 8, !tbaa !16 ; 2 uses
  %.not.1 = icmp eq ptr %i.b, null
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1048), align 8, !tbaa !16 ; 2 uses
  %.not.2 = icmp eq ptr %i.c, null
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.c) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1056), align 8, !tbaa !16 ; 2 uses
  %.not.3 = icmp eq ptr %i.d, null
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.d) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1064), align 8, !tbaa !16 ; 2 uses
  %.not.4 = icmp eq ptr %i.e, null
  br i1 %.not.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.e) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1072), align 8, !tbaa !16 ; 2 uses
  %.not.5 = icmp eq ptr %i.f, null
  br i1 %.not.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.f) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1080), align 8, !tbaa !16 ; 2 uses
  %.not.6 = icmp eq ptr %i.g, null
  br i1 %.not.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.g) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1088), align 8, !tbaa !16 ; 2 uses
  %.not.7 = icmp eq ptr %i.h, null
  br i1 %.not.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.h) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1096), align 8, !tbaa !16 ; 2 uses
  %.not.8 = icmp eq ptr %i.i, null
  br i1 %.not.8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.i) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1104), align 8, !tbaa !16 ; 2 uses
  %.not.9 = icmp eq ptr %i.j, null
  br i1 %.not.9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.j) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1112), align 8, !tbaa !16 ; 2 uses
  %.not.10 = icmp eq ptr %i.k, null
  br i1 %.not.10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.k) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1120), align 8, !tbaa !16 ; 2 uses
  %.not.11 = icmp eq ptr %i.l, null
  br i1 %.not.11, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.l) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1128), align 8, !tbaa !16 ; 2 uses
  %.not.12 = icmp eq ptr %i.m, null
  br i1 %.not.12, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.m) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1136), align 8, !tbaa !16 ; 2 uses
  %.not.13 = icmp eq ptr %i.n, null
  br i1 %.not.13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.n) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1144), align 8, !tbaa !16 ; 2 uses
  %.not.14 = icmp eq ptr %i.o, null
  br i1 %.not.14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.o) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1152), align 8, !tbaa !16 ; 2 uses
  %.not.15 = icmp eq ptr %i.p, null
  br i1 %.not.15, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %i.p) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1160), align 8, !tbaa !16 ; 2 uses
  %.not.16 = icmp eq ptr %i.q, null
  br i1 %.not.16, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @free(ptr noundef nonnull %i.q) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1168), align 8, !tbaa !16 ; 2 uses
  %.not.17 = icmp eq ptr %i.r, null
  br i1 %.not.17, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @free(ptr noundef nonnull %i.r) #10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1176), align 8, !tbaa !16 ; 2 uses
  %.not.18 = icmp eq ptr %i.s, null
  br i1 %.not.18, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @free(ptr noundef nonnull %i.s) #10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1184), align 8, !tbaa !16 ; 2 uses
  %.not.19 = icmp eq ptr %i.t, null
  br i1 %.not.19, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @free(ptr noundef nonnull %i.t) #10
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1192), align 8, !tbaa !16 ; 2 uses
  %.not.20 = icmp eq ptr %i.u, null
  br i1 %.not.20, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @free(ptr noundef nonnull %i.u) #10
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 1200), align 8, !tbaa !16 ; 2 uses
  %.not.21 = icmp eq ptr %i.v, null
  br i1 %.not.21, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef nonnull %i.v) #10
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS30mca_coll_han_algorithm_value_s", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"mca_coll_han_algorithm_value_s", !12, i64 0, !9, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!"p1 _ZTS25mca_base_var_enum_value_t", !9, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"mca_base_var_enum_value_t", !5, i64 0, !12, i64 8}
!18 = !{!17, !12, i64 8}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!13, !9, i64 8}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = !{!17, !5, i64 0}
end_hunk_0
