inline.NumInlined: 4308
inline.NumDeleted: 2132
begin_hunk_0_@_ZNK6google8protobuf13json_internal12ResolverPool7Message9FindFieldESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cv = load ptr, ptr %i.bt, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !19
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, -4
  %i.da = inttoptr i64 %i.cz to ptr               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE30find_or_prepare_insert_non_sooINSt7__cxx1112basic_stringIcS6_SaIcEEEEESI_INSM_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  %i.db = load i8, ptr %i.bq, align 8, !tbaa !134, !range !86, !alias.scope !150, !noundef !88
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit
  %.sroa.2.0.copyload.i.i.i31 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i30, align 8, !alias.scope !150 ; 3 uses
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !21, !noalias !150
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !26, !noalias !150
  store i64 %i.df, ptr %.sroa.2.0.copyload.i.i.i31, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i31, i64 8
  store ptr %i.dd, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i31, i64 16
  store ptr %.02340, ptr %i.dh, align 8, !tbaa !138
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.di = getelementptr inbounds nuw i8, ptr %.02340, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.di, %i.bo
  br i1 %.not, label %.loopexit, label %bb.d

bb.j:                                             ; preds = %bb.b
  %i.dj = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE4findIS7_EENSM_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.dk = extractvalue { ptr, ptr } %i.dj, 0
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = extractvalue { ptr, ptr } %i.dj, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !151
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32, %bb.k, %bb.j, %bb.a
  %.0 = phi ptr [ null, %bb.j ], [ null, %bb.a ], [ %i.do, %bb.k ], [ %.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32 ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE4findIS7_EENSM_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !111
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !112
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !13 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !62 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !63
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !63
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE12EqualElementIS7_EEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE12EqualElementIS7_EEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE12EqualElementIS7_EEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13, !nonnull !88, !noundef !88
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !62 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !112, !noalias !153
  %i.r = and i64 %i.q, 65535
  %i.s = load i64, ptr %0, align 8, !tbaa !111, !noalias !153 ; 4 uses
  %i.t = lshr i64 %i.o, 7
  %i.u = xor i64 %i.r, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.o to i8
  %i.w = and i8 %i.v, 127
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !13   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !13 ; 4 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ab, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.ak, %bb.f ], [ %i.u, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.aj, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.s      ; 4 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i.us
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !13 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.aa, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ah = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not43.i.us = icmp eq i16 %i.ai, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit, !prof !89

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.aj = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !156

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.as, %bb.g ], [ %i.ag, %.split.us ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i.us, %i.am
  %i.ao = and i64 %i.an, %i.s                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ao ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us = load i64, ptr %i.ap, align 8, !tbaa !62
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us, 0
  br i1 %i.aq, label %.thread32.i, label %bb.g, !prof !157

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.ar = add i16 %.sroa.017.046.i.us.us, -1
  %i.as = and i16 %i.ar, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.as, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bl, %bb.i ], [ %i.u, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.s            ; 4 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !13 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.aa, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.ax, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bh, %bb.h ], [ %i.ax, %.split ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i, %i.az
  %i.bb = and i64 %i.ba, %i.s                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bb ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10 = load i64, ptr %i.bc, align 8, !tbaa !62
  %i.bd = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, label %bb.h, !prof !157

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i11, align 8, !tbaa !63
  %bcmp.i.i.i.i.i.i.i.i14 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i12, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i14, 0
  br i1 %i.be, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
  %i.bg = add i16 %.sroa.017.046.i, -1
  %i.bh = and i16 %i.bg, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bi = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %.not43.i = icmp eq i16 %i.bj, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit, !prof !89

bb.i:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.6.0.i
  br label %.split, !llvm.loop !156

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bf, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi18, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE12EqualElementIS7_EEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE12EqualElementIS7_EEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK6google8protobuf13json_internal12ResolverPool7Message9FindFieldEi(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 8 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 8                     ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp sgt i32 %i.b, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  %or.cond.i = select i1 %i.g, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = zext nneg i32 %i.b to i64                ; 5 uses
  %i.k = shl nuw nsw i64 %i.j, 5                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #29 ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false)
  store ptr %i.l, ptr %i.h, align 8, !tbaa !116
  %i.m = load ptr, ptr %0, align 8, !tbaa !33     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117
  %.fr13.i = freeze ptr %i.o                      ; 6 uses
  %i.p = ptrtoint ptr %.fr13.i to i64             ; 2 uses
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  %i.s = add i64 %i.p, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  br i1 %i.r, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i64 %i.j, 1
  %i.v = icmp eq i32 %i.b, 1
  br i1 %i.v, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.j, 2147483646
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter102 = and i64 %i.j, 3                  ; 3 uses
  %i.w = icmp ult i32 %i.b, 4
  br i1 %i.w, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter105 = and i64 %i.j, 2147483644
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %.011.us.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.am, %.lr.ph.split.us.i ] ; 5 uses
  %niter106 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter106.next.3, %.lr.ph.split.us.i ]
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.us.i ; 3 uses
  store ptr %i.m, ptr %i.x, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.fr13.i, ptr %i.y, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %0, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.us.i ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.m, ptr %i.ab, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %.fr13.i, ptr %i.ac, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %0, ptr %i.ad, align 8, !tbaa !118
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.us.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.m, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store ptr %.fr13.i, ptr %i.ag, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store ptr %0, ptr %i.ah, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.us.i ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  store ptr %i.m, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  store ptr %.fr13.i, ptr %i.ak, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  store ptr %0, ptr %i.al, align 8, !tbaa !118
  %i.am = add nuw nsw i64 %.011.us.i, 4           ; 2 uses
  %niter106.next.3 = add i64 %niter106, 4         ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %.lr.ph.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !119

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %.011.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.ba, %.lr.ph.split.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.i ; 3 uses
  store ptr %i.m, ptr %i.an, align 8, !tbaa !18
  %sext.i = shl i64 %.011.i, 32
  %i.ao = ashr exact i64 %sext.i, 29
  %i.ap = getelementptr inbounds i8, ptr %i.u, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !121
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %0, ptr %i.as, align 8, !tbaa !118
  %i.at = or disjoint i64 %.011.i, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.at ; 3 uses
  store ptr %i.m, ptr %i.au, align 8, !tbaa !18
  %sext.i.1 = shl i64 %i.at, 32
  %i.av = ashr exact i64 %sext.i.1, 29
  %i.aw = getelementptr inbounds i8, ptr %i.u, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !121
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %0, ptr %i.az, align 8, !tbaa !118
  %i.ba = add nuw nsw i64 %.011.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.loopexit96.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !119

