Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/mca_base_pvar?download=true
inline.NumInlined: 96
inline.NumDeleted: 29
begin_hunk_0_@mca_base_pvar_register:bb.a
bb.ae:                                            ; preds = %opal_thread_add_fetch_32.exit85
  %i.cc = load ptr, ptr %i.as, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !27 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !25 ; 2 uses
  %.not6.i86 = icmp eq ptr %i.cf, null
  br i1 %.not6.i86, label %opal_obj_run_destructors.exit90, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.ae, %.lr.ph.i87
  %i.cg = phi ptr [ %i.ci, %.lr.ph.i87 ], [ %i.cf, %bb.ae ]
  %.07.i88 = phi ptr [ %i.ch, %.lr.ph.i87 ], [ %i.ce, %bb.ae ]
  tail call void %i.cg(ptr noundef nonnull %i.as) #15, !inline_history !2
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.i88, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !25 ; 2 uses
  %.not.i89 = icmp eq ptr %i.ci, null
  br i1 %.not.i89, label %opal_obj_run_destructors.exit90, label %.lr.ph.i87, !llvm.loop !3

opal_obj_run_destructors.exit90:                  ; preds = %.lr.ph.i87, %bb.ae
  tail call void @free(ptr noundef nonnull %i.as) #15
  br label %mca_base_pvar_get_internal.exit

bb.af:                                            ; preds = %bb.aa, %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i32 %i.ap, ptr %i.cj, align 8, !tbaa !50
  br label %bb.ag

bb.ag:                                            ; preds = %bb.l, %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit, %bb.af
  %.0110 = phi ptr [ %.0.i.i, %bb.l ], [ %.0.i.i, %opal_obj_run_destructors.exit ], [ %.0.i.i, %opal_thread_add_fetch_32.exit ], [ %i.as, %bb.af ] ; 11 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0110, i64 44
  store i32 %5, ptr %i.ck, align 4, !tbaa !76
  %i.cl = getelementptr inbounds nuw i8, ptr %.0110, i64 48
  store i32 %6, ptr %i.cl, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %.0110, i64 52
  store i32 %7, ptr %i.cm, align 4, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %.0110, i64 56
  store ptr %8, ptr %i.cn, align 8, !tbaa !46
  %.not77 = icmp eq ptr %8, null
  br i1 %.not77, label %opal_thread_add_fetch_32.exit92, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.cp = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.ai, label %bb.aj, !prof !33

bb.ai:                                            ; preds = %bb.ah
  %i.cr = atomicrmw volatile add ptr %i.co, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit92

bb.aj:                                            ; preds = %bb.ah
  %i.cs = load volatile i32, ptr %i.co, align 4, !tbaa !13
  %i.ct = add nsw i32 %i.cs, 1
  store volatile i32 %i.ct, ptr %i.co, align 4, !tbaa !13
  %i.cu = load volatile i32, ptr %i.co, align 4, !tbaa !13 ; 0 uses
  br label %opal_thread_add_fetch_32.exit92

opal_thread_add_fetch_32.exit92:                  ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %.0110, i64 64
  store i32 %9, ptr %i.cv, align 8, !tbaa !52
  %i.cw = getelementptr inbounds nuw i8, ptr %.0110, i64 68
  store i32 %i.c, ptr %i.cw, align 4, !tbaa !44
  %i.cx = select i1 %i.a, ptr %11, ptr @mca_base_pvar_default_get_value
  %i.cy = getelementptr inbounds nuw i8, ptr %.0110, i64 72
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !53
  %.not78 = icmp eq ptr %13, null
  %i.cz = select i1 %.not78, ptr @mca_base_pvar_notify_ignore, ptr %13
  %i.da = getelementptr inbounds nuw i8, ptr %.0110, i64 88
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !54
  %i.db = and i32 %10, 128
  %.not79 = icmp eq i32 %i.db, 0
  br i1 %.not79, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %opal_thread_add_fetch_32.exit92
  %.not80 = icmp eq ptr %12, null
  %i.dc = select i1 %.not80, ptr @mca_base_pvar_default_set_value, ptr %12
  %i.dd = getelementptr inbounds nuw i8, ptr %.0110, i64 80
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !55
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %opal_thread_add_fetch_32.exit92
  %i.de = getelementptr inbounds nuw i8, ptr %.0110, i64 96
  store ptr %14, ptr %i.de, align 8, !tbaa !56
  %i.df = getelementptr inbounds nuw i8, ptr %.0110, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !75
  br label %mca_base_pvar_get_internal.exit

mca_base_pvar_get_internal.exit:                  ; preds = %bb.t, %bb.h, %bb.d, %opal_thread_add_fetch_32.exit85, %opal_obj_run_destructors.exit90, %bb.q, %bb.b, %bb.f, %bb.e, %bb.c, %bb.a, %bb.al
  %.061 = phi i32 [ -5, %bb.f ], [ -5, %bb.a ], [ -5, %bb.b ], [ %i.dg, %bb.al ], [ %.0.ph, %opal_thread_add_fetch_32.exit85 ], [ %i.ap, %bb.q ], [ -1, %bb.h ], [ -5, %bb.c ], [ -5, %bb.d ], [ -5, %bb.e ], [ %.0.ph, %opal_obj_run_destructors.exit90 ], [ -2, %bb.t ]
  ret i32 %.061
}

