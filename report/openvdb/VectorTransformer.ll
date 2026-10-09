Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VectorTransformer?download=true
inline.NumInlined: 3364
inline.NumDeleted: 1699
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_15MatMulNormalizeEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !247
  %i.t = load i64, ptr %i.c, align 8, !tbaa !246
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !582

.critedge:                                        ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.g, %bb.f, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !583 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.c), !inline_history !584
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.e, ptr noundef nonnull align 32 dereferenceable(280) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, ptr noundef nonnull align 16 dereferenceable(56) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.r, ptr noundef nonnull align 16 dereferenceable(56) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load <2 x i32>, ptr %i.x, align 8, !tbaa !46
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load i32, ptr %i.aa, align 32, !tbaa !106
  store i32 %i.ab, ptr %i.z, align 32, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.ae, align 16, !tbaa !108
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.e, ptr %i.af, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.g, ptr %i.ag, align 64, !tbaa !110
  store ptr %i.i, ptr %i.m, align 8, !tbaa !111
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !112
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.p, ptr %i.ai, align 64, !tbaa !113
  store ptr %i.r, ptr %i.v, align 8, !tbaa !114
  %i.aj = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !297
  store <2 x ptr> %i.aj, ptr %i.ac, align 8, !tbaa !297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !357
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.an = load i64, ptr %i.am, align 64, !tbaa !360
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.am, align 64, !tbaa !360
  store i64 %i.ao, ptr %i.al, align 64, !tbaa !360
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.ap, align 8, !tbaa !358
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !359
  store i8 %i.as, ptr %i.aq, align 4, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.au = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.au, ptr %i.at, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !585 ; 6 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !376
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !365
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 2, ptr %i.ay, align 8, !tbaa !366
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !378
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !357
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !357
  %i.bc = load ptr, ptr %2, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.bc), !inline_history !585
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !247
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !246
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !359
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_15MatMulNormalizeEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.i, ptr noundef nonnull align 8 dereferenceable(288) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.m, ptr noundef nonnull align 8 dereferenceable(288) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !tbaa !46
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !106
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !107
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.an, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !110
  store ptr %i.p, ptr %i.t, align 8, !tbaa !111
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr %i.u, ptr %i.aq, align 8, !tbaa !112
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !113
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.av = load i8, ptr %i.g, align 4, !tbaa !359
  call void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %4, i8 noundef zeroext %i.av)
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !357
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1, !range !380, !noundef !272
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %4, align 8, !tbaa !383
  %.pre17 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.g, align 4, !tbaa !359
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.g, align 4, !tbaa !359
  %i.bc = load i8, ptr %i.k, align 2, !tbaa !384  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.j, align 1, !tbaa !385
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bi, ptr %i.a, align 1, !tbaa !241
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.k, align 2, !tbaa !384
  %i.bk = add i8 %i.bj, -1                        ; 2 uses
  store i8 %i.bk, ptr %i.k, align 2, !tbaa !384
  %i.bl = load i8, ptr %i.j, align 1, !tbaa !385
  %i.bm = add i8 %i.bl, 1
  %i.bn = and i8 %i.bm, 7
  store i8 %i.bn, ptr %i.j, align 1, !tbaa !385
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %4, align 8, !tbaa !383
  %i.bp = zext i8 %i.bo to i64                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !241
  %i.bs = icmp ult i8 %i.br, %i.bb
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !246
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.h, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre17, %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bp, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.bz = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_15MatMulNormalizeEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.au, ptr noundef nonnull align 8 dereferenceable(288) %i.bz)
  %i.ca = load i8, ptr %i.k, align 2, !tbaa !384
  %i.cb = add i8 %i.ca, -1                        ; 2 uses
  store i8 %i.cb, ptr %i.k, align 2, !tbaa !384
  %i.cc = load i8, ptr %4, align 8, !tbaa !383
  %i.cd = add i8 %i.cc, 7
  %i.ce = and i8 %i.cd, 7
  store i8 %i.ce, ptr %4, align 8, !tbaa !383
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread, %bb.g
  %i.cf = phi i8 [ %i.bk, %bb.g ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread ], [ %i.bc, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %thread-pre-split
  %i.ch = load ptr, ptr %3, align 8, !tbaa !379   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 15
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 1
  %i.ck = icmp eq i8 %i.cj, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i = select i1 %i.ck, ptr %6, ptr %i.ch
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.e, !llvm.loop !587

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15: ; preds = %thread-pre-split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, %bb.c
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.t = load <2 x i32>, ptr %i.r, align 8, !tbaa !46
  store <2 x i32> %i.t, ptr %i.q, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !106
  store i32 %i.w, ptr %i.u, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107
  store ptr %i.z, ptr %i.x, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.aa, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %0, ptr %i.ab, align 8, !tbaa !109
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !110
  store ptr %i.c, ptr %i.g, align 8, !tbaa !111
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.h, ptr %i.ad, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.j, ptr %i.ae, align 8, !tbaa !113
  store ptr %i.l, ptr %i.p, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !246
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !246
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !247
  %i.al = lshr i64 %i.ak, 1                       ; 3 uses
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !247
  %.not4.i = icmp eq i64 %i.al, 0
  br i1 %.not4.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i
  %.05.i = phi i64 [ %i.an, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i ], [ %i.al, %bb.a ]
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !247 ; 2 uses
  %.not3.i = icmp eq i64 %i.am, 0
  br i1 %.not3.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.an = add nsw i64 %.05.i, -1                  ; 2 uses
  %i.ao = add i64 %i.am, -1
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !247
  %i.ap = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.backedge.i.i.i
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !267 ; 2 uses
  %i.ar = load i32, ptr %i.s, align 4, !tbaa !274
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.critedge.backedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.at = load i32, ptr %i.v, align 8, !tbaa !106
  %i.au = icmp sgt i32 %i.aq, %i.at
  br i1 %i.au, label %.critedge.backedge.i.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i

.critedge.backedge.i.i.i:                         ; preds = %bb.c, %.lr.ph.i.i.i
  %i.av = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i, !llvm.loop !0

_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i: ; preds = %.critedge.backedge.i.i.i, %bb.c, %bb.b
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit, label %.lr.ph.i, !llvm.loop !588

_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit: ; preds = %.lr.ph.i, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i, %bb.a
  ret void
}

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %0, i8 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !384
  %i.e = icmp ult i8 %i.d, 8
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.pre = load i8, ptr %0, align 8, !tbaa !383    ; 2 uses
  %.phi.trans.insert = zext i8 %.pre to i64
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.phi.trans.insert
  %.pre6 = load i8, ptr %.phi.trans.insert5, align 1, !tbaa !241
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i8 [ %.pre6, %.lr.ph ], [ %i.bb, %bb.c ]
  %i.g = phi i8 [ %.pre, %.lr.ph ], [ %i.bc, %bb.c ] ; 2 uses
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 2 uses
  %i.j = icmp ult i8 %i.f, %1
  br i1 %i.j, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %.critedge

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %i.h ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %i.m = load i64, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 272 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !246
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %i.q = add i8 %i.g, 1
  %i.r = and i8 %i.q, 7                           ; 2 uses
  store i8 %i.r, ptr %0, align 8, !tbaa !383
  %i.s = zext nneg i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %i.s ; 22 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.t, ptr noundef nonnull align 8 dereferenceable(288) %i.k, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, ptr noundef nonnull align 8 dereferenceable(128) %i.ac, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr noundef nonnull align 8 dereferenceable(88) %i.ae, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 176 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  %i.an = load <2 x i32>, ptr %i.am, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.al, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !106
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !107
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  store ptr null, ptr %i.au, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store ptr %i.t, ptr %i.av, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store ptr %i.u, ptr %i.aw, align 8, !tbaa !110
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  store ptr %i.ab, ptr %i.ax, align 8, !tbaa !112
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_6MatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !247
  %i.t = load i64, ptr %i.c, align 8, !tbaa !246
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !597