.lr.ph.loopexit.unr-lcssa:                        ; preds = %.lr.ph.split.us.i
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.lr.ph, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.lr.ph.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.011.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.am, %.lr.ph.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter102, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %.011.us.i.epil = phi i64 [ %i.be, %.lr.ph.split.us.i.epil ], [ %.011.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.us.i.epil ; 3 uses
  store ptr %i.m, ptr %i.bb, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.fr13.i, ptr %i.bc, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %0, ptr %i.bd, align 8, !tbaa !118
  %i.be = add nuw nsw i64 %.011.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter102
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.lr.ph.split.us.i.epil, !llvm.loop !158

.lr.ph.loopexit96.unr-lcssa:                      ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.lr.ph.loopexit96.unr-lcssa, %.lr.ph.split.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %i.ba, %.lr.ph.loopexit96.unr-lcssa ] ; 2 uses
  %lcmp.mod101 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.i.epil.init ; 3 uses
  store ptr %i.m, ptr %i.bf, align 8, !tbaa !18
  %sext.i.epil = shl i64 %.011.i.epil.init, 32
  %i.bg = ashr exact i64 %sext.i.epil, 29
  %i.bh = getelementptr inbounds i8, ptr %i.u, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !121
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %0, ptr %i.bk, align 8, !tbaa !118
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.i.epil.preheader, %.lr.ph.loopexit96.unr-lcssa, %.lr.ph.loopexit.unr-lcssa, %.lr.ph.split.us.i.epil, %bb.d
  %i.bl = phi ptr [ %i.l, %.lr.ph.loopexit.unr-lcssa ], [ %i.i, %bb.d ], [ %i.l, %.lr.ph.split.us.i.epil ], [ %i.l, %.lr.ph.loopexit96.unr-lcssa ], [ %i.l, %.lr.ph.split.i.epil.preheader ] ; 4 uses
  %i.bm = sext i32 %i.b to i64
  %.idx = shl nsw i64 %i.bm, 5                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %i.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader, label %.lr.ph.split

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader: ; preds = %.lr.ph
  %i.bs = add nsw i64 %.idx, -32                  ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 5
  %i.bu = add nuw nsw i64 %i.bt, 1
  %xtraiter107 = and i64 %i.bu, 3                 ; 2 uses
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol
  %.01453.us.prol = phi ptr [ %spec.select.us.prol, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ], [ null, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ]
  %.01652.us.prol = phi ptr [ %i.ca, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ], [ %i.bl, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ], [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.01652.us.prol, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !13
  %i.bz = icmp eq i32 %i.by, %1
  %spec.select.us.prol = select i1 %i.bz, ptr %.01652.us.prol, ptr %.01453.us.prol ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01652.us.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter107
  br i1 %prol.iter.cmp.not, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol, !llvm.loop !159

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader
  %spec.select.us.lcssa.unr = phi ptr [ poison, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ], [ %spec.select.us.prol, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ]
  %.01453.us.unr = phi ptr [ null, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ], [ %spec.select.us.prol, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ]
  %.01652.us.unr = phi ptr [ %i.bl, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ], [ %i.ca, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ]
  %i.cb = icmp ult i64 %i.bs, 96
  br i1 %i.cb, label %.loopexit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us
  %.01453.us = phi ptr [ %spec.select.us.3, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us ], [ %.01453.us.unr, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit ]
  %.01652.us = phi ptr [ %i.cz, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us ], [ %.01652.us.unr, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit ] ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01652.us, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !13
  %i.cg = icmp eq i32 %i.cf, %1
  %spec.select.us = select i1 %i.cg, ptr %.01652.us, ptr %.01453.us
  %i.ch = getelementptr inbounds nuw i8, ptr %.01652.us, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.01652.us, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !13
  %i.cm = icmp eq i32 %i.cl, %1
  %spec.select.us.1 = select i1 %i.cm, ptr %i.ch, ptr %spec.select.us
  %i.cn = getelementptr inbounds nuw i8, ptr %.01652.us, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %.01652.us, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.cs = icmp eq i32 %i.cr, %1
  %spec.select.us.2 = select i1 %i.cs, ptr %i.cn, ptr %spec.select.us.1
  %i.ct = getelementptr inbounds nuw i8, ptr %.01652.us, i64 96
  %i.cu = getelementptr inbounds nuw i8, ptr %.01652.us, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !13
  %i.cy = icmp eq i32 %i.cx, %1
  %spec.select.us.3 = select i1 %i.cy, ptr %i.ct, ptr %spec.select.us.2 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01652.us, i64 128 ; 2 uses
  %.not.us.3 = icmp eq ptr %i.cz, %i.bn
  br i1 %.not.us.3, label %.loopexit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit
  %.01453 = phi ptr [ %spec.select, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit ], [ null, %.lr.ph ]
  %.01652 = phi ptr [ %i.fj, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit ], [ %i.bl, %.lr.ph ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01652, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !13 ; 6 uses
  %i.de = icmp eq i32 %i.dd, %1
  %spec.select = select i1 %i.de, ptr %.01652, ptr %.01453 ; 2 uses
  %i.df = load i64, ptr %i.bo, align 8, !tbaa !111, !noalias !160 ; 5 uses
  %i.dg = icmp ne i64 %i.df, 0
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp ult i64 %i.df, 2
  br i1 %i.dh, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph.split
  %i.di = load i64, ptr %i.bq, align 8, !tbaa !112, !noalias !167
  %.not.i.i.i.i.i = icmp ult i64 %i.di, 131072
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 131072, ptr %i.bq, align 8, !tbaa !62, !noalias !167
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread

bb.g:                                             ; preds = %bb.e
  %i.dj = load i32, ptr %i.bp, align 8, !tbaa !3, !noalias !167 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, %i.dd
  br i1 %i.dk, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dl = zext i32 %i.dj to i64
  %i.dm = xor i64 %i.dl, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dn = mul i64 %i.dm, 6679450291180483821
  %i.do = lshr i64 %i.dn, 56
  %i.dp = trunc nuw i64 %i.do to i8
  %i.dq = and i8 %i.dp, 127
  %i.dr = zext i32 %i.dd to i64
  %i.ds = xor i64 %i.dr, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dt = mul i64 %i.ds, -2543921745674291987
  %i.du = tail call noundef i64 @llvm.bswap.i64(i64 %i.dt)
  %i.dv = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.du, i8 noundef signext %i.dq), !noalias !167
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !13, !noalias !167
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.dv
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread

bb.i:                                             ; preds = %.lr.ph.split
  %i.dx = load ptr, ptr %i.bp, align 8, !tbaa !13, !noalias !170 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dx, i32 0, i32 1, i32 1), !noalias !170
  %i.dy = zext i32 %i.dd to i64
  %i.dz = xor i64 %i.dy, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ea = mul i64 %i.dz, -2543921745674291987
  %i.eb = tail call noundef i64 @llvm.bswap.i64(i64 %i.ea) ; 3 uses
  %i.ec = load i64, ptr %i.bq, align 8, !tbaa !112, !noalias !173
  %i.ed = and i64 %i.ec, 65535
  %i.ee = lshr i64 %i.eb, 7
  %i.ef = xor i64 %i.ed, %i.ee
  %i.eg = trunc i64 %i.eb to i8
  %i.eh = and i8 %i.eg, 127
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !13, !noalias !170 ; 2 uses
  %i.ei = insertelement <16 x i8> poison, i8 %i.eh, i64 0
  %i.ej = shufflevector <16 x i8> %i.ei, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.pn.i20 = phi i64 [ %i.ef, %bb.i ], [ %i.fh, %bb.k ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.i ], [ %i.fg, %bb.k ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i20, %i.df          ; 5 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ek, i32 0, i32 3, i32 1), !noalias !170
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.sroa.7.0.i
  %i.em = load <16 x i8>, ptr %i.el, align 1, !tbaa !13, !noalias !170 ; 2 uses
  %i.en = icmp eq <16 x i8> %i.ej, %i.em
  %i.eo = bitcast <16 x i1> %i.en to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.eo, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.j, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.ex, %.critedge.i ], [ %i.eo, %bb.j ] ; 3 uses
  %i.ep = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.eq = zext nneg i16 %i.ep to i64
  %i.er = add i64 %.sroa.7.0.i, %i.eq
  %i.es = and i64 %i.er, %i.df
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3, !noalias !170
  %i.ev = icmp eq i32 %i.eu, %i.dd
  br i1 %i.ev, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i21
  %i.ew = add i16 %.sroa.033.059.i, -1
  %i.ex = and i16 %i.ew, %.sroa.033.059.i         ; 2 uses
  %.not.i22 = icmp eq i16 %i.ex, 0
  br i1 %.not.i22, label %.critedge18.i, label %.lr.ph.i21

.critedge18.i:                                    ; preds = %.critedge.i, %bb.j
  %i.ey = icmp eq <16 x i8> %i.em, splat (i8 -128)
  %i.ez = bitcast <16 x i1> %i.ey to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.ez, 0
  br i1 %.not51.i, label %bb.k, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread38, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread38: ; preds = %.critedge18.i
  %i.fa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ez, i1 true)
  %i.fb = zext nneg i16 %i.fa to i64
  %i.fc = add i64 %.sroa.7.0.i, %i.fb
  %i.fd = and i64 %i.fc, %i.df
  %i.fe = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.eb, i64 %i.fd, i64 %.sroa.15.0.i), !noalias !170
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.br, align 8, !tbaa !13, !noalias !170
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.fe
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread

bb.k:                                             ; preds = %.critedge18.i
  %i.fg = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.fh = add i64 %i.fg, %.sroa.7.0.i
  br label %bb.j

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.f, %bb.h, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread38
  %.sroa.426.035 = phi ptr [ %i.ff, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread38 ], [ %i.bp, %bb.f ], [ %i.dw, %bb.h ] ; 2 uses
  store i32 %i.dd, ptr %.sroa.426.035, align 8, !tbaa !176
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.426.035, i64 8
  store ptr %.01652, ptr %i.fi, align 8, !tbaa !178
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit: ; preds = %.lr.ph.i21, %bb.g, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread
  %i.fj = getelementptr inbounds nuw i8, ptr %.01652, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.fj, %i.bn
  br i1 %.not, label %.loopexit, label %.lr.ph.split

bb.l:                                             ; preds = %bb.c
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !111 ; 4 uses
  %i.fm = icmp ne i64 %i.fl, 0
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp ult i64 %i.fl, 2
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  br i1 %i.fn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !3
  %i.fq = icmp eq i32 %i.fp, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.fo, 1
  %spec.select.i.i = select i1 %i.fq, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE4findIiEENSL_8iteratorERSI_.exit

