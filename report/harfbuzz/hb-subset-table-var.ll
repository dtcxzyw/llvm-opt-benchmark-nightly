Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4759
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN21hb_sanitize_context_t13sanitize_blobIKN2OT4cvarEEEP9hb_blob_tS5_:bb.a
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.p, 4294967288
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !237
  %i.z = load i16, ptr %i.l, align 1, !tbaa !239
  %i.aa = icmp eq i16 %i.z, 256
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !227 ; 2 uses
  br i1 %i.aa, label %_ZNK2OT4cvar8sanitizeEP21hb_sanitize_context_t.exit, label %.critedge, !prof !206

_ZNK2OT4cvar8sanitizeEP21hb_sanitize_context_t.exit: ; preds = %bb.f
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !233
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.x, %i.ac
  %i.ae = load i32, ptr %i.r, align 8, !tbaa !234
  %i.af = zext i32 %i.ae to i64
  %.not9 = icmp ugt i64 %i.ad, %i.af
  tail call void @hb_blob_destroy(ptr noundef %.pre) #18
  store ptr null, ptr %i.b, align 8, !tbaa !227
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2OT4cvar8sanitizeEP21hb_sanitize_context_t.exit
  tail call void @hb_blob_make_immutable(ptr noundef %1) #18
  br label %bb.i

.critedge:                                        ; preds = %bb.e, %bb.f
  %i.ag = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ]
  tail call void @hb_blob_destroy(ptr noundef %i.ag) #18
  store ptr null, ptr %i.b, align 8, !tbaa !227
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %_ZNK2OT4cvar8sanitizeEP21hb_sanitize_context_t.exit
  tail call void @hb_blob_destroy(ptr noundef %1) #18
  %i.ah = tail call ptr @hb_blob_get_empty() #18
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %.1 = phi ptr [ %1, %bb.d ], [ %1, %bb.g ], [ %i.ah, %bb.h ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT4cvar6subsetEP19hb_subset_context_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.OT::TupleVariationData<>::tuple_variations_t", align 8 ; 23 uses
  %3 = alloca %"struct.OT::optimize_scratch_t", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.d = load i8, ptr %i.c, align 4, !tbaa !270, !range !200, !noundef !209
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store atomic i32 1, ptr %i.f monotonic, align 8
  store atomic i8 1, ptr %i.g monotonic, align 4
  store atomic ptr null, ptr %i.h monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.i, align 8, !tbaa !410
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.k, align 8, !tbaa !411
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.j, i8 0, i64 18, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 72
  store atomic i32 1, ptr %i.l monotonic, align 8
  store atomic i8 1, ptr %i.m monotonic, align 4
  store atomic ptr null, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i8 1, ptr %i.o, align 8, !tbaa !414
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 82
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.p, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.q, i8 0, i64 22, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 2676
  %i.s = load i32, ptr %i.r, align 4, !tbaa !386
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !157
  %i.v = tail call ptr @hb_face_reference_table(ptr noundef %i.u, i32 noundef 1668707360) #18 ; 2 uses
  %i.w = tail call i32 @hb_blob_get_length(ptr noundef %i.v) #18
  %i.x = lshr i32 %i.w, 1
  tail call void @hb_blob_destroy(ptr noundef %i.v) #18
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !197
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2656
  %i.ac = call noundef zeroext i1 @_ZNK2OT4cvar26decompile_tuple_variationsEjjP9hb_blob_tbPK8hb_map_tRNS_18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, i32 noundef %i.s, i32 noundef %i.x, ptr noundef %i.z, i1 noundef zeroext false, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(126) %2)
  br i1 %i.ac, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %3, i8 0, i64 304, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !330
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2416
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 2304
  %i.ai = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t35change_tuple_variations_axis_limitsERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EEP15hb_alloc_pool_t(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef null)
  br i1 %i.ai, label %bb.e, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t22merge_tuple_variationsEP22contour_point_vector_t(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef null)
  %i.ak = load i32, ptr %2, align 8
  %i.al = icmp sgt i32 %i.ak, -1
  %or.cond = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread21, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread21: ; preds = %bb.e, %bb.c
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2464
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 2656
  %i.ap = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t13compile_bytesERK8hb_map_tS7_bbPK12hb_hashmap_tIPK11hb_vector_tINS_7HBFixedINS1_ILb1EsLj2EEELj14EEELb0EEjLb0EEP15hb_alloc_pool_t(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
  br i1 %i.ap, label %bb.f, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread

bb.f:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread21
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !199 ; 4 uses
  %i.as = load i32, ptr %i.ad, align 4, !tbaa !330
  %.not.i15 = icmp eq i32 %i.as, 0
  br i1 %.not.i15, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 44 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !181
  %.not.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread, !prof !206

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !183
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !182 ; 4 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp slt i64 %i.bb, 4
  br i1 %i.bc, label %.critedge.i.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT12FixedVersionINS1_7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i.i.i, !prof !102

.critedge.i.i.i.i:                                ; preds = %bb.h
  store i32 4, ptr %i.at, align 4, !tbaa !181
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread

_ZN22hb_serialize_context_t13allocate_sizeIN2OT12FixedVersionINS1_7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i.i.i: ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !182
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread, label %bb.i, !prof !202

bb.i:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT12FixedVersionINS1_7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i.i.i
  %i.be = load i32, ptr %0, align 1, !alias.scope !3458
  store i32 %i.be, ptr %i.ay, align 1, !alias.scope !3458
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = call noundef zeroext i1 @_ZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tbRKNS3_18tuple_variations_tE(ptr noundef nonnull align 1 dereferenceable(4) %i.bf, ptr noundef nonnull %i.ar, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(126) %2)
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread: ; preds = %bb.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT12FixedVersionINS1_7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i.i.i, %.critedge.i.i.i.i, %bb.g, %bb.f, %bb.d, %bb.e, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread21
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread21 ], [ false, %bb.f ], [ %i.bg, %bb.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT12FixedVersionINS1_7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i.i.i ], [ false, %.critedge.i.i.i.i ], [ false, %bb.g ]
  call void @_ZN2OT18optimize_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread
  %.1 = phi i1 [ %.0, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread ], [ false, %bb.b ]
  call void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.2 = phi i1 [ %.1, %bb.j ], [ false, %bb.a ]
  ret i1 %.2
}

