inline.NumInlined: 5513
inline.NumDeleted: 2439
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_:bb.a
  %i.am = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.an = add i64 %i.am, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !787

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.ax, %bb.g ], [ %i.aj, %.split.us ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i.us, %i.ap
  %i.ar = and i64 %i.aq, %i.v                     ; 2 uses
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !178
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread32.i, label %bb.g, !prof !744

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.aw = add i16 %.sroa.017.046.i.us.us, -1
  %i.ax = and i16 %i.aw, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ax, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bt, %bb.i ], [ %i.x, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.v            ; 4 uses
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !12 ; 2 uses
  %i.bb = icmp eq <16 x i8> %i.ad, %i.ba
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.bc, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bp, %bb.h ], [ %i.bc, %.split ] ; 3 uses
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.6.0.i, %i.be
  %i.bg = and i64 %i.bf, %i.v                     ; 2 uses
  %i.bh = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !178
  %i.bk = icmp eq i64 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, label %bb.h, !prof !744

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !182
  %bcmp.i.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.bl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i11, 0
  br i1 %i.bm, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bo = add i16 %.sroa.017.046.i, -1
  %i.bp = and i16 %i.bo, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bq = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not43.i = icmp eq i16 %i.br, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit, !prof !21

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.6.0.i
  br label %.split, !llvm.loop !787

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(73) ptr @_ZN6google8protobuf2io7Printer9ValueImplILb0EEaSILb1EEERS4_RKNS3_IXT_EEE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !517
  switch i8 %i.c, label %bb.g [
    i8 0, label %bb.c
    i8 1, label %_ZSt3getISt8functionIFbvEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EERKT_RKSt7variantIJDpT0_EE.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !182    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !178  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !774
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_ZSt3getILm0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit.i, label %bb.d

_ZSt3getILm0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit.i: ; preds = %bb.c
  store i64 %i.f, ptr %0, align 8, !tbaa !89
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !452
  br label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !348  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #30
  unreachable

_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.f, ptr %0, align 8, !tbaa !89
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !452
  store i8 0, ptr %i.g, align 8, !tbaa !774
  br label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit

bb.g:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.o, align 8, !tbaa !788
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @.str.62, ptr %i.p, align 8, !tbaa !790
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #31
  unreachable

_ZSt3getISt8functionIFbvEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  br label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit

_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit: ; preds = %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i, %_ZSt3getILm0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit.i, %_ZSt3getISt8functionIFbvEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !tbaa !519, !range !52, !noundef !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.u, ptr %i.v, align 8, !tbaa !776
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !774
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !348  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #30
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.220", align 16 ; 11 uses
  %3 = alloca %"class.std::function.220", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !774   ; 2 uses
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.c, label %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit, label %bb.i

_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !348  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !344
  br label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 16, !tbaa !348 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #30
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.ab, %bb.m ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit
  %i.n = phi <2 x ptr> [ splat (ptr null), %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit ], [ %i.h, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !740
  store <16 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %0, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !344
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !344  ; 2 uses
  store <2 x ptr> %i.p, ptr %i.e, align 16, !tbaa !344
  store <2 x ptr> %i.n, ptr %i.o, align 8, !tbaa !344
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbvEEaSERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit.i
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFbvEEaSERKS1_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #30
  unreachable

_ZNSt8functionIFbvEEaSERKS1_.exit:                ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !348  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !553  ; 2 uses
  store ptr %i.z, ptr %i.v, align 8, !tbaa !553
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !348 ; 2 uses
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !348
  %.pre = load i8, ptr %i.a, align 8, !tbaa !774
  br label %_ZNSt8functionIFbvEEC2ERKS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !348 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #30
  unreachable

_ZNSt8functionIFbvEEC2ERKS1_.exit:                ; preds = %bb.i, %bb.k
  %i.ag = phi ptr [ null, %bb.i ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ah = phi ptr [ null, %bb.i ], [ %i.z, %bb.k ] ; 2 uses
  %i.ai = phi i8 [ %i.b, %bb.i ], [ %.pre, %bb.k ]
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %._ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i_crit_edge unwind label %bb.q ; 0 uses

._ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i_crit_edge: ; preds = %bb.p
  %.pre9 = load ptr, ptr %i.v, align 8, !tbaa !553
  %.pre10 = load ptr, ptr %i.u, align 8, !tbaa !348
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #30
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i: ; preds = %._ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i_crit_edge, %bb.o, %_ZNSt8functionIFbvEEC2ERKS1_.exit
  %i.ap = phi ptr [ %.pre10, %._ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i_crit_edge ], [ %i.ag, %bb.o ], [ %i.ag, %_ZNSt8functionIFbvEEC2ERKS1_.exit ] ; 2 uses
  %i.aq = phi ptr [ %.pre9, %._ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i_crit_edge ], [ %i.ah, %bb.o ], [ %i.ah, %_ZNSt8functionIFbvEEC2ERKS1_.exit ]
  store i8 -1, ptr %i.a, align 8, !tbaa !774
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %0, i8 0, i64 24, i1 false)
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !553
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !740
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !348
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE8_M_resetEv.exit.i.i, %bb.r
  store i8 1, ptr %i.a, align 8, !tbaa !774
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt8functionIFbvEEaSERKS1_.exit
  ret ptr %0
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #22

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !790
  ret ptr %i.b
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.316, align 8            ; 4 uses
  %4 = alloca %class.anon.313, align 8            ; 5 uses
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_, ptr %0, align 8, !tbaa !770
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !344
  store ptr %i.a, ptr %0, align 8, !tbaa !344
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !344    ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.c, ptr %4, align 8, !tbaa !793
  invoke void @_ZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SH_EEEC1ERKSP_RKSO_EUlPvPKvE_vJSU_SW_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.f unwind label %.body.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit

.body.i.i.i.i.i.i:                                ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 32) #33
  resume { ptr, i32 } %i.f

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit: ; preds = %bb.d, %bb.f
  store ptr %i.c, ptr %0, align 8, !tbaa !344
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.g:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !344    ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2IKS5_SB_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE18_ConstructiblePairISG_SH_EEclsr6_PCCFPISG_SH_EE26_ImplicitlyConvertiblePairISG_SH_EEEbE4typeELb1EEERKS_ISG_SH_E:bb.a
  store i64 %i.i, ptr %i.c, align 8, !tbaa !12
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !12
  store i8 %i.k, ptr %i.j, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !178
  %i.n = load ptr, ptr %0, align 8, !tbaa !182
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 -1, ptr %i.r, align 8, !tbaa !517
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.p, ptr %2, align 8, !tbaa !735
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSD_EUlOT_T0_E_JRKSt7variantIJS9_SC_EEEEDcOSI_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(73) %i.q)
          to label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2ERKS9_.exit.i unwind label %bb.d

