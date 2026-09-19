Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EtLj2EEEvLb0EE14serialize_copyIJRKS5_EEEbP22hb_serialize_context_tRKS6_PKvjNSA_8whence_tEDpOT_:bb.a

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_14UnsizedArrayOfINS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EtLj2EEEvLb0EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.l, %_ZN22hb_serialize_context_t4copyIN2OT14UnsizedArrayOfINS1_7NumTypeILb1EhLj1EEEEEJRKNS3_ILb1EtLj2EEEEEEPT_RKS9_DpOT0_.exit
  ret i1 %.pn.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN16hb_subset_plan_t19source_table_loaderIKN2OT4hmtxEEclEPS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.hb::unique_ptr", align 8   ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3088 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 3 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #15 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !191
  br label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit

_ZN9hb_lock_tC2EP10hb_mutex_t.exit:               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ null, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %i.h = select i1 %.not14, ptr %i.g, ptr %i.f    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !192, !range !169, !noundef !193
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread

bb.c:                                             ; preds = %_ZN9hb_lock_tC2EP10hb_mutex_t.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !194  ; 5 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !195
  %i.p = urem i32 92421880, %i.o                  ; 3 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = and i32 %i.t, 2
  %.not15.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !174
  %i.y = icmp eq i32 %i.x, 1752003704
  br i1 %i.y, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = load i32, ptr %i.af, align 4, !tbaa !174
  %i.aa = icmp eq i32 %i.z, 1752003704
  br i1 %i.aa, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.01016.i20.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.p, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.ab, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.ab = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ac = add i32 %i.ab, %.01016.i20.i.i
  %i.ad = and i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = and i32 %i.ah, 2
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, label %bb.e, !llvm.loop !2

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit: ; preds = %bb.e
  %i.aj = trunc i32 %i.ah to i1
  br i1 %i.aj, label %.lr.ph.i.i19, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43: ; preds = %.lr.ph.i.i.i
  %i.ak = trunc i32 %i.t to i1
  br i1 %i.ak, label %._crit_edge.i.i, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread

