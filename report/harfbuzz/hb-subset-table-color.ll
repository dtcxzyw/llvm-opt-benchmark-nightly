Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-color?download=true
inline.NumInlined: 12641
inline.NumDeleted: 5098
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_:bb.a
_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !265  ; 2 uses
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit
  %i.j = phi i32 [ %i.h, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph ], [ %i.q, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !270
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.3.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..0.i.i.sroa_idx, align 8, !tbaa !271
  %.sroa.4.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.i.i.sroa_idx, align 8, !tbaa !271 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !272, !noalias !273
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20 ; 0 uses
  %.not.i6 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i6, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #20, !inline_history !276
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, %bb.e
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !265  ; 2 uses
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, !llvm.loop !277

._crit_edge:                                      ; preds = %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !269
  %i.s = add i32 %i.r, -1
  %spec.select.i.i7 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i7, label %bb.f, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

bb.f:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.a, align 4, !tbaa !272
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !270
  tail call void @hb_free(ptr noundef %i.u) #20
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8: ; preds = %._crit_edge, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20 ; 0 uses
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !147
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
  tail call void @hb_free(ptr noundef %i.m) #20
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
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #20 ; 4 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !278
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #20 ; 2 uses
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
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !282
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !137

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #20 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !204
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
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
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !283
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !283
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !262
  store ptr %i.r, ptr %i.u, align 8, !tbaa !143
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !208    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !147
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
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !284

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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203
  tail call void @hb_free(ptr noundef %i.m) #20
  br label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !203  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #20 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !202  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !203
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !285
  br label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #20 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !208   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !203
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !208
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !202  ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !208
  %.not = icmp slt i32 %i.b, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, 1
  %i.e = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.e, label %..critedge_crit_edge, label %bb.c, !prof !137

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !202
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %bb.d

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %i.g = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203
  %i.j = add i32 %i.g, 1
  store i32 %i.j, ptr %i.a, align 4, !tbaa !202
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !204
  store ptr %i.m, ptr %i.l, align 8, !tbaa !204
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
begin_hunk_1_@_ZNK2OT4sbix24serialize_strike_offsetsEP19hb_subset_context_t:bb.a
  %i.fi = shl nuw nsw i64 %i.fh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr nonnull readonly align 1 %.sroa.16.0182, i64 %i.fi, i1 false), !alias.scope !301
  br label %.critedge.i47

_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE14realloc_vectorIS6_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS6_j11hb_priorityILj0EE.exit.i: ; preds = %bb.ai, %bb.ah
  %i.fj = phi ptr [ null, %bb.ai ], [ %.sroa.16.0182, %bb.ah ]
  %i.fk = shl nuw i32 %i.fa, 3
  %i.fl = zext i32 %i.fk to i64
  %i.fm = tail call ptr @hb_realloc(ptr noundef %i.fj, i64 noundef %i.fl) #20 ; 2 uses
  %.not22.i65 = icmp eq ptr %i.fm, null
  br i1 %.not22.i65, label %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE14realloc_vectorIS6_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS6_j11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i47, !prof !118

_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE14realloc_vectorIS6_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS6_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE14realloc_vectorIS6_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS6_j11hb_priorityILj0EE.exit.i, %bb.aj
  %i.fn = xor i32 %.sroa.0100.0188, -1
  br label %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE5allocEjb.exit

_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE5allocEjb.exit: ; preds = %bb.af, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE14realloc_vectorIS6_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS6_j11hb_priorityILj0EE.exit.thread53.i, %.critedge.i74
  %.sroa.0100.6 = phi i32 [ %.sroa.0100.0188, %bb.af ], [ %i.fn, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE14realloc_vectorIS6_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS6_j11hb_priorityILj0EE.exit.thread53.i ], [ %i.fd, %.critedge.i74 ]
  store i64 %i.w, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_t6revertENS_10snapshot_tE.exit

.critedge.i47:                                    ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit, %bb.ak, %bb.al, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE14realloc_vectorIS6_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS6_j11hb_priorityILj0EE.exit.i, %bb.ag
  %.pre-phi219 = phi i32 [ %.pre218, %bb.ag ], [ 1, %bb.ak ], [ %.pre218, %bb.al ], [ %.pre218, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE14realloc_vectorIS6_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS6_j11hb_priorityILj0EE.exit.i ], [ %.pre218, %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit ]
  %.sroa.16.4 = phi ptr [ %.sroa.16.0182, %bb.ag ], [ %i.fg, %bb.ak ], [ %i.fg, %bb.al ], [ %i.fm, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE14realloc_vectorIS6_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS6_j11hb_priorityILj0EE.exit.i ], [ %.sroa.16.0182, %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit ] ; 2 uses
  %.sroa.0100.4 = phi i32 [ %.sroa.0100.0188, %bb.ag ], [ %i.fa, %bb.ak ], [ %i.fa, %bb.al ], [ %i.fa, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE14realloc_vectorIS6_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS6_j11hb_priorityILj0EE.exit.i ], [ %.sroa.0100.0188, %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit ]
  %i.fo = zext i32 %.sroa.8104.0187 to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.16.4, i64 %i.fo
  store ptr %i.bg, ptr %i.fp, align 8, !tbaa !305
  br label %_ZN22hb_serialize_context_t6revertENS_10snapshot_tE.exit

_ZN22hb_serialize_context_t6revertENS_10snapshot_tE.exit: ; preds = %_ZNK2OT4sbix10add_strikeEP19hb_subset_context_tj.exit.thread, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i, %bb.w, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE5allocEjb.exit, %.critedge.i47
  %.sroa.16.2 = phi ptr [ %.sroa.16.0182, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE5allocEjb.exit ], [ %.sroa.16.0182, %bb.w ], [ %.sroa.16.0182, %_ZNK2OT4sbix10add_strikeEP19hb_subset_context_tj.exit.thread ], [ %.sroa.16.0182, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i ], [ %.sroa.16.4, %.critedge.i47 ] ; 4 uses
  %.sroa.082.2 = phi i32 [ %.sroa.082.5, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE5allocEjb.exit ], [ %.sroa.082.0183, %bb.w ], [ %.sroa.082.0183, %_ZNK2OT4sbix10add_strikeEP19hb_subset_context_tj.exit.thread ], [ %.sroa.082.0183, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i ], [ %.sroa.082.5, %.critedge.i47 ] ; 3 uses
  %.sroa.886.2 = phi i32 [ %.sroa.886.4, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE5allocEjb.exit ], [ %.sroa.886.0184, %bb.w ], [ %.sroa.886.0184, %_ZNK2OT4sbix10add_strikeEP19hb_subset_context_tj.exit.thread ], [ %.sroa.886.0184, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i ], [ %.sroa.886.4, %.critedge.i47 ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.5, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE5allocEjb.exit ], [ %.sroa.14.0186, %bb.w ], [ %.sroa.14.0186, %_ZNK2OT4sbix10add_strikeEP19hb_subset_context_tj.exit.thread ], [ %.sroa.14.0186, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i ], [ %.sroa.14.5, %.critedge.i47 ] ; 4 uses
  %.sroa.8104.2 = phi i32 [ %.sroa.8104.0187, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE5allocEjb.exit ], [ %.sroa.8104.0187, %bb.w ], [ %.sroa.8104.0187, %_ZNK2OT4sbix10add_strikeEP19hb_subset_context_tj.exit.thread ], [ %.sroa.8104.0187, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i ], [ %.pre-phi219, %.critedge.i47 ] ; 4 uses
  %.sroa.0100.2 = phi i32 [ %.sroa.0100.6, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EE5allocEjb.exit ], [ %.sroa.0100.0188, %bb.w ], [ %.sroa.0100.0188, %_ZNK2OT4sbix10add_strikeEP19hb_subset_context_tj.exit.thread ], [ %.sroa.0100.0188, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i ], [ %.sroa.0100.4, %.critedge.i47 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fq = icmp slt i64 %indvars.iv, 1
  br i1 %i.fq, label %.preheader, label %bb.c, !llvm.loop !307

_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EEixEi.exit: ; preds = %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EEixEi.exit.lr.ph, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit
  %indvars.iv214 = phi i64 [ 0, %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EEixEi.exit.lr.ph ], [ %indvars.iv.next215, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit ] ; 3 uses
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.16.2, i64 %indvars.iv214
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !305
  %i.fu = trunc nuw i64 %indvars.iv214 to i32
  %i.fv = xor i32 %i.fu, -1
  %i.fw = add i32 %.sroa.8104.2, %i.fv            ; 2 uses
  %.not.i50 = icmp ult i32 %i.fw, %.sroa.886.2
  br i1 %.not.i50, label %bb.an, label %bb.am, !prof !137

bb.am:                                            ; preds = %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EEixEi.exit
  store i32 %i.y, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.an:                                            ; preds = %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EEixEi.exit
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.2, i64 %i.fx
  %.pre = load i32, ptr %i.fy, align 4, !tbaa !147
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.am, %bb.an
  %i.fz = phi i32 [ %i.y, %bb.am ], [ %.pre, %bb.an ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 44 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !105
  %i.gc = icmp ne i32 %i.gb, 0
  %i.gd = icmp eq i32 %i.fz, 0
  %or.cond.not.i = or i1 %i.gd, %i.gc
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.ao, !prof !77

bb.ao:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 72 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !143 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 20 ; 3 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !260 ; 2 uses
  %i.gi = add i32 %i.gh, 1                        ; 5 uses
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %bb.at, label %bb.ap, !prof !21

bb.ap:                                            ; preds = %bb.ao
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gl = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i32 noundef %i.gi, i1 noundef zeroext false)
  br i1 %i.gl, label %bb.aq, label %bb.at, !prof !308

bb.aq:                                            ; preds = %bb.ap
  %i.gm = load i32, ptr %i.gg, align 4, !tbaa !260 ; 3 uses
  %i.gn = icmp ugt i32 %i.gi, %i.gm
  br i1 %i.gn, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.go = sub nuw nsw i32 %i.gi, %i.gm
  %i.gp = mul i32 %i.go, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.au, label %bb.as, !prof !21

bb.as:                                            ; preds = %bb.ar
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !261
  %i.gs = zext nneg i32 %i.gm to i64
  %i.gt = getelementptr inbounds nuw [12 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = zext i32 %i.gp to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.gt, i8 0, i64 %i.gu, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %bb.ap, %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.au:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !260
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !261
  %i.gx = zext i32 %i.gh to i64
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %i.gw, i64 %i.gx
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.au, %bb.at
  %.0.i.i52 = phi ptr [ @_hb_CrapPool, %bb.at ], [ %i.gy, %bb.au ] ; 5 uses
  %i.gz = load ptr, ptr %i.ge, align 8, !tbaa !143
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !257
  %i.hc = icmp slt i32 %i.hb, 0
  br i1 %i.hc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.hd = load i32, ptr %i.ga, align 4, !tbaa !105
  %i.he = or i32 %i.hd, 1
  store i32 %i.he, ptr %i.ga, align 4, !tbaa !105
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.hf = load i32, ptr %.0.i.i52, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 8
  store i32 %i.fz, ptr %i.hg, align 4, !tbaa !309
  %i.hh = and i32 %i.hf, -64
  %i.hi = or disjoint i32 %i.hh, 4
  store i32 %i.hi, ptr %.0.i.i52, align 4
  %i.hj = load ptr, ptr %i.ge, align 8, !tbaa !143
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !311
  %i.hl = ptrtoint ptr %i.ft to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 4
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !312
  store i32 4, ptr %.0.i.i52, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit, %bb.aw
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EEixEi.exit, !llvm.loop !313

.loopexit:                                        ; preds = %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, %.preheader, %.thread
  %.sroa.16.0178 = phi ptr [ %.sroa.16.0182, %.thread ], [ %.sroa.16.2, %.preheader ], [ %.sroa.16.2, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit ]
  %.sroa.082.0174 = phi i32 [ %.sroa.082.0183, %.thread ], [ %.sroa.082.2, %.preheader ], [ %.sroa.082.2, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit ]
  %.sroa.14.0168 = phi ptr [ %.sroa.14.0186, %.thread ], [ %.sroa.14.2, %.preheader ], [ %.sroa.14.2, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit ]
  %.sroa.0100.0162 = phi i32 [ %.sroa.0100.0188, %.thread ], [ %.sroa.0100.2, %.preheader ], [ %.sroa.0100.2, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit ]
  %i.hq = phi i1 [ false, %.thread ], [ true, %.preheader ], [ true, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit ] ; 2 uses
  %i.hr = add i32 %.sroa.082.0174, -1
  %spec.select.i.i.i53 = icmp ult i32 %i.hr, -2
  br i1 %spec.select.i.i.i53, label %bb.ax, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.ax:                                            ; preds = %.loopexit
  tail call void @hb_free(ptr noundef %.sroa.14.0168) #20
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %.loopexit, %bb.ax
  %i.hs = add i32 %.sroa.0100.0162, -1
  %spec.select.i.i.i54 = icmp ult i32 %i.hs, -2
  br i1 %spec.select.i.i.i54, label %bb.ay, label %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EED2Ev.exit

bb.ay:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  tail call void @hb_free(ptr noundef %.sroa.16.0178) #20
  br label %_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EED2Ev.exit

_ZN11hb_vector_tIPN2OT8OffsetToINS0_10SBIXStrikeENS0_7NumTypeILb1EjLj4EEEvLb1EEELb0EED2Ev.exit: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEES6_EEEEPT_SA_.exit, %_ZL9hb_memsetPvij.exit.i.i.i, %bb.ay, %_ZN11hb_vector_tIjLb0EED2Ev.exit, %.critedge.i.i.i, %bb.a
  %.4 = phi i1 [ %i.hq, %bb.ay ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ %i.hq, %_ZN11hb_vector_tIjLb0EED2Ev.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ true, %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_8OffsetToINS1_10SBIXStrikeENS1_7NumTypeILb1EjLj4EEEvLb1EEES6_EEEEPT_SA_.exit ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !282
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !137

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #20 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !204
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
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
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !283
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !283
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !262
  store ptr %i.r, ptr %i.u, align 8, !tbaa !143
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105  ; 2 uses
  switch i32 %i.d, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread [
    i32 0, label %.critedge
    i32 2, label %.critedge
    i32 8, label %.critedge
    i32 16, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !262
  store ptr %i.f, ptr %i.a, align 8, !tbaa !143
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !311
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %.critedge ]
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.e, label %_ZN22hb_serialize_context_t6revertEPcS0_.exit, !prof !137

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !314
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !106
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !107
  tail call void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN22hb_serialize_context_t6revertEPcS0_.exit

_ZN22hb_serialize_context_t6revertEPcS0_.exit:    ; preds = %bb.d, %bb.e
  store ptr null, ptr %i.g, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !257
  %i.q = add i32 %i.p, -1
  %spec.select.i.i.i = icmp ult i32 %i.q, -2
  br i1 %spec.select.i.i.i, label %bb.f, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t6revertEPcS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.r, align 4, !tbaa !260
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !261
  tail call void @hb_free(ptr noundef %i.t) #20
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i: ; preds = %bb.f, %_ZN22hb_serialize_context_t6revertEPcS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !257
  %i.w = add i32 %i.v, -1
  %spec.select.i.i1.i = icmp ult i32 %i.w, -2
  br i1 %spec.select.i.i1.i, label %bb.g, label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

bb.g:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.x, align 4, !tbaa !260
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !261
  tail call void @hb_free(ptr noundef %i.z) #20
  br label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

_ZN22hb_serialize_context_t8object_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !201
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !120
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !201
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN22hb_serialize_context_t8object_t4finiEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t6revertENS_10snapshot_tE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef byval(%"struct.hb_serialize_context_t::snapshot_t") align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !105
  switch i32 %i.b, label %_ZN22hb_serialize_context_t6revertEPcS0_.exit [
    i32 0, label %.critedge
    i32 2, label %.critedge
    i32 8, label %.critedge
    i32 16, label %.critedge
  ]

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !315
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !260
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.h, ptr %i.i, align 4, !tbaa !260
  %i.k = load i32, ptr %i.e, align 8, !tbaa !257
  %i.l = add i32 %i.k, -1
  %spec.select.i.i = icmp ult i32 %i.l, -2
  br i1 %spec.select.i.i, label %bb.d, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.h, i1 noundef zeroext true) ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !143
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.n = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !317
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !260
  %.not.i1 = icmp ult i32 %i.r, %i.t
  br i1 %.not.i1, label %bb.e, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3

bb.e:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit
  store i32 %i.r, ptr %i.s, align 4, !tbaa !260
  %i.u = load i32, ptr %i.o, align 8, !tbaa !257
  %i.v = add i32 %i.u, -1
  %spec.select.i.i2 = icmp ult i32 %i.v, -2
  br i1 %spec.select.i.i2, label %bb.f, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i32 noundef %i.r, i1 noundef zeroext true) ; 0 uses
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3: ; preds = %bb.f, %bb.e, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit, %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !318  ; 2 uses
  store i32 %i.y, ptr %i.a, align 4, !tbaa !105
  %.not.i4 = icmp eq i32 %i.y, 0
  br i1 %.not.i4, label %bb.g, label %_ZN22hb_serialize_context_t6revertEPcS0_.exit, !prof !137

bb.g:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load <2 x ptr>, ptr %1, align 8, !tbaa !283
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !tbaa !283
  tail call void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN22hb_serialize_context_t6revertEPcS0_.exit

_ZN22hb_serialize_context_t6revertEPcS0_.exit:    ; preds = %bb.a, %bb.g, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
begin_hunk_2_@_ZN5graph9serializeERKNS_7graph_tE:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.bs, align 8, !tbaa !108
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.bt, align 8, !tbaa !109
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 5 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !110 ; 3 uses
  %i.bw = load i32, ptr %i.bi, align 8, !tbaa !111 ; 6 uses
  %.not.i.i.i = icmp slt i32 %i.bv, %i.bw
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i
  %i.bx = add i32 %i.bv, 1                        ; 2 uses
  %i.by = icmp slt i32 %i.bw, 0
  br i1 %i.by, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %.not.i56 = icmp ugt i32 %i.bx, %i.bw
  br i1 %.not.i56, label %.preheader.i58, label %..critedge_crit_edge.i.i.i, !prof !21

.preheader.i58:                                   ; preds = %bb.d, %.preheader.i58
  %.043.i = phi i32 [ %i.cb, %.preheader.i58 ], [ %i.bw, %bb.d ] ; 2 uses
  %i.bz = lshr i32 %.043.i, 1
  %i.ca = add i32 %.043.i, 8
  %i.cb = add i32 %i.ca, %i.bz                    ; 7 uses
  %i.cc = icmp ugt i32 %i.bx, %i.cb
  br i1 %i.cc, label %.preheader.i58, label %.thread.i, !llvm.loop !112

.thread.i:                                        ; preds = %.preheader.i58
  %i.cd = icmp ugt i32 %i.cb, 536870911
  br i1 %i.cd, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104, label %bb.e, !prof !21

bb.e:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.bw, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !113 ; 2 uses
  br i1 %.not49.i, label %bb.f, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i65 = icmp eq ptr %i.cf, null
  br i1 %.not9.i.i.i65, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = shl nuw i32 %i.cb, 3
  %i.ch = zext i32 %i.cg to i64
  %i.ci = call ptr @hb_malloc(i64 noundef %i.ch) #20 ; 4 uses
  %.not10.i.i.i66 = icmp eq ptr %i.ci, null
  br i1 %.not10.i.i.i66, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.cj = load i32, ptr %i.bu, align 4, !tbaa !110 ; 2 uses
  %.not.i.i.i.i67 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i67, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr readonly align 1 %i.cm, i64 %i.cl, i1 false), !alias.scope !517
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.f, %bb.e
  %i.cn = phi ptr [ null, %bb.f ], [ %i.cf, %bb.e ]
  %i.co = shl nuw i32 %i.cb, 3
  %i.cp = zext i32 %i.co to i64
  %i.cq = call ptr @hb_realloc(ptr noundef %i.cn, i64 noundef %i.cp) #20 ; 2 uses
  %.not22.i60 = icmp eq ptr %i.cq, null
  br i1 %.not22.i60, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.g
  %i.cr = load i32, ptr %i.bi, align 8, !tbaa !111 ; 2 uses
  %.not23.i64 = icmp ugt i32 %i.cb, %i.cr
  br i1 %.not23.i64, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104, label %..critedge_crit_edge.i.i.i, !prof !119

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i62.ph.in = phi i32 [ %i.bw, %.thread.i ], [ %i.cr, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i62.ph = xor i32 %.sink.i62.ph.in, -1
  store i32 %.sink.i62.ph, ptr %i.bi, align 8, !tbaa !111
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit: ; preds = %bb.h, %bb.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.cq, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %i.ci, %bb.i ], [ %i.ci, %bb.h ]
  store ptr %.1.i.i42.i, ptr %i.ce, align 8, !tbaa !113
  store i32 %i.cb, ptr %i.bi, align 8, !tbaa !111
  br label %..critedge_crit_edge.i.i.i

