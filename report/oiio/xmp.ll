inline.NumInlined: 4181
inline.NumDeleted: 1184
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_112_GLOBAL__N_19XMPtagMapC2EPKNS1_6XMPtagE:bb.a
  store i64 %i.o, ptr %i.c, align 8, !tbaa !64
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc10 unwind label %bb.ag  ; 2 uses

.noexc10:                                         ; preds = %.noexc.i
  store ptr %i.q, ptr %1, align 8, !tbaa !83
  %i.r = load i64, ptr %i.c, align 8, !tbaa !64
  store i64 %i.r, ptr %i.i, align 8, !tbaa !74
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc10, %bb.d
  %i.s = phi ptr [ %i.q, %.noexc10 ], [ %i.i, %bb.d ] ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !74
  store i8 %i.t, ptr %i.s, align 1, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.n, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.u = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  store i64 %i.u, ptr %i.j, align 8, !tbaa !72
  %i.v = load ptr, ptr %1, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  invoke void @_ZN11OpenImageIO4v3_17Strutil8to_lowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %bb.g
  %.val39.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !83
  %.val40.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !72
  %i.x = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %.val39.i.i.i.i, i64 noundef %.val40.i.i.i.i, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit.i.i.i.i unwind label %bb.i ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #28
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit.i.i.i.i: ; preds = %bb.h
  %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val41.i.i.i.i = load i64, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, align 8, !tbaa !371 ; 4 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 32), align 8, !tbaa !373 ; 4 uses
  %.017.i.i.i.i = and i64 %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val41.i.i.i.i, %i.x ; 4 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.017.i.i.i.i ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %.val4318.i.i.i.i = load i16, ptr %i.ac, align 4, !tbaa !380
  %.not19.i.i.i.i = icmp slt i16 %.val4318.i.i.i.i, 0
  br i1 %.not19.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit.i.i.i.i
  %.val46.i.i.i.i = load ptr, ptr %1, align 8     ; 3 uses
  %.val47.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !72
  %.val47.i.fr.i.i.i = freeze i64 %.val47.i.i.i.i ; 3 uses
  %i.ad = icmp eq i64 %.val47.i.fr.i.i.i, 0
  br i1 %i.ad, label %.lr.ph.i.split.us.i.i.i, label %.lr.ph.i.split.i.i.i

.lr.ph.i.split.us.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.us.i.i.i
  %i.ae = phi ptr [ %i.aj, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.us.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i ] ; 2 uses
  %.021.i.us.i.i.i = phi i64 [ %.0.i.us.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.us.i.i.i ], [ %.017.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.03420.i.us.i.i.i = phi i16 [ %i.ai, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.us.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %.val45.i.us.i.i.i = load i64, ptr %i.af, align 8, !tbaa !72
  %i.ag = icmp eq i64 %.val45.i.us.i.i.i, 0
  br i1 %i.ag, label %.loopexit1, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.us.i.i.i

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.us.i.i.i: ; preds = %.lr.ph.i.split.us.i.i.i
  %i.ah = add i64 %.021.i.us.i.i.i, 1
  %i.ai = add i16 %.03420.i.us.i.i.i, 1           ; 3 uses
  %.0.i.us.i.i.i = and i64 %i.ah, %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val41.i.i.i.i ; 3 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.0.i.us.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val43.i.us.i.i.i = load i16, ptr %i.ak, align 4, !tbaa !380
  %.not.i.us.i.i.i = icmp sgt i16 %i.ai, %.val43.i.us.i.i.i
  br i1 %.not.i.us.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.split.us.i.i.i, !llvm.loop !418

.preheader.i.i.i.i:                               ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.us.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit.i.i.i.i
  %.034.lcssa.i.i.i.i = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit.i.i.i.i ], [ %i.ai, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.us.i.i.i ], [ %i.ar, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %.017.i.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit.i.i.i.i ], [ %.0.i.us.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.us.i.i.i ], [ %.0.i.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.i.i.i ]
  %.pre40.i.i.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 72), align 8, !tbaa !415, !range !106
  br label %bb.j