bb.f:                                             ; preds = %.lr.ph.i.i19
  %i.al = load i32, ptr %i.av, align 4, !tbaa !174
  %i.am = icmp eq i32 %i.al, 1752003704
  br i1 %i.am, label %._crit_edge.i.i, label %.lr.ph.i.i19, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.f, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43
  %.lcssa10.i.i = phi i32 [ %i.t, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43 ], [ %i.ax, %bb.f ]
  %i.an = phi i64 [ %i.q, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43 ], [ %i.au, %bb.f ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.an
  %i.ap = trunc i32 %.lcssa10.i.i to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %spec.select.i.i = select i1 %i.ap, ptr %i.aq, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit

.lr.ph.i.i19:                                     ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit, %bb.f
  %.01016.i13.i.i = phi i32 [ %i.at, %bb.f ], [ %i.p, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit ]
  %.017.i12.i.i = phi i32 [ %i.ar, %bb.f ], [ 0, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit ]
  %i.ar = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.as = add i32 %i.ar, %.01016.i13.i.i
  %i.at = and i32 %i.as, %i.w                     ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = and i32 %i.ax, 2
  %.not.i.i.i20 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i20, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit, label %bb.f, !llvm.loop !2

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit: ; preds = %.lr.ph.i.i19, %._crit_edge.i.i
  %.0.i21 = phi ptr [ %spec.select.i.i, %._crit_edge.i.i ], [ @_hb_NullPool, %.lr.ph.i.i19 ]
  %i.az = load ptr, ptr %.0.i21, align 8, !tbaa !197
  %i.ba = tail call ptr @hb_blob_reference(ptr noundef %i.az) #15
  br label %bb.h

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43, %bb.d, %bb.c, %_ZN9hb_lock_tC2EP10hb_mutex_t.exit, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !130 ; 2 uses
  %i.bd = tail call i32 @hb_face_get_glyph_count(ptr noundef %i.bc) #15 ; 0 uses
  %i.be = tail call ptr @hb_face_reference_table(ptr noundef %i.bc, i32 noundef 1752003704) #15 ; 4 uses
  %i.bf = tail call ptr @hb_blob_reference(ptr noundef %i.be) #15 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread, label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i, !prof !198

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread: ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread
  tail call void @hb_blob_destroy(ptr noundef %i.bf) #15
  br label %_ZN21hb_sanitize_context_tD2Ev.exit

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i: ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.bi = icmp eq ptr %i.bh, null
  tail call void @hb_blob_destroy(ptr noundef nonnull %i.bf) #15
  br i1 %i.bi, label %_ZN21hb_sanitize_context_tD2Ev.exit, label %bb.g, !prof !199

bb.g:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i
  tail call void @hb_blob_make_immutable(ptr noundef %i.be) #15
  br label %_ZN21hb_sanitize_context_tD2Ev.exit

_ZN21hb_sanitize_context_tD2Ev.exit:              ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread, %bb.g, %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i
  store ptr %i.be, ptr %2, align 8, !tbaa !197
  %i.bj = tail call ptr @hb_blob_reference(ptr noundef %i.be) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 1752003704, ptr %i.a, align 4, !tbaa !174
  %i.bk = call noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE13set_with_hashIjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 92421880, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bl = load ptr, ptr %2, align 8, !tbaa !197
  call void @hb_blob_destroy(ptr noundef %i.bl) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZN21hb_sanitize_context_tD2Ev.exit, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit
  %.sroa.030.0 = phi ptr [ %i.bj, %_ZN21hb_sanitize_context_tD2Ev.exit ], [ %i.ba, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit ]
  br i1 %.not, label %_ZN9hb_lock_tD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #15 ; 0 uses
  br label %_ZN9hb_lock_tD2Ev.exit

_ZN9hb_lock_tD2Ev.exit:                           ; preds = %bb.h, %bb.i
  ret ptr %.sroa.030.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE6subsetEP19hb_subset_context_t(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.OT::hmtxvmtx<OT::hmtx, OT::hhea, OT::HVAR>::accelerator_t", align 8 ; 8 uses
  %3 = alloca %struct.hb_map_iter_t.743, align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  call void @_ZN2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.h)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !167  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2720 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !183  ; 2 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.l, i32 65535) ; 3 uses
  %i.m = add nsw i32 %.sroa.speculated, -1
  %i.n = call noundef i32 @_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE28get_new_gid_advance_unscaledEPK16hb_subset_plan_tPK12hb_hashmap_tIj9hb_pair_tIjiELb0EEjRKNS4_13accelerator_tE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %i.i, ptr noundef nonnull %i.j, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.o = icmp ugt i32 %i.l, 1
  br i1 %i.o, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02856 = phi i32 [ %i.t, %bb.b ], [ %.sroa.speculated, %bb.a ] ; 3 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !652
  %i.q = add i32 %.02856, -2
  %i.r = call noundef i32 @_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE28get_new_gid_advance_unscaledEPK16hb_subset_plan_tPK12hb_hashmap_tIj9hb_pair_tIjiELb0EEjRKNS4_13accelerator_tE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %i.p, ptr noundef nonnull %i.j, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.t = add i32 %.02856, -1                      ; 2 uses
  %i.u = icmp ugt i32 %i.t, 1
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !2729

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.028.lcssa = phi i32 [ %.sroa.speculated, %bb.a ], [ 1, %bb.b ], [ %.02856, %.lr.ph ] ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !167  ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 196
  %.val = load i32, ptr %i.w, align 4, !tbaa !182
  %i.x = getelementptr i8, ptr %i.v, i64 200
  %.val29 = load ptr, ptr %i.x, align 8, !tbaa !181 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %.val to i64 ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !168
  store ptr %.val29, ptr %3, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.8.insert.ext.i.i.i.i, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !183
  call void @_ZN2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS4_6subsetEP19hb_subset_context_tEUlS9_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSJ_6item_tEEE5valueEvE4typeELSG_0EEEvP22hb_serialize_context_tSJ_10hb_array_tISA_Ejj(ptr noundef nonnull align 1 dereferenceable(4) %i.d, ptr noundef %i.y, ptr noundef nonnull byval(%struct.hb_map_iter_t.743) align 8 %3, ptr %.val29, i64 %.sroa.2.8.insert.ext.i.i.i.i, i32 noundef %.028.lcssa, i32 noundef %i.aa)
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !150
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.c, label %bb.d, !prof !175