declare i32 @mca_base_var_group_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare i32 @opal_pointer_array_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_base_var_group_add_pvar(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @opal_hash_table_set_value_ptr(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @mca_base_pvar_default_get_value(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @ompi_var_type_sizes, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.b, i64 %i.g, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @mca_base_pvar_notify_ignore(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #8 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %3, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @mca_base_pvar_default_set_value(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @ompi_var_type_sizes, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %1, i64 %i.g, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mca_base_component_pvar_register(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = or i32 %8, 64
  %i.e = tail call i32 @mca_base_pvar_register(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %i.d, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define range(i32 -18, 1) i32 @mca_base_pvar_get(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @pvar_count, align 4, !tbaa !13
  %.not.i = icmp slt i32 %0, %i.a
  br i1 %.not.i, label %bb.b, label %mca_base_pvar_get_internal.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, -1
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 88), align 8
  %i.d = icmp sgt i32 %i.c, %0
  tail call void @llvm.assume(i1 %i.b)
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %.thread.i.i, !prof !33

.thread.i.i:                                      ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 112), align 8, !tbaa !37
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  br label %opal_pointer_array_get_item.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 32)) #15 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31
  %i.l = trunc nuw i8 %.pre.i.i to i1
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 112), align 8, !tbaa !37
  %i.n = zext nneg i32 %0 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  br i1 %i.l, label %bb.d, label %opal_pointer_array_get_item.exit.i, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 32)) #15 ; 0 uses
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.d, %bb.c, %.thread.i.i
  %.0.i.i = phi ptr [ %i.j, %.thread.i.i ], [ %i.p, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44
  %i.t = and i32 %i.s, 1024
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  %spec.store.select.i = select i1 %i.u, ptr %.0.i.i, ptr null
  store ptr %spec.store.select.i, ptr %1, align 8
  %spec.select.i = select i1 %i.u, i32 0, i32 -18
  br label %mca_base_pvar_get_internal.exit

mca_base_pvar_get_internal.exit:                  ; preds = %bb.a, %opal_pointer_array_get_item.exit.i
  %.0.i = phi i32 [ %spec.select.i, %opal_pointer_array_get_item.exit.i ], [ -18, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 -18, 1) i32 @mca_base_pvar_mark_invalid(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @pvar_count, align 4, !tbaa !13
  %.not.i = icmp slt i32 %0, %i.a
  br i1 %.not.i, label %bb.b, label %mca_base_pvar_get_internal.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, -1
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 88), align 8
  %i.d = icmp sgt i32 %i.c, %0
  tail call void @llvm.assume(i1 %i.b)
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %.thread.i.i, !prof !33

.thread.i.i:                                      ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 112), align 8, !tbaa !37
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  br label %opal_pointer_array_get_item.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 32)) #15 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31
  %i.l = trunc nuw i8 %.pre.i.i to i1
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 112), align 8, !tbaa !37
  %i.n = zext nneg i32 %0 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  br i1 %i.l, label %bb.d, label %opal_pointer_array_get_item.exit.i, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 32)) #15 ; 0 uses
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.d, %bb.c, %.thread.i.i
  %.0.i.i = phi ptr [ %i.j, %.thread.i.i ], [ %i.p, %bb.d ], [ %i.p, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 68 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44   ; 2 uses
  %i.t = and i32 %i.s, 1024
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %mca_base_pvar_get_internal.exit, label %mca_base_pvar_get_internal.exit.thread

mca_base_pvar_get_internal.exit:                  ; preds = %opal_pointer_array_get_item.exit.i
  %i.v = or disjoint i32 %i.s, 1024
  store i32 %i.v, ptr %i.r, align 4, !tbaa !44
  br label %mca_base_pvar_get_internal.exit.thread

mca_base_pvar_get_internal.exit.thread:           ; preds = %bb.a, %opal_pointer_array_get_item.exit.i, %mca_base_pvar_get_internal.exit
  %.0 = phi i32 [ 0, %mca_base_pvar_get_internal.exit ], [ -18, %opal_pointer_array_get_item.exit.i ], [ -18, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mca_base_pvar_notify(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 68
  %.val = load i32, ptr %i.c, align 4, !tbaa !44
  %i.d = and i32 %.val, 1024
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = tail call i32 %i.f(ptr noundef nonnull %i.b, i32 noundef %1, ptr noundef %i.h, ptr noundef %2) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ -45, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -18, 1) i32 @mca_base_pvar_update_all_handles(i32 noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @pvar_count, align 4, !tbaa !13
  %.not.i = icmp slt i32 %0, %i.a
  br i1 %.not.i, label %bb.b, label %mca_base_pvar_get_internal.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, -1
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 88), align 8
  %i.d = icmp sgt i32 %i.c, %0
  tail call void @llvm.assume(i1 %i.b)
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %.thread.i.i, !prof !33

.thread.i.i:                                      ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 112), align 8, !tbaa !37
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  br label %opal_pointer_array_get_item.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 32)) #15 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31
  %i.l = trunc nuw i8 %.pre.i.i to i1
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 112), align 8, !tbaa !37
  %i.n = zext nneg i32 %0 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  br i1 %i.l, label %bb.d, label %opal_pointer_array_get_item.exit.i, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 32)) #15 ; 0 uses
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.d, %bb.c, %.thread.i.i
  %.0.i.i = phi ptr [ %i.j, %.thread.i.i ], [ %i.p, %bb.d ], [ %i.p, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44
  %i.t = and i32 %i.s, 1024
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %mca_base_pvar_get_internal.exit, label %mca_base_pvar_get_internal.exit.thread

mca_base_pvar_get_internal.exit:                  ; preds = %opal_pointer_array_get_item.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 160
  %i.w = load volatile i64, ptr %i.v, align 8, !tbaa !63
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %mca_base_pvar_get_internal.exit.thread, label %bb.e

bb.e:                                             ; preds = %mca_base_pvar_get_internal.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136
  %i.z = load volatile ptr, ptr %i.y, align 8, !tbaa !78 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load volatile ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 120 ; 2 uses
  %.not1422 = icmp eq ptr %i.z, %i.ac
  br i1 %.not1422, label %mca_base_pvar_get_internal.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.024 = phi ptr [ %i.ai, %bb.g ], [ %i.ab, %bb.e ] ; 3 uses
  %.01123 = phi ptr [ %.024, %bb.g ], [ %i.z, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01123, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62
  %.not15 = icmp eq ptr %i.ae, %1
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds i8, ptr %.01123, i64 -40
  %i.ag = tail call i32 @mca_base_pvar_handle_update(ptr noundef nonnull %i.af) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.ai = load volatile ptr, ptr %i.ah, align 8, !tbaa !64
  %.not14 = icmp eq ptr %.024, %i.ac
  br i1 %.not14, label %mca_base_pvar_get_internal.exit.thread, label %.lr.ph, !llvm.loop !77

mca_base_pvar_get_internal.exit.thread:           ; preds = %bb.g, %bb.e, %bb.a, %opal_pointer_array_get_item.exit.i, %mca_base_pvar_get_internal.exit
  %.012 = phi i32 [ 0, %mca_base_pvar_get_internal.exit ], [ -18, %bb.a ], [ -18, %opal_pointer_array_get_item.exit.i ], [ 0, %bb.e ], [ 0, %bb.g ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define i32 @mca_base_pvar_handle_update(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 68
  %.val = load i32, ptr %i.c, align 4, !tbaa !44  ; 2 uses
  %i.d = and i32 %.val, 1024
  %.not115 = icmp eq i32 %i.d, 0
  br i1 %.not115, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i8, ptr %i.e, align 8, !tbaa !65, !range !31, !noundef !32
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = and i32 %.val, 256
  %i.i = icmp ne i32 %i.h, 0                      ; 2 uses
  %or.cond = or i1 %i.i, %i.g
  br i1 %or.cond, label %mca_base_pvar_handle_is_running.exit.thread, label %bb.y

mca_base_pvar_handle_is_running.exit.thread:      ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 48
  %.val108 = load i32, ptr %i.j, align 8, !tbaa !45
  %i.k = add i32 %.val108, -4
  %i.l = icmp ult i32 %i.k, 5
  br i1 %i.l, label %bb.c, label %bb.w

bb.c:                                             ; preds = %mca_base_pvar_handle_is_running.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 15 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = tail call i32 %i.n(ptr noundef nonnull %i.b, ptr noundef %i.p, ptr noundef %i.r) #15
  %.not106 = icmp eq i32 %i.s, 0
  br i1 %.not106, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 48       ; 2 uses
  %.val107 = load i32, ptr %i.u, align 8, !tbaa !45
  %.off.i111 = add i32 %.val107, -6
  %switch.i112 = icmp ult i32 %.off.i111, 3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !67   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0                     ; 2 uses
  br i1 %switch.i112, label %.preheader, label %.preheader119

.preheader119:                                    ; preds = %bb.d
  br i1 %i.x, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader119
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  br label %bb.k

.preheader:                                       ; preds = %bb.d
  br i1 %i.x, label %.lr.ph122, label %._crit_edge

.lr.ph122:                                        ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph122, %bb.j
  %i.ad = phi i32 [ %i.w, %.lr.ph122 ], [ %i.bx, %bb.j ] ; 4 uses
  %indvars.iv124 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next125, %bb.j ] ; 13 uses
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !51
  switch i32 %i.ae, label %bb.j [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 8, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv124
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv124
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !13
  %i.al = sub i32 %i.ah, %i.ak
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv124 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !13
  %i.ap = add i32 %i.al, %i.ao
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !13
  %.pre = load i32, ptr %i.v, align 8, !tbaa !67
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv124
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !57
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv124
  %i.av = load i64, ptr %i.au, align 8, !tbaa !57
  %i.aw = sub i64 %i.as, %i.av
  %i.ax = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv124 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !57
  %i.ba = add i64 %i.aw, %i.az
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !57
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv124
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !82
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv124
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !82
  %i.bh = sub i64 %i.bd, %i.bg
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv124 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !82
  %i.bl = add i64 %i.bh, %i.bk
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !82
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv124
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !84
  %i.bp = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv124
  %i.br = load double, ptr %i.bq, align 8, !tbaa !84
  %i.bs = fsub double %i.bo, %i.br
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv124 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !84
  %i.bw = fadd double %i.bs, %i.bv
  store double %i.bw, ptr %i.bu, align 8, !tbaa !84
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.e
  %i.bx = phi i32 [ %.pre, %bb.f ], [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %i.ad, %bb.i ], [ %i.ad, %bb.e ] ; 2 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next125, %i.by
  br i1 %i.bz, label %bb.e, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !68
  store ptr %i.cc, ptr %i.o, align 8, !tbaa !66
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !68
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 17 uses
  %i.cd = load i32, ptr %i.u, align 8, !tbaa !45
  %i.ce = icmp eq i32 %i.cd, 5
  %i.cf = load i32, ptr %i.y, align 4, !tbaa !51  ; 2 uses
  br i1 %i.ce, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  switch i32 %i.cf, label %bb.v [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 8, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !13
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !13
  %i.cm = tail call noundef i32 @llvm.umin.i32(i32 %i.ci, i32 %i.cl)
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !13
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !57
  %i.cq = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !57
  %i.ct = tail call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 %i.cs)
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !57
  br label %bb.v

bb.o:                                             ; preds = %bb.l
  %i.cu = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !82
  %i.cx = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !82
  %i.da = tail call noundef i64 @llvm.smin.i64(i64 %i.cw, i64 %i.cz)
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !82
  br label %bb.v

bb.p:                                             ; preds = %bb.l
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !84 ; 2 uses
  %i.de = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !84 ; 2 uses
  %i.dh = fcmp olt double %i.dd, %i.dg
  %i.di = select i1 %i.dh, double %i.dd, double %i.dg
  store double %i.di, ptr %i.df, align 8, !tbaa !84
  br label %bb.v

bb.q:                                             ; preds = %bb.k
  switch i32 %i.cf, label %bb.v [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 8, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.dj = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13
  %i.dm = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !13
  %i.dp = tail call noundef i32 @llvm.umax.i32(i32 %i.dl, i32 %i.do)
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !13
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.dq = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !57
  %i.dt = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !57
  %i.dw = tail call noundef i64 @llvm.umax.i64(i64 %i.ds, i64 %i.dv)
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !57
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.dx = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !82
  %i.ea = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !82
  %i.ed = tail call noundef i64 @llvm.smax.i64(i64 %i.dz, i64 %i.ec)
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !82
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.ee = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !84 ; 2 uses
  %i.eh = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !84 ; 2 uses
  %i.ek = fcmp ogt double %i.eg, %i.ej
  %i.el = select i1 %i.ek, double %i.eg, double %i.ej
  store double %i.el, ptr %i.ei, align 8, !tbaa !84
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %bb.p, %bb.o, %bb.n, %bb.m, %bb.q, %bb.u, %bb.t, %bb.s, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.em = load i32, ptr %i.v, align 8, !tbaa !67
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next, %i.en
  br i1 %i.eo, label %bb.k, label %.loopexit, !llvm.loop !80

bb.w:                                             ; preds = %mca_base_pvar_handle_is_running.exit.thread
  br i1 %i.i, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !53
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !69
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.ev = tail call i32 %i.eq(ptr noundef nonnull %i.b, ptr noundef %i.es, ptr noundef %i.eu) #15 ; 2 uses
  %.not = icmp eq i32 %i.ev, 0
  br i1 %.not, label %.loopexit, label %bb.y

.loopexit:                                        ; preds = %bb.v, %.preheader119, %bb.w, %bb.x, %._crit_edge
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.x, %bb.c, %bb.a, %.loopexit
  %.0104 = phi i32 [ -45, %bb.a ], [ 0, %bb.b ], [ 0, %.loopexit ], [ -1, %bb.c ], [ %i.ev, %bb.x ]
  ret i32 %.0104
}

; Function Attrs: nounwind uwtable
define i32 @mca_base_pvar_handle_alloc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @pvar_count, align 4, !tbaa !13
  %.not.i = icmp slt i32 %1, %i.a
  br i1 %.not.i, label %bb.b, label %opal_obj_new.exit.thread96

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, -1
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 88), align 8
  %i.d = icmp sgt i32 %i.c, %1
  tail call void @llvm.assume(i1 %i.b)
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %.thread.i.i, !prof !33

.thread.i.i:                                      ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 112), align 8, !tbaa !37
  %i.h = zext nneg i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  br label %opal_pointer_array_get_item.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 32)) #15 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31
  %i.l = trunc nuw i8 %.pre.i.i to i1
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 112), align 8, !tbaa !37
  %i.n = zext nneg i32 %1 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  br i1 %i.l, label %bb.d, label %opal_pointer_array_get_item.exit.i, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 32)) #15 ; 0 uses
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.d, %bb.c, %.thread.i.i
  %.0.i.i = phi ptr [ %i.j, %.thread.i.i ], [ %i.p, %bb.d ], [ %i.p, %bb.c ] ; 13 uses
  %i.r = getelementptr i8, ptr %.0.i.i, i64 68    ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44
  %i.t = and i32 %i.s, 1024
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %mca_base_pvar_get_internal.exit, label %opal_obj_new.exit.thread96