..critedge_crit_edge.i.i.i:                       ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %bb.d, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit
  %.pre.i.i.i = load i32, ptr %i.bu, align 4, !tbaa !110
  br label %.critedge.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101: ; preds = %bb.c, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104
  %i.cs = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cs, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i
  %i.ct = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.bv, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !113
  %i.cw = add i32 %i.ct, 1
  store i32 %i.cw, ptr %i.bu, align 4, !tbaa !110
  %i.cx = zext i32 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cx
  store ptr null, ptr %i.cy, align 8, !tbaa !120
  br label %_ZN22hb_serialize_context_tC2EPvm.exit

_ZN22hb_serialize_context_tC2EPvm.exit:           ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101, %.critedge.i.i.i
  store atomic i32 1, ptr %i.bj monotonic, align 8
  store atomic i8 1, ptr %i.bk monotonic, align 4
  store atomic ptr null, ptr %i.bl monotonic, align 8
  store i8 1, ptr %i.bm, align 8, !tbaa !103
  store ptr null, ptr %i.bo, align 8, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bn, i8 0, i64 18, i1 false)
  %i.cz = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !521 ; 6 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %bb.j, !prof !21

bb.j:                                             ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit
  %.not.i69.not = icmp eq i32 %i.db, 0
  br i1 %.not.i69.not, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread, label %.preheader.i71, !prof !137

.preheader.i71:                                   ; preds = %bb.j, %.preheader.i71
  %.043.i72 = phi i32 [ %i.df, %.preheader.i71 ], [ 0, %bb.j ] ; 2 uses
  %i.dd = lshr i32 %.043.i72, 1
  %i.de = add nuw i32 %.043.i72, 8
  %i.df = add nuw i32 %i.de, %i.dd                ; 6 uses
  %i.dg = icmp ugt i32 %i.db, %i.df
  br i1 %i.dg, label %.preheader.i71, label %.thread.i73, !llvm.loop !295

.thread.i73:                                      ; preds = %.preheader.i71
  %i.dh = icmp ugt i32 %i.df, 1073741823
  br i1 %i.dh, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i73
  %i.di = shl nuw i32 %i.df, 2
  %i.dj = zext i32 %i.di to i64
  %i.dk = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.dj) #20 ; 2 uses
  %.not22.i76 = icmp eq ptr %i.dk, null
  br i1 %.not22.i76, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.pre = load i32, ptr %2, align 8, !tbaa !350   ; 2 uses
  %.not23.i81 = icmp ugt i32 %i.df, %.pre
  br i1 %.not23.i81, label %bb.k, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread

bb.k:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i
  %i.dl = xor i32 %.pre, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109:  ; preds = %bb.k, %.thread.i73
  %.sink.i79.ph = phi i32 [ -1, %.thread.i73 ], [ %i.dl, %bb.k ]
  store i32 %.sink.i79.ph, ptr %2, align 8, !tbaa !350
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !351
  store i32 %i.df, ptr %2, align 8, !tbaa !350
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread:     ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !352 ; 3 uses
  %i.dp = icmp ugt i32 %i.db, %i.do
  br i1 %i.dp, label %bb.l, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

bb.l:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread
  %i.dq = sub nuw nsw i32 %i.db, %i.do
  %i.dr = shl i32 %i.dq, 2                        ; 2 uses
  %.not.i.i.i.i43 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i43, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !351
  %i.du = zext nneg i32 %i.do to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = zext i32 %i.dr to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.dv, i8 0, i64 %i.dw, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.m, %bb.l, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread
  store i32 %i.db, ptr %i.dn, align 4, !tbaa !352
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109, %_ZN22hb_serialize_context_tC2EPvm.exit, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %i.dx = load i32, ptr %i.da, align 4, !tbaa !521
  %.035138 = add i32 %i.dx, -1                    ; 2 uses
  %i.dy = icmp slt i32 %.035138, 0
  br i1 %i.dy, label %.critedge, label %.lr.ph140

.lr.ph140:                                        ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eb = load i32, ptr @_hb_NullPool, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph140, %bb.v
  %.035139 = phi i32 [ %.035138, %.lr.ph140 ], [ %.035, %bb.v ] ; 4 uses
  %i.ed = load i32, ptr %i.da, align 4, !tbaa !352
  %.not.i44 = icmp ult i32 %.035139, %i.ed
  %i.ee = load ptr, ptr %i.dz, align 8
  %3 = zext nneg i32 %.035139 to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %3
  %.0.i = select i1 %.not.i44, ptr %i.ef, ptr @_hb_NullPool, !prof !137
  %i.eg = load i32, ptr %.0.i, align 4, !tbaa !147 ; 3 uses
  %i.eh = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !369
  %.not.i45 = icmp ult i32 %i.eg, %i.ei
  %i.ej = load ptr, ptr %i.c, align 8
  %i.ek = zext i32 %i.eg to i64                   ; 2 uses
  %i.el = getelementptr inbounds nuw [216 x i8], ptr %i.ej, i64 %i.ek
  %.0.i46 = select i1 %.not.i45, ptr %i.el, ptr @_hb_NullPool, !prof !137 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i46, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !445 ; 2 uses
  %i.eo = load ptr, ptr %.0.i46, align 8, !tbaa !446 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 7 uses
  %i.es = load i32, ptr %i.bp, align 4, !tbaa !105
  %.not.i47 = icmp eq i32 %i.es, 0
  br i1 %.not.i47, label %bb.o, label %.thread122, !prof !137

bb.o:                                             ; preds = %bb.n
  %i.et = icmp ugt i64 %i.er, 2147483647
  br i1 %i.et, label %.critedge.i, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.eu = load ptr, ptr %i.br, align 8, !tbaa !107
  %i.ev = load ptr, ptr %i.bq, align 8, !tbaa !106 ; 5 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp slt i64 %i.ey, %i.er
  br i1 %i.ez, label %.critedge.i, label %bb.q, !prof !21

.critedge.i:                                      ; preds = %bb.p, %bb.o
  store i32 4, ptr %i.bp, align 4, !tbaa !105
  br label %.thread122

bb.q:                                             ; preds = %bb.p
  %.not.i.i.not = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i.not, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, !prof !77

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit: ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr align 1 %i.ev, i8 0, i64 %i.er, i1 false)
  %.pre.i = load ptr, ptr %i.bq, align 8, !tbaa !106 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.er
  store ptr %i.fa, ptr %i.bq, align 8, !tbaa !106
  %.not40.not = icmp eq ptr %.pre.i, null
  br i1 %.not40.not, label %.thread122, label %bb.r

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116: ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er
  store ptr %i.fb, ptr %i.bq, align 8, !tbaa !106
  %.not40.not117 = icmp eq ptr %i.ev, null
  br i1 %.not40.not117, label %.thread122, label %_ZL9hb_memcpyPvPKvm.exit

bb.r:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit
  %i.fc = load ptr, ptr %.0.i46, align 8, !tbaa !446
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.pre.i, ptr readonly align 1 %i.fc, i64 %i.er, i1 false), !alias.scope !522
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, %bb.r
  %i.fd = phi ptr [ %.pre.i, %bb.r ], [ %i.ev, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i46, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !261 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i46, i64 20
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !260 ; 2 uses
  %i.fi = zext i32 %i.fh to i64
  %.idx = mul nuw nsw i64 %i.fi, 12
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx
  %.not41136 = icmp eq i32 %i.fh, 0
  br i1 %.not41136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.fk = trunc nuw nsw i64 %i.er to i32
  br label %bb.u

._crit_edge:                                      ; preds = %bb.u, %_ZL9hb_memcpyPvPKvm.exit
  %i.fl = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false)
  %i.fm = load i32, ptr %i.ea, align 4, !tbaa !352
  %.not.i50 = icmp ult i32 %i.eg, %i.fm
  br i1 %.not.i50, label %bb.t, label %bb.s, !prof !137

bb.s:                                             ; preds = %._crit_edge
  store i32 %i.eb, ptr @_hb_CrapPool, align 16
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge
  %i.fn = load ptr, ptr %i.ec, align 8, !tbaa !351
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.ek
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %.034137 = phi ptr [ %i.ff, %.lr.ph ], [ %i.fp, %bb.u ] ; 2 uses
  call void @_ZN5graph14serialize_linkERKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS0_(ptr noundef nonnull align 4 dereferenceable(12) %.034137, ptr noundef nonnull %i.fd, i32 noundef %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  %i.fp = getelementptr inbounds nuw i8, ptr %.034137, i64 12 ; 2 uses
  %.not41 = icmp eq ptr %i.fp, %i.fj
  br i1 %.not41, label %._crit_edge, label %bb.u

bb.v:                                             ; preds = %bb.t, %bb.s
  %.0.i51 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.fo, %bb.t ]
  store i32 %i.fl, ptr %.0.i51, align 4, !tbaa !147
  %.035 = add nsw i32 %.035139, -1
  %i.fq = icmp slt i32 %.035139, 1
  br i1 %i.fq, label %.critedge, label %bb.n, !llvm.loop !526

.critedge:                                        ; preds = %bb.v, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %i.fr = load i32, ptr %i.bp, align 4, !tbaa !105 ; 5 uses
  %i.fs = load i32, ptr %i.bi, align 8, !tbaa !111
  %i.ft = icmp sgt i32 %i.fs, -1
  %.not.i.i.i.i.i = icmp ne i32 %i.fr, 0
  %i.fu = load i8, ptr %i.bm, align 8, !range !142
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = select i1 %i.ft, i1 %i.fv, i1 false
  %or.cond6.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.fw
  br i1 %or.cond6.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i: ; preds = %.critedge
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !143
  %.not.i52 = icmp eq ptr %i.fy, null
  br i1 %.not.i52, label %_ZN22hb_serialize_context_t13end_serializeEv.exit, label %bb.w, !prof !21

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i: ; preds = %.critedge
  store i32 1, ptr %i.bp, align 4, !tbaa !105
  br label %.thread122

bb.w:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i
  %.not7.i = icmp eq i32 %i.fr, 0
  br i1 %.not7.i, label %bb.z, label %bb.x, !prof !144

bb.x:                                             ; preds = %bb.w
  %i.fz = and i32 %i.fr, 2
  %.not8.i = icmp eq i32 %i.fz, 0
  br i1 %.not8.i, label %.thread122, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = or i32 %i.fr, 1
  store i32 %i.ga, ptr %i.bp, align 4, !tbaa !105
  br label %.thread122

bb.z:                                             ; preds = %bb.w
  %i.gb = load i32, ptr %i.bu, align 4, !tbaa !145
  %i.gc = icmp ult i32 %i.gb, 2
  br i1 %i.gc, label %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gd = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false) ; 0 uses
  call void @_ZN22hb_serialize_context_t13resolve_linksEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %.pr.pre = load i32, ptr %i.bp, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13end_serializeEv.exit