bb.c:                                             ; preds = %.critedge
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2816
  %i.ag = call noundef zeroext i1 @_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE20subset_update_headerEP19hb_subset_context_tjPK12hb_hashmap_tIj9hb_pair_tIjiELb0EERK11hb_vector_tIjLb0EE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull %1, i32 noundef %.028.lcssa, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.af)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.0 = phi i1 [ %i.ag, %bb.c ], [ false, %.critedge ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !268
  call void @hb_blob_destroy(ptr noundef %i.ai) #15
  store ptr null, ptr %i.ah, align 8, !tbaa !268
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !268
  call void @hb_blob_destroy(ptr noundef %i.ak) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = tail call i32 @hb_face_get_glyph_count(ptr noundef %1) #15 ; 0 uses
  %i.d = tail call ptr @hb_face_reference_table(ptr noundef %1, i32 noundef 1752003704) #15 ; 3 uses
  %i.e = tail call ptr @hb_blob_reference(ptr noundef %i.d) #15 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread, label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i, !prof !198

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread: ; preds = %bb.a
  tail call void @hb_blob_destroy(ptr noundef %i.e) #15
  br label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4HVAREEEP9hb_blob_tPK9hb_face_tj.exit

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = icmp eq ptr %i.g, null
  tail call void @hb_blob_destroy(ptr noundef nonnull %i.e) #15
  br i1 %i.h, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4HVAREEEP9hb_blob_tPK9hb_face_tj.exit, label %bb.b, !prof !199

bb.b:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i
  tail call void @hb_blob_make_immutable(ptr noundef %i.d) #15
  br label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4HVAREEEP9hb_blob_tPK9hb_face_tj.exit

_ZN21hb_sanitize_context_t15reference_tableIN2OT4HVAREEEP9hb_blob_tPK9hb_face_tj.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread, %bb.b, %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i
  store ptr %i.d, ptr %i.a, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 0, ptr %2, align 8, !tbaa !247
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !249
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.i, i8 0, i64 33, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 61
  store i8 0, ptr %i.m, align 1, !tbaa !250
  %i.n = tail call i32 @hb_face_get_glyph_count(ptr noundef %1) #15
  store i32 %i.n, ptr %i.k, align 8, !tbaa !251
  store i8 1, ptr %i.l, align 4, !tbaa !252
  %i.o = tail call ptr @hb_face_reference_table(ptr noundef %1, i32 noundef 1213612370) #15
  %i.p = call noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4HVAREEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %2, ptr noundef %i.o)
  store ptr %i.p, ptr %i.b, align 8, !tbaa !268
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !249  ; 2 uses
  %.not.i20 = icmp eq ptr %i.q, null
  br i1 %.not.i20, label %_ZN21hb_sanitize_context_tD2Ev.exit21, label %bb.c

bb.c:                                             ; preds = %_ZN21hb_sanitize_context_t15reference_tableIN2OT4HVAREEEP9hb_blob_tPK9hb_face_tj.exit
  call void @hb_blob_destroy(ptr noundef nonnull %i.q) #15
  br label %_ZN21hb_sanitize_context_tD2Ev.exit21

_ZN21hb_sanitize_context_tD2Ev.exit21:            ; preds = %_ZN21hb_sanitize_context_t15reference_tableIN2OT4HVAREEEP9hb_blob_tPK9hb_face_tj.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.r = call i32 @hb_face_get_upem(ptr noundef %1) #15
  %i.s = lshr i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.s, ptr %i.t, align 8, !tbaa !331
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !268  ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.u, null
  %spec.select.i.i = select i1 %.not.i.i22, ptr @_hb_NullPool, ptr %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !75   ; 3 uses
  %spec.select = and i32 %i.w, -2                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.y = load atomic ptr, ptr %i.x acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tEptEv.exit, !prof !222