.lr.ph.i.split.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.i.i.i
  %i.al = phi ptr [ %i.as, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i ] ; 3 uses
  %.021.i.i.i.i = phi i64 [ %.0.i.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.i.i.i ], [ %.017.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.03420.i.i.i.i = phi i16 [ %i.ar, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %.val45.i.i.i.i = load i64, ptr %i.am, align 8, !tbaa !72
  %i.an = icmp eq i64 %.val45.i.i.i.i, %.val47.i.fr.i.i.i
  br i1 %i.an, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.i.i.i.i, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.i.i.i

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.split.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val44.i.i.i.i = load ptr, ptr %i.ao, align 8
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val44.i.i.i.i, ptr readonly %.val46.i.i.i.i, i64 %.val47.i.fr.i.i.i)
  %i.ap = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %.loopexit1, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.i.i.i

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread3.i.i.i.i: ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.i.i.i.i, %.lr.ph.i.split.i.i.i
  %i.aq = add i64 %.021.i.i.i.i, 1
  %i.ar = add i16 %.03420.i.i.i.i, 1              ; 3 uses
  %.0.i.i.i.i = and i64 %i.aq, %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val41.i.i.i.i ; 3 uses
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.0.i.i.i.i ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %.val43.i.i.i.i = load i16, ptr %i.at, align 4, !tbaa !380
  %.not.i.i.i.i = icmp sgt i16 %i.ar, %.val43.i.i.i.i
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.split.i.i.i, !llvm.loop !418

.loopexit.i.i.i.i:                                ; preds = %.lr.ph28.i.i.i.i, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22rehash_on_extreme_loadEs.exit.i.i.i.i
  %.236.lcssa.i.i.i.i = phi i16 [ 0, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22rehash_on_extreme_loadEs.exit.i.i.i.i ], [ %i.bz, %.lr.ph28.i.i.i.i ]
  %.2.lcssa.i.i.i.i = phi i64 [ %.223.i.i.i.i, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22rehash_on_extreme_loadEs.exit.i.i.i.i ], [ %.2.i.i.i.i, %.lr.ph28.i.i.i.i ]
  br label %bb.j, !llvm.loop !419

bb.j:                                             ; preds = %.loopexit.i.i.i.i, %.preheader.i.i.i.i
  %i.au = phi i64 [ %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val.i.i.i.i, %.loopexit.i.i.i.i ], [ %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val41.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.av = phi ptr [ %i.bv, %.loopexit.i.i.i.i ], [ %i.aa, %.preheader.i.i.i.i ]
  %i.aw = phi i8 [ %i.bu, %.loopexit.i.i.i.i ], [ %.pre40.i.i.i.i, %.preheader.i.i.i.i ]
  %.135.i.i.i.i = phi i16 [ %.236.lcssa.i.i.i.i, %.loopexit.i.i.i.i ], [ %.034.lcssa.i.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %.1.i.i.i.i = phi i64 [ %.2.lcssa.i.i.i.i, %.loopexit.i.i.i.i ], [ %.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = icmp sgt i16 %.135.i.i.i.i, 8192
  %or.cond.i.i.i.i.i = or i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 48), align 8, !tbaa !420 ; 3 uses
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 56), align 8, !tbaa !417
  %.not.i.i.i.i.i = icmp ult i64 %i.az, %i.ba
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bb = add i64 %i.au, -4611686018427387904
  %i.bc = icmp ult i64 %i.bb, -4611686018427387905
  br i1 %i.bc, label %bb.m, label %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.240)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #30
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bd) #29
  br label %.body

_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bf = shl nsw i64 %i.au, 1
  %i.bg = add i64 %i.bf, 2
  invoke fastcc void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E11rehash_implEm(i64 noundef %i.bg)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit.i.i.i.i.i
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 72), align 8, !tbaa !415
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22rehash_on_extreme_loadEs.exit.i.i.i.i

bb.p:                                             ; preds = %bb.k
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 73), align 1, !tbaa !416, !range !106, !noundef !107
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 73), align 1, !tbaa !416
  %i.bj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 64), align 8, !tbaa !421 ; 2 uses
  %i.bk = fcmp une float %i.bj, 0.000000e+00
  br i1 %i.bk, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val2.i.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 40), align 8, !tbaa !386 ; 2 uses
  %i.bl = icmp eq i64 %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val2.i.i.i.i.i.i, 0
  %i.bm = uitofp i64 %i.az to float               ; 2 uses
  %i.bn = uitofp i64 %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val2.i.i.i.i.i.i to float
  %i.bo = fdiv float %i.bm, %i.bn
  %.0.i.i.i.i.i.i = select i1 %i.bl, float 0.000000e+00, float %i.bo
  %i.bp = fcmp olt float %.0.i.i.i.i.i.i, %i.bj
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = add nuw i64 %i.az, 1
  %i.br = uitofp i64 %i.bq to float
  %i.bs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 68), align 4, !tbaa !422 ; 2 uses
  %2 = fdiv float %i.br, %i.bs
  %3 = call noundef float @llvm.ceil.f32(float %2)
  %4 = fptoui float %3 to i64
  %5 = fdiv float %i.bm, %i.bs
  %6 = call noundef float @llvm.ceil.f32(float %5)
  %i.bt = fptoui float %6 to i64
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %4, i64 %i.bt)
  invoke fastcc void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E11rehash_implEm(i64 noundef %.sroa.speculated.i.i.i.i.i.i.i)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.s
  %.pre.i.i.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 72), align 8, !tbaa !415, !range !106
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22rehash_on_extreme_loadEs.exit.i.i.i.i

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22rehash_on_extreme_loadEs.exit.i.i.i.i: ; preds = %.noexc13, %.noexc12
  %i.bu = phi i8 [ %.pre.i.i.i.i, %.noexc13 ], [ 0, %.noexc12 ]
  %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val.i.i.i.i = load i64, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, align 8, !tbaa !371 ; 3 uses
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 32), align 8, !tbaa !373 ; 3 uses
  %.223.i.i.i.i = and i64 %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val.i.i.i.i, %i.x ; 3 uses
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %.223.i.i.i.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %.val4224.i.i.i.i = load i16, ptr %i.bx, align 4, !tbaa !380
  %.not3725.i.i.i.i = icmp slt i16 %.val4224.i.i.i.i, 0
  br i1 %.not3725.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph28.i.i.i.i