bb.n:                                             ; preds = %bb.l
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !13 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.fr, i32 0, i32 1, i32 1)
  %i.fs = zext i32 %1 to i64
  %i.ft = xor i64 %i.fs, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.fu = mul i64 %i.ft, -2543921745674291987
  %i.fv = tail call noundef i64 @llvm.bswap.i64(i64 %i.fu) ; 2 uses
  %i.fw = and i64 %i.f, 65535
  %i.fx = lshr i64 %i.fv, 7
  %i.fy = xor i64 %i.fw, %i.fx
  %i.fz = trunc i64 %i.fv to i8
  %i.ga = and i8 %i.fz, 127
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !tbaa !13 ; 2 uses
  %i.gc = insertelement <16 x i8> poison, i8 %i.ga, i64 0
  %i.gd = shufflevector <16 x i8> %i.gc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pn.i6.i = phi i64 [ %i.fy, %bb.n ], [ %i.gw, %bb.q ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.n ], [ %i.gv, %bb.q ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.fl       ; 4 uses
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ge, i32 0, i32 3, i32 1)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.6.0.i.i
  %i.gg = load <16 x i8>, ptr %i.gf, align 1, !tbaa !13 ; 2 uses
  %i.gh = icmp eq <16 x i8> %i.gd, %i.gg
  %i.gi = bitcast <16 x i1> %i.gh to i16          ; 2 uses
  %.not45.i.i = icmp eq i16 %i.gi, 0
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.p
  %.sroa.017.046.i.i = phi i16 [ %i.gs, %bb.p ], [ %i.gi, %bb.o ] ; 3 uses
  %i.gj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i, i1 true)
  %i.gk = zext nneg i16 %i.gj to i64
  %i.gl = add i64 %.sroa.6.0.i.i, %i.gk
  %i.gm = and i64 %i.gl, %i.fl                    ; 2 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3
  %i.gp = icmp eq i32 %i.go, %1
  br i1 %i.gp, label %.thread32.i.i, label %bb.p, !prof !29

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.gm ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gq) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE10find_largeIiEENSL_8iteratorERSI_m.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.gr = add i16 %.sroa.017.046.i.i, -1
  %i.gs = and i16 %i.gr, %.sroa.017.046.i.i       ; 2 uses
  %.not.i.i17 = icmp eq i16 %i.gs, 0
  br i1 %.not.i.i17, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.o
  %i.gt = icmp eq <16 x i8> %i.gg, splat (i8 -128)
  %i.gu = bitcast <16 x i1> %i.gt to i16
  %.not43.i.i = icmp eq i16 %i.gu, 0
  br i1 %.not43.i.i, label %bb.q, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE10find_largeIiEENSL_8iteratorERSI_m.exit.i, !prof !89

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.gv = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.gw = add i64 %i.gv, %.sroa.6.0.i.i
  br label %bb.o, !llvm.loop !179

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE10find_largeIiEENSL_8iteratorERSI_m.exit.i: ; preds = %._crit_edge.i.i, %.thread32.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.gq, %.thread32.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.gn, %.thread32.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i18 = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i19 = insertvalue { ptr, ptr } %.fca.0.insert.i.i18, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE4findIiEENSL_8iteratorERSI_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE4findIiEENSL_8iteratorERSI_.exit: ; preds = %bb.m, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE10find_largeIiEENSL_8iteratorERSI_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i19, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE10find_largeIiEENSL_8iteratorERSI_m.exit.i ], [ %spec.select.i.i, %bb.m ] ; 2 uses
  %i.gx = extractvalue { ptr, ptr } %.pn.i, 0
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE4findIiEENSL_8iteratorERSI_.exit
  %i.gz = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !180
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us, %bb.r, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE4findIiEENSL_8iteratorERSI_.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE4findIiEENSL_8iteratorERSI_.exit ], [ %i.hb, %bb.r ], [ %spec.select.us.3, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us ], [ %spec.select.us.lcssa.unr, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit ], [ %spec.select, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE4findISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !111
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !112
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !13 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26   ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !63
  %i.i = icmp eq i64 %i.h, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEEvE5applyINS1_12raw_hash_setISJ_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSR_ESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS10_DpOS11_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.h)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEEvE5applyINS1_12raw_hash_setISJ_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSR_ESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS10_DpOS11_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEEvE5applyINS1_12raw_hash_setISJ_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSR_ESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS10_DpOS11_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13, !nonnull !88, !noundef !88
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !62 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  %i.p = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.q = add i64 %.sroa.0.0.copyload.i, 87
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !112, !noalias !182
  %i.u = and i64 %i.t, 65535
  %i.v = load i64, ptr %0, align 8, !tbaa !111, !noalias !182 ; 4 uses
  %i.w = lshr i64 %i.r, 7
  %i.x = xor i64 %i.u, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.r to i8
  %i.z = and i8 %i.y, 127
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !13  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ae, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.an, %bb.f ], [ %i.x, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.am, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.v      ; 4 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i.us
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !13 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ad, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.aj, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ak = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not43.i.us = icmp eq i16 %i.al, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit, !prof !89

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.am = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.an = add i64 %i.am, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !185

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.ax, %bb.g ], [ %i.aj, %.split.us ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i.us, %i.ap
  %i.ar = and i64 %i.aq, %i.v                     ; 2 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !26
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread32.i, label %bb.g, !prof !157

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.aw = add i16 %.sroa.017.046.i.us.us, -1
  %i.ax = and i16 %i.aw, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ax, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bt, %bb.i ], [ %i.x, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.v            ; 4 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !13 ; 2 uses
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
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !26
  %i.bk = icmp eq i64 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, label %bb.h, !prof !157

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !21
  %bcmp.i.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.bl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i11, 0
  br i1 %i.bm, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bo = add i16 %.sroa.017.046.i, -1
  %i.bp = and i16 %i.bo, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bq = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not43.i = icmp eq i16 %i.br, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit, !prof !89

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.6.0.i
  br label %.split, !llvm.loop !185

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEEvE5applyINS1_12raw_hash_setISJ_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSR_ESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS10_DpOS11_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEEvE5applyINS1_12raw_hash_setISJ_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSR_ESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS10_DpOS11_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE4findISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !111
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !112
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !13 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26   ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !63
  %i.i = icmp eq i64 %i.h, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEEvE5applyINS1_12raw_hash_setISJ_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSR_ESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS10_DpOS11_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.h)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEEvE5applyINS1_12raw_hash_setISJ_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSR_ESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS10_DpOS11_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEEvE5applyINS1_12raw_hash_setISJ_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSR_ESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS10_DpOS11_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13, !nonnull !88, !noundef !88
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !62 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  %i.p = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.q = add i64 %.sroa.0.0.copyload.i, 87
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !112, !noalias !186
  %i.u = and i64 %i.t, 65535
  %i.v = load i64, ptr %0, align 8, !tbaa !111, !noalias !186 ; 4 uses
  %i.w = lshr i64 %i.r, 7
  %i.x = xor i64 %i.u, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.r to i8
  %i.z = and i8 %i.y, 127
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !13  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ae, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.an, %bb.f ], [ %i.x, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.am, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.v      ; 4 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i.us
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !13 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ad, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.aj, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ak = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not43.i.us = icmp eq i16 %i.al, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit, !prof !89

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.am = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.an = add i64 %i.am, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !189

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.ax, %bb.g ], [ %i.aj, %.split.us ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i.us, %i.ap
  %i.ar = and i64 %i.aq, %i.v                     ; 2 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !26
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread32.i, label %bb.g, !prof !157

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.aw = add i16 %.sroa.017.046.i.us.us, -1
  %i.ax = and i16 %i.aw, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ax, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bt, %bb.i ], [ %i.x, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.v            ; 4 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !13 ; 2 uses
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
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !26
  %i.bk = icmp eq i64 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, label %bb.h, !prof !157

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !21
  %bcmp.i.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.bl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i11, 0
  br i1 %i.bm, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bo = add i16 %.sroa.017.046.i, -1
  %i.bp = and i16 %i.bo, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bq = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not43.i = icmp eq i16 %i.br, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit, !prof !89

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.6.0.i
  br label %.split, !llvm.loop !189

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_smallISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEEvE5applyINS1_12raw_hash_setISJ_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSR_ESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS10_DpOS11_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEEvE5applyINS1_12raw_hash_setISJ_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSR_ESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS10_DpOS11_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90     ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIN6google8protobuf13json_internal12ResolverPool4EnumEEclEPS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !112
  %i.i = and i64 %i.h, 65536
  %i.j = icmp ne i64 %i.i, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.c, ptr noundef %i.f, i64 noundef 24, i64 noundef 8, i1 noundef zeroext %i.j)
          to label %_ZNKSt14default_deleteIN6google8protobuf13json_internal12ResolverPool4EnumEEclEPS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNKSt14default_deleteIN6google8protobuf13json_internal12ResolverPool4EnumEEclEPS4_.exit: ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @_ZN6google8protobuf4EnumD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.m) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #30
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN6google8protobuf13json_internal12ResolverPool4EnumEEclEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal14UntypedMessage6DecodeERNS0_2io16CodedInputStreamESt8optionalIiE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 10 uses
  %5 = alloca %"class.google::protobuf::json_internal::UntypedMessage", align 8 ; 8 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %.sroa.0150.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.21.0 = phi ptr [ null, %bb.a ], [ %.sroa.21.2419, %.backedge ] ; 16 uses
  %.sroa.11.0 = phi ptr [ null, %bb.a ], [ %.sroa.11.2420, %.backedge ] ; 15 uses
  %.sroa.0136.0 = phi ptr [ null, %bb.a ], [ %.sroa.0136.2421, %.backedge ] ; 23 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !190    ; 3 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.i = icmp ult ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.g, align 1, !tbaa !13    ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.j, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.m, ptr %2, align 8, !tbaa !190
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %i.n = invoke noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %.0.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.05.i = phi i32 [ %i.k, %bb.d ], [ %i.n, %bb.e ] ; 4 uses
  store i32 %.05.i, ptr %i.d, align 8, !tbaa !196
  %i.o = icmp eq i32 %.05.i, 0
  br i1 %i.o, label %.critedge.thread.sink.split, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.h:                                             ; preds = %bb.f
  %i.q = lshr i32 %.05.i, 3                       ; 10 uses
  %i.r = and i32 %.05.i, 7                        ; 4 uses
  %i.s = icmp eq i32 %i.r, 4
  %i.t = icmp eq ptr %.sroa.0136.0, %.sroa.11.0   ; 3 uses
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.u = and i64 %3, 4294967296
  %.not169 = icmp eq i64 %i.u, 0
  br i1 %.not169, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_ZN6google8protobuf13json_internalL29MakeEndGroupWithoutGroupErrorEi(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %i.q)
          to label %.critedge.thread unwind label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.l:                                             ; preds = %bb.i
  %.not85 = icmp eq i32 %i.q, %.sroa.0150.0.extract.trunc
  br i1 %.not85, label %.critedge.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_ZN6google8protobuf13json_internalL25MakeEndGroupMismatchErrorEii(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %i.q, i32 noundef %.sroa.0150.0.extract.trunc)
          to label %.critedge.thread unwind label %bb.k

