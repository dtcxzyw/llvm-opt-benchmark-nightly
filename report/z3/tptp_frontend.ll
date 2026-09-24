Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/tptp_frontend?download=true
inline.NumInlined: 6703
inline.NumDeleted: 2422
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P3appESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP3appELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !141
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP3appELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP3appELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 56) #30
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP3appELb1EEEEE19_M_deallocate_nodesEPSD_.exit, label %.lr.ph.i, !llvm.loop !4

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP3appELb1EEEEE19_M_deallocate_nodesEPSD_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP3appELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !277
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !278
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10ptr_vectorI4sortEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10ptr_vectorI4sortEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10ptr_vectorI4sortEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10ptr_vectorI4sortEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !229 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorIP4sortLb0EjED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.g)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit.i.i.i.i.i:       ; preds = %bb.b, %.lr.ph.i.i
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !225  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10ptr_vectorI4sortEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !141
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10ptr_vectorI4sortEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10ptr_vectorI4sortEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i: ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 56) #30
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10ptr_vectorI4sortEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !1225

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10ptr_vectorI4sortEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10ptr_vectorI4sortEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i, %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !152
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10ptr_vectorI4sortEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10ptr_vectorI4sortEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.v = load i64, ptr %i.p, align 8, !tbaa !152
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10ptr_vectorI4sortEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10ptr_vectorI4sortEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.d, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10ptr_vectorI4sortEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_I10ptr_vectorI4sortEPS9_EESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !358  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_I10ptr_vectorI4sortEPS9_EESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_I10ptr_vectorI4sortEPSB_EELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_I10ptr_vectorI4sortEPSB_EELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !229 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairI10ptr_vectorI4sortEPS1_ED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.g)
          to label %_ZNSt4pairI10ptr_vectorI4sortEPS1_ED2Ev.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZNSt4pairI10ptr_vectorI4sortEPS1_ED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !225  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_I10ptr_vectorI4sortEPSB_EELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt4pairI10ptr_vectorI4sortEPS1_ED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !141
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_I10ptr_vectorI4sortEPSB_EELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_I10ptr_vectorI4sortEPSB_EELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i: ; preds = %_ZNSt4pairI10ptr_vectorI4sortEPS1_ED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 64) #30
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_I10ptr_vectorI4sortEPS9_EESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !1226

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_I10ptr_vectorI4sortEPS9_EESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_I10ptr_vectorI4sortEPSB_EELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i, %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !149
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !150
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !149    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_I10ptr_vectorI4sortEPS9_EESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_I10ptr_vectorI4sortEPS9_EESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.v = load i64, ptr %i.p, align 8, !tbaa !150
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_I10ptr_vectorI4sortEPS9_EESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_I10ptr_vectorI4sortEPS9_EESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.d, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_I10ptr_vectorI4sortEPS9_EESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairI10ptr_vectorI4sortEPS1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !144    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN6vectorIP4sortLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #33
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit:                 ; preds = %bb.a, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPSt15basic_streambufIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111tptp_parser4nextEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(944) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.(anonymous namespace)::token", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.val = load ptr, ptr %i.a, align 8, !tbaa !226 ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %.val5.i.i = load ptr, ptr %.val, align 8, !tbaa !359, !noalias !1232 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 29 uses
  %i.c = getelementptr i8, ptr %.val5.i.i, i64 8
  %.val5.val.i.i = load i64, ptr %i.c, align 8, !tbaa !140, !noalias !1232 ; 22 uses
  %.val653.i.i = load i64, ptr %i.b, align 8, !tbaa !262, !noalias !1232 ; 4 uses
  %.not4354.i.i = icmp ult i64 %.val653.i.i, %.val5.val.i.i
  br i1 %.not4354.i.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.lr.ph.i.i, label %._ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit_crit_edge.i

._ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !263, !noalias !1232
  %.phi.trans.insert247.i = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %.pre248.i = load i32, ptr %.phi.trans.insert247.i, align 4, !tbaa !264, !noalias !1232
  br label %_ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit.lr.ph.i.i:   ; preds = %bb.a
  %i.d = load ptr, ptr %.val5.i.i, align 8, !tbaa !225 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 20 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 6 uses
  %.promoted.i.i = load i32, ptr %i.e, align 4, !noalias !1232
  %.promoted79.i.i = load i32, ptr %i.f, align 8, !noalias !1232
  br label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i.i:         ; preds = %.backedge.i.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.lr.ph.i.i
  %.val56251.i = phi i64 [ %.val653.i.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.lr.ph.i.i ], [ %.val56252.i, %.backedge.i.i ] ; 4 uses
  %i.g = phi i32 [ %.promoted79.i.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.lr.ph.i.i ], [ %i.p, %.backedge.i.i ] ; 10 uses
  %storemerge6778.i.i = phi i32 [ %.promoted.i.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.lr.ph.i.i ], [ %storemerge6777.i.i, %.backedge.i.i ] ; 8 uses
  %.val660.i.i = phi i64 [ %.val653.i.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.lr.ph.i.i ], [ %.val6.i.i, %.backedge.i.i ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.val660.i.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !141   ; 3 uses
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @isspace(i32 noundef %i.j) #34
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit19.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i.i
  %i.l = add nuw i64 %.val660.i.i, 1              ; 3 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.m = icmp eq i8 %i.i, 10
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.n, ptr %i.f, align 8, !tbaa !263, !noalias !1232
  br label %.backedge.sink.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = add i32 %storemerge6778.i.i, 1
  br label %.backedge.sink.split.i.i

.backedge.sink.split.i.i:                         ; preds = %bb.k, %bb.j, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.thread.i.i, %bb.d, %bb.c
  %.sink.i.i = phi i32 [ 1, %bb.j ], [ %i.az, %bb.k ], [ 1, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.thread.i.i ], [ %i.o, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.ph.i.i = phi i32 [ %i.ay, %bb.j ], [ %i.aj, %bb.k ], [ %i.u, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.thread.i.i ], [ %i.g, %bb.d ], [ %i.n, %bb.c ]
  %.val6.ph.i.i = phi i64 [ %i.aw, %bb.j ], [ %i.aw, %bb.k ], [ %i.s, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.thread.i.i ], [ %i.l, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.e, align 4, !tbaa !264, !noalias !1232
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i, %.preheader.i.i, %.backedge.sink.split.i.i
  %.val56252.i = phi i64 [ %.val56251.i, %.preheader.i.i ], [ %i.ad, %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i ], [ %.val6.ph.i.i, %.backedge.sink.split.i.i ] ; 2 uses
  %i.p = phi i32 [ %i.g, %.preheader.i.i ], [ %i.ah, %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i ], [ %.ph.i.i, %.backedge.sink.split.i.i ] ; 2 uses
  %storemerge6777.i.i = phi i32 [ %storemerge6778.i.i, %.preheader.i.i ], [ %i.ai, %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i ], [ %.sink.i.i, %.backedge.sink.split.i.i ] ; 2 uses
  %.val6.i.i = phi i64 [ %.val660.i.i, %.preheader.i.i ], [ %i.ad, %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i ], [ %.val6.ph.i.i, %.backedge.sink.split.i.i ] ; 2 uses
  %.not43.i.i = icmp ult i64 %.val6.i.i, %.val5.val.i.i
  br i1 %.not43.i.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i.i, label %_ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit.i, !llvm.loop !1229

_ZNK12_GLOBAL__N_15lexer4peekEj.exit19.i.i:       ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i.i
  switch i8 %i.i, label %_ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit.i [
    i8 37, label %.preheader.i.i
    i8 47, label %bb.e
  ]

.preheader.i.i:                                   ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit19.i.i
  %.not4551.i.i = icmp ult i64 %.val660.i.i, %.val5.val.i.i
  br i1 %.not4551.i.i, label %.lr.ph.i.i, label %.backedge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.i.i
  %storemerge6776.i.i = phi i32 [ %i.v, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.i.i ], [ %storemerge6778.i.i, %.preheader.i.i ]
  %.val452.i.i = phi i64 [ %i.s, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.i.i ], [ %.val660.i.i, %.preheader.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %.val452.i.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !141
  %i.s = add i64 %.val452.i.i, 1                  ; 4 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.t = icmp eq i8 %i.r, 10
  br i1 %i.t, label %_ZN12_GLOBAL__N_15lexer3getEv.exit22.thread.i.i, label %_ZN12_GLOBAL__N_15lexer3getEv.exit22.i.i

_ZN12_GLOBAL__N_15lexer3getEv.exit22.thread.i.i:  ; preds = %.lr.ph.i.i
  %i.u = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.u, ptr %i.f, align 8, !tbaa !263, !noalias !1232
  br label %.backedge.sink.split.i.i

_ZN12_GLOBAL__N_15lexer3getEv.exit22.i.i:         ; preds = %.lr.ph.i.i
  %i.v = add i32 %storemerge6776.i.i, 1           ; 3 uses
  store i32 %i.v, ptr %i.e, align 4, !tbaa !264, !noalias !1232
  %exitcond.not.i.i = icmp eq i64 %i.s, %.val5.val.i.i
  br i1 %exitcond.not.i.i, label %_ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit.i, label %.lr.ph.i.i, !llvm.loop !1230

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit19.i.i
  %i.w = add nuw i64 %.val660.i.i, 1              ; 3 uses
  %i.x = icmp ult i64 %i.w, %.val5.val.i.i
  br i1 %i.x, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit24.i.i, label %_ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit24.i.i:       ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !141
  %i.aa = icmp eq i8 %i.z, 42
  br i1 %i.aa, label %bb.f, label %_ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit.i

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit24.i.i
  store i64 %i.w, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.ab = add i32 %storemerge6778.i.i, 1
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !264, !noalias !1232
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !141
  %i.ad = add nuw i64 %.val660.i.i, 2             ; 5 uses
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.ae = icmp eq i8 %i.ac, 10
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = add i32 %i.g, 1                         ; 2 uses
  store i32 %i.af, ptr %i.f, align 8, !tbaa !263, !noalias !1232
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = add i32 %storemerge6778.i.i, 2
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i

_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i:         ; preds = %bb.h, %bb.g
  %i.ah = phi i32 [ %i.g, %bb.h ], [ %i.af, %bb.g ] ; 2 uses
  %i.ai = phi i32 [ %i.ag, %bb.h ], [ 1, %bb.g ]  ; 3 uses
  store i32 %i.ai, ptr %i.e, align 4, !tbaa !264, !noalias !1232
  %.not4448.i.i = icmp ult i64 %i.ad, %.val5.val.i.i
  br i1 %.not4448.i.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit31.i.i, label %.backedge.i.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit31.i.i:       ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i
  %i.aj = phi i32 [ %i.bd, %_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i ], [ %i.ah, %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i ] ; 4 uses
  %i.ak = phi i32 [ %storemerge66.i.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i ], [ %i.ai, %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i ] ; 3 uses
  %.val249.i.i = phi i64 [ %i.ao, %_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i ], [ %i.ad, %_ZN12_GLOBAL__N_15lexer3getEv.exit30.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %.val249.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !141 ; 2 uses
  %i.an = icmp eq i8 %i.am, 42
  %i.ao = add i64 %.val249.i.i, 1                 ; 8 uses
  %i.ap = icmp ult i64 %i.ao, %.val5.val.i.i
  %or.cond.i.i = and i1 %i.an, %i.ap
  br i1 %or.cond.i.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.i.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.thread.i.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.i.i:       ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit31.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !141
  %i.as = icmp eq i8 %i.ar, 47
  br i1 %i.as, label %bb.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.thread.i.thread.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.thread.i.thread.i: ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.i.i
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  br label %bb.m

bb.i:                                             ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ao
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.au = add i32 %i.ak, 1
  store i32 %i.au, ptr %i.e, align 4, !tbaa !264, !noalias !1232
  %i.av = load i8, ptr %i.at, align 1, !tbaa !141
  %i.aw = add nuw i64 %.val249.i.i, 2             ; 3 uses
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.ax = icmp eq i8 %i.av, 10
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.ay, ptr %i.f, align 8, !tbaa !263, !noalias !1232
  br label %.backedge.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.az = add i32 %i.ak, 2
  br label %.backedge.sink.split.i.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.thread.i.i: ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit31.i.i
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.ba = icmp eq i8 %i.am, 10
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.thread.i.i
  %i.bb = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.bb, ptr %i.f, align 8, !tbaa !263, !noalias !1232
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.thread.i.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit32.thread.i.thread.i
  %i.bc = add i32 %i.ak, 1
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i

_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i:         ; preds = %bb.m, %bb.l
  %i.bd = phi i32 [ %i.aj, %bb.m ], [ %i.bb, %bb.l ] ; 2 uses
  %storemerge66.i.i = phi i32 [ %i.bc, %bb.m ], [ 1, %bb.l ] ; 3 uses
  store i32 %storemerge66.i.i, ptr %i.e, align 4, !tbaa !264, !noalias !1232
  %exitcond.not.i = icmp eq i64 %i.ao, %.val5.val.i.i
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit31.i.i, !llvm.loop !1231

_ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit.i: ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit24.i.i, %bb.e, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit19.i.i, %.backedge.i.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.i.i, %._ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit_crit_edge.i
  %.val56.i = phi i64 [ %.val653.i.i, %._ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit_crit_edge.i ], [ %.val5.val.i.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i ], [ %.val5.val.i.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.i.i ], [ %.val56251.i, %bb.e ], [ %.val56251.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit19.i.i ], [ %.val56252.i, %.backedge.i.i ], [ %.val56251.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit24.i.i ] ; 6 uses
  %i.be = phi i32 [ %.pre248.i, %._ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit_crit_edge.i ], [ %storemerge66.i.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i ], [ %i.v, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.i.i ], [ %storemerge6778.i.i, %bb.e ], [ %storemerge6778.i.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit19.i.i ], [ %storemerge6777.i.i, %.backedge.i.i ], [ %storemerge6778.i.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit24.i.i ] ; 6 uses
  %i.bf = phi i32 [ %.pre.i, %._ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit_crit_edge.i ], [ %i.bd, %_ZN12_GLOBAL__N_15lexer3getEv.exit41.i.i ], [ %i.g, %_ZN12_GLOBAL__N_15lexer3getEv.exit22.i.i ], [ %i.g, %bb.e ], [ %i.g, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit19.i.i ], [ %i.p, %.backedge.i.i ], [ %i.g, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit24.i.i ] ; 3 uses
  store i32 0, ptr %5, align 8, !tbaa !161, !alias.scope !1232
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 30 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 41 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !139, !alias.scope !1232
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 15 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !140, !alias.scope !1232
  store i8 0, ptr %i.bh, align 8, !tbaa !141, !alias.scope !1232
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i8 0, ptr %i.bl, align 8, !tbaa !164, !alias.scope !1232
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 14 uses
  store i32 %i.bf, ptr %i.bj, align 8, !tbaa !162, !alias.scope !1232
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 20 ; 20 uses
  store i32 %i.be, ptr %i.bk, align 4, !tbaa !163, !alias.scope !1232
  %.not203.i = icmp ult i64 %.val56.i, %.val5.val.i.i
  br i1 %.not203.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i, label %_ZN12_GLOBAL__N_15lexer4nextEv.exit

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit27.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i:           ; preds = %_ZN12_GLOBAL__N_15lexer16skip_ws_commentsEv.exit.i
  %i.bp = load ptr, ptr %.val5.i.i, align 8, !tbaa !225 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.val56.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !141 ; 9 uses
  %.pre254.i = add nuw i64 %.val56.i, 1           ; 21 uses
  switch i8 %i.br, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.i [
    i8 39, label %_ZN12_GLOBAL__N_15lexer3getEv.exit.i
    i8 34, label %_ZN12_GLOBAL__N_15lexer3getEv.exit.i
    i8 60, label %bb.as
    i8 61, label %bb.av
    i8 126, label %bb.az
    i8 33, label %bb.ba
  ]

_ZN12_GLOBAL__N_15lexer3getEv.exit.i:             ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i
  store i64 %.pre254.i, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.bs = add i32 %i.be, 1
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  store i32 2, ptr %5, align 8, !tbaa !161, !alias.scope !1232
  %i.bt = icmp eq i8 %i.br, 34
  %i.bu = zext i1 %i.bt to i8
  store i8 %i.bu, ptr %i.bl, align 8, !tbaa !164, !alias.scope !1232
  %.not207230.i = icmp ult i64 %.pre254.i, %.val5.val.i.i
  br i1 %.not207230.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit.i, %bb.an
  %.val47.val233.i = phi i64 [ %.val47.val.i, %bb.an ], [ %.val5.val.i.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit.i ]
  %.val48232.i = phi i64 [ %.val48.i, %bb.an ], [ %.pre254.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit.i ] ; 2 uses
  %.val47231.i = phi ptr [ %.val47.i, %bb.an ], [ %.val5.i.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit.i ]
  %i.bv = load ptr, ptr %.val47231.i, align 8, !tbaa !225
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.val48232.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !141 ; 4 uses
  %i.by = add nuw i64 %.val48232.i, 1             ; 2 uses
  store i64 %i.by, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.bz = icmp eq i8 %i.bx, 10
  br i1 %i.bz, label %_ZN12_GLOBAL__N_15lexer3getEv.exit112.thread.i, label %_ZN12_GLOBAL__N_15lexer3getEv.exit112.i

_ZN12_GLOBAL__N_15lexer3getEv.exit112.thread.i:   ; preds = %.lr.ph.i
  %i.ca = load i32, ptr %i.bm, align 8, !tbaa !263, !noalias !1232
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bm, align 8, !tbaa !263, !noalias !1232
  store i32 1, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  br label %bb.af

_ZN12_GLOBAL__N_15lexer3getEv.exit112.i:          ; preds = %.lr.ph.i
  %i.cc = load i32, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  %i.ce = icmp eq i8 %i.bx, 92
  %.not208.i = icmp ult i64 %i.by, %.val47.val233.i
  %or.cond.i = select i1 %i.ce, i1 %.not208.i, i1 false
  br i1 %or.cond.i, label %bb.o, label %bb.af

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit112.i
  %i.cf = load i64, ptr %i.bi, align 8, !tbaa !140, !alias.scope !1232 ; 5 uses
  %i.cg = add i64 %i.cf, 1                        ; 9 uses
  %i.ch = load ptr, ptr %i.bg, align 8, !tbaa !225, !alias.scope !1232 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, %i.bh
  br i1 %i.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.o
  %i.cj = icmp samesign ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ugt i64 %i.cg, 15
  br i1 %i.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60, label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread: ; preds = %bb.o
  %i.cl = load i64, ptr %i.bh, align 8, !tbaa !141, !alias.scope !1232
  %i.cm = icmp ugt i64 %i.cg, %i.cl
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread
  %i.cn = load i64, ptr %i.bh, align 8, !tbaa !141
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.co = phi i64 [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ] ; 2 uses
  %i.cp = icmp slt i64 %i.cg, 0
  br i1 %i.cp, label %.invoke, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60
  %i.cq = icmp ugt i64 %i.cg, %i.co
  br i1 %i.cq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cr = shl nuw i64 %i.co, 1                    ; 2 uses
  %i.cs = icmp ult i64 %i.cg, %i.cr
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %spec.store.select.i.i72 = call i64 @llvm.umin.i64(i64 %i.cr, i64 9223372036854775807)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.0.i61 = phi i64 [ %spec.store.select.i.i72, %bb.r ], [ %i.cg, %bb.q ], [ %i.cg, %bb.p ] ; 2 uses
  %i.ct = add nuw i64 %.0.i61, 1                  ; 2 uses
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %.invoke285, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i62, !prof !227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i62: ; preds = %bb.s
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #32
          to label %.noexc76 unwind label %.loopexit ; 4 uses

.noexc76:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i62
  %.pre.i67.pre = load ptr, ptr %i.bg, align 8, !tbaa !225 ; 4 uses
  switch i64 %i.cf, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i69
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %.noexc76
  %i.cw = load i8, ptr %.pre.i67.pre, align 1, !tbaa !141
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i69

bb.u:                                             ; preds = %.noexc76
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr align 1 %.pre.i67.pre, i64 %i.cf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i69: ; preds = %.noexc76, %bb.t, %bb.u
  %i.cx = icmp eq ptr %.pre.i67.pre, %i.bh
  br i1 %i.cx, label %.noexc.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i69
  %i.cy = load i64, ptr %i.bh, align 8, !tbaa !141
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %.pre.i67.pre, i64 noundef %i.cz) #30
  br label %.noexc.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i70
  store ptr %i.cv, ptr %i.bg, align 8, !tbaa !225
  store i64 %.0.i61, ptr %i.bh, align 8, !tbaa !141
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.da = phi ptr [ %i.cv, %.noexc.i ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cf
  store i8 92, ptr %i.db, align 1, !tbaa !141
  store i64 %i.cg, ptr %i.bi, align 8, !tbaa !140, !alias.scope !1232
  %i.dc = load ptr, ptr %i.bg, align 8, !tbaa !225, !alias.scope !1232
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cg
  store i8 0, ptr %i.dd, align 1, !tbaa !141
  %.val3.i113.i = load ptr, ptr %.val, align 8, !tbaa !359, !noalias !1232 ; 2 uses
  %.val4.i114.i = load i64, ptr %i.b, align 8, !tbaa !262, !noalias !1232 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val3.i113.i, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !140
  %i.dg = icmp ult i64 %.val4.i114.i, %i.df
  br i1 %i.dg, label %bb.w, label %_ZN12_GLOBAL__N_15lexer3getEv.exit115.i

bb.w:                                             ; preds = %bb.v
  %i.dh = load ptr, ptr %.val3.i113.i, align 8, !tbaa !225
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.val4.i114.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !141 ; 2 uses
  %i.dk = add nuw i64 %.val4.i114.i, 1
  store i64 %i.dk, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.dl = icmp eq i8 %i.dj, 10
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dm = load i32, ptr %i.bm, align 8, !tbaa !263, !noalias !1232
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.bm, align 8, !tbaa !263, !noalias !1232
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit115.sink.split.i

bb.y:                                             ; preds = %bb.w
  %i.do = load i32, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  %i.dp = add i32 %i.do, 1
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit115.sink.split.i

_ZN12_GLOBAL__N_15lexer3getEv.exit115.sink.split.i: ; preds = %bb.y, %bb.x
  %.sink.i = phi i32 [ 1, %bb.x ], [ %i.dp, %bb.y ]
  store i32 %.sink.i, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit115.i

_ZN12_GLOBAL__N_15lexer3getEv.exit115.i:          ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit115.sink.split.i, %bb.v
  %i.dq = phi i8 [ 0, %bb.v ], [ %i.dj, %_ZN12_GLOBAL__N_15lexer3getEv.exit115.sink.split.i ]
  %i.dr = load i64, ptr %i.bi, align 8, !tbaa !140, !alias.scope !1232 ; 5 uses
  %i.ds = add i64 %i.dr, 1                        ; 8 uses
  %i.dt = load ptr, ptr %i.bg, align 8, !tbaa !225, !alias.scope !1232 ; 3 uses
  %i.du = icmp eq ptr %i.dt, %i.bh
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i: ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit115.i
  %i.dv = icmp samesign ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp samesign ugt i64 %i.ds, 15
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit121.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i.thread: ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit115.i
  %i.dx = load i64, ptr %i.bh, align 8, !tbaa !141, !alias.scope !1232
  %i.dy = icmp ugt i64 %i.ds, %i.dx
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit121.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i.thread
  %i.dz = load i64, ptr %i.bh, align 8, !tbaa !141
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.ea = phi i64 [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i ] ; 2 uses
  %i.eb = icmp slt i64 %i.ds, 0
  br i1 %i.eb, label %.invoke, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41
  %i.ec = icmp ugt i64 %i.ds, %i.ea
  br i1 %i.ec, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ed = shl nuw i64 %i.ea, 1                    ; 2 uses
  %i.ee = icmp ult i64 %i.ds, %i.ed
  br i1 %i.ee, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %spec.store.select.i.i53 = call i64 @llvm.umin.i64(i64 %i.ed, i64 9223372036854775807)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i42 = phi i64 [ %spec.store.select.i.i53, %bb.ab ], [ %i.ds, %bb.aa ], [ %i.ds, %bb.z ] ; 2 uses
  %i.ef = add nuw i64 %.0.i42, 1                  ; 2 uses
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %.invoke285, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i43, !prof !227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i43: ; preds = %bb.ac
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #32
          to label %.noexc57 unwind label %.loopexit ; 4 uses

.noexc57:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i43
  %.pre.i48.pre = load ptr, ptr %i.bg, align 8, !tbaa !225 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111tptp_parser4nextEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i50: ; preds = %.noexc57, %bb.ad, %bb.ae
  %i.ej = icmp eq ptr %.pre.i48.pre, %i.bh
  br i1 %i.ej, label %.noexc120.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i50
  %i.ek = load i64, ptr %i.bh, align 8, !tbaa !141
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %.pre.i48.pre, i64 noundef %i.el) #30
  br label %.noexc120.i

.noexc120.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i51
  store ptr %i.eh, ptr %i.bg, align 8, !tbaa !225
  store i64 %.0.i42, ptr %i.bh, align 8, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit121.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit121.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i.thread, %.noexc120.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i
  %i.em = phi ptr [ %i.eh, %.noexc120.i ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117.i.thread ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.dr
  store i8 %i.dq, ptr %i.en, align 1, !tbaa !141
  br label %bb.an

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i62
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp:                               ; preds = %.invoke285, %.invoke
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.af:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit112.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit112.thread.i
  %i.eo = icmp eq i8 %i.bx, %i.br
  br i1 %i.eo, label %_ZN12_GLOBAL__N_15lexer4nextEv.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ep = load i64, ptr %i.bi, align 8, !tbaa !140, !alias.scope !1232 ; 5 uses
  %i.eq = add i64 %i.ep, 1                        ; 8 uses
  %i.er = load ptr, ptr %i.bg, align 8, !tbaa !225, !alias.scope !1232 ; 3 uses
  %i.es = icmp eq ptr %i.er, %i.bh
  br i1 %i.es, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i: ; preds = %bb.ag
  %i.et = icmp samesign ult i64 %i.ep, 16
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp samesign ugt i64 %i.eq, 15
  br i1 %i.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i32, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i.thread: ; preds = %bb.ag
  %i.ev = load i64, ptr %i.bh, align 8, !tbaa !141, !alias.scope !1232
  %i.ew = icmp ugt i64 %i.eq, %i.ev
  br i1 %i.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i.thread
  %i.ex = load i64, ptr %i.bh, align 8, !tbaa !141
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.ey = phi i64 [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i ] ; 2 uses
  %i.ez = icmp slt i64 %i.eq, 0
  br i1 %i.ez, label %.invoke, label %bb.ah

.invoke:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i32
  %i.fa = icmp ugt i64 %i.eq, %i.ey
  br i1 %i.fa, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fb = shl nuw i64 %i.ey, 1                    ; 2 uses
  %i.fc = icmp ult i64 %i.eq, %i.fb
  br i1 %i.fc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.fb, i64 9223372036854775807)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0.i33 = phi i64 [ %spec.store.select.i.i, %bb.aj ], [ %i.eq, %bb.ai ], [ %i.eq, %bb.ah ] ; 2 uses
  %i.fd = add nuw i64 %.0.i33, 1                  ; 2 uses
  %i.fe = icmp slt i64 %i.fd, 0
  br i1 %i.fe, label %.invoke285, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !227

.invoke285:                                       ; preds = %bb.s, %bb.ac, %bb.ak
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.cont286 unwind label %.loopexit.split-lp

.cont286:                                         ; preds = %.invoke285
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.ak
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #32
          to label %.noexc39 unwind label %.loopexit ; 4 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %.pre.i35.pre = load ptr, ptr %i.bg, align 8, !tbaa !225 ; 4 uses
  switch i64 %i.ep, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %.noexc39
  %i.fg = load i8, ptr %.pre.i35.pre, align 1, !tbaa !141
  store i8 %i.fg, ptr %i.ff, align 1, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.am:                                            ; preds = %.noexc39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ff, ptr align 1 %.pre.i35.pre, i64 %i.ep, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %.noexc39, %bb.al, %bb.am
  %i.fh = icmp eq ptr %.pre.i35.pre, %i.bh
  br i1 %i.fh, label %.noexc126.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.fi = load i64, ptr %i.bh, align 8, !tbaa !141
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %.pre.i35.pre, i64 noundef %i.fj) #30
  br label %.noexc126.i

.noexc126.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.ff, ptr %i.bg, align 8, !tbaa !225
  store i64 %.0.i33, ptr %i.bh, align 8, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit127.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit127.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i.thread, %.noexc126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i
  %i.fk = phi ptr [ %i.ff, %.noexc126.i ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i123.i.thread ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ep
  store i8 %i.bx, ptr %i.fl, align 1, !tbaa !141
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit127.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit121.i
  %.sink323.i = phi i64 [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit127.i ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit121.i ] ; 2 uses
  store i64 %.sink323.i, ptr %i.bi, align 8, !tbaa !140, !alias.scope !1232
  %i.fm = load ptr, ptr %i.bg, align 8, !tbaa !225, !alias.scope !1232
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.sink323.i
  store i8 0, ptr %i.fn, align 1, !tbaa !141
  %.val47.i = load ptr, ptr %.val, align 8, !tbaa !359, !noalias !1232 ; 2 uses
  %.val48.i = load i64, ptr %i.b, align 8, !tbaa !262, !noalias !1232 ; 2 uses
  %i.fo = getelementptr i8, ptr %.val47.i, i64 8
  %.val47.val.i = load i64, ptr %i.fo, align 8, !tbaa !140 ; 2 uses
  %.not207.i = icmp ult i64 %.val48.i, %.val47.val.i
  br i1 %.not207.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.an, %_ZN12_GLOBAL__N_15lexer3getEv.exit.i
  %i.fp = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !1232
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.98, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ao:                                            ; preds = %._crit_edge.i
  invoke fastcc void @_ZN12_GLOBAL__N_111parse_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.fp, ptr nonnull @_ZTIN12_GLOBAL__N_111parse_errorE, ptr nonnull @_ZN12_GLOBAL__N_111parse_errorD2Ev) #31
          to label %bb.dk unwind label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %._crit_edge.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !1232
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.019.i = phi i1 [ false, %bb.ap ], [ true, %bb.ao ] ; 2 uses
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fs = load ptr, ptr %1, align 8, !tbaa !225, !noalias !1232 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i: ; preds = %bb.aq
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !141, !noalias !1232
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !1232
  br i1 %.019.i, label %bb.ar, label %.loopexit.split-lp.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !1232
  br i1 %.019.i, label %bb.ar, label %.loopexit.split-lp.i

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn40185.i = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i ]
  call void @__cxa_free_exception(ptr %i.fp) #29
  br label %.loopexit.split-lp.i

bb.as:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i
  %i.fx = icmp ult i64 %.pre254.i, %.val5.val.i.i
  br i1 %i.fx, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit131.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.thread295.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit131.i:        ; preds = %bb.as
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.pre254.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !141
  switch i8 %i.fz, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.thread295.i [
    i8 61, label %bb.at
    i8 126, label %bb.au
  ]

bb.at:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit131.i
  %i.ga = add nuw i64 %.val56.i, 2                ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %.val5.val.i.i
  br i1 %i.gb, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit132.i, label %.invoke.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit132.i:        ; preds = %bb.at
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ga
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !141
  %i.ge = icmp eq i8 %i.gd, 62
  br i1 %i.ge, label %.invoke.sink.split.i, label %.invoke.i

bb.au:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit131.i
  %i.gf = add nuw i64 %.val56.i, 2                ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %.val5.val.i.i
  br i1 %i.gg, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit135.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.thread295.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit135.i:        ; preds = %bb.au
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.gf
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !141
  %i.gj = icmp eq i8 %i.gi, 62
  br i1 %i.gj, label %.invoke.sink.split.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.thread295.i

bb.av:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i
  %i.gk = icmp ult i64 %.pre254.i, %.val5.val.i.i
  br i1 %i.gk, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit137.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.thread295.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit137.i:        ; preds = %bb.av
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.pre254.i ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !141
  %i.gn = icmp eq i8 %i.gm, 62
  br i1 %i.gn, label %bb.aw, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.thread295.i

bb.aw:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit137.i
  store i64 %.pre254.i, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.go = add i32 %i.be, 1
  store i32 %i.go, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !141
  %i.gq = add nuw i64 %.val56.i, 2
  store i64 %i.gq, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.gr = icmp eq i8 %i.gp, 10
  br i1 %i.gr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gs = add i32 %i.bf, 1
  store i32 %i.gs, ptr %i.bm, align 8, !tbaa !263, !noalias !1232
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit143.i

bb.ay:                                            ; preds = %bb.aw
  %i.gt = add i32 %i.be, 2
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit143.i

_ZN12_GLOBAL__N_15lexer3getEv.exit143.i:          ; preds = %bb.ay, %bb.ax
  %storemerge.i = phi i32 [ %i.gt, %bb.ay ], [ 1, %bb.ax ]
  store i32 %storemerge.i, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  store i32 20, ptr %5, align 8, !tbaa !161, !alias.scope !1232
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit27.invoke

bb.az:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i
  %i.gu = icmp ult i64 %.pre254.i, %.val5.val.i.i
  br i1 %i.gu, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit148.i, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.thread295.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit148.i:        ; preds = %bb.az
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.pre254.i
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !141
  switch i8 %i.gw, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.thread295.i [
    i8 124, label %.invoke.i
    i8 38, label %.invoke.i.fold.split
  ]

_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.thread295.i: ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit148.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit131.i, %bb.au, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit135.i, %bb.az, %bb.as, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit137.i, %bb.av
  store i64 %.pre254.i, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i

bb.ba:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i
  %i.gx = icmp ult i64 %.pre254.i, %.val5.val.i.i
  br i1 %i.gx, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.i, label %_ZN12_GLOBAL__N_15lexer3getEv.exit155.thread297.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.i:        ; preds = %bb.ba
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.pre254.i
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !141
  %i.ha = icmp eq i8 %i.gz, 61
  br i1 %i.ha, label %.invoke.i, label %_ZN12_GLOBAL__N_15lexer3getEv.exit155.thread297.i

.invoke.sink.split.i:                             ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit135.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit132.i
  %.sink324.ph.i = phi i32 [ 19, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit132.i ], [ 22, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit135.i ]
  %.ph327.i = phi ptr [ @.str.63, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit132.i ], [ @.str.64, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit135.i ]
  call fastcc void @_ZN12_GLOBAL__N_15lexer3getEv(ptr noundef nonnull align 8 dereferenceable(24) %.val)
  br label %.invoke.i

.invoke.i.fold.split:                             ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit148.i
  br label %.invoke.i

.invoke.i:                                        ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit148.i, %.invoke.i.fold.split, %bb.at, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit132.i, %.invoke.sink.split.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.i
  %.sink324.i = phi i32 [ 23, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit148.i ], [ 18, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.i ], [ 21, %bb.at ], [ %.sink324.ph.i, %.invoke.sink.split.i ], [ 21, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit132.i ], [ 24, %.invoke.i.fold.split ]
  %i.hb = phi ptr [ @.str.68, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit148.i ], [ @.str.72, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.i ], [ @.str.66, %bb.at ], [ %.ph327.i, %.invoke.sink.split.i ], [ @.str.66, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit132.i ], [ @.str.70, %.invoke.i.fold.split ] ; 2 uses
  %.val3.i28 = load ptr, ptr %.val, align 8, !tbaa !359 ; 3 uses
  %.val4.i29 = load i64, ptr %i.b, align 8, !tbaa !262 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.val3.i28, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !140 ; 2 uses
  %i.he = icmp ult i64 %.val4.i29, %i.hd
  br i1 %i.he, label %bb.bb, label %_ZN12_GLOBAL__N_15lexer3getEv.exit30

bb.bb:                                            ; preds = %.invoke.i
  %i.hf = load ptr, ptr %.val3.i28, align 8, !tbaa !225
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.val4.i29
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !141
  %i.hi = add nuw i64 %.val4.i29, 1               ; 2 uses
  store i64 %i.hi, ptr %i.b, align 8, !tbaa !262
  %i.hj = icmp eq i8 %i.hh, 10
  br i1 %i.hj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hk = load i32, ptr %i.bm, align 8, !tbaa !263
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.bm, align 8, !tbaa !263
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit30.sink.split

bb.bd:                                            ; preds = %bb.bb
  %i.hm = load i32, ptr %i.bn, align 4, !tbaa !264
  %i.hn = add i32 %i.hm, 1
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit30.sink.split

_ZN12_GLOBAL__N_15lexer3getEv.exit30.sink.split:  ; preds = %bb.bd, %bb.bc
  %.sink = phi i32 [ 1, %bb.bc ], [ %i.hn, %bb.bd ]
  store i32 %.sink, ptr %i.bn, align 4, !tbaa !264
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit30

_ZN12_GLOBAL__N_15lexer3getEv.exit30:             ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit30.sink.split, %.invoke.i
  %.val4.i26 = phi i64 [ %.val4.i29, %.invoke.i ], [ %i.hi, %_ZN12_GLOBAL__N_15lexer3getEv.exit30.sink.split ] ; 3 uses
  %i.ho = icmp ult i64 %.val4.i26, %i.hd
  br i1 %i.ho, label %bb.be, label %_ZN12_GLOBAL__N_15lexer3getEv.exit27

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit30
  %i.hp = load ptr, ptr %.val3.i28, align 8, !tbaa !225
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.val4.i26
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !141
  %i.hs = add nuw i64 %.val4.i26, 1
  store i64 %i.hs, ptr %i.b, align 8, !tbaa !262
  %i.ht = icmp eq i8 %i.hr, 10
  br i1 %i.ht, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hu = load i32, ptr %i.bm, align 8, !tbaa !263
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr %i.bm, align 8, !tbaa !263
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit27.sink.split

bb.bg:                                            ; preds = %bb.be
  %i.hw = load i32, ptr %i.bn, align 4, !tbaa !264
  %i.hx = add i32 %i.hw, 1
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit27.sink.split

_ZN12_GLOBAL__N_15lexer3getEv.exit27.sink.split:  ; preds = %bb.bg, %bb.bf
  %.sink287 = phi i32 [ 1, %bb.bf ], [ %i.hx, %bb.bg ]
  store i32 %.sink287, ptr %i.bn, align 4, !tbaa !264
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit27

_ZN12_GLOBAL__N_15lexer3getEv.exit27:             ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit27.sink.split, %_ZN12_GLOBAL__N_15lexer3getEv.exit30
  store i32 %.sink324.i, ptr %5, align 8, !tbaa !161, !alias.scope !1232
  %i.hy = load i64, ptr %i.bi, align 8, !tbaa !140
  %i.hz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hb) #29
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit27.invoke

_ZN12_GLOBAL__N_15lexer3getEv.exit27.invoke:      ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit143.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit27
  %i.ia = phi i64 [ %i.hy, %_ZN12_GLOBAL__N_15lexer3getEv.exit27 ], [ 0, %_ZN12_GLOBAL__N_15lexer3getEv.exit143.i ]
  %i.ib = phi ptr [ %i.hb, %_ZN12_GLOBAL__N_15lexer3getEv.exit27 ], [ @.str.65, %_ZN12_GLOBAL__N_15lexer3getEv.exit143.i ]
  %i.ic = phi i64 [ %i.hz, %_ZN12_GLOBAL__N_15lexer3getEv.exit27 ], [ 2, %_ZN12_GLOBAL__N_15lexer3getEv.exit143.i ]
  %i.id = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef 0, i64 noundef %i.ia, ptr noundef nonnull %i.ib, i64 noundef %i.ic)
          to label %_ZN12_GLOBAL__N_15lexer4nextEv.exit unwind label %bb.n ; 0 uses