.lr.ph28.i.i.i.i:                                 ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22rehash_on_extreme_loadEs.exit.i.i.i.i, %.lr.ph28.i.i.i.i
  %.227.i.i.i.i = phi i64 [ %.2.i.i.i.i, %.lr.ph28.i.i.i.i ], [ %.223.i.i.i.i, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22rehash_on_extreme_loadEs.exit.i.i.i.i ]
  %.23626.i.i.i.i = phi i16 [ %i.bz, %.lr.ph28.i.i.i.i ], [ 0, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22rehash_on_extreme_loadEs.exit.i.i.i.i ]
  %i.by = add i64 %.227.i.i.i.i, 1
  %i.bz = add i16 %.23626.i.i.i.i, 1              ; 3 uses
  %.2.i.i.i.i = and i64 %i.by, %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val.i.i.i.i ; 3 uses
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %.2.i.i.i.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 4
  %.val42.i.i.i.i = load i16, ptr %i.cb, align 4, !tbaa !380
  %.not37.i.i.i.i = icmp sgt i16 %i.bz, %.val42.i.i.i.i
  br i1 %.not37.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph28.i.i.i.i, !llvm.loop !423

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.av, i64 %.1.i.i.i.i ; 6 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 4      ; 2 uses
  %.val.i.i.i.i = load i16, ptr %i.cd, align 4, !tbaa !380
  %i.ce = icmp eq i16 %.val.i.i.i.i, -1
  %i.cf = trunc i64 %i.x to i32                   ; 2 uses
  br i1 %i.ce, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 3 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !70
  %i.ci = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.cj = load i64, ptr %i.j, align 8, !tbaa !72  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.cj, ptr %i.b, align 8, !tbaa !64
  %i.ck = icmp ugt i64 %i.cj, 15
  br i1 %i.ck, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.u
  %i.cl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc14:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !83
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !64
  store i64 %i.cm, ptr %i.ch, align 8, !tbaa !74
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc14, %bb.u
  %i.cn = phi ptr [ %i.cl, %.noexc14 ], [ %i.ch, %bb.u ] ; 2 uses
  switch i64 %i.cj, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE25set_value_of_empty_bucketIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESL_IJEEEEEvsjDpOT_.exit.i.i.i.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.co = load i8, ptr %i.ci, align 1, !tbaa !74
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !74
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE25set_value_of_empty_bucketIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESL_IJEEEEEvsjDpOT_.exit.i.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.ci, i64 %i.cj, i1 false)
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE25set_value_of_empty_bucketIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESL_IJEEEEEvsjDpOT_.exit.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE25set_value_of_empty_bucketIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESL_IJEEEEEvsjDpOT_.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !64  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !72
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !83
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 0, ptr %i.cs, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store ptr null, ptr %i.ct, align 8, !tbaa !387
  store i32 %i.cf, ptr %i.cc, align 8, !tbaa !424
  store i16 %.135.i.i.i.i, ptr %i.cd, align 4, !tbaa !380
  br label %bb.af

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  store ptr %i.k, ptr %0, align 8, !tbaa !70
  %i.cu = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.cv = load i64, ptr %i.j, align 8, !tbaa !72  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !64
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc.i.i.i.i57.i.i.i.i, label %._crit_edge.i.i.i.i.i56.i.i.i.i

.noexc.i.i.i.i57.i.i.i.i:                         ; preds = %bb.x
  %i.cx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc15:                                         ; preds = %.noexc.i.i.i.i57.i.i.i.i
  store ptr %i.cx, ptr %0, align 8, !tbaa !83
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.cy, ptr %i.k, align 8, !tbaa !74
  br label %._crit_edge.i.i.i.i.i56.i.i.i.i

