inline.NumInlined: 1754
inline.NumDeleted: 606
begin_hunk_0_@_ZNK16OpenColorIO_v2_59CDLParser4Impl15validateParsingEv:bb.a
  unreachable

_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EE2atEm.exit: ; preds = %bb.r
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.0842 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !37 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.be, align 8, !tbaa !92
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_59CDLParser16getCDLTransformsERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_16CDLTransformImplEESt4lessIS7_ESaISt4pairIKS7_SA_EEERSt6vectorISA_SaISA_EERNS_18FormatMetadataImplE:bb.a
_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EE2atEm.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EE2atEm.exit.lr.ph, %_ZNSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEaSERKS2_.exit
  %i.o = phi ptr [ %i.g, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EE2atEm.exit.lr.ph ], [ %i.cw, %_ZNSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEaSERKS2_.exit ]
  %.02441 = phi i64 [ 0, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EE2atEm.exit.lr.ph ], [ %i.cu, %_ZNSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEaSERKS2_.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.02441 ; 6 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !49   ; 5 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !314
  %.not.i = icmp eq ptr %i.q, %i.r
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_59CDLParser15getCDLTransformERSt10shared_ptrINS_16CDLTransformImplEE:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !310
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183
  %i.h = icmp eq ptr %i.e, %i.g
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_59CDLParser15getCDLTransformERSt10shared_ptrINS_16CDLTransformImplEE:bb.a
  resume { ptr, i32 } %i.j

_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EE2atEm.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !315
  store ptr %i.k, ptr %1, align 8, !tbaa !315
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_:bb.a
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  br label %bb.n

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread
  %i.bb = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i10) #31 ; 2 uses
  %.not.i.i.i30 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i30, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_:bb.a
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36, %bb.m, %bb.j, %bb.i, %bb.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %spec.select, %bb.h ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select74, %bb.l ], [ %i.az, %bb.i ], [ %i.aj, %bb.f ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bv, %bb.m ], [ null, %bb.j ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %spec.select73, %bb.h ], [ %i.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select75, %bb.l ], [ %i.ba, %bb.i ], [ %i.aj, %bb.f ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bw, %bb.m ], [ %i.bf, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
end_hunk_5
