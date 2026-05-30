inline.NumInlined: 1055
inline.NumDeleted: 569
begin_hunk_0_@_ZN6duckdb19ChildShreddingTypes11DeserializeERNS_12DeserializerE:bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #22
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit15: ; preds = %bb.c
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %.not.i1.i.i6 = icmp eq ptr %i.m, null
  br i1 %.not.i1.i.i6, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i12, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit15, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i10
  %.0.i2.i.i8 = phi ptr [ %i.n, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i10 ], [ %i.m, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit15 ] ; 6 uses
  %i.n = load ptr, ptr %.0.i2.i.i8, align 8, !tbaa !101 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i8, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i8, i64 72
  call void @_ZN6duckdb19ChildShreddingTypesD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #19, !inline_history !125
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i2.i.i8, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #19, !inline_history !125
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !92   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i8, i64 24
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i7
  call void @_ZdlPv(ptr noundef %i.r) #21, !inline_history !126
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i10

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i10: ; preds = %.lr.ph.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i9
  call void @_ZdlPv(ptr noundef nonnull %.0.i2.i.i8) #21, !inline_history !127
  %.not.i.i.i11 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i11, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i12, label %.lr.ph.i.i7, !llvm.loop !128

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i12: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i10, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit15
  %i.u = load ptr, ptr %2, align 8, !tbaa !122
  %i.v = load i64, ptr %i.h, align 8, !tbaa !123
  %i.w = shl i64 %i.v, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.w, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %2, align 8, !tbaa !122    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.g
  br i1 %i.y, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit14, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i12
  call void @_ZdlPv(ptr noundef %i.x) #21, !inline_history !129
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit14

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit14: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i12, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit.invoke

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN6duckdb12Deserializer4ReadISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ShreddingTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS8_S9_EEEEENSt9enable_ifIXsr16is_unordered_mapIT_EE5valueESI_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map.62") align 8 %3, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc4 unwind label %bb.i, !inline_history !118

.noexc4:                                          ; preds = %bb.f
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit unwind label %bb.g

bb.g:                                             ; preds = %.noexc4
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #22
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit: ; preds = %.noexc4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i1.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i
  %.0.i2.i.i = phi ptr [ %i.ad, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i ], [ %i.ac, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit ] ; 6 uses
  %i.ad = load ptr, ptr %.0.i2.i.i, align 8, !tbaa !101 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 72
  call void @_ZN6duckdb19ChildShreddingTypesD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #19, !inline_history !125
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ag) #19, !inline_history !125
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !92 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 24
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZdlPv(ptr noundef %i.ah) #21, !inline_history !126
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.0.i2.i.i) #21, !inline_history !127
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i, !llvm.loop !128

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  %i.ak = load ptr, ptr %3, align 8, !tbaa !122
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !123
  %i.an = shl i64 %i.am, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.an, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ao) #21, !inline_history !129
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb13ShreddingTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit.invoke

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit.invoke: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit14, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.ar = load ptr, ptr %1, align 8, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.e)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ShreddingTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS8_S9_EEEEEvtPKcRT_.exit unwind label %bb.i, !inline_history !118

bb.i:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit.invoke, %bb.f, %bb.b, %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19ChildShreddingTypesD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  resume { ptr, i32 } %i.au

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ShreddingTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS8_S9_EEEEEvtPKcRT_.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit.invoke
  ret void
}

declare void @_ZN6duckdb19ChildShreddingTypesC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb19ChildShreddingTypesD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116    ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS7_33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_S8_EEESt14default_deleteISF_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i.i1, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEELb1EEEEE19_M_deallocate_nodesEPSD_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i
  %.0.i.i2 = phi ptr [ %i.d, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i ], [ %i.c, %bb.b ] ; 6 uses
  %i.d = load ptr, ptr %.0.i.i2, align 8, !tbaa !101 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 72
  tail call void @_ZN6duckdb19ChildShreddingTypesD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #19, !inline_history !130
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 48
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #19, !inline_history !130
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 24
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.h) #21, !inline_history !131
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.0.i.i2) #21, !inline_history !132
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEELb1EEEEE19_M_deallocate_nodesEPSD_.exit.i, label %.lr.ph, !llvm.loop !128

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEELb1EEEEE19_M_deallocate_nodesEPSD_.exit.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEED2Ev.exit.i.i, %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !123
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS7_33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_S8_EEEEclEPSF_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEELb1EEEEE19_M_deallocate_nodesEPSD_.exit.i
  tail call void @_ZdlPv(ptr noundef %i.o) #21, !inline_history !133
  br label %_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS7_33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_S8_EEEEclEPSF_.exit

_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS7_33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_S8_EEEEclEPSF_.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeEELb1EEEEE19_M_deallocate_nodesEPSD_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #21, !inline_history !134
  br label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS7_33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_S8_EEESt14default_deleteISF_EED2Ev.exit

_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS7_33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_S8_EEESt14default_deleteISF_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13ShreddingTypeENS7_33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_S8_EEEEclEPSF_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6duckdb7FieldID9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(680) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7, !range !82, !noundef !83
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr %0, align 8, !range !82
  %2 = trunc nuw i8 %i.d to i1
  %or.cond.not.i = select i1 %i.c, i1 true, i1 %2 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.2, i1 noundef zeroext false), !inline_history !135
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.2, i1 noundef zeroext true), !inline_history !135
  %i.h = load i8, ptr %0, align 8, !tbaa !136, !range !82, !noundef !83
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %1, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %i.i), !inline_history !135
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit: ; preds = %bb.b, %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %or.cond.not.i), !inline_history !135
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.a, align 1, !tbaa !7, !range !82, !noundef !83
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i32, ptr %i.p, align 4
  %i.t = icmp ne i32 %i.s, 0
  %or.cond.not.i4 = select i1 %i.r, i1 true, i1 %i.t ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  br i1 %or.cond.not.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.3, i1 noundef zeroext false), !inline_history !137
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIiEEvtPKcRKT_.exit