._crit_edge.i.i.i.i.i56.i.i.i.i:                  ; preds = %.noexc15, %bb.x
  %i.cz = phi ptr [ %i.cx, %.noexc15 ], [ %i.k, %bb.x ] ; 2 uses
  switch i64 %i.cv, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i56.i.i.i.i
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !74
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !74
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i56.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i.i.i56.i.i.i.i
  %i.db = load i64, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  store i64 %i.db, ptr %i.l, align 8, !tbaa !72
  %i.dc = load ptr, ptr %0, align 8, !tbaa !83
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i8 0, ptr %i.dd, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  store ptr null, ptr %i.m, align 8, !tbaa !387
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 32), align 8, !tbaa !373
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.de, i64 %.1.i.i.i.i ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.dg) #29
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 40 ; 2 uses
  %i.di = load ptr, ptr %i.m, align 8, !tbaa !182
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !182
  store ptr %i.dj, ptr %i.m, align 8, !tbaa !182
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !182
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 4, !tbaa !219
  store i16 %.135.i.i.i.i, ptr %i.dk, align 4, !tbaa !219
  %i.dm = load i32, ptr %i.df, align 8, !tbaa !424 ; 2 uses
  store i32 %i.cf, ptr %i.df, align 8, !tbaa !424
  %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val11.i.i.i.i.i.i = load i64, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, align 8, !tbaa !371 ; 2 uses
  %i.dn = add i64 %.1.i.i.i.i, 1
  %i.do = and i64 %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val11.i.i.i.i.i.i, %i.dn ; 2 uses
  %storemerge13.i.i.i.i.i.i = add i16 %i.dl, 1    ; 2 uses
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 32), align 8, !tbaa !373 ; 2 uses
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.dp, i64 %i.do ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 4      ; 3 uses
  %.val14.i.i.i.i.i.i = load i16, ptr %i.dr, align 4, !tbaa !380 ; 2 uses
  %i.ds = icmp eq i16 %.val14.i.i.i.i.i.i, -1
  br i1 %i.ds, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i, %bb.ad
  %i.dt = phi ptr [ %i.ee, %bb.ad ], [ %i.dp, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i ]
  %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val25.i.i.i.i.i.i = phi i64 [ %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val.i.i.i.i.i.i, %bb.ad ], [ %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val11.i.i.i.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i ]
  %.val18.i.i.i.i.i.i = phi i16 [ %.val.i.i.i.i.i.i, %bb.ad ], [ %.val14.i.i.i.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i ]
  %i.du = phi ptr [ %i.ei, %bb.ad ], [ %i.dr, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i ] ; 2 uses
  %i.dv = phi ptr [ %i.eh, %bb.ad ], [ %i.dq, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i ] ; 4 uses
  %storemerge17.i.i.i.i.i.i = phi i16 [ %storemerge.i.i.i.i.i.i, %bb.ad ], [ %storemerge13.i.i.i.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i ] ; 4 uses
  %.016.i.i.i.i.i.i = phi i64 [ %i.eg, %bb.ad ], [ %i.do, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i ]
  %.0915.i.i.i.i.i.i = phi i32 [ %.1.i.i.i.i.i.i, %bb.ad ], [ %i.dm, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit.i.i.i.i.i ] ; 2 uses
  %i.dw = icmp sgt i16 %storemerge17.i.i.i.i.i.i, %.val18.i.i.i.i.i.i
  br i1 %i.dw, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dx = icmp sgt i16 %storemerge17.i.i.i.i.i.i, 8192
  br i1 %i.dx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 72), align 8, !tbaa !415
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.dy) #29
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 40 ; 2 uses
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !182
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !182
  store ptr %i.eb, ptr %i.m, align 8, !tbaa !182
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !182
  %i.ec = load i16, ptr %i.du, align 2, !tbaa !219
  store i16 %storemerge17.i.i.i.i.i.i, ptr %i.du, align 2, !tbaa !219
  %i.ed = load i32, ptr %i.dv, align 8, !tbaa !424
  store i32 %.0915.i.i.i.i.i.i, ptr %i.dv, align 8, !tbaa !424
  %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val.pre.i.i.i.i.i.i = load i64, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, align 8, !tbaa !371
  %.pre.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 32), align 8, !tbaa !373
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i
  %i.ee = phi ptr [ %.pre.i.i.i.i.i.i, %bb.ac ], [ %i.dt, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val.i.i.i.i.i.i = phi i64 [ %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val.pre.i.i.i.i.i.i, %bb.ac ], [ %_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T.val25.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.111.i.i.i.i.i.i = phi i16 [ %i.ec, %bb.ac ], [ %storemerge17.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.1.i.i.i.i.i.i = phi i32 [ %i.ed, %bb.ac ], [ %.0915.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ef = add i64 %.016.i.i.i.i.i.i, 1
end_hunk_0
begin_hunk_1_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E11rehash_implEm:bb.a
  %.0691720.i = phi float [ %i.ax, %bb.h ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.az = fcmp olt <2 x float> %i.a, <float 0.000000e+00, float 2.000000e-01>
  %i.ba = select <2 x i1> %i.az, <2 x float> <float 0.000000e+00, float 2.000000e-01>, <2 x float> %i.a ; 2 uses
  %i.bb = fcmp ogt <2 x float> %i.ba, <float 1.500000e-01, float f0x3F733333>
  %i.bc = select <2 x i1> %i.bb, <2 x float> <float 1.500000e-01, float f0x3F733333>, <2 x float> %i.ba ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 1
  %i.be = fmul float %i.bd, %.0691720.i
  %i.bf = fptoui float %i.be to i64
  %i.bg = icmp samesign ult i64 %.sroa.21.0, 4294967297
  %.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 8), align 8, !tbaa !434 ; 4 uses
  %.val14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 16), align 8, !tbaa !434 ; 2 uses
  %.not6 = icmp eq ptr %.val.i, %.val14
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.u
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 8), align 8, !tbaa !427
  %.pre11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 16), align 8, !tbaa !428
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.thread.i
  %i.bh = phi ptr [ %.pre11, %._crit_edge.loopexit ], [ %.val.i, %.thread.i ] ; 2 uses
  %i.bi = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.val.i, %.thread.i ] ; 5 uses
  store i64 %.sroa.0.0, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, align 8, !tbaa !64
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 24), align 8, !tbaa !430
  store ptr %.sroa.8.0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 8), align 8, !tbaa !427
  store ptr %.sroa.12.0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 16), align 8, !tbaa !428
  store ptr %.sroa.15.0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 24), align 8, !tbaa !430
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 32), align 8, !tbaa !434
  store i64 %.sroa.21.0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 40), align 8, !tbaa !64
  store i64 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 56), align 8, !tbaa !64
  store <2 x float> %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 64), align 8, !tbaa !108
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 72), align 8, !tbaa !435
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 73), align 1, !tbaa !435
  %.not4.i.i.i.i = icmp eq ptr %i.bi, %i.bh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bs, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i ], [ %i.bi, %._crit_edge ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %.val.i.i.i.i.i.i.i = load i16, ptr %i.bk, align 4, !tbaa !380
  %i.bl = icmp eq i16 %.val.i.i.i.i.i.i.i, -1
  br i1 %i.bl, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !83 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !74
  %i.br = add i64 %i.bq, 1
  tail call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #31
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store i16 -1, ptr %i.bk, align 4, !tbaa !380
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bh
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !429

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i, %._crit_edge
  %.not.i.i2.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i2.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_ED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.bt = ptrtoint ptr %i.bj to i64
  %i.bu = ptrtoint ptr %i.bi to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bv) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i, %bb.j
  ret void

