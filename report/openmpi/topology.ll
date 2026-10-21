Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topology?download=true
inline.NumInlined: 210
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@hwloc_topology_reconnect:bb.a
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !122  ; 5 uses
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
  %i.j = zext i32 %i.b to i64
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #35 ; 11 uses
  %.not44 = icmp eq ptr %i.l, null
  br i1 %.not44, label %bb.h, label %.lr.ph10.us.preheader

.lr.ph10.us.preheader:                            ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.n, i64 %i.k, i1 false)
  %wide.trip.count = zext i32 %i.b to i64         ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.o = icmp ult i32 %i.b, 4
  %unroll_iter = and i64 %wide.trip.count, 4294967292
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
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
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre26 = load ptr, ptr %i.c, align 8, !tbaa !66
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph19, %bb.c
  %.pre26.a = phi i32 [ %i.b, %.lr.ph19 ], [ %.pre27, %bb.c ] ; 2 uses
  %i.e = phi i32 [ %i.b, %.lr.ph19 ], [ %i.aa, %bb.c ]
  %1 = phi ptr [ %.pre26, %.lr.ph19 ], [ %3, %bb.c ] ; 3 uses
  %indvars.iv23 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next24, %bb.c ] ; 5 uses
  %.01416 = phi i32 [ 0, %.lr.ph19 ], [ %.1, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv23
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = load i32, ptr %i.h, align 8, !tbaa !60
  %i.j = icmp eq i32 %i.i, 12
  br i1 %i.j, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv23
  %i.m = load i32, ptr %i.l, align 4, !tbaa !48
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv23
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  store i32 %.01416, ptr %i.t, align 8, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv23
  %i.w = load i32, ptr %i.v, align 4, !tbaa !48
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !182

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !66
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !107
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre.a = phi i32 [ %.pre.pre, %._crit_edge.loopexit ], [ %.pre26.a, %.preheader ] ; 2 uses
  %2 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %1, %.preheader ]
  %i.z = add i32 %.01416, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.pre27 = phi i32 [ %.pre.a, %._crit_edge ], [ %.pre26.a, %bb.b ]
  %i.aa = phi i32 [ %.pre.a, %._crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %3 = phi ptr [ %2, %._crit_edge ], [ %1, %bb.b ]
  %.1 = phi i32 [ %i.z, %._crit_edge ], [ %.01416, %bb.b ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.next24, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge20, !llvm.loop !183

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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  tail call fastcc void @hwloc_connect_children(ptr noundef %i.s)
  %i.t = tail call fastcc i32 @hwloc_connect_levels(ptr noundef nonnull %0)
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %hwloc_topology_reconnect.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = tail call fastcc i32 @hwloc_connect_special_levels(ptr noundef nonnull %0)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %hwloc_topology_reconnect.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.n, align 8, !tbaa !77
  br label %hwloc_topology_reconnect.exit

hwloc_topology_reconnect.exit:                    ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.x = tail call ptr @getenv(ptr noundef nonnull @.str.10) #34
  %.not17 = icmp eq ptr %i.x, null
  br i1 %.not17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %hwloc_topology_reconnect.exit
  tail call void @hwloc_topology_check(ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %hwloc_topology_reconnect.exit, %bb.m, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ], [ %i.k, %bb.m ], [ %i.k, %hwloc_topology_reconnect.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @hwloc_find_insert_io_parent_by_complete_cpuset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %0, i32 noundef 0, i32 noundef 0) #37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.d = tail call i32 @hwloc_bitmap_and(ptr noundef %1, ptr noundef %1, ptr noundef %i.c) #34 ; 0 uses
  %i.e = tail call i32 @hwloc_bitmap_iszero(ptr noundef %1) #37
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %hwloc_obj_add_children_sets.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %0, i32 noundef 0, i32 noundef 0) #37 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 3 uses
  %i.i = tail call i32 @hwloc_bitmap_isequal(ptr noundef readonly %1, ptr noundef %i.h) #37
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %.preheader.i, label %hwloc_get_highest_obj_covering_complete_cpuset.exit

.preheader.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.02431.i = load ptr, ptr %i.j, align 8, !tbaa !68 ; 2 uses
  %.not192532.i = icmp eq ptr %.02431.i, null
  br i1 %.not192532.i, label %hwloc_get_highest_obj_covering_complete_cpuset.exit, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.026.i, i64 120
  %.024.i = load ptr, ptr %i.k, align 8, !tbaa !68 ; 2 uses
  %.not1925.i = icmp eq ptr %.024.i, null
  br i1 %.not1925.i, label %hwloc_get_highest_obj_covering_complete_cpuset.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.loopexit.i
  %.02434.i = phi ptr [ %.024.i, %.loopexit.i ], [ %.02431.i, %.preheader.i ]
  %.01733.i = phi ptr [ %.026.i, %.loopexit.i ], [ %i.f, %.preheader.i ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.026.i = phi ptr [ %.02434.i, %.lr.ph.i ], [ %.0.i, %bb.f ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.026.i, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71   ; 5 uses
  %i.n = tail call i32 @hwloc_bitmap_isequal(ptr noundef readonly %1, ptr noundef %i.m) #37
  %.not20.i = icmp eq i32 %i.n, 0
  br i1 %.not20.i, label %bb.d, label %hwloc_get_highest_obj_covering_complete_cpuset.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @hwloc_bitmap_iszero(ptr noundef %i.m) #37
  %.not21.i = icmp eq i32 %i.o, 0
  br i1 %.not21.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @hwloc_bitmap_isincluded(ptr noundef readonly %1, ptr noundef %i.m) #37
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.026.i, i64 88
  %.0.i = load ptr, ptr %i.q, align 8, !tbaa !68  ; 2 uses
  %.not19.i = icmp eq ptr %.0.i, null
  br i1 %.not19.i, label %.hwloc_get_highest_obj_covering_complete_cpuset.exit.loopexit_crit_edge, label %bb.c, !llvm.loop !184

.hwloc_get_highest_obj_covering_complete_cpuset.exit.loopexit_crit_edge: ; preds = %bb.f
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.01733.i, i64 192
  %.pre.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !71
  br label %hwloc_get_highest_obj_covering_complete_cpuset.exit, !llvm.loop !184

hwloc_get_highest_obj_covering_complete_cpuset.exit: ; preds = %.loopexit.i, %bb.c, %.hwloc_get_highest_obj_covering_complete_cpuset.exit.loopexit_crit_edge, %bb.b, %.preheader.i
  %i.r = phi ptr [ %i.h, %bb.b ], [ %i.h, %.preheader.i ], [ %i.m, %bb.c ], [ %.pre.pre, %.hwloc_get_highest_obj_covering_complete_cpuset.exit.loopexit_crit_edge ], [ %i.m, %.loopexit.i ]
  %.018.i = phi ptr [ %i.f, %bb.b ], [ %i.f, %.preheader.i ], [ %.026.i, %bb.c ], [ %.01733.i, %.hwloc_get_highest_obj_covering_complete_cpuset.exit.loopexit_crit_edge ], [ %.026.i, %.loopexit.i ] ; 5 uses
  %i.s = tail call i32 @hwloc_bitmap_isequal(ptr noundef %i.r, ptr noundef %1) #37
  %.not33 = icmp eq i32 %i.s, 0
  br i1 %.not33, label %bb.g, label %hwloc_obj_add_children_sets.exit

bb.g:                                             ; preds = %hwloc_get_highest_obj_covering_complete_cpuset.exit
  %i.t = getelementptr i8, ptr %0, i64 168
  %.val = load i32, ptr %i.t, align 4, !tbaa !48
  switch i32 %.val, label %bb.i [
    i32 3, label %bb.h
    i32 1, label %hwloc_obj_add_children_sets.exit
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef 529, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_filter_check_keep_object_type) #36
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = tail call ptr @hwloc_alloc_setup_object(ptr noundef nonnull %0, i32 noundef 12, i32 noundef -1) ; 8 uses
  %.not35 = icmp eq ptr %i.u, null
  br i1 %.not35, label %hwloc_obj_add_children_sets.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call noalias ptr @hwloc_bitmap_dup(ptr noundef %1) #34
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  store ptr %i.v, ptr %i.w, align 8, !tbaa !71
  %i.x = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %0, i32 noundef 0, i32 noundef 0) #37
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aa = tail call i32 @hwloc_bitmap_and(ptr noundef %1, ptr noundef %1, ptr noundef %i.z) #34 ; 0 uses
  %i.ab = tail call noalias ptr @hwloc_bitmap_dup(ptr noundef %1) #34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 1000, ptr %i.af, align 4, !tbaa !70
end_hunk_0