_ZN12_GLOBAL__N_15lexer3getEv.exit155.thread297.i: ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.i, %bb.ba
  store i64 %.pre254.i, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.ie = add i32 %i.be, 1
  store i32 %i.ie, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  br label %bb.br

_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.i: ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit.i
  store i64 %.pre254.i, ptr %i.b, align 8, !tbaa !262, !noalias !1232
  %i.if = icmp eq i8 %i.br, 10
  br i1 %i.if, label %bb.bh, label %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i

bb.bh:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.i
  %i.ig = add i32 %i.bf, 1
  store i32 %i.ig, ptr %i.bm, align 8, !tbaa !263, !noalias !1232
  store i32 1, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  br label %_ZN12_GLOBAL__N_15lexer3getEv.exit155.thread.i

_ZN12_GLOBAL__N_15lexer3getEv.exit155.i:          ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit152.thread.thread295.i
  %i.ih = add i32 %i.be, 1
  store i32 %i.ih, ptr %i.bn, align 4, !tbaa !264, !noalias !1232
  switch i8 %i.br, label %_ZN12_GLOBAL__N_15lexer3getEv.exit155.thread.i [
    i8 40, label %.critedge45.sink.split.i
    i8 41, label %bb.bi
    i8 91, label %bb.bj
    i8 93, label %bb.bk
    i8 44, label %bb.bl
    i8 46, label %bb.bm
    i8 58, label %bb.bn
    i8 38, label %bb.bo
    i8 124, label %bb.bp
    i8 126, label %bb.bq
    i8 33, label %bb.br
    i8 63, label %bb.bt
    i8 61, label %bb.bv
    i8 62, label %bb.bw
    i8 60, label %bb.bx
    i8 42, label %bb.by
    i8 47, label %bb.bz
    i8 45, label %bb.ca
    i8 64, label %bb.cb
    i8 94, label %bb.cd
    i8 123, label %bb.ce
  ]