.lr.ph:                                           ; preds = %.thread.i, %bb.u
  %.sroa.02.07 = phi ptr [ %i.dl, %bb.u ], [ %.val.i, %.thread.i ] ; 10 uses
  %i.bw = getelementptr i8, ptr %.sroa.02.07, i64 4
  %.val = load i16, ptr %i.bw, align 4, !tbaa !380
  %i.bx = icmp eq i16 %.val, -1
  br i1 %i.bx, label %bb.u, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = load i32, ptr %.sroa.02.07, align 4, !tbaa !424
  %i.bz = zext i32 %i.by to i64
  br label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 8
  %.val17 = load ptr, ptr %i.ca, align 8, !tbaa !83
  %i.cb = getelementptr i8, ptr %.sroa.02.07, i64 16
  %.val18 = load i64, ptr %i.cb, align 8, !tbaa !72
  %i.cc = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %.val17, i64 noundef %.val18, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #28
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit: ; preds = %bb.m, %bb.l
  %i.cf = phi i64 [ %i.bz, %bb.l ], [ %i.cc, %bb.m ] ; 2 uses
  %i.cg = and i64 %.sroa.0.0, %i.cf
  %i.ch = trunc i64 %i.cf to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 40 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit
  %.015.i = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit ], [ %i.dd, %bb.t ] ; 4 uses
  %.014.i = phi i32 [ %i.ch, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit ], [ %.1.i, %bb.t ] ; 3 uses
  %.0.i = phi i64 [ %i.cg, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit ], [ %i.df, %bb.t ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %.0.i ; 9 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 4      ; 4 uses
  %.val7.i = load i16, ptr %i.cl, align 4, !tbaa !380 ; 2 uses
  %i.cm = icmp sgt i16 %.015.i, %.val7.i
  br i1 %i.cm, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cn = icmp eq i16 %.val7.i, -1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  br i1 %i.cn, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 3 uses
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !70
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !83 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 24 ; 5 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !72 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 16
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = add nuw nsw i64 %i.cu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cp, ptr noundef nonnull align 8 dereferenceable(1) %i.cr, i64 %i.cw, i1 false)
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22insert_value_on_rehashEmsjOSF_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !83
  %i.cx = load i64, ptr %i.cr, align 8, !tbaa !74
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !74
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22insert_value_on_rehashEmsjOSF_.exit

bb.s:                                             ; preds = %bb.p
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.ci, ptr noundef nonnull align 8 dereferenceable(40) %i.co) #29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !182
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !182
  store ptr %i.da, ptr %i.cj, align 8, !tbaa !182
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !182
  %i.db = load i16, ptr %i.cl, align 4, !tbaa !219
  store i16 %.015.i, ptr %i.cl, align 4, !tbaa !219
  %i.dc = load i32, ptr %i.ck, align 8, !tbaa !424
  store i32 %.014.i, ptr %i.ck, align 8, !tbaa !424
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.116.i = phi i16 [ %i.db, %bb.s ], [ %.015.i, %bb.o ]
  %.1.i = phi i32 [ %i.dc, %bb.s ], [ %.014.i, %bb.o ]
  %i.dd = add i16 %.116.i, 1
  %i.de = add nuw i64 %.0.i, 1
  %i.df = and i64 %i.de, %.sroa.0.0
  br label %bb.o, !llvm.loop !436

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22insert_value_on_rehashEmsjOSF_.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !72
  %i.di = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !72
  store ptr %i.cr, ptr %i.ci, align 8, !tbaa !83
  store i64 0, ptr %i.dg, align 8, !tbaa !72
  store i8 0, ptr %i.cr, align 8, !tbaa !74
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.dk = load ptr, ptr %i.cj, align 8, !tbaa !387
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !387
  store i32 %.014.i, ptr %i.ck, align 8, !tbaa !424
  store i16 %.015.i, ptr %i.cl, align 4, !tbaa !380
  br label %bb.u

bb.u:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22insert_value_on_rehashEmsjOSF_.exit, %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.dl, %.val14
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #19

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil9parse_intERNS0_17basic_string_viewIcSt11char_traitsIcEEERib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #15

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #15

declare ptr @_ZNK11OpenImageIO4v3_114ParamValueList4findENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ParamValueList20getattribute_indexedENS0_17basic_string_viewIcSt11char_traitsIcEEEiNS0_8TypeDescEPvb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef dead_on_return, i32 noundef, i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZN11OpenImageIO4v3_17Strutil5stouiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef dead_on_return, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_110ParamValue10get_stringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(39), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !159
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !161
  store i64 500, ptr %i.b, align 8, !tbaa !162
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %1, i64 %2, i64 %3, ptr %4, ptr null)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.f = load i64, ptr %i.d, align 8, !tbaa !173, !noalias !437 ; 6 uses
  %i.g = icmp ult i64 %i.f, 4611686018427387903
  call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %5, align 8, !tbaa !161, !noalias !437 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !70, !alias.scope !437
  %i.j = icmp eq ptr %i.h, null
  %i.k = icmp ne i64 %i.f, 0
  %or.cond.i.i = and i1 %i.k, %i.j
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.238) #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !437
  store i64 %i.f, ptr %i.a, align 8, !tbaa !64, !noalias !437
  %i.l = icmp samesign ugt i64 %i.f, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7 unwind label %bb.h    ; 2 uses