bb.e:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.3, i1 noundef zeroext true), !inline_history !137
  %i.x = load i32, ptr %i.p, align 4, !tbaa !3
  %i.y = load ptr, ptr %1, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(680) %1, i32 noundef %i.x), !inline_history !137
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIiEEvtPKcRKT_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultIiEEvtPKcRKT_.exit: ; preds = %bb.d, %bb.e
  %i.ab = load ptr, ptr %1, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %or.cond.not.i4), !inline_history !137
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %1, align 8, !tbaa !86
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 102, ptr noundef nonnull @.str.4), !inline_history !138
  %i.ai = load ptr, ptr %1, align 8, !tbaa !86
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !139
  %i.al = tail call noundef nonnull align 1 ptr @_ZNK6duckdb10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7FieldIDENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS7_S8_EEESt14default_deleteISF_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae), !inline_history !140 ; 2 uses
  %i.am = load i8, ptr %i.a, align 1, !tbaa !7, !range !82, !noundef !83
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIiEEvtPKcRKT_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !84
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %1, align 8, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str, i1 noundef zeroext false), !inline_history !141
  br label %_ZN6duckdb10Serializer13WritePropertyINS_13ChildFieldIDsEEEvtPKcRKT_.exit

bb.h:                                             ; preds = %bb.f, %_ZN6duckdb10Serializer24WritePropertyWithDefaultIiEEvtPKcRKT_.exit
  %i.au = load ptr, ptr %1, align 8, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str, i1 noundef zeroext true), !inline_history !141
  tail call void @_ZN6duckdb10Serializer10WriteValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7FieldIDENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityEEEvRKSt13unordered_mapIT_T0_T1_T2_SaISt4pairIKSC_SD_EEE(ptr noundef nonnull align 8 dereferenceable(680) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.al), !inline_history !141
  br label %_ZN6duckdb10Serializer13WritePropertyINS_13ChildFieldIDsEEEvtPKcRKT_.exit

_ZN6duckdb10Serializer13WritePropertyINS_13ChildFieldIDsEEEvtPKcRKT_.exit: ; preds = %bb.g, %bb.h
  %.sink.i = phi i1 [ false, %bb.g ], [ true, %bb.h ]
  %i.ax = load ptr, ptr %1, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %.sink.i), !inline_history !138
  %i.ba = load ptr, ptr %1, align 8, !tbaa !86
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !139
  %i.bd = load ptr, ptr %1, align 8, !tbaa !86
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !138
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb7FieldID11DeserializeERNS_12DeserializerE(ptr dead_on_unwind noalias nonnull writable sret(%"struct.duckdb::FieldID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb7FieldIDC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %1, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.2)
          to label %.noexc unwind label %bb.e, !inline_history !142 ; 2 uses

.noexc:                                           ; preds = %bb.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.e = load ptr, ptr %1, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc5 unwind label %bb.e, !inline_history !142

.noexc5:                                          ; preds = %bb.b
  %i.i = zext i1 %i.h to i8
  br label %bb.c

bb.c:                                             ; preds = %.noexc5, %.noexc
  %.sink8.i = phi i8 [ %i.i, %.noexc5 ], [ 0, %.noexc ]
  store i8 %.sink8.i, ptr %0, align 8, !tbaa !136
  %i.j = load ptr, ptr %1, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.d)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit unwind label %bb.e, !inline_history !142

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load ptr, ptr %1, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.3)
          to label %.noexc8 unwind label %bb.e, !inline_history !143 ; 2 uses

.noexc8:                                          ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit
  br i1 %i.q, label %bb.d, label %.noexc9

bb.d:                                             ; preds = %.noexc8
  %i.r = load ptr, ptr %1, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc9 unwind label %bb.e, !inline_history !143

.noexc9:                                          ; preds = %bb.d, %.noexc8
  %.sink8.i7 = phi i32 [ 0, %.noexc8 ], [ %i.u, %bb.d ]
  store i32 %.sink8.i7, ptr %i.m, align 4, !tbaa !3
  %i.v = load ptr, ptr %1, align 8, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.q)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIiEEvtPKcRT_.exit unwind label %bb.e, !inline_history !143

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIiEEvtPKcRT_.exit: ; preds = %.noexc9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN6duckdb12Deserializer12ReadPropertyINS_13ChildFieldIDsEEEvtPKcRT_(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 102, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc9, %bb.d, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit, %bb.c, %bb.b, %bb.a, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIiEEvtPKcRT_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb13ChildFieldIDsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #19, !inline_history !144
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIiEEvtPKcRT_.exit
  ret void
}

declare void @_ZN6duckdb7FieldIDC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12Deserializer12ReadPropertyINS_13ChildFieldIDsEEEvtPKcRT_(ptr noundef nonnull align 8 dereferenceable(632) %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ChildFieldIDs", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %0, i16 noundef zeroext %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.d = load ptr, ptr %0, align 8, !tbaa !86, !noalias !145
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !noalias !145
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(632) %0), !noalias !145, !inline_history !148
  call void @_ZN6duckdb13ChildFieldIDs11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ChildFieldIDs") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %0), !inline_history !148
  %i.g = load ptr, ptr %0, align 8, !tbaa !86, !noalias !145
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
end_hunk_0
begin_hunk_1_@_ZN6duckdb12Deserializer23ReadPropertyWithDefaultISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S8_EEEEEvtPKcRT_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #22
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !211  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.m, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.l, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit ] ; 6 uses
  %i.m = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !101 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 56
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.p) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !92   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.s) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #21
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !212

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit
  %i.v = load ptr, ptr %4, align 8, !tbaa !209
  %i.w = load i64, ptr %i.g, align 8, !tbaa !210
  %i.x = shl i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.x, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %4, align 8, !tbaa !209    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.y) #21
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN6duckdb12Deserializer4ReadISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S8_EEEEENSt9enable_ifIXsr16is_unordered_mapIT_EE5valueESJ_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map.67") align 8 %5, ptr noundef nonnull align 8 dereferenceable(632) %0)
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit4 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #22
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit4: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !211 ; 2 uses
  %.not5.i.i.i.i5 = icmp eq ptr %i.ad, null
  br i1 %.not5.i.i.i.i5, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i13, label %.lr.ph.i.i.i.i6

