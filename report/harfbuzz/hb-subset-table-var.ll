Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_:bb.a
_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #18 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !300  ; 2 uses
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit
  %i.j = phi i32 [ %i.h, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph ], [ %i.q, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !305
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.3.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..0.i.i.sroa_idx, align 8, !tbaa !306
  %.sroa.4.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.i.i.sroa_idx, align 8, !tbaa !306 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !307, !noalias !308
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #18 ; 0 uses
  %.not.i6 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i6, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #18, !inline_history !311
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, %bb.e
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #18 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !300  ; 2 uses
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, !llvm.loop !312

._crit_edge:                                      ; preds = %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !304
  %i.s = add i32 %i.r, -1
  %spec.select.i.i7 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i7, label %bb.f, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

bb.f:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.a, align 4, !tbaa !307
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !305
  tail call void @hb_free(ptr noundef %i.u) #18
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8: ; preds = %._crit_edge, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !21

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !112

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !21

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !110  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !313
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !111   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !113
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !111
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIcEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !317
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !142

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #18 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !238
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !105
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !318
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !297
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !242    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !21

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !319

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !21

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !237
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !237  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !236  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !237
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !320
  br label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !242   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !237
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !242
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !236  ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !242
  %.not = icmp slt i32 %i.b, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, 1
  %i.e = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.e, label %..critedge_crit_edge, label %bb.c, !prof !142

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !236
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %bb.d

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %i.g = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !237
  %i.j = add i32 %i.g, 1
  store i32 %i.j, ptr %i.a, align 4, !tbaa !236
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !238
  store ptr %i.m, ptr %i.l, align 8, !tbaa !238
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.0 = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.l, %.critedge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !120
end_hunk_0
begin_hunk_1_@_ZN2OT23index_map_subset_plan_t5remapEPKNS_16DeltaSetIndexMapERK14hb_inc_bimap_tRK11hb_vector_tIS4_Lb0EEPK16hb_subset_plan_t:bb.a

.critedge:                                        ; preds = %bb.o, %.loopexit, %bb.n, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread19, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !453    ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread19, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread, !prof !21

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !478

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 76695844
  br i1 %i.k, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread22, label %bb.f, !prof !21

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !453    ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread22, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread22: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !453
  br label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !360
  store i32 %.138.i, ptr %0, align 8, !tbaa !453
  br label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !364  ; 5 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.x, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !360
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  %i.w = load i32, ptr %i.o, align 4, !tbaa !364
  %i.x = add i32 %i.w, 1                          ; 3 uses
  store i32 %i.x, ptr %i.o, align 4, !tbaa !364
  %i.y = icmp ult i32 %i.x, %1
  br i1 %i.y, label %bb.i, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !479

bb.j:                                             ; preds = %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread
  %i.z = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.z
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.aa = sub nuw i32 %i.p, %1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !360
  %i.ad = zext i32 %i.p to i64
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.ad
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.ag, %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i ], [ %i.ae, %.lr.ph.preheader.i ] ; 7 uses
  %.046.i = phi i32 [ %i.af, %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i ], [ %i.aa, %.lr.ph.preheader.i ]
  %i.af = add i32 %.046.i, -1                     ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.07.i, i64 -56
  %i.ah = getelementptr inbounds i8, ptr %.07.i, i64 -16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !424
  %i.aj = add i32 %i.ai, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.aj, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.k, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i15
  %i.ak = getelementptr inbounds i8, ptr %.07.i, i64 -12
  store i32 0, ptr %i.ak, align 4, !tbaa !425
  %i.al = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !426
  tail call void @hb_free(ptr noundef %i.am) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i:             ; preds = %bb.k, %.lr.ph.i15
  %i.an = getelementptr inbounds i8, ptr %.07.i, i64 -40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !424
  %i.ap = add i32 %i.ao, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.ap, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.l, label %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i

bb.l:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i
  %i.aq = getelementptr inbounds i8, ptr %.07.i, i64 -36
  store i32 0, ptr %i.aq, align 4, !tbaa !425
  %i.ar = getelementptr inbounds i8, ptr %.07.i, i64 -32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !426
  tail call void @hb_free(ptr noundef %i.as) #18
  br label %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i

_ZN2OT23index_map_subset_plan_tD2Ev.exit.i:       ; preds = %bb.l, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i
  %.not.i16 = icmp eq i32 %i.af, 0
  br i1 %.not.i16, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, label %.lr.ph.i15, !llvm.loop !454

_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i, %bb.i, %bb.j, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !364
  br label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread19: ; preds = %bb.b, %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread22, %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE5allocEjb.exit.thread22 ], [ true, %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !453
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 56
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #18 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.g, label %.preheader, !prof !21

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !364
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2OT23index_map_subset_plan_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !453
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.g

bb.d:                                             ; preds = %.lr.ph, %_ZN2OT23index_map_subset_plan_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2OT23index_map_subset_plan_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %indvars.iv ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false)
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !360
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 9, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !137
  store i32 %i.q, ptr %i.l, align 8, !tbaa !137
  store i32 0, ptr %i.p, align 8, !tbaa !137
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.t = load i32, ptr %i.r, align 4, !tbaa !137
  %i.u = load i32, ptr %i.s, align 4, !tbaa !137
  store i32 %i.u, ptr %i.r, align 4, !tbaa !137
  store i32 %i.t, ptr %i.s, align 4, !tbaa !137
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !480
  store ptr %i.x, ptr %i.v, align 8, !tbaa !480
  store ptr null, ptr %i.w, align 8, !tbaa !480
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aa = load i64, ptr %i.z, align 8
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !137
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !137
  store i32 %i.ad, ptr %i.m, align 8, !tbaa !137
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !137
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 44 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !137
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !137
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !137
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !480
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !480
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !480
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !480
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !360
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.am, i64 %indvars.iv ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !424
  %i.aq = add i32 %i.ap, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.aq, -2
  br i1 %spec.select.i.i.i.i, label %bb.e, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  store i32 0, ptr %i.ar, align 4, !tbaa !425
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !426
  tail call void @hb_free(ptr noundef %i.at) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.e, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !424
  %i.aw = add i32 %i.av, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.aw, -2
  br i1 %spec.select.i.i.i1.i, label %bb.f, label %_ZN2OT23index_map_subset_plan_tD2Ev.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 0, ptr %i.ax, align 4, !tbaa !425
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !426
  tail call void @hb_free(ptr noundef %i.az) #18
  br label %_ZN2OT23index_map_subset_plan_tD2Ev.exit

_ZN2OT23index_map_subset_plan_tD2Ev.exit:         ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !364
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %bb.d, label %._crit_edge, !llvm.loop !481

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !360
  tail call void @hb_free(ptr noundef %i.be) #18
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIP8hb_set_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !452    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !21

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !482

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !21

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !371
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !371  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !370  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !371
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !483
  br label %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !452   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !371
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !452
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIP8hb_set_tLb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread17, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !455    ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread17, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread, !prof !21

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !487

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 67108863
  br i1 %i.k, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread20, label %bb.f, !prof !21

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !455    ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread

_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !455
  br label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !348
  store i32 %.138.i, ptr %0, align 8, !tbaa !455
  br label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread

_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !349  ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.ac, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !348
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.u ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i8 0, i64 40, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store atomic i32 1, ptr %i.v monotonic, align 8
  store atomic i8 1, ptr %i.w monotonic, align 4
  store atomic ptr null, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 1, ptr %i.y, align 8, !tbaa !325
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.z, i8 0, i64 18, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !349
  %i.ac = add i32 %i.ab, 1                        ; 3 uses
  store i32 %i.ac, ptr %i.o, align 4, !tbaa !349
  %i.ad = icmp ult i32 %i.ac, %1
  br i1 %i.ad, label %bb.i, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !488

bb.j:                                             ; preds = %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread
  %i.ae = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.ae
  br i1 %or.cond, label %bb.k, label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !349
  br label %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread17: ; preds = %bb.b, %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread20, %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE5allocEjb.exit.thread20 ], [ true, %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !349  ; 2 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !348
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN14hb_inc_bimap_tD2Ev.exit
  %.07 = phi ptr [ %i.i, %_ZN14hb_inc_bimap_tD2Ev.exit ], [ %i.g, %.lr.ph.preheader ] ; 6 uses
  %.046 = phi i32 [ %i.h, %_ZN14hb_inc_bimap_tD2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %i.h = add i32 %.046, -1                        ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.07, i64 -64 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !424
  %i.l = add i32 %i.k, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.l, -2
  br i1 %spec.select.i.i.i.i, label %bb.b, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds i8, ptr %.07, i64 -12
  store i32 0, ptr %i.m, align 4, !tbaa !425
  %i.n = getelementptr inbounds i8, ptr %.07, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !426
  tail call void @hb_free(ptr noundef %i.o) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.b, %.lr.ph
  store atomic i32 -57005, ptr %i.i monotonic, align 8
  %i.p = getelementptr inbounds i8, ptr %.07, i64 -56 ; 2 uses
  %i.q = load atomic ptr, ptr %i.p acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.q)
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #18 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.q) #18
  store atomic ptr null, ptr %i.p monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.t = getelementptr inbounds i8, ptr %.07, i64 -24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !335  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN14hb_inc_bimap_tD2Ev.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.u) #18
  br label %_ZN14hb_inc_bimap_tD2Ev.exit

_ZN14hb_inc_bimap_tD2Ev.exit:                     ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i, %bb.d
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !489

._crit_edge:                                      ; preds = %_ZN14hb_inc_bimap_tD2Ev.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !455
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 6
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #18 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.i, label %.preheader, !prof !21

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !349
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN14hb_inc_bimap_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !455
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN14hb_inc_bimap_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN14hb_inc_bimap_tD2Ev.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i8 0, i64 40, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store atomic i32 1, ptr %i.k monotonic, align 8
  store atomic i8 1, ptr %i.l monotonic, align 4
  store atomic ptr null, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !325
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 18 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.o, i8 0, i64 18, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !348
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %indvars.iv ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !132
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %_ZN14hb_inc_bimap_taSEOS_.exit, !prof !142

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 18 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !490
  store i16 %i.w, ptr %i.o, align 2, !tbaa !490
  store i16 0, ptr %i.v, align 2, !tbaa !490
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !137
  store i32 %i.z, ptr %i.x, align 4, !tbaa !137
  store i32 0, ptr %i.y, align 4, !tbaa !137
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !137
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !137
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !137
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !137
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !137
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !137
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !137
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !137
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !137
  store i32 %i.al, ptr %i.ai, align 8, !tbaa !137
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !137
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !491
  store ptr %i.an, ptr %i.p, align 8, !tbaa !491
  store ptr null, ptr %i.am, align 8, !tbaa !491
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !137
  br label %_ZN14hb_inc_bimap_taSEOS_.exit

_ZN14hb_inc_bimap_taSEOS_.exit:                   ; preds = %bb.d, %bb.e
  %i.ao = phi i32 [ 0, %bb.d ], [ %.pre, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !137
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !137
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !137
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 3 uses
  %i.au = load i32, ptr %i.as, align 4, !tbaa !137
  %i.av = load i32, ptr %i.at, align 4, !tbaa !137
  store i32 %i.av, ptr %i.as, align 4, !tbaa !137
  store i32 %i.au, ptr %i.at, align 4, !tbaa !137
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !480
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !480
  store ptr null, ptr %i.ax, align 8, !tbaa !480
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !424
  %i.ba = add i32 %i.az, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ba, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZN14hb_inc_bimap_taSEOS_.exit
  store i32 0, ptr %i.at, align 4, !tbaa !425
  tail call void @hb_free(ptr noundef null) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.f, %_ZN14hb_inc_bimap_taSEOS_.exit
  store atomic i32 -57005, ptr %i.r monotonic, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.bc = load atomic ptr, ptr %i.bb acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(56) %i.bc)
  %i.be = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.bc) #18 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.bc) #18
  store atomic ptr null, ptr %i.bb monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !335 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZN14hb_inc_bimap_tD2Ev.exit, label %bb.h, !prof !21

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.bg) #18
  br label %_ZN14hb_inc_bimap_tD2Ev.exit

_ZN14hb_inc_bimap_tD2Ev.exit:                     ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.f, align 4, !tbaa !349
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.d, label %._crit_edge, !llvm.loop !492

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !348
  tail call void @hb_free(ptr noundef %i.bl) #18
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !270
  switch i8 %i.a, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit [
    i8 0, label %bb.b
    i8 1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 1, !tbaa !264  ; 2 uses
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !270   ; 2 uses
  %i.f = lshr i8 %i.e, 4
  %i.g = and i8 %i.f, 3                           ; 2 uses
  %narrow.i.i = add nuw nsw i8 %i.g, 1            ; 3 uses
  %i.h = zext nneg i8 %narrow.i.i to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.c)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %.not.i6 = icmp ult i32 %1, %i.k
  %i.l = add nsw i32 %i.k, -1
  %spec.select.i = select i1 %.not.i6, i32 %1, i32 %i.l
  %i.m = mul nsw i32 %spec.select.i, %i.h
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !270
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %.not18.i = icmp eq i8 %i.g, 0
  br i1 %.not18.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = shl nuw nsw i32 %i.q, 8
  %i.t = load i8, ptr %i.r, align 1, !tbaa !270
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %.not18.i.1 = icmp eq i8 %narrow.i.i, 2
  br i1 %.not18.i.1, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.x = shl nuw nsw i32 %i.v, 8
  %i.y = load i8, ptr %i.w, align 1, !tbaa !270
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %.not18.i.2 = icmp eq i8 %narrow.i.i, 3
  br i1 %.not18.i.2, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.ac = shl nuw i32 %i.aa, 8
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !270
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit

_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.lcssa = phi i32 [ %i.q, %bb.c ], [ %i.v, %bb.d ], [ %i.aa, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %i.ag = and i8 %i.e, 15
  %narrow.i19.i = add nuw nsw i8 %i.ag, 1
  %i.ah = zext nneg i8 %narrow.i19.i to i32       ; 2 uses
  %i.ai = lshr i32 %.lcssa, %i.ah
  %notmask.i = shl nsw i32 -1, %i.ah
  %i.aj = xor i32 %notmask.i, -1
  %i.ak = and i32 %.lcssa, %i.aj
  %i.al = shl i32 %i.ai, 16
  %i.am = or i32 %i.al, %i.ak
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit

bb.g:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN2OT17item_variations_t16as_item_varstoreEbb:bb.a
  %.ph1461 = phi i32 [ 0, %.lr.ph.i.i.i227 ], [ %i.vj, %middle.block1402 ]
  br label %scalar.ph1387

._crit_edge.loopexit.i.i.i:                       ; preds = %scalar.ph1387, %middle.block1402
  %.lcssa1224 = phi i32 [ %i.vi, %middle.block1402 ], [ %i.vw, %scalar.ph1387 ]
  %.lcssa1223 = phi i32 [ %i.vj, %middle.block1402 ], [ %i.vz, %scalar.ph1387 ]
  %i.vk = zext i32 %.lcssa1223 to i64
  %i.vl = shl nuw i64 %i.vk, 32
  %i.vm = zext i32 %.lcssa1224 to i64
  %i.vn = or disjoint i64 %i.vl, %i.vm
  br label %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit

scalar.ph1387:                                    ; preds = %scalar.ph1387.preheader, %scalar.ph1387
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph1387 ], [ %indvars.iv.i.i.i.ph, %scalar.ph1387.preheader ] ; 3 uses
  %i.vo = phi i32 [ %i.vw, %scalar.ph1387 ], [ %.ph1460, %scalar.ph1387.preheader ]
  %i.vp = phi i32 [ %i.vz, %scalar.ph1387 ], [ %.ph1461, %scalar.ph1387.preheader ]
  %i.vq = getelementptr inbounds nuw i8, ptr %i.uo, i64 %indvars.iv.i.i.i
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uq, i64 %indvars.iv.i.i.i
  %i.vs = load i8, ptr %i.vq, align 1, !tbaa !331
  %i.vt = load i8, ptr %i.vr, align 1, !tbaa !331
  %i.vu = call i8 @llvm.umax.i8(i8 %i.vs, i8 %i.vt) ; 2 uses
  %i.vv = zext i8 %i.vu to i32
  %i.vw = add i32 %i.vo, %i.vv                    ; 2 uses
  %i.vx = icmp ne i8 %i.vu, 0
  %i.vy = zext i1 %i.vx to i32
  %i.vz = add i32 %i.vp, %i.vy                    ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %scalar.ph1387, !llvm.loop !623

_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit: ; preds = %bb.bz, %._crit_edge.loopexit.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = phi i64 [ 0, %bb.bz ], [ %i.vn, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i to i32 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.tr, i64 20
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !621
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ts, i64 20
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !621
  %.neg.i = sub i32 %i.tw, %.sroa.0.0.extract.trunc.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.tr, i64 28
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !620
  %.neg18.i = mul i32 %i.wf, %.neg.i
  %.neg19.i = sub i32 %i.tu, %.sroa.0.0.extract.trunc.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ts, i64 28
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !620
  %.neg20.i = mul i32 %i.wh, %.neg19.i
  %sh.diff.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i, 31
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.wi = and i32 %tr.sh.diff.i, -2
  %.neg23.i = add i32 %i.wb, -10
  %i.wj = add i32 %.neg23.i, %i.wd
  %i.wk = sub i32 %i.wj, %i.wi
  %i.wl = add i32 %i.wk, %.neg18.i
  %i.wm = add i32 %i.wl, %.neg20.i                ; 2 uses
  %i.wn = icmp sgt i32 %i.wm, 0
  br i1 %i.wn, label %bb.ca, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit

bb.ca:                                            ; preds = %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit
  %i.wo = xor i32 %i.wm, -1
  %i.wp = zext i32 %i.wo to i64
  %i.wq = shl i64 %i.wp, 40
  %i.wr = or i64 %i.tp, %i.wq
  %i.ws = or i64 %i.wr, %indvars.iv966
  %.not.i230 = icmp slt i32 %.sroa.10.1838, %.sroa.0535.1837
  %.pre996 = add i32 %.sroa.10.1838, 1            ; 6 uses
  br i1 %.not.i230, label %.critedge.i234, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.wt = icmp slt i32 %.sroa.0535.1837, 0
  br i1 %i.wt, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit, label %bb.cc, !prof !21

bb.cc:                                            ; preds = %bb.cb
  %.not.i408 = icmp ugt i32 %.pre996, %.sroa.0535.1837
  br i1 %.not.i408, label %.preheader.i410, label %.critedge.i234, !prof !21

.preheader.i410:                                  ; preds = %bb.cc, %.preheader.i410
  %.043.i411 = phi i32 [ %i.ww, %.preheader.i410 ], [ %.sroa.0535.1837, %bb.cc ] ; 2 uses
  %i.wu = lshr i32 %.043.i411, 1
  %i.wv = add i32 %.043.i411, 8
  %i.ww = add i32 %i.wv, %i.wu                    ; 8 uses
  %i.wx = icmp ugt i32 %.pre996, %i.ww
  br i1 %i.wx, label %.preheader.i410, label %.thread.i412, !llvm.loop !624

.thread.i412:                                     ; preds = %.preheader.i410
  %i.wy = icmp ugt i32 %i.ww, 268435455
  br i1 %i.wy, label %.critedge.i424, label %bb.cd, !prof !21

.critedge.i424:                                   ; preds = %.thread.i412
  %i.wz = xor i32 %.sroa.0535.1837, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit

bb.cd:                                            ; preds = %.thread.i412
  %.not49.i414 = icmp eq i32 %.sroa.0535.1837, 0
  br i1 %.not49.i414, label %bb.ce, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i

bb.ce:                                            ; preds = %bb.cd
  %.not9.i.i.i421 = icmp eq ptr %.sroa.16.1839, null
  br i1 %.not9.i.i.i421, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xa = shl nuw i32 %i.ww, 4
  %i.xb = zext i32 %i.xa to i64
  %i.xc = call ptr @hb_malloc(i64 noundef %i.xb) #18 ; 4 uses
  %.not10.i.i.i422 = icmp eq ptr %i.xc, null
  br i1 %.not10.i.i.i422, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i, label %bb.cg, !prof !21

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i.i423 = icmp eq i32 %.sroa.10.1838, 0
  br i1 %.not.i.i.i.i423, label %.critedge.i234, label %bb.ch, !prof !21

bb.ch:                                            ; preds = %bb.cg
  %i.xd = zext i32 %.sroa.10.1838 to i64
  %i.xe = shl nuw nsw i64 %i.xd, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xc, ptr nonnull readonly align 1 %.sroa.16.1839, i64 %i.xe, i1 false), !alias.scope !625
  br label %.critedge.i234

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i: ; preds = %bb.ce, %bb.cd
  %i.xf = phi ptr [ null, %bb.ce ], [ %.sroa.16.1839, %bb.cd ]
  %i.xg = shl nuw i32 %i.ww, 4
  %i.xh = zext i32 %i.xg to i64
  %i.xi = call ptr @hb_realloc(ptr noundef %i.xf, i64 noundef %i.xh) #18 ; 2 uses
  %.not22.i415 = icmp eq ptr %i.xi, null
  br i1 %.not22.i415, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i234, !prof !118

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i, %bb.cf
  %i.xj = xor i32 %.sroa.0535.1837, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit: ; preds = %bb.cb, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i, %.critedge.i424
  %.sroa.0535.5 = phi i32 [ %.sroa.0535.1837, %bb.cb ], [ %i.xj, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i ], [ %i.wz, %.critedge.i424 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit

.critedge.i234:                                   ; preds = %bb.ca, %bb.cg, %bb.ch, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i, %bb.cc
  %.pre-phi997 = phi i32 [ %.pre996, %bb.cc ], [ 1, %bb.cg ], [ %.pre996, %bb.ch ], [ %.pre996, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i ], [ %.pre996, %bb.ca ]
  %.sroa.0535.3 = phi i32 [ %.sroa.0535.1837, %bb.cc ], [ %i.ww, %bb.cg ], [ %i.ww, %bb.ch ], [ %i.ww, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i ], [ %.sroa.0535.1837, %bb.ca ]
  %.sroa.16.3 = phi ptr [ %.sroa.16.1839, %bb.cc ], [ %i.xc, %bb.cg ], [ %i.xc, %bb.ch ], [ %i.xi, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i ], [ %.sroa.16.1839, %bb.ca ] ; 2 uses
  %i.xk = zext i32 %.sroa.10.1838 to i64
  %i.xl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.3, i64 %i.xk ; 2 uses
  store i64 %i.ws, ptr %i.xl, align 8, !tbaa !615
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !137
  br label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit: ; preds = %bb.by, %bb.bx, %.critedge.i234, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit, %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit
  %.sroa.0535.2 = phi i32 [ %.sroa.0535.5, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit ], [ %.sroa.0535.1837, %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit ], [ %.sroa.0535.3, %.critedge.i234 ], [ %.sroa.0535.1837, %bb.bx ], [ %.sroa.0535.1837, %bb.by ] ; 2 uses
  %.sroa.10.2 = phi i32 [ %.sroa.10.1838, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit ], [ %.sroa.10.1838, %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit ], [ %.pre-phi997, %.critedge.i234 ], [ %.sroa.10.1838, %bb.bx ], [ %.sroa.10.1838, %bb.by ] ; 2 uses
  %.sroa.16.2 = phi ptr [ %.sroa.16.1839, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit ], [ %.sroa.16.1839, %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit ], [ %.sroa.16.3, %.critedge.i234 ], [ %.sroa.16.1839, %bb.bx ], [ %.sroa.16.1839, %bb.by ] ; 2 uses
  %indvars.iv.next967 = add nuw nsw i64 %indvars.iv966, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next967 to i32
  %exitcond969.not = icmp eq i32 %i.ry, %lftr.wideiv
  br i1 %exitcond969.not, label %.loopexit, label %bb.bw, !llvm.loop !629

bb.ci:                                            ; preds = %.lr.ph882, %_ZN2OT20delta_row_encoding_tD2Ev.exit274
  %.sroa.32.0881 = phi ptr [ %.sroa.16.1.lcssa, %.lr.ph882 ], [ %.sroa.32.3, %_ZN2OT20delta_row_encoding_tD2Ev.exit274 ] ; 10 uses
  %.sroa.13.0880 = phi i32 [ %.sroa.10.1.lcssa, %.lr.ph882 ], [ %.sroa.13.3, %_ZN2OT20delta_row_encoding_tD2Ev.exit274 ] ; 5 uses
  %.sroa.0478.0879 = phi i32 [ %.sroa.0535.1.lcssa, %.lr.ph882 ], [ %.sroa.0478.3, %_ZN2OT20delta_row_encoding_tD2Ev.exit274 ] ; 9 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.32.0881, align 8, !tbaa !615 ; 6 uses
  %i.xm = add i32 %.sroa.13.0880, -1              ; 8 uses
  %i.xn = zext i32 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.0881, i64 %i.xn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.32.0881, ptr noundef nonnull align 8 dereferenceable(12) %i.xo, i64 12, i1 false), !tbaa.struct !630
  %i.xp = icmp slt i32 %i.xm, 0
  %i.xq = icmp slt i32 %.sroa.0478.0879, 0
  %or.cond = select i1 %i.xp, i1 true, i1 %i.xq, !prof !136
  br i1 %or.cond, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread, label %bb.cj, !prof !136