common.resume.i:                                  ; preds = %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.ai, %bb.g ]
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.p) #29
  %i.s = load ptr, ptr %0, align 8, !tbaa !182    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2ERKS9_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i8, ptr %i.v, align 8, !tbaa !517
  store i8 %i.w, ptr %i.r, align 8, !tbaa !517
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !216
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !182 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !178 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !89
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2ERKS9_.exit.i
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i4 unwind label %bb.g  ; 2 uses

.noexc.i4:                                        ; preds = %.noexc.i.i
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !182
  %i.af = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.af, ptr %i.z, align 8, !tbaa !12
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i4, %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2ERKS9_.exit.i
  %i.ag = phi ptr [ %i.ae, %.noexc.i4 ], [ %i.z, %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2ERKS9_.exit.i ] ; 2 uses
  switch i64 %i.ac, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.h
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !12
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !12
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %.noexc.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !178
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !182
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !519, !range !52, !noundef !16
  store i8 %i.ap, ptr %i.an, align 8, !tbaa !519
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %common.resume.i
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !12
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.ar) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %common.resume.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %common.resume.op.i
}

declare void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SH_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSS_ST_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !12
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load i8, ptr %i.h, align 8, !tbaa !517
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !182  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !12
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #33
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !348  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(73) %i.a, ptr noundef nonnull align 8 dereferenceable(73) %i.a, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #30
  unreachable

