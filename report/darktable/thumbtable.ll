Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thumbtable?download=true
inline.NumInlined: 73
inline.NumDeleted: 25
begin_hunk_0_@_event_dnd_begin:bb.a
  %i.i = tail call ptr @dt_act_on_get_images(i32 noundef 0, i32 noundef 1, i32 noundef 1) #15 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.i, ptr %i.j, align 8, !tbaa !95
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(4) @.str.65) #18
  %.not = icmp eq i32 %i.o, 0
  %.not41 = icmp eq ptr %i.i, null                ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not41, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call i32 @g_list_length(ptr noundef nonnull %i.i) #15
  tail call void @dt_view_map_drag_set_icon(ptr noundef nonnull %i.k, ptr noundef %1, i32 noundef %i.r, i32 noundef %i.s) #15
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  br i1 %.not41, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87
  %.not43 = icmp eq ptr %i.u, null
  br i1 %.not43, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = trunc i64 %i.w to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.y = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.e, i32 noundef %i.e) #15
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %3, i32 noundef %i.x, i32 noundef %i.y, i32 noundef 3, i8 noundef signext 114, ptr noundef nonnull @.str.27, i32 noundef 2413) #15
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !219
  %.not44 = icmp eq ptr %i.aa, null
  br i1 %.not44, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !220 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 2
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !221 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %i.af, %i.ah
  %.not52 = icmp eq i64 %i.ai, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa49 = phi i32 [ %i.ad, %.preheader ], [ %i.an, %.lr.ph ] ; 5 uses
  %.lcssa = phi i32 [ %i.ag, %.preheader ], [ %i.aq, %.lr.ph ] ; 4 uses
  %i.aj = icmp slt i32 %.lcssa49, %.lcssa
  br i1 %i.aj, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.03350 = phi i64 [ %i.am, %.lr.ph ], [ 3, %.preheader ] ; 2 uses
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !219
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.03350
  store i8 -1, ptr %i.al, align 1, !tbaa !94
  %i.am = add nuw i64 %.03350, 4                  ; 2 uses
  %i.an = load i32, ptr %i.ab, align 8, !tbaa !220 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 2
  %i.aq = load i32, ptr %i.ac, align 4, !tbaa !221 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %i.ap, %i.ar
  %i.at = icmp ult i64 %i.am, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %._crit_edge
  %i.au = mul nsw i32 %.lcssa49, %i.e
  %i.av = sdiv i32 %i.au, %.lcssa
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.aw = mul nsw i32 %.lcssa, %i.e
  %i.ax = sdiv i32 %i.aw, %.lcssa49
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.032 = phi i32 [ %i.av, %bb.g ], [ %i.e, %bb.h ]
  %.0 = phi i32 [ %i.e, %bb.g ], [ %i.ax, %bb.h ] ; 2 uses
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !219
  %i.az = shl nsw i32 %.lcssa49, 2
  %i.ba = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.ay, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %.lcssa49, i32 noundef %.lcssa, i32 noundef %i.az, ptr noundef null, ptr noundef null) #15 ; 3 uses
  %i.bb = call ptr @gdk_pixbuf_scale_simple(ptr noundef %i.ba, i32 noundef %.032, i32 noundef %.0, i32 noundef 3) #15 ; 3 uses
  call void @gtk_drag_set_icon_pixbuf(ptr noundef %1, ptr noundef %i.bb, i32 noundef 0, i32 noundef %.0) #15
  %.not45 = icmp eq ptr %i.ba, null
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @g_object_unref(ptr noundef nonnull %i.ba) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not46 = icmp eq ptr %i.bb, null
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @g_object_unref(ptr noundef nonnull %i.bb) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.f
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %3, ptr noundef nonnull @.str.27, i32 noundef 2439) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.e, %bb.m, %bb.b, %bb.c
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 100
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !35
  %.not47 = icmp eq i32 %i.be, 0
  br i1 %.not47, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load i32, ptr %2, align 8, !tbaa !18
  %.not48 = icmp eq i32 %i.bf, 3
  br i1 %.not48, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22
  call void @dt_gui_add_class(ptr noundef %i.bh, ptr noundef nonnull @.str.66) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_event_dnd_end(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_list_free(ptr noundef nonnull %i.b) #15
  store ptr null, ptr %i.a, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void @dt_gui_remove_class(ptr noundef %i.d, ptr noundef nonnull @.str.66) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_event_dnd_get(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i32 %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4096 x i8], align 16             ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95   ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not70 = icmp eq ptr %2, null
  br i1 %.not70, label %bb.c, label %bb.d, !prof !222

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 2293, ptr noundef nonnull @__func__._event_dnd_get, ptr noundef nonnull @.str.67) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %cond1 = icmp eq i32 %3, 0
  br i1 %cond1, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @g_list_length(ptr noundef nonnull %i.f) #15 ; 4 uses
  %.not75 = icmp eq i32 %i.g, 0
  br i1 %.not75, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #17 ; 5 uses
  %.not76.not = icmp eq ptr %i.i, null
  br i1 %.not76.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.68) #15
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !95   ; 2 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 664
  %i.m = load i32, ptr %i.l, align 8, !tbaa !125  ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.m, ptr %i.i, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre89 = phi i32 [ %i.m, %bb.i ], [ 0, %bb.h ]
  %.061 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]
  %.not7785 = icmp eq ptr %i.j, null
  br i1 %.not7785, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %6 = phi i32 [ %7, %bb.l ], [ %.pre89, %bb.j ]  ; 2 uses
  %.05887 = phi ptr [ %i.v, %bb.l ], [ %i.j, %bb.j ] ; 2 uses
  %.16286 = phi i32 [ %.2, %bb.l ], [ %.061, %bb.j ] ; 3 uses
  %i.o = load ptr, ptr %.05887, align 8, !tbaa !26
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %.not78 = icmp eq i32 %6, %i.q
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.r = sext i32 %.16286 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.r
  store i32 %i.q, ptr %i.s, align 4, !tbaa !35
  %i.t = add nsw i32 %.16286, 1                   ; 2 uses
  %.not79 = icmp slt i32 %i.t, %i.g
  %.pre = load i32, ptr %i.i, align 4, !tbaa !35
  br i1 %.not79, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %7 = phi i32 [ %.pre, %bb.k ], [ %6, %.lr.ph ]
  %.2 = phi i32 [ %i.t, %bb.k ], [ %.16286, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.05887, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !87   ; 2 uses
  %.not77 = icmp eq ptr %i.v, null
  br i1 %.not77, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.l, %bb.k, %bb.j
  %i.w = tail call ptr @gtk_selection_data_get_target(ptr noundef nonnull %2) #15
  %i.x = shl i32 %i.g, 2
  tail call void @gtk_selection_data_set(ptr noundef nonnull %2, ptr noundef %i.w, i32 noundef 32, ptr noundef nonnull %i.i, i32 noundef %i.x) #15
  br label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87
  %.not73 = icmp eq ptr %i.z, null
  br i1 %.not73, label %bb.n, label %.preheader

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 1, ptr %i.b, align 4, !tbaa !35
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = trunc i64 %i.ab to i32
  call void @dt_image_full_path(i32 noundef %i.ac, ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef nonnull %i.b) #15
  %i.ad = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.69, ptr noundef nonnull %i.a) #15 ; 3 uses
  %i.ae = call ptr @gtk_selection_data_get_target(ptr noundef nonnull %2) #15
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #18
  %i.ag = trunc i64 %i.af to i32
  call void @gtk_selection_data_set(ptr noundef nonnull %2, ptr noundef %i.ae, i32 noundef 8, ptr noundef nonnull %i.ad, i32 noundef %i.ag) #15
  call void @g_free(ptr noundef nonnull %i.ad) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.p