declare i32 @hb_blob_get_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT4cvar26decompile_tuple_variationsEjjP9hb_blob_tbPK8hb_map_tRNS_18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(126) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %struct.hb_array_t.347, align 8     ; 4 uses
  %8 = alloca %"struct.OT::TupleVariationData<>::tuple_iterator_t", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %struct.hb_vector_t.22, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %storemerge.i = tail call i32 @llvm.usub.sat.i32(i32 %i.e, i32 4)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %.sroa.3.8.insert.ext.i = zext i32 %storemerge.i to i64 ; 4 uses
  %i.g = icmp ult i32 %i.e, 8
  %spec.select.i.i.i = select i1 %i.g, ptr @_hb_NullPool, ptr %i.f ; 6 uses
  %i.h = load i16, ptr %spec.select.i.i.i, align 1, !tbaa !239 ; 2 uses
  %i.i = and i16 %i.h, -241                       ; 2 uses
  %i.j = tail call i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext nneg i16 %i.j to i32
  %i.l = shl i32 %1, 1                            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 4 ; 2 uses
  %.mask.i.i.i.i = and i16 %i.h, 128
  %.not.i.i = icmp eq i16 %.mask.i.i.i.i, 0
  br i1 %.not.i.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !239  ; 2 uses
  %i.p = icmp eq i16 %i.o, 0
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %.0.i.i.i.i = select i1 %i.p, ptr @_hb_NullPool, ptr %i.s, !prof !102 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !795
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.3.8.insert.ext.i
  %i.u = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16decompile_pointsERPKNS1_ILb1EhLj1EEER11hb_vector_tIjLb0EES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.t)
  br i1 %i.u, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread10.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.i

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread10.i: ; preds = %bb.b
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !795
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %.0.i.i.i.i to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i: ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread10.i, %bb.a
  %.sroa.9.0 = phi i32 [ 0, %bb.a ], [ %i.z, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread10.i ]
  %i.aa = icmp eq i16 %i.i, 0
  br i1 %i.aa, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %bb.c, !prof !102