_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %bb.d, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.u = load ptr, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SG_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSR_SS_EENSt13invoke_resultIT_JDpT0_EE4typeEOSX_DpOSY_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !12
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SG_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSR_SS_EENSt13invoke_resultIT_JDpT0_EE4typeEOSX_DpOSY_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SG_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSR_SS_EENSt13invoke_resultIT_JDpT0_EE4typeEOSX_DpOSY_.exit: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEEC2EOSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.6.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.6.0..sroa_idx, align 8
  %i.a = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.a, ptr %0, align 8
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE17_M_realloc_insertIJZNS5_8WithDefsEN4absl12lts_202505124SpanIKNS5_3SubEEEbEUlSB_E0_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !573  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !795    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32
  br label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.s = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_M_allocateEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEEC2EOSM_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %2) #29
  store ptr %i.s, ptr %i.r, align 8, !tbaa !344
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E9_M_invokeERKSt9_Any_dataOSA_, ptr %i.t, align 8, !tbaa !727
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr %i.u, align 8, !tbaa !348
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.d ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.d ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !796, !noalias !799
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !727, !alias.scope !799, !noalias !796
  store ptr %i.x, ptr %i.v, align 8, !tbaa !727, !alias.scope !796, !noalias !799
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !348, !alias.scope !799, !noalias !796 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSC_.exit.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSC_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !740, !alias.scope !801
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !348, !alias.scope !796, !noalias !799
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !799, !noalias !796
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSC_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !802

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i32
  %.012.i.i.i28 = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i28, i8 0, i64 24, i1 false), !alias.scope !803, !noalias !806
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !727, !alias.scope !806, !noalias !803
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !727, !alias.scope !803, !noalias !806
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !348, !alias.scope !806, !noalias !803 ; 2 uses
  %.not.i.i.not.i.i.i.i.i30 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i30, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i32, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSC_.exit.i.i.i.i31

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSC_.exit.i.i.i.i31: ; preds = %.lr.ph.i.i.i27
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i29, i64 16, i1 false), !tbaa.struct !740, !alias.scope !808
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !348, !alias.scope !803, !noalias !806
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !806, !noalias !803
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i32

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSC_.exit.i.i.i.i31, %.lr.ph.i.i.i27
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !802

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit35: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit ], [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE13_M_deallocateEPSD_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit35
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !726
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #33
  br label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE13_M_deallocateEPSD_m.exit

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE13_M_deallocateEPSD_m.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit35, %bb.e
  store ptr %i.q, ptr %0, align 8, !tbaa !795
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !573
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !726
  ret void

bb.f:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE11_M_allocateEm.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #29 ; 0 uses
  %i.av = shl nuw nsw i64 %i.l, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.av) #33
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ar

bb.i:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #30
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E9_M_invokeERKSt9_Any_dataOSA_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.126") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !89, !noalias !815
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !452, !noalias !815
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !815
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !819
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.b, align 8, !noalias !819
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE4findISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !819 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @_ZN6google8protobuf2io7Printer16AnnotationRecordC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit: ; preds = %bb.a, %bb.b
  %.sink.i.i.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sink.i.i.i, ptr %i.h, align 8, !tbaa !527, !alias.scope !819
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !815
  ret void
}
end_hunk_1
begin_hunk_2_@_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation:bb.a
bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !344
  store ptr %i.a, ptr %0, align 8, !tbaa !344
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !344    ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.c, ptr %4, align 8, !tbaa !824
  invoke void @_ZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEEC1ERKSO_RKSN_EUlPvPKvE_vJST_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.f unwind label %.body.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit

.body.i.i.i.i.i.i:                                ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 32) #33
  resume { ptr, i32 } %i.f

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit: ; preds = %bb.d, %bb.f
  store ptr %i.c, ptr %0, align 8, !tbaa !344
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.g:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !344    ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !7
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.g, ptr %3, align 8, !tbaa !729
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 96, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i.i unwind label %bb.j