mca_base_pvar_get_internal.exit:                  ; preds = %opal_pointer_array_get_item.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !52
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %mca_base_pvar_get_internal.exit
  %i.y = icmp eq ptr %2, null
  br i1 %i.y, label %opal_obj_new.exit.thread96, label %bb.f

bb.f:                                             ; preds = %mca_base_pvar_get_internal.exit, %bb.e
  %.051 = phi ptr [ %2, %bb.e ], [ null, %mca_base_pvar_get_internal.exit ] ; 2 uses
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_base_pvar_handle_t_class, i64 56), align 8, !tbaa !47
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #17 ; 24 uses
  %i.ab = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !13
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_base_pvar_handle_t_class, i64 32), align 8, !tbaa !20
  %.not.i65 = icmp eq i32 %i.ab, %i.ac
  br i1 %.not.i65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @opal_class_initialize(ptr noundef nonnull @mca_base_pvar_handle_t_class) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not9.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i, label %opal_obj_new.exit.thread96, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @mca_base_pvar_handle_t_class, ptr %i.aa, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  store volatile i32 1, ptr %i.ad, align 8, !tbaa !23
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_base_pvar_handle_t_class, i64 40), align 8, !tbaa !24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.af, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.af, %bb.i ]
  %.07.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.ae, %bb.i ]
  tail call void %i.ag(ptr noundef nonnull %i.aa) #15, !inline_history !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.i
  %i.aj = icmp eq ptr %.051, null
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ak = load ptr, ptr %.051, align 8, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.j
  %i.al = phi ptr [ %i.ak, %bb.j ], [ null, %.loopexit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  store ptr %.0.i.i, ptr %i.an, align 8, !tbaa !61
  store ptr %i.aa, ptr %3, align 8, !tbaa !86
  %.val.i = load i32, ptr %i.r, align 4, !tbaa !44
  %i.ao = and i32 %.val.i, 1024
  %.not.i66 = icmp eq i32 %i.ao, 0
  br i1 %.not.i66, label %mca_base_pvar_notify.exit, label %opal_obj_new.exit

mca_base_pvar_notify.exit:                        ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54
  %i.ar = tail call i32 %i.aq(ptr noundef nonnull %.0.i.i, i32 noundef 0, ptr noundef %i.al, ptr noundef %4) #15, !inline_history !70
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %opal_obj_new.exit, label %bb.l

bb.l:                                             ; preds = %mca_base_pvar_notify.exit
  %i.at = load i32, ptr %4, align 4, !tbaa !13    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store i32 %i.at, ptr %i.au, align 8, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !51
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @ompi_var_type_sizes, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !57 ; 4 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %opal_obj_new.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val64 = load i32, ptr %i.r, align 4, !tbaa !44
  %i.bb = and i32 %.val64, 256
  %.not = icmp eq i32 %i.bb, 0                    ; 2 uses
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr i8, ptr %.0.i.i, i64 48
  %.val59 = load i32, ptr %i.bc, align 8, !tbaa !45
  %i.bd = add i32 %.val59, -4
  %i.be = icmp ult i32 %i.bd, 5
  br i1 %i.be, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bf = sext i32 %i.at to i64
  %i.bg = tail call noalias ptr @calloc(i64 noundef %i.bf, i64 noundef %i.az) #18 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !69
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %opal_obj_new.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.phi.trans.insert = getelementptr i8, ptr %.0.i.i, i64 48
  %.val58.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !45 ; 2 uses
  %.pre = add i32 %.val58.pre, -4
  %i.bj = icmp ult i32 %.pre, 5
  %.off.i69 = add nsw i32 %.val58.pre, -6
  %switch.i70 = icmp ult i32 %.off.i69, 3
  br i1 %i.bj, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bk = load i32, ptr %4, align 4, !tbaa !13
  %i.bl = sext i32 %i.bk to i64
  %i.bm = tail call noalias ptr @calloc(i64 noundef %i.bl, i64 noundef %i.az) #18 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !66
  %i.bo = icmp eq ptr %i.bm, null
  br i1 %i.bo, label %opal_obj_new.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = load i32, ptr %4, align 4, !tbaa !13
  %i.bq = sext i32 %i.bp to i64
  %i.br = tail call noalias ptr @calloc(i64 noundef %i.bq, i64 noundef %i.az) #18 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !68
  %i.bt = icmp eq ptr %i.br, null
  br i1 %i.bt, label %opal_obj_new.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !53
  br i1 %switch.i70, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !69
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sink = phi ptr [ %i.bx, %bb.u ], [ %i.br, %bb.t ]
  %i.by = load ptr, ptr %i.am, align 8, !tbaa !62
  %i.bz = tail call i32 %i.bv(ptr noundef nonnull %.0.i.i, ptr noundef %.sink, ptr noundef %i.by) #15 ; 2 uses
  %.not57 = icmp eq i32 %i.bz, 0
  br i1 %.not57, label %.thread, label %opal_obj_new.exit.thread96

.thread:                                          ; preds = %bb.n, %bb.p, %bb.s, %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store ptr %0, ptr %i.ca, align 8, !tbaa !71
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cd = load volatile ptr, ptr %i.cc, align 8, !tbaa !72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store volatile ptr %i.cd, ptr %i.ce, align 8, !tbaa !72
  %i.cf = load volatile ptr, ptr %i.cc, align 8, !tbaa !72
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store volatile ptr %i.aa, ptr %i.cg, align 8, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store volatile ptr %i.cb, ptr %i.ch, align 8, !tbaa !64
  store volatile ptr %i.aa, ptr %i.cc, align 8, !tbaa !72
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cj = load volatile i64, ptr %i.ci, align 8, !tbaa !63
  %i.ck = add i64 %i.cj, 1
  store volatile i64 %i.ck, ptr %i.ci, align 8, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 120
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 144 ; 3 uses
  %i.co = load volatile ptr, ptr %i.cn, align 8, !tbaa !72
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store volatile ptr %i.co, ptr %i.cp, align 8, !tbaa !72
  %i.cq = load volatile ptr, ptr %i.cn, align 8, !tbaa !72
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store volatile ptr %i.cl, ptr %i.cr, align 8, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store volatile ptr %i.cm, ptr %i.cs, align 8, !tbaa !64
  store volatile ptr %i.cl, ptr %i.cn, align 8, !tbaa !72
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 160 ; 2 uses
  %i.cu = load volatile i64, ptr %i.ct, align 8, !tbaa !63
  %i.cv = add i64 %i.cu, 1
  store volatile i64 %i.cv, ptr %i.ct, align 8, !tbaa !63
  %.val62 = load i32, ptr %i.r, align 4, !tbaa !44
  %i.cw = and i32 %.val62, 256
  %.not101 = icmp eq i32 %i.cw, 0
  br i1 %.not101, label %opal_obj_new.exit.thread96, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store i8 1, ptr %i.cx, align 8, !tbaa !65
  br label %opal_obj_new.exit.thread96

opal_obj_new.exit:                                ; preds = %mca_base_pvar_notify.exit, %bb.l, %bb.o, %bb.q, %bb.r, %bb.k
  %.1 = phi i32 [ -2, %bb.q ], [ -2, %bb.r ], [ -2, %bb.o ], [ -1, %mca_base_pvar_notify.exit ], [ -1, %bb.l ], [ -1, %bb.k ] ; 2 uses
  %i.cy = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.x, label %bb.y, !prof !33

bb.x:                                             ; preds = %opal_obj_new.exit
  %i.da = atomicrmw volatile add ptr %i.ad, i32 -1 monotonic, align 4
  %i.db = add i32 %i.da, -1
  br label %opal_thread_add_fetch_32.exit

bb.y:                                             ; preds = %opal_obj_new.exit
  %i.dc = load volatile i32, ptr %i.ad, align 8, !tbaa !13
  %i.dd = add nsw i32 %i.dc, -1
  store volatile i32 %i.dd, ptr %i.ad, align 8, !tbaa !13
  %i.de = load volatile i32, ptr %i.ad, align 8, !tbaa !13
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.x, %bb.y
  %.0.i74 = phi i32 [ %i.db, %bb.x ], [ %i.de, %bb.y ]
  %i.df = icmp eq i32 %.0.i74, 0
  br i1 %i.df, label %bb.z, label %opal_obj_new.exit.thread96

bb.z:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.dg = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !25 ; 2 uses
  %.not6.i = icmp eq ptr %i.dj, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.i
  %i.dk = phi ptr [ %i.dm, %.lr.ph.i ], [ %i.dj, %bb.z ]
  %.07.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %i.di, %bb.z ]
  tail call void %i.dk(ptr noundef nonnull %i.aa) #15, !inline_history !2
  %i.dl = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !25 ; 2 uses
  %.not.i75 = icmp eq ptr %i.dm, null
  br i1 %.not.i75, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.z
  tail call void @free(ptr noundef nonnull %i.aa) #15
  br label %opal_obj_new.exit.thread96