bb.n:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %1, align 8, !tbaa !197
  %i.x = invoke noundef ptr @_ZNK6google8protobuf13json_internal12ResolverPool7Message9FindFieldEi(ptr noundef nonnull align 8 dereferenceable(184) %i.w, i32 noundef %i.q)
          to label %bb.o unwind label %.loopexit  ; 8 uses

bb.o:                                             ; preds = %bb.n
  %i.y = icmp ne ptr %i.x, null
  %or.cond.not = and i1 %i.t, %i.y
  br i1 %or.cond.not, label %bb.av, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %i.r, label %.invoke [
    i32 0, label %bb.q
    i32 1, label %bb.u
    i32 5, label %bb.z
    i32 2, label %bb.ae
    i32 3, label %bb.al
    i32 4, label %bb.ar
  ]

.loopexit:                                        ; preds = %bb.n, %bb.aw, %bb.ay, %bb.ba, %bb.bc, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp:                               ; preds = %.invoke, %bb.as, %bb.au, %bb.bf, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.q:                                             ; preds = %bb.p
  %i.z = load ptr, ptr %2, align 8, !tbaa !190    ; 3 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.ab = icmp ult ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.r, label %bb.s, !prof !29

bb.r:                                             ; preds = %bb.q
  %i.ac = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.thread, label %bb.s

_ZN6google8protobuf2io16CodedInputStream12ReadVarint64EPm.exit.thread: ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ae, ptr %2, align 8, !tbaa !190
  br label %.backedge

bb.s:                                             ; preds = %bb.r, %bb.q
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13json_internal14UntypedMessage15DecodeDelimitedERNS0_2io16CodedInputStreamERKNS1_12ResolverPool5FieldE:bb.a
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal14UntypedMessageEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge83

.critedge83.critedge88:                           ; preds = %bb.ae
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal14UntypedMessageEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge83

.critedge83:                                      ; preds = %bb.ag, %bb.ah, %bb.ai, %.critedge83.critedge88, %.critedge83.critedge, %bb.d, %bb.aj, %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN6google8protobuf13json_internalL22MakeFieldNotGroupErrorEi(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !246
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %1 to i64
  %i.a = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.a, ptr %2, align 8, !tbaa !13, !noalias !246
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.b, align 8, !tbaa !207, !noalias !246
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.13, i64 30, ptr nonnull %2, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !246
  %i.c = load ptr, ptr %3, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.e, ptr %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !13
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !13
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIS2_EEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %9 = alloca %"class.std::vector.223", align 8   ; 12 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !249 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !256
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !256 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread68, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !256
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !256
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !259 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !259
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !262
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i52 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !259 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i52, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !259
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !259 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i52, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !259
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread68, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i53 = icmp eq i16 %i.be, 0
  br i1 %.not.i53, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread71, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread71: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !259
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !259
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread71
  %.sroa.555.064 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread71 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.555.064, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.555.064, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !275 ; 4 uses
  %i.br = load ptr, ptr %3, align 8, !tbaa !197, !noalias !275
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !197, !noalias !275
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEC2EOS1E_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bt) #25, !noalias !275
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 8, ptr %i.bu, align 8, !tbaa !278, !noalias !275
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bx, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.by = sext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !121
  invoke void %i.ca(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.bv)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !284
  br label %bb.z

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread68: ; preds = %.lr.ph.i, %bb.d
  %.sroa.555.065.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13
  %.not = icmp eq i32 %i.ce, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread68
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i64 43, ptr %7, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.21, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ch = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.cg)
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  store i64 %i.ck, ptr %8, align 8, !tbaa !212
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.cg, ptr %i.cl, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
  %i.cm = load ptr, ptr %6, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.co, ptr %i.cm)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !13
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !13
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aa

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread68
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.555.065.ph, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !280 ; 7 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %..thread_crit_edge, label %bb.p

..thread_crit_edge:                               ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread

bb.p:                                             ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dd, label %.thread [
    i8 8, label %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 17, label %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS4_EEJNS4_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES6_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr null, ptr noundef nonnull align 8 dereferenceable(40) %i.db)
          to label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit unwind label %bb.u

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !287 ; 4 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !290
  %.not.i.i36 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not.i.i36, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit
  %i.di = load ptr, ptr %3, align 8, !tbaa !197
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !197
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEC2EOS1E_(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %i.dk) #25
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !287
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store ptr %i.dm, ptr %i.de, align 8, !tbaa !287
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38

bb.r:                                             ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit
  invoke void @_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.dg, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38 unwind label %bb.u

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38: ; preds = %bb.q, %bb.r
  %i.dn = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEEaSIST_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEE18is_constructible_vIS11_SY_E15is_assignable_vIRS11_SY_EERSU_E4typeESZ_(ptr noundef nonnull align 8 dereferenceable(41) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %9) #25 ; 0 uses
  %i.do = load ptr, ptr %9, align 8, !tbaa !291   ; 3 uses
  %i.dp = load ptr, ptr %i.de, align 8, !tbaa !287 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.do, %i.dp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38, %_ZSt8_DestroyIN6google8protobuf13json_internal14UntypedMessageEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dt, %_ZSt8_DestroyIN6google8protobuf13json_internal14UntypedMessageEEvPT_.exit.i.i.i ], [ %i.do, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dq)
          to label %_ZSt8_DestroyIN6google8protobuf13json_internal14UntypedMessageEEvPT_.exit.i.i.i unwind label %bb.s, !inline_history !292

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #27, !inline_history !292
  unreachable

_ZSt8_DestroyIN6google8protobuf13json_internal14UntypedMessageEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, %i.dp
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !293

