Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/hwloc_base_util?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
begin_hunk_0_@opal_hwloc_base_topology_set_flags:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.1
}

declare i32 @hwloc_topology_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @opal_hwloc_base_filter_cpus(ptr nofree noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %0, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_hwloc_topo_data_t_class, i64 56), align 8, !tbaa !33
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #12 ; 6 uses
  %i.g = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !29
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_hwloc_topo_data_t_class, i64 32), align 8, !tbaa !34
  %.not.i = icmp eq i32 %i.g, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_hwloc_topo_data_t_class) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @opal_hwloc_topo_data_t_class, ptr %i.f, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store volatile i32 1, ptr %i.i, align 8, !tbaa !36
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_hwloc_topo_data_t_class, i64 40), align 8, !tbaa !37 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.k, null
  br i1 %.not6.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.k, %bb.e ]
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.e ]
  tail call void %i.l(ptr noundef nonnull %i.f) #10, !inline_history !0
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %.lr.ph.i.i, %bb.d, %bb.e
  store ptr %i.f, ptr %i.b, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %opal_obj_new.exit, %bb.a
  %i.o = phi ptr [ %i.f, %opal_obj_new.exit ], [ %i.c, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = tail call noalias ptr @hwloc_bitmap_dup(ptr noundef %i.s) #10
  store ptr %i.t, ptr %i.p, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opal_hwloc_base_get_nbobjs_by_type(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %hwloc_get_nbobjs_by_type.exit.thread48, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %3, 2
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @hwloc_get_type_depth(ptr noundef nonnull %0, i32 noundef %1) #10 ; 2 uses
  switch i32 %i.d, label %hwloc_get_nbobjs_by_type.exit [
    i32 -1, label %hwloc_get_nbobjs_by_type.exit.thread48
    i32 -2, label %hwloc_get_nbobjs_by_type.exit.thread
  ]

hwloc_get_nbobjs_by_type.exit:                    ; preds = %bb.c
  %i.e = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef nonnull %0, i32 noundef %i.d) #11 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %hwloc_get_nbobjs_by_type.exit.thread, label %hwloc_get_nbobjs_by_type.exit.thread48

hwloc_get_nbobjs_by_type.exit.thread:             ; preds = %bb.c, %hwloc_get_nbobjs_by_type.exit
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.19) #10
  br label %hwloc_get_nbobjs_by_type.exit.thread48

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !29
  %i.g = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %0, i32 noundef 0, i32 noundef 0) #11 ; 3 uses
  %i.h = load i8, ptr @opal_hwloc_topo_in_shmem, align 1, !tbaa !22, !range !41, !noundef !42
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.d, %bb.e
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_hwloc_topo_data_t_class, i64 56), align 8, !tbaa !33
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #12 ; 7 uses
  %i.o = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !29
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_hwloc_topo_data_t_class, i64 32), align 8, !tbaa !34
  %.not.i = icmp eq i32 %i.o, %i.p
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_hwloc_topo_data_t_class) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.not9.i = icmp eq ptr %i.n, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @opal_hwloc_topo_data_t_class, ptr %i.n, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store volatile i32 1, ptr %i.q, align 8, !tbaa !36
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_hwloc_topo_data_t_class, i64 40), align 8, !tbaa !37 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.s, null
  br i1 %.not6.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.t = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.s, %bb.h ]
  %.07.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.r, %bb.h ]
  tail call void %i.t(ptr noundef nonnull %i.n) #10, !inline_history !0
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %.lr.ph.i.i, %bb.g, %bb.h
  %i.w = load i8, ptr @opal_hwloc_topo_in_shmem, align 1, !tbaa !22, !range !41, !noundef !42
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %opal_obj_new.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  store ptr %i.n, ptr %i.y, align 8, !tbaa !31
  br label %.loopexit