.noexc.i.i.i:                                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.k = load i64, ptr %i.g, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = and i64 %i.o, 65536
  %i.q = icmp ne i64 %i.p, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.k, ptr noundef %i.m, i64 noundef 96, i64 noundef 8, i1 noundef zeroext %i.q)
          to label %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i.i.i, %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable

_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i: ; preds = %.noexc.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 32) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit: ; preds = %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i, %bb.g, %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit, %bb.c, %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEEC1ERKSO_RKSN_EUlPvPKvE_vJST_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !216
  %i.c = load ptr, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !178  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.e, ptr %i.a, align 8, !tbaa !89
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !182
  %i.h = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.h, ptr %i.b, align 8, !tbaa !12
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !12
  store i8 %i.j, ptr %i.i, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !178
  %i.m = load ptr, ptr %1, align 8, !tbaa !182
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN6google8protobuf2io7Printer16AnnotationRecordC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEEC1ERKSN_RKSM_EUlPvPKvE_JSS_SU_EENSt13invoke_resultIT_JDpT0_EE4typeEOSZ_DpOS10_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %1, align 8, !tbaa !182    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !12
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #33
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.q

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEEC1ERKSN_RKSM_EUlPvPKvE_JSS_SU_EENSt13invoke_resultIT_JDpT0_EE4typeEOSZ_DpOS10_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !12
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !607  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf2io7Printer16AnnotationRecordD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !609
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #33
  br label %_ZN6google8protobuf2io7Printer16AnnotationRecordD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN6google8protobuf2io7Printer16AnnotationRecordD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer16AnnotationRecordD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !12
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit: ; preds = %_ZN6google8protobuf2io7Printer16AnnotationRecordD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEEC2EOSM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.6.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.6.0..sroa_idx, align 8
  %i.a = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.a, ptr %0, align 8
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SB_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !12
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !12
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6google8protobuf8compiler10objectivec13EnumGeneratorC1EPKNS0_14EnumDescriptorERKNS2_17GenerationOptionsE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef nonnull align 8 dereferenceable(172)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler10objectivec13EnumGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !12
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7    ; 3 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %i.h, 2
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = and i64 %i.n, 65536
  %i.p = icmp ne i64 %i.o, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.h, ptr noundef %i.l, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.p)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #30
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !826  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf19EnumValueDescriptorESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !829
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #33
  br label %_ZNSt6vectorIPKN6google8protobuf19EnumValueDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf19EnumValueDescriptorESaIS4_EED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !826 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN6google8protobuf19EnumValueDescriptorESaIS4_EED2Ev.exit2, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf19EnumValueDescriptorESaIS4_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !829
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #33
  br label %_ZNSt6vectorIPKN6google8protobuf19EnumValueDescriptorESaIS4_EED2Ev.exit2

_ZNSt6vectorIPKN6google8protobuf19EnumValueDescriptorESaIS4_EED2Ev.exit2: ; preds = %_ZNSt6vectorIPKN6google8protobuf19EnumValueDescriptorESaIS4_EED2Ev.exit, %bb.e
  ret void
}

declare void @_ZN6google8protobuf8compiler10objectivec16MessageGeneratorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_10DescriptorERKNS2_17GenerationOptionsE(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(172)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler10objectivec16MessageGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(196) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !830  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !832  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !833 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec14OneofGeneratorEEclEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec14OneofGeneratorEEclEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6google8protobuf8compiler10objectivec14OneofGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.e) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 72) #33
  br label %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf8compiler10objectivec14OneofGeneratorEEclEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !835

_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !830
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !836
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #33
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !837  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN6google8protobuf8compiler10objectivec18ExtensionGeneratorESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !840
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #33
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler10objectivec18ExtensionGeneratorESaIS6_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf8compiler10objectivec18ExtensionGeneratorESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler10objectivec14OneofGeneratorESt14default_deleteIS5_EESaIS8_EED2Ev.exit, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !182  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPKN6google8protobuf8compiler10objectivec18ExtensionGeneratorESaIS6_EED2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !12
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf8compiler10objectivec18ExtensionGeneratorESaIS6_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !182 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS5_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvST_PFvST_hmmE:bb.a
  %.not61 = icmp eq i16 %i.r, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE8transferISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EESN_.exit, %bb.c
  %i.s = add nuw i64 %.063, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !863