.loopexit.i.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i81
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.i.loopexit.split-lp:                    ; preds = %bb.cr, %bb.cw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i.loopexit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i119
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i.loopexit.split-lp:  ; preds = %bb.cg, %bb.cl
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.critedge.i, %bb.ce, %.invoke325.i
  %lpad.loopexit.split-lp213.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bi:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bj:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bk:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bm:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bn:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bo:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bp:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bq:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.br:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i, %_ZN12_GLOBAL__N_15lexer3getEv.exit155.thread297.i
  %i.ii = icmp ult i64 %.pre254.i, %.val5.val.i.i
  br i1 %i.ii, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit156.i, label %.critedge45.sink.split.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit156.i:        ; preds = %bb.br
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.pre254.i
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !141
  switch i8 %i.ik, label %.critedge45.sink.split.i [
    i8 62, label %bb.bs
    i8 33, label %.invoke325.i
  ]

bb.bs:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit156.i
  call fastcc void @_ZN12_GLOBAL__N_15lexer3getEv(ptr noundef nonnull align 8 dereferenceable(24) %.val)
  br label %.critedge45.sink.split.i

bb.bt:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  %i.il = icmp ult i64 %.pre254.i, %.val5.val.i.i
  br i1 %i.il, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit158.i, label %.critedge45.sink.split.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit158.i:        ; preds = %bb.bt
  %i.im = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.pre254.i
  %i.in = load i8, ptr %i.im, align 1, !tbaa !141
  switch i8 %i.in, label %.critedge45.sink.split.i [
    i8 42, label %bb.bu
    i8 63, label %.invoke325.i
  ]