_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6google8protobuf13json_internal14UntypedMessageEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !291
  br label %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38
  %i.du = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.do, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exit.i
  %i.dv = load ptr, ptr %i.df, align 8, !tbaa !290
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIS2_EEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.ep, align 8, !tbaa !13, !noalias !300
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.eq, align 8, !tbaa !207, !noalias !300
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.es = inttoptr i64 %i.em to ptr
  store ptr %i.es, ptr %i.er, align 8, !tbaa !13, !noalias !300
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.et, align 8, !tbaa !207, !noalias !300
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !300
  %i.eu = load ptr, ptr %11, align 8, !tbaa !21
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.ew, ptr %i.eu)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.thread
  %i.ex = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.x
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !13
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #30
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit43

bb.y:                                             ; preds = %.thread
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.y
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !13
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit43: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.z

.critedge:                                        ; preds = %bb.w, %bb.v, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EED2Ev.exit
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !303
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit43, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.dz, %bb.u ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldINS2_4BoolEEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !306 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !313
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !313
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !313 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !313
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !313
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !316 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !316
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !319
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !316 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !316
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !316 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !316
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i70 = icmp eq i16 %i.be, 0
  br i1 %.not.i70, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !316
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !316
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !322 ; 3 uses
  %i.br = load i8, ptr %3, align 1, !tbaa !214, !noalias !322
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !325, !noalias !322
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 0, ptr %i.bs, align 8, !tbaa !278, !noalias !322
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !327
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100: ; preds = %.lr.ph.i, %bb.d
  %.sroa.586.097.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EED2Ev.exit49

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.586.097.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread121_crit_edge, label %bb.p

..thread121_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread121

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.db, label %.thread121 [
    i8 0, label %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
    i8 9, label %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i8, ptr %i.cz, align 8, !tbaa !214
  %i.dd = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %3, align 1, !tbaa !214
  store i8 %i.df, ptr %i.de, align 1, !tbaa !214
  store i8 %i.dc, ptr %i.dd, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 2 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 9, label %_ZSt3getILm9EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm9EJSD_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm9EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !331 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !333
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !331
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !334
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !333
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm9EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !335

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm9EJSD_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm9EJSD_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !331
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !334
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !333
  store i8 9, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !334 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !333
  %.not.i.i53 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i53, label %bb.u, label %bb.t

end_hunk_2
begin_hunk_3_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldINS2_4BoolEEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.eu = sext i8 %i.er to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !339
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.ev = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.ev, ptr %4, align 8, !tbaa !13, !noalias !339
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ew, align 8, !tbaa !207, !noalias !339
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.ex, align 8, !tbaa !13, !noalias !339
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ey, align 8, !tbaa !207, !noalias !339
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fa = inttoptr i64 %i.eu to ptr
  store ptr %i.fa, ptr %i.ez, align 8, !tbaa !13, !noalias !339
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fb, align 8, !tbaa !207, !noalias !339
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !339
  %i.fc = load ptr, ptr %11, align 8, !tbaa !21
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fe, ptr %i.fc)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread121
  %i.ff = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.y
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !13
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #30
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit60

bb.z:                                             ; preds = %.thread121
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !13
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EED2Ev.exit49

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit60: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i59, %bb.t, %_ZSt3getILm9EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm9EJSD_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !342
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit60, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIRjEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !345 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !352
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !352
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !352 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !352
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !352
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !355 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !355
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !358
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i63 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !355 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i63, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !355
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !355 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i63, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !355
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i64 = icmp eq i16 %i.be, 0
  br i1 %.not.i64, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !355
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !355
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97
  %.sroa.580.090 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.580.090, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.580.090, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !361 ; 3 uses
  %i.br = load i32, ptr %3, align 4, !tbaa !3, !noalias !361
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !364, !noalias !361
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 2, ptr %i.bs, align 8, !tbaa !278, !noalias !361
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !366
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94: ; preds = %.lr.ph.i, %bb.d
  %.sroa.580.091.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.580.091.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread115_crit_edge, label %bb.p

