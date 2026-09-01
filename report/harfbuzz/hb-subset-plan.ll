Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan?download=true
inline.NumInlined: 7106
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 22
begin_hunk_0_@hb_subset_plan_destroy:bb.a
_ZL24hb_object_should_destroyI16hb_subset_plan_tEbPT_.exit.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 -1 acq_rel, align 4
  %.not6.i.i = icmp eq i32 %i.c, 1
  br i1 %.not6.i.i, label %bb.c, label %_ZL17hb_object_destroyI16hb_subset_plan_tEbPT_.exit.thread

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI16hb_subset_plan_tEbPT_.exit.i
  store atomic i32 -57005, ptr %0 monotonic, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %.not.i.i3.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  %i.g = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #14 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.e) #14
  store atomic ptr null, ptr %i.d monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN16hb_subset_plan_tD2Ev(ptr noundef nonnull align 8 dead_on_return(3104) dereferenceable(3104) %0) #14
  tail call void @hb_free(ptr noundef nonnull %0) #14
  br label %_ZL17hb_object_destroyI16hb_subset_plan_tEbPT_.exit.thread

_ZL17hb_object_destroyI16hb_subset_plan_tEbPT_.exit.thread: ; preds = %bb.a, %bb.b, %_ZL24hb_object_should_destroyI16hb_subset_plan_tEbPT_.exit.i, %bb.e
  ret void
}

