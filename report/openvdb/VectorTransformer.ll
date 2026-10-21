Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VectorTransformer?download=true
inline.NumInlined: 3364
inline.NumDeleted: 1699
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE3runERKSV_RKS11_RS13_RNS1_18task_group_contextE:bb.a
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !106
  store i32 %i.aq, ptr %i.ao, align 64, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !107
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store ptr null, ptr %i.au, align 16, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store ptr %i.v, ptr %i.av, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr %i.w, ptr %i.aw, align 32, !tbaa !110
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  store ptr %i.af, ptr %i.ay, align 32, !tbaa !113
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 352 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.bb, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 376 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 400 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 472 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 504 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 528 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !46
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !106
  store i32 %i.bx, ptr %i.bv, align 32, !tbaa !106
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store ptr null, ptr %i.ca, align 16, !tbaa !108
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !109
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  store ptr %i.bc, ptr %i.cc, align 64, !tbaa !110
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !111
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 584
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  store ptr %i.bl, ptr %i.ce, align 64, !tbaa !113
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !114
  %i.cf = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !297
  store <2 x ptr> %i.cf, ptr %i.by, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 632 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !357
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.ci = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  store i32 0, ptr %i.ck, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 652
  store i8 5, ptr %i.cl, align 4, !tbaa !359
  %i.cm = shl nsw i64 %i.cj, 1
  %i.cn = and i64 %i.cm, 9223372036854775806
  store i64 %i.cn, ptr %i.ch, align 64, !tbaa !360
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.cp = load i64, ptr %4, align 8, !tbaa !361
  store i64 %i.cp, ptr %i.co, align 16, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !365
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !366
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1, ptr %i.cr, align 8, !tbaa !370
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.cs, align 8, !tbaa !371
  store ptr %5, ptr %i.cg, align 8, !tbaa !357
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread: ; preds = %.split10, %.split9, %.split, %bb.a, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load atomic i8, ptr %i.a monotonic, align 1
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable
}

