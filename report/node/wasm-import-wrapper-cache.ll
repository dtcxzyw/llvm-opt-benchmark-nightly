inline.NumInlined: 1260
inline.NumDeleted: 691
begin_hunk_0_@_ZNSt8__detail9_Map_baseIN2v88internal4wasm22WasmImportWrapperCache8CacheKeyESt4pairIKS5_St8weak_ptrINS3_23WasmImportWrapperHandleEEESaISB_ENS_10_Select1stESt8equal_toIS5_ENS4_12CacheKeyHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS7_:bb.a
  %i.ar = mul i64 %i.aq, -4132994306676758123
  %i.as = xor i64 %i.aa, %i.ar
  %i.at = mul i64 %i.as, -4132994306676758123     ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = urem i64 %i.at, %i.av                   ; 3 uses
  %i.ax = load ptr, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_Map_baseIN2v88internal4wasm22WasmImportWrapperCache8CacheKeyESt4pairIKS5_St8weak_ptrINS3_23WasmImportWrapperHandleEEESaISB_ENS_10_Select1stESt8equal_toIS5_ENS4_12CacheKeyHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS7_:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %2 = load i64, ptr %i.au, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 noundef %2, i64 noundef %i.ca, i64 noundef 1) #14 ; 2 uses
  %i.cc = extractvalue { i8, i64 } %i.cb, 0
  %i.cd = trunc i8 %i.cc to i1
  br i1 %i.cd, label %bb.h, label %bb.i
end_hunk_1