bb.cj:                                            ; preds = %bb.ci
  %.not.i425 = icmp samesign ugt i32 %i.xm, %.sroa.0478.0879
  br i1 %.not.i425, label %.preheader.i427, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit, !prof !21

.preheader.i427:                                  ; preds = %bb.cj, %.preheader.i427
  %.043.i428 = phi i32 [ %i.xt, %.preheader.i427 ], [ %.sroa.0478.0879, %bb.cj ] ; 2 uses
  %i.xr = lshr i32 %.043.i428, 1
  %i.xs = add nuw i32 %.043.i428, 8
  %i.xt = add nuw i32 %i.xs, %i.xr                ; 6 uses
  %i.xu = icmp ugt i32 %i.xm, %i.xt
  br i1 %i.xu, label %.preheader.i427, label %.thread.i429, !llvm.loop !624

.thread.i429:                                     ; preds = %.preheader.i427
  %i.xv = icmp ugt i32 %i.xt, 268435455
  br i1 %i.xv, label %.critedge.i444, label %bb.ck, !prof !21

.critedge.i444:                                   ; preds = %.thread.i429
  %i.xw = xor i32 %.sroa.0478.0879, -1
  br label %.lr.ph857.preheader

bb.ck:                                            ; preds = %.thread.i429
  %.not49.i431 = icmp eq i32 %.sroa.0478.0879, 0
  %i.xx = shl nuw i32 %i.xt, 4
  %i.xy = zext i32 %i.xx to i64                   ; 2 uses
  br i1 %.not49.i431, label %bb.cl, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i432

bb.cl:                                            ; preds = %bb.ck
  %i.xz = call ptr @hb_malloc(i64 noundef %i.xy) #18 ; 3 uses
  %.not10.i.i.i442 = icmp eq ptr %i.xz, null
  br i1 %.not10.i.i.i442, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i439, label %bb.cm, !prof !21

bb.cm:                                            ; preds = %bb.cl
  %i.ya = zext i32 %.sroa.13.0880 to i64
  %i.yb = shl nuw nsw i64 %i.ya, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xz, ptr nonnull readonly align 8 %.sroa.32.0881, i64 %i.yb, i1 false), !alias.scope !631
  br label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i432: ; preds = %bb.ck
  %i.yc = call ptr @hb_realloc(ptr noundef nonnull %.sroa.32.0881, i64 noundef %i.xy) #18 ; 2 uses
  %.not22.i433 = icmp eq ptr %i.yc, null
  br i1 %.not22.i433, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i439, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread, !prof !118

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i439: ; preds = %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i432, %bb.cl
  %i.yd = xor i32 %.sroa.0478.0879, -1
  br label %.lr.ph857.preheader

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit: ; preds = %bb.cj
  %i.ye = icmp eq i32 %i.xm, 0
  br i1 %i.ye, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i432, %bb.cm, %bb.ci, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit
  %.sroa.32.4707 = phi ptr [ %.sroa.32.0881, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit ], [ %.sroa.32.0881, %bb.ci ], [ %i.yc, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i432 ], [ %i.xz, %bb.cm ] ; 2 uses
  %.sroa.13.5705 = phi i32 [ %i.xm, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit ], [ %.sroa.13.0880, %bb.ci ], [ %i.xm, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i432 ], [ %i.xm, %bb.cm ] ; 2 uses
  %.sroa.0478.4703 = phi i32 [ %.sroa.0478.0879, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit ], [ %.sroa.0478.0879, %bb.ci ], [ %i.xt, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i432 ], [ %i.xt, %bb.cm ] ; 2 uses
  %i.yf = icmp ugt i32 %.sroa.13.5705, 1
  br i1 %i.yf, label %.lr.ph857.preheader, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit

.lr.ph857.preheader:                              ; preds = %.critedge.i444, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i439, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread
  %.sroa.0478.47031140 = phi i32 [ %.sroa.0478.4703, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread ], [ %i.xw, %.critedge.i444 ], [ %i.yd, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i439 ] ; 3 uses
  %.sroa.13.57051139 = phi i32 [ %.sroa.13.5705, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread ], [ %.sroa.13.0880, %.critedge.i444 ], [ %.sroa.13.0880, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i439 ] ; 5 uses
  %.sroa.32.47071138 = phi ptr [ %.sroa.32.4707, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread ], [ %.sroa.32.0881, %.critedge.i444 ], [ %.sroa.32.0881, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i439 ] ; 10 uses
  %.pre985 = load i64, ptr %.sroa.32.47071138, align 8, !tbaa !612 ; 3 uses
  br label %.lr.ph857

.lr.ph857:                                        ; preds = %.lr.ph857.preheader, %bb.cq
  %i.yg = phi i32 [ %i.zb, %bb.cq ], [ 2, %.lr.ph857.preheader ] ; 4 uses
  %i.yh = phi i32 [ %i.za, %bb.cq ], [ 1, %.lr.ph857.preheader ] ; 3 uses
  %.020.i856 = phi i32 [ %.0.i, %bb.cq ], [ 0, %.lr.ph857.preheader ]
  %i.yi = icmp ult i32 %i.yg, %.sroa.13.57051139  ; 2 uses
  %i.yj = zext i32 %.020.i856 to i64
  %i.yk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.47071138, i64 %i.yj ; 2 uses
  %i.yl = zext i32 %i.yh to i64                   ; 2 uses
  %i.ym = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.47071138, i64 %i.yl
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !612 ; 3 uses
  %.not749 = icmp ugt i64 %.pre985, %i.yn
  br i1 %.not749, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph857
  br i1 %i.yi, label %bb.co, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit

bb.co:                                            ; preds = %bb.cn
  %i.yo = zext i32 %i.yg to i64
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.47071138, i64 %i.yo
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !612 ; 2 uses
  %.not750 = icmp ugt i64 %.pre985, %i.yq
  br i1 %.not750, label %.thread709, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit

bb.cp:                                            ; preds = %.lr.ph857
  br i1 %i.yi, label %..thread709_crit_edge, label %bb.cq

..thread709_crit_edge:                            ; preds = %bb.cp
  %.phi.trans.insert = zext i32 %i.yg to i64
  %.phi.trans.insert986 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.47071138, i64 %.phi.trans.insert
  %.pre987 = load i64, ptr %.phi.trans.insert986, align 8, !tbaa !612
  br label %.thread709

.thread709:                                       ; preds = %..thread709_crit_edge, %bb.co
  %i.yr = phi i64 [ %.pre987, %..thread709_crit_edge ], [ %i.yq, %bb.co ]
  %i.ys = icmp ult i64 %i.yn, %i.yr
  %spec.select.i = select i1 %i.ys, i32 %i.yh, i32 %i.yg ; 2 uses
  %.pre988 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert989 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.47071138, i64 %.pre988
  %.pre990 = load i64, ptr %.phi.trans.insert989, align 8, !tbaa !615
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.thread709
  %i.yt = phi i64 [ %i.yn, %bb.cp ], [ %.pre990, %.thread709 ]
  %.pre-phi = phi i64 [ %i.yl, %bb.cp ], [ %.pre988, %.thread709 ]
  %.0.i = phi i32 [ %i.yh, %bb.cp ], [ %spec.select.i, %.thread709 ] ; 2 uses
  %i.yu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.47071138, i64 %.pre-phi ; 2 uses
  store i64 %i.yt, ptr %i.yk, align 8, !tbaa !615
  store i64 %.pre985, ptr %i.yu, align 8, !tbaa !615
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 8 ; 2 uses
  %i.yx = load i32, ptr %i.yv, align 8, !tbaa !137
  %i.yy = load i32, ptr %i.yw, align 8, !tbaa !137
  store i32 %i.yy, ptr %i.yv, align 8, !tbaa !137
  store i32 %i.yx, ptr %i.yw, align 8, !tbaa !137
  %i.yz = shl i32 %.0.i, 1                        ; 2 uses
  %i.za = or disjoint i32 %i.yz, 1                ; 2 uses
  %i.zb = add nuw i32 %i.yz, 2
  %i.zc = icmp ult i32 %i.za, %.sroa.13.57051139
  br i1 %i.zc, label %.lr.ph857, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit: ; preds = %bb.cq, %bb.co, %bb.cn, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit
  %.sroa.32.4708 = phi ptr [ %.sroa.32.0881, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit ], [ %.sroa.32.4707, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread ], [ %.sroa.32.47071138, %bb.cn ], [ %.sroa.32.47071138, %bb.co ], [ %.sroa.32.47071138, %bb.cq ] ; 4 uses
  %.sroa.13.5706 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit ], [ 1, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread ], [ %.sroa.13.57051139, %bb.cn ], [ %.sroa.13.57051139, %bb.co ], [ %.sroa.13.57051139, %bb.cq ] ; 4 uses
  %.sroa.0478.4704 = phi i32 [ %.sroa.0478.0879, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit ], [ %.sroa.0478.4703, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread ], [ %.sroa.0478.47031140, %bb.cn ], [ %.sroa.0478.47031140, %bb.co ], [ %.sroa.0478.47031140, %bb.cq ] ; 4 uses
  %i.zd = lshr i64 %.sroa.0.0.copyload.i, 20      ; 3 uses
  %i.ze = trunc i64 %i.zd to i32
  %i.zf = and i32 %i.ze, 1048575                  ; 2 uses
  %i.zg = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.zh = and i32 %i.zg, 1048575                  ; 2 uses
  %i.zi = lshr i32 %i.zf, 9                       ; 3 uses
  %i.zj = load atomic i32, ptr %i.tj monotonic, align 8 ; 2 uses
  %i.zk = load i32, ptr %i.tl, align 4, !tbaa !505 ; 6 uses
  %i.zl = icmp ult i32 %i.zj, %i.zk
  %i.zm = load ptr, ptr %i.tm, align 8, !tbaa !439 ; 6 uses
  br i1 %i.zl, label %bb.cr, label %._crit_edge.i.i.i.i, !prof !142

bb.cr:                                            ; preds = %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit
  %i.zn = zext i32 %i.zj to i64                   ; 2 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.zn
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !506
  %.not.i.i.i.i238 = icmp eq i32 %i.zp, %i.zi
  br i1 %.not.i.i.i.i238, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.cr, %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit
  %.not1.i.i.i.i.i.i.i.i = icmp sgt i32 %i.zk, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %i.zq = add nsw i32 %i.zk, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cv, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i, %bb.cv ], [ %i.zq, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i, %bb.cv ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.zr = add i32 %.0212.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i
  %i.zs = lshr i32 %i.zr, 1                       ; 4 uses
  %i.zt = zext nneg i32 %i.zs to i64              ; 2 uses
  %i.zu = shl nuw nsw i64 %i.zt, 3
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.zu
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !506 ; 2 uses
  %i.zx = icmp slt i32 %i.zi, %i.zw
  br i1 %i.zx, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.zy = add nsw i32 %i.zs, -1
  br label %bb.cv

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i = icmp eq i32 %i.zi, %i.zw
  br i1 %.not28.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zz = add nuw nsw i32 %i.zs, 1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %.223.i.i.i.i.i.i.i.i = phi i32 [ %i.zz, %bb.cu ], [ %.0212.i.i.i.i.i.i.i.i, %bb.cs ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i, %bb.cu ], [ %i.zy, %bb.cs ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !516

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i: ; preds = %bb.ct
  store atomic i32 %i.zs, ptr %i.tj monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i:         ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, %bb.cr
  %i.aaa = phi i64 [ %i.zt, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i ], [ %i.zn, %bb.cr ]
  %.sink.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i, align 8, !tbaa !508 ; 2 uses
  %.not.i.i.i237 = icmp eq ptr %.sink.i.i.i.i, null
  br i1 %.not.i.i.i237, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %_ZNK12hb_bit_set_t3hasEj.exit

_ZNK12hb_bit_set_t3hasEj.exit:                    ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !511
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i, i64 %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aah = lshr i64 %.sroa.0.0.copyload.i, 26
  %i.aai = and i64 %i.aah, 7
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.aag, i64 %i.aai
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !287
  %i.aal = and i64 %i.zd, 63
  %i.aam = shl nuw i64 1, %i.aal
  %i.aan = and i64 %i.aak, %i.aam
  %.not751 = icmp eq i64 %i.aan, 0
  br i1 %.not751, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %_ZN2OT20delta_row_encoding_tD2Ev.exit274, !llvm.loop !635

_ZNK12hb_bit_set_t3hasEj.exit.thread:             ; preds = %bb.cv, %._crit_edge.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i, %_ZNK12hb_bit_set_t3hasEj.exit
  %i.aao = lshr i32 %i.zh, 9                      ; 3 uses
  %i.aap = load atomic i32, ptr %i.tj monotonic, align 8 ; 2 uses
  %i.aaq = icmp ult i32 %i.aap, %i.zk
  br i1 %i.aaq, label %bb.cw, label %._crit_edge.i.i.i.i239, !prof !142

bb.cw:                                            ; preds = %_ZNK12hb_bit_set_t3hasEj.exit.thread
  %i.aar = zext i32 %i.aap to i64                 ; 2 uses
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.aar
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !506
  %.not.i.i.i.i255 = icmp eq i32 %i.aat, %i.aao
  br i1 %.not.i.i.i.i255, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i251, label %._crit_edge.i.i.i.i239

._crit_edge.i.i.i.i239:                           ; preds = %bb.cw, %_ZNK12hb_bit_set_t3hasEj.exit.thread
  %.not1.i.i.i.i.i.i.i.i240 = icmp sgt i32 %i.zk, 0
  br i1 %.not1.i.i.i.i.i.i.i.i240, label %.lr.ph.preheader.i.i.i.i.i.i.i.i242, label %_ZNK12hb_bit_set_t3hasEj.exit256.thread

.lr.ph.preheader.i.i.i.i.i.i.i.i242:              ; preds = %._crit_edge.i.i.i.i239
  %i.aau = add nsw i32 %i.zk, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i243

.lr.ph.i.i.i.i.i.i.i.i243:                        ; preds = %bb.da, %.lr.ph.preheader.i.i.i.i.i.i.i.i242
  %.0203.i.i.i.i.i.i.i.i244 = phi i32 [ %.2.i.i.i.i.i.i.i.i248, %bb.da ], [ %i.aau, %.lr.ph.preheader.i.i.i.i.i.i.i.i242 ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN12hb_hashmap_tIj6TripleLb0EE5allocEj:bb.a
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph54
  %i.ai = lshr i32 %i.ag, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i1 noundef zeroext true) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph54, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph54, !llvm.loop !695

bb.i:                                             ; preds = %bb.e, %.preheader, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !429, !range !132, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !688  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !431
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !142

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !689
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !430  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !137
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !137
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !431
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !696

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !688
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !688
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !170
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !137
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !691
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !693
  %i.bb = shl nuw i32 %i.k, 2
  %i.bc = or disjoint i32 %i.bb, 3
  store i32 %i.bc, ptr %i.ap, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.be = load <2 x i32>, ptr %i.bd, align 4, !tbaa !137
  %i.bf = add <2 x i32> %i.be, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !137
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !694
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp ugt i32 %.0283961, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.k, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x i32> %i.bf, i64 1
  %i.bl = shl i32 %i.bk, 3
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !431 ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = add i32 %i.bm, -8
  %i.bp = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bo) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !427
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 7
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #18 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.e, label %.preheader, !prof !21

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !391
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !427
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %indvars.iv ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.k, i8 0, i64 128, i1 false)
  store atomic i32 1, ptr %i.l monotonic, align 8
  store atomic i8 1, ptr %i.m monotonic, align 4
  store atomic ptr null, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i8 1, ptr %i.o, align 8, !tbaa !535
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 34
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr null, ptr %i.q, align 8, !tbaa !538
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.p, i8 0, i64 18, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store atomic i32 1, ptr %i.r monotonic, align 8
  store atomic i8 1, ptr %i.s monotonic, align 4
  store atomic ptr null, ptr %i.t monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i8 1, ptr %i.u, align 8, !tbaa !539
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 82
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.v, i8 0, i64 18, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.w, i8 0, i64 22, i1 false)
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !390
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = tail call noundef nonnull align 8 dereferenceable(126) ptr @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_taSEOS4_(ptr noundef nonnull align 8 dereferenceable(126) %i.k, ptr noundef nonnull align 8 dereferenceable(126) %i.y) #18 ; 0 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !390
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %indvars.iv
  tail call void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %i.ab) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !391
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.d, label %._crit_edge, !llvm.loop !697

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !390
  tail call void @hb_free(ptr noundef %i.ag) #18
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(126) ptr @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_taSEOS4_(ptr noundef nonnull align 8 dereferenceable(126) %0, ptr noundef nonnull align 8 dereferenceable(126) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !137
  %i.b = load i32, ptr %1, align 8, !tbaa !137
  store i32 %i.b, ptr %0, align 8, !tbaa !137
  store i32 %i.a, ptr %1, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !137
  %i.f = load i32, ptr %i.d, align 4, !tbaa !137
  store i32 %i.f, ptr %i.c, align 4, !tbaa !137
  store i32 %i.e, ptr %i.d, align 4, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !698
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !698
  store ptr %i.j, ptr %i.g, align 8, !tbaa !698
  store ptr %i.i, ptr %i.h, align 8, !tbaa !698
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i8, ptr %i.k, align 8, !tbaa !535, !range !132, !noundef !198
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i8, ptr %i.n, align 8, !range !132
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = select i1 %i.m, i1 %i.p, i1 false, !prof !142
  br i1 %i.q, label %bb.b, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EEaSEOS5_.exit, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 2 uses
  %i.t = load i16, ptr %i.r, align 2, !tbaa !490
  %i.u = load i16, ptr %i.s, align 2, !tbaa !490
  store i16 %i.u, ptr %i.r, align 2, !tbaa !490
  store i16 %i.t, ptr %i.s, align 2, !tbaa !490
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !137
  %i.y = load i32, ptr %i.w, align 4, !tbaa !137
  store i32 %i.y, ptr %i.v, align 4, !tbaa !137
  store i32 %i.x, ptr %i.w, align 4, !tbaa !137
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !137
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !137
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !137
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !137
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !137
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !137
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !137
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !137
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !137
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !137
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !137
  store i32 %i.aj, ptr %i.ai, align 8, !tbaa !137
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !543
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !543
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !543
  store ptr %i.an, ptr %i.am, align 8, !tbaa !543
  br label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EEaSEOS5_.exit

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EEaSEOS5_.exit: ; preds = %bb.a, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !539, !range !132, !noundef !198
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load i8, ptr %i.as, align 8, !range !132
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = select i1 %i.ar, i1 %i.au, i1 false, !prof !142
  br i1 %i.av, label %bb.c, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EEaSEOS4_.exit, !prof !142

bb.c:                                             ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EEaSEOS5_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 82 ; 2 uses
  %i.ay = load i16, ptr %i.aw, align 2, !tbaa !490
  %i.az = load i16, ptr %i.ax, align 2, !tbaa !490
  store i16 %i.az, ptr %i.aw, align 2, !tbaa !490
  store i16 %i.ay, ptr %i.ax, align 2, !tbaa !490
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !137
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !137
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !137
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !137
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 8, !tbaa !137
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !137
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !137
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !137
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !137
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !137
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !137
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !137
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 8, !tbaa !137
  %i.bp = load i32, ptr %i.bn, align 8, !tbaa !137
  store i32 %i.bp, ptr %i.bm, align 8, !tbaa !137
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !137
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !545
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !545
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !545
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !545
  br label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EEaSEOS4_.exit

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EEaSEOS4_.exit: ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EEaSEOS5_.exit, %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bu, ptr noundef nonnull align 8 dereferenceable(14) %i.bv, i64 14, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !395    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !21

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !699

.thread:                                          ; preds = %.preheader, %bb.c
end_hunk_3
begin_hunk_4_@_ZL13hb_qsort_loopIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i8 0, i64 16, i1 false)
  %i.cr = load i64, ptr %i.bq, align 8
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !408
  %i.ct = load <2 x i32>, ptr %i.ci, align 8, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.cu = load i32, ptr %i.br, align 4, !tbaa !137
  store i32 %i.cu, ptr %i.bd, align 8, !tbaa !137
  store i32 0, ptr %i.br, align 4, !tbaa !137
  %i.cv = load i32, ptr %i.cf, align 4, !tbaa !137
  %i.cw = load i32, ptr %i.cl, align 4, !tbaa !137
  store i32 %i.cw, ptr %i.cf, align 4, !tbaa !137
  store i32 %i.cv, ptr %i.cl, align 4, !tbaa !137
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !318
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !318
  store ptr null, ptr %i.cm, align 8, !tbaa !318
  %i.cy = load i64, ptr %i.ce, align 8
  store i64 %i.cy, ptr %i.bq, align 8
  %i.cz = load i32, ptr %i.ci, align 8, !tbaa !137
  %i.da = load i32, ptr %i.cn, align 8, !tbaa !137
  store i32 %i.da, ptr %i.ci, align 8, !tbaa !137
  store i32 %i.cz, ptr %i.cn, align 8, !tbaa !137
  %i.db = load i32, ptr %i.co, align 4, !tbaa !137
  store i32 %i.db, ptr %i.cj, align 4, !tbaa !137
  %i.dc = load ptr, ptr %i.cp, align 8, !tbaa !1197
  store ptr %i.dc, ptr %i.ck, align 8, !tbaa !1197
  %i.dd = load i32, ptr %i.br, align 4, !tbaa !137
  store <2 x i32> %i.cq, ptr %i.br, align 4, !tbaa !137
  %i.de = load ptr, ptr %i.cm, align 8, !tbaa !318
  store ptr %i.ch, ptr %i.cm, align 8, !tbaa !318
  store i64 %i.cr, ptr %i.ce, align 8
  %i.df = load i32, ptr %i.cn, align 8, !tbaa !137
  store <2 x i32> %i.ct, ptr %i.cn, align 8, !tbaa !137
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !1197
  %i.dg = add i32 %i.df, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.dg, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.ag, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  tail call void @hb_free(ptr noundef null) #18
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %i.dh = add i32 %i.dd, -1
  %spec.select.i.i.i1.i.i.i = icmp ult i32 %i.dh, -2
  br i1 %spec.select.i.i.i1.i.i.i, label %bb.ah, label %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge"

