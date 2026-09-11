Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topology?download=true
inline.NumInlined: 210
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@hwloc_topology_insert_group_object:bb.a
  %i.bk = load i32, ptr %.065, align 8, !tbaa !60
  %.not97 = icmp eq i32 %i.bk, 12
  br i1 %.not97, label %bb.al, label %.critedge

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bl = getelementptr inbounds nuw i8, ptr %.065, i64 120
  %.05.i = load ptr, ptr %i.bl, align 8, !tbaa !68 ; 2 uses
  %.not6.i = icmp eq ptr %.05.i, null
  br i1 %.not6.i, label %hwloc_obj_add_children_sets.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al, %.lr.ph.i
  %.07.i = phi ptr [ %.0.i99, %.lr.ph.i ], [ %.05.i, %bb.al ] ; 2 uses
  %i.bm = tail call i32 @hwloc_obj_add_other_obj_sets(ptr noundef nonnull %.065, ptr noundef nonnull %.07.i) ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i, i64 88
  %.0.i99 = load ptr, ptr %i.bn, align 8, !tbaa !68 ; 2 uses
  %.not.i = icmp eq ptr %.0.i99, null
  br i1 %.not.i, label %hwloc_obj_add_children_sets.exit, label %.lr.ph.i, !llvm.loop !7

hwloc_obj_add_children_sets.exit:                 ; preds = %.lr.ph.i, %bb.al
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !77
  %.not6.i100 = icmp eq i32 %i.bp, 0
  br i1 %.not6.i100, label %hwloc_topology_reconnect.exit, label %bb.am

bb.am:                                            ; preds = %hwloc_obj_add_children_sets.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !66
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !67
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !68
  tail call fastcc void @hwloc_connect_children(ptr noundef %i.bt)
  %i.bu = tail call fastcc i32 @hwloc_connect_levels(ptr noundef nonnull %0)
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bw = tail call fastcc i32 @hwloc_connect_special_levels(ptr noundef nonnull %0)
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.bo, align 8, !tbaa !77
  br label %hwloc_topology_reconnect.exit

hwloc_topology_reconnect.exit:                    ; preds = %bb.ao, %hwloc_obj_add_children_sets.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !66
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !67
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68
  tail call fastcc void @hwloc_propagate_symmetric_subtree(ptr noundef %i.cb)
  tail call fastcc void @hwloc_set_group_depth(ptr noundef nonnull %0)
  %i.cc = tail call ptr @getenv(ptr noundef nonnull @.str.10) #34
  %.not98 = icmp eq ptr %i.cc, null
  br i1 %.not98, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %hwloc_topology_reconnect.exit
  tail call void @hwloc_topology_check(ptr noundef nonnull %0)
  br label %.critedge

.critedge:                                        ; preds = %bb.am, %bb.an, %bb.w, %bb.z, %hwloc_topology_reconnect.exit, %bb.ap, %bb.ak, %bb.ai, %bb.f, %bb.d, %bb.b
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.ai ], [ %.065, %bb.ak ], [ null, %bb.w ], [ null, %bb.b ], [ %.065, %hwloc_topology_reconnect.exit ], [ %.065, %bb.ap ], [ null, %bb.z ], [ null, %bb.an ], [ null, %bb.am ]
  ret ptr %.1
}

