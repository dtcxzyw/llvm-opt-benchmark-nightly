Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thumbtable?download=true
inline.NumInlined: 73
inline.NumDeleted: 25
begin_hunk_0_@dt_thumbtable_set_overlays_mode:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20
  tail call void @dt_conf_set_bool(ptr noundef %i.d, i32 noundef %i.f) #15
  tail call void @g_free(ptr noundef %i.d) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %.not49 = icmp eq i32 %1, %i.h
  br i1 %.not49, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %0, align 8, !tbaa !18
  %i.j = load i32, ptr %i.b, align 4, !tbaa !19
  %i.k = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.1, i32 noundef %i.i, i32 noundef %i.j) #15 ; 2 uses
  tail call void @dt_conf_set_int(ptr noundef %i.k, i32 noundef %1) #15
  tail call void @g_free(ptr noundef %i.k) #15
  %i.l = load i32, ptr %i.g, align 4, !tbaa !21
  %i.m = tail call fastcc ptr @_thumbs_get_overlays_class(i32 noundef %i.l) ; 2 uses
  %i.n = tail call fastcc ptr @_thumbs_get_overlays_class(i32 noundef %1) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  tail call void @dt_gui_remove_class(ptr noundef %i.p, ptr noundef %i.m) #15
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !22
  tail call void @dt_gui_add_class(ptr noundef %i.q, ptr noundef %i.n) #15
  tail call void @g_free(ptr noundef %i.m) #15
  tail call void @g_free(ptr noundef %i.n) #15
  %i.r = load i32, ptr %0, align 8, !tbaa !18
  %i.s = load i32, ptr %i.b, align 4, !tbaa !19
  %i.t = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.2, i32 noundef %i.r, i32 noundef %i.s) #15 ; 3 uses
  %i.u = tail call i32 @dt_conf_key_exists(ptr noundef %i.t) #15
  %.not50 = icmp eq i32 %i.u, 0
  %.str.3. = select i1 %.not50, ptr @.str.3, ptr %i.t
  %i.v = tail call i32 @dt_conf_get_int(ptr noundef %.str.3.) #15
  tail call void @g_free(ptr noundef %i.t) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.v, %bb.c ], [ 2, %bb.b ]     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.053 = load ptr, ptr %i.w, align 8, !tbaa !23  ; 2 uses
  %.not5154 = icmp eq ptr %.053, null
  br i1 %.not5154, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.d
  store i32 %1, ptr %i.g, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1, ptr %i.x, align 8, !tbaa !24
  br label %bb.h

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %.055 = phi ptr [ %.0, %bb.g ], [ %.053, %bb.d ] ; 2 uses
  %i.y = load ptr, ptr %.055, align 8, !tbaa !26  ; 6 uses
  %i.z = load i32, ptr %i.e, align 4, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 372
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !216
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !21
  %.not52 = icmp eq i32 %1, %i.ab
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @dt_thumbnail_set_overlay(ptr noundef nonnull %i.y, i32 noundef %1, i32 noundef %.1) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  tail call void @dt_thumbnail_resize(ptr noundef nonnull %i.y, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef 1, float noundef 0.000000e+00) #15
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  tail call void @dt_thumbnail_update_infos(ptr noundef nonnull %i.y) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %.0 = load ptr, ptr %i.ag, align 8, !tbaa !23   ; 2 uses
  %.not51 = icmp eq ptr %.0, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare void @dt_conf_set_bool(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) #2

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @_thumbs_get_overlays_class(i32 noundef %0) unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(17) ptr @g_malloc(i64 noundef 17) #16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.54, i64 17, i1 false)
  br label %g_strdup_inline.exit12

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(27) ptr @g_malloc(i64 noundef 27) #16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.b, ptr noundef nonnull align 1 dereferenceable(27) @.str.55, i64 27, i1 false)
  br label %g_strdup_inline.exit12

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(19) ptr @g_malloc(i64 noundef 19) #16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.56, i64 19, i1 false)
  br label %g_strdup_inline.exit12

bb.e:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(28) ptr @g_malloc(i64 noundef 28) #16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.d, ptr noundef nonnull align 1 dereferenceable(28) @.str.57, i64 28, i1 false)
  br label %g_strdup_inline.exit12

bb.f:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(18) ptr @g_malloc(i64 noundef 18) #16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.e, ptr noundef nonnull align 1 dereferenceable(18) @.str.58, i64 18, i1 false)
  br label %g_strdup_inline.exit12

bb.g:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.f, ptr noundef nonnull align 1 dereferenceable(24) @.str.59, i64 24, i1 false)
  br label %g_strdup_inline.exit12

bb.h:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(18) ptr @g_malloc(i64 noundef 18) #16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.g, ptr noundef nonnull align 1 dereferenceable(18) @.str.60, i64 18, i1 false)
  br label %g_strdup_inline.exit12

g_strdup_inline.exit12:                           ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.b, %bb.c ], [ %i.g, %bb.h ], [ %i.f, %bb.g ], [ %i.e, %bb.f ], [ %i.a, %bb.b ]
  ret ptr %.0
}