_ZN22hb_serialize_context_t13end_serializeEv.exit: ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i, %bb.aa
  %.pr = phi i32 [ %i.fr, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i ], [ %.pr.pre, %bb.aa ]
  %.not129 = icmp eq i32 %.pr, 0
  br i1 %.not129, label %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread, label %.thread122

_ZN22hb_serialize_context_t13end_serializeEv.exit.thread: ; preds = %bb.z, %_ZN22hb_serialize_context_t13end_serializeEv.exit
  %i.ge = load ptr, ptr %i.bq, align 8, !tbaa !106
  %i.gf = load ptr, ptr %1, align 8, !tbaa !90
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = load ptr, ptr %i.bf, align 8, !tbaa !102
  %i.gj = load ptr, ptr %i.br, align 8, !tbaa !107
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = add i64 %i.gg, %i.gk
  %i.gn = add i64 %i.gh, %i.gl
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = and i64 %i.go, 4294967295               ; 4 uses
  %.not.i.i53 = icmp eq i64 %i.gp, 0
  br i1 %.not.i.i53, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread
  %i.gq = call ptr @hb_malloc(i64 noundef %i.gp) #20 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.gq, null
  br i1 %.not7.i.i, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.ac, !prof !21

bb.ac:                                            ; preds = %bb.ab
  %i.gr = load ptr, ptr %1, align 8, !tbaa !90    ; 3 uses
  %i.gs = load ptr, ptr %i.bq, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.gs, %i.gr
  br i1 %.not.i.i.i54, label %_ZL9hb_memcpyPvPKvm.exit.i.i, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %bb.ac
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gu, %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr readonly align 1 %i.gr, i64 %i.gv, i1 false), !alias.scope !527
  br label %_ZL9hb_memcpyPvPKvm.exit.i.i

_ZL9hb_memcpyPvPKvm.exit.i.i:                     ; preds = %bb.ad, %bb.ac
  %i.gw = load ptr, ptr %i.br, align 8, !tbaa !107 ; 3 uses
  %i.gx = load ptr, ptr %i.bf, align 8, !tbaa !102 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.gx, %i.gw
  br i1 %.not.i8.i.i, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.ae, !prof !21

bb.ae:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i.i
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gz, %i.gy
  %i.hb = load ptr, ptr %i.bq, align 8, !tbaa !106
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = load ptr, ptr %1, align 8, !tbaa !90
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = sub i64 %i.hc, %i.he
  %i.hg = getelementptr inbounds i8, ptr %i.gq, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr readonly align 1 %i.gw, i64 %i.ha, i1 false), !alias.scope !531
  br label %_ZNK22hb_serialize_context_t9copy_blobEv.exit

_ZNK22hb_serialize_context_t9copy_blobEv.exit:    ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread, %bb.ab, %_ZL9hb_memcpyPvPKvm.exit.i.i, %bb.ae
  %.sroa.0.0.i.i = phi ptr [ null, %bb.ab ], [ null, %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread ], [ %i.gq, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.gq, %bb.ae ] ; 2 uses
  %.sroa.6.0.i.i = phi i64 [ 0, %bb.ab ], [ 0, %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread ], [ %i.gp, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.gp, %bb.ae ]
  %.sroa.5.8.extract.trunc.i = trunc nuw i64 %.sroa.6.0.i.i to i32
  %i.hh = call noundef ptr @hb_blob_create(ptr noundef %.sroa.0.0.i.i, i32 noundef %.sroa.5.8.extract.trunc.i, i32 noundef 2, ptr noundef %.sroa.0.0.i.i, ptr noundef nonnull @hb_free) #20
  br label %.thread122

.thread122:                                       ; preds = %bb.n, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, %bb.x, %bb.y, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i, %.critedge.i, %_ZN22hb_serialize_context_t13end_serializeEv.exit, %_ZNK22hb_serialize_context_t9copy_blobEv.exit
  %.3 = phi ptr [ null, %bb.y ], [ %i.hh, %_ZNK22hb_serialize_context_t9copy_blobEv.exit ], [ null, %_ZN22hb_serialize_context_t13end_serializeEv.exit ], [ null, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i ], [ null, %.critedge.i ], [ null, %bb.x ], [ null, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit ], [ null, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116 ], [ null, %bb.n ] ; 2 uses
  %i.hi = load i32, ptr %2, align 8, !tbaa !350
  %i.hj = add i32 %i.hi, -1
  %spec.select.i.i.i = icmp ult i32 %i.hj, -2
  br i1 %spec.select.i.i.i, label %bb.af, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit

bb.af:                                            ; preds = %.thread122
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.hk, align 4, !tbaa !352
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !351
  call void @hb_free(ptr noundef %i.hm) #20
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit

_ZN11hb_vector_tIcLb0EE5allocEjb.exit:            ; preds = %bb.af, %.thread122
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN22hb_serialize_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.hn = add i32 %.sroa.0.1.ph, -1
  %spec.select.i.i.i55 = icmp ult i32 %i.hn, -2
  br i1 %spec.select.i.i.i55, label %bb.ag, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.ag:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit
  call void @hb_free(ptr noundef %.sroa.9.2.ph) #20
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i, %_ZNK5graph7graph_t19total_size_in_bytesEv.exit.thread, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit, %bb.ag
  %.4128 = phi ptr [ %.3, %bb.ag ], [ %.3, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit ], [ null, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i ], [ %i.ax, %_ZNK5graph7graph_t19total_size_in_bytesEv.exit.thread ]
  ret ptr %.4128
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_tD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !535  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !536  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = load i32, ptr %i.a, align 8, !tbaa !537
  %i.i = add i32 %i.h, -1
  %spec.select.i.i.i = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZN11hb_vector_tIPcLb0EED2Ev.exit

bb.b:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.d, align 4, !tbaa !536
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !535
  tail call void @hb_free(ptr noundef %i.j) #20
  br label %_ZN11hb_vector_tIPcLb0EED2Ev.exit

_ZN11hb_vector_tIPcLb0EED2Ev.exit:                ; preds = %._crit_edge, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !350
  %i.m = add i32 %i.l, -1
  %spec.select.i.i.i8 = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i.i8, label %bb.c, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tIPcLb0EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !352
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !351
  tail call void @hb_free(ptr noundef %i.p) #20
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIPcLb0EED2Ev.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !350
  %i.s = add i32 %i.r, -1
  %spec.select.i.i.i9 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i.i9, label %bb.d, label %_ZN11hb_vector_tIjLb0EED2Ev.exit10

bb.d:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.t, align 4, !tbaa !352
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !351
  tail call void @hb_free(ptr noundef %i.v) #20
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit10
end_hunk_2
begin_hunk_3_@_ZN5graph7graph_tD2Ev:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5graph7graph_t8vertex_t20link_positions_validEjb(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.hb_set_t, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store atomic i32 1, ptr %3 monotonic, align 8
  store atomic i8 1, ptr %i.d monotonic, align 4
  store atomic ptr null, ptr %i.e monotonic, align 8
  store i8 1, ptr %i.f, align 8, !tbaa !407
  store i32 0, ptr %i.g, align 4, !tbaa !247
  store atomic i32 0, ptr %i.h monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.i, i8 0, i64 33, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !261  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !260  ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !309  ; 2 uses
  %.not32 = icmp uge i32 %i.s, %1
  %.not33 = icmp eq i32 %i.s, 0
  %or.cond = and i1 %2, %.not33
  %or.cond36 = or i1 %.not32, %or.cond
  br i1 %or.cond36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.02638, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !312  ; 5 uses
  %i.v = load i32, ptr %.02638, align 4
  %i.w = and i32 %i.v, 7                          ; 2 uses
  %i.x = add i32 %i.u, -1                         ; 6 uses
  %i.y = add i32 %i.x, %i.w                       ; 4 uses
  %i.z = add nsw i32 %i.w, -5
  %spec.select = icmp ult i32 %i.z, -3
  br i1 %spec.select, label %.critedge, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.aa = zext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !445
  %i.ac = load ptr, ptr %0, align 8, !tbaa !446
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not34 = icmp ugt i64 %i.af, %i.aa
  br i1 %.not34, label %bb.e, label %.critedge, !prof !137

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 %i.x, ptr %i.c, align 4, !tbaa !147
  %i.ag = load i8, ptr %i.q, align 8, !tbaa !246, !range !142, !noundef !211
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.c)
  %.pre.i.i = load i32, ptr %i.c, align 4
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.x, ptr %i.a, align 4, !tbaa !147
  %i.aj = icmp eq i32 %i.x, -2
  br i1 %i.aj, label %bb.k, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.x, ptr %i.b, align 4, !tbaa !147
  %i.ak = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.b) ; 0 uses
  %i.al = load i32, ptr %i.b, align 4, !tbaa !147
  %i.am = icmp ult i32 %i.u, %i.al
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.x, ptr %i.b, align 4, !tbaa !147
  %i.an = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !147
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  %i.aq = icmp ne i32 %i.ap, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i.i.i = phi i32 [ %i.ap, %bb.i ], [ %i.u, %bb.h ]
  %.0.i.i.i = phi i1 [ %i.aq, %bb.i ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.ar = phi i32 [ %.sink.i.i.i, %bb.j ], [ -1, %bb.g ]
  %.1.i.i.i = phi i1 [ %.0.i.i.i, %bb.j ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit: ; preds = %bb.f, %bb.k
  %i.as = phi i32 [ %.pre.i.i, %bb.f ], [ %i.ar, %bb.k ]
  %.2.i.i.i = phi i1 [ %i.ai, %bb.f ], [ %.1.i.i.i, %bb.k ]
  %i.at = icmp ule i32 %i.as, %i.y
  %i.au = select i1 %.2.i.i.i, i1 %i.at, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br i1 %i.au, label %.critedge, label %bb.l, !prof !21

bb.l:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit
  %i.av = load i8, ptr %i.q, align 8, !tbaa !246, !range !142, !noundef !211
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
  %.pre = load i8, ptr %i.f, align 8, !tbaa !407, !range !142
  %i.az = trunc nuw i8 %.pre to i1
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit, %bb.a, %.critedge35.loopexit
  %.4 = phi i1 [ true, %bb.a ], [ %i.az, %.critedge35.loopexit ], [ false, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !375
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 216
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #20 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.k, label %.preheader, !prof !21

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !369
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !375
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
  store i32 -1, ptr %i.n, align 4, !tbaa !471
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store atomic i32 1, ptr %i.o monotonic, align 4
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 1, ptr %i.r, align 8, !tbaa !538
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !476
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
  store i8 1, ptr %i.x, align 8, !tbaa !407
  store i32 0, ptr %i.y, align 4, !tbaa !247
  store atomic i32 0, ptr %i.z monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aa, i8 0, i64 33, i1 false)
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !377
  %i.ac = getelementptr inbounds nuw [216 x i8], ptr %i.ab, i64 %indvars.iv ; 17 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, ptr noundef nonnull align 8 dereferenceable(216) %i.ac, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !147
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !147
  store i32 0, ptr %i.ad, align 4, !tbaa !147
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !147
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !147
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !147
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !147
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !539
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !539
  store ptr null, ptr %i.ak, align 8, !tbaa !539
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !147
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !147
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !147
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !147
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !147
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !147
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !147
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !147
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !539
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !271
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !271
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !539
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.m, ptr noundef nonnull align 8 dereferenceable(33) %i.ay, i64 33, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ba = load i8, ptr %i.az, align 8, !range !142
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, !prof !137

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 114 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !540
  store i16 %i.bd, ptr %i.s, align 2, !tbaa !540
  store i16 0, ptr %i.bc, align 2, !tbaa !540
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 116 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 116 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !147
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !147
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !147
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !147
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !147
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !147
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !147
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !147
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 124 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 124 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !147
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !147
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !147
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !147
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 8, !tbaa !147
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !147
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !147
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !147
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !541
  store ptr %i.bv, ptr %i.t, align 8, !tbaa !541
  store ptr null, ptr %i.bu, align 8, !tbaa !541
  br label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i

_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i:          ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !142
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.f, label %_ZN5graph7graph_t8vertex_taSEOS1_.exit, !prof !21

bb.f:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 208 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !192, !range !142, !noundef !211
  store i8 %i.cb, ptr %i.bz, align 8, !tbaa !192
  store i8 0, ptr %i.ca, align 8, !tbaa !192
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull align 8 dereferenceable(49) %i.bw)
  br label %_ZN5graph7graph_t8vertex_taSEOS1_.exit

_ZN5graph7graph_t8vertex_taSEOS1_.exit:           ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, %bb.f
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !377
  %i.cd = getelementptr inbounds nuw [216 x i8], ptr %i.cc, i64 %indvars.iv ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ce) #20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  store atomic i32 -57005, ptr %i.cf monotonic, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 104 ; 2 uses
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %i.ch)
  %i.cj = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.ch) #20 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.ch) #20
  store atomic ptr null, ptr %i.cg monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !476 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.cl) #20
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.h, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !257
  %i.co = add i32 %i.cn, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.co, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.i:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  store i32 0, ptr %i.cp, align 4, !tbaa !260
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !261
  tail call void @hb_free(ptr noundef %i.cr) #20
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.i, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !257
  %i.cu = add i32 %i.ct, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.cu, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.j, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 0, ptr %i.cv, align 4, !tbaa !260
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !261
  tail call void @hb_free(ptr noundef %i.cx) #20
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.f, align 4, !tbaa !369
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.d, label %._crit_edge, !llvm.loop !542

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !377
  tail call void @hb_free(ptr noundef %i.dc) #20
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !407, !range !142, !noundef !211
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !range !142
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %_Z4swapR12hb_bit_set_tS0_.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !147
  %i.i = load i32, ptr %i.g, align 4, !tbaa !147
  store i32 %i.i, ptr %i.f, align 4, !tbaa !147
  store i32 %i.h, ptr %i.g, align 4, !tbaa !147
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 8, !tbaa !147
  %i.l = load i32, ptr %i.k, align 8, !tbaa !147
  store i32 %i.l, ptr %i.j, align 8, !tbaa !147
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !147
  %i.p = load i32, ptr %i.n, align 8, !tbaa !147
  store i32 %i.p, ptr %i.m, align 8, !tbaa !147
  store i32 %i.o, ptr %i.n, align 8, !tbaa !147
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !147
  %i.t = load i32, ptr %i.r, align 4, !tbaa !147
  store i32 %i.t, ptr %i.q, align 4, !tbaa !147
  store i32 %i.s, ptr %i.r, align 4, !tbaa !147
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !543
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !543
  store ptr %i.x, ptr %i.u, align 8, !tbaa !543
  store ptr %i.w, ptr %i.v, align 8, !tbaa !543
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !147
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !147
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !147
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !147
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !147
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !147
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !147
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !147
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !544
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !544
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !544
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !544
  br label %_Z4swapR12hb_bit_set_tS0_.exit

_Z4swapR12hb_bit_set_tS0_.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #20 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #20
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i

_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !545
  %i.g = add i32 %i.f, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.g, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.c, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