"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge": ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i, %bb.ah
  br label %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit", !llvm.loop !1201

bb.ah:                                            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i
  tail call void @hb_free(ptr noundef %i.de) #18
  br label %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge"

bb.ai:                                            ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit80.thread
  tail call fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %i.ay)
  %i.di = ptrtoint ptr %i.bd to i64
  %i.dj = ptrtoint ptr %.04891 to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 40                ; 4 uses
  %i.dm = xor i64 %i.dl, -1
  %i.dn = add i64 %.04692, %i.dm                  ; 3 uses
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @_ZL13hb_qsort_loopIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_(ptr noundef nonnull %.04891, i64 noundef %i.dl)
  %i.dp = getelementptr inbounds nuw i8, ptr %.145, i64 80
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %.145, i64 80
  tail call fastcc void @_ZL13hb_qsort_loopIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_(ptr noundef nonnull %i.dq, i64 noundef %i.dn)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.149 = phi ptr [ %i.dp, %bb.aj ], [ %.04891, %bb.ak ]
  %.147 = phi i64 [ %i.dn, %bb.aj ], [ %i.dl, %bb.ak ] ; 2 uses
  %i.dr = icmp ugt i64 %.147, 24
  br i1 %i.dr, label %.lr.ph, label %._crit_edge, !llvm.loop !1202

._crit_edge:                                      ; preds = %bb.al, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load <2 x i32>, ptr %0, align 8, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 16, i1 false)
  %i.o = load i64, ptr %i.d, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !408
  %i.q = load <2 x i32>, ptr %i.e, align 8, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.r = load i32, ptr %1, align 8, !tbaa !137
  store i32 %i.r, ptr %0, align 8, !tbaa !137
  store i32 0, ptr %1, align 8, !tbaa !137
  %i.s = load i32, ptr %i.a, align 4, !tbaa !137
  %i.t = load i32, ptr %i.h, align 4, !tbaa !137
  store i32 %i.t, ptr %i.a, align 4, !tbaa !137
  store i32 %i.s, ptr %i.h, align 4, !tbaa !137
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !318
  store ptr %i.u, ptr %i.b, align 8, !tbaa !318
  store ptr null, ptr %i.i, align 8, !tbaa !318
  %i.v = load i64, ptr %i.j, align 8
  store i64 %i.v, ptr %i.d, align 8
  %i.w = load i32, ptr %i.e, align 8, !tbaa !137
  %i.x = load i32, ptr %i.k, align 8, !tbaa !137
  store i32 %i.x, ptr %i.e, align 8, !tbaa !137
  store i32 %i.w, ptr %i.k, align 8, !tbaa !137
  %i.y = load i32, ptr %i.l, align 4, !tbaa !137
  store i32 %i.y, ptr %i.f, align 4, !tbaa !137
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !1197
  store ptr %i.z, ptr %i.g, align 8, !tbaa !1197
  %i.aa = load i32, ptr %1, align 8, !tbaa !137
  store <2 x i32> %i.n, ptr %1, align 8, !tbaa !137
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !318
  store ptr %i.c, ptr %i.i, align 8, !tbaa !318
  store i64 %i.o, ptr %i.j, align 8
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !137
  store <2 x i32> %i.q, ptr %i.k, align 8, !tbaa !137
  store ptr %i.p, ptr %i.m, align 8, !tbaa !1197
  %i.ad = add i32 %i.ac, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.ad, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.b, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @hb_free(ptr noundef null) #18
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i:   ; preds = %bb.b, %bb.a
  %i.ae = add i32 %i.aa, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.ae, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.c, label %_ZSt4swapIN2OT20delta_row_encoding_tEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i
  tail call void @hb_free(ptr noundef %i.ab) #18
  br label %_ZSt4swapIN2OT20delta_row_encoding_tEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit

_ZSt4swapIN2OT20delta_row_encoding_tEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit: ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !401
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 40
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #18 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.g, label %.preheader, !prof !21

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !402
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2OT20delta_row_encoding_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !401
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.g

bb.d:                                             ; preds = %.lr.ph, %_ZN2OT20delta_row_encoding_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2OT20delta_row_encoding_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %indvars.iv ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i8 0, i64 40, i1 false)
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !403
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv ; 8 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !137
  store i32 %i.n, ptr %i.k, align 8, !tbaa !137
  store i32 0, ptr %i.m, align 4, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !137
  %i.r = load i32, ptr %i.p, align 4, !tbaa !137
  store i32 %i.r, ptr %i.o, align 4, !tbaa !137
  store i32 %i.q, ptr %i.p, align 4, !tbaa !137
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !318
  store ptr %i.u, ptr %i.s, align 8, !tbaa !318
  store ptr null, ptr %i.t, align 8, !tbaa !318
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load i64, ptr %i.w, align 8
  store i64 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !137
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !137
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !137
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !137
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 28 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !137
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !137
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !137
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !137
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1197
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !1197
  store ptr null, ptr %i.ah, align 8, !tbaa !1197
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !403
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %indvars.iv ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !404
  %i.an = add i32 %i.am, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.an, -2
  br i1 %spec.select.i.i.i.i, label %bb.e, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store i32 0, ptr %i.ao, align 4, !tbaa !407
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !408
  tail call void @hb_free(ptr noundef %i.aq) #18
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i:     ; preds = %bb.e, %bb.d
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !409
  %i.as = add i32 %i.ar, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.as, -2
  br i1 %spec.select.i.i.i1.i, label %bb.f, label %_ZN2OT20delta_row_encoding_tD2Ev.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !411
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !412
  tail call void @hb_free(ptr noundef %i.av) #18
  br label %_ZN2OT20delta_row_encoding_tD2Ev.exit

_ZN2OT20delta_row_encoding_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.f, align 4, !tbaa !402
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.d, label %._crit_edge, !llvm.loop !1203

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !403
  tail call void @hb_free(ptr noundef %i.ba) #18
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2OT17item_variations_t8_cmp_rowEPKvS2_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !583    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !199  ; 2 uses
  %.not2126.not = icmp eq i32 %i.c, 0
  br i1 %.not2126.not, label %.split.loop.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !583
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !418
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.loop.exit, label %bb.c, !llvm.loop !1204

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !137  ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !137  ; 2 uses
  %.not = icmp eq i32 %i.j, %i.l
  br i1 %.not, label %bb.b, label %.split.loop.exit22

.split.loop.exit22:                               ; preds = %bb.c
  %i.m = icmp slt i32 %i.j, %i.l
  %i.n = select i1 %i.m, i32 -1, i32 1
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %bb.a, %.split.loop.exit22
  %spec.select = phi i32 [ %i.n, %.split.loop.exit22 ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !325, !range !132, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !471  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !470
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !142

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !465
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !335  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !137
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !137
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !470
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !1205

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !471
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !471
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !468
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !468
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !137
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !498
  %i.ba = load i32, ptr %3, align 4, !tbaa !137
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !500
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !137
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !137
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !501
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !470 ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT18ItemVariationStoreEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !317
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !142

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #18 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !238
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !105
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !318
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !297
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT18ItemVariationStore9serializeEP22hb_serialize_context_tbRK11hb_vector_tIjLb0EERKS3_IPK12hb_hashmap_tIj6TripleLb0EELb0EERKS3_INS_20delta_row_encoding_tELb0EE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105
  %.not11.i.i = icmp eq i32 %i.d, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106  ; 4 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp ugt i64 %i.j, 2147483647
  br i1 %i.k, label %select.unfold.sink.split, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.i
  %i.p = icmp slt i64 %i.o, %i.j
  br i1 %i.p, label %select.unfold.sink.split, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !77

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 0, i64 %i.j, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !106
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  store ptr %i.r, ptr %i.f, align 8, !tbaa !106
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT18ItemVariationStoreEEEPT_S4_.exit, !prof !21

_ZN22hb_serialize_context_t10extend_minIN2OT18ItemVariationStoreEEEPT_S4_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  store i16 256, ptr %0, align 1, !tbaa !331
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = tail call noundef zeroext i1 @_ZN2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE19serialize_serializeIJRK11hb_vector_tIjLb0EERKS6_IPK12hb_hashmap_tIj6TripleLb0EELb0EEEEEbP22hb_serialize_context_tDpOT_(ptr noundef nonnull align 1 dereferenceable(4) %i.t, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.u, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT18ItemVariationStoreEEEPT_S4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !402  ; 5 uses
  %.not17 = icmp eq i32 %i.w, 0
  br i1 %.not17, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.y = trunc i32 %i.w to i16
  %i.z = tail call i16 @llvm.bswap.i16(i16 %i.y)
  store i16 %i.z, ptr %i.x, align 1, !tbaa !331
  %.not.i.i = icmp ult i32 %i.w, 65536
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !105 ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !396

bb.h:                                             ; preds = %bb.g
  %i.ab = or i32 %i.aa, 8
  br label %select.unfold.sink.split

bb.i:                                             ; preds = %bb.g
  %.not11.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not11.i.i.i, label %bb.j, label %select.unfold, !prof !142

bb.j:                                             ; preds = %bb.i
  %i.ac = shl nuw nsw i32 %i.w, 2
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !106 ; 4 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, 2147483647
  br i1 %i.ak, label %select.unfold.sink.split, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.ai
  %i.ao = icmp slt i64 %i.an, %i.aj
  br i1 %i.ao, label %select.unfold.sink.split, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.not.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.not.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.m, !prof !77

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 0, i64 %i.aj, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !106
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.m, %bb.l
  %i.ap = phi ptr [ %.pre.i.i.i.i, %bb.m ], [ %i.ag, %bb.l ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !106
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %select.unfold, label %_ZN22hb_serialize_context_t6extendIN2OT7ArrayOfINS1_8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEENS5_ILb1EtLj2EEEEEJEEEPT_RSA_DpOT0_.exit.preheader, !prof !21

_ZN22hb_serialize_context_t6extendIN2OT7ArrayOfINS1_8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEENS5_ILb1EtLj2EEEEEJEEEPT_RSA_DpOT0_.exit.preheader: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i
  %i.as = load i32, ptr @_hb_NullPool, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit, %_ZN22hb_serialize_context_t6extendIN2OT7ArrayOfINS1_8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEENS5_ILb1EtLj2EEEEEJEEEPT_RSA_DpOT0_.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZN22hb_serialize_context_t6extendIN2OT7ArrayOfINS1_8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEENS5_ILb1EtLj2EEEEEJEEEPT_RSA_DpOT0_.exit.preheader ], [ %indvars.iv.next, %_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit ] ; 5 uses
  %i.au = load i16, ptr %i.x, align 1, !tbaa !264
  %i.av = call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.aw
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !142

bb.o:                                             ; preds = %bb.n
  store i32 %i.as, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit

bb.p:                                             ; preds = %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit

_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit: ; preds = %bb.o, %bb.p
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.ax, %bb.p ]
  %i.ay = load i32, ptr %i.v, align 4, !tbaa !402
  %i.az = zext i32 %i.ay to i64
  %.not.i21 = icmp samesign ult i64 %indvars.iv, %i.az
  %i.ba = load ptr, ptr %i.at, align 8
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %indvars.iv
  %.0.i22 = select i1 %.not.i21, ptr %i.bb, ptr @_hb_NullPool, !prof !142
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i22, i64 24
  %i.bd = call noundef zeroext i1 @_ZN2OT8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EE19serialize_serializeIJRbRK11hb_vector_tIPKS7_IiLb0EELb0EEEEEbP22hb_serialize_context_tDpOT_(ptr noundef nonnull align 1 dereferenceable(4) %.0.i, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.bc) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.bd, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.n, label %select.unfold, !llvm.loop !1206

select.unfold.sink.split:                         ; preds = %bb.j, %bb.k, %bb.b, %bb.c, %bb.h
  %.sink = phi i32 [ %i.ab, %bb.h ], [ 4, %bb.b ], [ 4, %bb.c ], [ 4, %bb.k ], [ 4, %bb.j ]
  store i32 %.sink, ptr %i.c, align 4, !tbaa !105
  br label %select.unfold

select.unfold:                                    ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit, %select.unfold.sink.split, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i, %bb.f, %bb.i, %_ZN22hb_serialize_context_t10extend_minIN2OT18ItemVariationStoreEEEPT_S4_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.i ], [ false, %_ZN22hb_serialize_context_t10extend_minIN2OT18ItemVariationStoreEEEPT_S4_.exit ], [ false, %bb.a ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ false, %select.unfold.sink.split ], [ false, %bb.f ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ %i.bd, %_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_array_t.64, align 8      ; 6 uses
  %3 = alloca %struct.hb_array_t.64, align 8      ; 5 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 8 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !120
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread, label %bb.b, !prof !21

end_hunk_4
begin_hunk_5_@_ZN2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE19serialize_serializeIJRK11hb_vector_tIjLb0EERKS6_IPK12hb_hashmap_tIj6TripleLb0EELb0EEEEEbP22hb_serialize_context_tDpOT_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.l, i1 noundef zeroext false)
  br i1 %i.o, label %bb.e, label %bb.h, !prof !396

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.j, align 4, !tbaa !295  ; 3 uses
  %i.q = icmp ugt i32 %i.l, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = sub nuw nsw i32 %i.l, %i.p
  %i.s = mul i32 %i.r, 12                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !296
  %i.v = zext nneg i32 %i.p to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.v
  %i.x = zext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.x, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.l, ptr %i.j, align 4, !tbaa !295
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !296
  %i.aa = zext i32 %i.k to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.aa
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.ab, %bb.i ] ; 5 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !292
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !105
  %i.ah = or i32 %i.ag, 1
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !105
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ai = load i32, ptr %.0.i.i, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.c, ptr %i.aj, align 4, !tbaa !397
  %i.ak = and i32 %i.ai, -64
  %i.al = or disjoint i32 %i.ak, 4
  store i32 %i.al, ptr %.0.i.i, align 4
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !399
  %i.ao = ptrtoint ptr %0 to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !400
  store i32 4, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_13VarRegionListENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_13VarRegionListENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_13VarRegionListENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.k, %bb.b, %bb.l
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EE19serialize_serializeIJRbRK11hb_vector_tIPKS7_IiLb0EELb0EEEEEbP22hb_serialize_context_tDpOT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 1, !tbaa !331
  %i.a = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT7VarDataEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.b = load i8, ptr %2, align 1, !tbaa !226, !range !132, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call noundef zeroext i1 @_ZN2OT7VarData9serializeEP22hb_serialize_context_tbRK11hb_vector_tIPKS3_IiLb0EELb0EE(ptr noundef nonnull align 1 dereferenceable(8) %i.a, ptr noundef nonnull %1, i1 noundef zeroext %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !105
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp eq i32 %i.e, 0
  %or.cond.not.i = or i1 %i.i, %i.h
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.c, !prof !77

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !295  ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 5 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i32 noundef %i.n, i1 noundef zeroext false)
  br i1 %i.q, label %bb.e, label %bb.h, !prof !396

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.l, align 4, !tbaa !295  ; 3 uses
  %i.s = icmp ugt i32 %i.n, %i.r
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = sub nuw nsw i32 %i.n, %i.r
  %i.u = mul i32 %i.t, 12                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !296
  %i.x = zext nneg i32 %i.r to i64
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.x
  %i.z = zext i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 0, i64 %i.z, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.n, ptr %i.l, align 4, !tbaa !295
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !296
  %i.ac = zext i32 %i.m to i64
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %i.ac
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.ad, %bb.i ] ; 5 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !292
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !105
  %i.aj = or i32 %i.ai, 1
  store i32 %i.aj, ptr %i.f, align 4, !tbaa !105
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ak = load i32, ptr %.0.i.i, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.e, ptr %i.al, align 4, !tbaa !397
  %i.am = and i32 %i.ak, -64
  %i.an = or disjoint i32 %i.am, 4
  store i32 %i.an, ptr %.0.i.i, align 4
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !399
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !400
  store i32 4, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.k, %bb.b, %bb.l
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT13VarRegionListEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !317
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !142

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #18 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !238
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !105
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !318
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !297
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT13VarRegionList9serializeEP22hb_serialize_context_tRK11hb_vector_tIjLb0EERKS3_IPK12hb_hashmap_tIj6TripleLb0EELb0EE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !425  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !422  ; 4 uses
  %i.e = icmp eq i32 %i.b, 0
  %i.f = icmp eq i32 %i.d, 0
  %i.g = mul i32 %i.d, %i.b
  %i.h = icmp ugt i32 %i.g, 715827882
  %i.i = or i1 %i.f, %i.h
  %or.cond68 = select i1 %i.e, i1 true, i1 %i.i
  br i1 %or.cond68, label %select.unfold, label %bb.b, !prof !77

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !105
  %.not11.i.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i.i, label %bb.c, label %select.unfold, !prof !142

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !106  ; 4 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ugt i64 %i.q, 2147483647
  br i1 %i.r, label %select.unfold.sink.split, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.p
  %i.w = icmp slt i64 %i.v, %i.q
  br i1 %i.w, label %select.unfold.sink.split, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.f, !prof !77

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.q, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !106
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.f, %bb.e
  %i.x = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.q
  store ptr %i.y, ptr %i.m, align 8, !tbaa !106
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %select.unfold, label %.lr.ph.preheader, !prof !21

