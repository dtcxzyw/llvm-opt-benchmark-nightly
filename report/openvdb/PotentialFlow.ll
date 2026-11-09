Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/PotentialFlow?download=true
inline.NumInlined: 97346
inline.NumDeleted: 30608
loop-unroll.NumCompletelyUnrolled: 355
loop-unroll.NumRuntimeUnrolled: 294
loop-unroll.NumUnrolled: 1398
begin_hunk_0_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_10UnitaryMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEEC2ERS1C_RKSK_hRNS1_22small_object_allocatorE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.e, align 8, !tbaa !895
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(72) %i.aa, ptr noundef nonnull align 64 dereferenceable(72) %i.ab, i64 72, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ac, ptr noundef nonnull align 8 dereferenceable(25) %i.ad, i64 25, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.ae, align 8, !tbaa !7105
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 16, !tbaa !1361
  %i.ai = lshr i64 %i.ah, 1                       ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 16, !tbaa !1361
  store i64 %i.ai, ptr %i.af, align 16, !tbaa !1361
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 2, ptr %i.aj, align 8, !tbaa !1359
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.am = load i8, ptr %i.al, align 4, !tbaa !1360
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !1362
  %i.ap = sub i8 %i.am, %3
  store i8 %i.ap, ptr %i.ak, align 4, !tbaa !1360
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_10UnitaryMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_E7processEb(ptr noundef nonnull align 8 dereferenceable(384) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 12 uses
  %3 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %4 = alloca %"class.openvdb::v13_0::tree::IteratorRange", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(272) %0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.t = load <2 x i32>, ptr %i.s, align 8, !tbaa !913
  store <2 x i32> %i.t, ptr %i.r, align 8, !tbaa !913
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = load i32, ptr %i.v, align 8, !tbaa !6996
  store i32 %i.w, ptr %i.u, align 8, !tbaa !6996
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !6997
  store ptr %i.z, ptr %i.x, align 8, !tbaa !6997
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr null, ptr %i.aa, align 8, !tbaa !6998
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %4, ptr %i.ab, align 8, !tbaa !6999
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !7000
  store ptr %i.c, ptr %i.g, align 8, !tbaa !7001
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 232
  store ptr %i.h, ptr %i.ad, align 8, !tbaa !7002
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr %i.j, ptr %i.ae, align 8, !tbaa !7003
  store ptr %i.l, ptr %i.p, align 8, !tbaa !7004
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i64 8, ptr %i.af, align 8, !tbaa !7041
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !7042
  %i.ah = call noundef i64 @_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(288) %4)
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !7042
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 1, ptr %i.ai, align 4, !tbaa !1344
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 1, ptr %i.ak, align 8, !tbaa !1345
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 4, ptr %i.al, align 1, !tbaa !908
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %2)
  invoke void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_10UnitaryMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEKNS1_16auto_partitionerEE3runERKSV_RKS1Q_RS1S_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.an = load atomic i8, ptr %i.am monotonic, align 1
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_10UnitaryMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_10UnitaryMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #32
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ar

_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_10UnitaryMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @_ZNK7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_10UnitaryMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_EclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(288) %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_10UnitaryMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_10UnitaryMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_ED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !895
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5970 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_10UnitaryMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %i.b, ptr %i.a, align 8, !tbaa !5971
  %i.f = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.c, !inline_history !5977 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_10UnitaryMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #32, !inline_history !5977
  unreachable