bb.c:                                             ; preds = %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !546
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !489
  tail call void @hb_free(ptr noundef %i.j) #20
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i: ; preds = %bb.c, %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !547
  %i.m = add i32 %i.l, -1
  %spec.select.i.i1.i.i.i = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i1.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.n, align 4, !tbaa !548
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !549
  tail call void @hb_free(ptr noundef %i.p) #20
  %.pre = load i32, ptr %i.e, align 8, !tbaa !545
  %i.q = add i32 %.pre, -1
  %i.r = icmp ult i32 %i.q, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !546
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !489
  tail call void @hb_free(ptr noundef %i.u) #20
  br label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN23hb_bit_set_invertible_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !375    ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !147
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
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !376

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
  %i.m = load i32, ptr %0, align 8, !tbaa !375    ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !375
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !377
  store i32 %.138.i, ptr %0, align 8, !tbaa !375
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !369  ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.al, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !377
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [216 x i8], ptr %i.t, i64 %i.u ; 15 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.v, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.w, align 4, !tbaa !471
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store atomic i32 1, ptr %i.x monotonic, align 4
  store atomic i8 1, ptr %i.y monotonic, align 4
  store atomic ptr null, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i8 1, ptr %i.aa, align 8, !tbaa !538
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store ptr null, ptr %i.ac, align 8, !tbaa !476
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
  store i8 1, ptr %i.ag, align 8, !tbaa !407
  store i32 0, ptr %i.ah, align 4, !tbaa !247
  store atomic i32 0, ptr %i.ai monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aj, i8 0, i64 33, i1 false)
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !369
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.o, align 4, !tbaa !369
  %i.am = icmp ult i32 %i.al, %1
  br i1 %i.am, label %bb.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !550

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  %i.an = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.an
  br i1 %or.cond, label %bb.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !369
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17: ; preds = %bb.b, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20 ], [ true, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !369  ; 2 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !377
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %.07 = phi ptr [ %i.i, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.g, %.lr.ph.preheader ] ; 11 uses
  %.046 = phi i32 [ %i.h, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %i.h = add i32 %.046, -1                        ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.07, i64 -216
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -72
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.j) #20
  %i.k = getelementptr inbounds i8, ptr %.07, i64 -120
  store atomic i32 -57005, ptr %i.k monotonic, align 4
  %i.l = getelementptr inbounds i8, ptr %.07, i64 -112 ; 2 uses
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  %i.o = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #20 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.m) #20
  store atomic ptr null, ptr %i.l monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.p = getelementptr inbounds i8, ptr %.07, i64 -80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !476  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.q) #20
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.c, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.07, i64 -184
  %i.s = load i32, ptr %i.r, align 8, !tbaa !257
  %i.t = add i32 %i.s, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.t, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -180
  store i32 0, ptr %i.u, align 4, !tbaa !260
  %i.v = getelementptr inbounds i8, ptr %.07, i64 -176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !261
  tail call void @hb_free(ptr noundef %i.w) #20
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.x = getelementptr inbounds i8, ptr %.07, i64 -200
  %i.y = load i32, ptr %i.x, align 8, !tbaa !257
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.z, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.e, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %.07, i64 -196
  store i32 0, ptr %i.aa, align 4, !tbaa !260
  %i.ab = getelementptr inbounds i8, ptr %.07, i64 -192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !261
  tail call void @hb_free(ptr noundef %i.ac) #20
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !551

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !369
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK23hb_bit_set_invertible_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !246, !range !142, !noundef !211
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.g = load i32, ptr %1, align 4, !tbaa !147    ; 5 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !147
  %i.h = icmp eq i32 %i.g, -2
  br i1 %i.h, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %1, align 4, !tbaa !147
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !147
  %i.i = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b) ; 0 uses
  %i.j = add i32 %i.g, 1                          ; 2 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !147
  %i.l = icmp ult i32 %i.j, %i.k
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.g, ptr %i.b, align 4, !tbaa !147
  %i.m = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !147
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = icmp ne i32 %i.o, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ %i.o, %bb.f ], [ %i.j, %bb.e ]
  %.0 = phi i1 [ %i.p, %bb.f ], [ true, %bb.e ]
  store i32 %.sink, ptr %1, align 4, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ %.0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.2 = phi i1 [ %i.f, %bb.b ], [ %.1, %bb.h ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !147    ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !21

end_hunk_3
begin_hunk_4_@_ZN5graph7graph_t22sort_shortest_distanceEv:bb.a
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !363, !range !142, !noundef !211
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN5graph7graph_t13check_successEb.exit.thread, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !233

_ZN5graph7graph_t13check_successEb.exit.thread:   ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  store i8 0, ptr %i.ae, align 1, !tbaa !363
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !511 ; 6 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread396.sink.split, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %.not.i92.not = icmp eq i32 %i.ah, 0
  br i1 %.not.i92.not, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread, label %.preheader.i94, !prof !137

.preheader.i94:                                   ; preds = %bb.g, %.preheader.i94
  %.043.i95 = phi i32 [ %i.al, %.preheader.i94 ], [ 0, %bb.g ] ; 2 uses
  %i.aj = lshr i32 %.043.i95, 1
  %i.ak = add nuw i32 %.043.i95, 8
  %i.al = add nuw i32 %i.ak, %i.aj                ; 6 uses
  %i.am = icmp ugt i32 %i.ah, %i.al
  br i1 %i.am, label %.preheader.i94, label %.thread.i96, !llvm.loop !295

.thread.i96:                                      ; preds = %.preheader.i94
  %i.an = icmp ugt i32 %i.al, 1073741823
  br i1 %i.an, label %.thread396.sink.split, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i96
  %i.ao = shl nuw i32 %i.al, 2
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ap) #20 ; 4 uses
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
  %i.at = load i8, ptr %i.ab, align 1, !tbaa !363, !range !142, !noundef !211
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread396, !prof !144

_ZN11hb_vector_tIjLb0EE6resizeEi.exit38:          ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.pre472 = load i8, ptr %i.ab, align 1, !tbaa !363, !range !142
  %i.av = trunc nuw i8 %.pre472 to i1
  br i1 %i.av, label %.thread396.sink.split, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !89

bb.j:                                             ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread
  tail call void @_ZN5graph7graph_t14update_parentsEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !352
  %.not.i.not.i.i = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.0.i.i.i = select i1 %.not.i.not.i.i, ptr @_hb_NullPool, ptr %i.az, !prof !21
  %i.ba = load i32, ptr %.0.i.i.i, align 4, !tbaa !147 ; 3 uses
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !369
  %.not.i.i = icmp ult i32 %i.ba, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = zext i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [216 x i8], ptr %i.bd, i64 %i.be
  %.0.i.i = select i1 %.not.i.i, ptr %i.bf, ptr @_hb_NullPool, !prof !137 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !607
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 76
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !501 ; 3 uses
  %.not.i.i42 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i42, label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !445
  %i.bm = load ptr, ptr %.0.i.i, align 8, !tbaa !446
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
  %i.bz = tail call ptr @hb_malloc(i64 noundef 128) #20 ; 2 uses
  %.not10.i.i.i126 = icmp eq ptr %i.bz, null
  br i1 %.not10.i.i.i126, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.lr.ph439, !prof !21

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116: ; preds = %.thread.i113
  %i.ca = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #20 ; 2 uses
  %.not22.i117 = icmp eq ptr %i.ca, null
  br i1 %.not22.i117, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.lr.ph439, !prof !118

_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread: ; preds = %bb.n, %bb.o, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116
  %.sroa.42.14 = phi ptr [ %.sroa.42.12298, %bb.n ], [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %.sroa.42.12298, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %.critedge

.lr.ph439:                                        ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, %bb.o, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit
  %.sroa.0208.6 = phi i32 [ %.sroa.0208.11296, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ 8, %bb.o ]
  %.sroa.42.6 = phi ptr [ %.sroa.42.12298, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit ], [ %i.ca, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %i.bz, %bb.o ] ; 3 uses
  store i64 %i.bx, ptr %.sroa.42.6, align 8, !tbaa !342
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.42.6, i64 8
  store i32 %i.ba, ptr %.sroa.4292.0..sroa_idx, align 8, !tbaa !147
  %i.cb = load i32, ptr @_hb_NullPool, align 16   ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.p

.loopexit:                                        ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %i.cd = icmp slt i32 %.sroa.0208.1, 0
  br i1 %i.cd, label %.critedge, label %bb.p, !llvm.loop !608

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
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !147 ; 3 uses
  %i.cf = add i32 %.sroa.22.0435, -1              ; 6 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.0436, i64 %i.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.42.0436, ptr noundef nonnull align 8 dereferenceable(12) %i.ch, i64 12, i1 false), !tbaa.struct !609
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
  br i1 %i.cm, label %.preheader.i132, label %.thread.i134, !llvm.loop !606

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
  %i.cr = tail call ptr @hb_malloc(i64 noundef %i.cq) #20 ; 3 uses
  %.not10.i.i.i147 = icmp eq ptr %i.cr, null
  br i1 %.not10.i.i.i147, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %bb.u, !prof !21

bb.u:                                             ; preds = %bb.t
  %i.cs = zext i32 %.sroa.22.0435 to i64
  %i.ct = shl nuw nsw i64 %i.cs, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %.sroa.42.0436, i64 %i.ct, i1 false), !alias.scope !610
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137: ; preds = %bb.s
  %i.cu = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.42.0436, i64 noundef %i.cq) #20 ; 2 uses
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
  %.pre = load i64, ptr %.sroa.42.8368516, align 8, !tbaa !614 ; 3 uses
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
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !614 ; 3 uses
  %.not.i32 = icmp sgt i64 %.pre, %i.dd
  br i1 %.not.i32, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph428
  br i1 %i.cy, label %bb.w, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.w:                                             ; preds = %bb.v
  %i.de = zext i32 %i.cw to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !614 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.dg
  br i1 %.not27.i, label %.thread370, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.x:                                             ; preds = %.lr.ph428
  br i1 %i.cy, label %..thread370_crit_edge, label %bb.y

..thread370_crit_edge:                            ; preds = %bb.x
  %.phi.trans.insert = zext i32 %i.cw to i64
  %.phi.trans.insert460 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.phi.trans.insert
  %.pre461 = load i64, ptr %.phi.trans.insert460, align 8, !tbaa !614
  br label %.thread370

.thread370:                                       ; preds = %..thread370_crit_edge, %bb.w
  %i.dh = phi i64 [ %.pre461, %..thread370_crit_edge ], [ %i.dg, %bb.w ]
  %i.di = icmp slt i64 %i.dd, %i.dh
  %spec.select.i = select i1 %i.di, i32 %i.cx, i32 %i.cw ; 2 uses
  %.pre462 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert463 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.pre462
  %.pre464 = load i64, ptr %.phi.trans.insert463, align 8, !tbaa !342
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread370
  %i.dj = phi i64 [ %i.dd, %bb.x ], [ %.pre464, %.thread370 ]
  %.pre-phi = phi i64 [ %i.db, %bb.x ], [ %.pre462, %.thread370 ]
  %.0.i33 = phi i32 [ %i.cx, %bb.x ], [ %spec.select.i, %.thread370 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.pre-phi ; 2 uses
  store i64 %i.dj, ptr %i.da, align 8, !tbaa !342
  store i64 %.pre, ptr %i.dk, align 8, !tbaa !342
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dl, align 8, !tbaa !147
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !147
  store i32 %i.do, ptr %i.dl, align 8, !tbaa !147
  store i32 %i.dn, ptr %i.dm, align 8, !tbaa !147
  %i.dp = shl i32 %.0.i33, 1                      ; 2 uses
  %i.dq = or disjoint i32 %i.dp, 1                ; 2 uses
  %i.dr = add nuw i32 %i.dp, 2
  %i.ds = icmp ult i32 %i.dq, %.sroa.22.5366517
  br i1 %i.ds, label %.lr.ph428, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit:  ; preds = %bb.y, %bb.w, %bb.v, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.42.8369 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.8368516, %bb.v ], [ %.sroa.42.8368516, %bb.w ], [ %.sroa.42.8368516, %bb.y ] ; 3 uses
  %.sroa.22.5367 = phi i32 [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.5366517, %bb.v ], [ %.sroa.22.5366517, %bb.w ], [ %.sroa.22.5366517, %bb.y ]
  %.sroa.0208.8365 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.0208.8364518, %bb.v ], [ %.sroa.0208.8364518, %bb.w ], [ %.sroa.0208.8364518, %bb.y ] ; 3 uses
  %i.dt = load i32, ptr %i.r, align 4, !tbaa !352 ; 2 uses
  %i.du = icmp uge i32 %.023437, %i.dt
  %i.dv = load i8, ptr %i.ab, align 1, !tbaa !363, !range !142, !noundef !211
  %i.dw = trunc nuw i8 %i.dv to i1                ; 2 uses
  %brmerge.i49.not = and i1 %i.du, %i.dw
  br i1 %brmerge.i49.not, label %.thread396.sink.split, label %_ZN5graph7graph_t13check_successEb.exit50, !prof !233

_ZN5graph7graph_t13check_successEb.exit50:        ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  br i1 %i.dw, label %bb.z, label %.thread396, !prof !144

bb.z:                                             ; preds = %_ZN5graph7graph_t13check_successEb.exit50
  %i.dx = add i32 %.023437, 1                     ; 2 uses
  %.not.i51 = icmp ult i32 %.023437, %i.dt
  br i1 %.not.i51, label %bb.ab, label %bb.aa, !prof !137

bb.aa:                                            ; preds = %bb.z
  store i32 %i.cb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.dy = load ptr, ptr %i.cc, align 8, !tbaa !351
  %i.dz = zext i32 %.023437 to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.aa, %bb.ab
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.ea, %bb.ab ]
  store i32 %.sroa.2.0.copyload.i, ptr %.0.i52, align 4, !tbaa !147
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !369
  %.not.i53 = icmp ult i32 %.sroa.2.0.copyload.i, %i.eb
  br i1 %.not.i53, label %bb.ad, label %bb.ac, !prof !137