.lr.ph.i.i.i.i6:                                  ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit4, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i11
  %.06.i.i.i.i7 = phi ptr [ %i.ae, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i11 ], [ %i.ad, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit4 ] ; 6 uses
  %i.ae = load ptr, ptr %.06.i.i.i.i7, align 8, !tbaa !101 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i7, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i7, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i7, i64 56
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i6
  call void @_ZdlPv(ptr noundef %i.ah) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i.i.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !92 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i7, i64 24
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i9
  call void @_ZdlPv(ptr noundef %i.ak) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i11

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i10
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i7) #21
  %.not.i.i.i.i12 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i12, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i13, label %.lr.ph.i.i.i.i6, !llvm.loop !212

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i13: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i11, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit4
  %i.an = load ptr, ptr %5, align 8, !tbaa !209
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !210
  %i.aq = shl i64 %i.ap, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %i.aq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ar = load ptr, ptr %5, align 8, !tbaa !209   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit16, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i13
  call void @_ZdlPv(ptr noundef %i.ar) #21
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit16

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit16: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i13, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit16, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(632) %0, i1 noundef zeroext %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb23ParquetEncryptionConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !201
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !203
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !213
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !213
  br label %_ZNSt12__shared_ptrIN6duckdb23ParquetEncryptionConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !185
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb23ParquetEncryptionConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN6duckdb23ParquetEncryptionConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb23ParquetEncryptionConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6duckdb27ParquetOptionsSerialization9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(680) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::shared_ptr.81", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7, !range !82, !noundef !83
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr %0, align 8, !range !82
  %3 = trunc nuw i8 %i.d to i1
  %or.cond.not.i = select i1 %i.c, i1 true, i1 %3 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.11, i1 noundef zeroext false), !inline_history !135
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.11, i1 noundef zeroext true), !inline_history !135
  %i.h = load i8, ptr %0, align 8, !tbaa !136, !range !82, !noundef !83
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %1, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %i.i), !inline_history !135
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit: ; preds = %bb.b, %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %or.cond.not.i), !inline_history !135
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.a, align 1, !tbaa !7, !range !82, !noundef !83
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i8, ptr %i.p, align 1, !range !82
  %4 = trunc nuw i8 %i.s to i1
  %or.cond.not.i9 = select i1 %i.r, i1 true, i1 %4 ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  br i1 %or.cond.not.i9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.12, i1 noundef zeroext false), !inline_history !135
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit10

bb.e:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.12, i1 noundef zeroext true), !inline_history !135
  %i.w = load i8, ptr %i.p, align 1, !tbaa !136, !range !82, !noundef !83
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load ptr, ptr %1, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %i.x), !inline_history !135
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit10

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit10: ; preds = %bb.d, %bb.e
  %i.ab = load ptr, ptr %1, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %or.cond.not.i9), !inline_history !135
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %1, align 8, !tbaa !86
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 102, ptr noundef nonnull @.str.13), !inline_history !214
  %i.ai = load ptr, ptr %1, align 8, !tbaa !86
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !215
  tail call void @_ZNK6duckdb16MultiFileOptions9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(152) %i.ae, ptr noundef nonnull align 8 dereferenceable(680) %1)
  %i.al = load ptr, ptr %1, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !215
  %i.ao = load ptr, ptr %1, align 8, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !214
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_6vectorINS_23ParquetColumnDefinitionELb1ESaIS3_EEEEEvtPKcRKT_(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 103, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.at = load i8, ptr %i.a, align 1, !tbaa !7, !range !82, !noundef !83
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load ptr, ptr %i.as, align 8
  %i.aw = icmp ne ptr %i.av, null
  %or.cond.not = select i1 %i.au, i1 true, i1 %i.aw ; 2 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  br i1 %or.cond.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit10
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 104, ptr noundef nonnull @.str.15, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.l, !inline_history !216

bb.g:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit10
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 104, ptr noundef nonnull @.str.15, i1 noundef zeroext true)
          to label %.noexc11 unwind label %bb.l, !inline_history !216

.noexc11:                                         ; preds = %bb.g
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !197
  invoke void @_ZN6duckdb10Serializer10WriteValueINS_23ParquetEncryptionConfigEEEvPKT_(ptr noundef nonnull align 8 dereferenceable(680) %1, ptr noundef %i.ba)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc11, %bb.f
  %i.bb = load ptr, ptr %1, align 8, !tbaa !86
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %or.cond.not)
          to label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit unwind label %bb.l, !inline_history !216

_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit: ; preds = %.noexc
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8
  %.pre = load i8, ptr %i.a, align 1, !tbaa !7, !range !82
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.be = trunc nuw i8 %.pre to i1
  %i.bf = icmp ne i64 %.pre25, 0
  %or.cond20.not = select i1 %i.be, i1 true, i1 %i.bf ; 2 uses
  br i1 %or.cond20.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 106, ptr noundef nonnull @.str.16, i1 noundef zeroext false), !inline_history !217
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultImEEvtPKcRKT_S6_.exit