_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_10UnitaryMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_10UnitaryMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENKUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_clES1G_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7099
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7096, !nonnull !1253, !align !1582 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !6992
  %i.h = tail call { i64, i32 } @_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE8getCoordEj(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i32 noundef %i.g) ; 2 uses
  %.fca.0.extract1 = extractvalue { i64, i32 } %i.h, 0 ; 7 uses
  %.fca.1.extract2 = extractvalue { i64, i32 } %i.h, 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.i = add i64 %.fca.0.extract1, 1
  %.sroa.2.0.insert.shift.i.i.i = and i64 %.fca.0.extract1, -4294967296 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.i, 4294967295
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %6, align 8
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx.i.i, align 8
  %i.j = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %6) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.k = add i64 %.fca.0.extract1, 4294967295
  %.sroa.0.0.insert.ext.i10.i.i = and i64 %i.k, 4294967295
  %.sroa.0.0.insert.insert.i11.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i10.i.i, %.sroa.2.0.insert.shift.i.i.i
  store i64 %.sroa.0.0.insert.insert.i11.i.i, ptr %7, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.l = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %.sroa.2.0.insert.shift.i.i7.i = add i64 %.fca.0.extract1, 4294967296
  store i64 %.sroa.2.0.insert.shift.i.i7.i, ptr %4, align 8
  %.sroa.24.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx.i10.i, align 8
  %i.m = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.sroa.0.0.insert.insert.i11.i14.i = add i64 %.fca.0.extract1, -4294967296
  store i64 %.sroa.0.0.insert.insert.i11.i14.i, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.2.0..sroa_idx.i15.i, align 8
  %i.n = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = add nsw i32 %.fca.1.extract2, 1
  store i64 %.fca.0.extract1, ptr %2, align 8
  %.sroa.24.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.o, ptr %.sroa.24.0..sroa_idx.i16.i, align 8
  %i.p = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = add nsw i32 %.fca.1.extract2, -1
  store i64 %.fca.0.extract1, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx.i17.i, align 8
  %i.r = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.v = load <2 x double>, ptr %i.s, align 8, !tbaa !886, !noalias !19633
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !886, !noalias !19633
  %i.x = fmul <2 x double> %i.w, zeroinitializer
  %i.y = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> zeroinitializer, <2 x double> %i.x)
  %i.z = load <2 x double>, ptr %i.u, align 8, !tbaa !886, !noalias !19633
  %i.aa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> zeroinitializer, <2 x double> %i.y)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !886, !noalias !19633
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !886, !noalias !19633
  %i.af = fmul double %i.ae, 0.000000e+00
  %i.ag = call double @llvm.fmuladd.f64(double %i.ac, double 0.000000e+00, double %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !886, !noalias !19633
  %i.aj = call double @llvm.fmuladd.f64(double %i.ai, double 0.000000e+00, double %i.ag)
  %i.ak = fptosi double %i.aj to i32
  %i.al = fptosi <2 x double> %i.aa to <2 x i32>
  %i.am = load i32, ptr %i.f, align 8, !tbaa !6992
  switch i32 %i.am, label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1450 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 512
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !4563
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %i.as
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1291
  %i.ax = call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.au)
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ay
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.d:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1303
  %i.bd = call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ba)
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.be
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.e:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !4016
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i.sink.i.sink.i.i = phi ptr [ %i.at, %bb.b ], [ %i.az, %bb.c ], [ %i.bi, %bb.e ], [ %i.bf, %bb.d ] ; 2 uses
  store <2 x i32> %i.al, ptr %.sink.i.sink.i.sink.i.i, align 4
  %.sroa.4.0..sink.i.sink.i.sink.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i.sink.i.sink.i.i, i64 8
  store i32 %i.ak, ptr %.sroa.4.0..sink.i.sink.i.sink.i.i.sroa_idx, align 4
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit

_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_10UnitaryMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_EclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7042
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 252
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit
  %i.m = load i32, ptr %i.g, align 8, !tbaa !6992 ; 2 uses
  switch i32 %i.m, label %.split [
    i32 0, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit
    i32 1, label %.split5
    i32 2, label %.split4
  ]

.split5:                                          ; preds = %bb.b
  %i.n = load i32, ptr %i.b, align 8, !tbaa !1291
  %.not6 = icmp eq i32 %i.n, 4096
  br i1 %.not6, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

.split4:                                          ; preds = %bb.b
  %i.o = load i32, ptr %i.a, align 8, !tbaa !1303
  %.not = icmp eq i32 %i.o, 32768
  br i1 %.not, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

.split:                                           ; preds = %bb.b
  %i.p = icmp eq i32 %i.m, 3
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = icmp ne ptr %i.s, %i.r
  %i.u = select i1 %i.p, i1 %i.t, i1 false
  br i1 %i.u, label %bb.c, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit: ; preds = %bb.b
  %i.v = load i32, ptr %i.c, align 8, !tbaa !1450
  %.not7 = icmp eq i32 %i.v, 512
  br i1 %.not7, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %.split5, %.split4, %.split, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit
  tail call void @_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_10UnitaryMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENKUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_clES1G_(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(272) %1)
  %i.w = load i64, ptr %i.d, align 8, !tbaa !7042 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.w, 0
  br i1 %.not3.i.i, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.d, align 8, !tbaa !7042
  %i.y = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.critedge.backedge.i.i.i.i
  %i.z = load i32, ptr %i.g, align 8, !tbaa !6992 ; 2 uses
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !6991
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %.critedge.backedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !6996
  %i.ad = icmp sgt i32 %i.z, %i.ac
  br i1 %i.ad, label %.critedge.backedge.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit

.critedge.backedge.i.i.i.i:                       ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.ae = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit, !llvm.loop !847