opal_obj_new.exit.thread96:                       ; preds = %bb.a, %opal_pointer_array_get_item.exit.i, %bb.h, %bb.e, %bb.w, %.thread, %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit, %bb.v
  %.050 = phi i32 [ %i.bz, %bb.v ], [ %.1, %opal_thread_add_fetch_32.exit ], [ %.1, %opal_obj_run_destructors.exit ], [ -18, %bb.a ], [ -2, %bb.h ], [ 0, %bb.w ], [ 0, %.thread ], [ -5, %bb.e ], [ -18, %opal_pointer_array_get_item.exit.i ]
  ret i32 %.050
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define noundef i32 @mca_base_pvar_handle_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw volatile add ptr %i.a, i32 -1 monotonic, align 4
  %i.e = add i32 %i.d, -1
  br label %opal_thread_add_fetch_32.exit
end_hunk_0
begin_hunk_1_@mca_base_pvar_handle_stop:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr i8, ptr %i.b, i64 68
  %.val = load i32, ptr %i.c, align 4, !tbaa !44  ; 2 uses
  %i.d = and i32 %.val, 1024
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !65, !range !31, !noundef !32
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = and i32 %.val, 256
  %.not17 = icmp eq i32 %i.h, 0
  %or.cond12.not = and i1 %.not17, %i.g
  br i1 %or.cond12.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @mca_base_pvar_handle_update(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 68
  %.val.i = load i32, ptr %i.k, align 4, !tbaa !44
  %i.l = and i32 %.val.i, 1024
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %mca_base_pvar_notify.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.q = tail call i32 %i.n(ptr noundef nonnull %i.j, i32 noundef 2, ptr noundef %i.p, ptr noundef null) #15, !inline_history !70 ; 0 uses
  br label %mca_base_pvar_notify.exit

mca_base_pvar_notify.exit:                        ; preds = %bb.d, %bb.e
  store i8 0, ptr %i.e, align 8, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.a, %mca_base_pvar_notify.exit
  %.0 = phi i32 [ 0, %mca_base_pvar_notify.exit ], [ -45, %bb.a ], [ -8, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mca_base_pvar_handle_reset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 68
  %.val = load i32, ptr %i.c, align 4, !tbaa !44  ; 3 uses
  %i.d = and i32 %.val, 1024
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 48
  %.val19 = load i32, ptr %i.e, align 8, !tbaa !45 ; 2 uses
  %.off.i = add i32 %.val19, -6
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !67
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !51
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @ompi_var_type_sizes, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !57
  %i.p = mul i64 %i.o, %i.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 0, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load i8, ptr %i.q, align 8, !tbaa !65, !range !31, !noundef !32
  %i.s = trunc nuw i8 %i.r to i1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !61  ; 3 uses
  br i1 %i.s, label %mca_base_pvar_handle_is_running.exit.thread, label %mca_base_pvar_handle_is_running.exit

mca_base_pvar_handle_is_running.exit:             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !44
  %i.v = and i32 %i.u, 256
  %.not26 = icmp eq i32 %i.v, 0
  br i1 %.not26, label %bb.g, label %mca_base_pvar_handle_is_running.exit.thread

mca_base_pvar_handle_is_running.exit.thread:      ; preds = %bb.c, %mca_base_pvar_handle_is_running.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = tail call i32 %i.x(ptr noundef %.pre, ptr noundef %i.z, ptr noundef %i.ab) #15
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !65, !range !31, !noundef !32
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = and i32 %.val, 256
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond = or i1 %i.ah, %i.af
  %i.ai = and i32 %.val19, -2
  %spec.select.i = icmp eq i32 %i.ai, 4
  %or.cond24 = and i1 %spec.select.i, %or.cond
  br i1 %or.cond24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62
  %i.ap = tail call i32 %i.ak(ptr noundef nonnull %i.b, ptr noundef %i.am, ptr noundef %i.ao) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aq = and i32 %.val, 128
  %.not25 = icmp eq i32 %i.aq, 0
  %spec.select = select i1 %.not25, i32 0, i32 -17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %mca_base_pvar_handle_is_running.exit.thread, %mca_base_pvar_handle_is_running.exit, %bb.e, %bb.a
  %.018 = phi i32 [ -45, %bb.a ], [ %spec.select, %bb.f ], [ %i.ac, %mca_base_pvar_handle_is_running.exit.thread ], [ 0, %mca_base_pvar_handle_is_running.exit ], [ %i.ap, %bb.e ]
  ret i32 %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define i32 @mca_base_pvar_dump(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.g = load i32, ptr @pvar_count, align 4, !tbaa !13
  %.not.i.i = icmp slt i32 %0, %i.g
  br i1 %.not.i.i, label %bb.b, label %mca_base_pvar_get.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %0, -1
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 88), align 8
  %i.j = icmp sgt i32 %i.i, %0
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  %i.k = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %.thread.i.i.i, !prof !33

.thread.i.i.i:                                    ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 112), align 8, !tbaa !37
  %i.n = zext nneg i32 %0 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  br label %opal_pointer_array_get_item.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 32)) #15 ; 0 uses
  %.pre.i.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31
  %i.r = trunc nuw i8 %.pre.i.i.i to i1
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 112), align 8, !tbaa !37
  %i.t = zext nneg i32 %0 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  br i1 %i.r, label %bb.d, label %opal_pointer_array_get_item.exit.i.i, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @registered_pvars, i64 32)) #15 ; 0 uses
  br label %opal_pointer_array_get_item.exit.i.i

