inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@H5Pget_mcdt_search_cb:bb.a
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5Pget_mcdt_search_cb, i32 noundef 835, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %.thread27

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5P_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !8
  %i.p = tail call i32 @H5P__init_package() #7
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !8
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5Pget_mcdt_search_cb, i32 noundef 835, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.4) #7 ; 0 uses
  br label %.thread27

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %4) #7
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5Pget_mcdt_search_cb, i32 noundef 835, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.5) #7 ; 0 uses
  br label %.thread27

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #7           ; 0 uses
  %i.aa = load i64, ptr @H5P_CLS_OBJECT_COPY_ID_g, align 8, !tbaa !13
  %i.ab = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.aa, i1 noundef zeroext true) #7 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !19

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr @H5E_ID_g, align 8, !tbaa !13
  %i.ae = load i64, ptr @H5E_BADID_g, align 8, !tbaa !13
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5Pget_mcdt_search_cb, i32 noundef 839, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread33

bb.k:                                             ; preds = %bb.i
  %i.ag = call i32 @H5P_get(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #7
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !13
  %i.aj = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5Pget_mcdt_search_cb, i32 noundef 843, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.22) #7 ; 0 uses
  br label %.thread33

bb.m:                                             ; preds = %bb.k
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %3, align 8, !tbaa !30
  store ptr %i.al, ptr %1, align 8, !tbaa !33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not18 = icmp eq ptr %2, null
  br i1 %.not18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32
  store ptr %i.an, ptr %2, align 8, !tbaa !33
  br label %bb.q

.thread33:                                        ; preds = %bb.l, %bb.j
  %i.ao = call i32 @H5CX_pop(i1 noundef zeroext true) #7 ; 0 uses
  br label %.thread27

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ap = call i32 @H5CX_pop(i1 noundef zeroext true) #7 ; 0 uses
  br label %bb.r

.thread27:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread33
  %i.aq = call i32 @H5E_dump_api_stack() #7       ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread27
  %.0142230 = phi i32 [ -1, %.thread27 ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0142230
}