.lr.ph.preheader:                                 ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.aa = trunc i32 %i.b to i16
  %i.ab = tail call i16 @llvm.bswap.i16(i16 %i.aa)
  store i16 %i.ab, ptr %0, align 1, !tbaa !331
  %i.ac = trunc i32 %i.d to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  store i16 %i.ae, ptr %i.ad, align 1, !tbaa !331
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count88 = zext i32 %i.d to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..thread62_crit_edge
  %indvars.iv85 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next86, %..thread62_crit_edge ] ; 3 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !422
  %i.ai = zext i32 %i.ah to i64
  %.not.i = icmp samesign ult i64 %indvars.iv85, %i.ai
  %i.aj = load ptr, ptr %i.af, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv85
  %.0.i = select i1 %.not.i, ptr %i.ak, ptr @_hb_NullPool, !prof !142
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !426
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !137 ; 3 uses
  %i.ao = load ptr, ptr %.0.i, align 8, !tbaa !885 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !430 ; 4 uses
  %.not.i39 = icmp eq ptr %i.aq, null
  br i1 %.not.i39, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = mul i32 %i.an, 506952113
  %i.as = and i32 %i.ar, 1073741823
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !689
  %i.av = urem i32 %i.as, %i.au                   ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = and i32 %i.az, 2
  %.not15.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not15.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = load i32, ptr %i.ax, align 4, !tbaa !137
  %i.be = icmp eq i32 %i.bd, %i.an
  br i1 %i.be, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bf = load i32, ptr %i.bl, align 4, !tbaa !137
  %i.bg = icmp eq i32 %i.bf, %i.an
  br i1 %i.bg, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !771

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.i
  %.01016.i20.i.i = phi i32 [ %i.bj, %bb.i ], [ %i.av, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.bh, %bb.i ], [ 0, %.lr.ph.i.i.i ]
  %i.bh = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.bi = add i32 %i.bh, %.01016.i20.i.i
  %i.bj = and i32 %i.bi, %i.bc                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = and i32 %i.bn, 2
  %.not.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i, label %.loopexit, label %bb.i, !llvm.loop !771

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.az, %.lr.ph.i.i.i ], [ %i.bn, %bb.i ]
  %i.bp = phi i64 [ %i.aw, %.lr.ph.i.i.i ], [ %i.bk, %bb.i ]
  %i.bq = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.bq, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.bp ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load <2 x double>, ptr %i.bs, align 8, !tbaa !683
  %i.bu = fptrunc <2 x double> %i.bt to <2 x float>
  %i.bv = fmul <2 x float> %i.bu, splat (float 1.638400e+04)
  %i.bw = fadd <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bw)
  %i.by = fptosi <2 x float> %i.bx to <2 x i16>
  %i.bz = tail call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !685
  %i.cc = fptrunc double %i.cb to float
  %i.cd = fmul float %i.cc, 1.638400e+04
  %i.ce = fadd float %i.cd, 5.000000e-01
  %i.cf = tail call noundef float @llvm.floor.f32(float %i.ce)
  %i.cg = fptosi float %i.cf to i16
  %i.ch = tail call i16 @llvm.bswap.i16(i16 %i.cg)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, %bb.h, %bb.g, %bb.j
  %.sroa.7.0 = phi i16 [ %i.ch, %bb.j ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ci = phi <2 x i16> [ %i.bz, %bb.j ], [ zeroinitializer, %bb.g ], [ zeroinitializer, %bb.h ], [ zeroinitializer, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i ], [ zeroinitializer, %.lr.ph.i.i ]
  %i.cj = load i32, ptr %i.j, align 4, !tbaa !105
  %.not.i.i.i41 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i41, label %bb.k, label %select.unfold, !prof !142

bb.k:                                             ; preds = %.loopexit
  %i.ck = load ptr, ptr %i.s, align 8, !tbaa !107
  %i.cl = load ptr, ptr %i.m, align 8, !tbaa !106 ; 5 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp slt i64 %i.co, 6
  br i1 %i.cp, label %select.unfold.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT13VarRegionAxisEEEPT_mb.exit.i.i, !prof !21

_ZN22hb_serialize_context_t13allocate_sizeIN2OT13VarRegionAxisEEEPT_mb.exit.i.i: ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  store ptr %i.cq, ptr %i.m, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %select.unfold, label %bb.l, !prof !330

bb.l:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT13VarRegionAxisEEEPT_mb.exit.i.i
  store <2 x i16> %i.ci, ptr %i.cl, align 1, !alias.scope !1213
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i16 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !1213
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..thread62_crit_edge, label %bb.g, !llvm.loop !1217

..thread62_crit_edge:                             ; preds = %bb.l
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %select.unfold, label %.lr.ph, !llvm.loop !1218

select.unfold.sink.split:                         ; preds = %bb.k, %bb.c, %bb.d
  store i32 4, ptr %i.j, align 4, !tbaa !105
  br label %select.unfold

select.unfold:                                    ; preds = %..thread62_crit_edge, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT13VarRegionAxisEEEPT_mb.exit.i.i, %.loopexit, %select.unfold.sink.split, %_ZL9hb_memsetPvij.exit.i.i.i, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %select.unfold.sink.split ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT13VarRegionAxisEEEPT_mb.exit.i.i ], [ false, %bb.b ], [ false, %.loopexit ], [ true, %..thread62_crit_edge ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !292    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !21

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !1219

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !21

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !296
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !296  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !295  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !296
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1220
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 12
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !292   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !296
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !292
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT7VarDataEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !317
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !142

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #18 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !238
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !105
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !318
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !297
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT7VarData9serializeEP22hb_serialize_context_tbRK11hb_vector_tIPKS3_IiLb0EELb0EE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_map_t, align 8           ; 15 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !407  ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !105
  %.not11.i.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i.i, label %bb.c, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit, !prof !142

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106  ; 4 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp ugt i64 %i.l, 2147483647
  br i1 %i.m, label %.critedge.i.i.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.k
  %i.r = icmp slt i64 %i.q, %i.l
  br i1 %i.r, label %.critedge.i.i.i, label %bb.e, !prof !21

.critedge.i.i.i:                                  ; preds = %bb.d, %bb.c
  store i32 4, ptr %i.e, align 4, !tbaa !105
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.f, !prof !77

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.l, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !106
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.f, %bb.e
  %i.s = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  store ptr %i.t, ptr %i.h, align 8, !tbaa !106
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit, label %_ZN22hb_serialize_context_t10extend_minIN2OT7VarDataEEEPT_S4_.exit, !prof !21

_ZN22hb_serialize_context_t10extend_minIN2OT7VarDataEEEPT_S4_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.v = trunc i32 %i.d to i16
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.v)
  store i16 %i.w, ptr %0, align 1, !tbaa !331
  %.not.i.i = icmp ult i32 %i.d, 65536
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !396

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7VarDataEEEPT_S4_.exit
  %i.x = load i32, ptr %i.e, align 4, !tbaa !105
  %i.y = or i32 %i.x, 8
  store i32 %i.y, ptr %i.e, align 4, !tbaa !105
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit

bb.h:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7VarDataEEEPT_S4_.exit
  %i.z = select i1 %2, i32 -65536, i32 -128       ; 2 uses
  %i.aa = select i1 %2, i32 65535, i32 127        ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !407
  %.not.i.not = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.i = select i1 %.not.i.not, ptr @_hb_NullPool, ptr %i.ad, !prof !21
  %i.ae = load ptr, ptr %.0.i, align 8, !tbaa !583
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !199 ; 8 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %.not.i120.not = icmp eq i32 %i.ag, 0           ; 3 uses
  br i1 %.not.i120.not, label %._crit_edge, label %.preheader.i, !prof !142

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.043.i = phi i32 [ %i.ak, %.preheader.i ], [ 0, %bb.i ] ; 2 uses
  %i.ai = lshr i32 %.043.i, 1
  %i.aj = add nuw i32 %.043.i, 8
  %i.ak = add nuw i32 %i.aj, %i.ai                ; 4 uses
  %i.al = icmp ugt i32 %i.ag, %i.ak
  br i1 %i.al, label %.preheader.i, label %.thread.i, !llvm.loop !1224

.thread.i:                                        ; preds = %.preheader.i
  %i.am = icmp ugt i32 %i.ak, 1073741823
  br i1 %i.am, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EE14realloc_vectorISA_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSA_j11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EE14realloc_vectorISA_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSA_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.an = shl nuw i32 %i.ak, 2
  %i.ao = zext i32 %i.an to i64
  %i.ap = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ao) #18 ; 4 uses
  %.not22.i = icmp eq ptr %i.ap, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit, label %bb.j, !prof !118

bb.j:                                             ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EE14realloc_vectorISA_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSA_j11hb_priorityILj0EE.exit.i
  %i.aq = shl i32 %i.ag, 2                        ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %.preheader217.lr.ph, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.ar = zext i32 %i.aq to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ap, i8 0, i64 %i.ar, i1 false)
  br label %.preheader217.lr.ph

.preheader217.lr.ph:                              ; preds = %bb.j, %bb.k
  %i.as = load i32, ptr %i.c, align 4, !tbaa !407
  %i.at = load i32, ptr @_hb_NullPool, align 16
  %i.au = zext i32 %i.as to i64                   ; 2 uses
  %i.av = zext nneg i32 %i.ag to i64
  %wide.trip.count282 = zext nneg i32 %i.ag to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  %wide.trip.count277 = zext nneg i32 %i.d to i64
  br label %.preheader217

.preheader217:                                    ; preds = %.preheader217.lr.ph, %.loopexit
  %indvars.iv279 = phi i64 [ 0, %.preheader217.lr.ph ], [ %indvars.iv.next280, %.loopexit ] ; 5 uses
  %.065226 = phi i32 [ 0, %.preheader217.lr.ph ], [ %.368, %.loopexit ] ; 3 uses
  %.not.i89 = icmp samesign ult i64 %indvars.iv279, %i.av
  %.not.i89.fr = freeze i1 %.not.i89              ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv279 ; 2 uses
  br i1 %.not.i89.fr, label %.preheader217.split.us, label %.preheader217.split.preheader, !prof !142

.preheader217.split.preheader:                    ; preds = %.preheader217
  %.pre = load ptr, ptr %i.ac, align 8
  br label %.preheader217.split

.preheader217.split.us:                           ; preds = %.preheader217, %bb.m
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %bb.m ], [ 0, %.preheader217 ] ; 3 uses
  %.not.i85.us = icmp samesign ult i64 %indvars.iv274, %i.au
  %i.ax = load ptr, ptr %i.ac, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv274
  %.0.i86.us = select i1 %.not.i85.us, ptr %i.ay, ptr @_hb_NullPool, !prof !142
  %i.az = load ptr, ptr %.0.i86.us, align 8, !tbaa !583
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !418
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv279
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !137 ; 3 uses
  %i.be = icmp slt i32 %i.bd, %i.z
  %i.bf = icmp sgt i32 %i.bd, %i.aa
  %or.cond.us = or i1 %i.be, %i.bf
  br i1 %or.cond.us, label %.split.us, label %bb.l

bb.l:                                             ; preds = %.preheader217.split.us
  %.not83.us = icmp eq i32 %i.bd, 0
  br i1 %.not83.us, label %bb.m, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EEixEi.exit91.us

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EEixEi.exit91.us: ; preds = %bb.l
  store i32 1, ptr %i.aw, align 4, !tbaa !1225
  br label %bb.m

bb.m:                                             ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EEixEi.exit91.us, %bb.l
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count277
  br i1 %exitcond278.not, label %.loopexit, label %.preheader217.split.us, !llvm.loop !1227

._crit_edge:                                      ; preds = %.loopexit, %bb.i
  %.sroa.15.0353 = phi ptr [ null, %bb.i ], [ %i.ap, %.loopexit ] ; 2 uses
  %.065.lcssa = phi i32 [ 0, %bb.i ], [ %.368, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4
end_hunk_5
begin_hunk_6_@_ZN2OT7VarData9serializeEP22hb_serialize_context_tPKS0_RK14hb_inc_bimap_tS7_PK8hb_set_t:bb.a
  br label %_ZN2OT7VarData19set_item_delta_fastEjjiPNS_7NumTypeILb1EhLj1EEEj.exit

bb.bn:                                            ; preds = %bb.bl
  %i.mt = trunc i32 %.1.i199 to i16
  %i.mu = shl nuw nsw i32 %i.mo, 2
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.mv
  %i.mx = sub nuw nsw i64 %indvars.iv425, %i.mp
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.mw, i64 %i.mx
  %i.mz = tail call i16 @llvm.bswap.i16(i16 %i.mt)
  store i16 %i.mz, ptr %i.my, align 1, !tbaa !331
  br label %_ZN2OT7VarData19set_item_delta_fastEjjiPNS_7NumTypeILb1EhLj1EEEj.exit

bb.bo:                                            ; preds = %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit203
  br i1 %i.mq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.na = trunc i32 %.1.i199 to i16
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %indvars.iv425
  %i.nc = tail call i16 @llvm.bswap.i16(i16 %i.na)
  store i16 %i.nc, ptr %i.nb, align 1, !tbaa !331
  br label %_ZN2OT7VarData19set_item_delta_fastEjjiPNS_7NumTypeILb1EhLj1EEEj.exit

bb.bq:                                            ; preds = %bb.bo
  %i.nd = trunc i32 %.1.i199 to i8
  %i.ne = shl nuw nsw i32 %i.mo, 1
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.nf
  %i.nh = sub nuw nsw i64 %indvars.iv425, %i.mp
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nh
  store i8 %i.nd, ptr %i.ni, align 1, !tbaa !331
  br label %_ZN2OT7VarData19set_item_delta_fastEjjiPNS_7NumTypeILb1EhLj1EEEj.exit

_ZN2OT7VarData19set_item_delta_fastEjjiPNS_7NumTypeILb1EhLj1EEEj.exit: ; preds = %bb.bm, %bb.bn, %bb.bp, %bb.bq
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count428
  br i1 %exitcond429.not, label %._crit_edge386, label %bb.ba, !llvm.loop !1339

select.unfold345.sink.split:                      ; preds = %bb.ao, %bb.ap, %bb.an
  %.sink = phi i32 [ 1, %bb.an ], [ 4, %bb.ap ], [ 4, %bb.ao ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !105
  br label %select.unfold345

select.unfold345:                                 ; preds = %._crit_edge386, %select.unfold345.sink.split, %_ZN22hb_serialize_context_t6extendIN2OT7VarDataEJEEEPT_S4_DpOT0_.exit._crit_edge, %.lr.ph389, %_ZL9hb_memsetPvij.exit.i.i.i181, %._crit_edge379
  %.0134 = phi i1 [ false, %_ZL9hb_memsetPvij.exit.i.i.i181 ], [ false, %._crit_edge379 ], [ true, %_ZN22hb_serialize_context_t6extendIN2OT7VarDataEJEEEPT_S4_DpOT0_.exit._crit_edge ], [ false, %select.unfold345.sink.split ], [ true, %.lr.ph389 ], [ true, %._crit_edge386 ] ; 2 uses
  br i1 %.sroa.0232.0315, label %bb.br, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.br:                                            ; preds = %select.unfold345
  tail call void @hb_free(ptr noundef %.sroa.14.1317) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %select.unfold345, %bb.br
  %i.nj = add i32 %.sroa.0252.0288300313, -1
  %spec.select.i.i.i206 = icmp ult i32 %i.nj, -2
  br i1 %spec.select.i.i.i206, label %bb.bs, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EED2Ev.exit

bb.bs:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  tail call void @hb_free(ptr noundef %.sroa.16.1286301311) #18
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EED2Ev.exit

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EED2Ev.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i, %bb.bs, %_ZN11hb_vector_tIjLb0EED2Ev.exit, %.critedge.i.i.i, %bb.a
  %.1135 = phi i1 [ %.0134, %bb.bs ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ %.0134, %_ZN11hb_vector_tIjLb0EED2Ev.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ]
  ret i1 %.1135
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE19serialize_serializeIJRNS_23index_map_subset_plan_tEEEEbP22hb_serialize_context_tDpOT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 1, !tbaa !331
  %i.a = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT16DeltaSetIndexMapEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !425
  %i.d = icmp ugt i32 %i.c, 65535                 ; 2 uses
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !331
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18
  br i1 %i.d, label %.split, label %_ZN2OT16DeltaSetIndexMap9serializeINS_23index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_.exit

.split:                                           ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE9serializeINS_23index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.f, label %bb.b, label %bb.l

_ZN2OT16DeltaSetIndexMap9serializeINS_23index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_.exit: ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE9serializeINS_23index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %.split, %_ZN2OT16DeltaSetIndexMap9serializeINS_23index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_.exit
  %i.h = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !105
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp eq i32 %i.h, 0
  %or.cond.not.i = or i1 %i.l, %i.k
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_16DeltaSetIndexMapENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.c, !prof !77

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !133  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !295  ; 2 uses
  %i.q = add i32 %i.p, 1                          ; 5 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.q, i1 noundef zeroext false)
  br i1 %i.t, label %bb.e, label %bb.h, !prof !396

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.o, align 4, !tbaa !295  ; 3 uses
  %i.v = icmp ugt i32 %i.q, %i.u
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = sub nuw nsw i32 %i.q, %i.u
  %i.x = mul i32 %i.w, 12                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !296
  %i.aa = zext nneg i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.aa
  %i.ac = zext i32 %i.x to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ac, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.q, ptr %i.o, align 4, !tbaa !295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !296
  %i.af = zext i32 %i.p to i64
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %i.af
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.ag, %bb.i ] ; 5 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !292
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.al = load i32, ptr %i.i, align 4, !tbaa !105
  %i.am = or i32 %i.al, 1
  store i32 %i.am, ptr %i.i, align 4, !tbaa !105
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.an = load i32, ptr %.0.i.i, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.h, ptr %i.ao, align 4, !tbaa !397
  %i.ap = and i32 %i.an, -64
  %i.aq = or disjoint i32 %i.ap, 4
  store i32 %i.aq, ptr %.0.i.i, align 4
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !133
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !399
  %i.at = ptrtoint ptr %0 to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !400
  store i32 4, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_16DeltaSetIndexMapENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

bb.l:                                             ; preds = %.split, %_ZN2OT16DeltaSetIndexMap9serializeINS_23index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_.exit
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_16DeltaSetIndexMapENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_16DeltaSetIndexMapENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.k, %bb.b, %bb.l
  %.0.i9 = phi i1 [ false, %bb.l ], [ true, %bb.b ], [ true, %bb.k ]
  ret i1 %.0.i9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT16DeltaSetIndexMapEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !317
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !142

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #18 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !238
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !105
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !318
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !297
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE9serializeINS_23index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !474
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !475  ; 4 uses
  %i.e = add i32 %i.b, 7
  %i.f = add i32 %i.e, %i.d
  %.fr58 = freeze i32 %i.f                        ; 2 uses
  %i.g = lshr i32 %.fr58, 3                       ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !426
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !425  ; 4 uses
  %.not = icmp eq i32 %i.k, 0                     ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.d, -17
  %i.m = icmp ult i32 %i.l, -16
  %i.n = add nsw i32 %i.g, -5
  %i.o = icmp ult i32 %i.n, -4
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %select.unfold, label %.critedge, !prof !21

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !105
  %.not11.i.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i.i, label %bb.c, label %select.unfold, !prof !142

bb.c:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !106  ; 4 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp ugt i64 %i.x, 2147483647
  br i1 %i.y, label %select.unfold.sink.split, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !107
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.w
  %i.ad = icmp slt i64 %i.ac, %i.x
  br i1 %i.ad, label %select.unfold.sink.split, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.not.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.f, !prof !77

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 0, i64 %i.x, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !106
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.f, %bb.e
  %i.ae = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.x
  store ptr %i.af, ptr %i.t, align 8, !tbaa !106
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT24DeltaSetIndexMapFormat01INS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit, !prof !21

_ZN22hb_serialize_context_t10extend_minIN2OT24DeltaSetIndexMapFormat01INS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.ah = shl i32 %i.g, 4
  %i.ai = add i32 %i.ah, 240
  %i.aj = add i32 %i.d, 255
  %i.ak = or i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !331
  %i.an = trunc i32 %i.k to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ap = tail call i16 @llvm.bswap.i16(i16 %i.an)
  store i16 %i.ap, ptr %i.ao, align 1, !tbaa !331
  %i.aq = mul i32 %i.g, %i.k                      ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 3 uses
  %i.as = load i32, ptr %i.q, align 4, !tbaa !105
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.g, label %select.unfold, !prof !142

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT24DeltaSetIndexMapFormat01INS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit
  %i.at = icmp slt i32 %i.aq, 0
  br i1 %i.at, label %select.unfold.sink.split, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !107
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !106 ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp slt i64 %i.ay, %i.ar
  br i1 %i.az, label %select.unfold.sink.split, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %.not.i.i.not = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.not, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, label %bb.j, !prof !77

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.ar, i1 false)
  %.pre.i = load ptr, ptr %i.t, align 8, !tbaa !106
  br label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit: ; preds = %bb.i, %bb.j
  %i.ba = phi ptr [ %.pre.i, %bb.j ], [ %i.av, %bb.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ar
  store ptr %i.bb, ptr %i.t, align 8, !tbaa !106
  %.not41 = icmp eq ptr %i.ba, null               ; 2 uses
  %brmerge = or i1 %.not41, %.not
  %not..not41 = xor i1 %.not41, true
  br i1 %brmerge, label %select.unfold, label %.lr.ph56, !prof !1340

.lr.ph56:                                         ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit
  %.not4351 = icmp eq i32 %i.g, 0
  %i.bc = zext nneg i32 %i.g to i64               ; 4 uses
  br i1 %.not4351, label %select.unfold, label %.lr.ph56.split.preheader

.lr.ph56.split.preheader:                         ; preds = %.lr.ph56
  %wide.trip.count = zext i32 %i.k to i64
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bd = icmp ult i32 %.fr58, 32
  br label %.lr.ph56.split

.lr.ph56.split:                                   ; preds = %.lr.ph56.split.preheader, %..loopexit_crit_edge
  %indvars.iv60 = phi i64 [ 0, %.lr.ph56.split.preheader ], [ %indvars.iv.next61, %..loopexit_crit_edge ] ; 2 uses
  %.03754 = phi ptr [ %i.ba, %.lr.ph56.split.preheader ], [ %i.cd, %..loopexit_crit_edge ] ; 6 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv60
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !137 ; 3 uses
  %.not42 = icmp eq i32 %i.bf, 0
  br i1 %.not42, label %..loopexit_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph56.split
  %i.bg = lshr i32 %i.bf, 16
  %i.bh = and i32 %i.bf, 65535
  %i.bi = shl i32 %i.bg, %i.d
  %i.bj = or i32 %i.bi, %i.bh                     ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.bl, %.prol.preheader ], [ %i.bc, %.lr.ph ]
  %.03552.prol = phi i32 [ %i.bn, %.prol.preheader ], [ %i.bj, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.bk = trunc i32 %.03552.prol to i8
  %i.bl = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.03754, i64 %i.bl
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !331
  %i.bn = lshr i32 %.03552.prol, 8                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1341

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bc, %.lr.ph ], [ %i.bl, %.prol.preheader ]
  %.03552.unr = phi i32 [ %i.bj, %.lr.ph ], [ %i.bn, %.prol.preheader ]
  br i1 %i.bd, label %..loopexit_crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.cb, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %.03552 = phi i32 [ 0, %.lr.ph.new ], [ %.03552.unr, %.prol.loopexit ] ; 4 uses
  %i.bo = trunc i32 %.03552 to i8
  %i.bp = getelementptr i8, ptr %.03754, i64 %indvars.iv
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !331
  %i.br = lshr i32 %.03552, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr i8, ptr %.03754, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 -2