bb.bu:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit158.i
  call fastcc void @_ZN12_GLOBAL__N_15lexer3getEv(ptr noundef nonnull align 8 dereferenceable(24) %.val)
  br label %.critedge45.sink.split.i

bb.bv:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bw:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bx:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.by:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.bz:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.ca:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.cb:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  %i.io = icmp ult i64 %.pre254.i, %.val5.val.i.i
  br i1 %i.io, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit160.i, label %.critedge45.sink.split.i

_ZNK12_GLOBAL__N_15lexer4peekEj.exit160.i:        ; preds = %bb.cb
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.pre254.i
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !141
  switch i8 %i.iq, label %.critedge45.sink.split.i [
    i8 43, label %.invoke325.i
    i8 45, label %bb.cc
  ]

bb.cc:                                            ; preds = %_ZNK12_GLOBAL__N_15lexer4peekEj.exit160.i
  br label %.invoke325.i

.invoke325.i:                                     ; preds = %bb.cc, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit160.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit158.i, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit156.i
  %i.ir = phi ptr [ @.str.102, %bb.cc ], [ @.str.100, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit158.i ], [ @.str.99, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit156.i ], [ @.str.101, %_ZNK12_GLOBAL__N_15lexer4peekEj.exit160.i ]
  call fastcc void @_ZN12_GLOBAL__N_15lexer3getEv(ptr noundef nonnull align 8 dereferenceable(24) %.val)
  store i32 1, ptr %5, align 8, !tbaa !161, !alias.scope !1232
  %i.is = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull %i.ir)
          to label %_ZN12_GLOBAL__N_15lexer4nextEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.cd:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  br label %.critedge45.sink.split.i