declare void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(664) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 704, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !374  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !360
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !360
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !375
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !357
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !357
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !359
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !359
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_15MatMulNormalizeEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !357  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load i64, ptr %i.y, align 16, !tbaa !361
  %i.aa = load ptr, ptr %0, align 64, !tbaa !234
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !361
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i64, ptr %i.c, align 16, !tbaa !361
  %i.e = load ptr, ptr %0, align 64, !tbaa !234
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_15MatMulNormalizeEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d0::split", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !246
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !359   ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !247
  %i.m = load i64, ptr %i.c, align 8, !tbaa !246
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.o = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not.i8 = icmp eq i64 %i.o, 0
  br i1 %.not.i8, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.k, align 4, !tbaa !359   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.q, 0
  br i1 %.not4.i9, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.k, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE3runERKSV_RKS11_RS13_RNS1_18task_group_contextE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 240 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.an = load <2 x i32>, ptr %i.d, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !106
  store i32 %i.aq, ptr %i.ao, align 64, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !107
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store ptr null, ptr %i.au, align 16, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store ptr %i.v, ptr %i.av, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr %i.w, ptr %i.aw, align 32, !tbaa !110
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  store ptr %i.af, ptr %i.ay, align 32, !tbaa !113
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 352 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.bb, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 376 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 400 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 472 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 504 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 528 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !46
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !106
  store i32 %i.bx, ptr %i.bv, align 32, !tbaa !106
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store ptr null, ptr %i.ca, align 16, !tbaa !108
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !109
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  store ptr %i.bc, ptr %i.cc, align 64, !tbaa !110
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !111
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 584
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  store ptr %i.bl, ptr %i.ce, align 64, !tbaa !113
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !114
  %i.cf = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !297
  store <2 x ptr> %i.cf, ptr %i.by, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 632 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !388
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.ci = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  store i32 0, ptr %i.ck, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 652
  store i8 5, ptr %i.cl, align 4, !tbaa !359
  %i.cm = shl nsw i64 %i.cj, 1
  %i.cn = and i64 %i.cm, 9223372036854775806
  store i64 %i.cn, ptr %i.ch, align 64, !tbaa !360
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.cp = load i64, ptr %4, align 8, !tbaa !361
  store i64 %i.cp, ptr %i.co, align 16, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !365
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !366
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1, ptr %i.cr, align 8, !tbaa !370
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.cs, align 8, !tbaa !371
  store ptr %5, ptr %i.cg, align 8, !tbaa !388
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread: ; preds = %.split10, %.split9, %.split, %bb.a, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(664) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 704, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !374  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !360
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !360
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !375
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !388
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !388
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !359
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !359
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_6MatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !388  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load i64, ptr %i.y, align 16, !tbaa !361
  %i.aa = load ptr, ptr %0, align 64, !tbaa !234
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !361
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !388  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i64, ptr %i.c, align 16, !tbaa !361
  %i.e = load ptr, ptr %0, align 64, !tbaa !234
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_6MatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d0::split", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !246
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !359   ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !247
  %i.m = load i64, ptr %i.c, align 8, !tbaa !246
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.o = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not.i8 = icmp eq i64 %i.o, 0
  br i1 %.not.i8, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.k, align 4, !tbaa !359   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.q, 0
  br i1 %.not4.i9, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.k, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
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
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE3runERKSV_RKS11_RS13_RNS1_18task_group_contextE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 240 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.an = load <2 x i32>, ptr %i.d, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !106
  store i32 %i.aq, ptr %i.ao, align 64, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !107
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store ptr null, ptr %i.au, align 16, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store ptr %i.v, ptr %i.av, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr %i.w, ptr %i.aw, align 32, !tbaa !110
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  store ptr %i.af, ptr %i.ay, align 32, !tbaa !113
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 352 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.bb, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 376 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 400 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 472 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 504 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 528 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !46
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !106
  store i32 %i.bx, ptr %i.bv, align 32, !tbaa !106
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store ptr null, ptr %i.ca, align 16, !tbaa !108
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !109
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  store ptr %i.bc, ptr %i.cc, align 64, !tbaa !110
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !111
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 584
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  store ptr %i.bl, ptr %i.ce, align 64, !tbaa !113
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !114
  %i.cf = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !297
  store <2 x ptr> %i.cf, ptr %i.by, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 632 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !391
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.ci = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  store i32 0, ptr %i.ck, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 652
  store i8 5, ptr %i.cl, align 4, !tbaa !359
  %i.cm = shl nsw i64 %i.cj, 1
  %i.cn = and i64 %i.cm, 9223372036854775806
  store i64 %i.cn, ptr %i.ch, align 64, !tbaa !360
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.cp = load i64, ptr %4, align 8, !tbaa !361
  store i64 %i.cp, ptr %i.co, align 16, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !365
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !366
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1, ptr %i.cr, align 8, !tbaa !370
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.cs, align 8, !tbaa !371
  store ptr %5, ptr %i.cg, align 8, !tbaa !391
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread: ; preds = %.split10, %.split9, %.split, %bb.a, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(664) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 704, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !374  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !360
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !360
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !375
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !391
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !391
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !359
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !359
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !391  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load i64, ptr %i.y, align 16, !tbaa !361
  %i.aa = load ptr, ptr %0, align 64, !tbaa !234
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !361
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !391  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i64, ptr %i.c, align 16, !tbaa !361
  %i.e = load ptr, ptr %0, align 64, !tbaa !234
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d0::split", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !246
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !359   ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !247
  %i.m = load i64, ptr %i.c, align 8, !tbaa !246
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.o = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not.i8 = icmp eq i64 %i.o, 0
  br i1 %.not.i8, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.k, align 4, !tbaa !359   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.q, 0
  br i1 %.not4.i9, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.k, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
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
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE3runERKSV_RKS11_RS13_RNS1_18task_group_contextE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 240 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.an = load <2 x i32>, ptr %i.d, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !168
  store i32 %i.aq, ptr %i.ao, align 64, !tbaa !168
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !169
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !169
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store ptr null, ptr %i.au, align 16, !tbaa !170
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store ptr %i.v, ptr %i.av, align 8, !tbaa !171
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr %i.w, ptr %i.aw, align 32, !tbaa !172
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !173
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !174
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  store ptr %i.af, ptr %i.ay, align 32, !tbaa !175
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !176
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 352 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.bb, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 376 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 400 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 472 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 504 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 528 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !46
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !168
  store i32 %i.bx, ptr %i.bv, align 32, !tbaa !168
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store ptr null, ptr %i.ca, align 16, !tbaa !170
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !171
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  store ptr %i.bc, ptr %i.cc, align 64, !tbaa !172
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !173
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 584
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !174
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  store ptr %i.bl, ptr %i.ce, align 64, !tbaa !175
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !176
  %i.cf = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !297
  store <2 x ptr> %i.cf, ptr %i.by, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 632 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !414
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.ci = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  store i32 0, ptr %i.ck, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 652
  store i8 5, ptr %i.cl, align 4, !tbaa !359
  %i.cm = shl nsw i64 %i.cj, 1
  %i.cn = and i64 %i.cm, 9223372036854775806
  store i64 %i.cn, ptr %i.ch, align 64, !tbaa !360
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.cp = load i64, ptr %4, align 8, !tbaa !361
  store i64 %i.cp, ptr %i.co, align 16, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !365
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !366
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1, ptr %i.cr, align 8, !tbaa !370
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.cs, align 8, !tbaa !371
  store ptr %5, ptr %i.cg, align 8, !tbaa !414
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread: ; preds = %.split10, %.split9, %.split, %bb.a, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(664) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 704, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !374  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !360
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !360
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !375
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !414
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !414
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !359
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !359
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_15MatMulNormalizeEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !414  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load i64, ptr %i.y, align 16, !tbaa !361
  %i.aa = load ptr, ptr %0, align 64, !tbaa !234
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !361
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !414  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i64, ptr %i.c, align 16, !tbaa !361
  %i.e = load ptr, ptr %0, align 64, !tbaa !234
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_15MatMulNormalizeEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d0::split", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !394
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !393
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !359   ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !394
  %i.m = load i64, ptr %i.c, align 8, !tbaa !393
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.o = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not.i8 = icmp eq i64 %i.o, 0
  br i1 %.not.i8, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.k, align 4, !tbaa !359   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.q, 0
  br i1 %.not4.i9, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.k, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
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
end_hunk_3
begin_hunk_4_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE3runERKSV_RKS11_RS13_RNS1_18task_group_contextE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 240 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.an = load <2 x i32>, ptr %i.d, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !168
  store i32 %i.aq, ptr %i.ao, align 64, !tbaa !168
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !169
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !169
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store ptr null, ptr %i.au, align 16, !tbaa !170
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store ptr %i.v, ptr %i.av, align 8, !tbaa !171
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr %i.w, ptr %i.aw, align 32, !tbaa !172
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !173
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !174
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  store ptr %i.af, ptr %i.ay, align 32, !tbaa !175
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !176
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 352 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.bb, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 376 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 400 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 472 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 504 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 528 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !46
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !168
  store i32 %i.bx, ptr %i.bv, align 32, !tbaa !168
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store ptr null, ptr %i.ca, align 16, !tbaa !170
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !171
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  store ptr %i.bc, ptr %i.cc, align 64, !tbaa !172
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !173
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 584
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !174
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  store ptr %i.bl, ptr %i.ce, align 64, !tbaa !175
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !176
  %i.cf = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !297
  store <2 x ptr> %i.cf, ptr %i.by, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 632 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !422
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.ci = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  store i32 0, ptr %i.ck, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 652
  store i8 5, ptr %i.cl, align 4, !tbaa !359
  %i.cm = shl nsw i64 %i.cj, 1
  %i.cn = and i64 %i.cm, 9223372036854775806
  store i64 %i.cn, ptr %i.ch, align 64, !tbaa !360
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.cp = load i64, ptr %4, align 8, !tbaa !361
  store i64 %i.cp, ptr %i.co, align 16, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !365
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !366
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1, ptr %i.cr, align 8, !tbaa !370
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.cs, align 8, !tbaa !371
  store ptr %5, ptr %i.cg, align 8, !tbaa !422
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread: ; preds = %.split10, %.split9, %.split, %bb.a, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(664) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 704, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !374  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !360
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !360
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !375
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !422
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !422
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !359
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !359
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_6MatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !422  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load i64, ptr %i.y, align 16, !tbaa !361
  %i.aa = load ptr, ptr %0, align 64, !tbaa !234
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !361
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !422  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i64, ptr %i.c, align 16, !tbaa !361
  %i.e = load ptr, ptr %0, align 64, !tbaa !234
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_6MatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d0::split", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !394
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !393
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !359   ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !394
  %i.m = load i64, ptr %i.c, align 8, !tbaa !393
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.o = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not.i8 = icmp eq i64 %i.o, 0
  br i1 %.not.i8, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.k, align 4, !tbaa !359   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.q, 0
  br i1 %.not4.i9, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.k, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
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
end_hunk_4
begin_hunk_5_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE3runERKSV_RKS11_RS13_RNS1_18task_group_contextE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 240 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.an = load <2 x i32>, ptr %i.d, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !168
  store i32 %i.aq, ptr %i.ao, align 64, !tbaa !168
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !169
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !169
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store ptr null, ptr %i.au, align 16, !tbaa !170
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store ptr %i.v, ptr %i.av, align 8, !tbaa !171
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr %i.w, ptr %i.aw, align 32, !tbaa !172
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !173
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !174
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  store ptr %i.af, ptr %i.ay, align 32, !tbaa !175
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !176
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 352 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.bb, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 376 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 400 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 472 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 504 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 528 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !46
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !168
  store i32 %i.bx, ptr %i.bv, align 32, !tbaa !168
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store ptr null, ptr %i.ca, align 16, !tbaa !170
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !171
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  store ptr %i.bc, ptr %i.cc, align 64, !tbaa !172
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !173
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 584
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !174
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  store ptr %i.bl, ptr %i.ce, align 64, !tbaa !175
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !176
  %i.cf = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !297
  store <2 x ptr> %i.cf, ptr %i.by, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 632 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !425
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.ci = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  store i32 0, ptr %i.ck, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 652
  store i8 5, ptr %i.cl, align 4, !tbaa !359
  %i.cm = shl nsw i64 %i.cj, 1
  %i.cn = and i64 %i.cm, 9223372036854775806
  store i64 %i.cn, ptr %i.ch, align 64, !tbaa !360
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.cp = load i64, ptr %4, align 8, !tbaa !361
  store i64 %i.cp, ptr %i.co, align 16, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !365
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !366
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1, ptr %i.cr, align 8, !tbaa !370
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.cs, align 8, !tbaa !371
  store ptr %5, ptr %i.cg, align 8, !tbaa !425
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread: ; preds = %.split10, %.split9, %.split, %bb.a, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(664) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 704, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !374  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !360
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !360
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !375
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !425
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !425
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !359
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !359
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !425  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load i64, ptr %i.y, align 16, !tbaa !361
  %i.aa = load ptr, ptr %0, align 64, !tbaa !234
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !361
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !425  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i64, ptr %i.c, align 16, !tbaa !361
  %i.e = load ptr, ptr %0, align 64, !tbaa !234
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d0::split", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !394
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !393
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !359   ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !394
  %i.m = load i64, ptr %i.c, align 8, !tbaa !393
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.o = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not.i8 = icmp eq i64 %i.o, 0
  br i1 %.not.i8, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.k, align 4, !tbaa !359   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.q, 0
  br i1 %.not4.i9, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.k, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
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
end_hunk_5
begin_hunk_6_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE3runERKSV_RKS11_RS13_RNS1_18task_group_contextE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 240 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.an = load <2 x i32>, ptr %i.d, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !224
  store i32 %i.aq, ptr %i.ao, align 64, !tbaa !224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !225
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !225
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store ptr null, ptr %i.au, align 16, !tbaa !226
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store ptr %i.v, ptr %i.av, align 8, !tbaa !227
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr %i.w, ptr %i.aw, align 32, !tbaa !228
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !229
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !230
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  store ptr %i.af, ptr %i.ay, align 32, !tbaa !231
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !232
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 352 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.bb, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 376 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 400 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 472 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 504 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 528 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !46
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !224
  store i32 %i.bx, ptr %i.bv, align 32, !tbaa !224
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store ptr null, ptr %i.ca, align 16, !tbaa !226
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !227
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  store ptr %i.bc, ptr %i.cc, align 64, !tbaa !228
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !229
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 584
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !230
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  store ptr %i.bl, ptr %i.ce, align 64, !tbaa !231
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !232
  %i.cf = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !297
  store <2 x ptr> %i.cf, ptr %i.by, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 632 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !448
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.ci = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  store i32 0, ptr %i.ck, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 652
  store i8 5, ptr %i.cl, align 4, !tbaa !359
  %i.cm = shl nsw i64 %i.cj, 1
  %i.cn = and i64 %i.cm, 9223372036854775806
  store i64 %i.cn, ptr %i.ch, align 64, !tbaa !360
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.cp = load i64, ptr %4, align 8, !tbaa !361
  store i64 %i.cp, ptr %i.co, align 16, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !365
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !366
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1, ptr %i.cr, align 8, !tbaa !370
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.cs, align 8, !tbaa !371
  store ptr %5, ptr %i.cg, align 8, !tbaa !448
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread: ; preds = %.split10, %.split9, %.split, %bb.a, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(664) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 704, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !374  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !360
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !360
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !375
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !448
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !448
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !359
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !359
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_15MatMulNormalizeEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !448  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load i64, ptr %i.y, align 16, !tbaa !361
  %i.aa = load ptr, ptr %0, align 64, !tbaa !234
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !361
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_15MatMulNormalizeEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !448  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i64, ptr %i.c, align 16, !tbaa !361
  %i.e = load ptr, ptr %0, align 64, !tbaa !234
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_15MatMulNormalizeEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d0::split", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !428
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !427
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !359   ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !428
  %i.m = load i64, ptr %i.c, align 8, !tbaa !427
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.o = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not.i8 = icmp eq i64 %i.o, 0
  br i1 %.not.i8, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.k, align 4, !tbaa !359   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.q, 0
  br i1 %.not4.i9, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.k, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_15MatMulNormalizeEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
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
end_hunk_6
begin_hunk_7_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE3runERKSV_RKS11_RS13_RNS1_18task_group_contextE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 240 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.an = load <2 x i32>, ptr %i.d, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !224
  store i32 %i.aq, ptr %i.ao, align 64, !tbaa !224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !225
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !225
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store ptr null, ptr %i.au, align 16, !tbaa !226
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store ptr %i.v, ptr %i.av, align 8, !tbaa !227
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr %i.w, ptr %i.aw, align 32, !tbaa !228
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !229
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !230
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  store ptr %i.af, ptr %i.ay, align 32, !tbaa !231
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !232
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 352 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.bb, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 376 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 400 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 472 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 504 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 528 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !46
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !224
  store i32 %i.bx, ptr %i.bv, align 32, !tbaa !224
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store ptr null, ptr %i.ca, align 16, !tbaa !226
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !227
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  store ptr %i.bc, ptr %i.cc, align 64, !tbaa !228
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !229
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 584
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !230
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  store ptr %i.bl, ptr %i.ce, align 64, !tbaa !231
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !232
  %i.cf = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !297
  store <2 x ptr> %i.cf, ptr %i.by, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 632 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !456
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.ci = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  store i32 0, ptr %i.ck, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 652
  store i8 5, ptr %i.cl, align 4, !tbaa !359
  %i.cm = shl nsw i64 %i.cj, 1
  %i.cn = and i64 %i.cm, 9223372036854775806
  store i64 %i.cn, ptr %i.ch, align 64, !tbaa !360
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.cp = load i64, ptr %4, align 8, !tbaa !361
  store i64 %i.cp, ptr %i.co, align 16, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !365
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !366
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1, ptr %i.cr, align 8, !tbaa !370
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.cs, align 8, !tbaa !371
  store ptr %5, ptr %i.cg, align 8, !tbaa !456
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread: ; preds = %.split10, %.split9, %.split, %bb.a, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(664) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 704, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !374  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !360
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !360
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !375
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !456
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !456
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !359
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !359
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_6MatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !456  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load i64, ptr %i.y, align 16, !tbaa !361
  %i.aa = load ptr, ptr %0, align 64, !tbaa !234
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !361
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_6MatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !456  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i64, ptr %i.c, align 16, !tbaa !361
  %i.e = load ptr, ptr %0, align 64, !tbaa !234
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_6MatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d0::split", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !428
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !427
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !359   ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !428
  %i.m = load i64, ptr %i.c, align 8, !tbaa !427
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.o = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not.i8 = icmp eq i64 %i.o, 0
  br i1 %.not.i8, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.k, align 4, !tbaa !359   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.q, 0
  br i1 %.not4.i9, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.k, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_6MatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
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
end_hunk_7
begin_hunk_8_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE3runERKSV_RKS11_RS13_RNS1_18task_group_contextE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 240 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 280 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.an = load <2 x i32>, ptr %i.d, align 8, !tbaa !46
  store <2 x i32> %i.an, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !224
  store i32 %i.aq, ptr %i.ao, align 64, !tbaa !224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !225
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !225
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store ptr null, ptr %i.au, align 16, !tbaa !226
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store ptr %i.v, ptr %i.av, align 8, !tbaa !227
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr %i.w, ptr %i.aw, align 32, !tbaa !228
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !229
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !230
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  store ptr %i.af, ptr %i.ay, align 32, !tbaa !231
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !232
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 352 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(280) %i.bb, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 376 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 400 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 472 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 504 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 528 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !46
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !224
  store i32 %i.bx, ptr %i.bv, align 32, !tbaa !224
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store ptr null, ptr %i.ca, align 16, !tbaa !226
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store ptr %i.bb, ptr %i.cb, align 8, !tbaa !227
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  store ptr %i.bc, ptr %i.cc, align 64, !tbaa !228
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !229
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 584
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !230
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  store ptr %i.bl, ptr %i.ce, align 64, !tbaa !231
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !232
  %i.cf = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !297
  store <2 x ptr> %i.cf, ptr %i.by, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 632 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !459
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.ci = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  store i32 0, ptr %i.ck, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 652
  store i8 5, ptr %i.cl, align 4, !tbaa !359
  %i.cm = shl nsw i64 %i.cj, 1
  %i.cn = and i64 %i.cm, 9223372036854775806
  store i64 %i.cn, ptr %i.ch, align 64, !tbaa !360
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.cp = load i64, ptr %4, align 8, !tbaa !361
  store i64 %i.cp, ptr %i.co, align 16, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !365
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !366
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1, ptr %i.cr, align 8, !tbaa !370
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.cs, align 8, !tbaa !371
  store ptr %5, ptr %i.cg, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit.thread: ; preds = %.split10, %.split9, %.split, %bb.a, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE5emptyEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d14taskD2Ev(ptr noundef nonnull align 64 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(664) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 704, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !374  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !360
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !360
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !375
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !459
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !459
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !359
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !359
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !459  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load i64, ptr %i.y, align 16, !tbaa !361
  %i.aa = load ptr, ptr %0, align 64, !tbaa !234
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !361
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINSB_21TreeValueIteratorBaseINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSG_INSB_8LeafNodeINSA_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSO_9ValueIterISO_St17_Rb_tree_iteratorISt4pairIKNSI_5CoordENSO_10NodeStructEEENSO_12ValueAllPredESK_EEEEEENSA_5tools8valxform15SharedOpApplierIS10_KNS12_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !459  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i64, ptr %i.c, align 16, !tbaa !361
  %i.e = load ptr, ptr %0, align 64, !tbaa !234
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(664) dereferenceable(664) %0) #21, !inline_history !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !361
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(664) %0, i64 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree13IteratorRangeINS9_21TreeValueIteratorBaseINS9_4TreeINS9_8RootNodeINS9_12InternalNodeINSE_INS9_8LeafNodeINS8_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSM_9ValueIterISM_St17_Rb_tree_iteratorISt4pairIKNSG_5CoordENSM_10NodeStructEEENSM_12ValueAllPredESI_EEEEEENS8_5tools8valxform15SharedOpApplierISY_KNS10_17HomogeneousMatMulEEEKNS1_16auto_partitionerEEESZ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d0::split", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !428
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !427
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !359   ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !428
  %i.m = load i64, ptr %i.c, align 8, !tbaa !427
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.o = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not.i8 = icmp eq i64 %i.o, 0
  br i1 %.not.i8, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.k, align 4, !tbaa !359   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.q, 0
  br i1 %.not4.i9, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.k, align 4, !tbaa !359
  store i64 0, ptr %0, align 8, !tbaa !360
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE10offer_workERNS0_2d05splitERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(664) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
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
end_hunk_8