bb.j:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ab = load volatile ptr, ptr %i.aa, align 8, !tbaa !69 ; 2 uses
  %.not52 = icmp eq ptr %i.ab, %i.z
  br i1 %.not52, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.n
  %.03553 = phi ptr [ %i.ao, %bb.n ], [ %i.ab, %bb.j ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03553, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !71
  %i.ae = icmp eq i32 %1, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.03553, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !72
  %i.ah = icmp eq i32 %2, %i.ag
  br i1 %i.ah, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.03553, i64 52
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !73
  %i.ak = icmp eq i8 %3, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.03553, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !74
  br label %hwloc_get_nbobjs_by_type.exit.thread48

bb.n:                                             ; preds = %.lr.ph, %bb.k, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.03553, i64 16
  %i.ao = load volatile ptr, ptr %i.an, align 8, !tbaa !75 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.z
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !68

.loopexit:                                        ; preds = %bb.n, %bb.j, %opal_obj_new.exit, %bb.i
  %.1 = phi ptr [ %i.n, %bb.i ], [ %i.n, %opal_obj_new.exit ], [ %i.k, %bb.j ], [ %i.k, %bb.n ] ; 3 uses
  %i.ap = call fastcc ptr @df_search(ptr noundef %0, ptr noundef %i.g, i32 noundef %1, i32 noundef 0, i8 noundef zeroext %3, ptr noundef nonnull %i.a) ; 0 uses
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_hwloc_summary_t_class, i64 56), align 8, !tbaa !33
  %i.ar = call noalias ptr @malloc(i64 noundef %i.aq) #12 ; 12 uses
  %i.as = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !29
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_hwloc_summary_t_class, i64 32), align 8, !tbaa !34
  %.not.i40 = icmp eq i32 %i.as, %i.at
  br i1 %.not.i40, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit
  call void @opal_class_initialize(ptr noundef nonnull @opal_hwloc_summary_t_class) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.not9.i41 = icmp eq ptr %i.ar, null
  br i1 %.not9.i41, label %opal_obj_new.exit46, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr @opal_hwloc_summary_t_class, ptr %i.ar, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store volatile i32 1, ptr %i.au, align 8, !tbaa !36
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_hwloc_summary_t_class, i64 40), align 8, !tbaa !37 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %.not6.i.i42 = icmp eq ptr %i.aw, null
  br i1 %.not6.i.i42, label %opal_obj_new.exit46, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %bb.q, %.lr.ph.i.i43
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i43 ], [ %i.aw, %bb.q ]
  %.07.i.i44 = phi ptr [ %i.ay, %.lr.ph.i.i43 ], [ %i.av, %bb.q ]
  call void %i.ax(ptr noundef nonnull %i.ar) #10, !inline_history !0
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i44, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.az, null
  br i1 %.not.i.i45, label %opal_obj_new.exit46, label %.lr.ph.i.i43, !llvm.loop !1

opal_obj_new.exit46:                              ; preds = %.lr.ph.i.i43, %bb.p, %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i32 %1, ptr %i.ba, align 8, !tbaa !71
  %4 = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  store i32 %2, ptr %4, align 4, !tbaa !72
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !29  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !74
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  store i8 %3, ptr %i.bd, align 4, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %.1, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %.1, i64 64 ; 3 uses
  %i.bg = load volatile ptr, ptr %i.bf, align 8, !tbaa !76
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store volatile ptr %i.bg, ptr %i.bh, align 8, !tbaa !76
  %i.bi = load volatile ptr, ptr %i.bf, align 8, !tbaa !76
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store volatile ptr %i.ar, ptr %i.bj, align 8, !tbaa !75
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store volatile ptr %i.be, ptr %i.bk, align 8, !tbaa !75
  store volatile ptr %i.ar, ptr %i.bf, align 8, !tbaa !76
  %i.bl = getelementptr inbounds nuw i8, ptr %.1, i64 80 ; 2 uses
  %i.bm = load volatile i64, ptr %i.bl, align 8, !tbaa !77
  %i.bn = add i64 %i.bm, 1
  store volatile i64 %i.bn, ptr %i.bl, align 8, !tbaa !77
  br label %hwloc_get_nbobjs_by_type.exit.thread48