bb.ce:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i
  store i32 32, ptr %5, align 8, !tbaa !161, !alias.scope !1232
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 noundef signext 123)
          to label %.preheader210.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.i

.preheader210.i.preheader:                        ; preds = %bb.ce
  %.val53.i169 = load ptr, ptr %.val, align 8, !tbaa !359, !noalias !1232 ; 2 uses
  %.val54.i170 = load i64, ptr %i.b, align 8, !tbaa !262, !noalias !1232 ; 2 uses
  %i.it = getelementptr i8, ptr %.val53.i169, i64 8
  %.val53.val.i171 = load i64, ptr %i.it, align 8, !tbaa !140
  %.not204.i172 = icmp ult i64 %.val54.i170, %.val53.val.i171
  br i1 %.not204.i172, label %.lr.ph, label %_ZN12_GLOBAL__N_15lexer4nextEv.exit

.lr.ph:                                           ; preds = %.preheader210.i.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20
  %.val54.i174 = phi i64 [ %.val54.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20 ], [ %.val54.i170, %.preheader210.i.preheader ] ; 2 uses
  %.val53.i173 = phi ptr [ %.val53.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20 ], [ %.val53.i169, %.preheader210.i.preheader ]
  %i.iu = load ptr, ptr %.val53.i173, align 8, !tbaa !225
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %.val54.i174
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !141 ; 3 uses
  %i.ix = add nuw i64 %.val54.i174, 1
  store i64 %i.ix, ptr %i.b, align 8, !tbaa !262
  %i.iy = icmp eq i8 %i.iw, 10
  br i1 %i.iy, label %_ZN12_GLOBAL__N_15lexer3getEv.exit23.thread, label %_ZN12_GLOBAL__N_15lexer3getEv.exit23