..thread115_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread115

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.db, label %.thread115 [
    i8 2, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
    i8 11, label %_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i32, ptr %i.cz, align 8, !tbaa !3
  %i.dd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.df, ptr %i.de, align 4, !tbaa !3
  store i32 %i.dc, ptr %i.dd, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 11, label %_ZSt3getILm11EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm11EJSH_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm11EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !369 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !372
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !369
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !373
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !372
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm11EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !374

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm11EJSH_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm11EJSH_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !369
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !373
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !372
  store i8 11, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !373 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !372
  %.not.i47 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i47, label %bb.u, label %bb.t

end_hunk_3
begin_hunk_4_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIRjEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !380
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !380
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !380
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !380
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !380
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !380
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !380
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !380
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread115
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit54

bb.z:                                             ; preds = %.thread115
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

_ZNSt6vectorIjSaIjEE9push_backERKj.exit54:        ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i53, %bb.t, %_ZSt3getILm11EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm11EJSH_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !383
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit54, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit43:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIiEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !386 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !393
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !393
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !393 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !393
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !393
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !396 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !396
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !399
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !396 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !396
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !396 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !396
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i70 = icmp eq i16 %i.be, 0
  br i1 %.not.i70, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !396
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !396
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !402 ; 3 uses
  %i.br = load i32, ptr %3, align 4, !tbaa !3, !noalias !402
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !405, !noalias !402
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 1, ptr %i.bs, align 8, !tbaa !278, !noalias !402
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !407
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100: ; preds = %.lr.ph.i, %bb.d
  %.sroa.586.097.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit49

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.586.097.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread121_crit_edge, label %bb.p

..thread121_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread121

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.db, label %.thread121 [
    i8 1, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
    i8 10, label %_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i32, ptr %i.cz, align 8, !tbaa !3
  %i.dd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.df, ptr %i.de, align 4, !tbaa !3
  store i32 %i.dc, ptr %i.dd, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 10, label %_ZSt3getILm10EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm10EJSF_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm10EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !410 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !412
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !410
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !413
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !412
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm10EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !414

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm10EJSF_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm10EJSF_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !410
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !413
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !412
  store i8 10, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !413 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !412
  %.not.i.i53 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i53, label %bb.u, label %bb.t

end_hunk_4
begin_hunk_5_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIiEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !418
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !418
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !418
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !418
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !418
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !418
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !418
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !418
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread121
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit60

bb.z:                                             ; preds = %.thread121
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit49

_ZNSt6vectorIiSaIiEE9push_backEOi.exit60:         ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i59, %bb.t, %_ZSt3getILm10EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm10EJSF_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !421
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit60, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit49:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIRmEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !424 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !431
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !431
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !431 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !431
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !431
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !434 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !434
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !437
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i63 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !434 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i63, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !434
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !434 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i63, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !434
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i64 = icmp eq i16 %i.be, 0
  br i1 %.not.i64, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !434
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !434
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97
  %.sroa.580.090 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.580.090, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.580.090, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !440 ; 3 uses
  %i.br = load i64, ptr %3, align 8, !tbaa !62, !noalias !440
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !443, !noalias !440
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 4, ptr %i.bs, align 8, !tbaa !278, !noalias !440
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !445
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94: ; preds = %.lr.ph.i, %bb.d
  %.sroa.580.091.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit43

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.580.091.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread115_crit_edge, label %bb.p

..thread115_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread115

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.db, label %.thread115 [
    i8 4, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
    i8 13, label %_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !62
  %i.dd = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %3, align 8, !tbaa !62
  store i64 %i.df, ptr %i.de, align 8, !tbaa !62
  store i64 %i.dc, ptr %i.dd, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 13, label %_ZSt3getILm13EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm13EJSL_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm13EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !448 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !451
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !448
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !452
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !451
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm13EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !453

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm13EJSL_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm13EJSL_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !448
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !452
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !451
  store i8 13, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !452 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !451
  %.not.i47 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i47, label %bb.u, label %bb.t

end_hunk_5
begin_hunk_6_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIRmEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !457
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !457
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !457
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !457
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !457
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !457
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !457
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !457
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread115
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorImSaImEE9push_backERKm.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit54

bb.z:                                             ; preds = %.thread115
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit43

_ZNSt6vectorImSaImEE9push_backERKm.exit54:        ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53, %bb.t, %_ZSt3getILm13EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm13EJSL_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !460
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit54, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorImSaImEED2Ev.exit43:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIlEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !463 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !470
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !470
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !470 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !470
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !470
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !473 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !473
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !476
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !473 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !473
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !473 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !473
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i70 = icmp eq i16 %i.be, 0
  br i1 %.not.i70, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !473
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !473
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !479 ; 3 uses
  %i.br = load i64, ptr %3, align 8, !tbaa !62, !noalias !479
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !482, !noalias !479
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 3, ptr %i.bs, align 8, !tbaa !278, !noalias !479
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !484
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100: ; preds = %.lr.ph.i, %bb.d
  %.sroa.586.097.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit49

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.586.097.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread121_crit_edge, label %bb.p

..thread121_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread121

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.db, label %.thread121 [
    i8 3, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
    i8 12, label %_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !62
  %i.dd = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %3, align 8, !tbaa !62
  store i64 %i.df, ptr %i.de, align 8, !tbaa !62
  store i64 %i.dc, ptr %i.dd, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 12, label %_ZSt3getILm12EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm12EJSJ_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm12EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !487 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !489
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !487
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !490
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !489
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm12EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !491

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm12EJSJ_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm12EJSJ_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !487
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !490
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !489
  store i8 12, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !490 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !489
  %.not.i.i53 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i53, label %bb.u, label %bb.t

end_hunk_6
begin_hunk_7_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIlEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !495
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !495
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !495
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !495
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !495
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !495
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !495
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !495
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread121
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit60

bb.z:                                             ; preds = %.thread121
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit49

_ZNSt6vectorIlSaIlEE9push_backEOl.exit60:         ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i59, %bb.t, %_ZSt3getILm12EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm12EJSJ_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !498
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit60, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIlSaIlEED2Ev.exit49:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIdEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !501 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !508
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !508
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !508 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !508
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !508
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !511 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !511
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !514
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !511 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !511
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !511 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !511
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i70 = icmp eq i16 %i.be, 0
  br i1 %.not.i70, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !511
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !511
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !517 ; 3 uses
  %i.br = load double, ptr %3, align 8, !tbaa !225, !noalias !517
  store double %i.br, ptr %i.bq, align 8, !tbaa !520, !noalias !517
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 6, ptr %i.bs, align 8, !tbaa !278, !noalias !517
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !522
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100: ; preds = %.lr.ph.i, %bb.d
  %.sroa.586.097.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit49

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.586.097.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread121_crit_edge, label %bb.p

..thread121_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread121

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.db, label %.thread121 [
    i8 6, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
    i8 15, label %_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !225
  %i.dd = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load double, ptr %3, align 8, !tbaa !225
  store double %i.df, ptr %i.de, align 8, !tbaa !225
  store i64 %i.dc, ptr %i.dd, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 15, label %_ZSt3getILm15EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm15EJSP_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm15EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !525 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !528
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !525
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !529
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !528
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm15EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !530

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm15EJSP_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm15EJSP_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !525
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !529
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !528
  store i8 15, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !529 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !528
  %.not.i.i53 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i53, label %bb.u, label %bb.t

end_hunk_7
begin_hunk_8_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIdEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !534
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !534
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !534
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !534
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !534
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !534
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !534
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !534
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread121
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit60

bb.z:                                             ; preds = %.thread121
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit49

_ZNSt6vectorIdSaIdEE9push_backEOd.exit60:         ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i59, %bb.t, %_ZSt3getILm15EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm15EJSP_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !537
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit60, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit49:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIfEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !540 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !547
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !547
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !547 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !547
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !547
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !550 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !550
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !553
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !550 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !550
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !550 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !550
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i70 = icmp eq i16 %i.be, 0
  br i1 %.not.i70, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !550
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !550
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !556 ; 3 uses
  %i.br = load float, ptr %3, align 4, !tbaa !233, !noalias !556
  store float %i.br, ptr %i.bq, align 4, !tbaa !559, !noalias !556
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 5, ptr %i.bs, align 8, !tbaa !278, !noalias !556
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !561
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100: ; preds = %.lr.ph.i, %bb.d
  %.sroa.586.097.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.586.097.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread121_crit_edge, label %bb.p

..thread121_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread121

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.db, label %.thread121 [
    i8 5, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
    i8 14, label %_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i32, ptr %i.cz, align 8, !tbaa !233
  %i.dd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load float, ptr %3, align 4, !tbaa !233
  store float %i.df, ptr %i.de, align 4, !tbaa !233
  store i32 %i.dc, ptr %i.dd, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 14, label %_ZSt3getILm14EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm14EJSN_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm14EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !564 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !567
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !564
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !568
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !567
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm14EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !569

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm14EJSN_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm14EJSN_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !564
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !568
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !567
  store i8 14, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !568 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !567
  %.not.i.i53 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i53, label %bb.u, label %bb.t

end_hunk_8
begin_hunk_9_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIfEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread121
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit60

bb.z:                                             ; preds = %.thread121
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49

_ZNSt6vectorIfSaIfEE9push_backEOf.exit60:         ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i59, %bb.t, %_ZSt3getILm14EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm14EJSN_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !576
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit60, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit49:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN6google8protobuf13json_internalL16MakeTooDeepErrorEv(ptr dead_on_unwind noalias writable align 8 %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 22, ptr nonnull @.str.14)
  ret void
}

declare noundef i32 @_ZN6google8protobuf2io16CodedInputStream22ReadLengthAndPushLimitEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream10ReadStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef) local_unnamed_addr #10

declare noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #10

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN6google8protobuf13json_internalL19MakeProto3Utf8ErrorEv(ptr dead_on_unwind noalias writable align 8 %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 28, ptr nonnull @.str.15)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %9 = alloca %"class.std::vector.218", align 8   ; 12 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !579 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !586
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !586
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !586 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread72, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !586
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !586
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !589 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !589
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !592
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i56 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !589 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i56, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !589
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !589 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i56, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !589
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread72, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i57 = icmp eq i16 %i.be, 0
  br i1 %.not.i57, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread75, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread75: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !589
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !589
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread75
  %.sroa.559.068 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread75 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.559.068, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.559.068, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !595 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !64, !noalias !595
  %i.bs = load ptr, ptr %3, align 8, !tbaa !21, !noalias !595 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !26, !noalias !595 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false), !noalias !595
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !21, !noalias !595
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !13, !noalias !595
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !13, !noalias !595
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !26, !noalias !595
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.ca = phi i64 [ %i.bw, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !26, !noalias !595
  store ptr %i.bt, ptr %3, align 8, !tbaa !21, !noalias !595
  store i64 0, ptr %i.cb, align 8, !tbaa !26, !noalias !595
  store i8 0, ptr %i.bt, align 8, !tbaa !13, !noalias !595
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 7, ptr %i.cd, align 8, !tbaa !278, !noalias !595
  %i.ce = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cg, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.l, !prof !89

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ch = sext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !121
  invoke void %i.cj(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.ce)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.m, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.m:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.k, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %bb.j
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !598
  br label %bb.ac

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread72: ; preds = %.lr.ph.i, %bb.d
  %.sroa.559.069.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cn, 3
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i64 43, ptr %7, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.21, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.cq = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.cp)
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %8, align 8, !tbaa !212
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.cp, ptr %i.cu, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
  %i.cv = load ptr, ptr %6, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cx, ptr %i.cv)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cy = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !13
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.p
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !13
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ad

bb.q:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread72
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.559.069.ph, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !280 ; 7 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %..thread_crit_edge, label %bb.r

..thread_crit_edge:                               ; preds = %bb.q
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dm, label %.thread [
    i8 7, label %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 16, label %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.dk)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.w

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !601 ; 7 uses
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !604
  %.not.i.i36 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i.i36, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !64
  %i.ds = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !26 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, 16
  call void @llvm.assume(i1 %i.dx)
  %i.dy = add nuw nsw i64 %i.dw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dr, ptr noundef nonnull align 8 dereferenceable(1) %i.dt, i64 %i.dy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37: ; preds = %bb.s
  store ptr %i.ds, ptr %i.dp, align 8, !tbaa !21
  %i.dz = load i64, ptr %i.dt, align 8, !tbaa !13
  store i64 %i.dz, ptr %i.dr, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37, %bb.t
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_St6vectorISC_SaISC_EESJ_IiSaIiEESJ_IjSaIjEESJ_IlSaIlEESJ_ImSaImEESJ_IfSaIfEESJ_IdSaIdEESJ_ISI_SaISI_EESJ_ISB_SaISB_EEEESt14default_deleteIS12_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS15_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJS1J_S1K_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE:bb.a

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St6vectorISB_SaISB_EESI_IiSaIiEESI_IjSaIjEESI_IlSaIlEESI_ImSaImEESI_IfSaIfEESI_IdSaIdEESI_ISH_SaISH_EESI_ISA_SaISA_EEEESt14default_deleteIS11_EEEENS1_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS14_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JS1I_S1J_EENSt13invoke_resultIT_JDpT0_EE4typeEOS1O_DpOS1P_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEEEclEPSV_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare i32 @utf8_range_IsValid(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14UntypedMessageEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !27     ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !27
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !27
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal14UntypedMessageEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS9_OT_EE5valueEiE4typeELi0EEESD_.exit, !prof !89

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal14UntypedMessageEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS9_OT_EE5valueEiE4typeELi0EEESD_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #25
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal14UntypedMessageEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS9_OT_EE5valueEiE4typeELi0EEESD_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

declare void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEC2EOS1E_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"struct.absl::lts_20250512::container_internal::HeapPtrs", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.a = load i64, ptr %1, align 8, !tbaa !111    ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, 131071
  %i.f = select i1 %i.c, i1 %.not.i.i, i1 false
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.513.0 = phi i64 [ %i.e, %bb.b ], [ 131072, %bb.a ]
  store i64 %i.a, ptr %0, align 8
  %.sroa.513.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.513.0, ptr %.sroa.513.0..sroa_idx14, align 8
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.g = load i64, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.h = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp ult i64 %i.g, 2
  %i.j = load i64, ptr %i.d, align 8
  %.not.i.i10 = icmp ugt i64 %i.j, 131071
  %i.k = select i1 %i.i, i1 %.not.i.i10, i1 false
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !265
  store i32 %i.m, ptr %.sroa.6.0..sroa_idx16, align 8, !tbaa !265
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !280
  store i64 %i.p, ptr %i.n, align 8, !tbaa !280
  store ptr null, ptr %i.o, align 8, !tbaa !280
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 1, ptr %1, align 8
  store i64 0, ptr %i.d, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 1) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE30find_or_prepare_insert_non_sooINSt7__cxx1112basic_stringIcS6_SaIcEEEEESI_INSM_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, 87
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !633
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %1, align 8, !tbaa !111, !noalias !633 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.k, %i.m
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = load ptr, ptr %2, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.aw, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.av, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.l                 ; 5 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.0
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !13 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.t, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ab, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ak, %.critedge ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.7.0, %i.ad
  %i.af = and i64 %i.ae, %i.l                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.af ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !62
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !63
  %i.ah = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %i.v
  br i1 %i.ah, label %bb.c, label %.critedge, !prof !157

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.w, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %i.u, i64 %i.v)
  %i.ai = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.aj = add i16 %.sroa.033.059, -1
  %i.ak = and i16 %i.aj, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ak, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.al = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.am, 0
  br i1 %.not51, label %bb.d, label %.thread, !prof !89

.thread:                                          ; preds = %.critedge18
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = add i64 %.sroa.7.0, %i.ao
  %i.aq = and i64 %i.ap, %i.l
  %i.ar = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.aq, i64 %.sroa.15.0) ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ar
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.av = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.aw = add i64 %i.av, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.at, %.thread ], [ %i.ax, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.au, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ay, align 8, !tbaa !134
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.c = zext i32 %.0.copyload.i.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.0.copyload.i4.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i4.i to i64
  %i.h = or disjoint i64 %i.d, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !89

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #20

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEEEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !62 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !63
  %i.a = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload)
  %i.b = add i64 %.sroa.0.0.copyload, 87
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm24EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #17 comdat {
bb.a:
  %i.a = mul i64 %3, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !89

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #29
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSS_PFvSS_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !111    ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !112
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.063 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSR_PFvSR_hmmE:bb.a
  %i.ak = and i64 %i.ah, 15
  %i.al = add nuw nsw i64 %i.ak, %i.ae
  %i.am = and i64 %i.al, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ae, %i.b
  %.not.i = icmp ult i64 %i.an, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %i.ae, %i.a                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1, !tbaa !13
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.as, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !89