opal_pointer_array_get_item.exit.i.i:             ; preds = %bb.d, %bb.c, %.thread.i.i.i
  %.0.i.i.i = phi ptr [ %i.p, %.thread.i.i.i ], [ %i.v, %bb.d ], [ %i.v, %bb.c ] ; 10 uses
  %i.x = getelementptr i8, ptr %.0.i.i.i, i64 68  ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !44
  %i.z = and i32 %i.y, 1024
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %mca_base_pvar_get.exit, label %mca_base_pvar_get.exit.thread

mca_base_pvar_get.exit:                           ; preds = %opal_pointer_array_get_item.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !50
  %i.ad = call i32 @mca_base_var_group_get_internal(i32 noundef %i.ac, ptr noundef nonnull %i.a, i1 noundef zeroext true) #15 ; 2 uses
  %.not51 = icmp eq i32 %i.ad, 0
  br i1 %.not51, label %bb.e, label %mca_base_pvar_get.exit.thread

bb.e:                                             ; preds = %mca_base_pvar_get.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93 ; 2 uses
  %.not52 = icmp eq ptr %i.ai, null
  %spec.select = select i1 %.not52, ptr @.str, ptr %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 3 uses
  %.not53 = icmp eq ptr %i.am, null
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !96
  %i.ap = call i32 %i.ao(ptr noundef nonnull %i.am, ptr noundef nonnull %i.b) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = icmp eq i32 %2, 1
  br i1 %i.aq, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  %.not56 = icmp eq ptr %i.as, null
  %i.at = select i1 %.not56, i32 5, i32 6
  %i.au = load i32, ptr %i.b, align 4, !tbaa !13
  %i.av = add i32 %i.au, 1
  %i.aw = add i32 %i.av, %i.at
  %i.ax = sext i32 %i.aw to i64
  %i.ay = call noalias ptr @calloc(i64 noundef %i.ax, i64 noundef 8) #18 ; 2 uses
  store ptr %i.ay, ptr %1, align 8, !tbaa !98
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %mca_base_pvar_get.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1, ptr noundef %i.ag, ptr noundef nonnull %spec.select, ptr noundef %i.ak) #15 ; 0 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !98
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !45
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr @pvar_class_names, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.bi = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.2, ptr noundef %i.bc, ptr noundef %i.bh) #15 ; 0 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !98
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !28
  %.val60 = load i32, ptr %i.x, align 4, !tbaa !44
  %i.bm = and i32 %.val60, 128
  %.not = icmp eq i32 %i.bm, 0
  %i.bn = select i1 %.not, ptr @.str.5, ptr @.str.4
  %i.bo = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.bk, ptr noundef nonnull @.str.3, ptr noundef %i.bl, ptr noundef nonnull %i.bn) #15 ; 0 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !28
  %.val = load i32, ptr %i.x, align 4, !tbaa !44
  %i.bs = and i32 %.val, 256
  %.not80 = icmp eq i32 %i.bs, 0
  %i.bt = select i1 %.not80, ptr @.str.5, ptr @.str.4
  %i.bu = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.bq, ptr noundef nonnull @.str.6, ptr noundef %i.br, ptr noundef nonnull %i.bt) #15 ; 0 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !98
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !28
  %.val61 = load i32, ptr %i.x, align 4, !tbaa !44
  %i.by = and i32 %.val61, 512
  %.not81 = icmp eq i32 %i.by, 0
  %i.bz = select i1 %.not81, ptr @.str.5, ptr @.str.4
  %i.ca = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.7, ptr noundef %i.bx, ptr noundef nonnull %i.bz) #15 ; 0 uses
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %.not57 = icmp eq ptr %i.cb, null
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %1, align 8, !tbaa !98
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.cf = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.8, ptr noundef %i.ce, ptr noundef nonnull %i.cb) #15 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.041 = phi i32 [ 5, %bb.j ], [ 4, %bb.i ]      ; 2 uses
  %i.cg = load ptr, ptr %i.al, align 8, !tbaa !46
  %.not58 = icmp ne ptr %i.cg, null
  %i.ch = load i32, ptr %i.b, align 4
  %i.ci = icmp sgt i32 %i.ch, 0
  %or.cond = select i1 %.not58, i1 %i.ci, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k, %bb.m
  %.083 = phi i32 [ %i.cv, %bb.m ], [ 0, %bb.k ]  ; 2 uses
  %.182 = phi i32 [ %.2, %bb.m ], [ %.041, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.cj = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !99
  %i.cm = call i32 %i.cl(ptr noundef %i.cj, i32 noundef %.083, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #15
  %.not59 = icmp eq i32 %i.cm, 0
  br i1 %.not59, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %1, align 8, !tbaa !98
  %i.co = add nsw i32 %.182, 1
  %i.cp = sext i32 %.182 to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cp
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !13
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.cu = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef %i.cq, ptr noundef nonnull @.str.9, ptr noundef %i.cr, i32 noundef %i.cs, ptr noundef %i.ct) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %.2 = phi i32 [ %i.co, %bb.l ], [ %.182, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.cv = add nuw nsw i32 %.083, 1                ; 2 uses
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !13
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph, label %.loopexit, !llvm.loop !87

.loopexit:                                        ; preds = %bb.m, %bb.k
  %.3 = phi i32 [ %.041, %bb.k ], [ %.2, %bb.m ]
  %i.cy = load ptr, ptr %1, align 8, !tbaa !98
  %i.cz = sext i32 %.3 to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !51
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @ompi_var_type_names, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !28
  %i.dh = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef %i.da, ptr noundef nonnull @.str.10, ptr noundef %i.db, ptr noundef %i.dg) #15 ; 0 uses
  %i.di = load ptr, ptr %i.c, align 8, !tbaa !28
  call void @free(ptr noundef %i.di) #15
  br label %mca_base_pvar_get.exit.thread

bb.n:                                             ; preds = %bb.g
  %i.dj = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 3, i64 noundef 8) #18 ; 3 uses
  store ptr %i.dj, ptr %1, align 8, !tbaa !98
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %mca_base_pvar_get.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !51
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @ompi_var_type_names, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !45
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr @pvar_class_names, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !28
  %i.dv = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.dj, ptr noundef nonnull @.str.11, ptr noundef %i.ak, ptr noundef %i.dp, ptr noundef %i.du) #15 ; 0 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !48 ; 2 uses
  %.not54 = icmp eq ptr %i.dx, null
  br i1 %.not54, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dy = load ptr, ptr %1, align 8, !tbaa !98
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.dz, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.dx) #15 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.4 = phi i64 [ 2, %bb.p ], [ 1, %bb.o ]
  %i.eb = load ptr, ptr %i.al, align 8, !tbaa !46 ; 3 uses
  %.not55 = icmp eq ptr %i.eb, null
  br i1 %.not55, label %mca_base_pvar_get.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !100
  %i.ee = icmp eq i32 %2, 3
  %i.ef = zext i1 %i.ee to i32
  %i.eg = call i32 %i.ed(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.f, i32 noundef %i.ef) #15
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ei = load ptr, ptr %1, align 8, !tbaa !98
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.4
  %i.ek = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.el = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.ej, ptr noundef nonnull @.str.13, ptr noundef %i.ek) #15 ; 0 uses
  %i.em = load ptr, ptr %i.f, align 8, !tbaa !28
  call void @free(ptr noundef %i.em) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %mca_base_pvar_get.exit.thread