end_hunk_6
begin_hunk_7_@_ZN5graph7graph_tD2Ev:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5graph7graph_t8vertex_t20link_positions_validEjb(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.hb_set_t, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store atomic i32 1, ptr %3 monotonic, align 8
  store atomic i8 1, ptr %i.d monotonic, align 4
  store atomic ptr null, ptr %i.e monotonic, align 8
  store i8 1, ptr %i.f, align 8, !tbaa !361
  store i32 0, ptr %i.g, align 4, !tbaa !282
  store atomic i32 0, ptr %i.h monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.i, i8 0, i64 33, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !296  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !295  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = mul nuw nsw i64 %i.n, 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not37 = icmp eq i32 %i.m, 0
  br i1 %.not37, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit
  %.02638 = phi ptr [ %i.k, %.lr.ph ], [ %i.ay, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02638, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !397  ; 2 uses
  %.not32 = icmp uge i32 %i.s, %1
  %.not33 = icmp eq i32 %i.s, 0
  %or.cond = and i1 %2, %.not33
  %or.cond36 = or i1 %.not32, %or.cond
  br i1 %or.cond36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.02638, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !400  ; 5 uses
  %i.v = load i32, ptr %.02638, align 4
  %i.w = and i32 %i.v, 7                          ; 2 uses
  %i.x = add i32 %i.u, -1                         ; 6 uses
  %i.y = add i32 %i.x, %i.w                       ; 4 uses
  %i.z = add nsw i32 %i.w, -5
  %spec.select = icmp ult i32 %i.z, -3
  br i1 %spec.select, label %.critedge, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.aa = zext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !1424
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1425
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not34 = icmp ugt i64 %i.af, %i.aa
  br i1 %.not34, label %bb.e, label %.critedge, !prof !142

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 %i.x, ptr %i.c, align 4, !tbaa !137
  %i.ag = load i8, ptr %i.q, align 8, !tbaa !281, !range !132, !noundef !198
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.c)
  %.pre.i.i = load i32, ptr %i.c, align 4
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 %i.x, ptr %i.a, align 4, !tbaa !137
  %i.aj = icmp eq i32 %i.x, -2
  br i1 %i.aj, label %bb.k, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.x, ptr %i.b, align 4, !tbaa !137
  %i.ak = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.b) ; 0 uses
  %i.al = load i32, ptr %i.b, align 4, !tbaa !137
  %i.am = icmp ult i32 %i.u, %i.al
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.x, ptr %i.b, align 4, !tbaa !137
  %i.an = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !137
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  %i.aq = icmp ne i32 %i.ap, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i.i.i = phi i32 [ %i.ap, %bb.i ], [ %i.u, %bb.h ]
  %.0.i.i.i = phi i1 [ %i.aq, %bb.i ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.ar = phi i32 [ %.sink.i.i.i, %bb.j ], [ -1, %bb.g ]
  %.1.i.i.i = phi i1 [ %.0.i.i.i, %bb.j ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit: ; preds = %bb.f, %bb.k
  %i.as = phi i32 [ %.pre.i.i, %bb.f ], [ %i.ar, %bb.k ]
  %.2.i.i.i = phi i1 [ %i.ai, %bb.f ], [ %.1.i.i.i, %bb.k ]
  %i.at = icmp ule i32 %i.as, %i.y
  %i.au = select i1 %.2.i.i.i, i1 %i.at, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br i1 %i.au, label %.critedge, label %bb.l, !prof !21

bb.l:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit
  %i.av = load i8, ptr %i.q, align 8, !tbaa !281, !range !132, !noundef !198
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.m, label %bb.n, !prof !21

bb.m:                                             ; preds = %bb.l
  call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %i.u, i32 noundef %i.y)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %i.u, i32 noundef %i.y) ; 0 uses
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit: ; preds = %bb.m, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.02638, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.o
  br i1 %.not, label %.critedge35.loopexit, label %bb.b

.critedge35.loopexit:                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit
  %.pre = load i8, ptr %i.f, align 8, !tbaa !361, !range !132
  %i.az = trunc nuw i8 %.pre to i1
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit, %bb.a, %.critedge35.loopexit
  %.4 = phi i1 [ true, %bb.a ], [ %i.az, %.critedge35.loopexit ], [ false, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !1360
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 216
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #18 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.k, label %.preheader, !prof !21

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1354
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !1360
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5graph7graph_t8vertex_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %indvars.iv ; 28 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.n, align 4, !tbaa !1445
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store atomic i32 1, ptr %i.o monotonic, align 8
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 1, ptr %i.r, align 8, !tbaa !1499
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !1450
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.s, i8 0, i64 18, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 148
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 164
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store atomic i32 1, ptr %i.u monotonic, align 8
  store atomic i8 1, ptr %i.v monotonic, align 4
  store atomic ptr null, ptr %i.w monotonic, align 8
  store i8 1, ptr %i.x, align 8, !tbaa !361
  store i32 0, ptr %i.y, align 4, !tbaa !282
  store atomic i32 0, ptr %i.z monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aa, i8 0, i64 33, i1 false)
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !1362
  %i.ac = getelementptr inbounds nuw [216 x i8], ptr %i.ab, i64 %indvars.iv ; 17 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, ptr noundef nonnull align 8 dereferenceable(216) %i.ac, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !137
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !137
  store i32 0, ptr %i.ad, align 8, !tbaa !137
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !137
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !137
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !137
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1500
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1500
  store ptr null, ptr %i.ak, align 8, !tbaa !1500
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !137
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !137
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !137
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !137
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !137
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !137
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !137
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !137
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !1500
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !306
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !306
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !1500
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.m, ptr noundef nonnull align 8 dereferenceable(33) %i.ay, i64 33, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ba = load i8, ptr %i.az, align 8, !range !132
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, !prof !142

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 114 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !490
  store i16 %i.bd, ptr %i.s, align 2, !tbaa !490
  store i16 0, ptr %i.bc, align 2, !tbaa !490
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 116 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 116 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !137
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !137
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !137
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !137
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !137
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !137
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !137
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !137
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 124 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 124 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !137
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !137
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !137
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !137
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 8, !tbaa !137
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !137
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !137
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !137
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1501
  store ptr %i.bv, ptr %i.t, align 8, !tbaa !1501
  store ptr null, ptr %i.bu, align 8, !tbaa !1501
  br label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i

_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i:          ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !132
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.f, label %_ZN5graph7graph_t8vertex_taSEOS1_.exit, !prof !21

bb.f:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 208 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !226, !range !132, !noundef !198
  store i8 %i.cb, ptr %i.bz, align 8, !tbaa !226
  store i8 0, ptr %i.ca, align 8, !tbaa !226
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull align 8 dereferenceable(49) %i.bw)
  br label %_ZN5graph7graph_t8vertex_taSEOS1_.exit

_ZN5graph7graph_t8vertex_taSEOS1_.exit:           ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, %bb.f
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !1362
  %i.cd = getelementptr inbounds nuw [216 x i8], ptr %i.cc, i64 %indvars.iv ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ce) #18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  store atomic i32 -57005, ptr %i.cf monotonic, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 104 ; 2 uses
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %i.ch)
  %i.cj = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.ch) #18 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.ch) #18
  store atomic ptr null, ptr %i.cg monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1450 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.cl) #18
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.h, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !292
  %i.co = add i32 %i.cn, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.co, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.i:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  store i32 0, ptr %i.cp, align 4, !tbaa !295
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !296
  tail call void @hb_free(ptr noundef %i.cr) #18
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.i, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !292
  %i.cu = add i32 %i.ct, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.cu, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.j, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 0, ptr %i.cv, align 4, !tbaa !295
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !296
  tail call void @hb_free(ptr noundef %i.cx) #18
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.f, align 4, !tbaa !1354
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.d, label %._crit_edge, !llvm.loop !1502

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1362
  tail call void @hb_free(ptr noundef %i.dc) #18
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !361, !range !132, !noundef !198
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !range !132
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %_Z4swapR12hb_bit_set_tS0_.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !137
  %i.i = load i32, ptr %i.g, align 4, !tbaa !137
  store i32 %i.i, ptr %i.f, align 4, !tbaa !137
  store i32 %i.h, ptr %i.g, align 4, !tbaa !137
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 8, !tbaa !137
  %i.l = load i32, ptr %i.k, align 8, !tbaa !137
  store i32 %i.l, ptr %i.j, align 8, !tbaa !137
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !137
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !137
  %i.p = load i32, ptr %i.n, align 8, !tbaa !137
  store i32 %i.p, ptr %i.m, align 8, !tbaa !137
  store i32 %i.o, ptr %i.n, align 8, !tbaa !137
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !137
  %i.t = load i32, ptr %i.r, align 4, !tbaa !137
  store i32 %i.t, ptr %i.q, align 4, !tbaa !137
  store i32 %i.s, ptr %i.r, align 4, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !1503
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !1503
  store ptr %i.x, ptr %i.u, align 8, !tbaa !1503
  store ptr %i.w, ptr %i.v, align 8, !tbaa !1503
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !137
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !137
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !137
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !137
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !137
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !137
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !137
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !137
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !1504
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !1504
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !1504
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !1504
  br label %_Z4swapR12hb_bit_set_tS0_.exit

_Z4swapR12hb_bit_set_tS0_.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_hashmap_tIjjLb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #18 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #18
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1450 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN12hb_hashmap_tIjjLb0EE4finiEv.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i
  tail call void @hb_free(ptr noundef nonnull %i.f) #18
  br label %_ZN12hb_hashmap_tIjjLb0EE4finiEv.exit

_ZN12hb_hashmap_tIjjLb0EE4finiEv.exit:            ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !1360   ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread, !prof !21

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !1361

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 19884107
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %bb.f, !prof !21

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !1360   ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !1360
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !1362
  store i32 %.138.i, ptr %0, align 8, !tbaa !1360
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1354 ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.al, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !1362
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [216 x i8], ptr %i.t, i64 %i.u ; 15 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.v, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.w, align 4, !tbaa !1445
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store atomic i32 1, ptr %i.x monotonic, align 8
  store atomic i8 1, ptr %i.y monotonic, align 4
  store atomic ptr null, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i8 1, ptr %i.aa, align 8, !tbaa !1499
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store ptr null, ptr %i.ac, align 8, !tbaa !1450
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ab, i8 0, i64 18, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 148
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 164
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  store atomic i32 1, ptr %i.ad monotonic, align 8
  store atomic i8 1, ptr %i.ae monotonic, align 4
  store atomic ptr null, ptr %i.af monotonic, align 8
  store i8 1, ptr %i.ag, align 8, !tbaa !361
  store i32 0, ptr %i.ah, align 4, !tbaa !282
  store atomic i32 0, ptr %i.ai monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aj, i8 0, i64 33, i1 false)
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !1354
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.o, align 4, !tbaa !1354
  %i.am = icmp ult i32 %i.al, %1
  br i1 %i.am, label %bb.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !1505

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  %i.an = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.an
  br i1 %or.cond, label %bb.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !1354
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17: ; preds = %bb.b, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20 ], [ true, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1354 ; 2 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1362
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %.07 = phi ptr [ %i.i, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.g, %.lr.ph.preheader ] ; 11 uses
  %.046 = phi i32 [ %i.h, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %i.h = add i32 %.046, -1                        ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.07, i64 -216
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -72
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.j) #18
  %i.k = getelementptr inbounds i8, ptr %.07, i64 -120
  store atomic i32 -57005, ptr %i.k monotonic, align 4
  %i.l = getelementptr inbounds i8, ptr %.07, i64 -112 ; 2 uses
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  %i.o = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #18 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.m) #18
  store atomic ptr null, ptr %i.l monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.p = getelementptr inbounds i8, ptr %.07, i64 -80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1450 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.q) #18
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.c, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.07, i64 -184
  %i.s = load i32, ptr %i.r, align 8, !tbaa !292
  %i.t = add i32 %i.s, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.t, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -180
  store i32 0, ptr %i.u, align 4, !tbaa !295
  %i.v = getelementptr inbounds i8, ptr %.07, i64 -176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !296
  tail call void @hb_free(ptr noundef %i.w) #18
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.x = getelementptr inbounds i8, ptr %.07, i64 -200
  %i.y = load i32, ptr %i.x, align 8, !tbaa !292
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.z, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.e, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %.07, i64 -196
  store i32 0, ptr %i.aa, align 4, !tbaa !295
  %i.ab = getelementptr inbounds i8, ptr %.07, i64 -192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !296
  tail call void @hb_free(ptr noundef %i.ac) #18
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1506

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !1354
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_t14update_parentsEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1507, !range !132, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.dp

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1474 ; 5 uses
  %.not296 = icmp eq i32 %i.e, 0
  br i1 %.not296, label %._crit_edge295, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext i32 %i.e to i64         ; 3 uses
  br label %bb.c

.lr.ph292:                                        ; preds = %_ZN5graph7graph_t8vertex_t13reset_parentsEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %wide.trip.count320 = zext i32 %i.e to i64
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %_ZN5graph7graph_t8vertex_t13reset_parentsEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5graph7graph_t8vertex_t13reset_parentsEv.exit ] ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !1475
  %i.i = getelementptr inbounds nuw [216 x i8], ptr %i.h, i64 %indvars.iv ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store i32 0, ptr %i.j, align 8, !tbaa !1355
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i8 0, ptr %i.k, align 8, !tbaa !1508
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  store i32 -1, ptr %i.l, align 4, !tbaa !1445
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i8 1, ptr %i.m, align 8, !tbaa !1499
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 116 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1463
  %.not.i.i.i = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %.not8.i.i.i = icmp eq i32 %i.q, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not8.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EE5resetEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 124
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1449
  %.fr15.i.i.i = freeze i32 %i.s
  %i.t = add i32 %.fr15.i.i.i, 1                  ; 2 uses
  %.not912.i.i.i = icmp ult i32 %i.t, 2
  br i1 %.not912.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.t to i64
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1450
  %i.w = add nsw i64 %.idx.i.i.i, -12
  %i.x = urem i64 %i.w, 12
  %i.y = sub nuw nsw i64 %.idx.i.i.i, %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.v, i8 0, i64 %i.y, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %bb.d
  store i32 0, ptr %i.p, align 8, !tbaa !1509
  store i32 0, ptr %i.n, align 4, !tbaa !1463
end_hunk_7
begin_hunk_8_@_ZN5graph7graph_t22sort_shortest_distanceEv:bb.a
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !1348, !range !132, !noundef !198
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN5graph7graph_t13check_successEb.exit.thread, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !268

_ZN5graph7graph_t13check_successEb.exit.thread:   ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  store i8 0, ptr %i.ae, align 1, !tbaa !1348
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !1474 ; 6 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread396.sink.split, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %.not.i92.not = icmp eq i32 %i.ah, 0
  br i1 %.not.i92.not, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread, label %.preheader.i94, !prof !142

.preheader.i94:                                   ; preds = %bb.g, %.preheader.i94
  %.043.i95 = phi i32 [ %i.al, %.preheader.i94 ], [ 0, %bb.g ] ; 2 uses
  %i.aj = lshr i32 %.043.i95, 1
  %i.ak = add nuw i32 %.043.i95, 8
  %i.al = add nuw i32 %i.ak, %i.aj                ; 6 uses
  %i.am = icmp ugt i32 %i.ah, %i.al
  br i1 %i.am, label %.preheader.i94, label %.thread.i96, !llvm.loop !469

.thread.i96:                                      ; preds = %.preheader.i94
  %i.an = icmp ugt i32 %i.al, 1073741823
  br i1 %i.an, label %.thread396.sink.split, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i96
  %i.ao = shl nuw i32 %i.al, 2
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ap) #18 ; 4 uses
  %.not22.i99 = icmp eq ptr %i.aq, null
  br i1 %.not22.i99, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38, label %bb.h, !prof !118

bb.h:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.ar = shl i32 %i.ah, 2                        ; 2 uses
  %.not.i.i.i.i37 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i37, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.as = zext i32 %i.ar to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.as, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread

_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread:   ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.0189.0.ph = phi i32 [ 0, %bb.g ], [ %i.al, %bb.h ], [ %i.al, %bb.i ] ; 5 uses
  %.sroa.13196.0.ph = phi ptr [ null, %bb.g ], [ %i.aq, %bb.h ], [ %i.aq, %bb.i ] ; 7 uses
  %i.at = load i8, ptr %i.ab, align 1, !tbaa !1348, !range !132, !noundef !198
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread396, !prof !134

_ZN11hb_vector_tIjLb0EE6resizeEi.exit38:          ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.pre472 = load i8, ptr %i.ab, align 1, !tbaa !1348, !range !132
  %i.av = trunc nuw i8 %.pre472 to i1
  br i1 %i.av, label %.thread396.sink.split, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !89

bb.j:                                             ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread
  tail call void @_ZN5graph7graph_t14update_parentsEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !425
  %.not.i.not.i.i = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.0.i.i.i = select i1 %.not.i.not.i.i, ptr @_hb_NullPool, ptr %i.az, !prof !21
  %i.ba = load i32, ptr %.0.i.i.i, align 4, !tbaa !137 ; 3 uses
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !1354
  %.not.i.i = icmp ult i32 %i.ba, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = zext i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [216 x i8], ptr %i.bd, i64 %i.be
  %.0.i.i = select i1 %.not.i.i, ptr %i.bf, ptr @_hb_NullPool, !prof !142 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1535
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 76
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !1465 ; 3 uses
  %.not.i.i42 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i42, label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1424
  %i.bm = load ptr, ptr %.0.i.i, align 8, !tbaa !1425
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp eq i32 %i.bj, 1
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = sdiv i64 %i.bp, -2
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit

bb.m:                                             ; preds = %bb.k
  %i.bs = sub nsw i64 0, %i.bp
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit

_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.1.i.i43 = phi i64 [ 0, %bb.j ], [ %i.br, %bb.l ], [ %i.bs, %bb.m ]
  %i.bt = add nsw i64 %.1.i.i43, %i.bh
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.bt, i64 0)
  %i.bu = tail call i64 @llvm.umin.i64(i64 %.sroa.speculate.load.false.sroa.speculated.i, i64 8796093022207)
  %i.bv = icmp ugt i32 %i.bj, 2
  %i.bw = shl nuw nsw i64 %i.bu, 18
  %i.bx = select i1 %i.bv, i64 0, i64 %i.bw
  %.not.i45 = icmp sgt i32 %.sroa.0208.11296, 0
  br i1 %.not.i45, label %.lr.ph439, label %bb.n

bb.n:                                             ; preds = %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit
  %i.by = icmp slt i32 %.sroa.0208.11296, 0
  br i1 %i.by, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.thread.i113, !prof !21

.thread.i113:                                     ; preds = %bb.n
  %.not9.i.i.i125 = icmp eq ptr %.sroa.42.12298, null
  br i1 %.not9.i.i.i125, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, label %bb.o

bb.o:                                             ; preds = %.thread.i113
  %i.bz = tail call ptr @hb_malloc(i64 noundef 128) #18 ; 2 uses
  %.not10.i.i.i126 = icmp eq ptr %i.bz, null
  br i1 %.not10.i.i.i126, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.lr.ph439, !prof !21

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116: ; preds = %.thread.i113
  %i.ca = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #18 ; 2 uses
  %.not22.i117 = icmp eq ptr %i.ca, null
  br i1 %.not22.i117, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.lr.ph439, !prof !118

_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread: ; preds = %bb.n, %bb.o, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116
  %.sroa.42.14 = phi ptr [ %.sroa.42.12298, %bb.n ], [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %.sroa.42.12298, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %.critedge

.lr.ph439:                                        ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, %bb.o, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit
  %.sroa.0208.6 = phi i32 [ %.sroa.0208.11296, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ 8, %bb.o ]
  %.sroa.42.6 = phi ptr [ %.sroa.42.12298, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit ], [ %i.ca, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %i.bz, %bb.o ] ; 3 uses
  store i64 %i.bx, ptr %.sroa.42.6, align 8, !tbaa !615
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.42.6, i64 8
  store i32 %i.ba, ptr %.sroa.4292.0..sroa_idx, align 8, !tbaa !137
  %i.cb = load i32, ptr @_hb_NullPool, align 16   ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.p

.loopexit:                                        ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %i.cd = icmp slt i32 %.sroa.0208.1, 0
  br i1 %i.cd, label %.critedge, label %bb.p, !llvm.loop !1536

bb.p:                                             ; preds = %.lr.ph439, %.loopexit
  %.022438 = phi i32 [ 1, %.lr.ph439 ], [ %.1, %.loopexit ]
  %.023437 = phi i32 [ 0, %.lr.ph439 ], [ %i.dx, %.loopexit ] ; 6 uses
  %.sroa.42.0436 = phi ptr [ %.sroa.42.6, %.lr.ph439 ], [ %.sroa.42.1, %.loopexit ] ; 11 uses
  %.sroa.22.0435 = phi i32 [ 1, %.lr.ph439 ], [ %.sroa.22.1, %.loopexit ] ; 7 uses
  %.sroa.0208.0434 = phi i32 [ %.sroa.0208.6, %.lr.ph439 ], [ %.sroa.0208.1, %.loopexit ] ; 9 uses
  %i.ce = icmp eq i32 %.sroa.22.0435, 0
  br i1 %i.ce, label %_ZN5graph7graph_t13check_successEb.exit81, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.42.0436, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !137 ; 3 uses
  %i.cf = add i32 %.sroa.22.0435, -1              ; 6 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.0436, i64 %i.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.42.0436, ptr noundef nonnull align 8 dereferenceable(12) %i.ch, i64 12, i1 false), !tbaa.struct !630
  %i.ci = icmp slt i32 %i.cf, 0
  br i1 %i.ci, label %.lr.ph428.preheader, label %bb.r, !prof !21