_ZN12_GLOBAL__N_15lexer3getEv.exit23.thread:      ; preds = %.lr.ph
  %i.iz = load i32, ptr %i.bm, align 8, !tbaa !263
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.bm, align 8, !tbaa !263
  store i32 1, ptr %i.bn, align 4, !tbaa !264
  br label %bb.cf

_ZN12_GLOBAL__N_15lexer3getEv.exit23:             ; preds = %.lr.ph
  %.not.i = icmp eq i8 %i.iw, 125
  %i.jb = load i32, ptr %i.bn, align 4, !tbaa !264
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.bn, align 4, !tbaa !264
  br i1 %.not.i, label %.critedge.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit23.thread, %_ZN12_GLOBAL__N_15lexer3getEv.exit23
  %i.jd = load i64, ptr %i.bi, align 8, !tbaa !140 ; 5 uses
  %i.je = add i64 %i.jd, 1                        ; 9 uses
  %i.jf = load ptr, ptr %i.bg, align 8, !tbaa !225 ; 3 uses
  %i.jg = icmp eq ptr %i.jf, %i.bh
  br i1 %i.jg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16: ; preds = %bb.cf
  %i.jh = icmp samesign ult i64 %i.jd, 16
  call void @llvm.assume(i1 %i.jh)
  %i.ji = icmp samesign ugt i64 %i.je, 15
  br i1 %i.ji, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16.thread: ; preds = %bb.cf
  %i.jj = load i64, ptr %i.bh, align 8, !tbaa !141 ; 2 uses
  %i.jk = icmp ugt i64 %i.je, %i.jj
  br i1 %i.jk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16
  %i.jl = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16 ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16.thread ] ; 2 uses
  %i.jm = icmp slt i64 %i.je, 0
  br i1 %i.jm, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp

.noexc131:                                        ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117
  %i.jn = icmp ugt i64 %i.je, %i.jl
  br i1 %i.jn, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.jo = shl nuw i64 %i.jl, 1                    ; 2 uses
  %i.jp = icmp ult i64 %i.je, %i.jo
  br i1 %i.jp, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %spec.store.select.i.i129 = call i64 @llvm.umin.i64(i64 %i.jo, i64 9223372036854775807)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %.0.i118 = phi i64 [ %spec.store.select.i.i129, %bb.cj ], [ %i.je, %bb.ci ], [ %i.je, %bb.ch ] ; 2 uses
  %i.jq = add nuw i64 %.0.i118, 1                 ; 2 uses
  %i.jr = icmp slt i64 %i.jq, 0
  br i1 %i.jr, label %bb.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i119, !prof !227

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp

.noexc132:                                        ; preds = %bb.cl
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i119: ; preds = %bb.ck
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jq) #32
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.i.loopexit ; 4 uses

.noexc133:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i119
  %.pre.i124.pre = load ptr, ptr %i.bg, align 8, !tbaa !225 ; 4 uses
  switch i64 %i.jd, label %bb.cn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i126
    i64 1, label %bb.cm
  ]

bb.cm:                                            ; preds = %.noexc133
  %i.jt = load i8, ptr %.pre.i124.pre, align 1, !tbaa !141
  store i8 %i.jt, ptr %i.js, align 1, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i126

bb.cn:                                            ; preds = %.noexc133
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.js, ptr align 1 %.pre.i124.pre, i64 %i.jd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i126: ; preds = %.noexc133, %bb.cm, %bb.cn
  %i.ju = icmp eq ptr %.pre.i124.pre, %i.bh
  br i1 %i.ju, label %.noexc19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i126
  %i.jv = load i64, ptr %i.bh, align 8, !tbaa !141
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %.pre.i124.pre, i64 noundef %i.jw) #30
  br label %.noexc19

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i127
  store ptr %i.js, ptr %i.bg, align 8, !tbaa !225
  store i64 %.0.i118, ptr %i.bh, align 8, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16, %.noexc19
  %i.jx = phi ptr [ %i.js, %.noexc19 ], [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16 ], [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i16.thread ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jd
  store i8 %i.iw, ptr %i.jy, align 1, !tbaa !141
  store i64 %i.je, ptr %i.bi, align 8, !tbaa !140
  %i.jz = load ptr, ptr %i.bg, align 8, !tbaa !225
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.je
  store i8 0, ptr %i.ka, align 1, !tbaa !141
  %.val53.i = load ptr, ptr %.val, align 8, !tbaa !359, !noalias !1232 ; 2 uses
  %.val54.i = load i64, ptr %i.b, align 8, !tbaa !262, !noalias !1232 ; 2 uses
  %i.kb = getelementptr i8, ptr %.val53.i, i64 8
  %.val53.val.i = load i64, ptr %i.kb, align 8, !tbaa !140
  %.not204.i = icmp ult i64 %.val54.i, %.val53.val.i
  br i1 %.not204.i, label %.lr.ph, label %_ZN12_GLOBAL__N_15lexer4nextEv.exit

.critedge.i:                                      ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 noundef signext 125)
          to label %_ZN12_GLOBAL__N_15lexer4nextEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i

_ZN12_GLOBAL__N_15lexer3getEv.exit155.thread.i:   ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.i, %bb.bh
  %i.kc = zext i8 %i.br to i32
  %i.kd = call i32 @isalnum(i32 noundef %i.kc) #34
  %.fr.i = freeze i32 %i.kd
  %.not205.i = icmp eq i32 %.fr.i, 0
  br i1 %.not205.i, label %switch.early.test.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit14

switch.early.test.i:                              ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.thread.i
  switch i8 %i.br, label %bb.cz [
    i8 95, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit14
    i8 36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit14
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit14: ; preds = %_ZN12_GLOBAL__N_15lexer3getEv.exit155.thread.i, %switch.early.test.i, %switch.early.test.i
  store i32 1, ptr %5, align 8, !tbaa !161, !alias.scope !1232
  store i8 %i.br, ptr %i.bh, align 8, !tbaa !141
  store i64 1, ptr %i.bi, align 8, !tbaa !140
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 0, ptr %i.ke, align 1, !tbaa !141
  %.val49.i175 = load ptr, ptr %.val, align 8, !tbaa !359, !noalias !1232 ; 2 uses
  %.val50.i176 = load i64, ptr %i.b, align 8, !tbaa !262, !noalias !1232 ; 2 uses
  %i.kf = getelementptr i8, ptr %.val49.i175, i64 8
  %.val49.val.i177 = load i64, ptr %i.kf, align 8, !tbaa !140
  %.not206.i178 = icmp ult i64 %.val50.i176, %.val49.val.i177
  br i1 %.not206.i178, label %_ZNK12_GLOBAL__N_15lexer4peekEj.exit164.i, label %_ZN12_GLOBAL__N_15lexer4nextEv.exit

_ZNK12_GLOBAL__N_15lexer4peekEj.exit164.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.val50.i180 = phi i64 [ %.val50.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %.val50.i176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit14 ] ; 3 uses
  %.val49.i179 = phi ptr [ %.val49.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %.val49.i175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit14 ]
end_hunk_1