.lr.ph.i.i.i:                                     ; preds = %_ZN21hb_sanitize_context_tD2Ev.exit21
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !223
  %.not.i.i.i.i23 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i23, label %bb.e, label %bb.f, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ab = call noundef ptr @hb_blob_get_empty() #15
  br label %_ZNK16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tEptEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj4EE11call_createI9hb_blob_t22hb_table_lazy_loader_tIN2OT4hheaELj4ELb1EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i, label %bb.g, label %bb.h, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef ptr @hb_blob_get_empty() #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.07.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %i.ae = cmpxchg weak ptr %i.x, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.af = extractvalue { ptr, i1 } %i.ae, 1
  br i1 %i.af, label %_ZNK16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tEptEv.exit, label %bb.i, !prof !175

bb.i:                                             ; preds = %bb.h
  call void @_ZN16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tE10do_destroyEPS5_(ptr noundef %.07.i.i.i)
  %i.ag = load atomic ptr, ptr %i.x acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tEptEv.exit, !prof !224

_ZNK16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tEptEv.exit: ; preds = %bb.h, %bb.i, %_ZN21hb_sanitize_context_tD2Ev.exit21, %bb.e
  %.19.ph.i.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.y, %_ZN21hb_sanitize_context_tD2Ev.exit21 ], [ %.07.i.i.i, %bb.h ], [ %i.ag, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !75
  %i.al = icmp ult i32 %i.ak, 36
  %spec.select.i.i.i.i.i = select i1 %i.al, ptr @_hb_NullPool, ptr %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 34
  %i.an = load i16, ptr %i.am, align 1, !tbaa !180
  %i.ao = call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %i.aq = shl nuw nsw i32 %i.ap, 2                ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, %spec.select
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !74

bb.j:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tEptEv.exit
  %i.as = lshr i32 %i.w, 2
  %.pre37 = and i32 %i.w, -4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tEptEv.exit
  %.pre-phi = phi i32 [ %.pre37, %bb.j ], [ %i.aq, %_ZNK16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tEptEv.exit ]
  %storemerge = phi i32 [ %i.as, %bb.j ], [ %i.ap, %_ZNK16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tEptEv.exit ]
  store i32 %storemerge, ptr %0, align 8, !tbaa !323
  %i.at = sub i32 %spec.select, %.pre-phi         ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.av = load atomic ptr, ptr %i.au acquire, align 8 ; 2 uses
  %.not14.i.i.i24 = icmp eq ptr %i.av, null
  br i1 %.not14.i.i.i24, label %.lr.ph.i.i.i27, label %_ZNK16hb_lazy_loader_tIN2OT4maxpE22hb_table_lazy_loader_tIS1_Lj2ELb1EE9hb_face_tLj2E9hb_blob_tEptEv.exit, !prof !222

.lr.ph.i.i.i27:                                   ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %.lr.ph.i.i.i27
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !223
  %.not.i.i.i.i28 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i28, label %bb.m, label %bb.n, !prof !74

bb.m:                                             ; preds = %bb.l
  %i.ay = call noundef ptr @hb_blob_get_empty() #15
  br label %_ZNK16hb_lazy_loader_tIN2OT4maxpE22hb_table_lazy_loader_tIS1_Lj2ELb1EE9hb_face_tLj2E9hb_blob_tEptEv.exit

bb.n:                                             ; preds = %bb.l
  %i.az = call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj2EE11call_createI9hb_blob_t22hb_table_lazy_loader_tIN2OT4maxpELj2ELb1EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.au) ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %i.az, null
  br i1 %.not10.i.i.i29, label %bb.o, label %bb.p, !prof !74

bb.o:                                             ; preds = %bb.n
  %i.ba = call noundef ptr @hb_blob_get_empty() #15
  br label %bb.p