bb.c:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %.not.i8.i = icmp ugt i64 %i.ae, %.sroa.3.8.insert.ext.i
  br i1 %.not.i8.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %bb.d, !prof !102

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 6
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !239
  %i.ah = call noundef i16 @llvm.bswap.i16(i16 %i.ag) ; 2 uses
  %.not.i.i.i = icmp ult i16 %i.ah, 16384
  br i1 %.not.i.i.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit, label %bb.e, !prof !206

bb.e:                                             ; preds = %bb.d
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = lshr i32 %i.ai, 15
  %i.ak = lshr i32 %i.ai, 13
  %i.al = and i32 %i.ak, 2
  %i.am = or disjoint i32 %i.al, %i.aj
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = zext i32 %i.l to i64
  %i.ap = mul nuw nsw i64 %i.an, %i.ao
  %i.aq = add nuw nsw i64 %i.ap, 4
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i64 [ %i.aq, %bb.e ], [ 4, %bb.d ] ; 2 uses
  %i.ar = and i64 %.0.i.i.i, 4294967295
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ar
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.ad
  %.not = icmp ugt i64 %i.au, %.sroa.3.8.insert.ext.i
  br i1 %.not, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit
  %i.av = trunc i64 %.0.i.i.i to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i32 %i.k, ptr %8, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %spec.select.i.i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %1, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.l, ptr %.sroa.518.0..sroa_idx, align 4
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.sroa.9.0, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %i.av, ptr %.sroa.720.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.921.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.f, ptr %.sroa.921.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %.sroa.3.8.insert.ext.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.1122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.m, ptr %.sroa.1122.0..sroa_idx, align 8
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !239
  %i.ay = call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i32
  %i.ba = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t26create_from_tuple_var_dataENS3_16tuple_iterator_tEjjbPK8hb_map_tRK11hb_vector_tIjLb0EE10hb_array_tIKNS_7HBFixedINS1_ILb1EsLj2EEELj14EEEEP15hb_alloc_pool_tb(ptr noundef nonnull align 8 dereferenceable(126) %6, ptr noundef nonnull byval(%"struct.OT::TupleVariationData<>::tuple_iterator_t") align 8 %8, i32 noundef %i.az, i32 noundef %2, i1 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull byval(%struct.hb_array_t.347) align 8 %7, ptr noundef null, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread: ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i, %bb.c, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.i, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit, %bb.f
  %.0 = phi i1 [ %i.ba, %bb.f ], [ false, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit ], [ false, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.i ], [ false, %bb.c ], [ false, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i ]
  %i.bb = load i32, ptr %9, align 8, !tbaa !358
  %i.bc = add i32 %i.bb, -1
  %spec.select.i.i.i10 = icmp ult i32 %i.bc, -2
  br i1 %spec.select.i.i.i10, label %bb.g, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.g:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.bd, align 4, !tbaa !359
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !360
  call void @hb_free(ptr noundef %i.bf) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN16hb_subset_plan_t19source_table_loaderIKN2OT4MVAREEclEPS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.hb::unique_ptr", align 8   ; 5 uses
  %3 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3088 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218  ; 3 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #18 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !218
  br label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit

_ZN9hb_lock_tC2EP10hb_mutex_t.exit:               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ null, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %i.h = select i1 %.not14, ptr %i.g, ptr %i.f    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !219, !range !200, !noundef !209
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN21hb_sanitize_context_t15reference_tableIKN2OT4MVAREEEP9hb_blob_tPK9hb_face_tj.exit

bb.c:                                             ; preds = %_ZN9hb_lock_tC2EP10hb_mutex_t.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !220  ; 5 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN21hb_sanitize_context_t15reference_tableIKN2OT4MVAREEEP9hb_blob_tPK9hb_face_tj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !221
  %i.p = urem i32 572582834, %i.o                 ; 3 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = and i32 %i.t, 2
  %.not15.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not15.i.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIKN2OT4MVAREEEP9hb_blob_tPK9hb_face_tj.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !205
  %i.y = icmp eq i32 %i.x, 1297498450
  br i1 %i.y, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = load i32, ptr %i.af, align 4, !tbaa !205
  %i.aa = icmp eq i32 %i.z, 1297498450
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
end_hunk_0