.critedge:                                        ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.g, %bb.f, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !598 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.c), !inline_history !599
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.e, ptr noundef nonnull align 32 dereferenceable(280) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, ptr noundef nonnull align 16 dereferenceable(56) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.r, ptr noundef nonnull align 16 dereferenceable(56) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load <2 x i32>, ptr %i.x, align 8, !tbaa !46
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load i32, ptr %i.aa, align 32, !tbaa !106
  store i32 %i.ab, ptr %i.z, align 32, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.ae, align 16, !tbaa !108
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.e, ptr %i.af, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.g, ptr %i.ag, align 64, !tbaa !110
  store ptr %i.i, ptr %i.m, align 8, !tbaa !111
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !112
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.p, ptr %i.ai, align 64, !tbaa !113
  store ptr %i.r, ptr %i.v, align 8, !tbaa !114
  %i.aj = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !297
  store <2 x ptr> %i.aj, ptr %i.ac, align 8, !tbaa !297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !388
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.an = load i64, ptr %i.am, align 64, !tbaa !360
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.am, align 64, !tbaa !360
  store i64 %i.ao, ptr %i.al, align 64, !tbaa !360
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.ap, align 8, !tbaa !358
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !359
  store i8 %i.as, ptr %i.aq, align 4, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.au = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.au, ptr %i.at, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !600 ; 6 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !376
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !365
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 2, ptr %i.ay, align 8, !tbaa !366
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !378
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !388
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !388
  %i.bc = load ptr, ptr %2, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.bc), !inline_history !600
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !247
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !246
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !359
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_6MatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.i, ptr noundef nonnull align 8 dereferenceable(288) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.m, ptr noundef nonnull align 8 dereferenceable(288) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !tbaa !46
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !106
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !107
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.an, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !110
  store ptr %i.p, ptr %i.t, align 8, !tbaa !111
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr %i.u, ptr %i.aq, align 8, !tbaa !112
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !113
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.av = load i8, ptr %i.g, align 4, !tbaa !359
  call void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %4, i8 noundef zeroext %i.av)
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !388
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1, !range !380, !noundef !272
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %4, align 8, !tbaa !383
  %.pre17 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.g, align 4, !tbaa !359
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.g, align 4, !tbaa !359
  %i.bc = load i8, ptr %i.k, align 2, !tbaa !384  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.j, align 1, !tbaa !385
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bi, ptr %i.a, align 1, !tbaa !241
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.k, align 2, !tbaa !384
  %i.bk = add i8 %i.bj, -1                        ; 2 uses
  store i8 %i.bk, ptr %i.k, align 2, !tbaa !384
  %i.bl = load i8, ptr %i.j, align 1, !tbaa !385
  %i.bm = add i8 %i.bl, 1
  %i.bn = and i8 %i.bm, 7
  store i8 %i.bn, ptr %i.j, align 1, !tbaa !385
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %4, align 8, !tbaa !383
  %i.bp = zext i8 %i.bo to i64                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !241
  %i.bs = icmp ult i8 %i.br, %i.bb
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !246
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.h, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre17, %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bp, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.bz = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_6MatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.au, ptr noundef nonnull align 8 dereferenceable(288) %i.bz)
  %i.ca = load i8, ptr %i.k, align 2, !tbaa !384
  %i.cb = add i8 %i.ca, -1                        ; 2 uses
  store i8 %i.cb, ptr %i.k, align 2, !tbaa !384
  %i.cc = load i8, ptr %4, align 8, !tbaa !383
  %i.cd = add i8 %i.cc, 7
  %i.ce = and i8 %i.cd, 7
  store i8 %i.ce, ptr %4, align 8, !tbaa !383
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread, %bb.g
  %i.cf = phi i8 [ %i.bk, %bb.g ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread ], [ %i.bc, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %thread-pre-split
  %i.ch = load ptr, ptr %3, align 8, !tbaa !379   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 15
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 1
  %i.ck = icmp eq i8 %i.cj, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i = select i1 %i.ck, ptr %6, ptr %i.ch
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.e, !llvm.loop !602

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15: ; preds = %thread-pre-split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(664) %2, ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !603 ; 45 uses
  %i.b = load i8, ptr %4, align 1, !tbaa !241
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %3, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.w = load <2 x i32>, ptr %i.v, align 8, !tbaa !46
  store <2 x i32> %i.w, ptr %i.u, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.z = load i32, ptr %i.y, align 8, !tbaa !106
  store i32 %i.z, ptr %i.x, align 64, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !107
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !107
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr null, ptr %i.ad, align 16, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.d, ptr %i.ae, align 8, !tbaa !109
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.e, ptr %i.af, align 32, !tbaa !110
  store ptr %i.g, ptr %i.k, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !112
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.n, ptr %i.ah, align 32, !tbaa !113
  store ptr %i.p, ptr %i.t, align 8, !tbaa !114
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.ak, ptr noundef nonnull align 32 dereferenceable(280) %i.al, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ao, ptr noundef nonnull align 16 dereferenceable(56) %i.ap, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.at, ptr noundef nonnull align 8 dereferenceable(128) %i.au, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(88) %i.aw, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ax, ptr noundef nonnull align 16 dereferenceable(56) %i.ay, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.be = load <2 x i32>, ptr %i.bd, align 8, !tbaa !46
  store <2 x i32> %i.be, ptr %i.bc, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.bh = load i32, ptr %i.bg, align 32, !tbaa !106
  store i32 %i.bh, ptr %i.bf, align 32, !tbaa !106
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.bk, align 16, !tbaa !108
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.ak, ptr %i.bl, align 8, !tbaa !109
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.am, ptr %i.bm, align 64, !tbaa !110
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !111
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.at, ptr %i.bn, align 8, !tbaa !112
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.av, ptr %i.bo, align 64, !tbaa !113
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !114
  %i.bp = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !297
  store <2 x ptr> %i.bp, ptr %i.bi, align 8, !tbaa !297
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !388
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 640 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 64, !tbaa !360
  %i.bu = lshr i64 %i.bt, 1                       ; 2 uses
  store i64 %i.bu, ptr %i.bs, align 64, !tbaa !360
  store i64 %i.bu, ptr %i.br, align 64, !tbaa !360
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.bv, align 8, !tbaa !358
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 652
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !359
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.ca = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ca, ptr %i.bz, align 16, !tbaa !361
  %i.cb = sub i8 %i.by, %i.b
  store i8 %i.cb, ptr %i.bw, align 4, !tbaa !359
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.cd = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !376
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !365
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 2, ptr %i.cf, align 8, !tbaa !366
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !361
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i8 0, ptr %i.ci, align 8, !tbaa !378
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !388
  store ptr %i.cd, ptr %i.bq, align 8, !tbaa !388
  %i.cj = load ptr, ptr %1, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools6MatMulclINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !267
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !299
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.g
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !268
  %i.l = tail call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.q = load i32, ptr %i.p, align 8, !tbaa !269
  %i.r = tail call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.e:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !247
  %i.t = load i64, ptr %i.c, align 8, !tbaa !246
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !609

.critedge:                                        ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.g, %bb.f, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !610 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.c), !inline_history !611
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.e, ptr noundef nonnull align 32 dereferenceable(280) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, ptr noundef nonnull align 16 dereferenceable(56) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.r, ptr noundef nonnull align 16 dereferenceable(56) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load <2 x i32>, ptr %i.x, align 8, !tbaa !46
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load i32, ptr %i.aa, align 32, !tbaa !106
  store i32 %i.ab, ptr %i.z, align 32, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.ae, align 16, !tbaa !108
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.e, ptr %i.af, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.g, ptr %i.ag, align 64, !tbaa !110
  store ptr %i.i, ptr %i.m, align 8, !tbaa !111
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !112
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.p, ptr %i.ai, align 64, !tbaa !113
  store ptr %i.r, ptr %i.v, align 8, !tbaa !114
  %i.aj = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !297
  store <2 x ptr> %i.aj, ptr %i.ac, align 8, !tbaa !297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !391
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.an = load i64, ptr %i.am, align 64, !tbaa !360
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.am, align 64, !tbaa !360
  store i64 %i.ao, ptr %i.al, align 64, !tbaa !360
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.ap, align 8, !tbaa !358
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !359
  store i8 %i.as, ptr %i.aq, align 4, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.au = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.au, ptr %i.at, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !612 ; 6 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !376
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !365
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 2, ptr %i.ay, align 8, !tbaa !366
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !378
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !391
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !391
  %i.bc = load ptr, ptr %2, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.bc), !inline_history !612
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !247
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !246
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !359
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_17HomogeneousMatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.i, ptr noundef nonnull align 8 dereferenceable(288) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.m, ptr noundef nonnull align 8 dereferenceable(288) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !tbaa !46
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !106
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !107
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.an, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !110
  store ptr %i.p, ptr %i.t, align 8, !tbaa !111
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr %i.u, ptr %i.aq, align 8, !tbaa !112
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !113
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.av = load i8, ptr %i.g, align 4, !tbaa !359
  call void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %4, i8 noundef zeroext %i.av)
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !391
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1, !range !380, !noundef !272
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %4, align 8, !tbaa !383
  %.pre17 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.g, align 4, !tbaa !359
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.g, align 4, !tbaa !359
  %i.bc = load i8, ptr %i.k, align 2, !tbaa !384  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.j, align 1, !tbaa !385
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bi, ptr %i.a, align 1, !tbaa !241
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.k, align 2, !tbaa !384
  %i.bk = add i8 %i.bj, -1                        ; 2 uses
  store i8 %i.bk, ptr %i.k, align 2, !tbaa !384
  %i.bl = load i8, ptr %i.j, align 1, !tbaa !385
  %i.bm = add i8 %i.bl, 1
  %i.bn = and i8 %i.bm, 7
  store i8 %i.bn, ptr %i.j, align 1, !tbaa !385
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %4, align 8, !tbaa !383
  %i.bp = zext i8 %i.bo to i64                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !241
  %i.bs = icmp ult i8 %i.br, %i.bb
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !246
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.h, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre17, %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bp, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.bz = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_17HomogeneousMatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.au, ptr noundef nonnull align 8 dereferenceable(288) %i.bz)
  %i.ca = load i8, ptr %i.k, align 2, !tbaa !384
  %i.cb = add i8 %i.ca, -1                        ; 2 uses
  store i8 %i.cb, ptr %i.k, align 2, !tbaa !384
  %i.cc = load i8, ptr %4, align 8, !tbaa !383
  %i.cd = add i8 %i.cc, 7
  %i.ce = and i8 %i.cd, 7
  store i8 %i.ce, ptr %4, align 8, !tbaa !383
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread, %bb.g
  %i.cf = phi i8 [ %i.bk, %bb.g ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread ], [ %i.bc, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %thread-pre-split
  %i.ch = load ptr, ptr %3, align 8, !tbaa !379   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 15
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 1
  %i.ck = icmp eq i8 %i.cj, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i = select i1 %i.ck, ptr %6, ptr %i.ch
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.e, !llvm.loop !614

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15: ; preds = %thread-pre-split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(664) %2, ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !615 ; 45 uses
  %i.b = load i8, ptr %4, align 1, !tbaa !241
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %3, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.w = load <2 x i32>, ptr %i.v, align 8, !tbaa !46
  store <2 x i32> %i.w, ptr %i.u, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.z = load i32, ptr %i.y, align 8, !tbaa !106
  store i32 %i.z, ptr %i.x, align 64, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !107
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !107
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr null, ptr %i.ad, align 16, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.d, ptr %i.ae, align 8, !tbaa !109
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.e, ptr %i.af, align 32, !tbaa !110
  store ptr %i.g, ptr %i.k, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !112
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.n, ptr %i.ah, align 32, !tbaa !113
  store ptr %i.p, ptr %i.t, align 8, !tbaa !114
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.ak, ptr noundef nonnull align 32 dereferenceable(280) %i.al, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ao, ptr noundef nonnull align 16 dereferenceable(56) %i.ap, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.at, ptr noundef nonnull align 8 dereferenceable(128) %i.au, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(88) %i.aw, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ax, ptr noundef nonnull align 16 dereferenceable(56) %i.ay, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.be = load <2 x i32>, ptr %i.bd, align 8, !tbaa !46
  store <2 x i32> %i.be, ptr %i.bc, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.bh = load i32, ptr %i.bg, align 32, !tbaa !106
  store i32 %i.bh, ptr %i.bf, align 32, !tbaa !106
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.bk, align 16, !tbaa !108
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.ak, ptr %i.bl, align 8, !tbaa !109
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.am, ptr %i.bm, align 64, !tbaa !110
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !111
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.at, ptr %i.bn, align 8, !tbaa !112
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.av, ptr %i.bo, align 64, !tbaa !113
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !114
  %i.bp = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !297
  store <2 x ptr> %i.bp, ptr %i.bi, align 8, !tbaa !297
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !391
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 640 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 64, !tbaa !360
  %i.bu = lshr i64 %i.bt, 1                       ; 2 uses
  store i64 %i.bu, ptr %i.bs, align 64, !tbaa !360
  store i64 %i.bu, ptr %i.br, align 64, !tbaa !360
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.bv, align 8, !tbaa !358
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 652
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !359
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.ca = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ca, ptr %i.bz, align 16, !tbaa !361
  %i.cb = sub i8 %i.by, %i.b
  store i8 %i.cb, ptr %i.bw, align 4, !tbaa !359
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.cd = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !376
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !365
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 2, ptr %i.cf, align 8, !tbaa !366
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !361
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i8 0, ptr %i.ci, align 8, !tbaa !378
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !391
  store ptr %i.cd, ptr %i.bq, align 8, !tbaa !391
  %i.cj = load ptr, ptr %1, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17HomogeneousMatMulclINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !267
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !299
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.g
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !268
  %i.l = tail call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.q = load i32, ptr %i.p, align 8, !tbaa !269
  %i.r = tail call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.e:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_15MatMulNormalizeEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !394
  %i.t = load i64, ptr %i.c, align 8, !tbaa !393
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !670

.critedge:                                        ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.g, %bb.f, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !671 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.c), !inline_history !672
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.e, ptr noundef nonnull align 32 dereferenceable(280) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, ptr noundef nonnull align 16 dereferenceable(56) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.r, ptr noundef nonnull align 16 dereferenceable(56) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load <2 x i32>, ptr %i.x, align 8, !tbaa !46
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load i32, ptr %i.aa, align 32, !tbaa !168
  store i32 %i.ab, ptr %i.z, align 32, !tbaa !168
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.ae, align 16, !tbaa !170
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.e, ptr %i.af, align 8, !tbaa !171
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.g, ptr %i.ag, align 64, !tbaa !172
  store ptr %i.i, ptr %i.m, align 8, !tbaa !173
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.p, ptr %i.ai, align 64, !tbaa !175
  store ptr %i.r, ptr %i.v, align 8, !tbaa !176
  %i.aj = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !297
  store <2 x ptr> %i.aj, ptr %i.ac, align 8, !tbaa !297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !414
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.an = load i64, ptr %i.am, align 64, !tbaa !360
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.am, align 64, !tbaa !360
  store i64 %i.ao, ptr %i.al, align 64, !tbaa !360
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.ap, align 8, !tbaa !358
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !359
  store i8 %i.as, ptr %i.aq, align 4, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.au = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.au, ptr %i.at, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !673 ; 6 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !376
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !365
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 2, ptr %i.ay, align 8, !tbaa !366
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !378
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !414
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !414
  %i.bc = load ptr, ptr %2, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.bc), !inline_history !673
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector.232", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !394
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !393
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !359
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_15MatMulNormalizeEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.i, ptr noundef nonnull align 8 dereferenceable(288) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.m, ptr noundef nonnull align 8 dereferenceable(288) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !tbaa !46
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !168
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !168
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !169
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !169
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.an, align 8, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !171
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !172
  store ptr %i.p, ptr %i.t, align 8, !tbaa !173
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr %i.u, ptr %i.aq, align 8, !tbaa !174
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !175
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !176
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.av = load i8, ptr %i.g, align 4, !tbaa !359
  call void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %4, i8 noundef zeroext %i.av)
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !414
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1, !range !380, !noundef !272
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %4, align 8, !tbaa !417
  %.pre17 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.g, align 4, !tbaa !359
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.g, align 4, !tbaa !359
  %i.bc = load i8, ptr %i.k, align 2, !tbaa !418  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.j, align 1, !tbaa !419
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bi, ptr %i.a, align 1, !tbaa !241
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.k, align 2, !tbaa !418
  %i.bk = add i8 %i.bj, -1                        ; 2 uses
  store i8 %i.bk, ptr %i.k, align 2, !tbaa !418
  %i.bl = load i8, ptr %i.j, align 1, !tbaa !419
  %i.bm = add i8 %i.bl, 1
  %i.bn = and i8 %i.bm, 7
  store i8 %i.bn, ptr %i.j, align 1, !tbaa !419
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %4, align 8, !tbaa !417
  %i.bp = zext i8 %i.bo to i64                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !241
  %i.bs = icmp ult i8 %i.br, %i.bb
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !394
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !393
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.h, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre17, %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bp, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.bz = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_15MatMulNormalizeEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.au, ptr noundef nonnull align 8 dereferenceable(288) %i.bz)
  %i.ca = load i8, ptr %i.k, align 2, !tbaa !418
  %i.cb = add i8 %i.ca, -1                        ; 2 uses
  store i8 %i.cb, ptr %i.k, align 2, !tbaa !418
  %i.cc = load i8, ptr %4, align 8, !tbaa !417
  %i.cd = add i8 %i.cc, 7
  %i.ce = and i8 %i.cd, 7
  store i8 %i.ce, ptr %4, align 8, !tbaa !417
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread, %bb.g
  %i.cf = phi i8 [ %i.bk, %bb.g ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread ], [ %i.bc, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %thread-pre-split
  %i.ch = load ptr, ptr %3, align 8, !tbaa !379   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 15
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 1
  %i.ck = icmp eq i8 %i.cj, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i = select i1 %i.ck, ptr %6, ptr %i.ch
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.e, !llvm.loop !675

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15: ; preds = %thread-pre-split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.t = load <2 x i32>, ptr %i.r, align 8, !tbaa !46
  store <2 x i32> %i.t, ptr %i.q, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !168
  store i32 %i.w, ptr %i.u, align 8, !tbaa !168
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !169
  store ptr %i.z, ptr %i.x, align 8, !tbaa !169
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.aa, align 8, !tbaa !170
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %0, ptr %i.ab, align 8, !tbaa !171
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !172
  store ptr %i.c, ptr %i.g, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.h, ptr %i.ad, align 8, !tbaa !174
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.j, ptr %i.ae, align 8, !tbaa !175
  store ptr %i.l, ptr %i.p, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !393
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !393
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !394
  %i.al = lshr i64 %i.ak, 1                       ; 3 uses
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !394
  %.not4.i = icmp eq i64 %i.al, 0
  br i1 %.not4.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i
  %.05.i = phi i64 [ %i.an, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i ], [ %i.al, %bb.a ]
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !394 ; 2 uses
  %.not3.i = icmp eq i64 %i.am, 0
  br i1 %.not3.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.an = add nsw i64 %.05.i, -1                  ; 2 uses
  %i.ao = add i64 %i.am, -1
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !394
  %i.ap = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.backedge.i.i.i
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !395 ; 2 uses
  %i.ar = load i32, ptr %i.s, align 4, !tbaa !397
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.critedge.backedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.at = load i32, ptr %i.v, align 8, !tbaa !168
  %i.au = icmp sgt i32 %i.aq, %i.at
  br i1 %i.au, label %.critedge.backedge.i.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i

.critedge.backedge.i.i.i:                         ; preds = %bb.c, %.lr.ph.i.i.i
  %i.av = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i, !llvm.loop !20

_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i: ; preds = %.critedge.backedge.i.i.i, %bb.c, %bb.b
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit, label %.lr.ph.i, !llvm.loop !676

_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit: ; preds = %.lr.ph.i, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %0, i8 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !418
  %i.e = icmp ult i8 %i.d, 8
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.pre = load i8, ptr %0, align 8, !tbaa !417    ; 2 uses
  %.phi.trans.insert = zext i8 %.pre to i64
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.phi.trans.insert
  %.pre6 = load i8, ptr %.phi.trans.insert5, align 1, !tbaa !241
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i8 [ %.pre6, %.lr.ph ], [ %i.bb, %bb.c ]
  %i.g = phi i8 [ %.pre, %.lr.ph ], [ %i.bc, %bb.c ] ; 2 uses
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 2 uses
  %i.j = icmp ult i8 %i.f, %1
  br i1 %i.j, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %.critedge

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %i.h ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %i.m = load i64, ptr %i.l, align 8, !tbaa !394
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 272 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !393
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %i.q = add i8 %i.g, 1
  %i.r = and i8 %i.q, 7                           ; 2 uses
  store i8 %i.r, ptr %0, align 8, !tbaa !417
  %i.s = zext nneg i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %i.s ; 22 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.t, ptr noundef nonnull align 8 dereferenceable(288) %i.k, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, ptr noundef nonnull align 8 dereferenceable(128) %i.ac, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr noundef nonnull align 8 dereferenceable(88) %i.ae, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 176 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  %i.an = load <2 x i32>, ptr %i.am, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.al, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !168
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !168
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !169
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !169
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  store ptr null, ptr %i.au, align 8, !tbaa !170
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store ptr %i.t, ptr %i.av, align 8, !tbaa !171
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store ptr %i.u, ptr %i.aw, align 8, !tbaa !172
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !173
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  store ptr %i.ab, ptr %i.ax, align 8, !tbaa !174
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store ptr %i.ad, ptr %i.ay, align 8, !tbaa !175
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !176
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 272
end_hunk_3
begin_hunk_4_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_6MatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !394
  %i.t = load i64, ptr %i.c, align 8, !tbaa !393
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !685

.critedge:                                        ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.g, %bb.f, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !686 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.c), !inline_history !687
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.e, ptr noundef nonnull align 32 dereferenceable(280) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, ptr noundef nonnull align 16 dereferenceable(56) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.r, ptr noundef nonnull align 16 dereferenceable(56) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load <2 x i32>, ptr %i.x, align 8, !tbaa !46
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load i32, ptr %i.aa, align 32, !tbaa !168
  store i32 %i.ab, ptr %i.z, align 32, !tbaa !168
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.ae, align 16, !tbaa !170
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.e, ptr %i.af, align 8, !tbaa !171
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.g, ptr %i.ag, align 64, !tbaa !172
  store ptr %i.i, ptr %i.m, align 8, !tbaa !173
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.p, ptr %i.ai, align 64, !tbaa !175
  store ptr %i.r, ptr %i.v, align 8, !tbaa !176
  %i.aj = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !297
  store <2 x ptr> %i.aj, ptr %i.ac, align 8, !tbaa !297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !422
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.an = load i64, ptr %i.am, align 64, !tbaa !360
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.am, align 64, !tbaa !360
  store i64 %i.ao, ptr %i.al, align 64, !tbaa !360
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.ap, align 8, !tbaa !358
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !359
  store i8 %i.as, ptr %i.aq, align 4, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.au = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.au, ptr %i.at, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !688 ; 6 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !376
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !365
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 2, ptr %i.ay, align 8, !tbaa !366
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !378
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !422
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !422
  %i.bc = load ptr, ptr %2, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.bc), !inline_history !688
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector.232", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !394
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !393
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !359
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_6MatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.i, ptr noundef nonnull align 8 dereferenceable(288) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.m, ptr noundef nonnull align 8 dereferenceable(288) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !tbaa !46
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !168
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !168
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !169
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !169
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.an, align 8, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !171
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !172
  store ptr %i.p, ptr %i.t, align 8, !tbaa !173
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr %i.u, ptr %i.aq, align 8, !tbaa !174
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !175
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !176
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.av = load i8, ptr %i.g, align 4, !tbaa !359
  call void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %4, i8 noundef zeroext %i.av)
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !422
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1, !range !380, !noundef !272
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %4, align 8, !tbaa !417
  %.pre17 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.g, align 4, !tbaa !359
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.g, align 4, !tbaa !359
  %i.bc = load i8, ptr %i.k, align 2, !tbaa !418  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.j, align 1, !tbaa !419
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bi, ptr %i.a, align 1, !tbaa !241
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.k, align 2, !tbaa !418
  %i.bk = add i8 %i.bj, -1                        ; 2 uses
  store i8 %i.bk, ptr %i.k, align 2, !tbaa !418
  %i.bl = load i8, ptr %i.j, align 1, !tbaa !419
  %i.bm = add i8 %i.bl, 1
  %i.bn = and i8 %i.bm, 7
  store i8 %i.bn, ptr %i.j, align 1, !tbaa !419
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %4, align 8, !tbaa !417
  %i.bp = zext i8 %i.bo to i64                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !241
  %i.bs = icmp ult i8 %i.br, %i.bb
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !394
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !393
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.h, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre17, %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bp, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.bz = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_6MatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.au, ptr noundef nonnull align 8 dereferenceable(288) %i.bz)
  %i.ca = load i8, ptr %i.k, align 2, !tbaa !418
  %i.cb = add i8 %i.ca, -1                        ; 2 uses
  store i8 %i.cb, ptr %i.k, align 2, !tbaa !418
  %i.cc = load i8, ptr %4, align 8, !tbaa !417
  %i.cd = add i8 %i.cc, 7
  %i.ce = and i8 %i.cd, 7
  store i8 %i.ce, ptr %4, align 8, !tbaa !417
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread, %bb.g
  %i.cf = phi i8 [ %i.bk, %bb.g ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread ], [ %i.bc, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %thread-pre-split
  %i.ch = load ptr, ptr %3, align 8, !tbaa !379   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 15
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 1
  %i.ck = icmp eq i8 %i.cj, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i = select i1 %i.ck, ptr %6, ptr %i.ch
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.e, !llvm.loop !690

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15: ; preds = %thread-pre-split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(664) %2, ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !691 ; 45 uses
  %i.b = load i8, ptr %4, align 1, !tbaa !241
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %3, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.w = load <2 x i32>, ptr %i.v, align 8, !tbaa !46
  store <2 x i32> %i.w, ptr %i.u, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.z = load i32, ptr %i.y, align 8, !tbaa !168
  store i32 %i.z, ptr %i.x, align 64, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !169
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !169
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr null, ptr %i.ad, align 16, !tbaa !170
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.d, ptr %i.ae, align 8, !tbaa !171
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.e, ptr %i.af, align 32, !tbaa !172
  store ptr %i.g, ptr %i.k, align 8, !tbaa !173
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !174
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.n, ptr %i.ah, align 32, !tbaa !175
  store ptr %i.p, ptr %i.t, align 8, !tbaa !176
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.ak, ptr noundef nonnull align 32 dereferenceable(280) %i.al, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ao, ptr noundef nonnull align 16 dereferenceable(56) %i.ap, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.at, ptr noundef nonnull align 8 dereferenceable(128) %i.au, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(88) %i.aw, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ax, ptr noundef nonnull align 16 dereferenceable(56) %i.ay, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.be = load <2 x i32>, ptr %i.bd, align 8, !tbaa !46
  store <2 x i32> %i.be, ptr %i.bc, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.bh = load i32, ptr %i.bg, align 32, !tbaa !168
  store i32 %i.bh, ptr %i.bf, align 32, !tbaa !168
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.bk, align 16, !tbaa !170
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.ak, ptr %i.bl, align 8, !tbaa !171
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.am, ptr %i.bm, align 64, !tbaa !172
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !173
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.at, ptr %i.bn, align 8, !tbaa !174
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.av, ptr %i.bo, align 64, !tbaa !175
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !176
  %i.bp = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !297
  store <2 x ptr> %i.bp, ptr %i.bi, align 8, !tbaa !297
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !422
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 640 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 64, !tbaa !360
  %i.bu = lshr i64 %i.bt, 1                       ; 2 uses
  store i64 %i.bu, ptr %i.bs, align 64, !tbaa !360
  store i64 %i.bu, ptr %i.br, align 64, !tbaa !360
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.bv, align 8, !tbaa !358
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 652
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !359
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.ca = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ca, ptr %i.bz, align 16, !tbaa !361
  %i.cb = sub i8 %i.by, %i.b
  store i8 %i.cb, ptr %i.bw, align 4, !tbaa !359
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.cd = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !376
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !365
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 2, ptr %i.cf, align 8, !tbaa !366
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !361
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i8 0, ptr %i.ci, align 8, !tbaa !378
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !422
  store ptr %i.cd, ptr %i.bq, align 8, !tbaa !422
  %i.cj = load ptr, ptr %1, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools6MatMulclINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !395
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !409
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !268
  %i.l = tail call noundef nonnull align 8 dereferenceable(99344) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.q = load i32, ptr %i.p, align 8, !tbaa !269
  %i.r = tail call noundef nonnull align 8 dereferenceable(794640) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.e:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !394
  %i.t = load i64, ptr %i.c, align 8, !tbaa !393
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !697

.critedge:                                        ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.g, %bb.f, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !698 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.c), !inline_history !699
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.e, ptr noundef nonnull align 32 dereferenceable(280) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, ptr noundef nonnull align 16 dereferenceable(56) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.r, ptr noundef nonnull align 16 dereferenceable(56) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load <2 x i32>, ptr %i.x, align 8, !tbaa !46
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load i32, ptr %i.aa, align 32, !tbaa !168
  store i32 %i.ab, ptr %i.z, align 32, !tbaa !168
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.ae, align 16, !tbaa !170
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.e, ptr %i.af, align 8, !tbaa !171
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.g, ptr %i.ag, align 64, !tbaa !172
  store ptr %i.i, ptr %i.m, align 8, !tbaa !173
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.p, ptr %i.ai, align 64, !tbaa !175
  store ptr %i.r, ptr %i.v, align 8, !tbaa !176
  %i.aj = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !297
  store <2 x ptr> %i.aj, ptr %i.ac, align 8, !tbaa !297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !425
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.an = load i64, ptr %i.am, align 64, !tbaa !360
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.am, align 64, !tbaa !360
  store i64 %i.ao, ptr %i.al, align 64, !tbaa !360
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.ap, align 8, !tbaa !358
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !359
  store i8 %i.as, ptr %i.aq, align 4, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.au = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.au, ptr %i.at, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !700 ; 6 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !376
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !365
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 2, ptr %i.ay, align 8, !tbaa !366
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !378
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !425
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !425
  %i.bc = load ptr, ptr %2, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.bc), !inline_history !700
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector.232", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !394
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !393
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !359
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_17HomogeneousMatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.i, ptr noundef nonnull align 8 dereferenceable(288) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.m, ptr noundef nonnull align 8 dereferenceable(288) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !tbaa !46
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !168
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !168
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !169
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !169
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.an, align 8, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !171
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !172
  store ptr %i.p, ptr %i.t, align 8, !tbaa !173
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr %i.u, ptr %i.aq, align 8, !tbaa !174
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !175
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !176
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.av = load i8, ptr %i.g, align 4, !tbaa !359
  call void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %4, i8 noundef zeroext %i.av)
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !425
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1, !range !380, !noundef !272
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %4, align 8, !tbaa !417
  %.pre17 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.g, align 4, !tbaa !359
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.g, align 4, !tbaa !359
  %i.bc = load i8, ptr %i.k, align 2, !tbaa !418  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.j, align 1, !tbaa !419
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bi, ptr %i.a, align 1, !tbaa !241
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.k, align 2, !tbaa !418
  %i.bk = add i8 %i.bj, -1                        ; 2 uses
  store i8 %i.bk, ptr %i.k, align 2, !tbaa !418
  %i.bl = load i8, ptr %i.j, align 1, !tbaa !419
  %i.bm = add i8 %i.bl, 1
  %i.bn = and i8 %i.bm, 7
  store i8 %i.bn, ptr %i.j, align 1, !tbaa !419
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %4, align 8, !tbaa !417
  %i.bp = zext i8 %i.bo to i64                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !241
  %i.bs = icmp ult i8 %i.br, %i.bb
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !394
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !393
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.h, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre17, %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bp, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.bz = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_17HomogeneousMatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.au, ptr noundef nonnull align 8 dereferenceable(288) %i.bz)
  %i.ca = load i8, ptr %i.k, align 2, !tbaa !418
  %i.cb = add i8 %i.ca, -1                        ; 2 uses
  store i8 %i.cb, ptr %i.k, align 2, !tbaa !418
  %i.cc = load i8, ptr %4, align 8, !tbaa !417
  %i.cd = add i8 %i.cc, 7
  %i.ce = and i8 %i.cd, 7
  store i8 %i.ce, ptr %4, align 8, !tbaa !417
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread, %bb.g
  %i.cf = phi i8 [ %i.bk, %bb.g ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread ], [ %i.bc, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %thread-pre-split
  %i.ch = load ptr, ptr %3, align 8, !tbaa !379   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 15
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 1
  %i.ck = icmp eq i8 %i.cj, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i = select i1 %i.ck, ptr %6, ptr %i.ch
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.e, !llvm.loop !702

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15: ; preds = %thread-pre-split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(664) %2, ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !703 ; 45 uses
  %i.b = load i8, ptr %4, align 1, !tbaa !241
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %3, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.w = load <2 x i32>, ptr %i.v, align 8, !tbaa !46
  store <2 x i32> %i.w, ptr %i.u, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.z = load i32, ptr %i.y, align 8, !tbaa !168
  store i32 %i.z, ptr %i.x, align 64, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !169
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !169
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr null, ptr %i.ad, align 16, !tbaa !170
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.d, ptr %i.ae, align 8, !tbaa !171
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.e, ptr %i.af, align 32, !tbaa !172
  store ptr %i.g, ptr %i.k, align 8, !tbaa !173
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !174
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.n, ptr %i.ah, align 32, !tbaa !175
  store ptr %i.p, ptr %i.t, align 8, !tbaa !176
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.ak, ptr noundef nonnull align 32 dereferenceable(280) %i.al, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ao, ptr noundef nonnull align 16 dereferenceable(56) %i.ap, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.at, ptr noundef nonnull align 8 dereferenceable(128) %i.au, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(88) %i.aw, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ax, ptr noundef nonnull align 16 dereferenceable(56) %i.ay, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.be = load <2 x i32>, ptr %i.bd, align 8, !tbaa !46
  store <2 x i32> %i.be, ptr %i.bc, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.bh = load i32, ptr %i.bg, align 32, !tbaa !168
  store i32 %i.bh, ptr %i.bf, align 32, !tbaa !168
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.bk, align 16, !tbaa !170
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.ak, ptr %i.bl, align 8, !tbaa !171
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.am, ptr %i.bm, align 64, !tbaa !172
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !173
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.at, ptr %i.bn, align 8, !tbaa !174
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.av, ptr %i.bo, align 64, !tbaa !175
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !176
  %i.bp = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !297
  store <2 x ptr> %i.bp, ptr %i.bi, align 8, !tbaa !297
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !425
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 640 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 64, !tbaa !360
  %i.bu = lshr i64 %i.bt, 1                       ; 2 uses
  store i64 %i.bu, ptr %i.bs, align 64, !tbaa !360
  store i64 %i.bu, ptr %i.br, align 64, !tbaa !360
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.bv, align 8, !tbaa !358
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 652
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !359
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.ca = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ca, ptr %i.bz, align 16, !tbaa !361
  %i.cb = sub i8 %i.by, %i.b
  store i8 %i.cb, ptr %i.bw, align 4, !tbaa !359
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.cd = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !376
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !365
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 2, ptr %i.cf, align 8, !tbaa !366
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !361
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i8 0, ptr %i.ci, align 8, !tbaa !378
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !425
  store ptr %i.cd, ptr %i.bq, align 8, !tbaa !425
  %i.cj = load ptr, ptr %1, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17HomogeneousMatMulclINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !395
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !409
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !268
  %i.l = tail call noundef nonnull align 8 dereferenceable(99344) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.q = load i32, ptr %i.p, align 8, !tbaa !269
  %i.r = tail call noundef nonnull align 8 dereferenceable(794640) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.e:                                             ; preds = %bb.a
end_hunk_5
begin_hunk_6_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_15MatMulNormalizeEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !428
  %i.t = load i64, ptr %i.c, align 8, !tbaa !427
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !752

.critedge:                                        ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.g, %bb.f, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !753 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.c), !inline_history !754
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.e, ptr noundef nonnull align 32 dereferenceable(280) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, ptr noundef nonnull align 16 dereferenceable(56) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.r, ptr noundef nonnull align 16 dereferenceable(56) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load <2 x i32>, ptr %i.x, align 8, !tbaa !46
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load i32, ptr %i.aa, align 32, !tbaa !224
  store i32 %i.ab, ptr %i.z, align 32, !tbaa !224
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.ae, align 16, !tbaa !226
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.e, ptr %i.af, align 8, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.g, ptr %i.ag, align 64, !tbaa !228
  store ptr %i.i, ptr %i.m, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !230
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.p, ptr %i.ai, align 64, !tbaa !231
  store ptr %i.r, ptr %i.v, align 8, !tbaa !232
  %i.aj = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !297
  store <2 x ptr> %i.aj, ptr %i.ac, align 8, !tbaa !297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !448
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.an = load i64, ptr %i.am, align 64, !tbaa !360
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.am, align 64, !tbaa !360
  store i64 %i.ao, ptr %i.al, align 64, !tbaa !360
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.ap, align 8, !tbaa !358
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !359
  store i8 %i.as, ptr %i.aq, align 4, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.au = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.au, ptr %i.at, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !755 ; 6 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !376
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !365
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 2, ptr %i.ay, align 8, !tbaa !366
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !378
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !448
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !448
  %i.bc = load ptr, ptr %2, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.bc), !inline_history !755
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector.325", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !428
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !427
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !359
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_15MatMulNormalizeEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.i, ptr noundef nonnull align 8 dereferenceable(288) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.m, ptr noundef nonnull align 8 dereferenceable(288) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !tbaa !46
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !224
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !224
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !225
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !225
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.an, align 8, !tbaa !226
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !227
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !228
  store ptr %i.p, ptr %i.t, align 8, !tbaa !229
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr %i.u, ptr %i.aq, align 8, !tbaa !230
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !231
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !232
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.av = load i8, ptr %i.g, align 4, !tbaa !359
  call void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %4, i8 noundef zeroext %i.av)
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !448
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1, !range !380, !noundef !272
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %4, align 8, !tbaa !451
  %.pre17 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.g, align 4, !tbaa !359
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.g, align 4, !tbaa !359
  %i.bc = load i8, ptr %i.k, align 2, !tbaa !452  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.j, align 1, !tbaa !453
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bi, ptr %i.a, align 1, !tbaa !241
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.k, align 2, !tbaa !452
  %i.bk = add i8 %i.bj, -1                        ; 2 uses
  store i8 %i.bk, ptr %i.k, align 2, !tbaa !452
  %i.bl = load i8, ptr %i.j, align 1, !tbaa !453
  %i.bm = add i8 %i.bl, 1
  %i.bn = and i8 %i.bm, 7
  store i8 %i.bn, ptr %i.j, align 1, !tbaa !453
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %4, align 8, !tbaa !451
  %i.bp = zext i8 %i.bo to i64                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !241
  %i.bs = icmp ult i8 %i.br, %i.bb
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !428
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !427
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.h, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre17, %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bp, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.bz = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_15MatMulNormalizeEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.au, ptr noundef nonnull align 8 dereferenceable(288) %i.bz)
  %i.ca = load i8, ptr %i.k, align 2, !tbaa !452
  %i.cb = add i8 %i.ca, -1                        ; 2 uses
  store i8 %i.cb, ptr %i.k, align 2, !tbaa !452
  %i.cc = load i8, ptr %4, align 8, !tbaa !451
  %i.cd = add i8 %i.cc, 7
  %i.ce = and i8 %i.cd, 7
  store i8 %i.ce, ptr %4, align 8, !tbaa !451
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread, %bb.g
  %i.cf = phi i8 [ %i.bk, %bb.g ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread ], [ %i.bc, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %thread-pre-split
  %i.ch = load ptr, ptr %3, align 8, !tbaa !379   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 15
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 1
  %i.ck = icmp eq i8 %i.cj, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i = select i1 %i.ck, ptr %6, ptr %i.ch
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.e, !llvm.loop !757

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15: ; preds = %thread-pre-split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.t = load <2 x i32>, ptr %i.r, align 8, !tbaa !46
  store <2 x i32> %i.t, ptr %i.q, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !224
  store i32 %i.w, ptr %i.u, align 8, !tbaa !224
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !225
  store ptr %i.z, ptr %i.x, align 8, !tbaa !225
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.aa, align 8, !tbaa !226
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %0, ptr %i.ab, align 8, !tbaa !227
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !228
  store ptr %i.c, ptr %i.g, align 8, !tbaa !229
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.h, ptr %i.ad, align 8, !tbaa !230
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.j, ptr %i.ae, align 8, !tbaa !231
  store ptr %i.l, ptr %i.p, align 8, !tbaa !232
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !427
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !427
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !428
  %i.al = lshr i64 %i.ak, 1                       ; 3 uses
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !428
  %.not4.i = icmp eq i64 %i.al, 0
  br i1 %.not4.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i
  %.05.i = phi i64 [ %i.an, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i ], [ %i.al, %bb.a ]
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !428 ; 2 uses
  %.not3.i = icmp eq i64 %i.am, 0
  br i1 %.not3.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.an = add nsw i64 %.05.i, -1                  ; 2 uses
  %i.ao = add i64 %i.am, -1
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !428
  %i.ap = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.backedge.i.i.i
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !429 ; 2 uses
  %i.ar = load i32, ptr %i.s, align 4, !tbaa !431
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.critedge.backedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.at = load i32, ptr %i.v, align 8, !tbaa !224
  %i.au = icmp sgt i32 %i.aq, %i.at
  br i1 %i.au, label %.critedge.backedge.i.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i

.critedge.backedge.i.i.i:                         ; preds = %bb.c, %.lr.ph.i.i.i
  %i.av = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i, !llvm.loop !26

_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i: ; preds = %.critedge.backedge.i.i.i, %bb.c, %bb.b
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit, label %.lr.ph.i, !llvm.loop !758

_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE9incrementEm.exit: ; preds = %.lr.ph.i, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %0, i8 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !452
  %i.e = icmp ult i8 %i.d, 8
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.pre = load i8, ptr %0, align 8, !tbaa !451    ; 2 uses
  %.phi.trans.insert = zext i8 %.pre to i64
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.phi.trans.insert
  %.pre6 = load i8, ptr %.phi.trans.insert5, align 1, !tbaa !241
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i8 [ %.pre6, %.lr.ph ], [ %i.bb, %bb.c ]
  %i.g = phi i8 [ %.pre, %.lr.ph ], [ %i.bc, %bb.c ] ; 2 uses
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 2 uses
  %i.j = icmp ult i8 %i.f, %1
  br i1 %i.j, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %.critedge

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %i.h ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %i.m = load i64, ptr %i.l, align 8, !tbaa !428
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 272 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !427
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %i.q = add i8 %i.g, 1
  %i.r = and i8 %i.q, 7                           ; 2 uses
  store i8 %i.r, ptr %0, align 8, !tbaa !451
  %i.s = zext nneg i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %i.s ; 22 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.t, ptr noundef nonnull align 8 dereferenceable(288) %i.k, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, ptr noundef nonnull align 8 dereferenceable(128) %i.ac, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr noundef nonnull align 8 dereferenceable(88) %i.ae, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 176 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  %i.an = load <2 x i32>, ptr %i.am, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.al, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !224
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !225
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !225
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  store ptr null, ptr %i.au, align 8, !tbaa !226
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store ptr %i.t, ptr %i.av, align 8, !tbaa !227
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store ptr %i.u, ptr %i.aw, align 8, !tbaa !228
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !229
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  store ptr %i.ab, ptr %i.ax, align 8, !tbaa !230
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store ptr %i.ad, ptr %i.ay, align 8, !tbaa !231
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !232
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 272
end_hunk_6
begin_hunk_7_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_6MatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !428
  %i.t = load i64, ptr %i.c, align 8, !tbaa !427
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !767

.critedge:                                        ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.g, %bb.f, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !768 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.c), !inline_history !769
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.e, ptr noundef nonnull align 32 dereferenceable(280) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, ptr noundef nonnull align 16 dereferenceable(56) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.r, ptr noundef nonnull align 16 dereferenceable(56) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load <2 x i32>, ptr %i.x, align 8, !tbaa !46
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load i32, ptr %i.aa, align 32, !tbaa !224
  store i32 %i.ab, ptr %i.z, align 32, !tbaa !224
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.ae, align 16, !tbaa !226
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.e, ptr %i.af, align 8, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.g, ptr %i.ag, align 64, !tbaa !228
  store ptr %i.i, ptr %i.m, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !230
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.p, ptr %i.ai, align 64, !tbaa !231
  store ptr %i.r, ptr %i.v, align 8, !tbaa !232
  %i.aj = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !297
  store <2 x ptr> %i.aj, ptr %i.ac, align 8, !tbaa !297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !456
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.an = load i64, ptr %i.am, align 64, !tbaa !360
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.am, align 64, !tbaa !360
  store i64 %i.ao, ptr %i.al, align 64, !tbaa !360
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.ap, align 8, !tbaa !358
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !359
  store i8 %i.as, ptr %i.aq, align 4, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.au = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.au, ptr %i.at, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !770 ; 6 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !376
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !365
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 2, ptr %i.ay, align 8, !tbaa !366
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !378
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !456
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !456
  %i.bc = load ptr, ptr %2, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.bc), !inline_history !770
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector.325", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !428
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !427
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !359
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_6MatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.i, ptr noundef nonnull align 8 dereferenceable(288) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.m, ptr noundef nonnull align 8 dereferenceable(288) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !tbaa !46
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !224
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !224
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !225
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !225
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.an, align 8, !tbaa !226
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !227
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !228
  store ptr %i.p, ptr %i.t, align 8, !tbaa !229
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr %i.u, ptr %i.aq, align 8, !tbaa !230
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !231
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !232
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.av = load i8, ptr %i.g, align 4, !tbaa !359
  call void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %4, i8 noundef zeroext %i.av)
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !456
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1, !range !380, !noundef !272
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %4, align 8, !tbaa !451
  %.pre17 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.g, align 4, !tbaa !359
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.g, align 4, !tbaa !359
  %i.bc = load i8, ptr %i.k, align 2, !tbaa !452  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.j, align 1, !tbaa !453
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bi, ptr %i.a, align 1, !tbaa !241
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.k, align 2, !tbaa !452
  %i.bk = add i8 %i.bj, -1                        ; 2 uses
  store i8 %i.bk, ptr %i.k, align 2, !tbaa !452
  %i.bl = load i8, ptr %i.j, align 1, !tbaa !453
  %i.bm = add i8 %i.bl, 1
  %i.bn = and i8 %i.bm, 7
  store i8 %i.bn, ptr %i.j, align 1, !tbaa !453
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %4, align 8, !tbaa !451
  %i.bp = zext i8 %i.bo to i64                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !241
  %i.bs = icmp ult i8 %i.br, %i.bb
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !428
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !427
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.h, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre17, %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bp, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.bz = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_6MatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.au, ptr noundef nonnull align 8 dereferenceable(288) %i.bz)
  %i.ca = load i8, ptr %i.k, align 2, !tbaa !452
  %i.cb = add i8 %i.ca, -1                        ; 2 uses
  store i8 %i.cb, ptr %i.k, align 2, !tbaa !452
  %i.cc = load i8, ptr %4, align 8, !tbaa !451
  %i.cd = add i8 %i.cc, 7
  %i.ce = and i8 %i.cd, 7
  store i8 %i.ce, ptr %4, align 8, !tbaa !451
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread, %bb.g
  %i.cf = phi i8 [ %i.bk, %bb.g ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread ], [ %i.bc, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %thread-pre-split
  %i.ch = load ptr, ptr %3, align 8, !tbaa !379   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 15
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 1
  %i.ck = icmp eq i8 %i.cj, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i = select i1 %i.ck, ptr %6, ptr %i.ch
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.e, !llvm.loop !772

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15: ; preds = %thread-pre-split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(664) %2, ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !773 ; 45 uses
  %i.b = load i8, ptr %4, align 1, !tbaa !241
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %3, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.w = load <2 x i32>, ptr %i.v, align 8, !tbaa !46
  store <2 x i32> %i.w, ptr %i.u, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.z = load i32, ptr %i.y, align 8, !tbaa !224
  store i32 %i.z, ptr %i.x, align 64, !tbaa !224
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !225
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !225
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr null, ptr %i.ad, align 16, !tbaa !226
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.d, ptr %i.ae, align 8, !tbaa !227
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.e, ptr %i.af, align 32, !tbaa !228
  store ptr %i.g, ptr %i.k, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !230
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.n, ptr %i.ah, align 32, !tbaa !231
  store ptr %i.p, ptr %i.t, align 8, !tbaa !232
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.ak, ptr noundef nonnull align 32 dereferenceable(280) %i.al, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ao, ptr noundef nonnull align 16 dereferenceable(56) %i.ap, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.at, ptr noundef nonnull align 8 dereferenceable(128) %i.au, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(88) %i.aw, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ax, ptr noundef nonnull align 16 dereferenceable(56) %i.ay, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.be = load <2 x i32>, ptr %i.bd, align 8, !tbaa !46
  store <2 x i32> %i.be, ptr %i.bc, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.bh = load i32, ptr %i.bg, align 32, !tbaa !224
  store i32 %i.bh, ptr %i.bf, align 32, !tbaa !224
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.bk, align 16, !tbaa !226
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.ak, ptr %i.bl, align 8, !tbaa !227
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.am, ptr %i.bm, align 64, !tbaa !228
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !229
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.at, ptr %i.bn, align 8, !tbaa !230
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.av, ptr %i.bo, align 64, !tbaa !231
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !232
  %i.bp = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !297
  store <2 x ptr> %i.bp, ptr %i.bi, align 8, !tbaa !297
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !456
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 640 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 64, !tbaa !360
  %i.bu = lshr i64 %i.bt, 1                       ; 2 uses
  store i64 %i.bu, ptr %i.bs, align 64, !tbaa !360
  store i64 %i.bu, ptr %i.br, align 64, !tbaa !360
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.bv, align 8, !tbaa !358
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 652
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !359
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.ca = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ca, ptr %i.bz, align 16, !tbaa !361
  %i.cb = sub i8 %i.by, %i.b
  store i8 %i.cb, ptr %i.bw, align 4, !tbaa !359
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.cd = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !376
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !365
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 2, ptr %i.cf, align 8, !tbaa !366
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !361
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i8 0, ptr %i.ci, align 8, !tbaa !378
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !456
  store ptr %i.cd, ptr %i.bq, align 8, !tbaa !456
  %i.cj = load ptr, ptr %1, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools6MatMulclINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !429
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !443
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.g
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !268
  %i.l = tail call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.q = load i32, ptr %i.p, align 8, !tbaa !269
  %i.r = tail call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.e:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load i64, ptr %i.a, align 8, !tbaa !428
  %i.t = load i64, ptr %i.c, align 8, !tbaa !427
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !779

.critedge:                                        ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.g, %bb.f, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !780 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEC2ERSR_N3tbb6detail2d05splitE(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.c), !inline_history !781
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.e, ptr noundef nonnull align 32 dereferenceable(280) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, ptr noundef nonnull align 16 dereferenceable(56) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.r, ptr noundef nonnull align 16 dereferenceable(56) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load <2 x i32>, ptr %i.x, align 8, !tbaa !46
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load i32, ptr %i.aa, align 32, !tbaa !224
  store i32 %i.ab, ptr %i.z, align 32, !tbaa !224
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.ae, align 16, !tbaa !226
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.e, ptr %i.af, align 8, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.g, ptr %i.ag, align 64, !tbaa !228
  store ptr %i.i, ptr %i.m, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !230
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.p, ptr %i.ai, align 64, !tbaa !231
  store ptr %i.r, ptr %i.v, align 8, !tbaa !232
  %i.aj = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !297
  store <2 x ptr> %i.aj, ptr %i.ac, align 8, !tbaa !297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !459
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.an = load i64, ptr %i.am, align 64, !tbaa !360
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.am, align 64, !tbaa !360
  store i64 %i.ao, ptr %i.al, align 64, !tbaa !360
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.ap, align 8, !tbaa !358
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !359
  store i8 %i.as, ptr %i.aq, align 4, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.au = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.au, ptr %i.at, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %2), !inline_history !782 ; 6 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !376
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !365
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 2, ptr %i.ay, align 8, !tbaa !366
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !378
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !459
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !459
  %i.bc = load ptr, ptr %2, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.bc), !inline_history !782
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEES11_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector.325", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.c = load i64, ptr %i.b, align 8, !tbaa !428
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !427
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !359
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_17HomogeneousMatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.i, ptr noundef nonnull align 8 dereferenceable(288) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.m, ptr noundef nonnull align 8 dereferenceable(288) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !tbaa !46
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !224
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !224
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !225
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !225
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.an, align 8, !tbaa !226
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.m, ptr %i.ao, align 8, !tbaa !227
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !228
  store ptr %i.p, ptr %i.t, align 8, !tbaa !229
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr %i.u, ptr %i.aq, align 8, !tbaa !230
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !231
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !232
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.av = load i8, ptr %i.g, align 4, !tbaa !359
  call void @_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(2320) %4, i8 noundef zeroext %i.av)
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !459
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1, !range !380, !noundef !272
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %4, align 8, !tbaa !451
  %.pre17 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.g, align 4, !tbaa !359
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.g, align 4, !tbaa !359
  %i.bc = load i8, ptr %i.k, align 2, !tbaa !452  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.j, align 1, !tbaa !453
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bi, ptr %i.a, align 1, !tbaa !241
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.k, align 2, !tbaa !452
  %i.bk = add i8 %i.bj, -1                        ; 2 uses
  store i8 %i.bk, ptr %i.k, align 2, !tbaa !452
  %i.bl = load i8, ptr %i.j, align 1, !tbaa !453
  %i.bm = add i8 %i.bl, 1
  %i.bn = and i8 %i.bm, 7
  store i8 %i.bn, ptr %i.j, align 1, !tbaa !453
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %4, align 8, !tbaa !451
  %i.bp = zext i8 %i.bo to i64                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !241
  %i.bs = icmp ult i8 %i.br, %i.bb
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !428
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !427
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.h, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre17, %._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bp, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.bz = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_17HomogeneousMatMulEEclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.au, ptr noundef nonnull align 8 dereferenceable(288) %i.bz)
  %i.ca = load i8, ptr %i.k, align 2, !tbaa !452
  %i.cb = add i8 %i.ca, -1                        ; 2 uses
  store i8 %i.cb, ptr %i.k, align 2, !tbaa !452
  %i.cc = load i8, ptr %4, align 8, !tbaa !451
  %i.cd = add i8 %i.cc, 7
  %i.ce = and i8 %i.cd, 7
  store i8 %i.ce, ptr %4, align 8, !tbaa !451
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread, %bb.g
  %i.cf = phi i8 [ %i.bk, %bb.g ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit.thread ], [ %i.bc, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %thread-pre-split
  %i.ch = load ptr, ptr %3, align 8, !tbaa !379   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 15
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 1
  %i.ck = icmp eq i8 %i.cj, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i = select i1 %i.ck, ptr %6, ptr %i.ch
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, label %bb.e, !llvm.loop !784

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15: ; preds = %thread-pre-split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEELh8EED2Ev.exit15, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(664) %2, ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !348
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !785 ; 45 uses
  %i.b = load i8, ptr %4, align 1, !tbaa !241
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %3, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.w = load <2 x i32>, ptr %i.v, align 8, !tbaa !46
  store <2 x i32> %i.w, ptr %i.u, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.z = load i32, ptr %i.y, align 8, !tbaa !224
  store i32 %i.z, ptr %i.x, align 64, !tbaa !224
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !225
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !225
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr null, ptr %i.ad, align 16, !tbaa !226
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.d, ptr %i.ae, align 8, !tbaa !227
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.e, ptr %i.af, align 32, !tbaa !228
  store ptr %i.g, ptr %i.k, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !230
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.n, ptr %i.ah, align 32, !tbaa !231
  store ptr %i.p, ptr %i.t, align 8, !tbaa !232
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.ak, ptr noundef nonnull align 32 dereferenceable(280) %i.al, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ao, ptr noundef nonnull align 16 dereferenceable(56) %i.ap, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.at, ptr noundef nonnull align 8 dereferenceable(128) %i.au, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(88) %i.aw, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ax, ptr noundef nonnull align 16 dereferenceable(56) %i.ay, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.be = load <2 x i32>, ptr %i.bd, align 8, !tbaa !46
  store <2 x i32> %i.be, ptr %i.bc, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.bh = load i32, ptr %i.bg, align 32, !tbaa !224
  store i32 %i.bh, ptr %i.bf, align 32, !tbaa !224
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr null, ptr %i.bk, align 16, !tbaa !226
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %i.ak, ptr %i.bl, align 8, !tbaa !227
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.am, ptr %i.bm, align 64, !tbaa !228
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !229
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr %i.at, ptr %i.bn, align 8, !tbaa !230
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.av, ptr %i.bo, align 64, !tbaa !231
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !232
  %i.bp = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !297
  store <2 x ptr> %i.bp, ptr %i.bi, align 8, !tbaa !297
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 632 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !459
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 640 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 64, !tbaa !360
  %i.bu = lshr i64 %i.bt, 1                       ; 2 uses
  store i64 %i.bu, ptr %i.bs, align 64, !tbaa !360
  store i64 %i.bu, ptr %i.br, align 64, !tbaa !360
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 2, ptr %i.bv, align 8, !tbaa !358
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 652
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !359
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.ca = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ca, ptr %i.bz, align 16, !tbaa !361
  %i.cb = sub i8 %i.by, %i.b
  store i8 %i.cb, ptr %i.bw, align 4, !tbaa !359
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.cd = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !376
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !365
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 2, ptr %i.cf, align 8, !tbaa !366
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !361
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i8 0, ptr %i.ci, align 8, !tbaa !378
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !459
  store ptr %i.cd, ptr %i.bq, align 8, !tbaa !459
  %i.cj = load ptr, ptr %1, align 8, !tbaa !379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17HomogeneousMatMulclINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !429
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !443
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.g
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !268
  %i.l = tail call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.q = load i32, ptr %i.p, align 8, !tbaa !269
  %i.r = tail call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.e:                                             ; preds = %bb.a
end_hunk_8