end_hunk_0
begin_hunk_1_@_ZN21hb_sanitize_context_t13sanitize_blobIN2OT3OS2EEEP9hb_blob_tS4_:bb.a
bb.i:                                             ; preds = %.critedge9.i, %_ZNK2OT3OS28sanitizeEP21hb_sanitize_context_t.exit, %bb.d
  %.1 = phi ptr [ %1, %bb.d ], [ %1, %.critedge9.i ], [ %i.aq, %_ZNK2OT3OS28sanitizeEP21hb_sanitize_context_t.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN16hb_subset_plan_t19source_table_loaderIKN2OT4vmtxEEclEPS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.hb::unique_ptr", align 8   ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3088 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 3 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #15 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !191
  br label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit

_ZN9hb_lock_tC2EP10hb_mutex_t.exit:               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ null, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %i.h = select i1 %.not14, ptr %i.g, ptr %i.f    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !192, !range !169, !noundef !193
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread

bb.c:                                             ; preds = %_ZN9hb_lock_tC2EP10hb_mutex_t.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !194  ; 5 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !195
  %i.p = urem i32 864173816, %i.o                 ; 3 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = and i32 %i.t, 2
  %.not15.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !174
  %i.y = icmp eq i32 %i.x, 1986884728
  br i1 %i.y, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = load i32, ptr %i.af, align 4, !tbaa !174
  %i.aa = icmp eq i32 %i.z, 1986884728
  br i1 %i.aa, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.01016.i20.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.p, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.ab, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.ab = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ac = add i32 %i.ab, %.01016.i20.i.i
  %i.ad = and i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = and i32 %i.ah, 2
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, label %bb.e, !llvm.loop !2

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit: ; preds = %bb.e
  %i.aj = trunc i32 %i.ah to i1
  br i1 %i.aj, label %.lr.ph.i.i19, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43: ; preds = %.lr.ph.i.i.i
  %i.ak = trunc i32 %i.t to i1
  br i1 %i.ak, label %._crit_edge.i.i, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread

bb.f:                                             ; preds = %.lr.ph.i.i19
  %i.al = load i32, ptr %i.av, align 4, !tbaa !174
  %i.am = icmp eq i32 %i.al, 1986884728
  br i1 %i.am, label %._crit_edge.i.i, label %.lr.ph.i.i19, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.f, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43
  %.lcssa10.i.i = phi i32 [ %i.t, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43 ], [ %i.ax, %bb.f ]
  %i.an = phi i64 [ %i.q, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43 ], [ %i.au, %bb.f ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.an
  %i.ap = trunc i32 %.lcssa10.i.i to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %spec.select.i.i = select i1 %i.ap, ptr %i.aq, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit

.lr.ph.i.i19:                                     ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit, %bb.f
  %.01016.i13.i.i = phi i32 [ %i.at, %bb.f ], [ %i.p, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit ]
  %.017.i12.i.i = phi i32 [ %i.ar, %bb.f ], [ 0, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit ]
  %i.ar = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.as = add i32 %i.ar, %.01016.i13.i.i
  %i.at = and i32 %i.as, %i.w                     ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = and i32 %i.ax, 2
  %.not.i.i.i20 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i20, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit, label %bb.f, !llvm.loop !2

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit: ; preds = %.lr.ph.i.i19, %._crit_edge.i.i
  %.0.i21 = phi ptr [ %spec.select.i.i, %._crit_edge.i.i ], [ @_hb_NullPool, %.lr.ph.i.i19 ]
  %i.az = load ptr, ptr %.0.i21, align 8, !tbaa !197
  %i.ba = tail call ptr @hb_blob_reference(ptr noundef %i.az) #15
  br label %bb.h

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread43, %bb.d, %bb.c, %_ZN9hb_lock_tC2EP10hb_mutex_t.exit, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !130 ; 2 uses
  %i.bd = tail call i32 @hb_face_get_glyph_count(ptr noundef %i.bc) #15 ; 0 uses
  %i.be = tail call ptr @hb_face_reference_table(ptr noundef %i.bc, i32 noundef 1986884728) #15 ; 4 uses
  %i.bf = tail call ptr @hb_blob_reference(ptr noundef %i.be) #15 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread, label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i, !prof !198

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread: ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread
  tail call void @hb_blob_destroy(ptr noundef %i.bf) #15
  br label %_ZN21hb_sanitize_context_tD2Ev.exit

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i: ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.bi = icmp eq ptr %i.bh, null
  tail call void @hb_blob_destroy(ptr noundef nonnull %i.bf) #15
  br i1 %i.bi, label %_ZN21hb_sanitize_context_tD2Ev.exit, label %bb.g, !prof !199

bb.g:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i
  tail call void @hb_blob_make_immutable(ptr noundef %i.be) #15
  br label %_ZN21hb_sanitize_context_tD2Ev.exit

_ZN21hb_sanitize_context_tD2Ev.exit:              ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread, %bb.g, %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i
  store ptr %i.be, ptr %2, align 8, !tbaa !197
  %i.bj = tail call ptr @hb_blob_reference(ptr noundef %i.be) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 1986884728, ptr %i.a, align 4, !tbaa !174
  %i.bk = call noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE13set_with_hashIjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef -1283309832, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bl = load ptr, ptr %2, align 8, !tbaa !197
  call void @hb_blob_destroy(ptr noundef %i.bl) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZN21hb_sanitize_context_tD2Ev.exit, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit
  %.sroa.030.0 = phi ptr [ %i.bj, %_ZN21hb_sanitize_context_tD2Ev.exit ], [ %i.ba, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit ]
  br i1 %.not, label %_ZN9hb_lock_tD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #15 ; 0 uses
  br label %_ZN9hb_lock_tD2Ev.exit

_ZN9hb_lock_tD2Ev.exit:                           ; preds = %bb.h, %bb.i
  ret ptr %.sroa.030.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE6subsetEP19hb_subset_context_t(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.OT::hmtxvmtx<OT::vmtx, OT::vhea, OT::VVAR>::accelerator_t", align 8 ; 8 uses
  %3 = alloca %struct.hb_map_iter_t.762, align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  call void @_ZN2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.h)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !167  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2768 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !183  ; 2 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.l, i32 65535) ; 3 uses
  %i.m = add nsw i32 %.sroa.speculated, -1
  %i.n = call noundef i32 @_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE28get_new_gid_advance_unscaledEPK16hb_subset_plan_tPK12hb_hashmap_tIj9hb_pair_tIjiELb0EEjRKNS4_13accelerator_tE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %i.i, ptr noundef nonnull %i.j, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.o = icmp ugt i32 %i.l, 1
  br i1 %i.o, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02856 = phi i32 [ %i.t, %bb.b ], [ %.sroa.speculated, %bb.a ] ; 3 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !652
  %i.q = add i32 %.02856, -2
  %i.r = call noundef i32 @_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE28get_new_gid_advance_unscaledEPK16hb_subset_plan_tPK12hb_hashmap_tIj9hb_pair_tIjiELb0EEjRKNS4_13accelerator_tE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %i.p, ptr noundef nonnull %i.j, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.t = add i32 %.02856, -1                      ; 2 uses
  %i.u = icmp ugt i32 %i.t, 1
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !2767

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.028.lcssa = phi i32 [ %.sroa.speculated, %bb.a ], [ 1, %bb.b ], [ %.02856, %.lr.ph ] ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !167  ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 196
  %.val = load i32, ptr %i.w, align 4, !tbaa !182
  %i.x = getelementptr i8, ptr %i.v, i64 200
  %.val29 = load ptr, ptr %i.x, align 8, !tbaa !181 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %.val to i64 ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !168
  store ptr %.val29, ptr %3, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.8.insert.ext.i.i.i.i, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !183
  call void @_ZN2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS4_6subsetEP19hb_subset_context_tEUlS9_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSJ_6item_tEEE5valueEvE4typeELSG_0EEEvP22hb_serialize_context_tSJ_10hb_array_tISA_Ejj(ptr noundef nonnull align 1 dereferenceable(4) %i.d, ptr noundef %i.y, ptr noundef nonnull byval(%struct.hb_map_iter_t.762) align 8 %3, ptr %.val29, i64 %.sroa.2.8.insert.ext.i.i.i.i, i32 noundef %.028.lcssa, i32 noundef %i.aa)
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !150
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.c, label %bb.d, !prof !175

bb.c:                                             ; preds = %.critedge
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2832
  %i.ag = call noundef zeroext i1 @_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE20subset_update_headerEP19hb_subset_context_tjPK12hb_hashmap_tIj9hb_pair_tIjiELb0EERK11hb_vector_tIjLb0EE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull %1, i32 noundef %.028.lcssa, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.af)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.0 = phi i1 [ %i.ag, %bb.c ], [ false, %.critedge ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !268
  call void @hb_blob_destroy(ptr noundef %i.ai) #15
  store ptr null, ptr %i.ah, align 8, !tbaa !268
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !268
  call void @hb_blob_destroy(ptr noundef %i.ak) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = tail call i32 @hb_face_get_glyph_count(ptr noundef %1) #15 ; 0 uses
  %i.d = tail call ptr @hb_face_reference_table(ptr noundef %1, i32 noundef 1986884728) #15 ; 3 uses
  %i.e = tail call ptr @hb_blob_reference(ptr noundef %i.d) #15 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread, label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i, !prof !198

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread: ; preds = %bb.a
  tail call void @hb_blob_destroy(ptr noundef %i.e) #15
  br label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4VVAREEEP9hb_blob_tPK9hb_face_tj.exit

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = icmp eq ptr %i.g, null
  tail call void @hb_blob_destroy(ptr noundef nonnull %i.e) #15
  br i1 %i.h, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4VVAREEEP9hb_blob_tPK9hb_face_tj.exit, label %bb.b, !prof !199

bb.b:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i
  tail call void @hb_blob_make_immutable(ptr noundef %i.d) #15
  br label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4VVAREEEP9hb_blob_tPK9hb_face_tj.exit

_ZN21hb_sanitize_context_t15reference_tableIN2OT4VVAREEEP9hb_blob_tPK9hb_face_tj.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i.thread, %bb.b, %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i.i
  store ptr %i.d, ptr %i.a, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 0, ptr %2, align 8, !tbaa !247
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !249
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.i, i8 0, i64 33, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 61
  store i8 0, ptr %i.m, align 1, !tbaa !250
  %i.n = tail call i32 @hb_face_get_glyph_count(ptr noundef %1) #15
  store i32 %i.n, ptr %i.k, align 8, !tbaa !251
  store i8 1, ptr %i.l, align 4, !tbaa !252
  %i.o = tail call ptr @hb_face_reference_table(ptr noundef %1, i32 noundef 1448493394) #15
  %i.p = call noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4VVAREEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %2, ptr noundef %i.o)
  store ptr %i.p, ptr %i.b, align 8, !tbaa !268
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !249  ; 2 uses
  %.not.i20 = icmp eq ptr %i.q, null
  br i1 %.not.i20, label %_ZN21hb_sanitize_context_tD2Ev.exit21, label %bb.c