bb.ac:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.ad:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.ec = load ptr, ptr %i.bc, align 8, !tbaa !377
  %i.ed = zext i32 %.sroa.2.0.copyload.i to i64
  %i.ee = getelementptr inbounds nuw [216 x i8], ptr %i.ec, i64 %i.ed
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.ac, %bb.ad
  %.0.i54 = phi ptr [ @_hb_CrapPool, %bb.ac ], [ %i.ee, %bb.ad ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i54, i64 20
  %.val.i = load i32, ptr %i.ef, align 4, !tbaa !260, !noalias !616 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i54, i64 24
  %.val1.i = load ptr, ptr %i.eg, align 8, !tbaa !261, !noalias !616 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i54, i64 36
  %.val2.i = load i32, ptr %i.eh, align 4, !tbaa !260, !noalias !616 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i54, i64 40
  %.val3.i = load ptr, ptr %i.ei, align 8, !tbaa !261, !noalias !616 ; 2 uses
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
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !309 ; 2 uses
  %.not.i59 = icmp ult i32 %i.eq, %i.ah
  br i1 %.not.i59, label %bb.af, label %bb.ae, !prof !137

bb.ae:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  store i32 %i.cb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit61

bb.af:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13196.0.ph, i64 %i.er ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5graph7graph_t16update_distancesEv:bb.a
  %.0.i.i = select i1 %.not.i.not.i, ptr @_hb_NullPool, ptr %i.n, !prof !21
  %i.o = load i32, ptr %.0.i.i, align 4, !tbaa !147 ; 2 uses
  %.not.i42 = icmp ult i32 %i.o, %i.e
  br i1 %.not.i42, label %.thread, label %bb.d, !prof !137

.thread:                                          ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !377
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [216 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 0, ptr %i.t, align 8, !tbaa !607
  br label %.preheader.i.preheader

bb.d:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 56), align 8, !tbaa !607
  br i1 %.not366, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85, label %.preheader.i.preheader, !prof !144

.preheader.i.preheader:                           ; preds = %.thread, %bb.d
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.043.i = phi i32 [ %i.w, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.u = lshr i32 %.043.i, 1
  %i.v = add i32 %.043.i, 8
  %i.w = add i32 %i.v, %i.u                       ; 5 uses
  %i.x = icmp ugt i32 %i.e, %i.w
  br i1 %i.x, label %.preheader.i, label %.thread.i, !llvm.loop !606

.thread.i:                                        ; preds = %.preheader.i
  %i.y = icmp ugt i32 %i.w, 268435455
  br i1 %i.y, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.z = shl nuw i32 %i.w, 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.aa) #20 ; 2 uses
  %.not22.i = icmp eq ptr %i.ab, null
  br i1 %.not22.i, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !352
  %.not.i.not.i44 = icmp eq i32 %i.ac, 0
  %i.ad = load ptr, ptr %i.m, align 8
  %.0.i.i45 = select i1 %.not.i.not.i44, ptr @_hb_NullPool, ptr %i.ad, !prof !21
  %i.ae = load i32, ptr %.0.i.i45, align 4, !tbaa !147
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85: ; preds = %bb.d
  %i.af = load i32, ptr %i.k, align 4, !tbaa !352
  %.not.i.not.i44268 = icmp eq i32 %i.af, 0
  %i.ag = load ptr, ptr %i.m, align 8
  %.0.i.i45269 = select i1 %.not.i.not.i44268, ptr @_hb_NullPool, ptr %i.ag, !prof !21
  %i.ah = load i32, ptr %.0.i.i45269, align 4, !tbaa !147
  %i.ai = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #20 ; 2 uses
  %.not22.i86 = icmp eq ptr %i.ai, null
  br i1 %.not22.i86, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %.thread.i, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  %i.aj = phi i32 [ %i.ae, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ah, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.0178.4 = phi i32 [ %i.w, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.43.4 = phi ptr [ %i.ab, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ai, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ] ; 3 uses
  store i64 0, ptr %.sroa.43.4, align 8, !tbaa !342
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.43.4, i64 8
  store i32 %i.aj, ptr %.sroa.4264.0..sroa_idx, align 8, !tbaa !147
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33:     ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread
  %.sroa.43.5284 = phi ptr [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.43.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %.sroa.22.4283 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ 1, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ]
  %.sroa.0178.5282 = phi i32 [ -1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.0178.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !511 ; 4 uses
  %or.cond = icmp sgt i32 %i.ak, 0
  br i1 %or.cond, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, !prof !639

.preheader.i.i:                                   ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.an, %.preheader.i.i ], [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ] ; 2 uses
  %i.al = lshr i32 %.053.i.i, 1
  %i.am = add nuw i32 %.053.i.i, 8
  %i.an = add nuw i32 %i.am, %i.al                ; 3 uses
  %i.ao = icmp ugt i32 %i.ak, %i.an
  br i1 %i.ao, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, !llvm.loop !640

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %.preheader.i.i
  %i.ap = zext i32 %i.an to i64
  %i.aq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ap) #20 ; 3 uses
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
  store i64 9223372036854775807, ptr %i.aw, align 8, !tbaa !607
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  store i64 9223372036854775807, ptr %i.ay, align 8, !tbaa !607
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 488
  store i64 9223372036854775807, ptr %i.ba, align 8, !tbaa !607
  %i.bb = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 704
  store i64 9223372036854775807, ptr %i.bc, align 8, !tbaa !607
  %i.bd = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 920
  store i64 9223372036854775807, ptr %i.be, align 8, !tbaa !607
  %i.bf = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1136
  store i64 9223372036854775807, ptr %i.bg, align 8, !tbaa !607
  %i.bh = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1352
  store i64 9223372036854775807, ptr %i.bi, align 8, !tbaa !607
  %i.bj = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1568
  store i64 9223372036854775807, ptr %i.bk, align 8, !tbaa !607
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !641

bb.f:                                             ; preds = %.lr.ph363, %.loopexit
  %.sroa.43.0362 = phi ptr [ %.sroa.43.5284, %.lr.ph363 ], [ %.sroa.43.3, %.loopexit ] ; 12 uses
  %.sroa.22.0361 = phi i32 [ %.sroa.22.4283, %.lr.ph363 ], [ %.sroa.22.3, %.loopexit ] ; 6 uses
  %.sroa.0178.0360 = phi i32 [ %.sroa.0178.5282, %.lr.ph363 ], [ %.sroa.0178.3, %.loopexit ] ; 10 uses
  %i.bl = icmp eq i32 %.sroa.22.0361, 0
  br i1 %i.bl, label %_ZN5graph7graph_t13check_successEb.exit.thread, label %bb.g

_ZN5graph7graph_t13check_successEb.exit.thread:   ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !363, !range !142, !noundef !211
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.am, label %_ZN5graph7graph_t13check_successEb.exit73

bb.g:                                             ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.43.0362, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !147 ; 5 uses
  %i.bp = add i32 %.sroa.22.0361, -1              ; 7 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.0362, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.43.0362, ptr noundef nonnull align 8 dereferenceable(12) %i.br, i64 12, i1 false), !tbaa.struct !609
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
  br i1 %i.bw, label %.preheader.i101, label %.thread.i103, !llvm.loop !606

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
  %i.cb = tail call ptr @hb_malloc(i64 noundef %i.ca) #20 ; 3 uses
  %.not10.i.i.i116 = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i116, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.cc = zext i32 %.sroa.22.0361 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 1 %.sroa.43.0362, i64 %i.cd, i1 false), !alias.scope !642
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106: ; preds = %bb.i
  %i.ce = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.43.0362, i64 noundef %i.ca) #20 ; 2 uses
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
  %.pre = load i64, ptr %.sroa.43.6305417, align 8, !tbaa !614 ; 3 uses
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
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !614 ; 3 uses
  %.not.i40 = icmp sgt i64 %.pre, %i.cp
  br i1 %.not.i40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %bb.m, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cq = zext i32 %i.ci to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !614 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.cs
  br i1 %.not27.i, label %.thread307, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.n:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %..thread307_crit_edge, label %bb.o

..thread307_crit_edge:                            ; preds = %bb.n
  %.phi.trans.insert = zext i32 %i.ci to i64
  %.phi.trans.insert373 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.phi.trans.insert
  %.pre374 = load i64, ptr %.phi.trans.insert373, align 8, !tbaa !614
  br label %.thread307

.thread307:                                       ; preds = %..thread307_crit_edge, %bb.m
  %i.ct = phi i64 [ %.pre374, %..thread307_crit_edge ], [ %i.cs, %bb.m ]
  %i.cu = icmp slt i64 %i.cp, %i.ct
  %spec.select.i = select i1 %i.cu, i32 %i.cj, i32 %i.ci ; 2 uses
  %.pre375 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert376 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre375
  %.pre377 = load i64, ptr %.phi.trans.insert376, align 8, !tbaa !342
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread307
  %i.cv = phi i64 [ %i.cp, %bb.n ], [ %.pre377, %.thread307 ]
  %.pre-phi = phi i64 [ %i.cn, %bb.n ], [ %.pre375, %.thread307 ]
  %.0.i41 = phi i32 [ %i.cj, %bb.n ], [ %spec.select.i, %.thread307 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre-phi ; 2 uses
  store i64 %i.cv, ptr %i.cm, align 8, !tbaa !342
  store i64 %.pre, ptr %i.cw, align 8, !tbaa !342
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !147
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !147
  store i32 %i.da, ptr %i.cx, align 8, !tbaa !147
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !147
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
  br i1 %.not.i49, label %bb.q, label %bb.p, !prof !137

bb.p:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

bb.q:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  %i.df = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.df
  %.pre378 = load i8, ptr %i.dg, align 1, !tbaa !192, !range !142
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

_ZN11hb_vector_tIbLb0EEixEi.exit:                 ; preds = %bb.p, %bb.q
  %i.dh = phi i8 [ %i.at, %bb.p ], [ %.pre378, %bb.q ]
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.loopexit, label %bb.r, !llvm.loop !646

bb.r:                                             ; preds = %_ZN11hb_vector_tIbLb0EEixEi.exit
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !369
  %.not.i51 = icmp ult i32 %.sroa.2.0.copyload.i, %i.dj
  br i1 %.not.i51, label %bb.t, label %bb.s, !prof !137

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

bb.t:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !377
  %i.dl = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dm = getelementptr inbounds nuw [216 x i8], ptr %i.dk, i64 %i.dl
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53: ; preds = %bb.s, %bb.t
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.dm, %bb.t ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i52, i64 56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !607
  br i1 %.not.i49, label %bb.v, label %bb.u, !prof !137

bb.u:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.v:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  %i.dp = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.dp
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.u, %bb.v
  %.0.i55 = phi ptr [ @_hb_CrapPool, %bb.u ], [ %i.dq, %bb.v ]
  store i8 1, ptr %.0.i55, align 1, !tbaa !192
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i52, i64 20
  %.val.i = load i32, ptr %i.dr, align 4, !tbaa !260, !noalias !647 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i52, i64 24
  %.val1.i = load ptr, ptr %i.ds, align 8, !tbaa !261, !noalias !647 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i52, i64 36
  %.val2.i = load i32, ptr %i.dt, align 4, !tbaa !260, !noalias !647 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i52, i64 40
  %.val3.i = load ptr, ptr %i.du, align 8, !tbaa !261, !noalias !647 ; 2 uses
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
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !309 ; 5 uses
  %.not.i60 = icmp ult i32 %i.ec, %.sroa.8161.0
  br i1 %.not.i60, label %bb.x, label %bb.w, !prof !137
end_hunk_5
begin_hunk_6_@_ZN5graph22actuate_subtable_splitINS_18MarkBasePosFormat115split_context_tEEE11hb_vector_tIjLb0EERT_RKS4_:bb.a
  br i1 %i.ay, label %bb.m, label %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.az = xor i32 %i.ax, -1
  br label %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32

_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32:   ; preds = %bb.l, %bb.m
  %i.ba = phi i32 [ %i.ax, %bb.l ], [ %i.az, %bb.m ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !352
  br label %.critedge.sink.split

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.bc = phi i32 [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  store i32 0, ptr %i.f, align 4, !tbaa !352
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32, %bb.n
  %.sink45 = phi i32 [ %i.bc, %bb.n ], [ %i.ba, %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32 ]
  %i.bd = xor i32 %.sink45, -1
  store i32 %i.bd, ptr %0, align 8, !tbaa !350
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.a, %.critedge24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph18MarkBasePosFormat115split_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #9 comdat align 2 {
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
  %i.e = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #20 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.c) #20
  store atomic ptr null, ptr %i.b monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !476  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i
  tail call void @hb_free(ptr noundef nonnull %i.g) #20
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1550
  %i.j = add i32 %i.i, -1
  %spec.select.i.i.i = icmp ult i32 %i.j, -2
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1544 ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1540
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %i.o
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.r, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.046.i.i.i = phi i32 [ %i.q, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i ], [ %i.l, %.lr.ph.preheader.i.i.i ]
  %i.q = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -88 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !350
  %i.u = add i32 %i.t, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.u, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.e, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.v, align 4, !tbaa !352
  %i.w = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !351
  tail call void @hb_free(ptr noundef %i.x) #20
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.r) #20
  %.not.i.i.i1 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i1, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1551

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i, %bb.d
  store i32 0, ptr %i.k, align 4, !tbaa !1544
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1540
  tail call void @hb_free(ptr noundef %i.z) #20
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
  %i.b = load i32, ptr %0, align 8, !tbaa !1550   ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !147
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
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !1560

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
  %i.m = load i32, ptr %0, align 8, !tbaa !1550   ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !1550
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !1540
  store i32 %.138.i, ptr %0, align 8, !tbaa !1550
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1544 ; 5 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.ae, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !1540
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.t, i64 %i.u ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, i8 0, i64 72, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store atomic i32 1, ptr %i.v monotonic, align 4
  store atomic i8 1, ptr %i.w monotonic, align 4
  store atomic ptr null, ptr %i.x monotonic, align 8
  store i8 1, ptr %i.y, align 8, !tbaa !407
  store i32 0, ptr %i.z, align 4, !tbaa !247
  store atomic i32 0, ptr %i.aa monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ab, i8 0, i64 33, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !1544
  %i.ae = add i32 %i.ad, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.o, align 4, !tbaa !1544
  %i.af = icmp ult i32 %i.ae, %1
  br i1 %i.af, label %bb.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !1561

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread
  %i.ag = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.ag
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ah = sub nuw i32 %i.p, %1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1540
  %i.ak = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.ak
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.an, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i ], [ %i.al, %.lr.ph.preheader.i ] ; 4 uses
  %.046.i = phi i32 [ %i.am, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i ], [ %i.ah, %.lr.ph.preheader.i ]
  %i.am = add i32 %.046.i, -1                     ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.07.i, i64 -88 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.07.i, i64 -16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !350
  %i.aq = add i32 %i.ap, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.aq, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.k, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i

bb.k:                                             ; preds = %.lr.ph.i15
  %i.ar = getelementptr inbounds i8, ptr %.07.i, i64 -12
  store i32 0, ptr %i.ar, align 4, !tbaa !352
  %i.as = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !351
  tail call void @hb_free(ptr noundef %i.at) #20
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i: ; preds = %bb.k, %.lr.ph.i15
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.an) #20
  %.not.i16 = icmp eq i32 %i.am, 0
  br i1 %.not.i16, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, label %.lr.ph.i15, !llvm.loop !1551

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i, %bb.i, %bb.j, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !1544
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
  %i.a = load i32, ptr %0, align 8, !tbaa !1550
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 88
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #20 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.g, label %.preheader, !prof !21

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1544
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !1550
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
  store atomic i32 1, ptr %i.k monotonic, align 4
  store atomic i8 1, ptr %i.l monotonic, align 4
  store atomic ptr null, ptr %i.m monotonic, align 8
  store i8 1, ptr %i.n, align 8, !tbaa !407
  store i32 0, ptr %i.o, align 4, !tbaa !247
  store atomic i32 0, ptr %i.p monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.q, i8 0, i64 33, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !1540 ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !142
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !192, !range !142, !noundef !211
  store i8 %i.z, ptr %i.x, align 8, !tbaa !192
  store i8 0, ptr %i.y, align 8, !tbaa !192
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.n, ptr noundef nonnull align 8 dereferenceable(49) %i.u)
  %.pre = load i32, ptr %i.r, align 8, !tbaa !147
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !453
  %.pre22 = load ptr, ptr %i.h, align 8, !tbaa !1540
  br label %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit

_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit: ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.s, %bb.d ], [ %.pre22, %bb.e ]
  %i.ab = phi ptr [ null, %bb.d ], [ %.pre21, %bb.e ]
  %i.ac = phi i32 [ 0, %bb.d ], [ %.pre, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !147
  store i32 %i.ae, ptr %i.r, align 8, !tbaa !147
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !147
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 76 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !147
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !147
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !147
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !147
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !453
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !453
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !453
  %i.am = getelementptr inbounds nuw [88 x i8], ptr %i.aa, i64 %indvars.iv ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !350
  %i.ap = add i32 %i.ao, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ap, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit

bb.f:                                             ; preds = %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  store i32 0, ptr %i.aq, align 4, !tbaa !352
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !351
  tail call void @hb_free(ptr noundef %i.as) #20
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit, %bb.f
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.am) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load i32, ptr %i.f, align 4, !tbaa !1544
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.d, label %._crit_edge, !llvm.loop !1562

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1540
  tail call void @hb_free(ptr noundef %i.ax) #20
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5graph18MarkBasePosFormat111clone_rangeERNS0_15split_context_tEjjj(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %struct.hb_map_iter_t.480, align 8  ; 6 uses
  %6 = alloca %struct.hb_zip_iter_t.486, align 8  ; 11 uses
  %7 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %8 = alloca %struct.hb_sink_t.495, align 8      ; 4 uses
  %9 = alloca %"struct.graph::graph_t::vertex_and_table_t.479", align 8 ; 5 uses
  %10 = alloca %struct.hb_set_t, align 8          ; 13 uses
  %.sroa.0113 = alloca %struct.hb_filter_iter_t.482, align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1563, !nonnull !211, !align !443 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !438, !nonnull !211, !align !443 ; 4 uses
  %i.d = tail call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i32 noundef 12) #20 ; 12 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !369
  %.not.i.i = icmp ult i32 %i.d, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i32 %i.d to i64                     ; 5 uses
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.i, i64 %i.j
  %.0.i.i = select i1 %.not.i.i, ptr %i.k, ptr @_hb_NullPool, !prof !137
  %i.l = load ptr, ptr %.0.i.i, align 8, !tbaa !311 ; 5 uses
  %i.m = load i16, ptr %0, align 1, !tbaa !289
  store i16 %i.m, ptr %i.l, align 1, !tbaa !289
  %i.n = sub i32 %4, %3
  %i.o = trunc i32 %i.n to i16
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  store i16 %i.q, ptr %i.p, align 1, !tbaa !289
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1539 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.f, align 4, !tbaa !369  ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.s, %i.u
  %i.v = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [216 x i8], ptr %i.v, i64 %i.w
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.x, ptr @_hb_NullPool, !prof !137 ; 4 uses
  %i.y = load ptr, ptr %.0.i.i.i, align 8, !tbaa !311 ; 2 uses
  %i.z = icmp uge ptr %i.t, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i = icmp ult ptr %i.t, %i.ab
  %or.cond.i = select i1 %i.z, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !293 ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not2427.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !669
  %wide.trip.count.i = zext i32 %i.ad to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.e, !llvm.loop !670

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !312
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aj
  %.not23.not.i = icmp eq ptr %i.t, %i.ak
  br i1 %.not23.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !309
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit:   ; preds = %bb.d, %bb.b, %bb.c, %.thread.i
  %.4.i = phi i32 [ -1, %bb.b ], [ %i.am, %.thread.i ], [ -1, %bb.c ], [ -1, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.not.i.i51 = icmp ult i32 %i.d, %i.u
  br i1 %.not.i.i51, label %bb.g, label %bb.f, !prof !137

bb.f:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.g:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  %i.ao = getelementptr inbounds nuw [216 x i8], ptr %i.v, i64 %i.j
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i52 = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.ao, %bb.g ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 20 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !260 ; 2 uses
  %i.ar = add i32 %i.aq, 1                        ; 5 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.h, !prof !21

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 16
  %i.au = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i32 noundef %i.ar, i1 noundef zeroext false)
  br i1 %i.au, label %bb.i, label %bb.l, !prof !308