bb.g:                                             ; preds = %bb.f
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add nuw nsw i64 %i.ao, %i.au
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ag, i64 noundef %i.w, i64 noundef %i.ae)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.av, %bb.g ], [ %i.am, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.ag, ptr %i.aw, align 1, !tbaa !637
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ax, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.ay = add i16 %.sroa.054.061, -1
  %i.az = and i16 %i.ay, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.az, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIN6google8protobuf13json_internal12ResolverPool7MessageEEclEPS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !111  ; 3 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = load i64, ptr %i.h, align 8, !tbaa !112
  %i.j = and i64 %i.i, 65536
  %i.k = icmp ne i64 %i.j, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.c, ptr noundef %i.g, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.k)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #27
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !111  ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.t = load i64, ptr %i.s, align 8, !tbaa !112
  %i.u = and i64 %i.t, 65536
  %i.v = icmp ne i64 %i.u, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.o, ptr noundef %i.r, i64 noundef 24, i64 noundef 8, i1 noundef zeroext %i.v)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #27
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEED2Ev.exit.i: ; preds = %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEED2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN6google8protobuf13json_internal12ResolverPool7MessageD2Ev.exit, label %_ZNKSt14default_deleteIA_N6google8protobuf13json_internal12ResolverPool5FieldEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i

_ZNKSt14default_deleteIA_N6google8protobuf13json_internal12ResolverPool5FieldEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #30
  br label %_ZN6google8protobuf13json_internal12ResolverPool7MessageD2Ev.exit

_ZN6google8protobuf13json_internal12ResolverPool7MessageD2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEED2Ev.exit.i, %_ZNKSt14default_deleteIA_N6google8protobuf13json_internal12ResolverPool5FieldEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6google8protobuf4TypeD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.aa) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 184) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf13json_internal12ResolverPool7MessageD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE30find_or_prepare_insert_non_sooIS9_EESM_INSQ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.61") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, 87
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !640
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %1, align 8, !tbaa !111, !noalias !640 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.k, %i.m
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = load ptr, ptr %2, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.az, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.l                 ; 5 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.0
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !13 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.t, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ab, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.an, %.critedge ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.7.0, %i.ad
  %i.af = and i64 %i.ae, %i.l                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ak = icmp eq i64 %i.aj, %i.v
  br i1 %i.ak, label %bb.c, label %.critedge, !prof !157

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.w, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.u, i64 %i.v)
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.am = add i16 %.sroa.033.059, -1
  %i.an = and i16 %i.am, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ao = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ap, 0
  br i1 %.not51, label %bb.d, label %.thread, !prof !89

.thread:                                          ; preds = %.critedge18
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.ay = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bb, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEEvE28hash_slot_fn_non_type_erasedINS1_10StringHashEEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.a, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE19transfer_n_slots_fnEPvSR_SR_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit
  %.014 = phi i64 [ %i.w, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.y, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit ], [ %1, %bb.a ] ; 8 uses
  %.01012 = phi ptr [ %i.x, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit ], [ %2, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 3 uses
  store ptr %i.b, ptr %.0913, align 8, !tbaa !64
  %i.c = load ptr, ptr %.01012, align 8, !tbaa !21 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.e, ptr %i.a, align 8, !tbaa !62
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.0913, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %.0913, align 8, !tbaa !21
  %i.h = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.h, ptr %i.b, align 8, !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i.i.i.i.i.i.i ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !13
  store i8 %i.j, ptr %i.i, align 1, !tbaa !13
  br label %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = load ptr, ptr %.0913, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.o = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.01012, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30
  store i64 %i.q, ptr %i.o, align 8, !tbaa !30
  store ptr null, ptr %i.p, align 8, !tbaa !30
  %i.r = load ptr, ptr %.01012, align 8, !tbaa !21 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !13
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #30
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.w = add i64 %.014, -1                        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01012, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !643

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSW_PFvSW_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !111    ; 4 uses
  %i.c = lshr i64 %i.b, 1                         ; 4 uses
  %i.d = and i64 %i.b, 30
  %i.e = icmp eq i64 %i.d, 30
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112
  %i.k = and i64 %i.j, 65535
  %i.l = and i64 %i.c, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.063 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.063
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.063 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.o, i8 -128, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.q, i8 -128, i64 16, i1 false)
  %i.r = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not61 = icmp eq i16 %i.s, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit, %bb.c
  %i.t = add nuw i64 %.063, 16                    ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.c
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !644