_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit: ; preds = %bb.e, %.critedge.backedge.i.i.i.i, %bb.d
  %.pre = load i64, ptr %i.d, align 8, !tbaa !7042
  %i.af = icmp eq i64 %.pre, 0
  br i1 %i.af, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.b, !llvm.loop !19634

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread: ; preds = %bb.c, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit, %.split, %.split4, %.split5, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_10UnitaryMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEKNS1_16auto_partitionerEE3runERKSV_RKS1Q_RS1S_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %5 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7042
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load i32, ptr %i.d, align 8, !tbaa !6992 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_9AffineMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEEC2ERS1C_RKSK_hRNS1_22small_object_allocatorE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.e, align 8, !tbaa !895
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(72) %i.aa, ptr noundef nonnull align 64 dereferenceable(72) %i.ab, i64 72, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ac, ptr noundef nonnull align 8 dereferenceable(25) %i.ad, i64 25, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.ae, align 8, !tbaa !7119
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 16, !tbaa !1361
  %i.ai = lshr i64 %i.ah, 1                       ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 16, !tbaa !1361
  store i64 %i.ai, ptr %i.af, align 16, !tbaa !1361
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 2, ptr %i.aj, align 8, !tbaa !1359
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.am = load i8, ptr %i.al, align 4, !tbaa !1360
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !1362
  %i.ap = sub i8 %i.am, %3
  store i8 %i.ap, ptr %i.ak, align 4, !tbaa !1360
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_9AffineMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_E7processEb(ptr noundef nonnull align 8 dereferenceable(384) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 12 uses
  %3 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %4 = alloca %"class.openvdb::v13_0::tree::IteratorRange", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(272) %0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.t = load <2 x i32>, ptr %i.s, align 8, !tbaa !913
  store <2 x i32> %i.t, ptr %i.r, align 8, !tbaa !913
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = load i32, ptr %i.v, align 8, !tbaa !6996
  store i32 %i.w, ptr %i.u, align 8, !tbaa !6996
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !6997
  store ptr %i.z, ptr %i.x, align 8, !tbaa !6997
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr null, ptr %i.aa, align 8, !tbaa !6998
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %4, ptr %i.ab, align 8, !tbaa !6999
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !7000
  store ptr %i.c, ptr %i.g, align 8, !tbaa !7001
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 232
  store ptr %i.h, ptr %i.ad, align 8, !tbaa !7002
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr %i.j, ptr %i.ae, align 8, !tbaa !7003
  store ptr %i.l, ptr %i.p, align 8, !tbaa !7004
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i64 8, ptr %i.af, align 8, !tbaa !7041
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !7042
  %i.ah = call noundef i64 @_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(288) %4)
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !7042
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 1, ptr %i.ai, align 4, !tbaa !1344
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 1, ptr %i.ak, align 8, !tbaa !1345
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 4, ptr %i.al, align 1, !tbaa !908
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %2)
  invoke void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_9AffineMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEKNS1_16auto_partitionerEE3runERKSV_RKS1Q_RS1S_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.an = load atomic i8, ptr %i.am monotonic, align 1
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_9AffineMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_9AffineMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #32
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ar

_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_9AffineMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @_ZNK7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_9AffineMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_EclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(288) %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_9AffineMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_9AffineMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_ED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !895
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5970 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_9AffineMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %i.b, ptr %i.a, align 8, !tbaa !5971
  %i.f = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.c, !inline_history !5977 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_9AffineMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #32, !inline_history !5977
  unreachable

_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_9AffineMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_9AffineMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENKUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_clES1G_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7112, !nonnull !1253, !align !1582 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !6992
  %i.h = tail call { i64, i32 } @_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE8getCoordEj(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i32 noundef %i.g) ; 2 uses
  %.fca.0.extract1 = extractvalue { i64, i32 } %i.h, 0 ; 7 uses
  %.fca.1.extract2 = extractvalue { i64, i32 } %i.h, 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.i = add i64 %.fca.0.extract1, 1
  %.sroa.2.0.insert.shift.i.i.i = and i64 %.fca.0.extract1, -4294967296 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.i, 4294967295
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %6, align 8
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx.i.i, align 8
  %i.j = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %6) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.k = add i64 %.fca.0.extract1, 4294967295
  %.sroa.0.0.insert.ext.i10.i.i = and i64 %i.k, 4294967295
  %.sroa.0.0.insert.insert.i11.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i10.i.i, %.sroa.2.0.insert.shift.i.i.i
  store i64 %.sroa.0.0.insert.insert.i11.i.i, ptr %7, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.l = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %.sroa.2.0.insert.shift.i.i7.i = add i64 %.fca.0.extract1, 4294967296
  store i64 %.sroa.2.0.insert.shift.i.i7.i, ptr %4, align 8
  %.sroa.24.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx.i10.i, align 8
  %i.m = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.sroa.0.0.insert.insert.i11.i14.i = add i64 %.fca.0.extract1, -4294967296
  store i64 %.sroa.0.0.insert.insert.i11.i14.i, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.2.0..sroa_idx.i15.i, align 8
  %i.n = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = add nsw i32 %.fca.1.extract2, 1
  store i64 %.fca.0.extract1, ptr %2, align 8
  %.sroa.24.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.o, ptr %.sroa.24.0..sroa_idx.i16.i, align 8
  %i.p = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = add nsw i32 %.fca.1.extract2, -1
  store i64 %.fca.0.extract1, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx.i17.i, align 8
  %i.r = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.v = load <2 x double>, ptr %i.s, align 8, !tbaa !886, !noalias !19727
  %i.w = load <2 x double>, ptr %i.t, align 8, !tbaa !886, !noalias !19727
  %i.x = fmul <2 x double> %i.w, zeroinitializer
  %i.y = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> zeroinitializer, <2 x double> %i.x)
  %i.z = load <2 x double>, ptr %i.u, align 8, !tbaa !886, !noalias !19727
  %i.aa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> zeroinitializer, <2 x double> %i.y)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !886, !noalias !19727
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !886, !noalias !19727
  %i.af = fmul double %i.ae, 0.000000e+00
  %i.ag = call double @llvm.fmuladd.f64(double %i.ac, double 0.000000e+00, double %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !886, !noalias !19727
  %i.aj = call double @llvm.fmuladd.f64(double %i.ai, double 0.000000e+00, double %i.ag)
  %i.ak = fptosi double %i.aj to i32
  %i.al = fptosi <2 x double> %i.aa to <2 x i32>
  %i.am = load i32, ptr %i.f, align 8, !tbaa !6992
  switch i32 %i.am, label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1450 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 512
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !4563
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %i.as
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1291
  %i.ax = call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.au)
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ay
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.d:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1303
  %i.bd = call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ba)
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.be
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.e:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !4016
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i.sink.i.sink.i.i = phi ptr [ %i.at, %bb.b ], [ %i.az, %bb.c ], [ %i.bi, %bb.e ], [ %i.bf, %bb.d ] ; 2 uses
  store <2 x i32> %i.al, ptr %.sink.i.sink.i.sink.i.i, align 4
  %.sroa.4.0..sink.i.sink.i.sink.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i.sink.i.sink.i.i, i64 8
  store i32 %i.ak, ptr %.sroa.4.0..sink.i.sink.i.sink.i.i.sroa_idx, align 4
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit

_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_9AffineMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_EclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7042
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 252
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit
  %i.m = load i32, ptr %i.g, align 8, !tbaa !6992 ; 2 uses
  switch i32 %i.m, label %.split [
    i32 0, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit
    i32 1, label %.split5
    i32 2, label %.split4
  ]

.split5:                                          ; preds = %bb.b
  %i.n = load i32, ptr %i.b, align 8, !tbaa !1291
  %.not6 = icmp eq i32 %i.n, 4096
  br i1 %.not6, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

.split4:                                          ; preds = %bb.b
  %i.o = load i32, ptr %i.a, align 8, !tbaa !1303
  %.not = icmp eq i32 %i.o, 32768
  br i1 %.not, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

.split:                                           ; preds = %bb.b
  %i.p = icmp eq i32 %i.m, 3
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = icmp ne ptr %i.s, %i.r
  %i.u = select i1 %i.p, i1 %i.t, i1 false
  br i1 %i.u, label %bb.c, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit: ; preds = %bb.b
  %i.v = load i32, ptr %i.c, align 8, !tbaa !1450
  %.not7 = icmp eq i32 %i.v, 512
  br i1 %.not7, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %.split5, %.split4, %.split, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit
  tail call void @_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_9AffineMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENKUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_clES1G_(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(272) %1)
  %i.w = load i64, ptr %i.d, align 8, !tbaa !7042 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.w, 0
  br i1 %.not3.i.i, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.d, align 8, !tbaa !7042
  %i.y = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.critedge.backedge.i.i.i.i
  %i.z = load i32, ptr %i.g, align 8, !tbaa !6992 ; 2 uses
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !6991
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %.critedge.backedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !6996
  %i.ad = icmp sgt i32 %i.z, %i.ac
  br i1 %i.ad, label %.critedge.backedge.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit

.critedge.backedge.i.i.i.i:                       ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.ae = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit, !llvm.loop !847