hwloc_get_nbobjs_by_type.exit.thread48:           ; preds = %bb.c, %hwloc_get_nbobjs_by_type.exit, %bb.a, %opal_obj_new.exit46, %bb.m, %hwloc_get_nbobjs_by_type.exit.thread
  %.036 = phi i32 [ %i.am, %bb.m ], [ 0, %hwloc_get_nbobjs_by_type.exit.thread ], [ 0, %bb.a ], [ %i.bb, %opal_obj_new.exit46 ], [ %i.e, %hwloc_get_nbobjs_by_type.exit ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @df_search(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @hwloc_get_type_depth(ptr noundef nonnull %0, i32 noundef %2) #10 ; 10 uses
  %switch = icmp ugt i32 %i.a, -3
  br i1 %switch, label %hwloc_get_next_obj_by_depth.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %4, label %hwloc_get_next_obj_by_depth.exit.thread [
    i8 2, label %bb.c
    i8 1, label %bb.f
    i8 3, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  %.not71 = icmp eq ptr %5, null
  br i1 %.not71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef nonnull %0, i32 noundef %i.a) #11
  store i32 %i.b, ptr %5, align 4, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull %0, i32 noundef %i.a, i32 noundef %3) #11
  br label %hwloc_get_next_obj_by_depth.exit.thread

bb.f:                                             ; preds = %bb.b
  %.not69 = icmp eq ptr %5, null
  br i1 %.not69, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %5, align 4, !tbaa !29
  br label %.split

.split.us:                                        ; preds = %bb.f, %bb.k
  %.054.us = phi ptr [ %.0.i.us, %bb.k ], [ null, %bb.f ] ; 3 uses
  %.053.us = phi ptr [ %spec.select.us, %bb.k ], [ null, %bb.f ] ; 3 uses
  %.not.i.us = icmp eq ptr %.054.us, null
  br i1 %.not.i.us, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.split.us
  %i.d = getelementptr inbounds nuw i8, ptr %.054.us, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !82
  %.not7.i.us = icmp eq i32 %i.e, %i.a
  br i1 %.not7.i.us, label %bb.i, label %hwloc_get_next_obj_by_depth.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %.054.us, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  br label %hwloc_get_next_obj_by_depth.exit.us

bb.j:                                             ; preds = %.split.us
  %i.h = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %0, i32 noundef range(i32 0, -2) %i.a, i32 noundef 0) #11
  br label %hwloc_get_next_obj_by_depth.exit.us

hwloc_get_next_obj_by_depth.exit.us:              ; preds = %bb.j, %bb.i
  %.0.i.us = phi ptr [ %i.h, %bb.j ], [ %i.g, %bb.i ] ; 4 uses
  %.not70.us = icmp eq ptr %.0.i.us, null
  br i1 %.not70.us, label %hwloc_get_next_obj_by_depth.exit.thread, label %bb.k

bb.k:                                             ; preds = %hwloc_get_next_obj_by_depth.exit.us
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !84
  %i.k = icmp eq i32 %i.j, %3
  %spec.select.us = select i1 %i.k, ptr %.0.i.us, ptr %.053.us
  br label %.split.us, !llvm.loop !78

.split:                                           ; preds = %bb.g, %bb.q
  %i.l = phi i32 [ %i.v, %bb.q ], [ 0, %bb.g ]    ; 2 uses
  %.054 = phi ptr [ %.0.i, %bb.q ], [ null, %bb.g ] ; 3 uses
  %.053 = phi ptr [ %spec.select, %bb.q ], [ null, %bb.g ] ; 3 uses
  %.not.i = icmp eq ptr %.054, null
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split
  %i.m = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %0, i32 noundef range(i32 0, -2) %i.a, i32 noundef 0) #11
  br label %hwloc_get_next_obj_by_depth.exit