mca_base_pvar_get.exit.thread:                    ; preds = %bb.a, %opal_pointer_array_get_item.exit.i.i, %.loopexit, %bb.t, %bb.q, %bb.n, %bb.h, %mca_base_pvar_get.exit
  %.042 = phi i32 [ -2, %bb.h ], [ 0, %.loopexit ], [ %i.ad, %mca_base_pvar_get.exit ], [ -2, %bb.n ], [ 0, %bb.q ], [ 0, %bb.t ], [ -18, %opal_pointer_array_get_item.exit.i.i ], [ -18, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.042
}

declare i32 @mca_base_var_group_get_internal(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @opal_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @mca_base_pvar_contructor(ptr noundef initializes((16, 168)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %i.a, i8 0, i64 152, i1 false)
  %i.b = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !13
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 32), align 8, !tbaa !20
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_list_t_class) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr @opal_list_t_class, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store volatile i32 1, ptr %i.e, align 8, !tbaa !23
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 40), align 8, !tbaa !24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %i.j, %.lr.ph.i ], [ %i.g, %bb.c ]
  %.07.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.f, %bb.c ]
  tail call void %i.h(ptr noundef nonnull %i.d) #15, !inline_history !0
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mca_base_pvar_destructor(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not13 = icmp eq ptr %i.f, null
  br i1 %.not13, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.h, !prof !33

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw volatile add ptr %i.g, i32 -1 monotonic, align 4
  %i.k = add i32 %i.j, -1
  br label %opal_thread_add_fetch_32.exit

bb.h:                                             ; preds = %bb.f
  %i.l = load volatile i32, ptr %i.g, align 4, !tbaa !13
  %i.m = add nsw i32 %i.l, -1
  store volatile i32 %i.m, ptr %i.g, align 4, !tbaa !13
  %i.n = load volatile i32, ptr %i.g, align 4, !tbaa !13
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.k, %bb.g ], [ %i.n, %bb.h ]
  %i.o = icmp eq i32 %.0.i, 0
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !46   ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.not6.i = icmp eq ptr %i.t, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.u = phi ptr [ %i.w, %.lr.ph.i ], [ %i.t, %bb.i ]
  %.07.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.s, %bb.i ]
  tail call void %i.u(ptr noundef nonnull %i.p) #15, !inline_history !2
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !46
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.i
  %i.x = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.p, %bb.i ]
  tail call void @free(ptr noundef %i.x) #15
  store ptr null, ptr %i.e, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %.not6.i14 = icmp eq ptr %i.ac, null
  br i1 %.not6.i14, label %opal_obj_run_destructors.exit18, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.j, %.lr.ph.i15
  %i.ad = phi ptr [ %i.af, %.lr.ph.i15 ], [ %i.ac, %bb.j ]
  %.07.i16 = phi ptr [ %i.ae, %.lr.ph.i15 ], [ %i.ab, %bb.j ]
  tail call void %i.ad(ptr noundef nonnull %i.y) #15, !inline_history !2
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i16, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  %.not.i17 = icmp eq ptr %i.af, null
  br i1 %.not.i17, label %opal_obj_run_destructors.exit18, label %.lr.ph.i15, !llvm.loop !3

