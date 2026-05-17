inline.NumInlined: 6620
inline.NumDeleted: 2684
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_range_initializeIPKS5_EEvT_SB_St20forward_iterator_tag:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %.013.i.i.i.i, align 8
  %i.k = load ptr, ptr %.0812.i.i.i.i, align 8    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 8 uses
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.c, label %._crit_edge.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #28 ; 2 uses
  store ptr %i.r, ptr %.013.i.i.i.i, align 8
  store i64 %i.m, ptr %i.j, align 8
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i ] ; 3 uses
  switch i64 %i.m, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.t = load i8, ptr %i.k, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  store i64 %i.m, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store i8 0, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !632

_ZSt22__uninitialized_copy_aIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.thread ], [ %i.x, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.y, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = load ptr, ptr %.06.i.i, align 8          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.d, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 40) #29
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !633

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i, %bb.a
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = shl i64 %i.v, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.w, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #29
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node18EnvironmentOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(1440) %0) unnamed_addr #2 comdat align 2 {
._crit_edge.i.i:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4node18EnvironmentOptionsE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x i8> <i8 1, i8 0, i8 0, i8 1>, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 0, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i32 16843009, ptr %i.j, align 1
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 0, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 0, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 0, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(54) %i.w, i8 0, i64 54, i1 false)
  store <6 x i8> <i8 1, i8 0, i8 1, i8 0, i8 0, i8 0>, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 0, ptr %i.ab, align 8
  store i8 0, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 500, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 16384, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.af, i8 1, i64 5, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.ag, i8 0, i64 29, i1 false)
  store ptr %i.ai, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 1000, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 0, ptr %i.an, align 8
  store i8 0, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ao, i8 0, i64 5, i1 false)
  store ptr %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.ar, align 8
  store i8 0, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 0, ptr %i.au, align 8
  store i8 0, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 524288, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i8 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 0, ptr %i.bc, align 8
  store i8 0, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.bd, i8 0, i64 50, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.be, i8 0, i64 18, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.bf, i8 0, i64 26, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i8 0, i64 48, i1 false)
  store ptr %i.bi, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 0, ptr %i.bj, align 8
  store i8 0, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 752
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  store ptr %i.bm, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %i.bn, align 8
  store i8 0, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i8 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 809
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  store ptr %i.br, ptr %i.bq, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.br, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i64 7, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 839
  store i8 0, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  store ptr %i.bv, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 856
  store i64 0, ptr %i.bw, align 8
  store i8 0, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.bx, i8 0, i64 84, i1 false)
  store ptr %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i64 0, ptr %i.ca, align 8
  store i8 0, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store i8 1, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  store ptr %i.cd, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i64 0, ptr %i.ce, align 8
  store i8 0, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cf, i8 0, i64 28, i1 false)
  store ptr %i.ch, ptr %i.cg, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ch, ptr noundef nonnull align 1 dereferenceable(7) @.str.547, i64 7, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i64 7, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1095
  store i8 0, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.ck, i8 0, i64 26, i1 false)
  store ptr %i.cm, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i64 0, ptr %i.cn, align 8
  store i8 0, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.co, i8 0, i64 10, i1 false)
  store ptr %i.cq, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i64 0, ptr %i.cr, align 8
  store i8 0, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1265
  store i8 0, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.cv, i8 0, i64 26, i1 false)
  store ptr %i.cx, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store i64 0, ptr %i.cy, align 8
  store i8 0, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i8 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4node12DebugOptionsE, i64 16), ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i8 1, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1353
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dc, i8 0, i64 5, i1 false)
  store ptr %i.de, ptr %i.dd, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.de, ptr noundef nonnull align 1 dereferenceable(11) @.str.548, i64 11, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1368
  store i64 11, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1387
  store i8 0, ptr %i.dg, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  store ptr %i.di, ptr %i.dh, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.di, ptr noundef nonnull align 1 dereferenceable(9) @.str.549, i64 9, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store i64 9, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1425
  store i8 0, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1432
  store i16 9229, ptr %i.dl, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
end_hunk_0