.preheader:                                       ; preds = %bb.m, %.preheader
  %.05684 = phi ptr [ %i.al, %.preheader ], [ null, %bb.m ]
  %.06083 = phi ptr [ %i.an, %.preheader ], [ %i.f, %bb.m ] ; 2 uses
  %i.ah = load ptr, ptr %.06083, align 8, !tbaa !26
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = trunc i64 %i.ai to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 1, ptr %i.d, align 4, !tbaa !35
  call void @dt_image_full_path(i32 noundef %i.aj, ptr noundef nonnull %i.c, i64 noundef 4096, ptr noundef nonnull %i.d) #15
  %i.ak = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.69, ptr noundef nonnull %i.c) #15
  %i.al = call ptr @g_list_prepend(ptr noundef %.05684, ptr noundef %i.ak) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.am = getelementptr inbounds nuw i8, ptr %.06083, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87 ; 2 uses
  %.not74 = icmp eq ptr %i.an, null
  br i1 %.not74, label %bb.o, label %.preheader

bb.o:                                             ; preds = %.preheader
  %i.ao = call ptr @g_list_reverse(ptr noundef %i.al) #15 ; 2 uses
  %i.ap = call ptr @dt_util_glist_to_str(ptr noundef nonnull @.str.4, ptr noundef %i.ao) #15 ; 3 uses
  call void @g_list_free_full(ptr noundef %i.ao, ptr noundef nonnull @g_free) #15
  %i.aq = call ptr @gtk_selection_data_get_target(ptr noundef nonnull %2) #15
  %i.ar = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #18
  %i.as = trunc i64 %i.ar to i32
  call void @gtk_selection_data_set(ptr noundef nonnull %2, ptr noundef %i.aq, i32 noundef 8, ptr noundef nonnull %i.ap, i32 noundef %i.as) #15
  call void @g_free(ptr noundef nonnull %i.ap) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %.thread, %bb.n, %bb.o, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_event_scroll(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca double, align 8                   ; 3 uses
  %i.f = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.g = load i32, ptr %2, align 8, !tbaa !18
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !224
  %i.k = tail call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.l = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !35
  %i.m = or i32 %i.l, %i.j
  %i.n = and i32 %i.m, %i.k
  %.not = icmp eq i32 %i.n, 4
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.o = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.70) #15
  %.not42 = icmp eq i32 %i.o, 0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 @dt_gui_get_scroll_deltas(ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = call i32 @dt_gui_get_scroll_unit_deltas(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #15
  %i.r = load i32, ptr %i.d, align 4, !tbaa !35
  %i.s = sitofp reassoc nsz arcp contract afn i32 %i.r to float
  %i.t = fpext reassoc nsz arcp contract afn float %i.s to double
  store double %i.t, ptr %i.f, align 8, !tbaa !147
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.p, %bb.d ], [ %i.q, %bb.e ]
  %.not43 = icmp eq i32 %.0, 0
  br i1 %.not43, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !148
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 @g_timeout_add(i32 noundef 10, ptr noundef nonnull @_event_scroll_compressed, ptr noundef nonnull %2) #15
  store i32 %i.x, ptr %i.u, align 4, !tbaa !148
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = load double, ptr %i.f, align 8, !tbaa !147
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !149
  %i.ab = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.ac = fadd reassoc nsz arcp contract afn double %i.y, %i.ab
  %i.ad = fptrunc reassoc nsz arcp contract afn double %i.ac to float
  store float %i.ad, ptr %i.z, align 8, !tbaa !149
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %_thumb_get_under_mouse.exit.thread

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.ae = call i32 @dt_gui_get_scroll_unit_deltas(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #15
  %.not44 = icmp eq i32 %i.ae, 0
  br i1 %.not44, label %_thumb_get_under_mouse.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load i32, ptr %2, align 8, !tbaa !18
  %i.ag = icmp eq i32 %i.af, 3
  br i1 %i.ag, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !224
  %i.aj = call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.ak = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !35
  %i.al = or i32 %i.ak, %i.ai
  %i.am = and i32 %i.al, %i.aj
  %.not52 = icmp eq i32 %i.am, 4
  %.pr = load i32, ptr %2, align 8, !tbaa !18
  %i.an = icmp eq i32 %.pr, 2                     ; 2 uses
  br i1 %.not52, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  br i1 %i.an, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !85
  %i.as = sdiv i32 %i.ap, %i.ar
  %i.at = sdiv i32 %i.as, 2
  %i.au = load i32, ptr %i.c, align 4, !tbaa !35
  %i.av = load i32, ptr %i.d, align 4, !tbaa !35
  %i.aw = add i32 %i.at, %i.au
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = shl nsw i32 %i.ax, 1
  %i.az = or disjoint i32 %i.ay, 1
  %i.ba = sdiv i32 %i.ap, %i.az
  %i.bb = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.71) #15
  %i.bc = icmp sgt i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.71) #15
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.be = load i32, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.bf = load i32, ptr %i.aq, align 8, !tbaa !85
  %i.bg = sdiv i32 %i.be, %i.bf
  %i.bh = sdiv i32 %i.bg, 2
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !35
end_hunk_0