bb.m:                                             ; preds = %.split
  %i.n = getelementptr inbounds nuw i8, ptr %.054, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !82
  %.not7.i = icmp eq i32 %i.o, %i.a
  br i1 %.not7.i, label %bb.n, label %hwloc_get_next_obj_by_depth.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %.054, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  br label %hwloc_get_next_obj_by_depth.exit

hwloc_get_next_obj_by_depth.exit:                 ; preds = %bb.l, %bb.n
  %.0.i = phi ptr [ %i.m, %bb.l ], [ %i.q, %bb.n ] ; 4 uses
  %.not70 = icmp eq ptr %.0.i, null
  br i1 %.not70, label %hwloc_get_next_obj_by_depth.exit.thread, label %bb.o

bb.o:                                             ; preds = %hwloc_get_next_obj_by_depth.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !84   ; 4 uses
  %i.t = icmp ugt i32 %i.s, %i.l
  br i1 %i.t, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.s, ptr %5, align 4, !tbaa !29
  %.pre = load i32, ptr %i.r, align 8, !tbaa !84
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.u = phi i32 [ %.pre, %bb.p ], [ %i.s, %bb.o ]
  %i.v = phi i32 [ %i.s, %bb.p ], [ %i.l, %bb.o ]
  %i.w = icmp eq i32 %i.u, %3
  %spec.select = select i1 %i.w, ptr %.0.i, ptr %.053
  br label %.split, !llvm.loop !78

bb.r:                                             ; preds = %bb.b
  %i.x = load i8, ptr @opal_hwloc_topo_in_shmem, align 1, !tbaa !22, !range !41, !noundef !42
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.s, label %.thread

.thread:                                          ; preds = %bb.r
  %i.z = tail call noalias ptr @hwloc_bitmap_alloc() #10
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.aa = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %0, i32 noundef 0, i32 noundef 0) #11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %i.ad = tail call noalias ptr @hwloc_bitmap_alloc() #10 ; 4 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %.not66 = icmp eq ptr %i.af, null
  br i1 %.not66, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.ai = tail call i32 @hwloc_bitmap_and(ptr noundef %i.ad, ptr noundef %i.ah, ptr noundef nonnull %i.af) #10 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %.thread, %bb.t, %bb.s
  %i.aj = phi ptr [ %i.z, %.thread ], [ %i.ad, %bb.t ], [ %i.ad, %bb.s ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.am = tail call i32 @hwloc_bitmap_copy(ptr noundef %i.aj, ptr noundef %i.al) #10 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.an = phi ptr [ %i.aj, %bb.v ], [ %i.ad, %bb.u ] ; 4 uses
  %.not67 = icmp eq ptr %5, null
  br i1 %.not67, label %.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %0, i32 noundef range(i32 0, -2) %i.a, i32 noundef 0) #11 ; 2 uses
  %.not.i72 = icmp eq ptr %i.ao, null
  br i1 %.not.i72, label %hwloc_get_nbobjs_inside_cpuset_by_depth.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x, %bb.z
  %.017.i = phi i32 [ %.1.i, %bb.z ], [ 0, %bb.x ] ; 2 uses
  %.01016.i = phi ptr [ %i.av, %bb.z ], [ %i.ao, %bb.x ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01016.i, i64 184
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 2 uses
  %i.ar = tail call i32 @hwloc_bitmap_iszero(ptr noundef %i.aq) #11
  %.not14.i = icmp eq i32 %i.ar, 0
  br i1 %.not14.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.preheader.i
  %i.as = tail call i32 @hwloc_bitmap_isincluded(ptr noundef %i.aq, ptr noundef readonly %i.an) #11
  %.not15.i = icmp ne i32 %i.as, 0
  %i.at = zext i1 %.not15.i to i32
end_hunk_0