declare i32 @hwloc_bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @hwloc_bitmap_or(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hwloc_obj_cmp_sets(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !60
  %i.b = add i32 %i.a, -18
  %i.c = icmp ult i32 %i.b, -4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.5, i32 noundef 1301, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_obj_cmp_sets) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !60
  %i.e = add i32 %i.d, -18
  %i.f = icmp ult i32 %i.e, -4
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.5, i32 noundef 1302, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_obj_cmp_sets) #36
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %.not20 = icmp eq ptr %i.h, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.015 = phi ptr [ %i.l, %bb.g ], [ %i.h, %bb.f ] ; 3 uses
  %.0 = phi ptr [ %i.n, %bb.g ], [ %i.j, %bb.f ]  ; 3 uses
  %i.o = icmp ne ptr %.015, null
  %i.p = icmp ne ptr %.0, null
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @hwloc_bitmap_iszero(ptr noundef nonnull %.015) #37
  %.not22 = icmp eq i32 %i.q, 0
  br i1 %.not22, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @hwloc_bitmap_iszero(ptr noundef nonnull %.0) #37
  %.not23 = icmp eq i32 %i.r, 0
  br i1 %.not23, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = tail call i32 @hwloc_bitmap_compare_inclusion(ptr noundef nonnull %.015, ptr noundef nonnull %.0) #37
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.016 = phi i32 [ %i.s, %bb.k ], [ 4, %bb.j ], [ 4, %bb.i ], [ 4, %bb.h ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define noundef i32 @hwloc_obj_add_children_sets(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.05 = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %.not6 = icmp eq ptr %.05, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %.0, %.lr.ph ], [ %.05, %bb.a ] ; 2 uses
  %i.b = tail call i32 @hwloc_obj_add_other_obj_sets(ptr noundef nonnull %0, ptr noundef nonnull %.07) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 88
  %.0 = load ptr, ptr %i.c, align 8, !tbaa !68    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @hwloc_topology_reconnect(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__errno_location() #39
  store i32 22, ptr %i.a, align 4, !tbaa !48
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !77
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  tail call fastcc void @hwloc_connect_children(ptr noundef %i.g)
  %i.h = tail call fastcc i32 @hwloc_connect_levels(ptr noundef nonnull %0)
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc i32 @hwloc_connect_special_levels(ptr noundef nonnull %0)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.b, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ -1, %bb.d ], [ 0, %bb.f ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @hwloc_propagate_symmetric_subtree(ptr nofree noundef captures(none) initializes((136, 140)) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !122  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !114
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.0394 = load ptr, ptr %i.d, align 8, !tbaa !68 ; 2 uses
  %.not425 = icmp eq ptr %.0394, null
  br i1 %.not425, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0397 = phi ptr [ %.039, %.lr.ph ], [ %.0394, %bb.b ] ; 3 uses
  %.0376 = phi i32 [ %spec.select, %.lr.ph ], [ 1, %bb.b ]
  tail call fastcc void @hwloc_propagate_symmetric_subtree(ptr noundef nonnull %.0397)
  %i.e = getelementptr inbounds nuw i8, ptr %.0397, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !114
  %.not48 = icmp eq i32 %i.f, 0
  %spec.select = select i1 %.not48, i32 0, i32 %.0376 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0397, i64 88
  %.039 = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not42 = icmp eq ptr %.039, null
  br i1 %.not42, label %._crit_edge, label %.lr.ph, !llvm.loop !178

._crit_edge:                                      ; preds = %.lr.ph
  %i.h = icmp eq i32 %spec.select, 0
  br i1 %i.h, label %bb.h, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.j = zext i32 %i.b to i64                     ; 4 uses
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #35 ; 11 uses
  %.not44 = icmp eq ptr %i.l, null
  br i1 %.not44, label %bb.h, label %.lr.ph10.us.preheader

.lr.ph10.us.preheader:                            ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.n, i64 %i.k, i1 false)
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.o = icmp ult i32 %i.b, 4
  %unroll_iter = and i64 %i.j, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph10.us

.lr.ph10.us.loopexit.unr-lcssa:                   ; preds = %.preheader.us
  br i1 %lcmp.mod.not, label %.lr.ph10.us.loopexit, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %.lr.ph10.us.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv18.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next19.3, %.lr.ph10.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv18.epil = phi i64 [ %indvars.iv.next19.epil, %.preheader.us.epil ], [ %indvars.iv18.epil.init, %.preheader.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.us.epil ], [ 0, %.preheader.us.epil.preheader ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv18.epil ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  store ptr %i.s, ptr %i.p, align 8, !tbaa !68
  %indvars.iv.next19.epil = add nuw nsw i64 %indvars.iv18.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph10.us.loopexit, label %.preheader.us.epil, !llvm.loop !179

.lr.ph10.us.loopexit:                             ; preds = %.preheader.us.epil, %.lr.ph10.us.loopexit.unr-lcssa
  br label %.lr.ph10.us, !llvm.loop !180

.lr.ph10.us:                                      ; preds = %.lr.ph10.us.preheader, %.lr.ph10.us.loopexit
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !68   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !116
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge11.us, label %bb.e, !llvm.loop !181

bb.e:                                             ; preds = %.lr.ph10.us, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph10.us ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !116
  %.not46.us = icmp eq i32 %i.aa, %i.v
  br i1 %.not46.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !122 ; 2 uses
  %i.ad = load i32, ptr %i.w, align 8, !tbaa !122
  %.not47.us = icmp eq i32 %i.ac, %i.ad
  br i1 %.not47.us, label %bb.d, label %.thread

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv18 = phi i64 [ %indvars.iv.next19.3, %.preheader.us ], [ 0, %.preheader.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us ], [ 0, %.preheader.us.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv18 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !72
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !68
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !68
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !68
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !72
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv18
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !68
  %indvars.iv.next19.3 = add nuw nsw i64 %indvars.iv18, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph10.us.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !180

._crit_edge11.us:                                 ; preds = %bb.d
  %.not45.us = icmp eq i32 %i.ac, 0
  br i1 %.not45.us, label %.split14.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge11.us
  br i1 %i.o, label %.preheader.us.epil.preheader, label %.preheader.us

.thread:                                          ; preds = %bb.e, %bb.f
  tail call void @free(ptr noundef %i.l) #34
  br label %bb.h

.split14.us:                                      ; preds = %._crit_edge11.us
  tail call void @free(ptr noundef nonnull %i.l) #34
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread, %bb.a, %.split14.us
  store i32 1, ptr %i.c, align 8, !tbaa !114
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.c, %._crit_edge, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @hwloc_set_group_depth(ptr nofree noundef readonly captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !107  ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge20, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph19, %bb.c
  %.pre26 = phi i32 [ %i.b, %.lr.ph19 ], [ %.pre27, %bb.c ] ; 2 uses
  %i.e = phi i32 [ %i.b, %.lr.ph19 ], [ %i.ab, %bb.c ]
  %indvars.iv23 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next24, %bb.c ] ; 5 uses
  %.01416 = phi i32 [ 0, %.lr.ph19 ], [ %.1, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv23
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = load i32, ptr %i.i, align 8, !tbaa !60
  %i.k = icmp eq i32 %i.j, 12
  br i1 %i.k, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv23
  %i.n = load i32, ptr %i.m, align 4, !tbaa !48
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv23
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  store i32 %.01416, ptr %i.u, align 8, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv23
  %i.x = load i32, ptr %i.w, align 4, !tbaa !48
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !182

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !107
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre = phi i32 [ %.pre.pre, %._crit_edge.loopexit ], [ %.pre26, %.preheader ] ; 2 uses
  %i.aa = add i32 %.01416, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.pre27 = phi i32 [ %.pre, %._crit_edge ], [ %.pre26, %bb.b ]
  %i.ab = phi i32 [ %.pre, %._crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.aa, %._crit_edge ], [ %.01416, %bb.b ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv.next24, %i.ac
  br i1 %i.ad, label %bb.b, label %._crit_edge20, !llvm.loop !183

._crit_edge20:                                    ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @hwloc_topology_insert_misc_object(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #39
  store i32 22, ptr %i.d, align 4, !tbaa !48
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i32, ptr %i.e, align 4, !tbaa !90
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #39
  store i32 22, ptr %i.g, align 4, !tbaa !48
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @__errno_location() #39
  store i32 1, ptr %i.j, align 4, !tbaa !48
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.k = tail call ptr @hwloc_alloc_setup_object(ptr noundef nonnull %0, i32 noundef 17, i32 noundef -1) ; 4 uses
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call noalias ptr @strdup(ptr noundef nonnull %2) #34
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !79
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @hwloc_insert_object_by_parent(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !77
  %.not6.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i, label %hwloc_topology_reconnect.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
