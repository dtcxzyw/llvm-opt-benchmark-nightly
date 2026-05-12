inline.NumInlined: 1105
inline.NumDeleted: 468
begin_hunk_0_@_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN5arrow7compute19FunctionOptionsTypeEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_:bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !96    ; 3 uses
  br i1 %.not.i.i, label %.loopexit29, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN5arrow7compute19FunctionOptionsTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN5arrow7compute19FunctionOptionsTypeEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_:bb.a
  %i.n = load i64, ptr %i.b, align 8
  %.fr22.i.i = freeze i64 %i.n                    ; 3 uses
  %i.o = icmp eq i64 %.fr22.i.i, 0
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !152 ; 2 uses
  br i1 %i.o, label %.split.us.i.i, label %.split.i.i
end_hunk_1
begin_hunk_2_@_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN5arrow7compute19FunctionOptionsTypeEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_:bb.a

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN5arrow7compute19FunctionOptionsTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i: ; preds = %bb.f
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !96
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.pre, ptr %i.ae, i64 %.fr22.i.i)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.af, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN5arrow7compute19FunctionOptionsTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i

end_hunk_2
begin_hunk_3_@_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN5arrow7compute19FunctionOptionsTypeEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !120
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %.pre, %i.an
  br i1 %i.ao, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.loopexit29
end_hunk_3
begin_hunk_4_@_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN5arrow7compute19FunctionOptionsTypeEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_:bb.a
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN5arrow7compute19FunctionOptionsTypeEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESW_IJEEEEEPNSF_16_Hashtable_allocISaINSF_10_Hash_nodeISD_Lb1EEEEEEDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.loopexit29
  store ptr %.pre, ptr %i.al, align 8, !tbaa !96
  %i.as = load i64, ptr %i.an, align 8, !tbaa !70
  store i64 %i.as, ptr %i.am, align 8, !tbaa !70
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !121
end_hunk_4
begin_hunk_5_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !121  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !96     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
end_hunk_5
begin_hunk_6_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d
end_hunk_6
begin_hunk_7_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #24 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !70
  store i8 %i.t, ptr %i.s, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
end_hunk_7
begin_hunk_8_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p
end_hunk_8
begin_hunk_9_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !70
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %5 = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
end_hunk_9