bb.r:                                             ; preds = %bb.q
  %.not.i130 = icmp samesign ugt i32 %i.cf, %.sroa.0208.0434
  br i1 %.not.i130, label %.preheader.i132, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !21

.preheader.i132:                                  ; preds = %bb.r, %.preheader.i132
  %.043.i133 = phi i32 [ %i.cl, %.preheader.i132 ], [ %.sroa.0208.0434, %bb.r ] ; 2 uses
  %i.cj = lshr i32 %.043.i133, 1
  %i.ck = add nuw i32 %.043.i133, 8
  %i.cl = add nuw i32 %i.ck, %i.cj                ; 6 uses
  %i.cm = icmp ugt i32 %i.cf, %i.cl
  br i1 %i.cm, label %.preheader.i132, label %.thread.i134, !llvm.loop !1534

.thread.i134:                                     ; preds = %.preheader.i132
  %i.cn = icmp ugt i32 %i.cl, 268435455
  br i1 %i.cn, label %.critedge.i149, label %bb.s, !prof !21

.critedge.i149:                                   ; preds = %.thread.i134
  %i.co = xor i32 %.sroa.0208.0434, -1
  br label %.lr.ph428.preheader

bb.s:                                             ; preds = %.thread.i134
  %.not49.i136 = icmp eq i32 %.sroa.0208.0434, 0
  %i.cp = shl nuw i32 %i.cl, 4
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  br i1 %.not49.i136, label %bb.t, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137

bb.t:                                             ; preds = %bb.s
  %i.cr = tail call ptr @hb_malloc(i64 noundef %i.cq) #18 ; 3 uses
  %.not10.i.i.i147 = icmp eq ptr %i.cr, null
  br i1 %.not10.i.i.i147, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %bb.u, !prof !21

bb.u:                                             ; preds = %bb.t
  %i.cs = zext i32 %.sroa.22.0435 to i64
  %i.ct = shl nuw nsw i64 %i.cs, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 8 %.sroa.42.0436, i64 %i.ct, i1 false), !alias.scope !1537
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137: ; preds = %bb.s
  %i.cu = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.42.0436, i64 noundef %i.cq) #18 ; 2 uses
  %.not22.i138 = icmp eq ptr %i.cu, null
  br i1 %.not22.i138, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144: ; preds = %bb.t, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137
  %i.cv = xor i32 %.sroa.0208.0434, -1
  br label %.lr.ph428.preheader

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit: ; preds = %bb.u, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137, %bb.r
  %.sroa.0208.13.ph = phi i32 [ %i.cl, %bb.u ], [ %i.cl, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.0208.0434, %bb.r ] ; 2 uses
  %.sroa.42.16.ph = phi ptr [ %i.cr, %bb.u ], [ %i.cu, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.42.0436, %bb.r ] ; 2 uses
  %switch = icmp ult i32 %.sroa.22.0435, 3
  br i1 %switch, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, %.critedge.i149, %bb.q
  %.sroa.0208.8364518 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.cv, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %i.co, %.critedge.i149 ], [ %.sroa.0208.0434, %bb.q ] ; 3 uses
  %.sroa.22.5366517 = phi i32 [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.0435, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %.sroa.22.0435, %.critedge.i149 ], [ %.sroa.22.0435, %bb.q ] ; 5 uses
  %.sroa.42.8368516 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.0436, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %.sroa.42.0436, %.critedge.i149 ], [ %.sroa.42.0436, %bb.q ] ; 10 uses
  %.pre = load i64, ptr %.sroa.42.8368516, align 8, !tbaa !1541 ; 3 uses
  br label %.lr.ph428

.lr.ph428:                                        ; preds = %.lr.ph428.preheader, %bb.y
  %i.cw = phi i32 [ %i.dr, %bb.y ], [ 2, %.lr.ph428.preheader ] ; 4 uses
  %i.cx = phi i32 [ %i.dq, %bb.y ], [ 1, %.lr.ph428.preheader ] ; 3 uses
  %.020.i427 = phi i32 [ %.0.i33, %bb.y ], [ 0, %.lr.ph428.preheader ]
  %i.cy = icmp ult i32 %i.cw, %.sroa.22.5366517   ; 2 uses
  %i.cz = zext i32 %.020.i427 to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.cz ; 2 uses
  %i.db = zext i32 %i.cx to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !1541 ; 3 uses
  %.not.i32 = icmp sgt i64 %.pre, %i.dd
  br i1 %.not.i32, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph428
  br i1 %i.cy, label %bb.w, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.w:                                             ; preds = %bb.v
  %i.de = zext i32 %i.cw to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !1541 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.dg
  br i1 %.not27.i, label %.thread370, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.x:                                             ; preds = %.lr.ph428
  br i1 %i.cy, label %..thread370_crit_edge, label %bb.y

..thread370_crit_edge:                            ; preds = %bb.x
  %.phi.trans.insert = zext i32 %i.cw to i64
  %.phi.trans.insert460 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.phi.trans.insert
  %.pre461 = load i64, ptr %.phi.trans.insert460, align 8, !tbaa !1541
  br label %.thread370

.thread370:                                       ; preds = %..thread370_crit_edge, %bb.w
  %i.dh = phi i64 [ %.pre461, %..thread370_crit_edge ], [ %i.dg, %bb.w ]
  %i.di = icmp slt i64 %i.dd, %i.dh
  %spec.select.i = select i1 %i.di, i32 %i.cx, i32 %i.cw ; 2 uses
  %.pre462 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert463 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.pre462
  %.pre464 = load i64, ptr %.phi.trans.insert463, align 8, !tbaa !615
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread370
  %i.dj = phi i64 [ %i.dd, %bb.x ], [ %.pre464, %.thread370 ]
  %.pre-phi = phi i64 [ %i.db, %bb.x ], [ %.pre462, %.thread370 ]
  %.0.i33 = phi i32 [ %i.cx, %bb.x ], [ %spec.select.i, %.thread370 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.pre-phi ; 2 uses
  store i64 %i.dj, ptr %i.da, align 8, !tbaa !615
  store i64 %.pre, ptr %i.dk, align 8, !tbaa !615
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dl, align 8, !tbaa !137
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !137
  store i32 %i.do, ptr %i.dl, align 8, !tbaa !137
  store i32 %i.dn, ptr %i.dm, align 8, !tbaa !137
  %i.dp = shl i32 %.0.i33, 1                      ; 2 uses
  %i.dq = or disjoint i32 %i.dp, 1                ; 2 uses
  %i.dr = add nuw i32 %i.dp, 2
  %i.ds = icmp ult i32 %i.dq, %.sroa.22.5366517
  br i1 %i.ds, label %.lr.ph428, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit:  ; preds = %bb.y, %bb.w, %bb.v, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.42.8369 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.8368516, %bb.v ], [ %.sroa.42.8368516, %bb.w ], [ %.sroa.42.8368516, %bb.y ] ; 3 uses
  %.sroa.22.5367 = phi i32 [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.5366517, %bb.v ], [ %.sroa.22.5366517, %bb.w ], [ %.sroa.22.5366517, %bb.y ]
  %.sroa.0208.8365 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.0208.8364518, %bb.v ], [ %.sroa.0208.8364518, %bb.w ], [ %.sroa.0208.8364518, %bb.y ] ; 3 uses
  %i.dt = load i32, ptr %i.r, align 4, !tbaa !425 ; 2 uses
  %i.du = icmp uge i32 %.023437, %i.dt
  %i.dv = load i8, ptr %i.ab, align 1, !tbaa !1348, !range !132, !noundef !198
  %i.dw = trunc nuw i8 %i.dv to i1                ; 2 uses
  %brmerge.i49.not = and i1 %i.du, %i.dw
  br i1 %brmerge.i49.not, label %.thread396.sink.split, label %_ZN5graph7graph_t13check_successEb.exit50, !prof !268

_ZN5graph7graph_t13check_successEb.exit50:        ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  br i1 %i.dw, label %bb.z, label %.thread396, !prof !134

bb.z:                                             ; preds = %_ZN5graph7graph_t13check_successEb.exit50
  %i.dx = add i32 %.023437, 1                     ; 2 uses
  %.not.i51 = icmp ult i32 %.023437, %i.dt
  br i1 %.not.i51, label %bb.ab, label %bb.aa, !prof !142

bb.aa:                                            ; preds = %bb.z
  store i32 %i.cb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.dy = load ptr, ptr %i.cc, align 8, !tbaa !426
  %i.dz = zext i32 %.023437 to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.aa, %bb.ab
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.ea, %bb.ab ]
  store i32 %.sroa.2.0.copyload.i, ptr %.0.i52, align 4, !tbaa !137
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !1354
  %.not.i53 = icmp ult i32 %.sroa.2.0.copyload.i, %i.eb
  br i1 %.not.i53, label %bb.ad, label %bb.ac, !prof !142

