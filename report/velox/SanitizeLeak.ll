inline.NumInlined: 160
inline.NumDeleted: 108
begin_hunk_0_@pthread_mutex_unlock
; Function Attrs: mustprogress uwtable
define void @_ZN5folly6detail30annotate_object_collected_implEPKv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !30
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.m, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN5folly6detail30annotate_object_collected_implEPKv:bb.a

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN5folly6detail12_GLOBAL__N_110LeakedPtrs8instanceEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5folly6detail30annotate_object_collected_implEPKv:bb.a
.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.q, ptr %i.aj, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !35
  %i.al = invoke ptr @_ZNSt10_HashtableIPKvSt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.ai, i64 noundef 1)
end_hunk_2