.lr.ph:                                           ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE8transferISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EESN_.exit
  %.sroa.054.062 = phi i16 [ %i.cf, %_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE8transferISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EESN_.exit ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.062, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.063, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.w ; 8 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !12
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE8transferISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EESN_.exit

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !68
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 4 uses
  store ptr %i.y, ptr %i.ba, align 8, !tbaa !97
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !59, !range !52, !noundef !16
  store i8 %i.bd, ptr %i.bb, align 8, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEC2EOSF_(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bf) #29
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 3 uses
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEC2EOSF_(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh) #29
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !7  ; 3 uses
  %i.bj = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp ult i64 %i.bi, 2
  br i1 %i.bk, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11
  %i.bp = and i64 %i.bo, 65536
  %i.bq = icmp ne i64 %i.bp, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.bi, ptr noundef %i.bm, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.bq)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #30
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit.i.i.i.i: ; preds = %bb.i, %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  %i.bt = load i64, ptr %i.bf, align 8, !tbaa !7  ; 3 uses
  %i.bu = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp ult i64 %i.bt, 2
  br i1 %i.bv, label %_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE8transferISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EESN_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11
  %i.ca = and i64 %i.bz, 65536
  %i.cb = icmp ne i64 %i.ca, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bt, ptr noundef %i.bx, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.cb)
          to label %_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE8transferISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EESN_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #30
  unreachable

_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE8transferISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EESN_.exit: ; preds = %bb.k, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit.i.i.i.i, %bb.h
  %i.ce = add i16 %.sroa.054.062, -1
  %i.cf = and i16 %i.ce, %.sroa.054.062           ; 2 uses
  %.not = icmp eq i16 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE8transferISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EESN_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !97
  store ptr %i.a, ptr %1, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !59, !range !52, !noundef !16
  store i8 %i.d, ptr %i.b, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEC2EOSF_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEC2EOSF_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #29
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7    ; 3 uses
  %i.j = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i64 %i.i, 2
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = and i64 %i.o, 65536
  %i.q = icmp ne i64 %i.p, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.i, ptr noundef %i.m, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.q)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #30
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.t = load i64, ptr %i.f, align 8, !tbaa !7    ; 3 uses
  %i.u = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp ult i64 %i.t, 2
  br i1 %i.v, label %_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE7destroyISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = and i64 %i.z, 65536
  %i.ab = icmp ne i64 %i.aa, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.t, ptr noundef %i.x, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.ab)
          to label %_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE7destroyISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EE.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #30
  unreachable