declare void @dt_gui_remove_class(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dt_conf_key_exists(ptr noundef) local_unnamed_addr #2

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @dt_thumbnail_set_overlay(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_thumbnail_resize(ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @dt_thumbnail_update_infos(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_thumbtable_set_overlays_block_timeout(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19
  %i.d = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.2, i32 noundef %i.a, i32 noundef %i.c) #15 ; 2 uses
  tail call void @dt_conf_set_int(ptr noundef %i.d, i32 noundef %1) #15
  tail call void @g_free(ptr noundef %i.d) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.016 = load ptr, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %.not1517 = icmp eq ptr %.016, null
  br i1 %.not1517, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.018 = phi ptr [ %.0, %.lr.ph ], [ %.016, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %.018, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 364
  store i32 %1, ptr %i.h, align 4, !tbaa !217
  %i.i = getelementptr inbounds nuw i8, ptr %.018, i64 8
  %.0 = load ptr, ptr %i.i, align 8, !tbaa !23    ; 2 uses
  %.not15 = icmp eq ptr %.0, null
  br i1 %.not15, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_thumbtable_zoom_changed(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = icmp eq i32 %1, %2
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %0, align 8, !tbaa !18
  switch i32 %i.i, label %bb.ai [
    i32 1, label %bb.d
    i32 3, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i32 0, ptr %i.e, align 4, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %.not34.i = icmp eq i32 %i.k, 0
  br i1 %.not34.i, label %.loopexit58.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = tail call ptr @gtk_widget_get_window(ptr noundef %i.m) #15
  %i.o = call i32 @gdk_window_get_origin(ptr noundef %i.n, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #15 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i32, ptr %i.d, align 4, !tbaa !35
  %i.r = load i32, ptr %i.e, align 4, !tbaa !35
  %i.s = load <2 x i32>, ptr %i.p, align 8, !tbaa !35
  %i.t = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.u = insertelement <2 x i32> %i.t, i32 %i.r, i64 1
  %i.v = sub nsw <2 x i32> %i.s, %i.u             ; 3 uses
  %i.w = extractelement <2 x i32> %i.v, i64 0     ; 3 uses
  store i32 %i.w, ptr %i.d, align 4, !tbaa !35
  %i.x = extractelement <2 x i32> %i.v, i64 1     ; 3 uses
  store i32 %i.x, ptr %i.e, align 4, !tbaa !35
  %.01833.i.i = load ptr, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %.not34.i.i = icmp eq ptr %.01833.i.i, null
  br i1 %.not34.i.i, label %.loopexit58.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.i
  %.01835.i.i = phi ptr [ %.018.i.i, %bb.i ], [ %.01833.i.i, %bb.e ] ; 2 uses
  %i.y = load ptr, ptr %.01835.i.i, align 8, !tbaa !26 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  %.not25.i.i = icmp sgt i32 %i.aa, %i.w
  br i1 %.not25.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32
  %i.ad = add nsw i32 %i.ac, %i.aa
  %i.ae = icmp sgt i32 %i.ad, %i.w
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38 ; 2 uses
  %.not26.i.i = icmp sgt i32 %i.ag, %i.x
  br i1 %.not26.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  %i.aj = add nsw i32 %i.ai, %i.ag
  %i.ak = icmp sgt i32 %i.aj, %i.x
  br i1 %i.ak, label %_thumb_get_at_pos.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.01835.i.i, i64 8
  %.018.i.i = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not.i.i, label %.loopexit58.i, label %.lr.ph.i.i

.loopexit58.i:                                    ; preds = %bb.i, %bb.e, %bb.d
  %i.am = call i32 (...) @dt_act_on_get_main_image() #15 ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  %.01833.i40.pre.i = load ptr, ptr %i.g, align 8, !tbaa !23 ; 4 uses
  %.not19.i.i = icmp eq ptr %.01833.i40.pre.i, null ; 2 uses
  %or.cond.i = select i1 %i.an, i1 true, i1 %.not19.i.i
  br i1 %or.cond.i, label %.loopexit56.i, label %.lr.ph.i38.i

bb.j:                                             ; preds = %.lr.ph.i38.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.01120.i.i, i64 8
  %.011.i.i = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %.not.i39.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i39.i, label %.loopexit56.i, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.loopexit58.i, %bb.j
  %.01120.i.i = phi ptr [ %.011.i.i, %bb.j ], [ %.01833.i40.pre.i, %.loopexit58.i ] ; 2 uses
  %i.ap = load ptr, ptr %.01120.i.i, align 8, !tbaa !26 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !39
  %.not15.i.i = icmp eq i32 %i.aq, %i.am
  br i1 %.not15.i.i, label %_thumb_get_at_pos.exit.sink.split.i, label %bb.j

.loopexit56.i:                                    ; preds = %bb.j, %.loopexit58.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load <2 x i32>, ptr %i.ar, align 8, !tbaa !35
  %i.at = sdiv <2 x i32> %i.as, splat (i32 2)     ; 3 uses
  %i.au = extractelement <2 x i32> %i.at, i64 0   ; 3 uses
  store i32 %i.au, ptr %i.d, align 4, !tbaa !35
  %i.av = extractelement <2 x i32> %i.at, i64 1   ; 3 uses
  store i32 %i.av, ptr %i.e, align 4, !tbaa !35
  br i1 %.not19.i.i, label %.loopexit.i, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.loopexit56.i, %bb.n
  %.01835.i43.i = phi ptr [ %.018.i45.i, %bb.n ], [ %.01833.i40.pre.i, %.loopexit56.i ] ; 2 uses
  %i.aw = load ptr, ptr %.01835.i43.i, align 8, !tbaa !26 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !37 ; 2 uses
  %.not25.i44.i = icmp sgt i32 %i.ay, %i.au
  br i1 %.not25.i44.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i42.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !32
  %i.bb = add nsw i32 %i.ba, %i.ay
  %i.bc = icmp sgt i32 %i.bb, %i.au
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !38 ; 2 uses
  %.not26.i47.i = icmp sgt i32 %i.be, %i.av
  br i1 %.not26.i47.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33
  %i.bh = add nsw i32 %i.bg, %i.be
  %i.bi = icmp sgt i32 %i.bh, %i.av
  br i1 %i.bi, label %_thumb_get_at_pos.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %.lr.ph.i42.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.01835.i43.i, i64 8
  %.018.i45.i = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %.not.i46.i = icmp eq ptr %.018.i45.i, null
  br i1 %.not.i46.i, label %.loopexit.i, label %.lr.ph.i42.i

.loopexit.i:                                      ; preds = %bb.n, %.loopexit56.i
  %i.bk = load ptr, ptr %.01833.i40.pre.i, align 8, !tbaa !26
  br label %_thumb_get_at_pos.exit.sink.split.i

_thumb_get_at_pos.exit.sink.split.i:              ; preds = %.lr.ph.i38.i, %.loopexit.i
  %.lcssa81.sink94.i = phi ptr [ %i.bk, %.loopexit.i ], [ %i.ap, %.lr.ph.i38.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.lcssa81.sink94.i, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.lcssa81.sink94.i, i64 8
  %i.bn = load <2 x i32>, ptr %i.bl, align 8, !tbaa !35
  %i.bo = load <2 x i32>, ptr %i.bm, align 8, !tbaa !35
  %i.bp = sdiv <2 x i32> %i.bo, splat (i32 2)
  %i.bq = add nsw <2 x i32> %i.bp, %i.bn          ; 3 uses
  %i.br = extractelement <2 x i32> %i.bq, i64 0
  store i32 %i.br, ptr %i.d, align 4, !tbaa !35
  %i.bs = extractelement <2 x i32> %i.bq, i64 1
  store i32 %i.bs, ptr %i.e, align 4, !tbaa !35
  br label %_thumb_get_at_pos.exit.i

_thumb_get_at_pos.exit.i:                         ; preds = %bb.h, %bb.m, %_thumb_get_at_pos.exit.sink.split.i
  %.2.i = phi ptr [ %.lcssa81.sink94.i, %_thumb_get_at_pos.exit.sink.split.i ], [ %i.aw, %bb.m ], [ %i.y, %bb.h ]
  %i.bt = phi <2 x i32> [ %i.bq, %_thumb_get_at_pos.exit.sink.split.i ], [ %i.at, %bb.m ], [ %i.v, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !40
  %i.bw = sdiv i32 %i.bv, %2
  %i.bx = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %i.by = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bz = sdiv <2 x i32> %i.bt, %i.by             ; 2 uses
  %i.ca = extractelement <2 x i32> %i.bz, i64 1
  %i.cb = mul nsw i32 %i.ca, %2
  %i.cc = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !41
  %i.ce = extractelement <2 x i32> %i.bz, i64 0
  %i.cf = add i32 %i.cb, %i.ce
  %i.cg = sub i32 %i.cd, %i.cf                    ; 4 uses
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %_filemanager_zoom.exit, label %bb.o

bb.o:                                             ; preds = %_thumb_get_at_pos.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !42
  %i.ck = icmp eq i32 %i.cg, %i.cj
  br i1 %i.ck, label %_filemanager_zoom.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.cg, ptr %i.ci, align 8, !tbaa !42
  call void @dt_conf_set_int(ptr noundef nonnull @.str.12, i32 noundef %i.cg) #15
  br label %_filemanager_zoom.exit

_filemanager_zoom.exit:                           ; preds = %_thumb_get_at_pos.exit.i, %bb.o, %bb.p
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84
  call void @dt_view_lighttable_set_zoom(ptr noundef %i.cl, i32 noundef %2) #15
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !22
  call void @gtk_widget_queue_draw(ptr noundef %i.cn) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.ai

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !36
  %.not137.i = icmp eq i32 %i.cp, 0
  br i1 %.not137.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !22
  %i.cs = tail call ptr @gtk_widget_get_window(ptr noundef %i.cr) #15
  %i.ct = call i32 @gdk_window_get_origin(ptr noundef %i.cs, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cv = load i32, ptr %i.a, align 4, !tbaa !35
  %i.cw = load <2 x i32>, ptr %i.cu, align 8, !tbaa !35
  %i.cx = load i32, ptr %i.b, align 4, !tbaa !35
  %i.cy = insertelement <2 x i32> poison, i32 %i.cv, i64 0
  %i.cz = insertelement <2 x i32> %i.cy, i32 %i.cx, i64 1
  %i.da = sub nsw <2 x i32> %i.cw, %i.cz
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre195.i = load ptr, ptr %i.g, align 8, !tbaa !34
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dc = load <2 x i32>, ptr %i.db, align 8, !tbaa !35
  %i.dd = sdiv <2 x i32> %i.dc, splat (i32 2)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.de = phi ptr [ %i.h, %bb.s ], [ %.pre195.i, %bb.r ] ; 2 uses
  %.in = phi ptr [ %i.db, %bb.s ], [ %.phi.trans.insert.i, %bb.r ]
  %i.df = phi <2 x i32> [ %i.dd, %bb.s ], [ %i.da, %bb.r ] ; 5 uses
  %i.dg = load i32, ptr %.in, align 8, !tbaa !40
  %i.dh = extractelement <2 x i32> %i.df, i64 0
  store i32 %i.dh, ptr %i.a, align 4, !tbaa !35
  %i.di = extractelement <2 x i32> %i.df, i64 1
  store i32 %i.di, ptr %i.b, align 4, !tbaa !35
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dk = sdiv i32 %i.dg, %2                      ; 6 uses
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %i.dk to double ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !85 ; 2 uses
  %i.do = sitofp reassoc nsz arcp contract afn i32 %i.dn to double
  %i.dp = fdiv reassoc nsz arcp contract afn double %i.dl, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ds = sitofp <2 x i32> %i.df to <2 x double>
  %i.dt = load <2 x i32>, ptr %i.dq, align 8, !tbaa !35 ; 2 uses
  %i.du = sub nsw <2 x i32> %i.df, %i.dt
  %i.dv = insertelement <2 x i32> poison, i32 %i.dn, i64 0
  %i.dw = shufflevector <2 x i32> %i.dv, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = sdiv <2 x i32> %i.du, %i.dw             ; 2 uses
  %i.dy = mul nsw <2 x i32> %i.dx, %i.dw
  %i.dz = add <2 x i32> %i.dt, %i.dy
  %i.ea = sub <2 x i32> %i.df, %i.dz
  %i.eb = sitofp <2 x i32> %i.ea to <2 x double>
  %i.ec = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul reassoc nsz arcp contract afn <2 x double> %i.ed, %i.eb
  %i.ef = fsub reassoc nsz arcp contract afn <2 x double> %i.ds, %i.ee
  %i.eg = fptosi <2 x double> %i.ef to <2 x i32>
  %.not138179.i = icmp eq ptr %i.de, null
  br i1 %.not138179.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.t
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !85
  br label %bb.w

.lr.ph.i:                                         ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = insertelement <2 x i32> poison, i32 %i.dk, i64 0
  %i.ej = shufflevector <2 x i32> %i.ei, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i
  %.0181.i = phi ptr [ %i.de, %.lr.ph.i ], [ %i.fc, %bb.u ] ; 2 uses
  %.0129180.i = phi ptr [ null, %.lr.ph.i ], [ %spec.select.i, %bb.u ] ; 2 uses
  %i.ek = load ptr, ptr %.0181.i, align 8, !tbaa !26 ; 6 uses
  %.not140.i = icmp eq ptr %.0129180.i, null
  %spec.select.i = select i1 %.not140.i, ptr %i.ek, ptr %.0129180.i ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.em = load i32, ptr %i.dm, align 8, !tbaa !85
  %i.en = load <2 x i32>, ptr %i.el, align 8, !tbaa !35
  %i.eo = load <2 x i32>, ptr %i.dq, align 8, !tbaa !35
  %i.ep = sub nsw <2 x i32> %i.en, %i.eo
  %i.eq = insertelement <2 x i32> poison, i32 %i.em, i64 0
  %i.er = shufflevector <2 x i32> %i.eq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.es = sdiv <2 x i32> %i.ep, %i.er
  %i.et = sub <2 x i32> %i.es, %i.dx
  %i.eu = mul <2 x i32> %i.et, %i.ej
  %i.ev = add <2 x i32> %i.eu, %i.eg              ; 3 uses
  store <2 x i32> %i.ev, ptr %i.el, align 8, !tbaa !35
  %i.ew = load ptr, ptr %i.eh, align 8, !tbaa !22
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 112
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !86
  %i.ez = extractelement <2 x i32> %i.ev, i64 0
  %i.fa = extractelement <2 x i32> %i.ev, i64 1
  call void @gtk_layout_move(ptr noundef %i.ew, ptr noundef %i.ey, i32 noundef %i.ez, i32 noundef %i.fa) #15
  %i.fb = getelementptr inbounds nuw i8, ptr %.0181.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !87 ; 2 uses
  call void @dt_thumbnail_resize(ptr noundef %i.ek, i32 noundef %i.dk, i32 noundef %i.dk, i32 noundef 0, float noundef 0.000000e+00) #15
  %.not138.i = icmp eq ptr %i.fc, null
  br i1 %.not138.i, label %._crit_edge.i, label %bb.u

._crit_edge.i:                                    ; preds = %bb.u
  %.pre196.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !85
  %.not.i.i13 = icmp eq ptr %.pre196.i, null
  br i1 %.not.i.i13, label %bb.w, label %.preheader.i.i

bb.v:                                             ; preds = %.preheader.i.i
  %i.fd = sub <2 x i32> %i.ej, %i.fl
  %i.fe = add <2 x i32> %i.fd, %i.fm              ; 2 uses
  %i.ff = shufflevector <2 x i32> %i.fl, <2 x i32> %i.fe, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ff, ptr %i.dq, align 8, !tbaa !35
  br label %_pos_compute_area.exit.i

.preheader.i.i:                                   ; preds = %._crit_edge.i, %.preheader.i.i
  %.051.i.i = phi ptr [ %i.fo, %.preheader.i.i ], [ %.pre196.i, %._crit_edge.i ] ; 2 uses
  %i.fg = phi <2 x i32> [ %i.fl, %.preheader.i.i ], [ splat (i32 2147483647), %._crit_edge.i ]
  %i.fh = phi <2 x i32> [ %i.fm, %.preheader.i.i ], [ splat (i32 -2147483648), %._crit_edge.i ]
  %i.fi = load ptr, ptr %.051.i.i, align 8, !tbaa !26
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load <2 x i32>, ptr %i.fj, align 8, !tbaa !35 ; 2 uses
  %i.fl = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.fg, <2 x i32> %i.fk) ; 4 uses
  %i.fm = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fh, <2 x i32> %i.fk) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.051.i.i, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !87 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.fo, null
  br i1 %.not46.i.i, label %bb.v, label %.preheader.i.i

bb.w:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.0128.lcssa208.i = phi ptr [ null, %._crit_edge.thread.i ], [ %i.ek, %._crit_edge.i ]
  %.0129.lcssa206.i = phi ptr [ null, %._crit_edge.thread.i ], [ %spec.select.i, %._crit_edge.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  br label %_pos_compute_area.exit.i

_pos_compute_area.exit.i:                         ; preds = %bb.w, %bb.v
  %.0128.lcssa207.i = phi ptr [ %i.ek, %bb.v ], [ %.0128.lcssa208.i, %bb.w ]
  %.0129.lcssa205.i = phi ptr [ %spec.select.i, %bb.v ], [ %.0129.lcssa206.i, %bb.w ]
  %i.fp = phi ptr [ %.pre196.i, %bb.v ], [ null, %bb.w ]
  %i.fq = phi <2 x i32> [ %i.fe, %bb.v ], [ zeroinitializer, %bb.w ]
  %i.fr = phi <2 x i32> [ %i.fl, %bb.v ], [ zeroinitializer, %bb.w ] ; 2 uses
  %i.fs = fmul reassoc nnan nsz arcp contract afn double %i.dl, 5.000000e-01
  %i.ft = fptosi double %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fv = add <2 x i32> %i.fq, %i.fr
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fx = load <2 x i32>, ptr %i.dj, align 8, !tbaa !35
  %i.fy = insertelement <2 x i32> poison, i32 %i.ft, i64 0
  %i.fz = shufflevector <2 x i32> %i.fy, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = add <2 x i32> %i.fr, %i.fz
  %i.gb = sub <2 x i32> %i.fx, %i.ga
  %i.gc = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.gb, <2 x i32> zeroinitializer)
  %i.gd = sub <2 x i32> %i.fz, %i.fv
  %i.ge = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gd, <2 x i32> %i.gc) ; 2 uses
  %i.gf = extractelement <2 x i32> %i.ge, i64 0   ; 2 uses
  %i.gg = extractelement <2 x i32> %i.ge, i64 1   ; 2 uses
  %i.gh = or i32 %i.gf, %i.gg
  %or.cond.not.i = icmp eq i32 %i.gh, 0
  br i1 %or.cond.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_pos_compute_area.exit.i
  %i.gi = call fastcc i32 @_move(ptr noundef nonnull %0, i32 noundef %i.gf, i32 noundef %i.gg, i32 noundef 0) ; 0 uses
  %.pre197.i = load ptr, ptr %i.g, align 8, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_pos_compute_area.exit.i
  %i.gj = phi ptr [ %i.fp, %_pos_compute_area.exit.i ], [ %.pre197.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %.not139183.i = icmp eq ptr %i.gj, null
  br i1 %.not139183.i, label %._crit_edge187.i, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %bb.y
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %.lr.ph186.i
  %.1185.i = phi ptr [ %i.gj, %.lr.ph186.i ], [ %.2.i14, %bb.ae ] ; 4 uses
  %.1184.i = phi ptr [ null, %.lr.ph186.i ], [ %3, %bb.ae ] ; 2 uses
  %i.gl = load ptr, ptr %.1185.i, align 8, !tbaa !26 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !38 ; 2 uses
  %i.go = load i32, ptr %i.dm, align 8, !tbaa !85
  %i.gp = add nsw i32 %i.go, %i.gn
  %i.gq = icmp slt i32 %i.gp, 1
  br i1 %i.gq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gr = load i32, ptr %i.fu, align 4, !tbaa !88
  %i.gs = icmp sgt i32 %i.gn, %i.gr
  br i1 %i.gs, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gt = call ptr @g_list_prepend(ptr noundef %.1184.i, ptr noundef nonnull %i.gl) #15 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.1185.i, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !87 ; 2 uses
  %i.gw = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.gx = call ptr @g_list_delete_link(ptr noundef %i.gw, ptr noundef nonnull %.1185.i) #15
  store ptr %i.gx, ptr %i.g, align 8, !tbaa !34
  %i.gy = load ptr, ptr %i.gk, align 8, !tbaa !89
  %i.gz = icmp eq ptr %i.gy, %i.gl
  br i1 %i.gz, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.gk, align 8, !tbaa !89
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.ha = getelementptr inbounds nuw i8, ptr %.1185.i, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !87
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %3 = phi ptr [ %.1184.i, %bb.ad ], [ %i.gt, %bb.ac ], [ %i.gt, %bb.ab ] ; 2 uses
  %.2.i14 = phi ptr [ %i.hb, %bb.ad ], [ %i.gv, %bb.ac ], [ %i.gv, %bb.ab ] ; 2 uses
  %.not139.i = icmp eq ptr %.2.i14, null
  br i1 %.not139.i, label %._crit_edge187.i, label %bb.z

._crit_edge187.i:                                 ; preds = %bb.ae, %bb.y
  %.lcssa183.i = phi ptr [ null, %bb.y ], [ %3, %bb.ae ]
  store ptr %.lcssa183.i, ptr %i.c, align 8
  %i.hc = call fastcc i32 @_thumbs_load_needed(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %.0129.lcssa205.i, ptr noundef %.0128.lcssa207.i)
  %.0121.i.i = load ptr, ptr %i.c, align 8, !tbaa !23 ; 3 uses
  %.not2.i.i = icmp eq ptr %.0121.i.i, null
  br i1 %.not2.i.i, label %_thumbs_remove_unneeded.exit.i, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %._crit_edge187.i, %.lr.ph.i.i15
  %.0124.i.i = phi ptr [ %.012.i.i, %.lr.ph.i.i15 ], [ %.0121.i.i, %._crit_edge187.i ] ; 2 uses
  %.0133.i.i = phi i32 [ %i.hi, %.lr.ph.i.i15 ], [ 0, %._crit_edge187.i ]
  %i.hd = load ptr, ptr %.0124.i.i, align 8, !tbaa !26 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 112 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !86
  %i.hg = call ptr @gtk_widget_get_parent(ptr noundef %i.hf) #15
  %i.hh = load ptr, ptr %i.he, align 8, !tbaa !86
  call void @gtk_container_remove(ptr noundef %i.hg, ptr noundef %i.hh) #15
  call void @dt_thumbnail_destroy(ptr noundef %i.hd) #15
  %i.hi = add nuw nsw i32 %.0133.i.i, 1           ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0124.i.i, i64 8
  %.012.i.i = load ptr, ptr %i.hj, align 8, !tbaa !23 ; 2 uses
  %.not.i145.i = icmp eq ptr %.012.i.i, null
  br i1 %.not.i145.i, label %_thumbs_remove_unneeded.exit.i, label %.lr.ph.i.i15

_thumbs_remove_unneeded.exit.i:                   ; preds = %.lr.ph.i.i15, %._crit_edge187.i
  %.013.lcssa.i.i = phi i32 [ 0, %._crit_edge187.i ], [ %i.hi, %.lr.ph.i.i15 ]
  call void @g_list_free(ptr noundef %.0121.i.i) #15
  %i.hk = add nsw i32 %.013.lcssa.i.i, %i.hc
  %i.hl = icmp sgt i32 %i.hk, 0
  %.pre198.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  br i1 %i.hl, label %bb.af, label %_zoomable_zoom.exit

bb.af:                                            ; preds = %_thumbs_remove_unneeded.exit.i
  %.not.i146.i = icmp eq ptr %.pre198.i, null
  br i1 %.not.i146.i, label %bb.ah, label %.preheader.i147.i

bb.ag:                                            ; preds = %.preheader.i147.i
  store <2 x i32> %i.hw, ptr %i.dq, align 8, !tbaa !35
  %i.hm = load i32, ptr %i.dm, align 8, !tbaa !85
  %i.hn = sub <2 x i32> %i.hx, %i.hw
  %i.ho = insertelement <2 x i32> poison, i32 %i.hm, i64 0
  %i.hp = shufflevector <2 x i32> %i.ho, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hq = add <2 x i32> %i.hn, %i.hp
  store <2 x i32> %i.hq, ptr %i.fw, align 8, !tbaa !35
  br label %_zoomable_zoom.exit

.preheader.i147.i:                                ; preds = %bb.af, %.preheader.i147.i
  %.051.i148.i = phi ptr [ %i.hz, %.preheader.i147.i ], [ %.pre198.i, %bb.af ] ; 2 uses
  %i.hr = phi <2 x i32> [ %i.hx, %.preheader.i147.i ], [ splat (i32 -2147483648), %bb.af ]
  %i.hs = phi <2 x i32> [ %i.hw, %.preheader.i147.i ], [ splat (i32 2147483647), %bb.af ]
  %i.ht = load ptr, ptr %.051.i148.i, align 8, !tbaa !26
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load <2 x i32>, ptr %i.hu, align 8, !tbaa !35 ; 2 uses
  %i.hw = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.hs, <2 x i32> %i.hv) ; 3 uses
  %i.hx = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.hr, <2 x i32> %i.hv) ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.051.i148.i, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !87 ; 2 uses
  %.not46.i154.i = icmp eq ptr %i.hz, null
  br i1 %.not46.i154.i, label %bb.ag, label %.preheader.i147.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  br label %_zoomable_zoom.exit

_zoomable_zoom.exit:                              ; preds = %_thumbs_remove_unneeded.exit.i, %bb.ag, %bb.ah
  %i.ia = load ptr, ptr %.pre198.i, align 8, !tbaa !26 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !41 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.ic, ptr %i.id, align 8, !tbaa !42
  %i.ie = load i32, ptr %i.ia, align 8, !tbaa !39
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !90
  call void @dt_conf_set_int(ptr noundef nonnull @.str.12, i32 noundef %i.ic) #15
  %i.ig = load i32, ptr %i.id, align 8, !tbaa !42
  call void @dt_conf_set_int(ptr noundef nonnull @.str.43, i32 noundef %i.ig) #15
  %i.ih = load i32, ptr %i.dq, align 8, !tbaa !91
  call void @dt_conf_set_int(ptr noundef nonnull @.str.41, i32 noundef %i.ih) #15
  %i.ii = load i32, ptr %i.dr, align 4, !tbaa !92
  call void @dt_conf_set_int(ptr noundef nonnull @.str.42, i32 noundef %i.ii) #15
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84
  call void @dt_view_lighttable_set_zoom(ptr noundef %i.ij, i32 noundef %2) #15
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !22
  call void @gtk_widget_queue_draw(ptr noundef %i.il) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.c, %_zoomable_zoom.exit, %bb.b, %bb.a, %_filemanager_zoom.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_thumbtable_event_dnd_received(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 %2, i32 %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %i.a = icmp eq i32 %5, 1
  %i.b = icmp ne ptr %4, null                     ; 2 uses
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @gtk_selection_data_get_length(ptr noundef nonnull %4) #15
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @gtk_selection_data_get_data(ptr noundef nonnull %4) #15
  %i.f = tail call ptr @g_strsplit_set(ptr noundef %i.e, ptr noundef nonnull @.str.4, i32 noundef 0) #15 ; 4 uses
  %.not30 = icmp eq ptr %i.f, null
  br i1 %.not30, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93   ; 2 uses
  %.not3134 = icmp eq ptr %i.g, null
  br i1 %.not3134, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.h = phi ptr [ %i.l, %bb.e ], [ %i.g, %.preheader ] ; 2 uses
  %.02435 = phi ptr [ %i.k, %bb.e ], [ %i.f, %.preheader ]
  %i.i = load i8, ptr %i.h, align 1, !tbaa !94
  %.not32 = icmp eq i8 %i.i, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.j = tail call i32 @dt_load_from_string(ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef null) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.02435, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93   ; 2 uses
  %.not31 = icmp eq ptr %i.l, null
  br i1 %.not31, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.c
  tail call void @g_strfreev(ptr noundef %i.f) #15
  br label %.thread

bb.f:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %5, 0
  %or.cond3 = and i1 %i.b, %i.m
  br i1 %or.cond3, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @gtk_selection_data_get_length(ptr noundef nonnull %4) #15
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 100
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  %.not28 = icmp eq i32 %i.t, 0
  br i1 %.not28, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i32, ptr %7, align 8, !tbaa !18
  %.not29 = icmp eq i32 %i.u, 3
  br i1 %.not29, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = tail call i32 @dt_control_get_mouse_over_id() #15
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !95
  tail call void @dt_collection_move_before(i32 noundef %i.v, ptr noundef %i.w) #15
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !96
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.z = tail call ptr @g_list_copy(ptr noundef %i.y) #15
  tail call void @dt_collection_update_query(ptr noundef %i.x, i32 noundef 3, i32 noundef 45, ptr noundef %i.z) #15
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %.loopexit
  %.0 = phi i32 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.b ]
  tail call void @gtk_drag_finish(ptr noundef %1, i32 noundef %.0, i32 noundef 0, i32 noundef %6) #15
  ret void
}

declare i32 @gtk_selection_data_get_length(ptr noundef) local_unnamed_addr #2

declare ptr @g_strsplit_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gtk_selection_data_get_data(ptr noundef) local_unnamed_addr #2

declare i32 @dt_load_from_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @g_strfreev(ptr noundef) local_unnamed_addr #2

declare i32 @dt_control_get_mouse_over_id() local_unnamed_addr #2

declare void @dt_collection_move_before(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_collection_update_query(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @g_list_copy(ptr noundef) local_unnamed_addr #2

declare void @gtk_drag_finish(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
begin_hunk_1_@_dt_pref_change_callback:bb.a
.lr.ph:                                           ; preds = %_thumbs_ask_for_discard.exit, %bb.z
  %.021 = phi ptr [ %.0, %bb.z ], [ %.019, %_thumbs_ask_for_discard.exit ] ; 2 uses
  %i.bv = load ptr, ptr %.021, align 8, !tbaa !26 ; 5 uses
  %.not17 = icmp eq ptr %i.bv, null
  br i1 %.not17, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  call void @dt_thumbnail_reload_infos(ptr noundef nonnull %i.bv) #15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !33
  call void @dt_thumbnail_resize(ptr noundef nonnull %i.bv, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef 1, float noundef 0.000000e+00) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %.0 = load ptr, ptr %i.ca, align 8, !tbaa !23   ; 2 uses
  %.not16 = icmp eq ptr %.0, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph

bb.aa:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_dt_metadata_change_callback(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @dt_act_on_get_images(i32 noundef 0, i32 noundef 1, i32 noundef 0) #15 ; 3 uses
  %.not1217 = icmp eq ptr %i.a, null
  br i1 %.not1217, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %_thumbtable_get_thumb.exit.thread, %bb.b
  tail call void @g_list_free(ptr noundef %i.a) #15
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %_thumbtable_get_thumb.exit.thread
  %.018 = phi ptr [ %i.a, %.lr.ph ], [ %i.k, %_thumbtable_get_thumb.exit.thread ] ; 2 uses
  %i.c = load ptr, ptr %.018, align 8, !tbaa !26
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %_thumbtable_get_thumb.exit.thread

bb.d:                                             ; preds = %bb.c
  %.01118.i = load ptr, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  %.not19.i = icmp eq ptr %.01118.i, null
  br i1 %.not19.i, label %_thumbtable_get_thumb.exit.thread, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.01120.i, i64 8
  %.011.i = load ptr, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %_thumbtable_get_thumb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.01120.i = phi ptr [ %.011.i, %bb.e ], [ %.01118.i, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %.01120.i, align 8, !tbaa !26 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %.not15.i = icmp eq i32 %i.i, %i.e
  br i1 %.not15.i, label %_thumbtable_get_thumb.exit, label %bb.e

_thumbtable_get_thumb.exit:                       ; preds = %.lr.ph.i
  tail call void @dt_thumbnail_reload_infos(ptr noundef nonnull %i.h) #15
  br label %_thumbtable_get_thumb.exit.thread

_thumbtable_get_thumb.exit.thread:                ; preds = %bb.e, %bb.d, %bb.c, %_thumbtable_get_thumb.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87   ; 2 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_dt_tag_change_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_dt_metadata_change_callback.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @dt_act_on_get_images(i32 noundef 0, i32 noundef 1, i32 noundef 0) #15 ; 3 uses
  %.not1217.i = icmp eq ptr %i.a, null
  br i1 %.not1217.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

._crit_edge.i:                                    ; preds = %_thumbtable_get_thumb.exit.thread.i, %bb.b
  tail call void @g_list_free(ptr noundef %i.a) #15
  br label %_dt_metadata_change_callback.exit

bb.c:                                             ; preds = %_thumbtable_get_thumb.exit.thread.i, %.lr.ph.i
  %.018.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.k, %_thumbtable_get_thumb.exit.thread.i ] ; 2 uses
  %i.c = load ptr, ptr %.018.i, align 8, !tbaa !26
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %_thumbtable_get_thumb.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.01118.i.i = load ptr, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  %.not19.i.i = icmp eq ptr %.01118.i.i, null
  br i1 %.not19.i.i, label %_thumbtable_get_thumb.exit.thread.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.01120.i.i, i64 8
  %.011.i.i = load ptr, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i, label %_thumbtable_get_thumb.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.01120.i.i = phi ptr [ %.011.i.i, %bb.e ], [ %.01118.i.i, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %.01120.i.i, align 8, !tbaa !26 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %.not15.i.i = icmp eq i32 %i.i, %i.e
  br i1 %.not15.i.i, label %_thumbtable_get_thumb.exit.i, label %bb.e

_thumbtable_get_thumb.exit.i:                     ; preds = %.lr.ph.i.i
  tail call void @dt_thumbnail_reload_infos(ptr noundef nonnull %i.h) #15
  br label %_thumbtable_get_thumb.exit.thread.i

_thumbtable_get_thumb.exit.thread.i:              ; preds = %bb.e, %_thumbtable_get_thumb.exit.i, %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87   ; 2 uses
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %._crit_edge.i, label %bb.c

_dt_metadata_change_callback.exit:                ; preds = %bb.a, %._crit_edge.i
  ret void
}

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #2

declare ptr @g_object_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_thumbtable_scrollbar_changed(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !209
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.f = load i32, ptr %i.e, align 4, !tbaa !210
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !18
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = add nsw i32 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !207
  %i.n = sdiv i32 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !85   ; 2 uses
  %i.q = mul nsw i32 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !92
  %i.t = sub nsw i32 %i.q, %i.s
  %i.u = sitofp reassoc nsz arcp contract afn i32 %i.t to float
  %i.v = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.w = fmul reassoc nsz arcp contract afn float %2, %i.v
  %i.x = fsub reassoc nsz arcp contract afn float %i.u, %i.w
  %i.y = fptosi float %i.x to i32
  %i.z = tail call fastcc i32 @_move(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.y, i32 noundef 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_move(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not188 = icmp eq i32 %3, 0
  %i.d = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %2, i64 1 ; 3 uses
  br i1 %.not188, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 8, !tbaa !18
  switch i32 %i.f, label %bb.l [
    i32 1, label %bb.d
    i32 2, label %bb.h
    i32 3, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.af, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !41
  %i.k = add nsw i32 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !207
  %i.n = sdiv i32 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !85
  %i.q = mul nsw i32 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !92
  %i.t = sub nsw i32 %i.q, %i.s                   ; 2 uses
  %i.u = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.t)
  %i.v = tail call i32 @dt_collection_get_collected_count() #15
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i32 @dt_collection_get_collected_count() #15
  %i.y = uitofp reassoc nsz arcp contract afn i32 %i.x to float
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.z = phi float [ %i.y, %bb.f ], [ 1.000000e+00, %bb.e ]
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !207
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.z, %i.ab
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ac)
  %i.ae = fptoui float %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !88
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !85  ; 2 uses
  %i.ai = sdiv i32 %i.ag, %i.ah
  %i.aj = sub i32 %i.ae, %i.ai
  %i.ak = mul nsw i32 %i.aj, %i.ah
  %i.al = sub nsw i32 %i.ak, %i.t
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.am = sub nsw i32 0, %spec.select
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.am)
  %i.ao = insertelement <2 x i32> <i32 0, i32 poison>, i32 %i.an, i64 1
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.ap = icmp eq i32 %1, 0
  br i1 %i.ap, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.ar = tail call ptr @g_list_last(ptr noundef nonnull %i.c) #15
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !85
  %i.aw = sub nsw i32 %i.at, %i.av
  %i.ax = sdiv i32 %i.aw, 2                       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !37
  %i.ba = sub nsw i32 %i.ax, %i.az                ; 2 uses
  %i.bb = icmp sgt i32 %1, %i.ba
  %i.bc = insertelement <2 x i32> <i32 poison, i32 0>, i32 %i.ba, i64 0
  br i1 %i.bb, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !37
  %i.bg = sub nsw i32 %i.ax, %i.bf
  %. = tail call i32 @llvm.smax.i32(i32 %1, i32 %i.bg)
  %i.bh = insertelement <2 x i32> <i32 poison, i32 0>, i32 %., i64 0
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !85
  %i.bk = sitofp reassoc nsz arcp contract afn i32 %i.bj to double
  %i.bl = fmul reassoc nnan nsz arcp contract afn double %i.bk, 5.000000e-01
  %i.bm = fptosi double %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bq = load <2 x i32>, ptr %i.bo, align 8, !tbaa !35
  %i.br = load <2 x i32>, ptr %i.bn, align 8, !tbaa !35 ; 2 uses
  %i.bs = insertelement <2 x i32> poison, i32 %i.bm, i64 0
  %i.bt = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = add <2 x i32> %i.br, %i.bt
  %i.bv = sub <2 x i32> %i.bq, %i.bu
  %i.bw = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bv, <2 x i32> %i.e)
  %i.bx = load <2 x i32>, ptr %i.bp, align 8, !tbaa !35
  %i.by = add <2 x i32> %i.bx, %i.br
  %i.bz = sub <2 x i32> %i.bt, %i.by
  %i.ca = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bz, <2 x i32> %i.bw)
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.g, %bb.k, %bb.b
  %i.cb = phi <2 x i32> [ %i.ao, %bb.g ], [ %i.e, %bb.b ], [ %i.ca, %bb.k ], [ %i.e, %bb.c ], [ %i.bc, %bb.i ], [ %i.bh, %bb.j ] ; 3 uses
  %i.cc = extractelement <2 x i32> %i.cb, i64 0   ; 3 uses
  %i.cd = extractelement <2 x i32> %i.cb, i64 1   ; 2 uses
  %i.ce = or i32 %i.cd, %i.cc
  %or.cond = icmp eq i32 %i.ce, 0
  br i1 %or.cond, label %bb.af, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %.not189209 = icmp eq ptr %i.cf, null
  br i1 %.not189209, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.v
  %.0164211 = phi ptr [ %i.cf, %.lr.ph ], [ %.1165, %bb.v ] ; 4 uses
  %.0167210 = phi ptr [ null, %.lr.ph ], [ %spec.select192, %bb.v ] ; 2 uses
  %i.cl = phi ptr [ null, %.lr.ph ], [ %i.dq, %bb.v ] ; 2 uses
  %i.cm = load ptr, ptr %.0164211, align 8, !tbaa !26 ; 6 uses
  %.not190 = icmp eq ptr %.0167210, null
  %spec.select192 = select i1 %.not190, ptr %i.cm, ptr %.0167210 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.co = load <2 x i32>, ptr %i.cn, align 8, !tbaa !35
  %i.cp = add nsw <2 x i32> %i.co, %i.cb          ; 4 uses
  store <2 x i32> %i.cp, ptr %i.cn, align 8, !tbaa !35
  %i.cq = load i32, ptr %i.cg, align 8, !tbaa !85 ; 2 uses
  %i.cr = extractelement <2 x i32> %i.cp, i64 1   ; 3 uses
  %i.cs = add nsw i32 %i.cq, %i.cr
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = load i32, ptr %i.ch, align 4, !tbaa !88
  %i.cv = icmp sgt i32 %i.cr, %i.cu
  br i1 %i.cv, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = load i32, ptr %0, align 8, !tbaa !18
  %i.cx = icmp eq i32 %i.cw, 2
  br i1 %i.cx, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cy = extractelement <2 x i32> %i.cp, i64 0   ; 2 uses
  %i.cz = add nsw i32 %i.cq, %i.cy
  %i.da = icmp slt i32 %i.cz, 1
  br i1 %i.da, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = load i32, ptr %i.ci, align 8, !tbaa !40
  %i.dc = icmp sgt i32 %i.cy, %i.db
  br i1 %i.dc, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %i.dd = tail call ptr @g_list_prepend(ptr noundef %i.cl, ptr noundef nonnull %i.cm) #15 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0164211, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !87 ; 2 uses
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.dh = tail call ptr @g_list_delete_link(ptr noundef %i.dg, ptr noundef nonnull %.0164211) #15
  store ptr %i.dh, ptr %i.b, align 8, !tbaa !34
  %i.di = load ptr, ptr %i.ck, align 8, !tbaa !89
  %i.dj = icmp eq ptr %i.di, %i.cm
  br i1 %i.dj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %i.ck, align 8, !tbaa !89
  br label %bb.v

bb.u:                                             ; preds = %bb.r, %bb.p
  %i.dk = load ptr, ptr %i.cj, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 112
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !86
  %i.dn = extractelement <2 x i32> %i.cp, i64 0
  tail call void @gtk_layout_move(ptr noundef %i.dk, ptr noundef %i.dm, i32 noundef %i.dn, i32 noundef %i.cr) #15
  %i.do = getelementptr inbounds nuw i8, ptr %.0164211, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !87
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %i.dq = phi ptr [ %i.cl, %bb.u ], [ %i.dd, %bb.t ], [ %i.dd, %bb.s ] ; 2 uses
  %.1165 = phi ptr [ %i.dp, %bb.u ], [ %i.df, %bb.t ], [ %i.df, %bb.s ] ; 2 uses
  %.not189 = icmp eq ptr %.1165, null
  br i1 %.not189, label %._crit_edge, label %bb.n

._crit_edge:                                      ; preds = %bb.v, %bb.m
  %.lcssa209 = phi ptr [ null, %bb.m ], [ %i.dq, %bb.v ]
  %.0167.lcssa = phi ptr [ null, %bb.m ], [ %spec.select192, %bb.v ]
  %.0166.lcssa = phi ptr [ null, %bb.m ], [ %i.cm, %bb.v ]
  store ptr %.lcssa209, ptr %i.a, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !92
  %i.du = load i32, ptr %i.dr, align 8, !tbaa !91
  %i.dv = add nsw i32 %i.du, %i.cc
  store i32 %i.dv, ptr %i.dr, align 8, !tbaa !91
  %i.dw = add nsw i32 %i.dt, %i.cd                ; 2 uses
  store i32 %i.dw, ptr %i.ds, align 4, !tbaa !92
  %i.dx = call fastcc i32 @_thumbs_load_needed(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %.0167.lcssa, ptr noundef %.0166.lcssa)
  %.0121.i = load ptr, ptr %i.a, align 8, !tbaa !23 ; 3 uses
  %.not2.i = icmp eq ptr %.0121.i, null
  br i1 %.not2.i, label %_thumbs_remove_unneeded.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.0124.i = phi ptr [ %.012.i, %.lr.ph.i ], [ %.0121.i, %._crit_edge ] ; 2 uses
  %.0133.i = phi i32 [ %i.ed, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.dy = load ptr, ptr %.0124.i, align 8, !tbaa !26 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 112 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !86
  %i.eb = tail call ptr @gtk_widget_get_parent(ptr noundef %i.ea) #15
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !86
  tail call void @gtk_container_remove(ptr noundef %i.eb, ptr noundef %i.ec) #15
  tail call void @dt_thumbnail_destroy(ptr noundef %i.dy) #15
  %i.ed = add nuw nsw i32 %.0133.i, 1             ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0124.i, i64 8
  %.012.i = load ptr, ptr %i.ee, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %.012.i, null
  br i1 %.not.i, label %_thumbs_remove_unneeded.exit, label %.lr.ph.i

_thumbs_remove_unneeded.exit:                     ; preds = %.lr.ph.i, %._crit_edge
  %.013.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.ed, %.lr.ph.i ]
  tail call void @g_list_free(ptr noundef %.0121.i) #15
  %i.ef = add nsw i32 %.013.lcssa.i, %i.dx
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.w, label %_pos_compute_area.exit

bb.w:                                             ; preds = %_thumbs_remove_unneeded.exit
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %.not.i195 = icmp eq ptr %i.eh, null
  br i1 %.not.i195, label %bb.y, label %.preheader.i

bb.x:                                             ; preds = %.preheader.i
  store <2 x i32> %i.eu, ptr %i.dr, align 8, !tbaa !35
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !85
  %i.ek = sub <2 x i32> %i.ev, %i.eu
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.em = insertelement <2 x i32> poison, i32 %i.ej, i64 0
  %i.en = shufflevector <2 x i32> %i.em, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.eo = add <2 x i32> %i.ek, %i.en
  store <2 x i32> %i.eo, ptr %i.el, align 8, !tbaa !35
  br label %_pos_compute_area.exit

.preheader.i:                                     ; preds = %bb.w, %.preheader.i
  %.051.i = phi ptr [ %i.ex, %.preheader.i ], [ %i.eh, %bb.w ] ; 2 uses
  %i.ep = phi <2 x i32> [ %i.ev, %.preheader.i ], [ splat (i32 -2147483648), %bb.w ]
  %i.eq = phi <2 x i32> [ %i.eu, %.preheader.i ], [ splat (i32 2147483647), %bb.w ]
  %i.er = load ptr, ptr %.051.i, align 8, !tbaa !26
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load <2 x i32>, ptr %i.es, align 8, !tbaa !35 ; 2 uses
  %i.eu = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.eq, <2 x i32> %i.et) ; 3 uses
  %i.ev = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ep, <2 x i32> %i.et) ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.051.i, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !87 ; 2 uses
  %.not46.i = icmp eq ptr %i.ex, null
  br i1 %.not46.i, label %bb.x, label %.preheader.i

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  br label %_pos_compute_area.exit

_pos_compute_area.exit:                           ; preds = %bb.y, %bb.x, %_thumbs_remove_unneeded.exit
  %i.ey = load i32, ptr %0, align 8, !tbaa !18
  switch i32 %i.ey, label %bb.ac [
    i32 1, label %bb.z
    i32 2, label %bb.aa
    i32 3, label %bb.ab
  ]

bb.z:                                             ; preds = %_pos_compute_area.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !42
  %i.fb = sitofp reassoc nsz arcp contract afn i32 %i.fa to float
  %i.fc = sitofp reassoc nsz arcp contract afn i32 %i.dw to float
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !85
  %i.ff = sitofp reassoc nsz arcp contract afn i32 %i.fe to float
  %i.fg = fdiv reassoc nsz arcp contract afn float %i.fc, %i.ff
  %i.fh = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.fg)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !207
  %i.fk = sitofp reassoc nsz arcp contract afn i32 %i.fj to float
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fh, %i.fk
  %i.fm = fsub reassoc nsz arcp contract afn float %i.fb, %i.fl ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.fm, 1.000000e+00
  %spec.select193196 = select i1 %.inv, float 1.000000e+00, float %i.fm
  %spec.select193 = fptosi float %spec.select193196 to i32 ; 2 uses
  store i32 %spec.select193, ptr %i.ez, align 8, !tbaa !42
  %i.fn = tail call fastcc i32 @_thumb_get_imgid(i32 noundef %spec.select193)
  br label %.sink.split

bb.aa:                                            ; preds = %_pos_compute_area.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !42
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !85
  %i.fs = sdiv i32 %i.cc, %i.fr
  %i.ft = sub nsw i32 %i.fp, %i.fs
  %spec.select194 = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 1) ; 2 uses
  store i32 %spec.select194, ptr %i.fo, align 8, !tbaa !42
  %i.fu = tail call fastcc i32 @_thumb_get_imgid(i32 noundef %spec.select194)
  br label %.sink.split

bb.ab:                                            ; preds = %_pos_compute_area.exit
  %i.fv = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !26 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !41
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !42
  %i.ga = load i32, ptr %i.fw, align 8, !tbaa !39
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.ab, %bb.aa
  %.sink = phi i32 [ %i.fu, %bb.aa ], [ %i.ga, %bb.ab ], [ %i.fn, %bb.z ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sink, ptr %i.gb, align 4, !tbaa !90
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %_pos_compute_area.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !42
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.12, i32 noundef %i.gd) #15
  %i.ge = load i32, ptr %0, align 8, !tbaa !18
  %i.gf = icmp eq i32 %i.ge, 3
  br i1 %i.gf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gg = load i32, ptr %i.gc, align 8, !tbaa !42
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.43, i32 noundef %i.gg) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call fastcc void @_thumbtable_update_scrollbars(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.d, %bb.h, %bb.l, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.h ], [ 1, %bb.ae ], [ 0, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define void @dt_thumbtable_full_redraw(ptr nofree noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %3 = alloca %struct.timeval, align 16           ; 4 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  call void @gtk_widget_get_allocation(ptr noundef %i.f, ptr noundef nonnull %4) #15
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !158  ; 5 uses
  %i.i = icmp slt i32 %i.h, 21
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4              ; 6 uses
  %i.l = icmp slt i32 %i.k, 21
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_compute_sizes.exit.thread, label %bb.c

_compute_sizes.exit.thread:                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.h, ptr %i.m, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.k, ptr %i.n, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.bo

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !85
  %i.q = load i32, ptr %0, align 8, !tbaa !18
  switch i32 %i.q, label %bb.q [
    i32 1, label %bb.d
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !84
  %i.s = call i32 @dt_view_lighttable_get_zoom(ptr noundef %i.r) #15 ; 4 uses
end_hunk_1