declare void @hb_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @hb_subset_plan_old_to_new_glyph_mapping(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @hb_subset_plan_new_to_old_glyph_mapping(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @hb_subset_plan_unicode_to_old_glyph_mapping(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236
  ret ptr %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @hb_subset_plan_reference(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZL19hb_object_referenceI16hb_subset_plan_tEPT_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i, label %_ZL19hb_object_referenceI16hb_subset_plan_tEPT_S2_.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZL19hb_object_referenceI16hb_subset_plan_tEPT_S2_.exit

_ZL19hb_object_referenceI16hb_subset_plan_tEPT_S2_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_subset_plan_set_user_data(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_set_user_dataI16hb_subset_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_set_user_dataI16hb_subset_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %.preheader.i, !prof !36

.preheader.i:                                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %.not1923.i = icmp eq ptr %i.c, null
  br i1 %.not1923.i, label %.lr.ph.i, label %._crit_edge.i, !prof !330

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.d = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 56) #14 ; 8 uses
  %.not20.i = icmp eq ptr %i.d, null
  br i1 %.not20.i, label %_ZL23hb_object_set_user_dataI16hb_subset_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef null) #14 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = cmpxchg weak ptr %i.b, ptr null, ptr %i.d acq_rel monotonic, align 8
  %i.h = extractvalue { ptr, i1 } %i.g, 1
  br i1 %i.h, label %._crit_edge.i, label %bb.d, !prof !38

._crit_edge.i:                                    ; preds = %bb.d, %bb.c, %.preheader.i
  %.016.i = phi ptr [ %i.c, %.preheader.i ], [ %i.l, %bb.d ], [ %i.d, %bb.c ]
  %i.i = tail call noundef zeroext i1 @_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei(ptr noundef nonnull align 8 dereferenceable(56) %.016.i, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %i.j = zext i1 %i.i to i32
  br label %_ZL23hb_object_set_user_dataI16hb_subset_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.k = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #14 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.d) #14
  %i.l = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.l, null
  br i1 %.not19.i, label %.lr.ph.i, label %._crit_edge.i, !prof !332

_ZL23hb_object_set_user_dataI16hb_subset_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %._crit_edge.i
  %.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_subset_plan_get_user_data(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_get_user_dataIK16hb_subset_plan_tEPvPT_P18hb_user_data_key_t.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_get_user_dataIK16hb_subset_plan_tEPvPT_P18hb_user_data_key_t.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 5 uses
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %_ZL23hb_object_get_user_dataIK16hb_subset_plan_tEPvPT_P18hb_user_data_key_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #14 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !424
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !427  ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %i.h to i64
  %.not26.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not26.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %.val19.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !428
  %i.j = icmp eq ptr %.val19.i.i.i.i.i.i, %1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !431

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !432
  br label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i

_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i: ; preds = %bb.e, %bb.f, %bb.d
  %i.k = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.f ], [ null, %bb.d ], [ null, %bb.e ]
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #14 ; 0 uses
  br label %_ZL23hb_object_get_user_dataIK16hb_subset_plan_tEPvPT_P18hb_user_data_key_t.exit

_ZL23hb_object_get_user_dataIK16hb_subset_plan_tEPvPT_P18hb_user_data_key_t.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.k, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i ], [ null, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !203, !range !34, !noundef !35
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.aa, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %1, %2
  %i.d = icmp eq i32 %1, -1
  %i.e = or i1 %i.d, %i.c
  br i1 %i.e, label %bb.aa, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !204
  %i.g = lshr i32 %1, 9                           ; 6 uses
  %i.h = lshr i32 %2, 9                           ; 6 uses
  %i.i = and i32 %1, 511
  %i.j = icmp ne i32 %i.i, 0                      ; 2 uses
  %i.k = zext i1 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k               ; 2 uses
  %i.m = and i32 %2, 511
  %i.n = icmp ne i32 %i.m, 511                    ; 2 uses
  %i.o = sext i1 %i.n to i32
  %i.p = add nsw i32 %i.h, %i.o                   ; 2 uses
  %i.q = icmp sgt i32 %i.l, %i.p
  %or.cond = or i1 %i.j, %i.q
  br i1 %or.cond, label %bb.d, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load atomic i32, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !289  ; 3 uses
  %i.v = icmp ult i32 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !148  ; 3 uses
  br i1 %i.v, label %bb.e, label %._crit_edge.i, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.y = zext i32 %i.s to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !290
  %.not.i = icmp eq i32 %i.aa, %i.g
  br i1 %.not.i, label %_ZN12hb_bit_set_t8page_forEjb.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %.not1.i.i.i.i.i = icmp sgt i32 %i.u, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.ab = add nsw i32 %i.u, -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ac = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.ad = lshr i32 %i.ac, 1                       ; 4 uses
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !290 ; 2 uses
  %i.ai = icmp slt i32 %i.g, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = add nsw i32 %i.ad, -1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not28.i.i.i.i.i = icmp eq i32 %i.g, %i.ah
  br i1 %.not28.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = add nuw nsw i32 %i.ad, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.223.i.i.i.i.i = phi i32 [ %i.ak, %bb.h ], [ %.0212.i.i.i.i.i, %bb.f ] ; 2 uses
  %.2.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i, %bb.h ], [ %i.aj, %bb.f ] ; 2 uses
  %.not.not.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i, %.2.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !302

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i: ; preds = %bb.g
  store atomic i32 %i.ad, ptr %i.r monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit

_ZN12hb_bit_set_t8page_forEjb.exit:               ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, %bb.e
  %i.al = phi i64 [ %i.ae, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i ], [ %i.y, %bb.e ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.al
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !292 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !295
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [72 x i8], ptr %.sink.i, i64 %i.ap ; 3 uses
  %.not = icmp eq ptr %.sink.i, null
  br i1 %.not, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit
  %i.ar = icmp eq i32 %i.g, %i.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.at = lshr i32 %1, 6
  %i.au = and i32 %i.at, 7                        ; 3 uses
  %i.av = shl nuw nsw i32 %i.au, 3                ; 3 uses
  %.idx16.i = zext nneg i32 %i.av to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx16.i ; 8 uses
  br i1 %i.ar, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ax = lshr i32 %2, 6
  %i.ay = and i32 %i.ax, 7                        ; 2 uses
  %i.az = shl nuw nsw i32 %i.ay, 3                ; 3 uses
  %.idx.i = zext nneg i32 %i.az to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i ; 2 uses
  %i.bb = icmp eq i32 %i.au, %i.ay
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = and i32 %2, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl i64 2, %i.bd
  %i.bf = and i32 %1, 63
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = xor i64 %i.be, -1
  %i.bj = add i64 %i.bh, %i.bi
  %i.bk = load i64, ptr %i.aw, align 8, !tbaa !296
  %i.bl = and i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.aw, align 8, !tbaa !296
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.sink.split

bb.m:                                             ; preds = %bb.k
  %i.bm = and i32 %1, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i, -1
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !296
  %i.bq = and i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %i.aw, align 8, !tbaa !296
  %i.br = add nuw nsw i32 %i.av, 8                ; 2 uses
  %.not.i.i = icmp eq i32 %i.az, %i.br
  br i1 %.not.i.i, label %_ZL9hb_memsetPvij.exit.i, label %bb.n, !prof !36

bb.n:                                             ; preds = %bb.m
  %gepdiff.i = sub nsw i32 %i.az, %i.br
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bt = zext i32 %gepdiff.i to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bs, i8 0, i64 %i.bt, i1 false)
  br label %_ZL9hb_memsetPvij.exit.i

_ZL9hb_memsetPvij.exit.i:                         ; preds = %bb.n, %bb.m
  %i.bu = and i32 %2, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %.neg.i = shl i64 -2, %i.bv
  %i.bw = load i64, ptr %i.ba, align 8, !tbaa !296
  %i.bx = and i64 %i.bw, %.neg.i
  store i64 %i.bx, ptr %i.ba, align 8, !tbaa !296
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.sink.split

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.bz = and i32 %1, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %notmask = shl nsw i64 -1, %i.ca
  %i.cb = xor i64 %notmask, -1
  %i.cc = load i64, ptr %i.aw, align 8, !tbaa !296
  %i.cd = and i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.aw, align 8, !tbaa !296
  switch i32 %i.au, label %bb.p [
    i32 7, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.sink.split
    i32 6, label %_ZL9hb_memsetPvij.exit.i52
  ], !prof !433

bb.p:                                             ; preds = %bb.o
  %gepdiff.i51 = sub nsw i32 48, %i.av
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cf = zext i32 %gepdiff.i51 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ce, i8 0, i64 %i.cf, i1 false)
  br label %_ZL9hb_memsetPvij.exit.i52

_ZL9hb_memsetPvij.exit.i52:                       ; preds = %bb.o, %bb.p
  store i64 0, ptr %i.by, align 8, !tbaa !296
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.sink.split

_ZN12hb_bit_set_t8page_forEjb.exit.thread.sink.split: ; preds = %_ZL9hb_memsetPvij.exit.i52, %bb.o, %_ZL9hb_memsetPvij.exit.i, %bb.l
  store i32 -1, ptr %i.aq, align 8, !tbaa !434
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

_ZN12hb_bit_set_t8page_forEjb.exit.thread:        ; preds = %bb.i, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.sink.split, %._crit_edge.i, %_ZN12hb_bit_set_t8page_forEjb.exit, %bb.c
  %.not43 = icmp ne i32 %i.g, %i.h
  %or.cond46.not = and i1 %.not43, %i.n
  br i1 %or.cond46.not, label %bb.q, label %_ZN12hb_bit_set_t8page_forEjb.exit75.thread

bb.q:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ch = load atomic i32, ptr %i.cg monotonic, align 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !289 ; 3 uses
  %i.ck = icmp ult i32 %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !148 ; 3 uses
  br i1 %i.ck, label %bb.r, label %._crit_edge.i55, !prof !38

bb.r:                                             ; preds = %bb.q
  %i.cn = zext i32 %i.ch to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !290
  %.not.i73 = icmp eq i32 %i.cp, %i.h
  br i1 %.not.i73, label %_ZN12hb_bit_set_t8page_forEjb.exit75, label %._crit_edge.i55

._crit_edge.i55:                                  ; preds = %bb.r, %bb.q
  %.not1.i.i.i.i.i56 = icmp sgt i32 %i.cj, 0
  br i1 %.not1.i.i.i.i.i56, label %.lr.ph.preheader.i.i.i.i.i60, label %_ZN12hb_bit_set_t8page_forEjb.exit75.thread

.lr.ph.preheader.i.i.i.i.i60:                     ; preds = %._crit_edge.i55
  %i.cq = add nsw i32 %i.cj, -1
  br label %.lr.ph.i.i.i.i.i61

.lr.ph.i.i.i.i.i61:                               ; preds = %bb.v, %.lr.ph.preheader.i.i.i.i.i60
  %.0203.i.i.i.i.i62 = phi i32 [ %.2.i.i.i.i.i66, %bb.v ], [ %i.cq, %.lr.ph.preheader.i.i.i.i.i60 ] ; 2 uses
  %.0212.i.i.i.i.i63 = phi i32 [ %.223.i.i.i.i.i65, %bb.v ], [ 0, %.lr.ph.preheader.i.i.i.i.i60 ] ; 2 uses
  %i.cr = add i32 %.0212.i.i.i.i.i63, %.0203.i.i.i.i.i62
  %i.cs = lshr i32 %i.cr, 1                       ; 4 uses
  %i.ct = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !290 ; 2 uses
  %i.cx = icmp slt i32 %i.h, %i.cw
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i61
  %i.cy = add nsw i32 %i.cs, -1
  br label %bb.v

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i61
  %.not28.i.i.i.i.i64 = icmp eq i32 %i.h, %i.cw
  br i1 %.not28.i.i.i.i.i64, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i68, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = add nuw nsw i32 %i.cs, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.223.i.i.i.i.i65 = phi i32 [ %i.cz, %bb.u ], [ %.0212.i.i.i.i.i63, %bb.s ] ; 2 uses
  %.2.i.i.i.i.i66 = phi i32 [ %.0203.i.i.i.i.i62, %bb.u ], [ %i.cy, %bb.s ] ; 2 uses
  %.not.not.i.i.i.i.i67 = icmp sgt i32 %.223.i.i.i.i.i65, %.2.i.i.i.i.i66
  br i1 %.not.not.i.i.i.i.i67, label %_ZN12hb_bit_set_t8page_forEjb.exit75.thread, label %.lr.ph.i.i.i.i.i61, !llvm.loop !302

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i68: ; preds = %bb.t
  store atomic i32 %i.cs, ptr %i.cg monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit75

_ZN12hb_bit_set_t8page_forEjb.exit75:             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i68, %bb.r
  %i.da = phi i64 [ %i.ct, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i68 ], [ %i.cn, %bb.r ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.da
  %.sink.in.i71 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink.i72 = load ptr, ptr %.sink.in.i71, align 8, !tbaa !292 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !295
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [72 x i8], ptr %.sink.i72, i64 %i.de ; 3 uses
  %.not44 = icmp eq ptr %.sink.i72, null
  br i1 %.not44, label %_ZN12hb_bit_set_t8page_forEjb.exit75.thread, label %bb.w

bb.w:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit75
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = lshr i32 %2, 6
  %i.di = and i32 %i.dh, 7                        ; 3 uses
  %i.dj = shl nuw nsw i32 %i.di, 3                ; 2 uses
  %.idx.i77 = zext nneg i32 %i.dj to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i77 ; 2 uses
  %i.dl = icmp eq i32 %i.di, 0
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dm = and i32 %2, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %.neg = shl i64 -2, %i.dn
  %i.do = load i64, ptr %i.dg, align 8, !tbaa !296
  %i.dp = and i64 %i.do, %.neg
  store i64 %i.dp, ptr %i.dg, align 8, !tbaa !296
  br label %_ZN13hb_bit_page_t9del_rangeEjj.exit83

bb.y:                                             ; preds = %bb.w
  store i64 0, ptr %i.dg, align 8, !tbaa !296
  %.not.i.i79 = icmp eq i32 %i.di, 1
  br i1 %.not.i.i79, label %_ZL9hb_memsetPvij.exit.i81, label %bb.z, !prof !36

bb.z:                                             ; preds = %bb.y
  %gepdiff.i80 = add nsw i32 %i.dj, -8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dr = zext i32 %gepdiff.i80 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dq, i8 0, i64 %i.dr, i1 false)
  br label %_ZL9hb_memsetPvij.exit.i81

_ZL9hb_memsetPvij.exit.i81:                       ; preds = %bb.z, %bb.y
  %i.ds = and i32 %2, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %.neg.i82 = shl i64 -2, %i.dt
  %i.du = load i64, ptr %i.dk, align 8, !tbaa !296
  %i.dv = and i64 %i.du, %.neg.i82
  store i64 %i.dv, ptr %i.dk, align 8, !tbaa !296
  br label %_ZN13hb_bit_page_t9del_rangeEjj.exit83

_ZN13hb_bit_page_t9del_rangeEjj.exit83:           ; preds = %bb.x, %_ZL9hb_memsetPvij.exit.i81
  store i32 -1, ptr %i.df, align 8, !tbaa !434
  br label %_ZN12hb_bit_set_t8page_forEjb.exit75.thread

_ZN12hb_bit_set_t8page_forEjb.exit75.thread:      ; preds = %bb.v, %._crit_edge.i55, %_ZN12hb_bit_set_t8page_forEjb.exit75, %_ZN13hb_bit_page_t9del_rangeEjj.exit83, %_ZN12hb_bit_set_t8page_forEjb.exit.thread
  tail call void @_ZN12hb_bit_set_t9del_pagesEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.l, i32 noundef %i.p)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.b, %bb.a, %_ZN12hb_bit_set_t8page_forEjb.exit75.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !203, !range !34, !noundef !35
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.critedge, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %1, %2
  %i.d = icmp eq i32 %1, -1
  %or.cond = or i1 %i.d, %i.c
  %i.e = icmp eq i32 %2, -1
  %spec.select = or i1 %i.e, %or.cond
  br i1 %spec.select, label %.critedge, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !204
  %i.g = lshr i32 %1, 9                           ; 10 uses
  %i.h = lshr i32 %2, 9                           ; 7 uses
  %i.i = icmp eq i32 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !289  ; 5 uses
  %i.n = icmp ult i32 %i.k, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !148  ; 6 uses
  br i1 %i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.e, label %._crit_edge.i, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.q = zext i32 %i.k to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !290
  %.not.i = icmp eq i32 %i.s, %i.g
  br i1 %.not.i, label %_ZN12hb_bit_set_t8page_forEjb.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !437  ; 2 uses
  %.not1.i.i.i.i.i = icmp sgt i32 %i.m, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.v = add nsw i32 %i.m, -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.i ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.w = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.x = lshr i32 %i.w, 1                         ; 4 uses
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !290 ; 2 uses
  %i.ac = icmp slt i32 %i.g, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = add nsw i32 %i.x, -1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not28.i.i.i.i.i = icmp eq i32 %i.g, %i.ab
  br i1 %.not28.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nuw nsw i32 %i.x, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.223.i.i.i.i.i = phi i32 [ %i.ae, %bb.h ], [ %.0212.i.i.i.i.i, %bb.f ] ; 3 uses
end_hunk_0