_ZN4absl12lts_2025051218container_internal15map_slot_policyIPKN6google8protobuf14FileDescriptorENS4_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEE7destroyISaISt4pairIKS7_SC_EEEEDaPT_PNS1_13map_slot_typeIS7_SC_EE.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEC2EOSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.6.0..sroa_idx, align 8
  %i.a = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.a, ptr %0, align 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx13, align 8
  store i64 1, ptr %1, align 8
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_TnNSt9enable_ifIXsr27IsDecomposableAndInsertableIRKT_EE5valueEiE4typeELi0EEENSF_8iteratorENSF_14const_iteratorESK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7, !noalias !864 ; 5 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11, !noalias !879
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.d, align 8, !tbaa !89, !noalias !879
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13, !noalias !879 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !13, !noalias !879 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = xor i64 %i.k, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.m = mul i64 %i.l, -2543921745674291987
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, 6679450291180483821
  %i.q = lshr i64 %i.p, 56
  %i.r = trunc nuw i64 %i.q to i8
  %i.s = and i8 %i.r, 127
  %i.t = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.u = xor i64 %i.t, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.v = mul i64 %i.u, -2543921745674291987
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %i.v)
  %i.x = xor i64 %i.w, %i.t
  %i.y = mul i64 %i.x, -2543921745674291987
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i8 noundef signext %i.s), !noalias !879 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !12, !noalias !879
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !12, !noalias !879
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12, !noalias !882 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.ag, i32 0, i32 1, i32 1), !noalias !882
  %i.ah = load ptr, ptr %3, align 8, !tbaa !13, !noalias !882 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = xor i64 %i.ai, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ak = mul i64 %i.aj, -2543921745674291987
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  %i.am = xor i64 %i.al, %i.ai
  %i.an = mul i64 %i.am, -2543921745674291987
  %i.ao = tail call noundef i64 @llvm.bswap.i64(i64 %i.an) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11, !noalias !885
  %i.ar = and i64 %i.aq, 65535
  %i.as = lshr i64 %i.ao, 7
  %i.at = xor i64 %i.as, %i.ar
  %i.au = trunc i64 %i.ao to i8
  %i.av = and i8 %i.au, 127
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !12, !noalias !882 ; 3 uses
  %i.ax = insertelement <16 x i8> poison, i8 %i.av, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.at, %bb.f ], [ %i.by, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bx, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.az, i32 0, i32 3, i32 1), !noalias !882
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.7.0.i
  %i.bb = load <16 x i8>, ptr %i.ba, align 1, !tbaa !12, !noalias !882 ; 2 uses
  %i.bc = icmp eq <16 x i8> %i.ay, %i.bb
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.bd, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.060.i = phi i16 [ %i.bm, %.critedge.i ], [ %i.bd, %bb.g ] ; 3 uses
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = add i64 %.sroa.7.0.i, %i.bf
  %i.bh = and i64 %i.bg, %i.a                     ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13, !noalias !882
  %i.bk = icmp eq ptr %i.bj, %i.ah
  br i1 %i.bk, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i, label %.critedge.i, !prof !20

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bl = add i16 %.sroa.033.060.i, -1
  %i.bm = and i16 %i.bl, %.sroa.033.060.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bn = icmp eq <16 x i8> %i.bb, splat (i8 -128)
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bo, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread12, !prof !21

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread12: ; preds = %.critedge18.i
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bo, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.7.0.i, %i.bq
  %i.bs = and i64 %i.br, %i.a
  %i.bt = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ao, i64 %i.bs, i64 %.sroa.15.0.i), !noalias !882 ; 2 uses
  %i.bu = load ptr, ptr %i.af, align 8, !tbaa !12, !noalias !882
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.aw, align 8, !tbaa !12, !noalias !882
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bx = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bh
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bh ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread12
  %.sroa.0.08 = phi ptr [ %i.bv, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread12 ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ %i.ac, %bb.e ]
  %.sroa.5.05 = phi ptr [ %i.bw, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread12 ], [ %i.f, %bb.c ], [ %i.ae, %bb.e ] ; 2 uses
  %i.cb = load ptr, ptr %3, align 8, !tbaa !13, !noalias !888
  store ptr %i.cb, ptr %.sroa.5.05, align 8, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit: ; preds = %bb.d, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  %.sroa.0.07 = phi ptr [ %i.ca, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i ], [ %.sroa.0.08, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ]
  %.sroa.5.06 = phi ptr [ %i.bz, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i ], [ %.sroa.5.05, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread ], [ %i.g, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.07, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.5.06, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf14FileDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_8compiler10objectivec12_GLOBAL__N_128FileDescriptorsOrderedByNameEEEEvT_SJ_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #24 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf14FileDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_8compiler10objectivec12_GLOBAL__N_128FileDescriptorsOrderedByNameEEEEvT_SJ_SJ_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf14FileDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_8compiler10objectivec12_GLOBAL__N_128FileDescriptorsOrderedByNameEEEET_SJ_SJ_T0_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55, !llvm.loop !889

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa51 = phi i64 [ %i.d, %.lr.ph ], [ %i.ci, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.024.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa51, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf14FileDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS3_8compiler10objectivec12_GLOBAL__N_128FileDescriptorsOrderedByNameEEEEvT_T0_SK_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa51, ptr noundef %i.l)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !890

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge25.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.p = load ptr, ptr %0, align 8, !tbaa !13
  store ptr %i.p, ptr %i.n, align 8, !tbaa !13
  %i.q = ptrtoint ptr %i.n to i64
end_hunk_3