bb.c:                                             ; preds = %_ZN21hb_sanitize_context_t15reference_tableIN2OT4VVAREEEP9hb_blob_tPK9hb_face_tj.exit
  call void @hb_blob_destroy(ptr noundef nonnull %i.q) #15
  br label %_ZN21hb_sanitize_context_tD2Ev.exit21

_ZN21hb_sanitize_context_tD2Ev.exit21:            ; preds = %_ZN21hb_sanitize_context_t15reference_tableIN2OT4VVAREEEP9hb_blob_tPK9hb_face_tj.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.r = call i32 @hb_face_get_upem(ptr noundef %1) #15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.r, ptr %i.s, align 8, !tbaa !333
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !268  ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.t, null
  %spec.select.i.i = select i1 %.not.i.i22, ptr @_hb_NullPool, ptr %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !75   ; 3 uses
  %spec.select = and i32 %i.v, -2                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.x = load atomic ptr, ptr %i.w acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4vheaE22hb_table_lazy_loader_tIS1_Lj11ELb1EE9hb_face_tLj11E9hb_blob_tEptEv.exit, !prof !222

.lr.ph.i.i.i:                                     ; preds = %_ZN21hb_sanitize_context_tD2Ev.exit21
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !223
  %.not.i.i.i.i23 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i23, label %bb.e, label %bb.f, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.aa = call noundef ptr @hb_blob_get_empty() #15
  br label %_ZNK16hb_lazy_loader_tIN2OT4vheaE22hb_table_lazy_loader_tIS1_Lj11ELb1EE9hb_face_tLj11E9hb_blob_tEptEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj11EE11call_createI9hb_blob_t22hb_table_lazy_loader_tIN2OT4vheaELj11ELb1EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not10.i.i.i, label %bb.g, label %bb.h, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.ac = call noundef ptr @hb_blob_get_empty() #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.07.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ad = cmpxchg weak ptr %i.w, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.ae = extractvalue { ptr, i1 } %i.ad, 1
  br i1 %i.ae, label %_ZNK16hb_lazy_loader_tIN2OT4vheaE22hb_table_lazy_loader_tIS1_Lj11ELb1EE9hb_face_tLj11E9hb_blob_tEptEv.exit, label %bb.i, !prof !175