bb.i:                                             ; preds = %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %1, align 8, !tbaa !86
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 106, ptr noundef nonnull @.str.16, i1 noundef zeroext true), !inline_history !217
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !218
  %i.bo = load ptr, ptr %1, align 8, !tbaa !86
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 168
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(680) %1, i64 noundef %i.bn), !inline_history !217
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultImEEvtPKcRKT_S6_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultImEEvtPKcRKT_S6_.exit: ; preds = %bb.h, %bb.i
  %i.br = load ptr, ptr %1, align 8, !tbaa !86
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %or.cond20.not), !inline_history !217
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bv = load i8, ptr %i.a, align 1, !tbaa !7, !range !82, !noundef !83
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = load i8, ptr %i.bu, align 8, !range !82
  %5 = trunc nuw i8 %i.bx to i1
  %or.cond23.not = select i1 %i.bw, i1 true, i1 %5 ; 2 uses
  %i.by = load ptr, ptr %1, align 8, !tbaa !86
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  br i1 %or.cond23.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultImEEvtPKcRKT_S6_.exit
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 107, ptr noundef nonnull @.str.17, i1 noundef zeroext false), !inline_history !219
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit

bb.k:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultImEEvtPKcRKT_S6_.exit
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 107, ptr noundef nonnull @.str.17, i1 noundef zeroext true), !inline_history !219
  %i.cb = load i8, ptr %i.bu, align 8, !tbaa !136, !range !82, !noundef !83
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = load ptr, ptr %1, align 8, !tbaa !86
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %i.cc), !inline_history !219
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit: ; preds = %bb.j, %bb.k
  %i.cg = load ptr, ptr %1, align 8, !tbaa !86
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %or.cond23.not), !inline_history !219
  ret void

bb.l:                                             ; preds = %.noexc, %.noexc11, %bb.g, %bb.f
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.cj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb10Serializer24WritePropertyWithDefaultINS_6vectorINS_23ParquetColumnDefinitionELb1ESaIS3_EEEEEvtPKcRKT_(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7, !range !82, !noundef !83
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !220
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !220
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext %1, ptr noundef %2, i1 noundef zeroext false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext %1, ptr noundef %2, i1 noundef zeroext true)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !222
  %i.p = load ptr, ptr %3, align 8, !tbaa !224
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 192
  %i.u = load ptr, ptr %0, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.t), !inline_history !225
  %i.x = load ptr, ptr %3, align 8, !tbaa !220    ; 2 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !220  ; 2 uses
  %.not9.i = icmp eq ptr %i.x, %i.y
  br i1 %.not9.i, label %_ZN6duckdb10Serializer10WriteValueINS_23ParquetColumnDefinitionEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.06.010.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !86
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !226
  tail call void @_ZNK6duckdb23ParquetColumnDefinition9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.06.010.i, ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !226
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 192 ; 2 uses
  %.not.i = icmp eq ptr %i.af, %i.y
  br i1 %.not.i, label %_ZN6duckdb10Serializer10WriteValueINS_23ParquetColumnDefinitionEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE.exit, label %.lr.ph.i

_ZN6duckdb10Serializer10WriteValueINS_23ParquetColumnDefinitionEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE.exit: ; preds = %.lr.ph.i, %bb.d
  %i.ag = load ptr, ptr %0, align 8, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !225
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10Serializer10WriteValueINS_23ParquetColumnDefinitionEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE.exit, %bb.c
  %.sink = phi i1 [ true, %_ZN6duckdb10Serializer10WriteValueINS_23ParquetColumnDefinitionEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE.exit ], [ false, %bb.c ]
  %i.aj = load ptr, ptr %0, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %.sink)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb27ParquetOptionsSerialization11DeserializeERNS_12DeserializerE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::ParquetOptionsSerialization") align 8 initializes((0, 2), (8, 57), (64, 70)) %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::MultiFileOptions", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::shared_ptr.81", align 8 ; 4 uses
  store i8 0, ptr %0, align 8, !tbaa !227
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !235
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.b, i8 0, i64 49, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.c, align 8, !tbaa !136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.d, align 4, !tbaa !236
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 0, ptr %i.e, align 1, !tbaa !243
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.f, align 8, !tbaa !244
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 1, ptr %i.h, align 8, !tbaa !245
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !99
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !183
  store i64 7308604897068083558, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 8, ptr %i.n, align 8, !tbaa !184
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.o, align 8, !tbaa !185
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.q, ptr %i.p, align 8, !tbaa !246
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 1, ptr %i.r, align 8, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %1, align 8, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.11)
          to label %.noexc unwind label %bb.s, !inline_history !142 ; 2 uses

.noexc:                                           ; preds = %bb.a
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.z = load ptr, ptr %1, align 8, !tbaa !86
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc12 unwind label %bb.s, !inline_history !142

.noexc12:                                         ; preds = %bb.b
  %i.ad = zext i1 %i.ac to i8
  br label %bb.c

bb.c:                                             ; preds = %.noexc12, %.noexc
  %.sink8.i = phi i8 [ %i.ad, %.noexc12 ], [ 0, %.noexc ]
  store i8 %.sink8.i, ptr %0, align 8, !tbaa !136
  %i.ae = load ptr, ptr %1, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.y)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit unwind label %bb.s, !inline_history !142

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit: ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8, !tbaa !86
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.12)
          to label %.noexc15 unwind label %bb.s, !inline_history !142 ; 2 uses

.noexc15:                                         ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc15
  %i.al = load ptr, ptr %1, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc16 unwind label %bb.s, !inline_history !142
end_hunk_1
begin_hunk_2_@_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_10shared_ptrINS_23ParquetEncryptionConfigELb1EEEEEvtPKcRT_S7_:bb.a
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit, !prof !91

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #19
  br label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %i.w = load ptr, ptr %0, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(632) %0, i1 noundef zeroext false)
  br label %bb.ac

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !259
  %i.z = load ptr, ptr %0, align 8, !tbaa !86, !noalias !259
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !259
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %bb.j unwind label %bb.m, !noalias !259