.lr.ph:                                           ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit
  %.sroa.055.062 = phi i16 [ %i.eg, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit ], [ %i.s, %bb.c ] ; 3 uses
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.055.062, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = or disjoint i64 %.063, %i.w              ; 4 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.x ; 6 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 14 uses
  %i.ac = icmp ult i64 %i.ab, 9
  br i1 %i.ac, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.ad = icmp samesign ugt i64 %i.ab, 3
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i = load i32, ptr %i.z, align 1
  %i.ae = zext i32 %.0.copyload.i.i.i to i64
  %i.af = shl nuw i64 %i.ae, 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.ah, align 1
  %i.ai = zext i32 %.0.copyload.i4.i.i to i64
  %i.aj = or disjoint i64 %i.af, %i.ai
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.z, align 1, !tbaa !13
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = getelementptr i8, ptr %i.z, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.am, %i.aq
  %i.as = lshr i64 %i.ab, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = or disjoint i64 %i.ar, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.ax, %bb.g ]
  %i.ay = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.az = mul i64 %i.ay, -2543921745674291987
  %i.ba = call noundef i64 @llvm.bswap.i64(i64 %i.az)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.i:                                             ; preds = %.lr.ph
  %i.bb = icmp ult i64 %i.ab, 17
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSW_PFvSW_hmmE:bb.a
  %i.cm = trunc i128 %i.cl to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.o:                                             ; preds = %bb.m
  %i.cn = call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.z, i64 noundef %i.ab)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cn, %bb.o ], [ %i.bl, %bb.j ], [ %i.cf, %bb.l ], [ %i.cm, %bb.n ], [ %i.ba, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.co = add i64 %i.ab, 87
  %i.cp = add i64 %i.co, %.0.i                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 7
  %i.cr = xor i64 %i.cq, %i.k                     ; 5 uses
  %i.cs = trunc i64 %i.cp to i8
  %i.ct = and i8 %i.cs, 127                       ; 2 uses
  %i.cu = sub i64 %i.x, %i.cr                     ; 2 uses
  %i.cv = and i64 %i.l, %i.cu
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %bb.q, !prof !29

bb.p:                                             ; preds = %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit
  %i.cx = and i64 %i.cu, 15
  %i.cy = add nuw nsw i64 %i.cx, %i.cr
  %i.cz = and i64 %i.cy, %i.b
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.q:                                             ; preds = %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit
  %i.da = and i64 %i.cr, %i.c
  %.not.i = icmp ult i64 %i.da, %i.x
  br i1 %.not.i, label %bb.r, label %bb.t, !prof !29

bb.r:                                             ; preds = %bb.q
  %i.db = and i64 %i.cr, %i.b                     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.db
  %i.dd = load <16 x i8>, ptr %i.dc, align 1, !tbaa !13
  %i.de = icmp slt <16 x i8> %i.dd, zeroinitializer
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.df, 0
  br i1 %.not26.i, label %bb.t, label %bb.s, !prof !89

bb.s:                                             ; preds = %bb.r
  %i.dg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.df, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = add nuw nsw i64 %i.db, %i.dh
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.t:                                             ; preds = %bb.r, %bb.q
  call void %4(ptr noundef %3, i8 noundef zeroext %i.ct, i64 noundef %i.x, i64 noundef %i.cr)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.s, %bb.p
  %.2.i = phi i64 [ %i.di, %bb.s ], [ %i.cz, %bb.p ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 %.2.i
  store i8 %i.ct, ptr %i.dj, align 1, !tbaa !637
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !64
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.dn = load i64, ptr %i.aa, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.dn, ptr %i.a, align 8, !tbaa !62
  %i.do = icmp ugt i64 %i.dn, 15
  br i1 %i.do, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  %i.dp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !21
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.dq, ptr %i.dl, align 8, !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  %i.dr = phi ptr [ %i.dp, %.noexc.i.i.i.i.i.i.i.i.i ], [ %i.dl, %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit ] ; 2 uses
  switch i64 %i.dn, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ds = load i8, ptr %i.dm, align 1, !tbaa !13
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !13
  br label %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dm, i64 %i.dn, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !26
  %i.dv = load ptr, ptr %i.dk, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt
  store i8 0, ptr %i.dw, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !30
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !30
  store ptr null, ptr %i.dy, align 8, !tbaa !30
  %i.ea = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !13
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #30
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.t
  %i.ef = add i16 %.sroa.055.062, -1
  %i.eg = and i16 %i.ef, %.sroa.055.062           ; 2 uses
  %.not = icmp eq i16 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE30find_or_prepare_insert_non_sooIS9_EESM_INSQ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.80") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, 87
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !645
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %1, align 8, !tbaa !111, !noalias !645 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.k, %i.m
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = load ptr, ptr %2, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.az, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.l                 ; 5 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.0
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !13 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.t, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ab, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.an, %.critedge ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.7.0, %i.ad
  %i.af = and i64 %i.ae, %i.l                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ak = icmp eq i64 %i.aj, %i.v
  br i1 %i.ak, label %bb.c, label %.critedge, !prof !157

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.w, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.u, i64 %i.v)
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.am = add i16 %.sroa.033.059, -1
  %i.an = and i16 %i.am, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ao = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ap, 0
  br i1 %.not51, label %bb.d, label %.thread, !prof !89

.thread:                                          ; preds = %.critedge18
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.ay = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bb, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEEvE28hash_slot_fn_non_type_erasedINS1_10StringHashEEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.a, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE19transfer_n_slots_fnEPvSR_SR_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::allocator.328", align 1 ; 3 uses
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit
  %.014 = phi i64 [ %i.r, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.t, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit ], [ %1, %bb.a ] ; 8 uses
  %.01012 = phi ptr [ %i.s, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit ], [ %2, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 3 uses
  store ptr %i.b, ptr %.0913, align 8, !tbaa !64
  %i.c = load ptr, ptr %.01012, align 8, !tbaa !21 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.e, ptr %i.a, align 8, !tbaa !62
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.0913, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %.0913, align 8, !tbaa !21
  %i.h = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.h, ptr %i.b, align 8, !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i.i.i.i.i.i.i ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !13
  store i8 %i.j, ptr %i.i, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = load ptr, ptr %.0913, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.o = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.01012, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !90
  store i64 %i.q, ptr %i.o, align 8, !tbaa !90
  store ptr null, ptr %i.p, align 8, !tbaa !90
  call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISE_EEE7destroyISaISt4pairIKS8_SH_EEEEDaPT_PNS1_13map_slot_typeIS8_SH_EE(ptr noundef nonnull %4, ptr noundef nonnull %.01012)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.r = add i64 %.014, -1                        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01012, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !648

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8transferEPNS1_13map_slot_typeIS9_SI_EEST_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSW_PFvSW_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !111    ; 4 uses
  %i.c = lshr i64 %i.b, 1                         ; 4 uses
  %i.d = and i64 %i.b, 30
  %i.e = icmp eq i64 %i.d, 30
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112
  %i.k = and i64 %i.j, 65535
  %i.l = and i64 %i.c, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.064 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.064
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.064 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.o, i8 -128, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.q, i8 -128, i64 16, i1 false)
  %i.r = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not62 = icmp eq i16 %i.s, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISE_EEE7destroyISaISt4pairIKS8_SH_EEEEDaPT_PNS1_13map_slot_typeIS8_SH_EE.exit, %bb.c
  %i.t = add nuw i64 %.064, 16                    ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.c
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !649

.lr.ph:                                           ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISE_EEE7destroyISaISt4pairIKS8_SH_EEEEDaPT_PNS1_13map_slot_typeIS8_SH_EE.exit
  %.sroa.055.063 = phi i16 [ %i.eg, %_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISE_EEE7destroyISaISt4pairIKS8_SH_EEEEDaPT_PNS1_13map_slot_typeIS8_SH_EE.exit ], [ %i.s, %bb.c ] ; 3 uses
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.055.063, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = or disjoint i64 %.064, %i.w              ; 4 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.x ; 6 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 14 uses
  %i.ac = icmp ult i64 %i.ab, 9
  br i1 %i.ac, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.ad = icmp samesign ugt i64 %i.ab, 3
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i = load i32, ptr %i.z, align 1
  %i.ae = zext i32 %.0.copyload.i.i.i to i64
  %i.af = shl nuw i64 %i.ae, 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.ah, align 1
  %i.ai = zext i32 %.0.copyload.i4.i.i to i64
  %i.aj = or disjoint i64 %i.af, %i.ai
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.z, align 1, !tbaa !13
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = getelementptr i8, ptr %i.z, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.am, %i.aq
  %i.as = lshr i64 %i.ab, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = or disjoint i64 %i.ar, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.ax, %bb.g ]
  %i.ay = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.az = mul i64 %i.ay, -2543921745674291987
  %i.ba = call noundef i64 @llvm.bswap.i64(i64 %i.az)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.i:                                             ; preds = %.lr.ph
  %i.bb = icmp ult i64 %i.ab, 17
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i = load i64, ptr %i.z, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.bd, align 1
  %i.be = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bf = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.bg = zext i64 %i.be to i128
  %i.bh = zext i64 %i.bf to i128
end_hunk_12