_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit: ; preds = %bb.e, %.critedge.backedge.i.i.i.i, %bb.d
  %.pre = load i64, ptr %i.d, align 8, !tbaa !7042
  %i.af = icmp eq i64 %.pre, 0
  br i1 %i.af, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.b, !llvm.loop !19728

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread: ; preds = %bb.c, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit, %.split, %.split4, %.split5, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_9AffineMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEKNS1_16auto_partitionerEE3runERKSV_RKS1Q_RS1S_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %5 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7042
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load i32, ptr %i.d, align 8, !tbaa !6992 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_14TranslationMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEEC2ERS1C_RKSK_hRNS1_22small_object_allocatorE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1321
  store i64 %i.z, ptr %i.x, align 8, !tbaa !1321
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.e, align 8, !tbaa !895
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(72) %i.aa, ptr noundef nonnull align 64 dereferenceable(72) %i.ab, i64 72, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ac, ptr noundef nonnull align 8 dereferenceable(25) %i.ad, i64 25, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.ae, align 8, !tbaa !7132
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 16, !tbaa !1361
  %i.ai = lshr i64 %i.ah, 1                       ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 16, !tbaa !1361
  store i64 %i.ai, ptr %i.af, align 16, !tbaa !1361
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 2, ptr %i.aj, align 8, !tbaa !1359
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.am = load i8, ptr %i.al, align 4, !tbaa !1360
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !1362
  %i.ap = sub i8 %i.am, %3
  store i8 %i.ap, ptr %i.ak, align 4, !tbaa !1360
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_14TranslationMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_E7processEb(ptr noundef nonnull align 8 dereferenceable(384) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 12 uses
  %3 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %4 = alloca %"class.openvdb::v13_0::tree::IteratorRange", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(272) %0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.t = load <2 x i32>, ptr %i.s, align 8, !tbaa !913
  store <2 x i32> %i.t, ptr %i.r, align 8, !tbaa !913
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = load i32, ptr %i.v, align 8, !tbaa !6996
  store i32 %i.w, ptr %i.u, align 8, !tbaa !6996
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !6997
  store ptr %i.z, ptr %i.x, align 8, !tbaa !6997
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr null, ptr %i.aa, align 8, !tbaa !6998
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %4, ptr %i.ab, align 8, !tbaa !6999
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !7000
  store ptr %i.c, ptr %i.g, align 8, !tbaa !7001
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 232
  store ptr %i.h, ptr %i.ad, align 8, !tbaa !7002
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr %i.j, ptr %i.ae, align 8, !tbaa !7003
  store ptr %i.l, ptr %i.p, align 8, !tbaa !7004
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i64 8, ptr %i.af, align 8, !tbaa !7041
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !7042
  %i.ah = call noundef i64 @_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(288) %4)
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !7042
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 1, ptr %i.ai, align 4, !tbaa !1344
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 1, ptr %i.ak, align 8, !tbaa !1345
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 4, ptr %i.al, align 1, !tbaa !908
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %2)
  invoke void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_14TranslationMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEKNS1_16auto_partitionerEE3runERKSV_RKS1Q_RS1S_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.an = load atomic i8, ptr %i.am monotonic, align 1
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_14TranslationMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_14TranslationMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #32
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ar

_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_14TranslationMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @_ZNK7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_14TranslationMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_EclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(288) %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_14TranslationMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_14TranslationMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_ED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !895
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5970 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_14TranslationMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %i.b, ptr %i.a, align 8, !tbaa !5971
  %i.f = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.c, !inline_history !5977 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_14TranslationMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #32, !inline_history !5977
  unreachable

_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_14TranslationMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_14TranslationMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENKUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_clES1G_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !6992
  %i.e = tail call { i64, i32 } @_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE8getCoordEj(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i32 noundef %i.d) ; 2 uses
  %.fca.0.extract1 = extractvalue { i64, i32 } %i.e, 0 ; 7 uses
  %.fca.1.extract2 = extractvalue { i64, i32 } %i.e, 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.f = add i64 %.fca.0.extract1, 1
  %.sroa.2.0.insert.shift.i.i.i = and i64 %.fca.0.extract1, -4294967296 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.f, 4294967295
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %6, align 8
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx.i.i, align 8
  %i.g = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %6) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.h = add i64 %.fca.0.extract1, 4294967295
  %.sroa.0.0.insert.ext.i10.i.i = and i64 %i.h, 4294967295
  %.sroa.0.0.insert.insert.i11.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i10.i.i, %.sroa.2.0.insert.shift.i.i.i
  store i64 %.sroa.0.0.insert.insert.i11.i.i, ptr %7, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.i = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %.sroa.2.0.insert.shift.i.i7.i = add i64 %.fca.0.extract1, 4294967296
  store i64 %.sroa.2.0.insert.shift.i.i7.i, ptr %4, align 8
  %.sroa.24.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx.i10.i, align 8
  %i.j = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.sroa.0.0.insert.insert.i11.i14.i = add i64 %.fca.0.extract1, -4294967296
  store i64 %.sroa.0.0.insert.insert.i11.i14.i, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.2.0..sroa_idx.i15.i, align 8
  %i.k = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.l = add nsw i32 %.fca.1.extract2, 1
  store i64 %.fca.0.extract1, ptr %2, align 8
  %.sroa.24.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.l, ptr %.sroa.24.0..sroa_idx.i16.i, align 8
  %i.m = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.n = add nsw i32 %.fca.1.extract2, -1
  store i64 %.fca.0.extract1, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %.sroa.2.0..sroa_idx.i17.i, align 8
  %i.o = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.p = load i32, ptr %i.c, align 8, !tbaa !6992
  switch i32 %i.p, label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1450 ; 2 uses
  %i.s = icmp ult i32 %i.r, 512
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4563
  %i.v = zext nneg i32 %i.r to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.v
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1291
  %i.aa = call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.x)
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1303
  %i.ag = call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ad)
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.e:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4016
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i.sink.i.sink.i.i = phi ptr [ %i.w, %bb.b ], [ %i.ac, %bb.c ], [ %i.al, %bb.e ], [ %i.ai, %bb.d ] ; 2 uses
  store i64 0, ptr %.sink.i.sink.i.sink.i.i, align 4
  %.sroa.4.0..sink.i.sink.i.sink.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i.sink.i.sink.i.i, i64 8
  store i32 0, ptr %.sroa.4.0..sink.i.sink.i.sink.i.i.sroa_idx, align 4
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit

_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_14TranslationMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_EclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7042
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 252
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit
  %i.m = load i32, ptr %i.g, align 8, !tbaa !6992 ; 2 uses
  switch i32 %i.m, label %.split [
    i32 0, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit
    i32 1, label %.split5
    i32 2, label %.split4
  ]

.split5:                                          ; preds = %bb.b
  %i.n = load i32, ptr %i.b, align 8, !tbaa !1291
  %.not6 = icmp eq i32 %i.n, 4096
  br i1 %.not6, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

.split4:                                          ; preds = %bb.b
  %i.o = load i32, ptr %i.a, align 8, !tbaa !1303
  %.not = icmp eq i32 %i.o, 32768
  br i1 %.not, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

.split:                                           ; preds = %bb.b
  %i.p = icmp eq i32 %i.m, 3
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = icmp ne ptr %i.s, %i.r
  %i.u = select i1 %i.p, i1 %i.t, i1 false
  br i1 %i.u, label %bb.c, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit: ; preds = %bb.b
  %i.v = load i32, ptr %i.c, align 8, !tbaa !1450
  %.not7 = icmp eq i32 %i.v, 512
  br i1 %.not7, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %.split5, %.split4, %.split, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit
  tail call void @_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_14TranslationMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENKUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_clES1G_(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(272) %1)
  %i.w = load i64, ptr %i.d, align 8, !tbaa !7042 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.w, 0
  br i1 %.not3.i.i, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.d, align 8, !tbaa !7042
  %i.y = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.critedge.backedge.i.i.i.i
  %i.z = load i32, ptr %i.g, align 8, !tbaa !6992 ; 2 uses
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !6991
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %.critedge.backedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !6996
  %i.ad = icmp sgt i32 %i.z, %i.ac
  br i1 %i.ad, label %.critedge.backedge.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit

.critedge.backedge.i.i.i.i:                       ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.ae = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit, !llvm.loop !847

_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit: ; preds = %bb.e, %.critedge.backedge.i.i.i.i, %bb.d
  %.pre = load i64, ptr %i.d, align 8, !tbaa !7042
  %i.af = icmp eq i64 %.pre, 0
  br i1 %i.af, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.b, !llvm.loop !19803

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread: ; preds = %bb.c, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit, %.split, %.split4, %.split5, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_14TranslationMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEKNS1_16auto_partitionerEE3runERKSV_RKS1Q_RS1S_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %5 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7042
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load i32, ptr %i.d, align 8, !tbaa !6992 ; 2 uses
  switch i32 %i.e, label %.split9 [
    i32 0, label %.split
    i32 1, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE5emptyEv.exit
    i32 2, label %.split10
  ]

.split:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1450
  %.not12 = icmp eq i32 %i.g, 512
  br i1 %.not12, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE5emptyEv.exit.thread, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit

.split10:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1303
  %.not = icmp eq i32 %i.i, 32768
  br i1 %.not, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE5emptyEv.exit.thread, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit

.split9:                                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools6gridop12GridOperatorINS4_4GridINS7_INS8_INS9_INS9_INSA_IiLj3EEELj4EEELj5EEEEEEEEENSO_INS7_INS8_INS9_INS9_INSA_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSO_ISI_EENSB_19NonlinearFrustumMapENSB_8GradientIS13_LNSB_7DSchemeE1EEENS4_4util15NullInterrupterEEEKNS1_16auto_partitionerEEC2ERS1C_RKSK_hRNS1_22small_object_allocatorE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ac, ptr noundef nonnull align 8 dereferenceable(25) %i.ad, i64 25, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.ae, align 8, !tbaa !7159
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 16, !tbaa !1361
  %i.ai = lshr i64 %i.ah, 1                       ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 16, !tbaa !1361
  store i64 %i.ai, ptr %i.af, align 16, !tbaa !1361
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 2, ptr %i.aj, align 8, !tbaa !1359
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.am = load i8, ptr %i.al, align 4, !tbaa !1360
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !1362
  %i.ap = sub i8 %i.am, %3
  store i8 %i.ap, ptr %i.ak, align 4, !tbaa !1360
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_19NonlinearFrustumMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_E7processEb(ptr noundef nonnull align 8 dereferenceable(384) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 12 uses
  %3 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %4 = alloca %"class.openvdb::v13_0::tree::IteratorRange", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(272) %0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.t = load <2 x i32>, ptr %i.s, align 8, !tbaa !913
  store <2 x i32> %i.t, ptr %i.r, align 8, !tbaa !913
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = load i32, ptr %i.v, align 8, !tbaa !6996
  store i32 %i.w, ptr %i.u, align 8, !tbaa !6996
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !6997
  store ptr %i.z, ptr %i.x, align 8, !tbaa !6997
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr null, ptr %i.aa, align 8, !tbaa !6998
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %4, ptr %i.ab, align 8, !tbaa !6999
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !7000
  store ptr %i.c, ptr %i.g, align 8, !tbaa !7001
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 232
  store ptr %i.h, ptr %i.ad, align 8, !tbaa !7002
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr %i.j, ptr %i.ae, align 8, !tbaa !7003
  store ptr %i.l, ptr %i.p, align 8, !tbaa !7004
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i64 8, ptr %i.af, align 8, !tbaa !7041
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !7042
  %i.ah = call noundef i64 @_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(288) %4)
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !7042
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 1, ptr %i.ai, align 4, !tbaa !1344
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 1, ptr %i.ak, align 8, !tbaa !1345
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 4, ptr %i.al, align 1, !tbaa !908
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %2)
  invoke void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_19NonlinearFrustumMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEKNS1_16auto_partitionerEE3runERKSV_RKS1Q_RS1S_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.an = load atomic i8, ptr %i.am monotonic, align 1
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_19NonlinearFrustumMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_19NonlinearFrustumMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #32
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ar