declare i32 @H5P__register_real(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5P__encode_unsigned(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @H5P__decode_unsigned(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__ocpy_merge_comm_dt_list_set(i64 %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @H5P__copy_merge_comm_dt_list(ptr noundef %3)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !13
  %i.j = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !13
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5P__ocpy_merge_comm_dt_list_set, i32 noundef 294, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.24) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__ocpy_merge_comm_dt_list_get(i64 %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @H5P__copy_merge_comm_dt_list(ptr noundef %3)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !13
  %i.j = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !13
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5P__ocpy_merge_comm_dt_list_get, i32 noundef 323, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.24) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5P__ocpy_merge_comm_dt_list_enc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) #4 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader, label %bb.f, !prof !12

.preheader:                                       ; preds = %bb.a
  %.020 = load ptr, ptr %0, align 8, !tbaa !20    ; 3 uses
  %.not21 = icmp eq ptr %.020, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !34    ; 4 uses
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = icmp eq ptr %.pre, null
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.promoted = load i64, ptr %2, align 8, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.h = phi i64 [ %.promoted, %.lr.ph.split.us ], [ %i.l, %bb.b ]
  %.022.us = phi ptr [ %.020, %.lr.ph.split.us ], [ %.0.us, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.022.us, align 8, !tbaa !25
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #8
  %i.k = add i64 %i.j, 1
  %i.l = add i64 %i.h, %i.k                       ; 2 uses
  store i64 %i.l, ptr %2, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %.022.us, i64 8
  %.0.us = load ptr, ptr %i.m, align 8, !tbaa !20 ; 2 uses
  %.not.us = icmp eq ptr %.0.us, null
  br i1 %.not.us, label %._crit_edge.thread, label %bb.b, !llvm.loop !35

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %i.u, %bb.d ], [ %.pre, %.lr.ph ]
  %i.o = phi ptr [ %i.v, %bb.d ], [ %.pre, %.lr.ph ] ; 2 uses
  %.022 = phi ptr [ %.0, %bb.d ], [ %.020, %.lr.ph ] ; 2 uses
  %i.p = load ptr, ptr %.022, align 8, !tbaa !25  ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #8
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %.not19 = icmp eq ptr %i.o, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.p, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %1, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 3 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.n, %.lr.ph.split ] ; 2 uses
  %i.v = phi ptr [ %i.t, %bb.c ], [ null, %.lr.ph.split ]
  %i.w = load i64, ptr %2, align 8, !tbaa !13
  %i.x = add i64 %i.w, %i.r
  store i64 %i.x, ptr %2, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.022, i64 8
  %.0 = load ptr, ptr %i.y, align 8, !tbaa !20    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.z = phi ptr [ %.pre, %.preheader ], [ %i.u, %bb.d ] ; 3 uses
  %.not18 = icmp eq ptr %i.z, null
  br i1 %.not18, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.z, align 1, !tbaa !24
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %bb.e, %._crit_edge
  %i.ab = load i64, ptr %2, align 8, !tbaa !13
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %2, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__ocpy_merge_comm_dt_list_dec(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.j, !prof !12

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !20
  %i.g = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #8 ; 2 uses
  %.not.not38 = icmp eq i64 %i.h, 0
  br i1 %.not.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %.02740 = phi i64 [ %i.r, %bb.g ], [ %i.h, %bb.b ]
  %.03039 = phi ptr [ %i.i, %bb.g ], [ null, %bb.b ] ; 2 uses
  %i.i = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5O_copy_dtype_merge_list_t_reg_free_list) #7 ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %0, align 8, !tbaa !34
  %i.l = tail call noalias ptr @H5MM_strdup(ptr noundef %i.k) #7 ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !25
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !34
  %i.o = getelementptr i8, ptr %i.n, i64 %.02740
  %i.p = getelementptr i8, ptr %i.o, i64 1        ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !34
  %.not34 = icmp eq ptr %.03039, null
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.03039, i64 8
  store ptr %i.i, ptr %i.q, align 8, !tbaa !28
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.i, ptr %1, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #8 ; 2 uses
  %.not.not = icmp eq i64 %i.r, 0
  br i1 %.not.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.g, %bb.b
  %i.s = phi ptr [ %i.g, %bb.b ], [ %i.p, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %0, align 8, !tbaa !34
  br label %bb.j

bb.h:                                             ; preds = %bb.c, %.lr.ph
  %.sink = phi i32 [ 421, %.lr.ph ], [ 423, %bb.c ]
  %i.u = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !13
  %i.v = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5P__ocpy_merge_comm_dt_list_dec, i32 noundef %.sink, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.15) #7 ; 0 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.y = load i8, ptr @H5P_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = xor i1 %i.ab, true
  %i.ad = select i1 %i.z, i1 true, i1 %i.ac
  %i.ae = icmp ne ptr %i.x, null
  %or.cond.i = and i1 %i.ae, %i.ad
  br i1 %or.cond.i, label %.preheader.i, label %H5P__free_merge_comm_dtype_list.exit, !prof !29

.preheader.i:                                     ; preds = %bb.h, %.preheader.i
  %.0.i = phi ptr [ %i.ag, %.preheader.i ], [ %i.x, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.ah = load ptr, ptr %.0.i, align 8, !tbaa !25
  %i.ai = tail call ptr @H5MM_xfree(ptr noundef %i.ah) #7 ; 0 uses
  %i.aj = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_copy_dtype_merge_list_t_reg_free_list, ptr noundef nonnull %.0.i) #7 ; 0 uses
  %.old1.not.i = icmp eq ptr %i.ag, null
  br i1 %.old1.not.i, label %H5P__free_merge_comm_dtype_list.exit, label %.preheader.i

H5P__free_merge_comm_dtype_list.exit:             ; preds = %.preheader.i, %bb.h
  store ptr null, ptr %1, align 8, !tbaa !20
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %H5P__free_merge_comm_dtype_list.exit
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.al = tail call ptr @H5MM_xfree(ptr noundef %i.ak) #7
  store ptr %i.al, ptr %i.i, align 8, !tbaa !25
  %i.am = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_copy_dtype_merge_list_t_reg_free_list, ptr noundef nonnull %i.i) #7 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i, %H5P__free_merge_comm_dtype_list.exit, %bb.a
  %.1 = phi i32 [ -1, %bb.i ], [ -1, %H5P__free_merge_comm_dtype_list.exit ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5P__ocpy_merge_comm_dt_list_del(i64 %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5P__free_merge_comm_dtype_list.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %H5P__free_merge_comm_dtype_list.exit, label %.preheader.i, !prof !40

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.0.i = phi ptr [ %i.i, %.preheader.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = load ptr, ptr %.0.i, align 8, !tbaa !25
  %i.k = tail call ptr @H5MM_xfree(ptr noundef %i.j) #7 ; 0 uses
  %i.l = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_copy_dtype_merge_list_t_reg_free_list, ptr noundef nonnull %.0.i) #7 ; 0 uses
  %.old1.not.i = icmp eq ptr %i.i, null
  br i1 %.old1.not.i, label %H5P__free_merge_comm_dtype_list.exit, label %.preheader.i

H5P__free_merge_comm_dtype_list.exit:             ; preds = %.preheader.i, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__ocpy_merge_comm_dt_list_copy(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @H5P__copy_merge_comm_dt_list(ptr noundef %2)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !13
  %i.j = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !13
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5P__ocpy_merge_comm_dt_list_copy, i32 noundef 504, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.24) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @H5P__ocpy_merge_comm_dt_list_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #5 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
end_hunk_0
