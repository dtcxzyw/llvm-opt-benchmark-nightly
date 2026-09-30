Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_tuned_dynamic_rules?download=true
inline.NumInlined: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ompi_coll_tuned_mk_alg_rules:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.f, ptr %i.e, align 8, !tbaa !25
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.h, ptr %i.g, align 8, !tbaa !25
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv.next.1
  %i.j = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.j, ptr %i.i, align 8, !tbaa !25
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv.next.2
  %i.l = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.l, ptr %i.k, align 8, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !23

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv.epil
  %i.n = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.n, ptr %i.m, align 8, !tbaa !25
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !24

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @ompi_coll_tuned_mk_com_rules(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 24) #9 ; 5 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = icmp sgt i32 %0, 0
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %0, 1
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv ; 5 uses
  store i32 0, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %1, ptr %i.f, align 4, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.h, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !17
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv.next ; 5 uses
  store i32 0, ptr %i.k, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %1, ptr %i.l, align 4, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.n, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !27

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod24 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv.epil.init ; 5 uses
  store i32 0, ptr %i.q, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %1, ptr %i.r, align 4, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.t, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  ret ptr %i.b
}

; Function Attrs: nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @ompi_coll_tuned_mk_msg_rules(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 48) #9 ; 5 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = icmp sgt i32 %0, 0
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %0, 1
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv ; 4 uses
  store i32 %3, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %1, ptr %i.f, align 4, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %2, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.i, ptr %i.h, align 4, !tbaa !34
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv.next ; 4 uses
  store i32 %3, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %1, ptr %i.k, align 4, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %2, ptr %i.l, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !30

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv.epil.init ; 4 uses
  store i32 %3, ptr %i.o, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %1, ptr %i.p, align 4, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %2, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.s, ptr %i.r, align 4, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1, 1) i32 @ompi_coll_tuned_dump_msg_rule(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  %. = sext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1, 1) i32 @ompi_coll_tuned_dump_com_rule(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
.loopexit:
  %.not = icmp eq ptr %0, null
  %spec.select = sext i1 %.not to i32
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1, 1) i32 @ompi_coll_tuned_dump_alg_rule(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
.loopexit:
  %.not = icmp eq ptr %0, null
  %spec.select = sext i1 %.not to i32
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1, 1) i32 @ompi_coll_tuned_dump_all_rules(ptr nofree noundef readnone captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
.loopexit:
  %.not = icmp eq ptr %0, null
  %spec.select = sext i1 %.not to i32
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @ompi_coll_tuned_free_msg_rules_in_com_rule(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #10
  store ptr null, ptr %i.c, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.07 = phi i32 [ -1, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ -1, %bb.c ]
  ret i32 %.07
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @ompi_coll_tuned_free_coms_in_alg_rule(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 3 uses
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %.preheader, %ompi_coll_tuned_free_msg_rules_in_com_rule.exit
  %i.f = phi ptr [ %.pr, %ompi_coll_tuned_free_msg_rules_in_com_rule.exit ], [ %i.d, %.preheader ] ; 2 uses
  %i.g = phi i32 [ %i.m, %ompi_coll_tuned_free_msg_rules_in_com_rule.exit ], [ %i.b, %.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %ompi_coll_tuned_free_msg_rules_in_com_rule.exit ], [ 0, %.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %ompi_coll_tuned_free_msg_rules_in_com_rule.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %.not10.i = icmp eq i32 %i.j, 0
  br i1 %.not10.i, label %ompi_coll_tuned_free_msg_rules_in_com_rule.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %.not11.i = icmp eq ptr %i.l, null
  br i1 %.not11.i, label %ompi_coll_tuned_free_msg_rules_in_com_rule.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.l) #10
  store ptr null, ptr %i.k, align 8, !tbaa !17
  %.pre = load i32, ptr %i.a, align 4, !tbaa !20
  br label %ompi_coll_tuned_free_msg_rules_in_com_rule.exit

ompi_coll_tuned_free_msg_rules_in_com_rule.exit:  ; preds = %.lr.ph.split, %bb.d, %bb.e, %bb.f
  %i.m = phi i32 [ %i.g, %.lr.ph.split ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  br i1 %i.o, label %.lr.ph.split, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %ompi_coll_tuned_free_msg_rules_in_com_rule.exit, %.preheader
  %i.p = phi ptr [ %i.d, %.preheader ], [ %.pr, %ompi_coll_tuned_free_msg_rules_in_com_rule.exit ]
  tail call void @free(ptr noundef %i.p) #10
  store ptr null, ptr %i.c, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %._crit_edge, %bb.a
  %.013 = phi i32 [ -1, %bb.a ], [ 0, %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.013
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, 1) i32 @ompi_coll_tuned_free_all_rules(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ompi_coll_tuned_free_coms_in_alg_rule.exit.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.split

ompi_coll_tuned_free_coms_in_alg_rule.exit.us.preheader: ; preds = %.lr.ph
  %i.b = sub nsw i32 0, %1
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %ompi_coll_tuned_free_coms_in_alg_rule.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %ompi_coll_tuned_free_coms_in_alg_rule.exit ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20   ; 3 uses
  %.not15.i = icmp eq i32 %i.e, 0
  br i1 %.not15.i, label %ompi_coll_tuned_free_coms_in_alg_rule.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 3 uses
  %.not16.i = icmp eq ptr %i.g, null
  br i1 %.not16.i, label %ompi_coll_tuned_free_coms_in_alg_rule.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.h = icmp sgt i32 %i.e, 0
  br i1 %i.h, label %.lr.ph.split.i, label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.preheader.i, %ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i
  %.pr.i12 = phi ptr [ %.pr.i, %ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i ], [ %i.g, %.preheader.i ] ; 4 uses
  %i.i = phi i32 [ %i.o, %ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i ], [ %i.e, %.preheader.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.pr.i12, i64 %indvars.iv.i ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i12, null
  br i1 %.not.i.i, label %ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %.not10.i.i = icmp eq i32 %i.l, 0
  br i1 %.not10.i.i, label %ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %.not11.i.i = icmp eq ptr %i.n, null
  br i1 %.not11.i.i, label %ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.n) #10
  store ptr null, ptr %i.m, align 8, !tbaa !17
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !20
  %.pr.i.pre = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i

ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.split.i
  %.pr.i = phi ptr [ null, %.lr.ph.split.i ], [ %.pr.i12, %bb.c ], [ %.pr.i12, %bb.d ], [ %.pr.i.pre, %bb.e ] ; 2 uses
  %i.o = phi i32 [ %i.i, %.lr.ph.split.i ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next.i, %i.p
  br i1 %i.q, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i, %.preheader.i
  %i.r = phi ptr [ %i.g, %.preheader.i ], [ %.pr.i, %ompi_coll_tuned_free_msg_rules_in_com_rule.exit.i ]
  tail call void @free(ptr noundef %i.r) #10
  store ptr null, ptr %i.f, align 8, !tbaa !21
  br label %ompi_coll_tuned_free_coms_in_alg_rule.exit

ompi_coll_tuned_free_coms_in_alg_rule.exit:       ; preds = %.lr.ph.split, %bb.b, %._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !35

._crit_edge:                                      ; preds = %ompi_coll_tuned_free_coms_in_alg_rule.exit, %ompi_coll_tuned_free_coms_in_alg_rule.exit.us.preheader, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %ompi_coll_tuned_free_coms_in_alg_rule.exit.us.preheader ], [ 0, %ompi_coll_tuned_free_coms_in_alg_rule.exit ]
  tail call void @free(ptr noundef %0) #10
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ompi_coll_tuned_get_com_rule_ptr(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
end_hunk_0