bb.j:                                             ; preds = %bb.i
  br i1 %i.ac, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %0, align 8, !tbaa !86, !noalias !259
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !259
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %bb.l unwind label %bb.m, !noalias !259

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !259
  invoke void @_ZN6duckdb23ParquetEncryptionConfig11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.81") align 8 %5, ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit.i unwind label %bb.n, !noalias !259

_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit.i: ; preds = %bb.l
  %i.ag = load ptr, ptr %5, align 8, !tbaa !197, !noalias !259 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !200, !noalias !259 ; 2 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !262, !alias.scope !259
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !200, !alias.scope !259
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !86, !noalias !259
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 64
  %.pre7.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !259
  invoke void %.pre7.i(ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %bb.o unwind label %bb.m, !noalias !259

bb.m:                                             ; preds = %bb.o, %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit.i, %bb.k, %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !259
  br label %bb.p

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit.i, %bb.j
  %i.am = phi ptr [ %i.ai, %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit.i ], [ null, %bb.j ]
  %i.an = phi ptr [ %i.ag, %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit.i ], [ null, %bb.j ]
  %i.ao = load ptr, ptr %0, align 8, !tbaa !86, !noalias !259
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !259
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %_ZN6duckdb12Deserializer4ReadINS_10shared_ptrINS_23ParquetEncryptionConfigELb1EEEEENSt9enable_ifIXsr13is_shared_ptrIT_EE5valueES6_E4typeEv.exit unwind label %bb.m, !noalias !259

bb.p:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %i.al, %bb.n ]
  call void @_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #19
  resume { ptr, i32 } %.pn.i

_ZN6duckdb12Deserializer4ReadINS_10shared_ptrINS_23ParquetEncryptionConfigELb1EEEEENSt9enable_ifIXsr13is_shared_ptrIT_EE5valueES6_E4typeEv.exit: ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %i.an, ptr %3, align 8, !tbaa !262
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !200 ; 8 uses
  store ptr %i.am, ptr %i.as, align 8, !tbaa !200
  %.not.i.i.i.i4 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i4, label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit9, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_10shared_ptrINS_23ParquetEncryptionConfigELb1EEEEENSt9enable_ifIXsr13is_shared_ptrIT_EE5valueES6_E4typeEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.au, align 8, !tbaa !201
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !203
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #19, !inline_history !258
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #19, !inline_history !258
  br label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit9

bb.s:                                             ; preds = %bb.q
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !185
  %.not.i.i.i.i.i5 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6

bb.u:                                             ; preds = %bb.s
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i7 = phi i32 [ %i.ax, %bb.t ], [ %i.bh, %bb.u ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i7, 1
  br i1 %i.bi, label %bb.v, label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit9, !prof !91

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #19
  br label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit9

_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit9: ; preds = %_ZN6duckdb12Deserializer4ReadINS_10shared_ptrINS_23ParquetEncryptionConfigELb1EEEEENSt9enable_ifIXsr13is_shared_ptrIT_EE5valueES6_E4typeEv.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6, %bb.v
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !200 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bk, align 8, !tbaa !201
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !203
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #19, !inline_history !252
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #19, !inline_history !252
  br label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !185
  %.not.i.i.i.i10 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i10, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi i32 [ %i.bn, %bb.z ], [ %i.bx, %bb.aa ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.by, label %bb.ab, label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit, !prof !91

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #19
  br label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit9, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bz = load ptr, ptr %0, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(632) %0, i1 noundef zeroext true)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit, %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEaSEOS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6duckdb13ShreddingType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(680) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7, !range !82, !noundef !83
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr %0, align 8, !range !82
  %2 = trunc nuw i8 %i.d to i1
  %or.cond.not.i = select i1 %i.c, i1 true, i1 %2 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.2, i1 noundef zeroext false), !inline_history !135
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.2, i1 noundef zeroext true), !inline_history !135
  %i.h = load i8, ptr %0, align 8, !tbaa !136, !range !82, !noundef !83
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %1, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %i.i), !inline_history !135
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit: ; preds = %bb.b, %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %or.cond.not.i), !inline_history !135
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %1, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.6), !inline_history !155
  %i.t = load ptr, ptr %1, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !156
  tail call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(680) %1)
  %i.w = load ptr, ptr %1, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !156
  %i.z = load ptr, ptr %1, align 8, !tbaa !86
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !155
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %1, align 8, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 102, ptr noundef nonnull @.str.19), !inline_history !263
  %i.ag = load ptr, ptr %1, align 8, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !264
  %i.aj = tail call noundef nonnull align 1 ptr @_ZNK6duckdb10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ShreddingTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS7_S8_EEESt14default_deleteISF_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac), !inline_history !265 ; 2 uses
  %i.ak = load i8, ptr %i.a, align 1, !tbaa !7, !range !82, !noundef !83
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !113
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %1, align 8, !tbaa !86
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.1, i1 noundef zeroext false), !inline_history !266
  br label %_ZN6duckdb10Serializer13WritePropertyINS_19ChildShreddingTypesEEEvtPKcRKT_.exit

bb.f:                                             ; preds = %bb.d, %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.1, i1 noundef zeroext true), !inline_history !266
  tail call void @_ZN6duckdb10Serializer10WriteValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ShreddingTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityEEEvRKSt13unordered_mapIT_T0_T1_T2_SaISt4pairIKSC_SD_EEE(ptr noundef nonnull align 8 dereferenceable(680) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.aj), !inline_history !266
  br label %_ZN6duckdb10Serializer13WritePropertyINS_19ChildShreddingTypesEEEvtPKcRKT_.exit