opal_obj_run_destructors.exit18:                  ; preds = %.lr.ph.i15, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opal_mpi_pvar_session_constructor(ptr noundef initializes((16, 24)) %0) #0 {
bb.a:
  %i.a = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !13
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 32), align 8, !tbaa !20
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_list_t_class) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr @opal_list_t_class, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store volatile i32 1, ptr %i.d, align 8, !tbaa !23
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 40), align 8, !tbaa !24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %i.i, %.lr.ph.i ], [ %i.f, %bb.c ]
  %.07.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.e, %bb.c ]
  tail call void %i.g(ptr noundef nonnull %i.c) #15, !inline_history !0
  %i.h = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opal_mpi_pvar_session_destructor(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !103 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load volatile ptr, ptr %i.d, align 8, !tbaa !64
  %.not14 = icmp eq ptr %i.c, %i.a
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %opal_obj_run_destructors.exit
  %.016 = phi ptr [ %i.n, %opal_obj_run_destructors.exit ], [ %i.e, %bb.a ] ; 3 uses
  %.0815 = phi ptr [ %.016, %opal_obj_run_destructors.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.0815, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not6.i = icmp eq ptr %i.i, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %i.j = phi ptr [ %i.l, %.lr.ph.i ], [ %i.i, %.lr.ph ]
  %.07.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.h, %.lr.ph ]
  tail call void %i.j(ptr noundef nonnull %.0815) #15, !inline_history !2
  %i.k = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.n = load volatile ptr, ptr %i.m, align 8, !tbaa !64
  %.not = icmp eq ptr %.016, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !101

._crit_edge:                                      ; preds = %opal_obj_run_destructors.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %.not6.i9 = icmp eq ptr %i.s, null
  br i1 %.not6.i9, label %opal_obj_run_destructors.exit13, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %._crit_edge, %.lr.ph.i10
  %i.t = phi ptr [ %i.v, %.lr.ph.i10 ], [ %i.s, %._crit_edge ]
  %.07.i11 = phi ptr [ %i.u, %.lr.ph.i10 ], [ %i.r, %._crit_edge ]
  tail call void %i.t(ptr noundef nonnull %i.o) #15, !inline_history !2
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i11, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %.not.i12 = icmp eq ptr %i.v, null
  br i1 %.not.i12, label %opal_obj_run_destructors.exit13, label %.lr.ph.i10, !llvm.loop !3

opal_obj_run_destructors.exit13:                  ; preds = %.lr.ph.i10, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mca_base_pvar_handle_constructor(ptr noundef initializes((40, 144)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  %i.b = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !13
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_item_t_class, i64 32), align 8, !tbaa !20
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_list_item_t_class) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr @opal_list_item_t_class, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store volatile i32 1, ptr %i.d, align 8, !tbaa !23
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_item_t_class, i64 40), align 8, !tbaa !24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %i.i, %.lr.ph.i ], [ %i.f, %bb.c ]
  %.07.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.e, %bb.c ]
  tail call void %i.g(ptr noundef nonnull %i.a) #15, !inline_history !0
  %i.h = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mca_base_pvar_handle_destructor(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %mca_base_pvar_notify.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 68
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !44
  %i.d = and i32 %.val.i, 1024
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %mca_base_pvar_notify.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = tail call i32 %i.f(ptr noundef nonnull %i.b, i32 noundef 3, ptr noundef %i.h, ptr noundef null) #15, !inline_history !70 ; 0 uses
  br label %mca_base_pvar_notify.exit

mca_base_pvar_notify.exit:                        ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mca_base_pvar_notify.exit
  tail call void @free(ptr noundef nonnull %i.k) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %mca_base_pvar_notify.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69   ; 2 uses
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 2 uses
  %.not21 = icmp eq ptr %i.o, null
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.o) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %.not22 = icmp eq ptr %i.p, null
  br i1 %.not22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load volatile ptr, ptr %i.q, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.t = load volatile ptr, ptr %i.s, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store volatile ptr %i.r, ptr %i.u, align 8, !tbaa !64
  %i.v = load volatile ptr, ptr %i.s, align 8, !tbaa !72
  %i.w = load volatile ptr, ptr %i.q, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store volatile ptr %i.v, ptr %i.x, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 160 ; 2 uses
  %i.z = load volatile i64, ptr %i.y, align 8, !tbaa !63
  %i.aa = add i64 %i.z, -1
  store volatile i64 %i.aa, ptr %i.y, align 8, !tbaa !63
  %i.ab = load volatile ptr, ptr %i.s, align 8, !tbaa !72 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %.not6.i = icmp eq ptr %i.ag, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ag, %bb.k ]
  %.07.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.af, %bb.k ]
  tail call void %i.ah(ptr noundef nonnull %i.ac) #15, !inline_history !2
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  %.not.i24 = icmp eq ptr %i.aj, null
  br i1 %.not.i24, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !71 ; 2 uses
  %.not23 = icmp eq ptr %i.al, null
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %opal_obj_run_destructors.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load volatile ptr, ptr %i.am, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ap = load volatile ptr, ptr %i.ao, align 8, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store volatile ptr %i.an, ptr %i.aq, align 8, !tbaa !64
  %i.ar = load volatile ptr, ptr %i.ao, align 8, !tbaa !72
  %i.as = load volatile ptr, ptr %i.am, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store volatile ptr %i.ar, ptr %i.at, align 8, !tbaa !72
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 72 ; 2 uses
  %i.av = load volatile i64, ptr %i.au, align 8, !tbaa !63
  %i.aw = add i64 %i.av, -1
  store volatile i64 %i.aw, ptr %i.au, align 8, !tbaa !63
  %i.ax = load volatile ptr, ptr %i.ao, align 8, !tbaa !72 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %opal_obj_run_destructors.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{!1, !26}