bb.i:                                             ; preds = %bb.h
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !260 ; 3 uses
  %i.aw = icmp ugt i32 %i.ar, %i.av
  br i1 %i.aw, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nuw nsw i32 %i.ar, %i.av
  %i.ay = mul i32 %i.ax, 12                       ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN2OT17item_variations_t16as_item_varstoreEbb:bb.a
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
  %i.vs = load i8, ptr %i.vq, align 1, !tbaa !289
  %i.vt = load i8, ptr %i.vr, align 1, !tbaa !289
  %i.vu = call i8 @llvm.umax.i8(i8 %i.vs, i8 %i.vt) ; 2 uses
  %i.vv = zext i8 %i.vu to i32
  %i.vw = add i32 %i.vo, %i.vv                    ; 2 uses
  %i.vx = icmp ne i8 %i.vu, 0
  %i.vy = zext i1 %i.vx to i32
  %i.vz = add i32 %i.vp, %i.vy                    ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %scalar.ph1387, !llvm.loop !2508

_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit: ; preds = %bb.bz, %._crit_edge.loopexit.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = phi i64 [ 0, %bb.bz ], [ %i.vn, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i to i32 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.tr, i64 20
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !2506
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ts, i64 20
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !2506
  %.neg.i = sub i32 %i.tw, %.sroa.0.0.extract.trunc.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.tr, i64 28
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !2505
  %.neg18.i = mul i32 %i.wf, %.neg.i
  %.neg19.i = sub i32 %i.tu, %.sroa.0.0.extract.trunc.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ts, i64 28
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !2505
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
  br i1 %i.wx, label %.preheader.i410, label %.thread.i412, !llvm.loop !2509

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
  %i.xc = call ptr @hb_malloc(i64 noundef %i.xb) #20 ; 4 uses
  %.not10.i.i.i422 = icmp eq ptr %i.xc, null
  br i1 %.not10.i.i.i422, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i, label %bb.cg, !prof !21

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i.i423 = icmp eq i32 %.sroa.10.1838, 0
  br i1 %.not.i.i.i.i423, label %.critedge.i234, label %bb.ch, !prof !21

bb.ch:                                            ; preds = %bb.cg
  %i.xd = zext i32 %.sroa.10.1838 to i64
  %i.xe = shl nuw nsw i64 %i.xd, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xc, ptr nonnull readonly align 1 %.sroa.16.1839, i64 %i.xe, i1 false), !alias.scope !2510
  br label %.critedge.i234

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i: ; preds = %bb.ce, %bb.cd
  %i.xf = phi ptr [ null, %bb.ce ], [ %.sroa.16.1839, %bb.cd ]
  %i.xg = shl nuw i32 %i.ww, 4
  %i.xh = zext i32 %i.xg to i64
  %i.xi = call ptr @hb_realloc(ptr noundef %i.xf, i64 noundef %i.xh) #20 ; 2 uses
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
  store i64 %i.ws, ptr %i.xl, align 8, !tbaa !342
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !147
  br label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit: ; preds = %bb.by, %bb.bx, %.critedge.i234, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit, %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit
  %.sroa.0535.2 = phi i32 [ %.sroa.0535.5, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit ], [ %.sroa.0535.1837, %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit ], [ %.sroa.0535.3, %.critedge.i234 ], [ %.sroa.0535.1837, %bb.bx ], [ %.sroa.0535.1837, %bb.by ] ; 2 uses
  %.sroa.10.2 = phi i32 [ %.sroa.10.1838, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit ], [ %.sroa.10.1838, %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit ], [ %.pre-phi997, %.critedge.i234 ], [ %.sroa.10.1838, %bb.bx ], [ %.sroa.10.1838, %bb.by ] ; 2 uses
  %.sroa.16.2 = phi ptr [ %.sroa.16.1839, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit ], [ %.sroa.16.1839, %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit ], [ %.sroa.16.3, %.critedge.i234 ], [ %.sroa.16.1839, %bb.bx ], [ %.sroa.16.1839, %bb.by ] ; 2 uses
  %indvars.iv.next967 = add nuw nsw i64 %indvars.iv966, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next967 to i32
  %exitcond969.not = icmp eq i32 %i.ry, %lftr.wideiv
  br i1 %exitcond969.not, label %.loopexit, label %bb.bw, !llvm.loop !2514

bb.ci:                                            ; preds = %.lr.ph882, %_ZN2OT20delta_row_encoding_tD2Ev.exit274
  %.sroa.32.0881 = phi ptr [ %.sroa.16.1.lcssa, %.lr.ph882 ], [ %.sroa.32.3, %_ZN2OT20delta_row_encoding_tD2Ev.exit274 ] ; 10 uses
  %.sroa.13.0880 = phi i32 [ %.sroa.10.1.lcssa, %.lr.ph882 ], [ %.sroa.13.3, %_ZN2OT20delta_row_encoding_tD2Ev.exit274 ] ; 5 uses
  %.sroa.0478.0879 = phi i32 [ %.sroa.0535.1.lcssa, %.lr.ph882 ], [ %.sroa.0478.3, %_ZN2OT20delta_row_encoding_tD2Ev.exit274 ] ; 9 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.32.0881, align 8, !tbaa !342 ; 6 uses
  %i.xm = add i32 %.sroa.13.0880, -1              ; 8 uses
  %i.xn = zext i32 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.0881, i64 %i.xn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.32.0881, ptr noundef nonnull align 8 dereferenceable(12) %i.xo, i64 12, i1 false), !tbaa.struct !609
  %i.xp = icmp slt i32 %i.xm, 0
  %i.xq = icmp slt i32 %.sroa.0478.0879, 0
  %or.cond = select i1 %i.xp, i1 true, i1 %i.xq, !prof !146
  br i1 %or.cond, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread, label %bb.cj, !prof !146

bb.cj:                                            ; preds = %bb.ci
  %.not.i425 = icmp samesign ugt i32 %i.xm, %.sroa.0478.0879
  br i1 %.not.i425, label %.preheader.i427, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit, !prof !21

.preheader.i427:                                  ; preds = %bb.cj, %.preheader.i427
  %.043.i428 = phi i32 [ %i.xt, %.preheader.i427 ], [ %.sroa.0478.0879, %bb.cj ] ; 2 uses
  %i.xr = lshr i32 %.043.i428, 1
  %i.xs = add nuw i32 %.043.i428, 8
  %i.xt = add nuw i32 %i.xs, %i.xr                ; 6 uses
  %i.xu = icmp ugt i32 %i.xm, %i.xt
  br i1 %i.xu, label %.preheader.i427, label %.thread.i429, !llvm.loop !2509

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
  %i.xz = call ptr @hb_malloc(i64 noundef %i.xy) #20 ; 3 uses
  %.not10.i.i.i442 = icmp eq ptr %i.xz, null
  br i1 %.not10.i.i.i442, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i439, label %bb.cm, !prof !21

bb.cm:                                            ; preds = %bb.cl
  %i.ya = zext i32 %.sroa.13.0880 to i64
  %i.yb = shl nuw nsw i64 %i.ya, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xz, ptr nonnull readonly align 1 %.sroa.32.0881, i64 %i.yb, i1 false), !alias.scope !2515
  br label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i432: ; preds = %bb.ck
  %i.yc = call ptr @hb_realloc(ptr noundef nonnull %.sroa.32.0881, i64 noundef %i.xy) #20 ; 2 uses
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
  %.pre985 = load i64, ptr %.sroa.32.47071138, align 8, !tbaa !2499 ; 3 uses
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
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !2499 ; 3 uses
  %.not749 = icmp ugt i64 %.pre985, %i.yn
  br i1 %.not749, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph857
  br i1 %i.yi, label %bb.co, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit

bb.co:                                            ; preds = %bb.cn
  %i.yo = zext i32 %i.yg to i64
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.47071138, i64 %i.yo
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !2499 ; 2 uses
  %.not750 = icmp ugt i64 %.pre985, %i.yq
  br i1 %.not750, label %.thread709, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit

bb.cp:                                            ; preds = %.lr.ph857
  br i1 %i.yi, label %..thread709_crit_edge, label %bb.cq

..thread709_crit_edge:                            ; preds = %bb.cp
  %.phi.trans.insert = zext i32 %i.yg to i64
  %.phi.trans.insert986 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.47071138, i64 %.phi.trans.insert
  %.pre987 = load i64, ptr %.phi.trans.insert986, align 8, !tbaa !2499
  br label %.thread709

.thread709:                                       ; preds = %..thread709_crit_edge, %bb.co
  %i.yr = phi i64 [ %.pre987, %..thread709_crit_edge ], [ %i.yq, %bb.co ]
  %i.ys = icmp ult i64 %i.yn, %i.yr
  %spec.select.i = select i1 %i.ys, i32 %i.yh, i32 %i.yg ; 2 uses
  %.pre988 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert989 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.47071138, i64 %.pre988
  %.pre990 = load i64, ptr %.phi.trans.insert989, align 8, !tbaa !342
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.thread709
  %i.yt = phi i64 [ %i.yn, %bb.cp ], [ %.pre990, %.thread709 ]
  %.pre-phi = phi i64 [ %i.yl, %bb.cp ], [ %.pre988, %.thread709 ]
  %.0.i = phi i32 [ %i.yh, %bb.cp ], [ %spec.select.i, %.thread709 ] ; 2 uses
  %i.yu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.32.47071138, i64 %.pre-phi ; 2 uses
  store i64 %i.yt, ptr %i.yk, align 8, !tbaa !342
  store i64 %.pre985, ptr %i.yu, align 8, !tbaa !342
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 8 ; 2 uses
  %i.yx = load i32, ptr %i.yv, align 8, !tbaa !147
  %i.yy = load i32, ptr %i.yw, align 8, !tbaa !147
  store i32 %i.yy, ptr %i.yv, align 8, !tbaa !147
  store i32 %i.yx, ptr %i.yw, align 8, !tbaa !147
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
  %i.zk = load i32, ptr %i.tl, align 4, !tbaa !488 ; 6 uses
  %i.zl = icmp ult i32 %i.zj, %i.zk
  %i.zm = load ptr, ptr %i.tm, align 8, !tbaa !489 ; 6 uses
  br i1 %i.zl, label %bb.cr, label %._crit_edge.i.i.i.i, !prof !137

bb.cr:                                            ; preds = %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11pop_minimumEv.exit
  %i.zn = zext i32 %i.zj to i64                   ; 2 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.zn
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !490
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
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !490 ; 2 uses
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
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !492

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i: ; preds = %bb.ct
  store atomic i32 %i.zs, ptr %i.tj monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i:         ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, %bb.cr
  %i.aaa = phi i64 [ %i.zt, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i ], [ %i.zn, %bb.cr ]
  %.sink.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i, align 8, !tbaa !493 ; 2 uses
  %.not.i.i.i237 = icmp eq ptr %.sink.i.i.i.i, null
  br i1 %.not.i.i.i237, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %_ZNK12hb_bit_set_t3hasEj.exit

_ZNK12hb_bit_set_t3hasEj.exit:                    ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !494
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i, i64 %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aah = lshr i64 %.sroa.0.0.copyload.i, 26
  %i.aai = and i64 %i.aah, 7
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.aag, i64 %i.aai
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !252
  %i.aal = and i64 %i.zd, 63
  %i.aam = shl nuw i64 1, %i.aal
  %i.aan = and i64 %i.aak, %i.aam
  %.not751 = icmp eq i64 %i.aan, 0
  br i1 %.not751, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %_ZN2OT20delta_row_encoding_tD2Ev.exit274, !llvm.loop !2519

_ZNK12hb_bit_set_t3hasEj.exit.thread:             ; preds = %bb.cv, %._crit_edge.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i, %_ZNK12hb_bit_set_t3hasEj.exit
  %i.aao = lshr i32 %i.zh, 9                      ; 3 uses
  %i.aap = load atomic i32, ptr %i.tj monotonic, align 8 ; 2 uses
  %i.aaq = icmp ult i32 %i.aap, %i.zk
  br i1 %i.aaq, label %bb.cw, label %._crit_edge.i.i.i.i239, !prof !137

bb.cw:                                            ; preds = %_ZNK12hb_bit_set_t3hasEj.exit.thread
  %i.aar = zext i32 %i.aap to i64                 ; 2 uses
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.aar
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !490
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
end_hunk_7
begin_hunk_8_@_ZN12hb_hashmap_tIj6TripleLb0EE5allocEj:bb.a
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
  br i1 %exitcond.not, label %.preheader, label %.lr.ph54, !llvm.loop !2578