_ZN6duckdb10Serializer13WritePropertyINS_19ChildShreddingTypesEEEvtPKcRKT_.exit: ; preds = %bb.e, %bb.f
  %.sink.i = phi i1 [ false, %bb.e ], [ true, %bb.f ]
  %i.av = load ptr, ptr %1, align 8, !tbaa !86
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %.sink.i), !inline_history !263
  %i.ay = load ptr, ptr %1, align 8, !tbaa !86
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !264
  %i.bb = load ptr, ptr %1, align 8, !tbaa !86
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(680) %1), !inline_history !263
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb13ShreddingType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind noalias nonnull writable sret(%"struct.duckdb::ShreddingType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::ChildShreddingTypes", align 8 ; 7 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  tail call void @_ZN6duckdb13ShreddingTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.a = load ptr, ptr %1, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.2)
          to label %.noexc unwind label %bb.g, !inline_history !142 ; 2 uses

.noexc:                                           ; preds = %bb.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.e = load ptr, ptr %1, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc5 unwind label %bb.g, !inline_history !142

.noexc5:                                          ; preds = %bb.b
  %i.i = zext i1 %i.h to i8
  br label %bb.c

bb.c:                                             ; preds = %.noexc5, %.noexc
  %.sink8.i = phi i8 [ %i.i, %.noexc5 ], [ 0, %.noexc ]
  store i8 %.sink8.i, ptr %0, align 8, !tbaa !136
  %i.j = load ptr, ptr %1, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.d)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit unwind label %bb.g, !inline_history !142

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %1, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.6)
          to label %.noexc7 unwind label %bb.g, !inline_history !159

.noexc7:                                          ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.q = load ptr, ptr %1, align 8, !tbaa !86, !noalias !267
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !noalias !267
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc8 unwind label %bb.g, !inline_history !159

.noexc8:                                          ; preds = %.noexc7
  invoke void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %3, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %.noexc8
  %i.t = load ptr, ptr %1, align 8, !tbaa !86, !noalias !267
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %bb.d

bb.d:                                             ; preds = %.noexc9
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  br label %.body

_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %.noexc9
  %i.x = load i8, ptr %3, align 8, !tbaa !163
  store i8 %i.x, ptr %i.m, align 8, !tbaa !163
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !173
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !173
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !174
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !174
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !174
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !174
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.af = load ptr, ptr %1, align 8, !tbaa !86
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEEvtPKcRT_.exit unwind label %bb.g, !inline_history !159

_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEEvtPKcRT_.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 102, ptr noundef nonnull @.str.19)
          to label %.noexc11 unwind label %bb.g, !inline_history !270

.noexc11:                                         ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEEvtPKcRT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.am = load ptr, ptr %1, align 8, !tbaa !86, !noalias !271
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !271
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc12 unwind label %bb.g, !inline_history !270

end_hunk_2
begin_hunk_3_@_ZN6duckdb14ParquetOptionsD2Ev:bb.a

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.h, label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit, !prof !91

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #19
  br label %_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb23ParquetColumnDefinitionESaIS1_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb16MultiFileOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !101 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #19
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.g) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #21
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !290

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !246
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !247
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !246  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.n) #21
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !92   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !291  ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i3 = phi ptr [ %i.x, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.x = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !101 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 40
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #19
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !92  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 24
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i.i2
  tail call void @_ZdlPv(ptr noundef %i.aa) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i3) #21
  %.not.i.i.i.i5 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i5, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !292

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !244
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !245
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ag, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !244 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ah) #21
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb10Serializer10WriteValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7FieldIDENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityEEEvRKSt13unordered_mapIT_T0_T1_T2_SaISt4pairIKSC_SD_EEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84
  %i.c = load ptr, ptr %0, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.08.011 = load ptr, ptr %i.f, align 8, !tbaa !101 ; 2 uses
  %.not12 = icmp eq ptr %.sroa.08.011, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb10Serializer13WritePropertyINS_13ChildFieldIDsEEEvtPKcRKT_.exit, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(680) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb10Serializer13WritePropertyINS_13ChildFieldIDsEEEvtPKcRKT_.exit
  %.sroa.08.013 = phi ptr [ %.sroa.08.011, %.lr.ph ], [ %.sroa.08.0, %_ZN6duckdb10Serializer13WritePropertyINS_13ChildFieldIDsEEEvtPKcRKT_.exit ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.l = load ptr, ptr %0, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.o = load ptr, ptr %0, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 0, ptr noundef nonnull @.str.23), !inline_history !293
  %i.r = load ptr, ptr %0, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k), !inline_history !293
  %i.u = load ptr, ptr %0, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !293
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 40 ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 1, ptr noundef nonnull @.str.24), !inline_history !294
  %i.ab = load ptr, ptr %0, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !295
  %i.ae = load i8, ptr %i.g, align 1, !tbaa !7, !range !82, !noundef !83
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i8, ptr %i.x, align 1, !range !82
  %2 = trunc nuw i8 %i.ag to i1
  %or.cond.not.i7 = select i1 %i.af, i1 true, i1 %2 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !86
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  br i1 %or.cond.not.i7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.2, i1 noundef zeroext false), !inline_history !296
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit

bb.d:                                             ; preds = %bb.b
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.2, i1 noundef zeroext true), !inline_history !296
  %i.ak = load i8, ptr %i.x, align 1, !tbaa !136, !range !82, !noundef !83
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load ptr, ptr %0, align 8, !tbaa !86
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %i.al), !inline_history !296
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit: ; preds = %bb.c, %bb.d
  %i.ap = load ptr, ptr %0, align 8, !tbaa !86
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %or.cond.not.i7), !inline_history !296
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 44 ; 2 uses
  %i.at = load i8, ptr %i.g, align 1, !tbaa !7, !range !82, !noundef !83
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i32, ptr %i.as, align 4
  %i.aw = icmp ne i32 %i.av, 0
  %or.cond.not.i = select i1 %i.au, i1 true, i1 %i.aw ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  br i1 %or.cond.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 101, ptr noundef nonnull @.str.3, i1 noundef zeroext false), !inline_history !297
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIiEEvtPKcRKT_.exit