_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_19NonlinearFrustumMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @_ZNK7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_19NonlinearFrustumMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_EclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(288) %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3tbb6detail2d112parallel_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_19NonlinearFrustumMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEEEvRKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_19NonlinearFrustumMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_ED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !895
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5970 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_19NonlinearFrustumMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %i.b, ptr %i.a, align 8, !tbaa !5971
  %i.f = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.c, !inline_history !5977 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_19NonlinearFrustumMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #32, !inline_history !5977
  unreachable

_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_19NonlinearFrustumMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_D2Ev.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_19NonlinearFrustumMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENKUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_clES1G_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %10 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7142
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7139, !nonnull !1253, !align !1582
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !6992
  %i.h = tail call { i64, i32 } @_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE8getCoordEj(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i32 noundef %i.g) ; 2 uses
  %.fca.0.extract1 = extractvalue { i64, i32 } %i.h, 0 ; 8 uses
  %.fca.1.extract2 = extractvalue { i64, i32 } %i.h, 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.i = add i64 %.fca.0.extract1, 1
  %.sroa.2.0.insert.shift.i.i.i = and i64 %.fca.0.extract1, -4294967296 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.i, 4294967295
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %6, align 8
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx.i.i, align 8
  %i.j = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %6) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.k = add i64 %.fca.0.extract1, 4294967295
  %.sroa.0.0.insert.ext.i10.i.i = and i64 %i.k, 4294967295
  %.sroa.0.0.insert.insert.i11.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i10.i.i, %.sroa.2.0.insert.shift.i.i.i
  store i64 %.sroa.0.0.insert.insert.i11.i.i, ptr %7, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.l = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %.sroa.2.0.insert.shift.i.i7.i = add i64 %.fca.0.extract1, 4294967296
  store i64 %.sroa.2.0.insert.shift.i.i7.i, ptr %4, align 8
  %.sroa.24.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx.i10.i, align 8
  %i.m = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.sroa.0.0.insert.insert.i11.i14.i = add i64 %.fca.0.extract1, -4294967296
  store i64 %.sroa.0.0.insert.insert.i11.i14.i, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.2.0..sroa_idx.i15.i, align 8
  %i.n = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = add nsw i32 %.fca.1.extract2, 1
  store i64 %.fca.0.extract1, ptr %2, align 8
  %.sroa.24.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.o, ptr %.sroa.24.0..sroa_idx.i16.i, align 8
  %i.p = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = add nsw i32 %.fca.1.extract2, -1
  store i64 %.fca.0.extract1, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx.i17.i, align 8
  %i.r = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.s = sitofp i32 %.fca.1.extract2 to double
  %i.t = bitcast i64 %.fca.0.extract1 to <2 x i32>
  %i.u = sitofp <2 x i32> %i.t to <2 x double>
  store <2 x double> %i.u, ptr %10, align 16, !tbaa !886, !alias.scope !20022
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.s, ptr %i.v, align 16, !tbaa !886, !alias.scope !20022
  call void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyIJTERKNS1_4Vec3IdEES6_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %9, ptr noundef nonnull align 8 dereferenceable(520) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10)
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.x = load double, ptr %i.w, align 16, !tbaa !886
  %i.y = fptosi double %i.x to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.z = load <2 x double>, ptr %9, align 16, !tbaa !886
  %i.aa = fptosi <2 x double> %i.z to <2 x i32>
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !6992
  switch i32 %i.ab, label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1450 ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 512
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !4563
  %i.ah = zext nneg i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %i.ah
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1291
  %i.am = call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.aj)
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.d:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1303
  %i.as = call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ap)
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.e:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4016
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i.sink.i.sink.i.i = phi ptr [ %i.ai, %bb.b ], [ %i.ao, %bb.c ], [ %i.ax, %bb.e ], [ %i.au, %bb.d ] ; 2 uses
  store <2 x i32> %i.aa, ptr %.sink.i.sink.i.sink.i.i, align 4
  %.sroa.4.0..sink.i.sink.i.sink.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i.sink.i.sink.i.i, i64 8
  store i32 %i.y, ptr %.sroa.4.0..sink.i.sink.i.sink.i.i.sroa_idx, align 4
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit

_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE8setValueERKS9_.exit: ; preds = %bb.a, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools8valxform17CopyableOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_11ValueOnPredESC_EEEEZNS1_6gridop12GridOperatorINS0_4GridINS6_INS7_INS8_INS8_INS9_IiLj3EEELj4EEELj5EEEEEEEEENSV_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENSV_ISH_EENSA_19NonlinearFrustumMapENSA_8GradientIS1A_LNSA_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbEUlRKSS_E_EclERNS4_13IteratorRangeISS_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7042
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 252
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit
  %i.m = load i32, ptr %i.g, align 8, !tbaa !6992 ; 2 uses
  switch i32 %i.m, label %.split [
    i32 0, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit
    i32 1, label %.split5
    i32 2, label %.split4
  ]

.split5:                                          ; preds = %bb.b
  %i.n = load i32, ptr %i.b, align 8, !tbaa !1291
  %.not6 = icmp eq i32 %i.n, 4096
  br i1 %.not6, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

.split4:                                          ; preds = %bb.b
  %i.o = load i32, ptr %i.a, align 8, !tbaa !1303
  %.not = icmp eq i32 %i.o, 32768
  br i1 %.not, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

.split:                                           ; preds = %bb.b
  %i.p = icmp eq i32 %i.m, 3
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = icmp ne ptr %i.s, %i.r
  %i.u = select i1 %i.p, i1 %i.t, i1 false
  br i1 %i.u, label %bb.c, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit: ; preds = %bb.b
  %i.v = load i32, ptr %i.c, align 8, !tbaa !1450
  %.not7 = icmp eq i32 %i.v, 512
  br i1 %.not7, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %.split5, %.split4, %.split, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit
  tail call void @_ZZN7openvdb5v13_05tools6gridop12GridOperatorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_INS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEENSN_19NonlinearFrustumMapENSN_8GradientISW_LNSN_7DSchemeE1EEENS0_4util15NullInterrupterEE7processEbENKUlRKNS5_21TreeValueIteratorBaseISU_NST_9ValueIterIST_St17_Rb_tree_iteratorISt4pairIKNSN_5CoordENST_10NodeStructEEENST_11ValueOnPredESP_EEEEE_clES1G_(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(272) %1)
  %i.w = load i64, ptr %i.d, align 8, !tbaa !7042 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.w, 0
  br i1 %.not3.i.i, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.d, align 8, !tbaa !7042
  %i.y = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.critedge.backedge.i.i.i.i
  %i.z = load i32, ptr %i.g, align 8, !tbaa !6992 ; 2 uses
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !6991
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %.critedge.backedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !6996
  %i.ad = icmp sgt i32 %i.z, %i.ac
  br i1 %i.ad, label %.critedge.backedge.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit

.critedge.backedge.i.i.i.i:                       ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.ae = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_11ValueOnPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit, !llvm.loop !847

_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit: ; preds = %bb.e, %.critedge.backedge.i.i.i.i, %bb.d
  %.pre = load i64, ptr %i.d, align 8, !tbaa !7042
  %i.af = icmp eq i64 %.pre, 0
  br i1 %i.af, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread, label %bb.b, !llvm.loop !20023

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit.thread: ; preds = %bb.c, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEcvbEv.exit, %.split, %.split4, %.split5, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEEppEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_11ValueOnPredESE_EEEEEENS4_5tools8valxform17CopyableOpApplierISU_ZNSW_6gridop12GridOperatorINS4_4GridINS8_INS9_INSA_INSA_INSB_IiLj3EEELj4EEELj5EEEEEEEEENS11_INS8_INS9_INSA_INSA_INSB_INS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEEENS11_ISJ_EENSC_19NonlinearFrustumMapENSC_8GradientIS1G_LNSC_7DSchemeE1EEENS4_4util15NullInterrupterEE7processEbEUlRKSU_E_EEKNS1_16auto_partitionerEE3runERKSV_RKS1Q_RS1S_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %5 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7042
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_11ValueOnPredESA_EEEEE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load i32, ptr %i.d, align 8, !tbaa !6992 ; 2 uses
  switch i32 %i.e, label %.split9 [
    i32 0, label %.split
end_hunk_3
