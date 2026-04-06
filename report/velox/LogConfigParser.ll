begin_hunk_0
inline.NumInlined: 3054
inline.NumDeleted: 1340
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN5folly14parseLogConfigENS_5RangeIPKcEE:bb.a
  %32 = alloca %"struct.std::pair", align 8       ; 21 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::unordered_map", align 8 ; 9 uses
  %35 = alloca %"class.std::unordered_map.2", align 8 ; 9 uses
  %i.a = tail call { ptr, ptr } @_ZN5folly15rtrimWhitespaceENS_5RangeIPKcEE(ptr %1, ptr %2) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
end_hunk_1
begin_hunk_2_@_ZN5folly14parseLogConfigENS_5RangeIPKcEE:bb.a
  store ptr null, ptr %i.ng, align 8, !tbaa !100
  store ptr %i.ng, ptr %31, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ni, i8 0, i64 16, i1 false)
  %i.pm = load ptr, ptr %30, align 8, !tbaa !21   ; 3 uses
  store ptr %i.pm, ptr %35, align 8, !tbaa !21
  %i.pn = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.po = load i64, ptr %i.l, align 8, !tbaa !30  ; 4 uses
  store i64 %i.po, ptr %i.pn, align 8, !tbaa !30
  %i.pp = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.pq = load ptr, ptr %i.m, align 8, !tbaa !105 ; 3 uses
  store ptr %i.pq, ptr %i.pp, align 8, !tbaa !38
  %i.pr = getelementptr inbounds nuw i8, ptr %35, i64 24
end_hunk_2
begin_hunk_3_@_ZN5folly14parseLogConfigENS_5RangeIPKcEE:bb.a
  store i64 %i.pt, ptr %i.pr, align 8, !tbaa !106
  %i.pu = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pu, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !97
  %i.pv = getelementptr inbounds nuw i8, ptr %35, i64 48 ; 8 uses
  store ptr null, ptr %i.pv, align 8, !tbaa !107
  %i.pw = icmp eq ptr %i.pm, %i.k
  br i1 %i.pw, label %bb.co, label %bb.cp
end_hunk_3
begin_hunk_4_@_ZN5folly14parseLogConfigENS_5RangeIPKcEE:bb.a
  %i.rf = getelementptr inbounds nuw i8, ptr %35, i64 40
  store i64 0, ptr %i.rf, align 8, !tbaa !104
  store i64 1, ptr %i.pn, align 8, !tbaa !30
  store ptr %i.pv, ptr %35, align 8, !tbaa !21
  store i64 0, ptr %i.pv, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, i8 0, i64 16, i1 false)
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly16LogHandlerConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %34) #33
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly16LogHandlerConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %31) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  %36 = load ptr, ptr %i.m, align 8, !tbaa !105
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigEELb1EEEEE19_M_deallocate_nodesEPSD_(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef %36)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i32 unwind label %bb.cx

bb.cx:                                            ; preds = %_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit
  %i.rg = landingpad { ptr, i32 }
          catch ptr null
  %i.rh = extractvalue { ptr, i32 } %i.rg, 0
  call void @__clang_call_terminate(ptr %i.rh) #38
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i32: ; preds = %_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit
  %i.ri = load ptr, ptr %30, align 8, !tbaa !21
  %i.rj = load i64, ptr %i.l, align 8, !tbaa !30
  %i.rk = shl i64 %i.rj, 3
end_hunk_4
begin_hunk_5_@_ZN5folly21parseLogConfigDynamicERKNS_7dynamicE:bb.a
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.folly::LogHandlerConfig", align 8 ; 17 uses
  %45 = alloca %"class.std::unordered_map", align 8 ; 9 uses
  %46 = alloca %"class.std::unordered_map.2", align 8 ; 9 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !212
  %.not.i.i.i = icmp eq i32 %i.b, 5
  %.sink8.i.sroa.gep = getelementptr inbounds nuw i8, ptr %13, i64 28
end_hunk_5
begin_hunk_6_@_ZN5folly21parseLogConfigDynamicERKNS_7dynamicE:bb.a
  store ptr null, ptr %i.kv, align 8, !tbaa !100
  store ptr %i.kv, ptr %40, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kx, i8 0, i64 16, i1 false)
  %i.adc = load ptr, ptr %33, align 8, !tbaa !21  ; 3 uses
  store ptr %i.adc, ptr %46, align 8, !tbaa !21
  %i.add = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.ade = load i64, ptr %i.k, align 8, !tbaa !30 ; 4 uses
  store i64 %i.ade, ptr %i.add, align 8, !tbaa !30
  %i.adf = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.adg = load ptr, ptr %i.l, align 8, !tbaa !105 ; 3 uses
  store ptr %i.adg, ptr %i.adf, align 8, !tbaa !38
  %i.adh = getelementptr inbounds nuw i8, ptr %46, i64 24
end_hunk_6
begin_hunk_7_@_ZN5folly21parseLogConfigDynamicERKNS_7dynamicE:bb.a
  store i64 %i.adj, ptr %i.adh, align 8, !tbaa !106
  %i.adk = getelementptr inbounds nuw i8, ptr %46, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adk, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !97
  %i.adl = getelementptr inbounds nuw i8, ptr %46, i64 48 ; 8 uses
  store ptr null, ptr %i.adl, align 8, !tbaa !107
  %i.adm = icmp eq ptr %i.adc, %i.j
  br i1 %i.adm, label %bb.hp, label %bb.hq
end_hunk_7
begin_hunk_8_@_ZN5folly21parseLogConfigDynamicERKNS_7dynamicE:bb.a
  %i.aev = getelementptr inbounds nuw i8, ptr %46, i64 40
  store i64 0, ptr %i.aev, align 8, !tbaa !104
  store i64 1, ptr %i.add, align 8, !tbaa !30
  store ptr %i.adl, ptr %46, align 8, !tbaa !21
  store i64 0, ptr %i.adl, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adf, i8 0, i64 16, i1 false)
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly16LogHandlerConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %45) #33
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly16LogHandlerConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %40) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  %47 = load ptr, ptr %i.l, align 8, !tbaa !105
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigEELb1EEEEE19_M_deallocate_nodesEPSD_(ptr noundef nonnull align 8 dereferenceable(56) %33, ptr noundef %47)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i182 unwind label %bb.hy

bb.hy:                                            ; preds = %_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit
  %i.aew = landingpad { ptr, i32 }
          catch ptr null
  %i.aex = extractvalue { ptr, i32 } %i.aew, 0
  call void @__clang_call_terminate(ptr %i.aex) #38
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i182: ; preds = %_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit
  %i.aey = load ptr, ptr %33, align 8, !tbaa !21
  %i.aez = load i64, ptr %i.k, align 8, !tbaa !30
  %i.afa = shl i64 %i.aez, 3
end_hunk_8