bb.f:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 101, ptr noundef nonnull @.str.3, i1 noundef zeroext true), !inline_history !297
  %i.ba = load i32, ptr %i.as, align 4, !tbaa !3
  %i.bb = load ptr, ptr %0, align 8, !tbaa !86
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 160
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(680) %0, i32 noundef %i.ba), !inline_history !297
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIiEEvtPKcRKT_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultIiEEvtPKcRKT_.exit: ; preds = %bb.e, %bb.f
  %i.be = load ptr, ptr %0, align 8, !tbaa !86
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %or.cond.not.i), !inline_history !297
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 48
  %i.bi = load ptr, ptr %0, align 8, !tbaa !86
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 102, ptr noundef nonnull @.str.4), !inline_history !298
  %i.bl = load ptr, ptr %0, align 8, !tbaa !86
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !299
  %i.bo = tail call noundef nonnull align 1 ptr @_ZNK6duckdb10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7FieldIDENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS7_S8_EEESt14default_deleteISF_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh), !inline_history !300 ; 2 uses
  %i.bp = load i8, ptr %i.g, align 1, !tbaa !7, !range !82, !noundef !83
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIiEEvtPKcRKT_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !84
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bu = load ptr, ptr %0, align 8, !tbaa !86
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str, i1 noundef zeroext false), !inline_history !301
  br label %_ZN6duckdb10Serializer13WritePropertyINS_13ChildFieldIDsEEEvtPKcRKT_.exit

bb.i:                                             ; preds = %bb.g, %_ZN6duckdb10Serializer24WritePropertyWithDefaultIiEEvtPKcRKT_.exit
  %i.bx = load ptr, ptr %0, align 8, !tbaa !86
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str, i1 noundef zeroext true), !inline_history !301
  tail call void @_ZN6duckdb10Serializer10WriteValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7FieldIDENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityEEEvRKSt13unordered_mapIT_T0_T1_T2_SaISt4pairIKSC_SD_EEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bo), !inline_history !301
  br label %_ZN6duckdb10Serializer13WritePropertyINS_13ChildFieldIDsEEEvtPKcRKT_.exit

_ZN6duckdb10Serializer13WritePropertyINS_13ChildFieldIDsEEEvtPKcRKT_.exit: ; preds = %bb.h, %bb.i
  %.sink.i = phi i1 [ false, %bb.h ], [ true, %bb.i ]
  %i.ca = load ptr, ptr %0, align 8, !tbaa !86
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %.sink.i), !inline_history !298
  %i.cd = load ptr, ptr %0, align 8, !tbaa !86
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !299
  %i.cg = load ptr, ptr %0, align 8, !tbaa !86
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !298
  %i.cj = load ptr, ptr %0, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !295
  %i.cm = load ptr, ptr %0, align 8, !tbaa !86
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !294
  %i.cp = load ptr, ptr %0, align 8, !tbaa !86
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(680) %0)
  %.sroa.08.0 = load ptr, ptr %.sroa.08.013, align 8, !tbaa !101 ; 2 uses
  %.not = icmp eq ptr %.sroa.08.0, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12Deserializer4ReadISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7FieldIDENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS8_S9_EEEEENSt9enable_ifIXsr16is_unordered_mapIT_EE5valueESI_E4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_map.52") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"struct.duckdb::FieldID", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %0, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %1, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.preheader unwind label %bb.b ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.preheader
  %i.m = load ptr, ptr %1, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.t unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.q = load ptr, ptr %1, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.t = load ptr, ptr %1, align 8, !tbaa !86, !noalias !302
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !302
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 0, ptr noundef nonnull @.str.23)
          to label %.noexc unwind label %bb.p, !inline_history !305

.noexc:                                           ; preds = %bb.d
  %i.w = load ptr, ptr %1, align 8, !tbaa !86, !noalias !306
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !noalias !306
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc15 unwind label %bb.p, !inline_history !305