bb.i:                                             ; preds = %bb.e, %.preheader, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2416, !range !142, !noundef !211
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2571 ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2418
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !137

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2572
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2417 ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !147
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
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !2418
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !2579

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
  %i.as = load i32, ptr %i.d, align 8, !tbaa !2571
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !2571
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !2386
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !2386
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !147
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !2574
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !2576
  %i.bb = shl nuw i32 %i.k, 2
  %i.bc = or disjoint i32 %i.bb, 3
  store i32 %i.bc, ptr %i.ap, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.be = load <2 x i32>, ptr %i.bd, align 4, !tbaa !147
  %i.bf = add <2 x i32> %i.be, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !147
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !2577
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp ugt i32 %.0283961, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.k, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x i32> %i.bf, i64 1
  %i.bl = shl i32 %i.bk, 3
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !2418 ; 2 uses
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
  %i.a = load i32, ptr %0, align 8, !tbaa !2414
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 7
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #20 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.e, label %.preheader, !prof !21

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2388
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !2414
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
  store atomic i32 1, ptr %i.l monotonic, align 4
  store atomic i8 1, ptr %i.m monotonic, align 4
  store atomic ptr null, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i8 1, ptr %i.o, align 8, !tbaa !2424
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 34
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr null, ptr %i.q, align 8, !tbaa !2427
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.p, i8 0, i64 18, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store atomic i32 1, ptr %i.r monotonic, align 8
  store atomic i8 1, ptr %i.s monotonic, align 4
  store atomic ptr null, ptr %i.t monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i8 1, ptr %i.u, align 8, !tbaa !2428
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 82
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.v, i8 0, i64 18, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.w, i8 0, i64 22, i1 false)
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !2387
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = tail call noundef nonnull align 8 dereferenceable(126) ptr @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_taSEOS4_(ptr noundef nonnull align 8 dereferenceable(126) %i.k, ptr noundef nonnull align 8 dereferenceable(126) %i.y) #20 ; 0 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !2387
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %indvars.iv
  tail call void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %i.ab) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !2388
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.d, label %._crit_edge, !llvm.loop !2580

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2387
  tail call void @hb_free(ptr noundef %i.ag) #20
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(126) ptr @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_taSEOS4_(ptr noundef nonnull align 8 dereferenceable(126) %0, ptr noundef nonnull align 8 dereferenceable(126) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !147
  %i.b = load i32, ptr %1, align 8, !tbaa !147
  store i32 %i.b, ptr %0, align 8, !tbaa !147
  store i32 %i.a, ptr %1, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !147
  %i.f = load i32, ptr %i.d, align 4, !tbaa !147
  store i32 %i.f, ptr %i.c, align 4, !tbaa !147
  store i32 %i.e, ptr %i.d, align 4, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !2581
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !2581
  store ptr %i.j, ptr %i.g, align 8, !tbaa !2581
  store ptr %i.i, ptr %i.h, align 8, !tbaa !2581
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i8, ptr %i.k, align 8, !tbaa !2424, !range !142, !noundef !211
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i8, ptr %i.n, align 8, !range !142
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = select i1 %i.m, i1 %i.p, i1 false, !prof !137
  br i1 %i.q, label %bb.b, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EEaSEOS5_.exit, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 2 uses
  %i.t = load i16, ptr %i.r, align 2, !tbaa !540
  %i.u = load i16, ptr %i.s, align 2, !tbaa !540
  store i16 %i.u, ptr %i.r, align 2, !tbaa !540
  store i16 %i.t, ptr %i.s, align 2, !tbaa !540
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !147
  %i.y = load i32, ptr %i.w, align 4, !tbaa !147
  store i32 %i.y, ptr %i.v, align 4, !tbaa !147
  store i32 %i.x, ptr %i.w, align 4, !tbaa !147
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !147
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !147
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !147
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !147
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !147
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !147
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !147
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !147
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !147
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !147
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !147
  store i32 %i.aj, ptr %i.ai, align 8, !tbaa !147
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !2432
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !2432
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !2432
  store ptr %i.an, ptr %i.am, align 8, !tbaa !2432
  br label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EEaSEOS5_.exit

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EEaSEOS5_.exit: ; preds = %bb.a, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !2428, !range !142, !noundef !211
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load i8, ptr %i.as, align 8, !range !142
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = select i1 %i.ar, i1 %i.au, i1 false, !prof !137
  br i1 %i.av, label %bb.c, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EEaSEOS4_.exit, !prof !137

bb.c:                                             ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EEaSEOS5_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 82 ; 2 uses
  %i.ay = load i16, ptr %i.aw, align 2, !tbaa !540
  %i.az = load i16, ptr %i.ax, align 2, !tbaa !540
  store i16 %i.az, ptr %i.aw, align 2, !tbaa !540
  store i16 %i.ay, ptr %i.ax, align 2, !tbaa !540
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !147
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !147
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !147
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !147
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 8, !tbaa !147
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !147
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !147
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !147
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !147
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !147
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !147
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !147
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 8, !tbaa !147
  %i.bp = load i32, ptr %i.bn, align 8, !tbaa !147
  store i32 %i.bp, ptr %i.bm, align 8, !tbaa !147
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !147
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !2434
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !2434
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !2434
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !2434
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
  %i.a = load i32, ptr %0, align 8, !tbaa !2392   ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !147
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
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !2582

.thread:                                          ; preds = %.preheader, %bb.c
end_hunk_8
begin_hunk_9_@_ZL13hb_qsort_loopIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_:bb.a
  %i.co = getelementptr inbounds i8, ptr %.1, i64 -12
  %i.cp = getelementptr inbounds i8, ptr %.1, i64 -8 ; 2 uses
  %i.cq = load <2 x i32>, ptr %i.bd, align 8, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i8 0, i64 16, i1 false)
  %i.cr = load i64, ptr %i.bq, align 8
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !2400
  %i.ct = load <2 x i32>, ptr %i.ci, align 8, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.cu = load i32, ptr %i.br, align 4, !tbaa !147
  store i32 %i.cu, ptr %i.bd, align 8, !tbaa !147
  store i32 0, ptr %i.br, align 4, !tbaa !147
  %i.cv = load i32, ptr %i.cf, align 4, !tbaa !147
  %i.cw = load i32, ptr %i.cl, align 4, !tbaa !147
  store i32 %i.cw, ptr %i.cf, align 4, !tbaa !147
  store i32 %i.cv, ptr %i.cl, align 4, !tbaa !147
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !283
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !283
  store ptr null, ptr %i.cm, align 8, !tbaa !283
  %i.cy = load i64, ptr %i.ce, align 8
  store i64 %i.cy, ptr %i.bq, align 8
  %i.cz = load i32, ptr %i.ci, align 8, !tbaa !147
  %i.da = load i32, ptr %i.cn, align 8, !tbaa !147
  store i32 %i.da, ptr %i.ci, align 8, !tbaa !147
  store i32 %i.cz, ptr %i.cn, align 8, !tbaa !147
  %i.db = load i32, ptr %i.co, align 4, !tbaa !147
  store i32 %i.db, ptr %i.cj, align 4, !tbaa !147
  %i.dc = load ptr, ptr %i.cp, align 8, !tbaa !2989
  store ptr %i.dc, ptr %i.ck, align 8, !tbaa !2989
  %i.dd = load i32, ptr %i.br, align 4, !tbaa !147
  store <2 x i32> %i.cq, ptr %i.br, align 4, !tbaa !147
  %i.de = load ptr, ptr %i.cm, align 8, !tbaa !283
  store ptr %i.ch, ptr %i.cm, align 8, !tbaa !283
  store i64 %i.cr, ptr %i.ce, align 8
  %i.df = load i32, ptr %i.cn, align 8, !tbaa !147
  store <2 x i32> %i.ct, ptr %i.cn, align 8, !tbaa !147
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !2989
  %i.dg = add i32 %i.df, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.dg, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.ag, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  tail call void @hb_free(ptr noundef null) #20
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %i.dh = add i32 %i.dd, -1
  %spec.select.i.i.i1.i.i.i = icmp ult i32 %i.dh, -2
  br i1 %spec.select.i.i.i1.i.i.i, label %bb.ah, label %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge"

"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge": ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i, %bb.ah
  br label %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit", !llvm.loop !2993

bb.ah:                                            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i
  tail call void @hb_free(ptr noundef %i.de) #20
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
  br i1 %i.dr, label %.lr.ph, label %._crit_edge, !llvm.loop !2994

._crit_edge:                                      ; preds = %bb.al, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2404
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
  %i.n = load <2 x i32>, ptr %0, align 8, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 16, i1 false)
  %i.o = load i64, ptr %i.d, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !2400
  %i.q = load <2 x i32>, ptr %i.e, align 8, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.r = load i32, ptr %1, align 8, !tbaa !147
  store i32 %i.r, ptr %0, align 8, !tbaa !147
  store i32 0, ptr %1, align 8, !tbaa !147
  %i.s = load i32, ptr %i.a, align 4, !tbaa !147
  %i.t = load i32, ptr %i.h, align 4, !tbaa !147
  store i32 %i.t, ptr %i.a, align 4, !tbaa !147
  store i32 %i.s, ptr %i.h, align 4, !tbaa !147
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !283
  store ptr %i.u, ptr %i.b, align 8, !tbaa !283
  store ptr null, ptr %i.i, align 8, !tbaa !283
  %i.v = load i64, ptr %i.j, align 8
  store i64 %i.v, ptr %i.d, align 8
  %i.w = load i32, ptr %i.e, align 8, !tbaa !147
  %i.x = load i32, ptr %i.k, align 8, !tbaa !147
  store i32 %i.x, ptr %i.e, align 8, !tbaa !147
  store i32 %i.w, ptr %i.k, align 8, !tbaa !147
  %i.y = load i32, ptr %i.l, align 4, !tbaa !147
  store i32 %i.y, ptr %i.f, align 4, !tbaa !147
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !2989
  store ptr %i.z, ptr %i.g, align 8, !tbaa !2989
  %i.aa = load i32, ptr %1, align 8, !tbaa !147
  store <2 x i32> %i.n, ptr %1, align 8, !tbaa !147
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !283
  store ptr %i.c, ptr %i.i, align 8, !tbaa !283
  store i64 %i.o, ptr %i.j, align 8
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !147
  store <2 x i32> %i.q, ptr %i.k, align 8, !tbaa !147
  store ptr %i.p, ptr %i.m, align 8, !tbaa !2989
  %i.ad = add i32 %i.ac, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.ad, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.b, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @hb_free(ptr noundef null) #20
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i:   ; preds = %bb.b, %bb.a
  %i.ae = add i32 %i.aa, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.ae, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.c, label %_ZSt4swapIN2OT20delta_row_encoding_tEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i
  tail call void @hb_free(ptr noundef %i.ab) #20
  br label %_ZSt4swapIN2OT20delta_row_encoding_tEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit

_ZSt4swapIN2OT20delta_row_encoding_tEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit: ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !2393
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 40
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #20 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.g, label %.preheader, !prof !21

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2394
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2OT20delta_row_encoding_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !2393
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.g

bb.d:                                             ; preds = %.lr.ph, %_ZN2OT20delta_row_encoding_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2OT20delta_row_encoding_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %indvars.iv ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i8 0, i64 40, i1 false)
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !2395
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv ; 8 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !147
  store i32 %i.n, ptr %i.k, align 4, !tbaa !147
  store i32 0, ptr %i.m, align 4, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !147
  %i.r = load i32, ptr %i.p, align 4, !tbaa !147
  store i32 %i.r, ptr %i.o, align 4, !tbaa !147
  store i32 %i.q, ptr %i.p, align 4, !tbaa !147
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !283
  store ptr %i.u, ptr %i.s, align 8, !tbaa !283
  store ptr null, ptr %i.t, align 8, !tbaa !283
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load i64, ptr %i.w, align 8
  store i64 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !147
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !147
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !147
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !147
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 28 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !147
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !147
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !147
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !147
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2989
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !2989
  store ptr null, ptr %i.ah, align 8, !tbaa !2989
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !2395
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %indvars.iv ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !2396
  %i.an = add i32 %i.am, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.an, -2
  br i1 %spec.select.i.i.i.i, label %bb.e, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store i32 0, ptr %i.ao, align 4, !tbaa !2399
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2400
  tail call void @hb_free(ptr noundef %i.aq) #20
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i:     ; preds = %bb.e, %bb.d
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !2401
  %i.as = add i32 %i.ar, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.as, -2
  br i1 %spec.select.i.i.i1.i, label %bb.f, label %_ZN2OT20delta_row_encoding_tD2Ev.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !2403
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2404
  tail call void @hb_free(ptr noundef %i.av) #20
  br label %_ZN2OT20delta_row_encoding_tD2Ev.exit

_ZN2OT20delta_row_encoding_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.f, align 4, !tbaa !2394
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.d, label %._crit_edge, !llvm.loop !2995

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2395
  tail call void @hb_free(ptr noundef %i.ba) #20
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2OT17item_variations_t8_cmp_rowEPKvS2_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2472   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !2187 ; 2 uses
  %.not2126.not = icmp eq i32 %i.c, 0
  br i1 %.not2126.not, label %.split.loop.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2472
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2188
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2188
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.loop.exit, label %bb.c, !llvm.loop !2996

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !147  ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !147  ; 2 uses
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
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT18ItemVariationStoreEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !282
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !137

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #20 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !204
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
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
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !283
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !283
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !262
  store ptr %i.r, ptr %i.u, align 8, !tbaa !143
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
  store i8 %i.b, ptr %i.a, align 1, !tbaa !192
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105
  %.not11.i.i = icmp eq i32 %i.d, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !137

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
  store i16 256, ptr %0, align 1, !tbaa !289
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = tail call noundef zeroext i1 @_ZN2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE19serialize_serializeIJRK11hb_vector_tIjLb0EERKS6_IPK12hb_hashmap_tIj6TripleLb0EELb0EEEEEbP22hb_serialize_context_tDpOT_(ptr noundef nonnull align 1 dereferenceable(4) %i.t, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.u, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT18ItemVariationStoreEEEPT_S4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !2394 ; 5 uses
  %.not17 = icmp eq i32 %i.w, 0
  br i1 %.not17, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.y = trunc i32 %i.w to i16
  %i.z = tail call i16 @llvm.bswap.i16(i16 %i.y)
  store i16 %i.z, ptr %i.x, align 1, !tbaa !289
  %.not.i.i = icmp ult i32 %i.w, 65536
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !105 ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !308

bb.h:                                             ; preds = %bb.g
  %i.ab = or i32 %i.aa, 8
  br label %select.unfold.sink.split

bb.i:                                             ; preds = %bb.g
  %.not11.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not11.i.i.i, label %bb.j, label %select.unfold, !prof !137

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
  %i.au = load i16, ptr %i.x, align 1, !tbaa !231
  %i.av = call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.aw
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !137

bb.o:                                             ; preds = %bb.n
  store i32 %i.as, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit

bb.p:                                             ; preds = %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit

_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit: ; preds = %bb.o, %bb.p
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.ax, %bb.p ]
  %i.ay = load i32, ptr %i.v, align 4, !tbaa !2394
  %i.az = zext i32 %i.ay to i64
  %.not.i21 = icmp samesign ult i64 %indvars.iv, %i.az
  %i.ba = load ptr, ptr %i.at, align 8
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %indvars.iv
  %.0.i22 = select i1 %.not.i21, ptr %i.bb, ptr @_hb_NullPool, !prof !137
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i22, i64 24
  %i.bd = call noundef zeroext i1 @_ZN2OT8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EE19serialize_serializeIJRbRK11hb_vector_tIPKS7_IiLb0EELb0EEEEEbP22hb_serialize_context_tDpOT_(ptr noundef nonnull align 1 dereferenceable(4) %.0.i, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.bc) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.bd, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.n, label %select.unfold, !llvm.loop !2997

select.unfold.sink.split:                         ; preds = %bb.j, %bb.k, %bb.b, %bb.c, %bb.h
  %.sink = phi i32 [ %i.ab, %bb.h ], [ 4, %bb.b ], [ 4, %bb.c ], [ 4, %bb.k ], [ 4, %bb.j ]
  store i32 %.sink, ptr %i.c, align 4, !tbaa !105
  br label %select.unfold