.noexc7:                                          ; preds = %.noexc.i.i
  store ptr %i.m, ptr %0, align 8, !tbaa !83, !alias.scope !437
  %i.n = load i64, ptr %i.a, align 8, !tbaa !64, !noalias !437
  store i64 %i.n, ptr %i.i, align 8, !tbaa !74, !alias.scope !437
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc7, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc7 ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.h, align 1, !tbaa !74
  store i8 %i.p, ptr %i.o, align 1, !tbaa !74
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.h, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !64, !noalias !437 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !72, !alias.scope !437
  %i.s = load ptr, ptr %0, align 8, !tbaa !83, !alias.scope !437
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !437
  %i.u = load ptr, ptr %5, align 8, !tbaa !161    ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.u) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.h:                                             ; preds = %.noexc.i.i, %.noexc.i, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %5, align 8, !tbaa !161    ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i8, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.w) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %"class.fmt::v12::parse_context", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v12::context", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v12::detail::default_arg_formatter", align 8 ; 10 uses
  %9 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = icmp eq i64 %2, 2
  br i1 %i.a, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 1
  %i.c = icmp ne i16 %i.b, 32123
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %3, -1
  %i.g = trunc i64 %3 to i32                      ; 2 uses
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread

bb.e:                                             ; preds = %bb.d
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 16, !tbaa !440
  br label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit

bb.f:                                             ; preds = %bb.c
  %i.i = and i32 %i.g, 15                         ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  br label %bb.v

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit: ; preds = %bb.f, %bb.e
  %.sroa.21.0 = phi i32 [ %.sroa.21.0.copyload, %bb.e ], [ %i.i, %bb.f ]
  %.sroa.0.0.copyload.sink66 = load i128, ptr %4, align 16, !tbaa !74 ; 8 uses
  %i.j = trunc i128 %.sroa.0.0.copyload.sink66 to i64 ; 4 uses
  %i.k = lshr i128 %.sroa.0.0.copyload.sink66, 64
  %i.l = trunc nuw i128 %i.k to i64               ; 2 uses
  %i.m = trunc i128 %.sroa.0.0.copyload.sink66 to i32 ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i = inttoptr i64 %i.j to ptr ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.n = ptrtoint ptr %0 to i64
  store i64 %i.n, ptr %8, align 8, !tbaa !166
  switch i32 %.sroa.21.0, label %bb.v [
    i32 15, label %bb.u
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_xmp.cpp:bb.a
  store i64 269, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3472), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3480), align 8, !tbaa !98
  store ptr @.str.165, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3488), align 16, !tbaa !142
  store ptr @.str.165, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3496), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3504), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3512), align 8, !tbaa !98
  store ptr @.str.166, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3520), align 16, !tbaa !142
  store ptr @.str.166, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3528), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3536), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3544), align 8, !tbaa !98
  store ptr @.str.167, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3552), align 16, !tbaa !142
  store ptr @.str.167, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3560), align 8, !tbaa !95
  store i64 269, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3568), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3576), align 8, !tbaa !98
  store ptr @.str.168, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3584), align 16, !tbaa !142
  store ptr @.str.168, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3592), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3600), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3608), align 8, !tbaa !98
  store ptr @.str.169, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3616), align 16, !tbaa !142
  store ptr @.str.169, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3624), align 8, !tbaa !95
  store i64 269, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3632), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3640), align 8, !tbaa !98
  store ptr @.str.170, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3648), align 16, !tbaa !142
  store ptr @.str.170, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3656), align 8, !tbaa !95
  store i64 269, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3664), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3672), align 8, !tbaa !98
  store ptr @.str.171, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3680), align 16, !tbaa !142
  store ptr @.str.171, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3688), align 8, !tbaa !95
  store i64 269, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3696), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3704), align 8, !tbaa !98
  store ptr @.str.172, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3712), align 16, !tbaa !142
  store ptr @.str.172, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3720), align 8, !tbaa !95
  store i64 267, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3728), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3736), align 8, !tbaa !98
  store ptr @.str.173, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3744), align 16, !tbaa !142
  store ptr @.str.173, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3752), align 8, !tbaa !95
  store i64 267, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3760), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3768), align 8, !tbaa !98
  store ptr @.str.174, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3776), align 16, !tbaa !142
  store ptr @.str.174, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3784), align 8, !tbaa !95
  store i64 267, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3792), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3800), align 8, !tbaa !98
  store ptr @.str.175, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3808), align 16, !tbaa !142
  store ptr @.str.175, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3816), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3824), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3832), align 8, !tbaa !98
  store ptr @.str.176, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3840), align 16, !tbaa !142
  store ptr @.str.176, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3848), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3856), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3864), align 8, !tbaa !98
  store ptr @.str.177, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3872), align 16, !tbaa !142
  store ptr @.str.177, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3880), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3888), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3896), align 8, !tbaa !98
  store ptr @.str.178, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3904), align 16, !tbaa !142
  store ptr @.str.178, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3912), align 8, !tbaa !95
  store i64 267, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3920), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3928), align 8, !tbaa !98
  store ptr @.str.179, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3936), align 16, !tbaa !142
  store ptr @.str.179, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3944), align 8, !tbaa !95
  store i64 269, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3952), align 16
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3960), align 8, !tbaa !98
  store ptr @.str.180, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3968), align 16, !tbaa !142
  store ptr @.str.180, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3976), align 8, !tbaa !95
  store i64 269, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3984), align 16
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 3992), align 8, !tbaa !98
  store ptr @.str.181, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4000), align 16, !tbaa !142
  store ptr @.str.181, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4008), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4016), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4024), align 8, !tbaa !98
  store ptr @.str.182, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4032), align 16, !tbaa !142
  store ptr @.str.182, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4040), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4048), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4056), align 8, !tbaa !98
  store ptr @.str.183, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4064), align 16, !tbaa !142
  store ptr @.str.183, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4072), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4080), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4088), align 8, !tbaa !98
  store ptr @.str.184, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4096), align 16, !tbaa !142
  store ptr @.str.184, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4104), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4112), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4120), align 8, !tbaa !98
  store ptr @.str.185, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4128), align 16, !tbaa !142
  store ptr @.str.185, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4136), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4144), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4152), align 8, !tbaa !98
  store ptr @.str.186, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4160), align 16, !tbaa !142
  store ptr @.str.186, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4168), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4176), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4184), align 8, !tbaa !98
  store ptr @.str.187, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4192), align 16, !tbaa !142
  store ptr @.str.187, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4200), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4208), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4216), align 8, !tbaa !98
  store ptr @.str.188, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4224), align 16, !tbaa !142
  store ptr @.str.188, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4232), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4240), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4248), align 8, !tbaa !98
  store ptr @.str.189, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4256), align 16, !tbaa !142
  store ptr @.str.189, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4264), align 8, !tbaa !95
  store i64 267, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4272), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4280), align 8, !tbaa !98
  store ptr @.str.190, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4288), align 16, !tbaa !142
  store ptr @.str.190, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4296), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4304), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4312), align 8, !tbaa !98
  store ptr @.str.191, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4320), align 16, !tbaa !142
  store ptr @.str.191, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4328), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4336), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4344), align 8, !tbaa !98
  store ptr @.str.192, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4352), align 16, !tbaa !142
  store ptr @.str.192, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4360), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4368), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4376), align 8, !tbaa !98
  store ptr @.str.193, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4384), align 16, !tbaa !142
  store ptr @.str.193, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4392), align 8, !tbaa !95
  store i64 263, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4400), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4408), align 8, !tbaa !98
  store ptr @.str.194, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4416), align 16, !tbaa !142
  store ptr @.str.58, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4424), align 8, !tbaa !95
  store i64 256, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4432), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4440), align 8, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4448), i8 0, i64 16, i1 false)
  store i64 256, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4464), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16xmptagE, i64 4472), align 8, !tbaa !98
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #24 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin nounwind }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 24}
!8 = !{!"_ZTSN11OpenImageIO4v3_14pugi14xpath_node_setE", !9, i64 0, !5, i64 8, !10, i64 24, !10, i64 32}
!9 = !{!"_ZTSN11OpenImageIO4v3_14pugi14xpath_node_set6type_tE", !5, i64 0}
!10 = !{!"p1 _ZTSN11OpenImageIO4v3_14pugi10xpath_nodeE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !15, i64 0, !16, i64 8}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!14, !16, i64 8}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm: argument 0"}
!20 = distinct !{!20, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm"}
!21 = !{!22, !16, i64 24}
!22 = !{!"_ZTSN11OpenImageIO4v3_14pugi4impl15xml_memory_pageE", !23, i64 0, !24, i64 8, !24, i64 16, !16, i64 24, !16, i64 32}
!23 = !{!"p1 _ZTSN11OpenImageIO4v3_14pugi4impl13xml_allocatorE", !11, i64 0}
!24 = !{!"p1 _ZTSN11OpenImageIO4v3_14pugi4impl15xml_memory_pageE", !11, i64 0}
!25 = !{!26, !16, i64 0}
!26 = !{!"_ZTSN11OpenImageIO4v3_14pugi15xml_node_structE", !16, i64 0, !15, i64 8, !15, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !28, i64 56}
!27 = !{!"p1 _ZTSN11OpenImageIO4v3_14pugi15xml_node_structE", !11, i64 0}
!28 = !{!"p1 _ZTSN11OpenImageIO4v3_14pugi20xml_attribute_structE", !11, i64 0}
!29 = !{!30, !24, i64 0}
!30 = !{!"_ZTSN11OpenImageIO4v3_14pugi4impl13xml_allocatorE", !24, i64 0, !16, i64 8}
!31 = !{!30, !16, i64 8}
!32 = !{!33, !27, i64 0}
!33 = !{!"_ZTSN11OpenImageIO4v3_14pugi8xml_nodeE", !27, i64 0}
!34 = !{!26, !27, i64 40}
!35 = !{!22, !23, i64 0}
!36 = !{!26, !27, i64 32}
!37 = !{!38, !15, i64 8}
!38 = !{!"_ZTSN11OpenImageIO4v3_14pugi12xml_documentE", !33, i64 0, !15, i64 8, !5, i64 16}
!39 = distinct !{null}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTSN11OpenImageIO4v3_14pugi4impl16xml_extra_bufferE", !11, i64 0}
!42 = !{!22, !24, i64 16}
!43 = !{!44, !15, i64 0}
!44 = !{!"_ZTSN11OpenImageIO4v3_14pugi4impl16xml_extra_bufferE", !15, i64 0, !41, i64 8}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = distinct !{null, null}
!50 = distinct !{null, null, null}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN11OpenImageIO4v3_14pugi4impl16load_buffer_implEPNS2_19xml_document_structEPNS1_15xml_node_structEPvmjNS1_12xml_encodingEbbPPc: argument 0"}
!53 = distinct !{!53, !"_ZN11OpenImageIO4v3_14pugi4impl16load_buffer_implEPNS2_19xml_document_structEPNS1_15xml_node_structEPvmjNS1_12xml_encodingEbbPPc"}
!54 = !{!55, !57, i64 16}
!55 = !{!"_ZTSN11OpenImageIO4v3_14pugi16xml_parse_resultE", !56, i64 0, !16, i64 8, !57, i64 16}
!56 = !{!"_ZTSN11OpenImageIO4v3_14pugi16xml_parse_statusE", !5, i64 0}
!57 = !{!"_ZTSN11OpenImageIO4v3_14pugi12xml_encodingE", !5, i64 0}
!58 = !{!59, !52}
!59 = distinct !{!59, !60, !"_ZN11OpenImageIO4v3_14pugi4impl17make_parse_resultENS1_16xml_parse_statusEl: argument 0"}
!60 = distinct !{!60, !"_ZN11OpenImageIO4v3_14pugi4impl17make_parse_resultENS1_16xml_parse_statusEl"}
!61 = !{!55, !56, i64 0}
!62 = !{!55, !16, i64 8}
!63 = !{!15, !15, i64 0}
!64 = !{!16, !16, i64 0}
!65 = !{!66, !52}
!66 = distinct !{!66, !67, !"_ZN11OpenImageIO4v3_14pugi4impl17make_parse_resultENS1_16xml_parse_statusEl: argument 0"}
!67 = distinct !{!67, !"_ZN11OpenImageIO4v3_14pugi4impl17make_parse_resultENS1_16xml_parse_statusEl"}
!68 = !{!69, !15, i64 80}
!69 = !{!"_ZTSN11OpenImageIO4v3_14pugi4impl19xml_document_structE", !26, i64 0, !30, i64 64, !15, i64 80, !41, i64 88}
!70 = !{!71, !15, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!72 = !{!73, !16, i64 8}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0, !16, i64 8, !5, i64 16}
!74 = !{!5, !5, i64 0}
!75 = !{!28, !28, i64 0}
!76 = !{!77, !15, i64 8}
!77 = !{!"_ZTSN11OpenImageIO4v3_14pugi20xml_attribute_structE", !16, i64 0, !15, i64 8, !15, i64 16, !28, i64 24, !28, i64 32}
!78 = !{!77, !15, i64 16}
!79 = !{!26, !15, i64 8}
!80 = !{!26, !15, i64 16}
!81 = !{!26, !27, i64 48}
!82 = distinct !{!82, !46}
!83 = !{!73, !15, i64 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !11, i64 0}
!86 = !{!"branch_weights", i32 1, i32 1048575}
!87 = !{!88, !16, i64 40}
!88 = !{!"_ZTSN11OpenImageIO4v3_17ustring8TableRepE", !16, i64 0, !73, i64 8, !16, i64 40, !16, i64 48, !4, i64 56}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!91 = distinct !{!91, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!94 = distinct !{!94, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!95 = !{!96, !15, i64 8}
!96 = !{!"_ZTSN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagE", !15, i64 0, !15, i64 8, !97, i64 16, !4, i64 24}
!97 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!98 = !{!96, !4, i64 24}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE: argument 0"}
!101 = distinct !{!101, !"_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE"}
!102 = !{!103, !105, i64 38}
!103 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !104, i64 0, !97, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !105, i64 37, !105, i64 38}
!104 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !15, i64 0}
!105 = !{!"bool", !5, i64 0}
!106 = !{i8 0, i8 2}
!107 = !{}
!108 = !{!109, !109, i64 0}
!109 = !{!"float", !5, i64 0}
!110 = !{!111, !100}
!111 = distinct !{!111, !112, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA6_cJRjS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!112 = distinct !{!112, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA6_cJRjS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!113 = !{!114, !115, i64 0}
!114 = !{!"_ZTSSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !115, i64 0, !73, i64 8}
!115 = !{!"p1 _ZTSN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagE", !11, i64 0}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !"_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!121 = !{!117, !120}
!122 = distinct !{!122, !46}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!125 = distinct !{!125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!126 = !{!127, !124}
!127 = distinct !{!127, !128, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!128 = distinct !{!128, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!131 = distinct !{!131, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!132 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!133 = !{!134, !135, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_Vector_impl_dataE", !135, i64 0, !135, i64 8, !135, i64 16}
!135 = !{!"p1 _ZTSSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !11, i64 0}
!136 = !{!134, !135, i64 8}
!137 = distinct !{!137, !46}
!138 = !{!134, !135, i64 16}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!141 = distinct !{!141, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!142 = !{!96, !15, i64 0}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA8_cJRPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESD_RKT_DpOT0_: argument 0"}
!145 = distinct !{!145, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA8_cJRPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESD_RKT_DpOT0_"}
!146 = !{!147, !147, i64 0}
!147 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!148 = !{!149, !147, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!150 = !{!149, !147, i64 8}
!151 = distinct !{!151, !46}
!152 = !{!149, !147, i64 16}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA20_cJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_RKT_DpOT0_: argument 0"}
!155 = distinct !{!155, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA20_cJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_RKT_DpOT0_"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!158 = distinct !{!158, !"_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!159 = !{!160, !11, i64 24}
!160 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !15, i64 0, !16, i64 8, !16, i64 16, !11, i64 24}
end_hunk_2