!2 = distinct !{null}
!3 = distinct !{!3, !26}
!4 = distinct !{null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"p1 _ZTS12opal_class_t", !14, i64 0}
!17 = !{!"any p2 pointer", !14, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!"opal_class_t", !15, i64 0, !16, i64 8, !14, i64 16, !14, i64 24, !10, i64 32, !10, i64 36, !17, i64 40, !17, i64 48, !18, i64 56}
!20 = !{!19, !10, i64 32}
!21 = !{!"opal_object_t", !16, i64 0, !10, i64 8}
!22 = !{!21, !16, i64 0}
!23 = !{!21, !10, i64 8}
!24 = !{!19, !17, i64 40}
!25 = !{!14, !14, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!19, !17, i64 48}
!28 = !{!15, !15, i64 0}
!29 = !{!"_Bool", !9, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = !{!"opal_mutex_t", !21, i64 0, !9, i64 16, !10, i64 56}
!35 = !{!"p1 long", !14, i64 0}
!36 = !{!"opal_pointer_array_t", !21, i64 0, !34, i64 16, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !35, i64 104, !17, i64 112}
!37 = !{!36, !17, i64 112}
!38 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!39 = !{!"p1 _ZTS19mca_base_var_enum_t", !14, i64 0}
!40 = !{!"p1 _ZTS16opal_list_item_t", !14, i64 0}
!41 = !{!"opal_list_item_t", !21, i64 0, !40, i64 16, !40, i64 24, !10, i64 32}
!42 = !{!"opal_list_t", !21, i64 0, !41, i64 16, !18, i64 56}
!43 = !{!"mca_base_pvar_t", !21, i64 0, !10, i64 16, !15, i64 24, !15, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !39, i64 56, !10, i64 64, !10, i64 68, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !42, i64 104}
!44 = !{!43, !10, i64 68}
!45 = !{!43, !10, i64 48}
!46 = !{!43, !39, i64 56}
!47 = !{!19, !18, i64 56}
!48 = !{!43, !15, i64 32}
!49 = !{!43, !15, i64 24}
!50 = !{!43, !10, i64 40}
!51 = !{!43, !10, i64 52}
!52 = !{!43, !10, i64 64}
!53 = !{!43, !14, i64 72}
!54 = !{!43, !14, i64 88}
!55 = !{!43, !14, i64 80}
!56 = !{!43, !14, i64 96}
!57 = !{!18, !18, i64 0}
!58 = !{!"p1 _ZTS23mca_base_pvar_session_t", !14, i64 0}
!59 = !{!"p1 _ZTS15mca_base_pvar_t", !14, i64 0}
!60 = !{!"mca_base_pvar_handle_t", !41, i64 0, !41, i64 40, !58, i64 80, !59, i64 88, !14, i64 96, !10, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !29, i64 136}
!61 = !{!60, !59, i64 88}
!62 = !{!60, !14, i64 96}
!63 = !{!42, !18, i64 56}
!64 = !{!41, !40, i64 16}
!65 = !{!60, !29, i64 136}
!66 = !{!60, !14, i64 128}
!67 = !{!60, !10, i64 104}
!68 = !{!60, !14, i64 112}
!69 = !{!60, !14, i64 120}
!70 = !{ptr @mca_base_pvar_notify}
!71 = !{!60, !58, i64 80}
!72 = !{!41, !40, i64 24}
!73 = distinct !{!73, !26}
!74 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!75 = !{!43, !10, i64 16}
!76 = !{!43, !10, i64 44}
!77 = distinct !{!77, !26}
!78 = !{!43, !40, i64 136}
!79 = distinct !{!79, !26}
!80 = distinct !{!80, !26}
!81 = !{!"long long", !9, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"double", !9, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"p1 _ZTS22mca_base_pvar_handle_t", !14, i64 0}
!86 = !{!85, !85, i64 0}
!87 = distinct !{!87, !26}
!88 = !{!"p1 _ZTS20mca_base_var_group_t", !14, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"opal_value_array_t", !21, i64 0, !15, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!91 = !{!"mca_base_var_group_t", !41, i64 0, !10, i64 40, !29, i64 44, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !90, i64 88, !90, i64 136, !90, i64 184, !90, i64 232}
!92 = !{!91, !15, i64 64}
!93 = !{!91, !15, i64 72}
!94 = !{!"p1 _ZTS25mca_base_var_enum_value_t", !14, i64 0}
!95 = !{!"mca_base_var_enum_t", !21, i64 0, !29, i64 16, !15, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !10, i64 72, !94, i64 80}
!96 = !{!95, !14, i64 32}
!97 = !{!"p2 omnipotent char", !17, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!95, !14, i64 40}
!100 = !{!95, !14, i64 64}
!101 = distinct !{!101, !26}
!102 = !{!"mca_base_pvar_session_t", !21, i64 0, !42, i64 16}
!103 = !{!102, !40, i64 48}
end_hunk_1