bb.i:                                             ; preds = %bb.h
  call void @_ZN16hb_lazy_loader_tIN2OT4vheaE22hb_table_lazy_loader_tIS1_Lj11ELb1EE9hb_face_tLj11E9hb_blob_tE10do_destroyEPS5_(ptr noundef %.07.i.i.i)
  %i.af = load atomic ptr, ptr %i.w acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK16hb_lazy_loader_tIN2OT4vheaE22hb_table_lazy_loader_tIS1_Lj11ELb1EE9hb_face_tLj11E9hb_blob_tEptEv.exit, !prof !224

_ZNK16hb_lazy_loader_tIN2OT4vheaE22hb_table_lazy_loader_tIS1_Lj11ELb1EE9hb_face_tLj11E9hb_blob_tEptEv.exit: ; preds = %bb.h, %bb.i, %_ZN21hb_sanitize_context_tD2Ev.exit21, %bb.e
  %.19.ph.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.x, %_ZN21hb_sanitize_context_tD2Ev.exit21 ], [ %.07.i.i.i, %bb.h ], [ %i.af, %bb.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !75
  %i.ak = icmp ult i32 %i.aj, 36
  %spec.select.i.i.i.i.i = select i1 %i.ak, ptr @_hb_NullPool, ptr %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 34
  %i.am = load i16, ptr %i.al, align 1, !tbaa !180
  %i.an = call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = shl nuw nsw i32 %i.ao, 2                ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, %spec.select
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !74

bb.j:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4vheaE22hb_table_lazy_loader_tIS1_Lj11ELb1EE9hb_face_tLj11E9hb_blob_tEptEv.exit
  %i.ar = lshr i32 %i.v, 2
  %.pre37 = and i32 %i.v, -4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK16hb_lazy_loader_tIN2OT4vheaE22hb_table_lazy_loader_tIS1_Lj11ELb1EE9hb_face_tLj11E9hb_blob_tEptEv.exit
  %.pre-phi = phi i32 [ %.pre37, %bb.j ], [ %i.ap, %_ZNK16hb_lazy_loader_tIN2OT4vheaE22hb_table_lazy_loader_tIS1_Lj11ELb1EE9hb_face_tLj11E9hb_blob_tEptEv.exit ]
  %storemerge = phi i32 [ %i.ar, %bb.j ], [ %i.ao, %_ZNK16hb_lazy_loader_tIN2OT4vheaE22hb_table_lazy_loader_tIS1_Lj11ELb1EE9hb_face_tLj11E9hb_blob_tEptEv.exit ]
  store i32 %storemerge, ptr %0, align 8, !tbaa !328
  %i.as = sub i32 %spec.select, %.pre-phi         ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.au = load atomic ptr, ptr %i.at acquire, align 8 ; 2 uses
  %.not14.i.i.i24 = icmp eq ptr %i.au, null
  br i1 %.not14.i.i.i24, label %.lr.ph.i.i.i27, label %_ZNK16hb_lazy_loader_tIN2OT4maxpE22hb_table_lazy_loader_tIS1_Lj2ELb1EE9hb_face_tLj2E9hb_blob_tEptEv.exit, !prof !222

.lr.ph.i.i.i27:                                   ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %.lr.ph.i.i.i27
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !223
  %.not.i.i.i.i28 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i28, label %bb.m, label %bb.n, !prof !74

bb.m:                                             ; preds = %bb.l
  %i.ax = call noundef ptr @hb_blob_get_empty() #15
  br label %_ZNK16hb_lazy_loader_tIN2OT4maxpE22hb_table_lazy_loader_tIS1_Lj2ELb1EE9hb_face_tLj2E9hb_blob_tEptEv.exit

bb.n:                                             ; preds = %bb.l
  %i.ay = call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj2EE11call_createI9hb_blob_t22hb_table_lazy_loader_tIN2OT4maxpELj2ELb1EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.at) ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i.i29, label %bb.o, label %bb.p, !prof !74

bb.o:                                             ; preds = %bb.n
  %i.az = call noundef ptr @hb_blob_get_empty() #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
end_hunk_1