select.unfold:                                    ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit, %select.unfold.sink.split, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i, %bb.f, %bb.i, %_ZN22hb_serialize_context_t10extend_minIN2OT18ItemVariationStoreEEEPT_S4_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.i ], [ false, %_ZN22hb_serialize_context_t10extend_minIN2OT18ItemVariationStoreEEEPT_S4_.exit ], [ false, %bb.a ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ false, %select.unfold.sink.split ], [ false, %bb.f ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ %i.bd, %_ZN2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE19serialize_serializeIJRK11hb_vector_tIjLb0EERKS6_IPK12hb_hashmap_tIj6TripleLb0EELb0EEEEEbP22hb_serialize_context_tDpOT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 1, !tbaa !289
  %i.a = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT13VarRegionListEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.b = tail call noundef zeroext i1 @_ZN2OT13VarRegionList9serializeEP22hb_serialize_context_tRK11hb_vector_tIjLb0EERKS3_IPK12hb_hashmap_tIj6TripleLb0EELb0EE(ptr noundef nonnull align 1 dereferenceable(10) %i.a, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !105
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp eq i32 %i.c, 0
end_hunk_9
begin_hunk_10_@_ZN2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE19serialize_serializeIJRK11hb_vector_tIjLb0EERKS6_IPK12hb_hashmap_tIj6TripleLb0EELb0EEEEEbP22hb_serialize_context_tDpOT_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.l, i1 noundef zeroext false)
  br i1 %i.o, label %bb.e, label %bb.h, !prof !308

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.j, align 4, !tbaa !260  ; 3 uses
  %i.q = icmp ugt i32 %i.l, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = sub nuw nsw i32 %i.l, %i.p
  %i.s = mul i32 %i.r, 12                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !261
  %i.v = zext nneg i32 %i.p to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.v
  %i.x = zext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.x, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.l, ptr %i.j, align 4, !tbaa !260
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !261
  %i.aa = zext i32 %i.k to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.aa
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.ab, %bb.i ] ; 5 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !143
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !257
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
  store i32 %i.c, ptr %i.aj, align 4, !tbaa !309
  %i.ak = and i32 %i.ai, -64
  %i.al = or disjoint i32 %i.ak, 4
  store i32 %i.al, ptr %.0.i.i, align 4
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !143
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !311
  %i.ao = ptrtoint ptr %0 to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !312
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
  store i32 0, ptr %0, align 1, !tbaa !289
  %i.a = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT7VarDataEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.b = load i8, ptr %2, align 1, !tbaa !192, !range !142, !noundef !211
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !143  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !260  ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 5 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i32 noundef %i.n, i1 noundef zeroext false)
  br i1 %i.q, label %bb.e, label %bb.h, !prof !308

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.l, align 4, !tbaa !260  ; 3 uses
  %i.s = icmp ugt i32 %i.n, %i.r
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = sub nuw nsw i32 %i.n, %i.r
  %i.u = mul i32 %i.t, 12                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !261
  %i.x = zext nneg i32 %i.r to i64
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.x
  %i.z = zext i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 0, i64 %i.z, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.n, ptr %i.l, align 4, !tbaa !260
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !261
  %i.ac = zext i32 %i.m to i64
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %i.ac
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.ad, %bb.i ] ; 5 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !143
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !257
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
  store i32 %i.e, ptr %i.al, align 4, !tbaa !309
  %i.am = and i32 %i.ak, -64
  %i.an = or disjoint i32 %i.am, 4
  store i32 %i.an, ptr %.0.i.i, align 4
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !143
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !311
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !312
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
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !282
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !137

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #20 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !204
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
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
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !283
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !283
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !262
  store ptr %i.r, ptr %i.u, align 8, !tbaa !143
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !352  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !2323 ; 4 uses
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
  br i1 %.not11.i.i, label %bb.c, label %select.unfold, !prof !137

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
  store i16 %i.ab, ptr %0, align 1, !tbaa !289
  %i.ac = trunc i32 %i.d to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  store i16 %i.ae, ptr %i.ad, align 1, !tbaa !289
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count88 = zext i32 %i.d to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..thread62_crit_edge
  %indvars.iv85 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next86, %..thread62_crit_edge ] ; 3 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !2323
  %i.ai = zext i32 %i.ah to i64
  %.not.i = icmp samesign ult i64 %indvars.iv85, %i.ai
  %i.aj = load ptr, ptr %i.af, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv85
  %.0.i = select i1 %.not.i, ptr %i.ak, ptr @_hb_NullPool, !prof !137
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !351
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !147 ; 3 uses
  %i.ao = load ptr, ptr %.0.i, align 8, !tbaa !2766 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2417 ; 4 uses
  %.not.i39 = icmp eq ptr %i.aq, null
  br i1 %.not.i39, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = mul i32 %i.an, 506952113
  %i.as = and i32 %i.ar, 1073741823
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !2572
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
  %i.bd = load i32, ptr %i.ax, align 4, !tbaa !147
  %i.be = icmp eq i32 %i.bd, %i.an
  br i1 %i.be, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bf = load i32, ptr %i.bl, align 4, !tbaa !147
  %i.bg = icmp eq i32 %i.bf, %i.an
  br i1 %i.bg, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !2654

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
  br i1 %.not.i.i.i, label %.loopexit, label %bb.i, !llvm.loop !2654

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.az, %.lr.ph.i.i.i ], [ %i.bn, %bb.i ]
  %i.bp = phi i64 [ %i.aw, %.lr.ph.i.i.i ], [ %i.bk, %bb.i ]
  %i.bq = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.bq, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.bp ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load <2 x double>, ptr %i.bs, align 8, !tbaa !2566
  %i.bu = fptrunc <2 x double> %i.bt to <2 x float>
  %i.bv = fmul <2 x float> %i.bu, splat (float 1.638400e+04)
  %i.bw = fadd <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bw)
  %i.by = fptosi <2 x float> %i.bx to <2 x i16>
  %i.bz = tail call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !2568
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
  br i1 %.not.i.i.i41, label %bb.k, label %select.unfold, !prof !137

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
  br i1 %.not.i.i, label %select.unfold, label %bb.l, !prof !132

bb.l:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT13VarRegionAxisEEEPT_mb.exit.i.i
  store <2 x i16> %i.ci, ptr %i.cl, align 1, !alias.scope !2998
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i16 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !2998
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..thread62_crit_edge, label %bb.g, !llvm.loop !3002

..thread62_crit_edge:                             ; preds = %bb.l
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %select.unfold, label %.lr.ph, !llvm.loop !3003

select.unfold.sink.split:                         ; preds = %bb.k, %bb.c, %bb.d
  store i32 4, ptr %i.j, align 4, !tbaa !105
  br label %select.unfold

select.unfold:                                    ; preds = %..thread62_crit_edge, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT13VarRegionAxisEEEPT_mb.exit.i.i, %.loopexit, %select.unfold.sink.split, %_ZL9hb_memsetPvij.exit.i.i.i, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %select.unfold.sink.split ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT13VarRegionAxisEEEPT_mb.exit.i.i ], [ false, %bb.b ], [ false, %.loopexit ], [ true, %..thread62_crit_edge ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT7VarDataEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !282
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !137

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #20 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !204
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
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
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !283
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !283
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !262
  store ptr %i.r, ptr %i.u, align 8, !tbaa !143
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !2399 ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !105
  %.not11.i.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i.i, label %bb.c, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit, !prof !137

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
  store i16 %i.w, ptr %0, align 1, !tbaa !289
  %.not.i.i = icmp ult i32 %i.d, 65536
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !308

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7VarDataEEEPT_S4_.exit
  %i.x = load i32, ptr %i.e, align 4, !tbaa !105
  %i.y = or i32 %i.x, 8
  store i32 %i.y, ptr %i.e, align 4, !tbaa !105
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit

bb.h:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7VarDataEEEPT_S4_.exit
  %i.z = select i1 %2, i32 -65536, i32 -128       ; 2 uses
  %i.aa = select i1 %2, i32 65535, i32 127        ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !2399
  %.not.i.not = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.i = select i1 %.not.i.not, ptr @_hb_NullPool, ptr %i.ad, !prof !21
  %i.ae = load ptr, ptr %.0.i, align 8, !tbaa !2472
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !2187 ; 8 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %.not.i120.not = icmp eq i32 %i.ag, 0           ; 3 uses
  br i1 %.not.i120.not, label %._crit_edge, label %.preheader.i, !prof !137

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.043.i = phi i32 [ %i.ak, %.preheader.i ], [ 0, %bb.i ] ; 2 uses
  %i.ai = lshr i32 %.043.i, 1
  %i.aj = add nuw i32 %.043.i, 8
  %i.ak = add nuw i32 %i.aj, %i.ai                ; 4 uses
  %i.al = icmp ugt i32 %i.ag, %i.ak
  br i1 %i.al, label %.preheader.i, label %.thread.i, !llvm.loop !3004

.thread.i:                                        ; preds = %.preheader.i
  %i.am = icmp ugt i32 %i.ak, 1073741823
  br i1 %i.am, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EED2Ev.exit, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EE14realloc_vectorISA_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSA_j11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EE14realloc_vectorISA_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSA_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.an = shl nuw i32 %i.ak, 2
  %i.ao = zext i32 %i.an to i64
  %i.ap = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ao) #20 ; 4 uses
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
  %i.as = load i32, ptr %i.c, align 4, !tbaa !2399
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
  br i1 %.not.i89.fr, label %.preheader217.split.us, label %.preheader217.split.preheader, !prof !137

.preheader217.split.preheader:                    ; preds = %.preheader217
  %.pre = load ptr, ptr %i.ac, align 8
  br label %.preheader217.split

.preheader217.split.us:                           ; preds = %.preheader217, %bb.m
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %bb.m ], [ 0, %.preheader217 ] ; 3 uses
  %.not.i85.us = icmp samesign ult i64 %indvars.iv274, %i.au
  %i.ax = load ptr, ptr %i.ac, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv274
  %.0.i86.us = select i1 %.not.i85.us, ptr %i.ay, ptr @_hb_NullPool, !prof !137
  %i.az = load ptr, ptr %.0.i86.us, align 8, !tbaa !2472
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2188
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv279
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !147 ; 3 uses
  %i.be = icmp slt i32 %i.bd, %i.z
  %i.bf = icmp sgt i32 %i.bd, %i.aa
  %or.cond.us = or i1 %i.be, %i.bf
  br i1 %or.cond.us, label %.split.us, label %bb.l

bb.l:                                             ; preds = %.preheader217.split.us
  %.not83.us = icmp eq i32 %i.bd, 0
  br i1 %.not83.us, label %bb.m, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EEixEi.exit91.us

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EEixEi.exit91.us: ; preds = %bb.l
  store i32 1, ptr %i.aw, align 4, !tbaa !3005
  br label %bb.m

bb.m:                                             ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tbRKS_IPKS_IiLb0EELb0EEE12delta_size_tLb0EEixEi.exit91.us, %bb.l
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count277
  br i1 %exitcond278.not, label %.loopexit, label %.preheader217.split.us, !llvm.loop !3007

._crit_edge:                                      ; preds = %.loopexit, %bb.i
  %.sroa.15.0353 = phi ptr [ null, %bb.i ], [ %i.ap, %.loopexit ] ; 2 uses
  %.065.lcssa = phi i32 [ 0, %bb.i ], [ %.368, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4
end_hunk_10
begin_hunk_11_@_ZN2OT33delta_set_index_map_subset_plan_t5remapERK8hb_map_t:bb.a
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp eq i64 %indvars.iv, %i.aa
  br i1 %i.ab, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = load i32, ptr %i.aj, align 4, !tbaa !147
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp eq i64 %indvars.iv, %i.ad
  br i1 %i.ae, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !328

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.d
  %.01016.i20.i.i = phi i32 [ %i.ah, %bb.d ], [ %i.s, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.af, %bb.d ], [ 0, %.lr.ph.i.i.i ]
  %i.af = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ag = add i32 %i.af, %.01016.i20.i.i
  %i.ah = and i32 %i.ag, %i.y                     ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = and i32 %i.al, 2
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit.thread, label %bb.d, !llvm.loop !328

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.w, %.lr.ph.i.i.i ], [ %i.al, %bb.d ]
  %i.an = phi i64 [ %i.t, %.lr.ph.i.i.i ], [ %i.ai, %bb.d ]
  %i.ao = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.ao, label %bb.e, label %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit.thread

bb.e:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !147 ; 2 uses
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !3314
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !147
  %i.au = lshr i32 %i.ar, 16                      ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.au, i1 false)
  %narrow.i = sub nuw nsw i32 32, %i.aw
  %i.ax = select i1 %i.av, i32 1, i32 %narrow.i
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !147
  %.sroa.speculated18 = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %i.ay)
  store i32 %.sroa.speculated18, ptr %i.a, align 4, !tbaa !2335
  %i.az = load i32, ptr %i.aq, align 4, !tbaa !147
  %i.ba = and i32 %i.az, 65535                    ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ba, i1 false)
  %narrow.i13 = sub nuw nsw i32 32, %i.bc
  %i.bd = select i1 %i.bb, i32 1, i32 %narrow.i13
  %i.be = load i32, ptr %i.b, align 8, !tbaa !147
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 %i.be)
  store i32 %.sroa.speculated, ptr %i.b, align 8, !tbaa !2337
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i32, ptr %0, align 8, !tbaa !2339
  %i.bg = zext i32 %i.bf to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.bg
  br i1 %.not, label %.lr.ph.split, label %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit.thread, !llvm.loop !3315

_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit.thread: ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, %.lr.ph.split, %bb.e, %.lr.ph.i.i, %bb.c, %.lr.ph, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.c ], [ false, %.lr.ph ], [ false, %.lr.ph.i.i ], [ false, %.lr.ph.split ], [ false, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i ], [ true, %bb.e ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE19serialize_serializeIJRNS_33delta_set_index_map_subset_plan_tEEEEbP22hb_serialize_context_tDpOT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 1, !tbaa !289
  %i.a = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT16DeltaSetIndexMapEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !352
  %i.d = icmp ugt i32 %i.c, 65535                 ; 2 uses
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !289
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20
  br i1 %i.d, label %.split, label %_ZN2OT16DeltaSetIndexMap9serializeINS_33delta_set_index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_.exit

.split:                                           ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE9serializeINS_33delta_set_index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.f, label %bb.b, label %bb.l

_ZN2OT16DeltaSetIndexMap9serializeINS_33delta_set_index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_.exit: ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE9serializeINS_33delta_set_index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %.split, %_ZN2OT16DeltaSetIndexMap9serializeINS_33delta_set_index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_.exit
  %i.h = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !105
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp eq i32 %i.h, 0
  %or.cond.not.i = or i1 %i.l, %i.k
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_16DeltaSetIndexMapENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.c, !prof !77

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !143  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !260  ; 2 uses
  %i.q = add i32 %i.p, 1                          ; 5 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.q, i1 noundef zeroext false)
  br i1 %i.t, label %bb.e, label %bb.h, !prof !308

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.o, align 4, !tbaa !260  ; 3 uses
  %i.v = icmp ugt i32 %i.q, %i.u
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = sub nuw nsw i32 %i.q, %i.u
  %i.x = mul i32 %i.w, 12                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !261
  %i.aa = zext nneg i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.aa
  %i.ac = zext i32 %i.x to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ac, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.q, ptr %i.o, align 4, !tbaa !260
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !261
  %i.af = zext i32 %i.p to i64
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %i.af
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.ag, %bb.i ] ; 5 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !143
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !257
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
  store i32 %i.h, ptr %i.ao, align 4, !tbaa !309
  %i.ap = and i32 %i.an, -64
  %i.aq = or disjoint i32 %i.ap, 4
  store i32 %i.aq, ptr %.0.i.i, align 4
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !143
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !311
  %i.at = ptrtoint ptr %0 to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !312
  store i32 4, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_16DeltaSetIndexMapENS1_7NumTypeILb1EjLj4EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

bb.l:                                             ; preds = %.split, %_ZN2OT16DeltaSetIndexMap9serializeINS_33delta_set_index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_.exit
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
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !21

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !282
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !137

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #20 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !204
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
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
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !283
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !283
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !262
  store ptr %i.r, ptr %i.u, align 8, !tbaa !143
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE9serializeINS_33delta_set_index_map_subset_plan_tEEEbP22hb_serialize_context_tRKT_(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2335
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2337 ; 4 uses
  %i.e = add i32 %i.b, 7
  %i.f = add i32 %i.e, %i.d
  %.fr58 = freeze i32 %i.f                        ; 2 uses
  %i.g = lshr i32 %.fr58, 3                       ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !351
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !352  ; 4 uses
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
  br i1 %.not11.i.i, label %bb.c, label %select.unfold, !prof !137

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
  store i8 %i.al, ptr %i.am, align 1, !tbaa !289
  %i.an = trunc i32 %i.k to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ap = tail call i16 @llvm.bswap.i16(i16 %i.an)
  store i16 %i.ap, ptr %i.ao, align 1, !tbaa !289
  %i.aq = mul i32 %i.g, %i.k                      ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 3 uses
  %i.as = load i32, ptr %i.q, align 4, !tbaa !105
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.g, label %select.unfold, !prof !137

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
  br i1 %brmerge, label %select.unfold, label %.lr.ph56, !prof !2348

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
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !147 ; 3 uses
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
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !289
  %i.bn = lshr i32 %.03552.prol, 8                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3316

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
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !289
  %i.br = lshr i32 %.03552, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr i8, ptr %.03754, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 -2
end_hunk_11