bb.ac:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.ad:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.ec = load ptr, ptr %i.bc, align 8, !tbaa !1362
  %i.ed = zext i32 %.sroa.2.0.copyload.i to i64
  %i.ee = getelementptr inbounds nuw [216 x i8], ptr %i.ec, i64 %i.ed
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.ac, %bb.ad
  %.0.i54 = phi ptr [ @_hb_CrapPool, %bb.ac ], [ %i.ee, %bb.ad ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i54, i64 20
  %.val.i = load i32, ptr %i.ef, align 4, !tbaa !295, !noalias !1543 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i54, i64 24
  %.val1.i = load ptr, ptr %i.eg, align 8, !tbaa !296, !noalias !1543 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i54, i64 36
  %.val2.i = load i32, ptr %i.eh, align 4, !tbaa !295, !noalias !1543 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i54, i64 40
  %.val3.i = load ptr, ptr %i.ei, align 8, !tbaa !296, !noalias !1543 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.i to i64
  %.sroa.2.8.insert.ext.i.i.i.i6.i.i = zext i32 %.val2.i to i64
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %.val1.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %.val3.i, i64 %.sroa.2.8.insert.ext.i.i.i.i6.i.i
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit, %bb.ay
  %.sroa.0208.1.ph.ph = phi i32 [ %.sroa.0208.8365, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0208.2, %bb.ay ]
  %.sroa.22.1.ph.ph = phi i32 [ %.sroa.22.5367, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.22.2, %bb.ay ]
  %.sroa.42.1.ph.ph = phi ptr [ %.sroa.42.8369, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.42.2, %bb.ay ]
  %.sroa.17.0.ph.ph = phi i32 [ %.val2.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.ho, %bb.ay ]
  %.sroa.13.0.ph.ph = phi ptr [ %.val3.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.hp, %bb.ay ] ; 3 uses
  %.sroa.7.0.ph.ph = phi i32 [ %.val.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ 0, %bb.ay ]
  %.sroa.0172.0.ph.ph = phi ptr [ %.val1.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0172.0, %bb.ay ]
  %.1.ph.ph = phi i32 [ %.022438, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.2, %bb.ay ]
  %.not.i3.i = icmp ne ptr %.sroa.13.0.ph.ph, %i.ek
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer, %bb.ax
  %.sroa.0208.1.ph = phi i32 [ %.sroa.0208.2, %bb.ax ], [ %.sroa.0208.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.22.1.ph = phi i32 [ %.sroa.22.2, %bb.ax ], [ %.sroa.22.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.42.1.ph = phi ptr [ %.sroa.42.2, %bb.ax ], [ %.sroa.42.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.17.0.ph = phi i32 [ 0, %bb.ax ], [ %.sroa.17.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ] ; 3 uses
  %.sroa.7.0.ph = phi i32 [ 0, %bb.ax ], [ %.sroa.7.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.0172.0.ph = phi ptr [ %.sroa.0172.0, %bb.ax ], [ %.sroa.0172.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.1.ph = phi i32 [ %.2, %bb.ax ], [ %.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %i.el = icmp ne i32 %.sroa.17.0.ph, 0
  %i.em = select i1 %.not.i3.i, i1 true, i1 %i.el
  %.not.i.i.i.i58 = icmp eq i32 %.sroa.17.0.ph, 0 ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i58, ptr @_hb_NullPool, ptr %.sroa.13.0.ph.ph, !prof !21
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i
  %.sroa.0208.1 = phi i32 [ %.sroa.0208.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0208.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 16 uses
  %.sroa.22.1 = phi i32 [ %.sroa.22.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.22.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.42.1 = phi ptr [ %.sroa.42.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.42.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.7.0 = phi i32 [ %i.hm, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.7.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 3 uses
  %.sroa.0172.0 = phi ptr [ %i.hn, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0172.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 5 uses
  %.1 = phi i32 [ %.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 4 uses
  %.not.i.i55 = icmp ne ptr %.sroa.0172.0, %i.ej
  %i.en = icmp ne i32 %.sroa.7.0, 0
  %i.eo = select i1 %.not.i.i55, i1 true, i1 %i.en
  %brmerge = select i1 %i.eo, i1 true, i1 %i.em
  br i1 %brmerge, label %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread, label %.loopexit

_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %.not.i.i56 = icmp eq i32 %.sroa.7.0, 0         ; 2 uses
  %.0.i.i57 = select i1 %.not.i.i56, ptr %spec.select.i.i.i.i, ptr %.sroa.0172.0
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i57, i64 8 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !397 ; 2 uses
  %.not.i59 = icmp ult i32 %i.eq, %i.ah
  br i1 %.not.i59, label %bb.af, label %bb.ae, !prof !142

bb.ae:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  store i32 %i.cb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit61

bb.af:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13196.0.ph, i64 %i.er ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5graph7graph_t16update_distancesEv:bb.a
  %.0.i.i = select i1 %.not.i.not.i, ptr @_hb_NullPool, ptr %i.n, !prof !21
  %i.o = load i32, ptr %.0.i.i, align 4, !tbaa !137 ; 2 uses
  %.not.i42 = icmp ult i32 %i.o, %i.e
  br i1 %.not.i42, label %.thread, label %bb.d, !prof !142

.thread:                                          ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1362
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [216 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 0, ptr %i.t, align 8, !tbaa !1535
  br label %.preheader.i.preheader

bb.d:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 56), align 8, !tbaa !1535
  br i1 %.not366, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85, label %.preheader.i.preheader, !prof !134

.preheader.i.preheader:                           ; preds = %.thread, %bb.d
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.043.i = phi i32 [ %i.w, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.u = lshr i32 %.043.i, 1
  %i.v = add i32 %.043.i, 8
  %i.w = add i32 %i.v, %i.u                       ; 5 uses
  %i.x = icmp ugt i32 %i.e, %i.w
  br i1 %i.x, label %.preheader.i, label %.thread.i, !llvm.loop !1534

.thread.i:                                        ; preds = %.preheader.i
  %i.y = icmp ugt i32 %i.w, 268435455
  br i1 %i.y, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.z = shl nuw i32 %i.w, 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.aa) #18 ; 2 uses
  %.not22.i = icmp eq ptr %i.ab, null
  br i1 %.not22.i, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !425
  %.not.i.not.i44 = icmp eq i32 %i.ac, 0
  %i.ad = load ptr, ptr %i.m, align 8
  %.0.i.i45 = select i1 %.not.i.not.i44, ptr @_hb_NullPool, ptr %i.ad, !prof !21
  %i.ae = load i32, ptr %.0.i.i45, align 4, !tbaa !137
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85: ; preds = %bb.d
  %i.af = load i32, ptr %i.k, align 4, !tbaa !425
  %.not.i.not.i44268 = icmp eq i32 %i.af, 0
  %i.ag = load ptr, ptr %i.m, align 8
  %.0.i.i45269 = select i1 %.not.i.not.i44268, ptr @_hb_NullPool, ptr %i.ag, !prof !21
  %i.ah = load i32, ptr %.0.i.i45269, align 4, !tbaa !137
  %i.ai = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #18 ; 2 uses
  %.not22.i86 = icmp eq ptr %i.ai, null
  br i1 %.not22.i86, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %.thread.i, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  %i.aj = phi i32 [ %i.ae, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ah, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.0178.4 = phi i32 [ %i.w, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.43.4 = phi ptr [ %i.ab, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ai, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ] ; 3 uses
  store i64 0, ptr %.sroa.43.4, align 8, !tbaa !615
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.43.4, i64 8
  store i32 %i.aj, ptr %.sroa.4264.0..sroa_idx, align 8, !tbaa !137
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33:     ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread
  %.sroa.43.5284 = phi ptr [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.43.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %.sroa.22.4283 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ 1, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ]
  %.sroa.0178.5282 = phi i32 [ -1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.0178.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !1474 ; 4 uses
  %or.cond = icmp sgt i32 %i.ak, 0
  br i1 %or.cond, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, !prof !1565

.preheader.i.i:                                   ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.an, %.preheader.i.i ], [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ] ; 2 uses
  %i.al = lshr i32 %.053.i.i, 1
  %i.am = add nuw i32 %.053.i.i, 8
  %i.an = add nuw i32 %i.am, %i.al                ; 3 uses
  %i.ao = icmp ugt i32 %i.ak, %i.an
  br i1 %i.ao, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, !llvm.loop !662

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %.preheader.i.i
  %i.ap = zext i32 %i.an to i64
  %i.aq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ap) #18 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.aq, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, label %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, !prof !88

_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i
  %i.ar = zext nneg i32 %i.ak to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit

_ZN11hb_vector_tIbLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %_ZN19hb_priority_queue_tIlE6insertElj.exit33
  %.sroa.0158.1 = phi i1 [ false, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ false, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ true, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ]
  %.sroa.8161.0 = phi i32 [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ 0, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.ak, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 2 uses
  %.sroa.15.1 = phi ptr [ null, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ null, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.aq, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 4 uses
  %i.as = icmp slt i32 %.sroa.0178.5282, 0
  br i1 %i.as, label %.critedge, label %.lr.ph363

.lr.ph363:                                        ; preds = %_ZN11hb_vector_tIbLb0EE6resizeEi.exit
  %i.at = load i8, ptr @_hb_NullPool, align 16    ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.e ]
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i64 9223372036854775807, ptr %i.aw, align 8, !tbaa !1535
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  store i64 9223372036854775807, ptr %i.ay, align 8, !tbaa !1535
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 488
  store i64 9223372036854775807, ptr %i.ba, align 8, !tbaa !1535
  %i.bb = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 704
  store i64 9223372036854775807, ptr %i.bc, align 8, !tbaa !1535
  %i.bd = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 920
  store i64 9223372036854775807, ptr %i.be, align 8, !tbaa !1535
  %i.bf = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1136
  store i64 9223372036854775807, ptr %i.bg, align 8, !tbaa !1535
  %i.bh = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1352
  store i64 9223372036854775807, ptr %i.bi, align 8, !tbaa !1535
  %i.bj = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1568
  store i64 9223372036854775807, ptr %i.bk, align 8, !tbaa !1535
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1566

bb.f:                                             ; preds = %.lr.ph363, %.loopexit
  %.sroa.43.0362 = phi ptr [ %.sroa.43.5284, %.lr.ph363 ], [ %.sroa.43.3, %.loopexit ] ; 12 uses
  %.sroa.22.0361 = phi i32 [ %.sroa.22.4283, %.lr.ph363 ], [ %.sroa.22.3, %.loopexit ] ; 6 uses
  %.sroa.0178.0360 = phi i32 [ %.sroa.0178.5282, %.lr.ph363 ], [ %.sroa.0178.3, %.loopexit ] ; 10 uses
  %i.bl = icmp eq i32 %.sroa.22.0361, 0
  br i1 %i.bl, label %_ZN5graph7graph_t13check_successEb.exit.thread, label %bb.g

_ZN5graph7graph_t13check_successEb.exit.thread:   ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !1348, !range !132, !noundef !198
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.am, label %_ZN5graph7graph_t13check_successEb.exit73

bb.g:                                             ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.43.0362, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !137 ; 5 uses
  %i.bp = add i32 %.sroa.22.0361, -1              ; 7 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.0362, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.43.0362, ptr noundef nonnull align 8 dereferenceable(12) %i.br, i64 12, i1 false), !tbaa.struct !630
  %i.bs = icmp slt i32 %i.bp, 0
  br i1 %i.bs, label %.lr.ph353.preheader, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %.not.i99 = icmp samesign ugt i32 %i.bp, %.sroa.0178.0360
  br i1 %.not.i99, label %.preheader.i101, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !21

.preheader.i101:                                  ; preds = %bb.h, %.preheader.i101
  %.043.i102 = phi i32 [ %i.bv, %.preheader.i101 ], [ %.sroa.0178.0360, %bb.h ] ; 2 uses
  %i.bt = lshr i32 %.043.i102, 1
  %i.bu = add nuw i32 %.043.i102, 8
  %i.bv = add nuw i32 %i.bu, %i.bt                ; 6 uses
  %i.bw = icmp ugt i32 %i.bp, %i.bv
  br i1 %i.bw, label %.preheader.i101, label %.thread.i103, !llvm.loop !1534

.thread.i103:                                     ; preds = %.preheader.i101
  %i.bx = icmp ugt i32 %i.bv, 268435455
  br i1 %i.bx, label %.critedge.i118, label %bb.i, !prof !21

.critedge.i118:                                   ; preds = %.thread.i103
  %i.by = xor i32 %.sroa.0178.0360, -1
  br label %.lr.ph353.preheader

bb.i:                                             ; preds = %.thread.i103
  %.not49.i105 = icmp eq i32 %.sroa.0178.0360, 0
  %i.bz = shl nuw i32 %i.bv, 4
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  br i1 %.not49.i105, label %bb.j, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106

bb.j:                                             ; preds = %bb.i
  %i.cb = tail call ptr @hb_malloc(i64 noundef %i.ca) #18 ; 3 uses
  %.not10.i.i.i116 = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i116, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.cc = zext i32 %.sroa.22.0361 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 8 %.sroa.43.0362, i64 %i.cd, i1 false), !alias.scope !1567
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106: ; preds = %bb.i
  %i.ce = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.43.0362, i64 noundef %i.ca) #18 ; 2 uses
  %.not22.i107 = icmp eq ptr %i.ce, null
  br i1 %.not22.i107, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113: ; preds = %bb.j, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106
  %i.cf = xor i32 %.sroa.0178.0360, -1
  br label %.lr.ph353.preheader

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit: ; preds = %bb.h
  %i.cg = icmp eq i32 %i.bp, 0
  br i1 %i.cg, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106, %bb.k, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.43.6305 = phi ptr [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.ce, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106 ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.0178.6301 = phi i32 [ %.sroa.0178.0360, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.bv, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106 ], [ %i.bv, %bb.k ] ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.bp, 1
  br i1 %i.ch, label %.lr.ph353.preheader, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

.lr.ph353.preheader:                              ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, %.critedge.i118, %bb.g, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread
  %.sroa.0178.6301419 = phi i32 [ %.sroa.0178.6301, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %i.by, %.critedge.i118 ], [ %.sroa.0178.0360, %bb.g ] ; 3 uses
  %.sroa.22.5303418 = phi i32 [ %i.bp, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.22.0361, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %.sroa.22.0361, %.critedge.i118 ], [ %.sroa.22.0361, %bb.g ] ; 5 uses
  %.sroa.43.6305417 = phi ptr [ %.sroa.43.6305, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %.sroa.43.0362, %.critedge.i118 ], [ %.sroa.43.0362, %bb.g ] ; 10 uses
  %.pre = load i64, ptr %.sroa.43.6305417, align 8, !tbaa !1541 ; 3 uses
  br label %.lr.ph353

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %bb.o
  %i.ci = phi i32 [ %i.dd, %bb.o ], [ 2, %.lr.ph353.preheader ] ; 4 uses
  %i.cj = phi i32 [ %i.dc, %bb.o ], [ 1, %.lr.ph353.preheader ] ; 3 uses
  %.020.i352 = phi i32 [ %.0.i41, %bb.o ], [ 0, %.lr.ph353.preheader ]
  %i.ck = icmp ult i32 %i.ci, %.sroa.22.5303418   ; 2 uses
  %i.cl = zext i32 %.020.i352 to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cl ; 2 uses
  %i.cn = zext i32 %i.cj to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !1541 ; 3 uses
  %.not.i40 = icmp sgt i64 %.pre, %i.cp
  br i1 %.not.i40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %bb.m, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cq = zext i32 %i.ci to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1541 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.cs
  br i1 %.not27.i, label %.thread307, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.n:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %..thread307_crit_edge, label %bb.o

..thread307_crit_edge:                            ; preds = %bb.n
  %.phi.trans.insert = zext i32 %i.ci to i64
  %.phi.trans.insert373 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.phi.trans.insert
  %.pre374 = load i64, ptr %.phi.trans.insert373, align 8, !tbaa !1541
  br label %.thread307

.thread307:                                       ; preds = %..thread307_crit_edge, %bb.m
  %i.ct = phi i64 [ %.pre374, %..thread307_crit_edge ], [ %i.cs, %bb.m ]
  %i.cu = icmp slt i64 %i.cp, %i.ct
  %spec.select.i = select i1 %i.cu, i32 %i.cj, i32 %i.ci ; 2 uses
  %.pre375 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert376 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre375
  %.pre377 = load i64, ptr %.phi.trans.insert376, align 8, !tbaa !615
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread307
  %i.cv = phi i64 [ %i.cp, %bb.n ], [ %.pre377, %.thread307 ]
  %.pre-phi = phi i64 [ %i.cn, %bb.n ], [ %.pre375, %.thread307 ]
  %.0.i41 = phi i32 [ %i.cj, %bb.n ], [ %spec.select.i, %.thread307 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre-phi ; 2 uses
  store i64 %i.cv, ptr %i.cm, align 8, !tbaa !615
  store i64 %.pre, ptr %i.cw, align 8, !tbaa !615
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !137
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !137
  store i32 %i.da, ptr %i.cx, align 8, !tbaa !137
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !137
  %i.db = shl i32 %.0.i41, 1                      ; 2 uses
  %i.dc = or disjoint i32 %i.db, 1                ; 2 uses
  %i.dd = add nuw i32 %i.db, 2
  %i.de = icmp ult i32 %i.dc, %.sroa.22.5303418
  br i1 %i.de, label %.lr.ph353, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit:  ; preds = %bb.o, %bb.m, %bb.l, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.43.6306 = phi ptr [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.43.6305, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.43.6305417, %bb.l ], [ %.sroa.43.6305417, %bb.m ], [ %.sroa.43.6305417, %bb.o ] ; 2 uses
  %.sroa.22.5304 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ 1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.22.5303418, %bb.l ], [ %.sroa.22.5303418, %bb.m ], [ %.sroa.22.5303418, %bb.o ] ; 2 uses
  %.sroa.0178.6302 = phi i32 [ %.sroa.0178.0360, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.0178.6301, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.0178.6301419, %bb.l ], [ %.sroa.0178.6301419, %bb.m ], [ %.sroa.0178.6301419, %bb.o ] ; 2 uses
  %.not.i49 = icmp ult i32 %.sroa.2.0.copyload.i, %.sroa.8161.0 ; 2 uses
  br i1 %.not.i49, label %bb.q, label %bb.p, !prof !142

bb.p:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

bb.q:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  %i.df = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.df
  %.pre378 = load i8, ptr %i.dg, align 1, !tbaa !226, !range !132
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

_ZN11hb_vector_tIbLb0EEixEi.exit:                 ; preds = %bb.p, %bb.q
  %i.dh = phi i8 [ %i.at, %bb.p ], [ %.pre378, %bb.q ]
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.loopexit, label %bb.r, !llvm.loop !1571

bb.r:                                             ; preds = %_ZN11hb_vector_tIbLb0EEixEi.exit
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !1354
  %.not.i51 = icmp ult i32 %.sroa.2.0.copyload.i, %i.dj
  br i1 %.not.i51, label %bb.t, label %bb.s, !prof !142

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

bb.t:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !1362
  %i.dl = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dm = getelementptr inbounds nuw [216 x i8], ptr %i.dk, i64 %i.dl
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53: ; preds = %bb.s, %bb.t
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.dm, %bb.t ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i52, i64 56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !1535
  br i1 %.not.i49, label %bb.v, label %bb.u, !prof !142

bb.u:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.v:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  %i.dp = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.dp
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.u, %bb.v
  %.0.i55 = phi ptr [ @_hb_CrapPool, %bb.u ], [ %i.dq, %bb.v ]
  store i8 1, ptr %.0.i55, align 1, !tbaa !226
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i52, i64 20
  %.val.i = load i32, ptr %i.dr, align 4, !tbaa !295, !noalias !1572 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i52, i64 24
  %.val1.i = load ptr, ptr %i.ds, align 8, !tbaa !296, !noalias !1572 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i52, i64 36
  %.val2.i = load i32, ptr %i.dt, align 4, !tbaa !295, !noalias !1572 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i52, i64 40
  %.val3.i = load ptr, ptr %i.du, align 8, !tbaa !296, !noalias !1572 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.i to i64
  %.sroa.2.8.insert.ext.i.i.i.i6.i.i = zext i32 %.val2.i to i64
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %.val1.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %.val3.i, i64 %.sroa.2.8.insert.ext.i.i.i.i6.i.i
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit, %bb.ak
  %.sroa.0178.1.ph.ph = phi i32 [ %.sroa.0178.6302, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0178.2, %bb.ak ]
  %.sroa.22.1.ph.ph = phi i32 [ %.sroa.22.5304, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.22.2, %bb.ak ]
  %.sroa.43.1.ph.ph = phi ptr [ %.sroa.43.6306, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.43.2, %bb.ak ]
  %.sroa.17.0.ph.ph = phi i32 [ %.val2.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.gq, %bb.ak ]
  %.sroa.13.0.ph.ph = phi ptr [ %.val3.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.gr, %bb.ak ] ; 3 uses
  %.sroa.7.0.ph.ph = phi i32 [ %.val.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ 0, %bb.ak ]
  %.sroa.0141.0.ph.ph = phi ptr [ %.val1.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0141.0, %bb.ak ]
  %.not.i3.i = icmp ne ptr %.sroa.13.0.ph.ph, %i.dw
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer, %bb.aj
  %.sroa.0178.1.ph = phi i32 [ %.sroa.0178.2, %bb.aj ], [ %.sroa.0178.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.22.1.ph = phi i32 [ %.sroa.22.2, %bb.aj ], [ %.sroa.22.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.43.1.ph = phi ptr [ %.sroa.43.2, %bb.aj ], [ %.sroa.43.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.17.0.ph = phi i32 [ 0, %bb.aj ], [ %.sroa.17.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ] ; 3 uses
  %.sroa.7.0.ph = phi i32 [ 0, %bb.aj ], [ %.sroa.7.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.0141.0.ph = phi ptr [ %.sroa.0141.0, %bb.aj ], [ %.sroa.0141.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %i.dx = icmp ne i32 %.sroa.17.0.ph, 0
  %i.dy = select i1 %.not.i3.i, i1 true, i1 %i.dx
  %.not.i.i.i.i = icmp eq i32 %.sroa.17.0.ph, 0   ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %.sroa.13.0.ph.ph, !prof !21
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i
  %.sroa.0178.1 = phi i32 [ %.sroa.0178.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0178.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 15 uses
  %.sroa.22.1 = phi i32 [ %.sroa.22.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.22.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 12 uses
  %.sroa.43.1 = phi ptr [ %.sroa.43.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.43.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.7.0 = phi i32 [ %i.go, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.7.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 3 uses
  %.sroa.0141.0 = phi ptr [ %i.gp, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0141.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 5 uses
  %.not.i.i57 = icmp ne ptr %.sroa.0141.0, %i.dv
  %i.dz = icmp ne i32 %.sroa.7.0, 0
  %i.ea = select i1 %.not.i.i57, i1 true, i1 %i.dz
  %brmerge = select i1 %i.ea, i1 true, i1 %i.dy
  br i1 %brmerge, label %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread, label %.loopexit

_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %.not.i.i58 = icmp eq i32 %.sroa.7.0, 0         ; 2 uses
  %.0.i.i59 = select i1 %.not.i.i58, ptr %spec.select.i.i.i.i, ptr %.sroa.0141.0 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i59, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !397 ; 5 uses
  %.not.i60 = icmp ult i32 %i.ec, %.sroa.8161.0
  br i1 %.not.i60, label %bb.x, label %bb.w, !prof !142
end_hunk_9
begin_hunk_10_@_ZN5graph22actuate_subtable_splitINS_18MarkBasePosFormat115split_context_tEEE11hb_vector_tIjLb0EERT_RKS4_:bb.a
  br i1 %i.ay, label %bb.m, label %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.az = xor i32 %i.ax, -1
  br label %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32

_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32:   ; preds = %bb.l, %bb.m
  %i.ba = phi i32 [ %i.ax, %bb.l ], [ %i.az, %bb.m ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !425
  br label %.critedge.sink.split

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.bc = phi i32 [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  store i32 0, ptr %i.f, align 4, !tbaa !425
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32, %bb.n
  %.sink45 = phi i32 [ %i.bc, %bb.n ], [ %i.ba, %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32 ]
  %i.bd = xor i32 %.sink45, -1
  store i32 %i.bd, ptr %0, align 8, !tbaa !424
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.a, %.critedge24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph18MarkBasePosFormat115split_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i32 -57005, ptr %i.a monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.e = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #18 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.c) #18
  store atomic ptr null, ptr %i.b monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1450 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i
  tail call void @hb_free(ptr noundef nonnull %i.g) #18
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2420
  %i.j = add i32 %i.i, -1
  %spec.select.i.i.i = icmp ult i32 %i.j, -2
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2414 ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2410
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %i.o
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.r, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.046.i.i.i = phi i32 [ %i.q, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i ], [ %i.l, %.lr.ph.preheader.i.i.i ]
  %i.q = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -88 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !424
  %i.u = add i32 %i.t, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.u, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.e, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.v, align 4, !tbaa !425
  %i.w = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !426
  tail call void @hb_free(ptr noundef %i.x) #18
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.r) #18
  %.not.i.i.i1 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i1, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2421

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i, %bb.d
  store i32 0, ptr %i.k, align 4, !tbaa !2414
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2410
  tail call void @hb_free(ptr noundef %i.z) #18
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit: ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !2420   ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread, !prof !21

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !2430

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 48806446
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, label %bb.f, !prof !21

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !2420   ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !2420
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !2410
  store i32 %.138.i, ptr %0, align 8, !tbaa !2420
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !2414 ; 5 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.ae, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !2410
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.t, i64 %i.u ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, i8 0, i64 72, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store atomic i32 1, ptr %i.v monotonic, align 8
  store atomic i8 1, ptr %i.w monotonic, align 4
  store atomic ptr null, ptr %i.x monotonic, align 8
  store i8 1, ptr %i.y, align 8, !tbaa !361
  store i32 0, ptr %i.z, align 4, !tbaa !282
  store atomic i32 0, ptr %i.aa monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ab, i8 0, i64 33, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !2414
  %i.ae = add i32 %i.ad, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.o, align 4, !tbaa !2414
  %i.af = icmp ult i32 %i.ae, %1
  br i1 %i.af, label %bb.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !2431

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread
  %i.ag = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.ag
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ah = sub nuw i32 %i.p, %1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2410
  %i.ak = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.ak
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.an, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i ], [ %i.al, %.lr.ph.preheader.i ] ; 4 uses
  %.046.i = phi i32 [ %i.am, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i ], [ %i.ah, %.lr.ph.preheader.i ]
  %i.am = add i32 %.046.i, -1                     ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.07.i, i64 -88 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.07.i, i64 -16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !424
  %i.aq = add i32 %i.ap, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.aq, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.k, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i

bb.k:                                             ; preds = %.lr.ph.i15
  %i.ar = getelementptr inbounds i8, ptr %.07.i, i64 -12
  store i32 0, ptr %i.ar, align 4, !tbaa !425
  %i.as = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !426
  tail call void @hb_free(ptr noundef %i.at) #18
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i: ; preds = %bb.k, %.lr.ph.i15
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.an) #18
  %.not.i16 = icmp eq i32 %i.am, 0
  br i1 %.not.i16, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, label %.lr.ph.i15, !llvm.loop !2421

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i, %bb.i, %bb.j, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !2414
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19: ; preds = %bb.b, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22 ], [ true, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !2420
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 88
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #18 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.g, label %.preheader, !prof !21

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2414
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !2420
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.g

bb.d:                                             ; preds = %.lr.ph, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, i8 0, i64 72, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store atomic i32 1, ptr %i.k monotonic, align 8
  store atomic i8 1, ptr %i.l monotonic, align 4
  store atomic ptr null, ptr %i.m monotonic, align 8
  store i8 1, ptr %i.n, align 8, !tbaa !361
  store i32 0, ptr %i.o, align 4, !tbaa !282
  store atomic i32 0, ptr %i.p monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.q, i8 0, i64 33, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !2410 ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !132
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !226, !range !132, !noundef !198
  store i8 %i.z, ptr %i.x, align 8, !tbaa !226
  store i8 0, ptr %i.y, align 8, !tbaa !226
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.n, ptr noundef nonnull align 8 dereferenceable(49) %i.u)
  %.pre = load i32, ptr %i.r, align 8, !tbaa !137
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !480
  %.pre22 = load ptr, ptr %i.h, align 8, !tbaa !2410
  br label %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit

_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit: ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.s, %bb.d ], [ %.pre22, %bb.e ]
  %i.ab = phi ptr [ null, %bb.d ], [ %.pre21, %bb.e ]
  %i.ac = phi i32 [ 0, %bb.d ], [ %.pre, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !137
  store i32 %i.ae, ptr %i.r, align 8, !tbaa !137
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !137
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 76 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !137
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !137
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !137
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !480
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !480
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !480
  %i.am = getelementptr inbounds nuw [88 x i8], ptr %i.aa, i64 %indvars.iv ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !424
  %i.ap = add i32 %i.ao, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ap, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit

bb.f:                                             ; preds = %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  store i32 0, ptr %i.aq, align 4, !tbaa !425
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !426
  tail call void @hb_free(ptr noundef %i.as) #18
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit, %bb.f
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.am) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load i32, ptr %i.f, align 4, !tbaa !2414
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.d, label %._crit_edge, !llvm.loop !2432

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2410
  tail call void @hb_free(ptr noundef %i.ax) #18
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5graph18MarkBasePosFormat111clone_rangeERNS0_15split_context_tEjjj(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %struct.hb_map_iter_t.639, align 8  ; 6 uses
  %6 = alloca %struct.hb_zip_iter_t.645, align 8  ; 11 uses
  %7 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %8 = alloca %struct.hb_sink_t.654, align 8      ; 4 uses
  %9 = alloca %"struct.graph::graph_t::vertex_and_table_t.638", align 8 ; 5 uses
  %10 = alloca %struct.hb_set_t, align 8          ; 13 uses
  %.sroa.0113 = alloca %struct.hb_filter_iter_t.641, align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !2433, !nonnull !198, !align !1422 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 4 uses
  %i.d = tail call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i32 noundef 12) #18 ; 12 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1354
  %.not.i.i = icmp ult i32 %i.d, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i32 %i.d to i64                     ; 5 uses
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.i, i64 %i.j
  %.0.i.i = select i1 %.not.i.i, ptr %i.k, ptr @_hb_NullPool, !prof !142
  %i.l = load ptr, ptr %.0.i.i, align 8, !tbaa !399 ; 5 uses
  %i.m = load i16, ptr %0, align 1, !tbaa !331
  store i16 %i.m, ptr %i.l, align 1, !tbaa !331
  %i.n = sub i32 %4, %3
  %i.o = trunc i32 %i.n to i16
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  store i16 %i.q, ptr %i.p, align 1, !tbaa !331
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2409 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.f, align 4, !tbaa !1354 ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.s, %i.u
  %i.v = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [216 x i8], ptr %i.v, i64 %i.w
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.x, ptr @_hb_NullPool, !prof !142 ; 4 uses
  %i.y = load ptr, ptr %.0.i.i.i, align 8, !tbaa !399 ; 2 uses
  %i.z = icmp uge ptr %i.t, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i = icmp ult ptr %i.t, %i.ab
  %or.cond.i = select i1 %i.z, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !1237 ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not2427.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1594
  %wide.trip.count.i = zext i32 %i.ad to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.e, !llvm.loop !1595

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !400
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aj
  %.not23.not.i = icmp eq ptr %i.t, %i.ak
  br i1 %.not23.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !397
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit:   ; preds = %bb.d, %bb.b, %bb.c, %.thread.i
  %.4.i = phi i32 [ -1, %bb.b ], [ %i.am, %.thread.i ], [ -1, %bb.c ], [ -1, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.not.i.i51 = icmp ult i32 %i.d, %i.u
  br i1 %.not.i.i51, label %bb.g, label %bb.f, !prof !142

bb.f:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.g:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  %i.ao = getelementptr inbounds nuw [216 x i8], ptr %i.v, i64 %i.j
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i52 = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.ao, %bb.g ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 20 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !295 ; 2 uses
  %i.ar = add i32 %i.aq, 1                        ; 5 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.h, !prof !21

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 16
  %i.au = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i32 noundef %i.ar, i1 noundef zeroext false)
  br i1 %i.au, label %bb.i, label %bb.l, !prof !396

bb.i:                                             ; preds = %bb.h
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !295 ; 3 uses
  %i.aw = icmp ugt i32 %i.ar, %i.av
  br i1 %i.aw, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nuw nsw i32 %i.ar, %i.av
  %i.ay = mul i32 %i.ax, 12                       ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN5graph7graph_t9duplicateEPK8hb_set_tj:bb.a
  store i32 %.sink.i.i.i75, ptr %i.dc, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73: ; preds = %bb.ar, %bb.al
  %i.er = load i32, ptr %i.dg, align 4, !tbaa !381 ; 2 uses
  %.not.i.i74 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i74, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit76, label %bb.as, !prof !21

bb.as:                                            ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr %i.dg, align 4, !tbaa !381
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit76

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit76: ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73, %bb.as
  %i.et = load i32, ptr %i.dc, align 8, !tbaa !382 ; 2 uses
  %.not103 = icmp eq i32 %i.et, -1
  br i1 %.not103, label %._crit_edge112, label %bb.ah

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit
  %.not.i.i77 = icmp eq i32 %.sroa.7.0, 0
  %.not.i.i77.not = xor i1 %.not.i.i77, true      ; 3 uses
  %.not.i.i.i.i78.not = xor i1 %.not.i.i.i.i78, true
  %brmerge = select i1 %.not.i.i77.not, i1 true, i1 %.not.i.i.i.i78.not, !prof !1028
  %.mux = select i1 %.not.i.i77.not, i1 false, i1 true, !prof !1028
  %.sroa.082.0.mux = select i1 %.not.i.i77.not, ptr %.sroa.082.0, ptr %.sroa.13.0.ph.ph, !prof !1028
  br i1 %brmerge, label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit, label %bb.at, !prof !1470

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit
  br i1 %.not.i.i.i.i78, label %bb.at, label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit, !prof !21

bb.at:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit

_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread, %bb.at
  %.not.i.i77132 = phi i1 [ true, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread ], [ true, %bb.at ], [ %.mux, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread ]
  %.0.i.i = phi ptr [ %.sroa.13.0.ph.ph, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread ], [ @_hb_CrapPool, %bb.at ], [ %.sroa.082.0.mux, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread ]
  %i.eu = add i32 %.0, 1                          ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !397
  %.not48 = icmp eq i32 %i.ew, %2
  br i1 %.not48, label %bb.au, label %bb.az

bb.au:                                            ; preds = %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit
  %i.ex = icmp ugt i32 %i.eu, %i.dq
  store i32 %i.da, ptr %i.ev, align 4, !tbaa !397
  %i.ey = load i32, ptr %i.z, align 4, !tbaa !1354
  %.not.i.i79 = icmp ult i32 %2, %i.ey
  br i1 %.not.i.i79, label %bb.aw, label %bb.av, !prof !142

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.ez = load ptr, ptr %i.de, align 8, !tbaa !1362
  %i.fa = getelementptr inbounds nuw [216 x i8], ptr %i.ez, i64 %i.dh
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.aw, %bb.av
  %.0.i.i80 = phi ptr [ @_hb_CrapPool, %bb.av ], [ %i.fa, %bb.aw ]
  call void @_ZN5graph7graph_t8vertex_t13remove_parentEj(ptr noundef nonnull align 8 dereferenceable(216) %.0.i.i80, i32 noundef %spec.select)
  %i.fb = load i32, ptr %i.z, align 4, !tbaa !1354
  %.not.i8.i = icmp ult i32 %i.da, %i.fb
  br i1 %.not.i8.i, label %bb.ay, label %bb.ax, !prof !142

bb.ax:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit

bb.ay:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.fc = load ptr, ptr %i.de, align 8, !tbaa !1362
  %i.fd = getelementptr inbounds nuw [216 x i8], ptr %i.fc, i64 %i.df
  br label %_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit

_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit: ; preds = %bb.ax, %bb.ay
  %.0.i9.i = phi ptr [ @_hb_CrapPool, %bb.ax ], [ %i.fd, %bb.ay ]
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i9.i, i32 noundef %spec.select, i1 noundef zeroext %i.ex)
  br label %bb.az

bb.az:                                            ; preds = %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit, %_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit
  br i1 %.not.i.i77132, label %bb.ba, label %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i

_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i: ; preds = %bb.az
  %i.fe = add i32 %.sroa.7.0, -1
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.082.0, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit

bb.ba:                                            ; preds = %bb.az
  %.not.i.i1.i.i = icmp eq i32 %.sroa.17.0.ph, 0
  br i1 %.not.i.i1.i.i, label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer, label %bb.bb, !prof !21

bb.bb:                                            ; preds = %bb.ba
  %i.fg = add i32 %.sroa.17.0.ph, -1
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.ph, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer.outer

bb.bc:                                            ; preds = %._crit_edge, %bb.ae, %bb.af, %._crit_edge112, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit
  %.2 = phi i32 [ -1, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit ], [ 0, %bb.af ], [ %i.da, %._crit_edge112 ], [ -1, %bb.ae ], [ -1, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE4finiEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #18 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #18
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit

_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1596 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.c, !prof !21

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2825
  %i.i = add i32 %i.h, 1                          ; 2 uses
  %.not5 = icmp eq i32 %i.i, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %i.i to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !1596
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.c ]
  tail call void @hb_free(ptr noundef %i.j) #18
  store ptr null, ptr %i.e, align 8, !tbaa !1596
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !1596
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !424
  %i.o = add i32 %i.n, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.o, -2
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !425
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !426
  tail call void @hb_free(ptr noundef %i.r) #18
  br label %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit

_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit: ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2995

bb.e:                                             ; preds = %._crit_edge, %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !2824
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !2827
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !317
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !142

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #18 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !238
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !105
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !318
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !297
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph14serialize_linkERKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS0_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %i.b = and i32 %i.a, 7
  switch i32 %i.b, label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit [
    i32 3, label %bb.az
    i32 4, label %bb.b
    i32 2, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 8
  %.not27 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !400  ; 3 uses
  %i.f = add i32 %i.e, 4
  %i.g = icmp ugt i32 %i.f, %2                    ; 2 uses
  br i1 %.not27, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %i.j = or i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !105
  br label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  store i32 0, ptr %i.l, align 1, !tbaa !331
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !397  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !425
  %.not.i.i = icmp ult i32 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = zext i32 %i.n to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %.0.i.i = select i1 %.not.i.i, ptr %i.t, ptr @_hb_NullPool, !prof !142
  %i.u = load i32, ptr %.0.i.i, align 4, !tbaa !137 ; 2 uses
  %i.v = load i32, ptr %0, align 4                ; 2 uses
  %i.w = and i32 %i.v, 48
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !105
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = icmp eq i32 %i.u, 0
  %or.cond.not.i.i = or i1 %i.aa, %i.z
  br i1 %or.cond.not.i.i, label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit, label %bb.f, !prof !77

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !295 ; 2 uses
  %i.af = add i32 %i.ae, 1                        ; 5 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef %i.af, i1 noundef zeroext false)
  br i1 %i.ai, label %bb.h, label %bb.k, !prof !396

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !295 ; 3 uses
  %i.ak = icmp ugt i32 %i.af, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.al = sub nuw nsw i32 %i.af, %i.aj
  %i.am = mul i32 %i.al, 12                       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.j, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !296
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = zext i32 %i.am to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !295
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !296
  %i.au = zext i32 %i.ae to i64
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %i.au
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.av, %bb.l ] ; 5 uses
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !292
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i
  %i.ba = load i32, ptr %i.x, align 4, !tbaa !105
  %i.bb = or i32 %i.ba, 1
  store i32 %i.bb, ptr %i.x, align 4, !tbaa !105
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i
  %i.bc = load i32, ptr %.0.i.i.i, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.u, ptr %i.bd, align 4, !tbaa !397
  %i.be = and i32 %i.bc, -64
  %i.bf = or disjoint i32 %i.w, %i.be
  %i.bg = or disjoint i32 %i.bf, 12
  store i32 %i.bg, ptr %.0.i.i.i, align 4
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !399
  %i.bj = ptrtoint ptr %i.l to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !400
  %i.bo = and i32 %i.v, -16
  %i.bp = or disjoint i32 %i.bo, 12
  store i32 %i.bp, ptr %.0.i.i.i, align 4
  br label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit

bb.o:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.p, label %bb.q, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !105
  %i.bs = or i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !105
  br label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit

bb.q:                                             ; preds = %bb.o
  %i.bt = zext i32 %i.e to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt ; 2 uses
  store i32 0, ptr %i.bu, align 1, !tbaa !331
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !397 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !425
  %.not.i.i28 = icmp ult i32 %i.bw, %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = zext i32 %i.bw to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %.0.i.i29 = select i1 %.not.i.i28, ptr %i.cc, ptr @_hb_NullPool, !prof !142
  %i.cd = load i32, ptr %.0.i.i29, align 4, !tbaa !137 ; 2 uses
  %i.ce = load i32, ptr %0, align 4               ; 2 uses
  %i.cf = and i32 %i.ce, 48
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !105
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = icmp eq i32 %i.cd, 0
  %or.cond.not.i.i30 = or i1 %i.cj, %i.ci
  br i1 %or.cond.not.i.i30, label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit, label %bb.r, !prof !77

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN2OT17item_variations_t13duplicate_rowEjj:bb.a
bb.i:                                             ; preds = %bb.h
  store i32 %i.ab, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.g
  %i.au = phi ptr [ %.pre67, %..critedge_crit_edge.i ], [ %i.ao, %bb.g ]
  %i.av = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.aq, %bb.g ] ; 2 uses
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.ae, align 4, !tbaa !579
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.az = load float, ptr %i.ap, align 4, !tbaa !580
  store float %i.az, ptr %i.ay, align 4, !tbaa !580
  br label %_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit

_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit:  ; preds = %bb.i, %.critedge.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.03366, i64 80 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03366, i64 84 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !1059 ; 4 uses
  %i.bd = icmp ult i32 %2, %i.bc
  br i1 %i.bd, label %bb.j, label %_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit57

bb.j:                                             ; preds = %_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.03366, i64 88 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1006 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.aa
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !659
  %.not.i52 = icmp slt i32 %i.bc, %i.bh
  br i1 %.not.i52, label %.critedge.i56, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i32 %i.bc, 1
  %i.bj = tail call noundef zeroext i1 @_ZN11hb_vector_tIfLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i32 noundef %i.bi, i1 noundef zeroext false)
  br i1 %i.bj, label %..critedge_crit_edge.i54, label %bb.l, !prof !142

..critedge_crit_edge.i54:                         ; preds = %bb.k
  %.pre.i55 = load i32, ptr %i.bb, align 4, !tbaa !579
  %.pre68 = load ptr, ptr %i.be, align 8, !tbaa !660
  br label %.critedge.i56

bb.l:                                             ; preds = %bb.k
  store i32 %i.ab, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit57

.critedge.i56:                                    ; preds = %..critedge_crit_edge.i54, %bb.j
  %i.bk = phi ptr [ %.pre68, %..critedge_crit_edge.i54 ], [ %i.bf, %bb.j ]
  %i.bl = phi i32 [ %.pre.i55, %..critedge_crit_edge.i54 ], [ %i.bc, %bb.j ] ; 2 uses
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bb, align 4, !tbaa !579
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = load float, ptr %i.bg, align 4, !tbaa !580
  store float %i.bp, ptr %i.bo, align 4, !tbaa !580
  br label %_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit57

_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit57: ; preds = %.critedge.i56, %bb.l, %_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit
  %i.bq = load i32, ptr %i.ai, align 8, !tbaa !661
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.critedge, label %bb.m, !prof !21

bb.m:                                             ; preds = %_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit57
  %i.bs = load i32, ptr %i.ad, align 8, !tbaa !659
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %.critedge, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.ba, align 8, !tbaa !659
  %.fr = freeze i32 %i.bu
  %i.bv = icmp slt i32 %.fr, 0
  br i1 %i.bv, label %.critedge, label %bb.d, !prof !330

.critedge44.loopexit:                             ; preds = %bb.d
  %.pre69 = load i32, ptr %i.c, align 4, !tbaa !425
  br label %.critedge44

.critedge44:                                      ; preds = %.critedge44.loopexit, %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit
  %i.bw = phi i32 [ %.pre69, %.critedge44.loopexit ], [ %i.d, %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit ]
  %.not.i58 = icmp ult i32 %1, %i.bw
  br i1 %.not.i58, label %bb.p, label %bb.o, !prof !142

bb.o:                                             ; preds = %.critedge44
  %i.bx = load i32, ptr @_hb_NullPool, align 16   ; 2 uses
  store i32 %i.bx, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit60

bb.p:                                             ; preds = %.critedge44
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !426
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.s ; 2 uses
  %.pre70 = load i32, ptr %i.ca, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit60

_ZN11hb_vector_tIjLb0EEixEi.exit60:               ; preds = %bb.o, %bb.p
  %i.cb = phi i32 [ %i.bx, %bb.o ], [ %.pre70, %bb.p ] ; 2 uses
  %.0.i59 = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.ca, %bb.p ]
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %.0.i59, align 4, !tbaa !137
  br label %.critedge

.critedge:                                        ; preds = %_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit57, %bb.m, %bb.n, %bb.f, %bb.e, %_ZN11hb_vector_tIjLb0EEixEi.exit.thread, %_ZN11hb_vector_tIjLb0EEixEi.exit, %bb.a, %_ZN11hb_vector_tIjLb0EEixEi.exit47, %_ZN11hb_vector_tIjLb0EEixEi.exit60
  %.3 = phi i32 [ -1, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %i.cb, %_ZN11hb_vector_tIjLb0EEixEi.exit60 ], [ -1, %_ZN11hb_vector_tIjLb0EEixEi.exit47 ], [ -1, %bb.a ], [ -1, %_ZN11hb_vector_tIjLb0EEixEi.exit.thread ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %_ZN11hb_vector_tIfLb0EE4pushIJRfEEEPfDpOT_.exit57 ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2OT17item_variations_t11add_vardataEj(ptr noundef nonnull align 8 dereferenceable(193) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.OT::TupleVariationData<>::tuple_variations_t", align 8 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  store atomic i32 1, ptr %i.a monotonic, align 8
  store atomic i8 1, ptr %i.b monotonic, align 4
  store atomic ptr null, ptr %i.c monotonic, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.d, align 8, !tbaa !535
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !538
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.e, i8 0, i64 18, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  store atomic i32 1, ptr %i.g monotonic, align 8
  store atomic i8 1, ptr %i.h monotonic, align 4
  store atomic ptr null, ptr %i.i monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i8 1, ptr %i.j, align 8, !tbaa !539
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 82 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.k, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.l, i8 0, i64 22, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !391  ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !427    ; 5 uses
  %.not.i = icmp slt i32 %i.n, %i.o
  br i1 %.not.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tC2EOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %i.n, 1                          ; 2 uses
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.thread5.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ugt i32 %i.p, %i.o
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tC2EOS4_.exit, !prof !21

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.039.i.i = phi i32 [ %i.t, %.preheader.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.r = lshr i32 %.039.i.i, 1
  %i.s = add i32 %.039.i.i, 8
  %i.t = add i32 %i.s, %i.r                       ; 6 uses
  %i.u = icmp ugt i32 %i.p, %i.t
  br i1 %i.u, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !534

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.v = icmp ugt i32 %i.t, 33554431
  br i1 %i.v, label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.thread8.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %.thread.i.i
  %i.w = tail call noundef ptr @_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.t) ; 2 uses
  %.not22.i.i = icmp eq ptr %i.w, null
  br i1 %.not22.i.i, label %bb.e, label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.i, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %0, align 8, !tbaa !427    ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.t, %i.x
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.thread8.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tC2EOS4_.exit

_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.thread8.i: ; preds = %bb.e, %.thread.i.i
  %.sink.i.ph.in.i = phi i32 [ %i.o, %.thread.i.i ], [ %i.x, %bb.e ]
  %.sink.i.ph.i = xor i32 %.sink.i.ph.in.i, -1
  store i32 %.sink.i.ph.i, ptr %0, align 8, !tbaa !427
  br label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.thread5.i

_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.i: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !390
  store i32 %i.t, ptr %0, align 8, !tbaa !427
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tC2EOS4_.exit

_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.thread5.i: ; preds = %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.thread8.i, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(128) @_hb_NullPool, i64 128, i1 false)
  br label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE4pushIJS5_EEEPS5_DpOT_.exit

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tC2EOS4_.exit: ; preds = %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.i, %bb.e, %bb.c, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !390
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !391 ; 2 uses
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.m, align 4, !tbaa !391
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %i.ad ; 22 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %2, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store atomic i32 1, ptr %i.af monotonic, align 8
  store atomic i8 1, ptr %i.ag monotonic, align 4
  store atomic ptr null, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i8 1, ptr %i.ai, align 8, !tbaa !535
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store i16 0, ptr %i.aj, align 2
  store i16 0, ptr %i.e, align 2, !tbaa !490
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.al, align 4, !tbaa !137
  store i32 0, ptr %i.am, align 4, !tbaa !137
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.an, align 8, !tbaa !137
  store i32 0, ptr %i.ao, align 8, !tbaa !137
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 0, ptr %i.ap, align 4, !tbaa !137
  store i32 0, ptr %i.aq, align 4, !tbaa !137
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.ar, align 8, !tbaa !137
  store i32 0, ptr %i.as, align 8, !tbaa !137
  store ptr null, ptr %i.ak, align 8, !tbaa !543
  store ptr null, ptr %i.f, align 8, !tbaa !543
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 68
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store atomic i32 1, ptr %i.at monotonic, align 8
  store atomic i8 1, ptr %i.au monotonic, align 4
  store atomic ptr null, ptr %i.av monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store i8 1, ptr %i.aw, align 8, !tbaa !539
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 82
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store i16 0, ptr %i.ax, align 2
  store i16 0, ptr %i.k, align 2, !tbaa !490
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 84
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 84
  store i32 0, ptr %i.az, align 4, !tbaa !137
  store i32 0, ptr %i.ba, align 4, !tbaa !137
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 0, ptr %i.bb, align 8, !tbaa !137
  store i32 0, ptr %i.bc, align 8, !tbaa !137
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 92
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i32 0, ptr %i.bd, align 4, !tbaa !137
  store i32 0, ptr %i.be, align 4, !tbaa !137
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 0, ptr %i.bf, align 8, !tbaa !137
  store i32 0, ptr %i.bg, align 8, !tbaa !137
  store ptr null, ptr %i.ay, align 8, !tbaa !545
  store ptr null, ptr %i.l, align 8, !tbaa !545
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bh, i8 0, i64 14, i1 false)
  br label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE4pushIJS5_EEEPS5_DpOT_.exit

_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE4pushIJS5_EEEPS5_DpOT_.exit: ; preds = %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE5allocEjb.exit.thread5.i, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tC2EOS4_.exit
  call void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !425 ; 3 uses
  %i.bl = load i32, ptr %i.bi, align 8, !tbaa !424
  %.not.i1 = icmp slt i32 %i.bk, %i.bl
  br i1 %.not.i1, label %.critedge.i3, label %bb.f

bb.f:                                             ; preds = %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE4pushIJS5_EEEPS5_DpOT_.exit
  %i.bm = add i32 %i.bk, 1
  %i.bn = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.bm, i1 noundef zeroext false)
  br i1 %i.bn, label %..critedge_crit_edge.i, label %bb.g, !prof !142

..critedge_crit_edge.i:                           ; preds = %bb.f
  %.pre.i = load i32, ptr %i.bj, align 4, !tbaa !425
  br label %.critedge.i3

bb.g:                                             ; preds = %bb.f
  %i.bo = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.bo, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i3:                                     ; preds = %..critedge_crit_edge.i, %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE4pushIJS5_EEEPS5_DpOT_.exit
  %i.bp = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.bk, %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE4pushIJS5_EEEPS5_DpOT_.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !426
  %i.bs = add i32 %i.bp, 1
  store i32 %i.bs, ptr %i.bj, align 4, !tbaa !425
  %i.bt = zext i32 %i.bp to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bt
  store i32 %1, ptr %i.bu, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %bb.g, %.critedge.i3
  %i.bv = load i32, ptr %i.m, align 4, !tbaa !547
  %i.bw = add i32 %i.bv, -1
  ret i32 %i.bw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT17item_variations_t9add_tupleEjO12hb_hashmap_tIj6TripleLb0EEjij(ptr noundef nonnull align 8 dereferenceable(193) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.OT::tuple_delta_t", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !547
  %.not = icmp ult i32 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store atomic i32 1, ptr %6 monotonic, align 8
  store atomic i8 1, ptr %i.c monotonic, align 4
  store atomic ptr null, ptr %i.d monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i8 1, ptr %i.e, align 8, !tbaa !429
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.f, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, i8 0, i64 120, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !132
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN12hb_hashmap_tIj6TripleLb0EEaSEOS1_.exit, !prof !142

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !490
  store i16 %i.l, ptr %i.f, align 2, !tbaa !490
  store i16 0, ptr %i.k, align 2, !tbaa !490
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.o = load <4 x i32>, ptr %i.n, align 4, !tbaa !137
  store <4 x i32> %i.o, ptr %i.m, align 4, !tbaa !137
  store <4 x i32> zeroinitializer, ptr %i.n, align 4, !tbaa !137
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !656
  store ptr %i.q, ptr %i.g, align 8, !tbaa !656
  store ptr null, ptr %i.p, align 8, !tbaa !656
  br label %_ZN12hb_hashmap_tIj6TripleLb0EEaSEOS1_.exit

_ZN12hb_hashmap_tIj6TripleLb0EEaSEOS1_.exit:      ; preds = %bb.b, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.s = icmp slt i32 %5, 0
  br i1 %i.s, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIj6TripleLb0EEaSEOS1_.exit
  %.not.i.i.not = icmp eq i32 %5, 0
  br i1 %.not.i.i.not, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit, label %.preheader.i.i, !prof !142

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.v, %.preheader.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.t = lshr i32 %.053.i.i, 1
  %i.u = add nuw i32 %.053.i.i, 8
  %i.v = add nuw i32 %i.u, %i.t                   ; 4 uses
  %i.w = icmp ugt i32 %5, %i.v
  br i1 %i.w, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, !llvm.loop !662

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %.preheader.i.i
  %i.x = zext i32 %i.v to i64
  %i.y = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.x) #18 ; 5 uses
  %.not22.i.i = icmp eq ptr %i.y, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, label %.preheader.i.preheader, !prof !88

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i
  store i32 -1, ptr %i.r, align 8, !tbaa !661
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

.preheader.i.preheader:                           ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.y, ptr %i.z, align 8, !tbaa !663
  store i32 %i.v, ptr %i.r, align 8, !tbaa !661
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 3 uses
  %i.ab = zext nneg i32 %5 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.ab, i1 false)
  store i32 %5, ptr %i.aa, align 4, !tbaa !664
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.043.i = phi i32 [ %i.af, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ad = lshr i32 %.043.i, 1
  %i.ae = add nuw i32 %.043.i, 8
  %i.af = add nuw i32 %i.ae, %i.ad                ; 5 uses
  %i.ag = icmp ugt i32 %5, %i.af
  br i1 %i.ag, label %.preheader.i, label %.thread.i, !llvm.loop !658

.thread.i:                                        ; preds = %.preheader.i
  %i.ah = icmp ugt i32 %i.af, 1073741823
  br i1 %i.ah, label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread26, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.ai = shl nuw i32 %i.af, 2
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.aj) #18 ; 7 uses
  %.not22.i = icmp eq ptr %i.ak, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread26, label %bb.e, !prof !118
end_hunk_12