.noexc15:                                         ; preds = %.noexc
  %i.z = load ptr, ptr %1, align 8, !tbaa !86, !noalias !302
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc15
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !92, !alias.scope !302 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_3
begin_hunk_4_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb7FieldIDEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS8_EESK_IJEEEEEPSD_DpOT_:bb.a
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef %i.s) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb7FieldIDEELb1EEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESK_IJEEEEEvRSE_PT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  ret ptr %i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.u = extractvalue { ptr, i32 } %i.r, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #19 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #21
  invoke void @__cxa_rethrow() #20
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #22
  unreachable

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !329
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb7FieldIDEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb7FieldIDEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb7FieldIDEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb7FieldIDEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !100
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !101 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !330
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !332  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !100
  store ptr %i.o, ptr %.031, align 8, !tbaa !101
  store ptr %.031, ptr %i.g, align 8, !tbaa !100
  store ptr %i.g, ptr %i.m, align 8, !tbaa !332
  %i.p = load ptr, ptr %.031, align 8, !tbaa !101
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !332
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !101
  store ptr %i.r, ptr %.031, align 8, !tbaa !101
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !332
  store ptr %.031, ptr %i.s, align 8, !tbaa !101
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !348

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #21
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !98
  store ptr %.0.i, ptr %0, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb10Serializer10WriteValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ShreddingTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityEEEvRKSt13unordered_mapIT_T0_T1_T2_SaISt4pairIKSC_SD_EEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !113
  %i.c = load ptr, ptr %0, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.07.010 = load ptr, ptr %i.f, align 8, !tbaa !101 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.07.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb10Serializer13WritePropertyINS_19ChildShreddingTypesEEEvtPKcRKT_.exit, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(680) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb10Serializer13WritePropertyINS_19ChildShreddingTypesEEEvtPKcRKT_.exit
  %.sroa.07.012 = phi ptr [ %.sroa.07.010, %.lr.ph ], [ %.sroa.07.0, %_ZN6duckdb10Serializer13WritePropertyINS_19ChildShreddingTypesEEEvtPKcRKT_.exit ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 8
  %i.l = load ptr, ptr %0, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.o = load ptr, ptr %0, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 0, ptr noundef nonnull @.str.23), !inline_history !293
  %i.r = load ptr, ptr %0, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k), !inline_history !293
  %i.u = load ptr, ptr %0, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !293
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 40 ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 1, ptr noundef nonnull @.str.24), !inline_history !349
  %i.ab = load ptr, ptr %0, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !350
  %i.ae = load i8, ptr %i.g, align 1, !tbaa !7, !range !82, !noundef !83
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i8, ptr %i.x, align 1, !range !82
  %2 = trunc nuw i8 %i.ag to i1
  %or.cond.not.i = select i1 %i.af, i1 true, i1 %2 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !86
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  br i1 %or.cond.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.2, i1 noundef zeroext false), !inline_history !351
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit

bb.d:                                             ; preds = %bb.b
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.2, i1 noundef zeroext true), !inline_history !351
  %i.ak = load i8, ptr %i.x, align 1, !tbaa !136, !range !82, !noundef !83
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load ptr, ptr %0, align 8, !tbaa !86
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %i.al), !inline_history !351
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit: ; preds = %bb.c, %bb.d
  %i.ap = load ptr, ptr %0, align 8, !tbaa !86
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %or.cond.not.i), !inline_history !351
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 48
  %i.at = load ptr, ptr %0, align 8, !tbaa !86
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 101, ptr noundef nonnull @.str.6), !inline_history !352
  %i.aw = load ptr, ptr %0, align 8, !tbaa !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !353
  tail call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.az = load ptr, ptr %0, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !353
  %i.bc = load ptr, ptr %0, align 8, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !352
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 72
  %i.bg = load ptr, ptr %0, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 102, ptr noundef nonnull @.str.19), !inline_history !354
  %i.bj = load ptr, ptr %0, align 8, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !355
  %i.bm = tail call noundef nonnull align 1 ptr @_ZNK6duckdb10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ShreddingTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS7_S8_EEESt14default_deleteISF_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf), !inline_history !356 ; 2 uses
  %i.bn = load i8, ptr %i.g, align 1, !tbaa !7, !range !82, !noundef !83
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !113
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = load ptr, ptr %0, align 8, !tbaa !86
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.1, i1 noundef zeroext false), !inline_history !357
  br label %_ZN6duckdb10Serializer13WritePropertyINS_19ChildShreddingTypesEEEvtPKcRKT_.exit

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_.exit
  %i.bv = load ptr, ptr %0, align 8, !tbaa !86
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.1, i1 noundef zeroext true), !inline_history !357
  tail call void @_ZN6duckdb10Serializer10WriteValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ShreddingTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityEEEvRKSt13unordered_mapIT_T0_T1_T2_SaISt4pairIKSC_SD_EEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bm), !inline_history !357
  br label %_ZN6duckdb10Serializer13WritePropertyINS_19ChildShreddingTypesEEEvtPKcRKT_.exit

_ZN6duckdb10Serializer13WritePropertyINS_19ChildShreddingTypesEEEvtPKcRKT_.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi i1 [ false, %bb.f ], [ true, %bb.g ]
  %i.by = load ptr, ptr %0, align 8, !tbaa !86
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %.sink.i), !inline_history !354
  %i.cb = load ptr, ptr %0, align 8, !tbaa !86
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !355
  %i.ce = load ptr, ptr %0, align 8, !tbaa !86
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !354
  %i.ch = load ptr, ptr %0, align 8, !tbaa !86
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !350
  %i.ck = load ptr, ptr %0, align 8, !tbaa !86
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !349
  %i.cn = load ptr, ptr %0, align 8, !tbaa !86
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(680) %0)
  %.sroa.07.0 = load ptr, ptr %.sroa.07.012, align 8, !tbaa !101 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12Deserializer4ReadISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ShreddingTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS8_S9_EEEEENSt9enable_ifIXsr16is_unordered_mapIT_EE5valueESI_E4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_map.62") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %3 = alloca %"struct.duckdb::ChildShreddingTypes", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.duckdb::ShreddingType", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %0, align 8, !tbaa !122
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %1, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.preheader unwind label %bb.b ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 9 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.preheader
  %i.r = load ptr, ptr %1, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.ag unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.053 = phi i64 [ 0, %.lr.ph ], [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.v = load ptr, ptr %1, align 8, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.d unwind label %bb.ab

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.y = load ptr, ptr %1, align 8, !tbaa !86, !noalias !358
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !358
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 0, ptr noundef nonnull @.str.23)
          to label %.noexc unwind label %bb.ac, !inline_history !305

.noexc:                                           ; preds = %bb.d
  %i.ab = load ptr, ptr %1, align 8, !tbaa !86, !noalias !361
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 216
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !361
  invoke void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc15 unwind label %bb.ac, !inline_history !305

.noexc15:                                         ; preds = %.noexc
  %i.ae = load ptr, ptr %1, align 8, !tbaa !86, !noalias !358
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc15
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !92, !alias.scope !358 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.q
  br i1 %i.aj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ai) #21
  br label %.body
end_hunk_4
