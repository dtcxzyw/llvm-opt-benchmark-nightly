Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Gate?download=true
inline.NumInlined: 3318
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_P11AstNodeExprESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !634

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_P11AstNodeExprESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !333    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_P11AstNodeExprESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !334
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #23
  br label %_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_P11AstNodeExprESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_P11AstNodeExprESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !334
  store ptr %.0.i, ptr %0, align 8, !tbaa !333
  ret void
}

declare noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIP11AstVarScopeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !328  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIP11AstVarScopeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !261 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 16) #23
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIP11AstVarScopeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !10

_ZNSt10_HashtableIP11AstVarScopeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !326
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !325
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !326    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIP11AstVarScopeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIP11AstVarScopeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit
  %i.k = load i64, ptr %i.e, align 8, !tbaa !325
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt10_HashtableIP11AstVarScopeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIP11AstVarScopeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableIP11AstVarScopeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph48

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEET_SK_SK_T0_.exit
  %i.j = icmp eq i64 %i.l, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph48, !llvm.loop !636

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_RT0_(ptr %0, ptr %storemerge23.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_RT0_(ptr %0, ptr %storemerge23.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph48:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2347 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02446 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.bd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02446, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2347, i64 -16 ; 4 uses
  %i.p = load i64, ptr %i.g, align 8, !tbaa !301  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !301  ; 5 uses
  %i.s = icmp ult i64 %i.p, %i.r
  %i.t = getelementptr inbounds i8, ptr %storemerge2347, i64 -8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !301  ; 6 uses
  br i1 %i.s, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph48
  %i.v = icmp ult i64 %i.r, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !240
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !240
  store ptr %i.x, ptr %0, align 8, !tbaa !240
  store ptr %i.w, ptr %i.n, align 8, !tbaa !240
  %i.y = load i64, ptr %i.h, align 8, !tbaa !138
  store i64 %i.r, ptr %i.h, align 8, !tbaa !138
  store i64 %i.y, ptr %i.q, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.z = icmp ult i64 %i.p, %i.u
  %i.aa = load ptr, ptr %0, align 8, !tbaa !240   ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !240
  store ptr %i.ab, ptr %0, align 8, !tbaa !240
  store ptr %i.aa, ptr %i.o, align 8, !tbaa !240
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !138
  store i64 %i.u, ptr %i.h, align 8, !tbaa !138
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !240
  store ptr %i.ad, ptr %0, align 8, !tbaa !240
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !240
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !138
  store i64 %i.p, ptr %i.h, align 8, !tbaa !138
  store i64 %i.ae, ptr %i.g, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph48
  %i.af = icmp ult i64 %i.p, %i.u
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %0, align 8, !tbaa !240
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !240
  store ptr %i.ah, ptr %0, align 8, !tbaa !240
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !240
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !138
  store i64 %i.p, ptr %i.h, align 8, !tbaa !138
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.r, %i.u
  %i.ak = load ptr, ptr %0, align 8, !tbaa !240   ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !240
  store ptr %i.al, ptr %0, align 8, !tbaa !240
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !240
  %i.am = load i64, ptr %i.h, align 8, !tbaa !138
  store i64 %i.u, ptr %i.h, align 8, !tbaa !138
  store i64 %i.am, ptr %i.t, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !240
  store ptr %i.an, ptr %0, align 8, !tbaa !240
  store ptr %i.ak, ptr %i.n, align 8, !tbaa !240
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !138
  store i64 %i.r, ptr %i.h, align 8, !tbaa !138
  store i64 %i.ao, ptr %i.q, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.at, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2347, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i.preheader ]
  %i.ap = load i64, ptr %i.h, align 8, !tbaa !301 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i ], [ %i.at, %bb.m ] ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !301 ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.as, label %bb.m, label %.preheader.i.i.preheader, !llvm.loop !637

.preheader.i.i.preheader:                         ; preds = %bb.m
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !301 ; 2 uses
  %i.aw = icmp ult i64 %i.ap, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !638

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ax, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEET_SK_SK_T0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.az = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !240
  %i.ba = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !240
  store ptr %i.ba, ptr %.sroa.010.1.i.i, align 8, !tbaa !240
  store ptr %i.az, ptr %.sroa.0.1.i.i, align 8, !tbaa !240
  store i64 %i.av, ptr %5, align 8, !tbaa !138
  store i64 %i.ar, ptr %i.ay, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_SK_SK_T0_.exit.i, !llvm.loop !639

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEET_SK_SK_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2347, i64 noundef %i.l)
  %i.bb = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bc = sub i64 %i.bb, %i.a
  %i.bd = ashr exact i64 %i.bc, 4                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 16
  br i1 %i.be, label %bb.b, label %.loopexit, !llvm.loop !636

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEET_SK_SK_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.08.020.i.idx = phi i64 [ %.sroa.08.020.i.add, %bb.d ], [ 16, %.lr.ph.i ] ; 3 uses
  %.pn19.i = phi ptr [ %.sroa.08.020.i.ptr, %bb.d ], [ %0, %.lr.ph.i ] ; 3 uses
  %.sroa.08.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.020.i.idx ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !301  ; 5 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !301
  %i.i = icmp ult i64 %i.g, %i.h
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.08.020.i.ptr, align 8 ; 2 uses
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.j = lshr exact i64 %.sroa.08.020.i.idx, 4    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32 ; 2 uses
  %xtraiter59 = and i64 %i.j, 3                   ; 2 uses
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.08.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter61 = phi i64 [ %prol.iter61.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.l = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !240
  store ptr %i.n, ptr %i.m, align 8, !tbaa !299
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !138
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !301
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter61.next = add i64 %prol.iter61, 1     ; 2 uses
  %prol.iter61.cmp.not = icmp eq i64 %prol.iter61.next, %xtraiter59
  br i1 %prol.iter61.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !640

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %indvar, 3
  br i1 %i.s, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !240
  store ptr %i.v, ptr %i.u, align 8, !tbaa !299
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !138
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !301
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !240
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !299
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !138
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !301
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !240
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !299
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !138
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !301
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !240
  store ptr %i.an, ptr %i.am, align 8, !tbaa !299
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !138
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !301
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i, !llvm.loop !641

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !299
  store i64 %i.g, ptr %i.e, align 8, !tbaa !301
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !301 ; 2 uses
  %i.av = icmp ult i64 %i.g, %i.au
  br i1 %i.av, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.aw = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %i.au, %bb.c ]
  %.sroa.05.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i.ptr, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -16 ; 3 uses
  %i.ax = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !240
  store ptr %i.ax, ptr %.sroa.05.08.i.i, align 8, !tbaa !299
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 8
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !301
  %i.az = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !301 ; 2 uses
  %i.bb = icmp ult i64 %i.g, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_T0_.exit.i, !llvm.loop !642

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i.ptr, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !299
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i, i64 8
  store i64 %i.g, ptr %i.bc, align 8, !tbaa !301
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.08.020.i.add = add nuw nsw i64 %.sroa.08.020.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.08.020.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_.exit, label %bb.b, !llvm.loop !643

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_.exit: ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.bd, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_T0_.exit.i13
  %.sroa.0.07.i = phi ptr [ %i.bo, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_T0_.exit.i13 ], [ %i.bd, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.07.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !301 ; 2 uses
  %i.bg = icmp ult i64 %.sroa.4.0.copyload.i.i, %i.bf
  br i1 %i.bg, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_T0_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bh = phi i64 [ %i.bl, %.lr.ph.i.i16 ], [ %i.bf, %.lr.ph.i12 ]
  %.sroa.05.08.i.i17 = phi ptr [ %.sroa.0.0.i.i18, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.0.0.i.i18 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i17, i64 -16 ; 3 uses
  %i.bi = load ptr, ptr %.sroa.0.0.i.i18, align 8, !tbaa !240
  store ptr %i.bi, ptr %.sroa.05.08.i.i17, align 8, !tbaa !299
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i17, i64 8
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !301
  %i.bk = getelementptr inbounds i8, ptr %.sroa.05.08.i.i17, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !301 ; 2 uses
  %i.bm = icmp ult i64 %.sroa.4.0.copyload.i.i, %i.bl
  br i1 %i.bm, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_T0_.exit.i13, !llvm.loop !642

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_T0_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.05.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i18, %.lr.ph.i.i16 ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.05.0.lcssa.i.i14, align 8, !tbaa !299
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i14, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.bn, align 8, !tbaa !301
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bo, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_.exit, label %.lr.ph.i12, !llvm.loop !644

bb.e:                                             ; preds = %bb.a
  %i.bp = icmp eq ptr %0, %1
  br i1 %i.bp, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_.exit, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.e
  %.sroa.08.017.i20 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not18.i21 = icmp eq ptr %.sroa.08.017.i20, %1
  br i1 %.not18.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIP7AstNodemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN10GateInlineC1ER9GateGraphEUlRKS5_SH_E_EEEvT_SK_T0_.exit, label %.lr.ph.i22

end_hunk_0
begin_hunk_1_@_ZeqRK8VVarTypeS1_
define linkonce_odr dso_local noundef zeroext i1 @_ZeqRK8VVarTypeS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !718
  %i.b = load i8, ptr %1, align 1, !tbaa !718
  %i.c = icmp eq i8 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i8 @_ZNK6AstVar7varTypeEv(ptr noundef nonnull align 8 dereferenceable(280) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 8, !tbaa !446
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6VNTypeC2ENS_2enE(ptr noundef nonnull align 2 dereferenceable(2) %0, i16 noundef zeroext %1) unnamed_addr #4 comdat align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !214
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !445
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i8 0, ptr %i.b, align 4, !tbaa !447
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -128
  store i8 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.b, align 4, !tbaa !447
  %i.h = add i8 %i.g, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i.i, label %bb.d, label %bb.c, !prof !143

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.598, i32 noundef 242)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc6 unwind label %bb.f    ; 2 uses

.noexc6:                                          ; preds = %.noexc
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.599, i64 noundef 40)
          to label %.noexc7 unwind label %bb.f    ; 0 uses

.noexc7:                                          ; preds = %.noexc6
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %.noexc7
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.l) #27
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %.noexc8
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.a, align 8, !tbaa !445
  %i.n = icmp slt i32 %i.m, 129
  %i.o = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.n, ptr %0, ptr %i.o
  store i32 %3, ptr %spec.select.i, align 4, !tbaa !720
  invoke void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  ret void

bb.f:                                             ; preds = %.noexc6, %.noexc8, %.noexc7, %.noexc, %bb.c, %bb.d, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(40) %0) #22
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number5widthEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !445
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !447   ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN12V3NumberDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !37
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZN12V3NumberDataD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !445
  %i.k = icmp sgt i32 %i.j, 128
  %i.l = icmp eq i8 %i.b, 1
  %i.m = and i1 %i.l, %i.k
  br i1 %i.m, label %bb.d, label %_ZN12V3NumberDataD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !450    ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12V3NumberDataD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !451
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #23
  br label %_ZN12V3NumberDataD2Ev.exit

_ZN12V3NumberDataD2Ev.exit:                       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.c, %bb.d, %bb.e
  ret void
}

declare void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152), i16, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8V3Number5nodepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %2, 0                        ; 2 uses
  %spec.select = and i1 %i.b, %3
  %spec.select11 = select i1 %i.b, i32 %2, i32 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !447   ; 2 uses
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.c, label %_ZN12V3NumberData13destroyStringEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN12V3NumberData13destroyStringEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !37
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  %.pre.i = load i8, ptr %i.c, align 4, !tbaa !447
  br label %_ZN12V3NumberData13destroyStringEv.exit.i

_ZN12V3NumberData13destroyStringEv.exit.i:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %i.k = phi i8 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.d, %bb.b ]
  %i.l = add i8 %i.k, -1
  %spec.select.i.i = icmp ult i8 %i.l, 2
  br i1 %spec.select.i.i, label %_ZN12V3NumberData8setLogicEv.exit, label %_ZN12V3NumberData13destroyStringEv.exit.thread.i

_ZN12V3NumberData13destroyStringEv.exit.thread.i: ; preds = %bb.c, %_ZN12V3NumberData13destroyStringEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !445  ; 2 uses
  %i.o = icmp slt i32 %i.n, 129
  br i1 %i.o, label %bb.d, label %vector.ph

bb.d:                                             ; preds = %_ZN12V3NumberData13destroyStringEv.exit.thread.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
  br label %_ZN12V3NumberData8setLogicEv.exit

vector.ph:                                        ; preds = %_ZN12V3NumberData13destroyStringEv.exit.thread.i
  %i.p = add nuw nsw i32 %i.n, 31
  %i.q = lshr i32 %i.p, 5
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 7 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !450
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !451
  store i64 0, ptr %i.t, align 4
  %4 = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 %i.s     ; 2 uses
  %i.x = add nsw i64 %i.s, -16
  %i.y = lshr exact i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %5 = shl i64 %n.vec, 3
  %6 = getelementptr i8, ptr %4, i64 %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %4, i64 %i.aa ; 2 uses
  %i.ab = load i64, ptr %i.t, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !721

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %6, %middle.block ] ; 2 uses
  %i.ae = load i64, ptr %i.t, align 4
  store i64 %i.ae, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !722

_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.ag, align 8, !tbaa !454
  br label %_ZN12V3NumberData8setLogicEv.exit

_ZN12V3NumberData8setLogicEv.exit:                ; preds = %_ZN12V3NumberData13destroyStringEv.exit.i, %bb.d, %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i
  store i8 1, ptr %i.c, align 4, !tbaa !447
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !445
  tail call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.ai)
  tail call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %spec.select11)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.ak = zext i1 %spec.select to i8
  %i.al = load i8, ptr %i.aj, align 1
  %i.am = and i8 %i.al, -2
  %i.an = or disjoint i8 %i.am, %i.ak
  store i8 %i.an, ptr %i.aj, align 1
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !445 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12V3NumberData8setLogicEv.exit
  %i.aq = load i8, ptr %i.c, align 4, !tbaa !447
  %i.ar = add i8 %i.aq, -1
  %spec.select.i.i12 = icmp ult i8 %i.ar, 2
  br i1 %spec.select.i.i12, label %_ZN12V3NumberData3numEv.exit, label %bb.e, !prof !143

_ZN12V3NumberData3numEv.exit:                     ; preds = %.lr.ph, %_ZN12V3NumberData3numEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12V3NumberData3numEv.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.as = phi i32 [ %i.aw, %_ZN12V3NumberData3numEv.exit ], [ %i.ao, %.lr.ph ]
  %i.at = icmp slt i32 %i.as, 129
  %i.au = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.at, ptr %0, ptr %i.au
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.av, align 4, !tbaa !80
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.ah, align 8, !tbaa !445 ; 2 uses
  %i.ax = add nsw i32 %i.aw, 31
  %i.ay = sdiv i32 %i.ax, 32
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %_ZN12V3NumberData3numEv.exit, label %.loopexit, !llvm.loop !723

bb.e:                                             ; preds = %.lr.ph
  %i.bb = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.598, i32 noundef 242) ; 0 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.599)
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.be) #27
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !445 ; 3 uses
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %_ZN12V3NumberData6resizeEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.off = add i32 %i.bg, -1
  %i.bi = icmp ult i32 %.off, 32
  br i1 %i.bi, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = icmp sgt i32 %i.bg, 128
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = icmp eq i8 %i.bl, 1
  %i.bn = select i1 %i.bj, i1 %i.bm, i1 false
  br i1 %i.bn, label %bb.i, label %.sink.split.i

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %0, align 8, !tbaa !450   ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !451
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.bo, i64 32, i1 false)
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.i, %bb.g
  store i32 1, ptr %i.bf, align 8, !tbaa !445
  br label %_ZN12V3NumberData6resizeEi.exit

_ZN12V3NumberData6resizeEi.exit:                  ; preds = %bb.f, %.sink.split.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = and i8 %i.bv, -2
  store i8 %i.bw, ptr %i.bu, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12V3NumberData3numEv.exit, %_ZN12V3NumberData8setLogicEv.exit, %_ZN12V3NumberData6resizeEi.exit
  ret void
}

declare void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !447   ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN12V3NumberData18destroyStoredValueEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !37
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !445
  %i.k = icmp sgt i32 %i.j, 128
  %i.l = icmp eq i8 %i.b, 1
  %i.m = and i1 %i.l, %i.k
  br i1 %i.m, label %bb.d, label %_ZN12V3NumberData18destroyStoredValueEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !450    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN12V3NumberData18destroyStoredValueEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !451
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #23
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit

_ZN12V3NumberData18destroyStoredValueEv.exit:     ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c, %bb.d, %bb.e
  ret void
}

declare void @_ZN8V3Number5nodepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca [4 x %"struct.V3NumberData::ValueAndX"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !445  ; 4 uses
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, 31
  %i.e = sdiv i32 %i.d, 32
  %i.f = add nsw i32 %1, 31
  %i.g = sdiv i32 %i.f, 32                        ; 3 uses
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp sgt i32 %i.b, 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i8, ptr %i.j, align 4               ; 2 uses
  %i.l = icmp eq i8 %i.k, 1
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %1, 128
  br i1 %i.n, label %bb.e, label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i32 %i.g to i64                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !454  ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !450    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.o
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = sub nuw nsw i64 %i.o, %i.v
  tail call void @_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x)
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.y = icmp ugt i64 %i.v, %i.o
  br i1 %i.y, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.z
  br i1 %.not.i.i, label %.sink.split, label %_ZSt8_DestroyIPN12V3NumberData9ValueAndXES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12V3NumberData9ValueAndXES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.z, ptr %i.p, align 8, !tbaa !454
  br label %.sink.split

_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EED2Ev.exit: ; preds = %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !450   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !451
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.aa, i64 32, i1 false)
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #23
  br label %.sink.split

bb.i:                                             ; preds = %bb.c
  %i.ag = icmp slt i32 %i.b, 129
  %i.ah = add i8 %i.k, -1
  %spec.select.i = icmp ult i8 %i.ah, 2
  %i.ai = select i1 %i.ag, i1 %spec.select.i, i1 false
  %i.aj = icmp sgt i32 %1, 128
  %or.cond = and i1 %i.aj, %i.ai
  br i1 %or.cond, label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i, label %.sink.split

_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !726
  %i.ak = zext nneg i32 %i.g to i64               ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #24 ; 7 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !450
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !451
  store i64 0, ptr %i.am, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 5 uses
  %i.aq = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i.i.i.i.i.i.i ; 3 uses
  %i.at = add nuw nsw i64 %i.ak, 2305843009213693950
  %i.au = and i64 %i.at, 2305843009213693951      ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.j
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %2 = shl i64 %n.vec, 3
  %3 = getelementptr i8, ptr %i.ap, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.aw ; 2 uses
  %i.ax = load i64, ptr %i.am, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !724

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.j, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %bb.j ], [ %3, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ba = load i64, ptr %i.am, align 4
  store i64 %i.ba, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.as
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !725

_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.ap, %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.as, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.bc, align 8, !tbaa !454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EED2Ev.exit, %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, %bb.i, %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPN12V3NumberData9ValueAndXES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  store i32 %1, ptr %i.a, align 8, !tbaa !445
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number5wordsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !445
  %i.c = add nsw i32 %i.b, 31
  %i.d = sdiv i32 %i.c, 32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData8isStringEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !447
  %i.c = icmp eq i8 %i.b, 3
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData8isNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !447
  %i.c = add i8 %i.b, -1
  %spec.select = icmp ult i8 %i.c, 2
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN12V3NumberData11bitsToWordsEi(i32 noundef %0) #4 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %0, 31
  %i.b = sdiv i32 %i.a, 32
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData15isDynamicNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !445
  %i.c = icmp sgt i32 %i.b, 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i8, ptr %i.d, align 4
  %i.f = icmp eq i8 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData14isInlineNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !445
  %i.c = icmp slt i32 %i.b, 129
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i8, ptr %i.d, align 4
  %i.f = add i8 %i.e, -1
  %spec.select = icmp ult i8 %i.f, 2
  %i.g = select i1 %i.c, i1 %spec.select, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !454  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !450    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !451
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 2305843009213693950
  %i.u = and i64 %i.t, 2305843009213693951        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %2 = shl i64 %n.vec, 3
  %3 = getelementptr i8, ptr %i.p, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.w ; 2 uses
  %i.x = load i64, ptr %i.b, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.y, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !727

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %3, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.aa = load i64, ptr %i.b, align 4
  store i64 %i.aa, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !728

_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !454
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.597) #27
  unreachable

_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #24 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 5 uses
  store i64 0, ptr %i.ah, align 4
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 2305843009213693950
  %i.an = and i64 %i.am, 2305843009213693951      ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check45 = icmp samesign ult i64 %i.an, 3
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.i.i.i31.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %bb.g
  %n.vec47 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %4 = shl i64 %n.vec47, 3
  %5 = getelementptr i8, ptr %i.ak, i64 %4
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body48 ] ; 2 uses
  %i.ap = shl i64 %index49, 3
  %next.gep50 = getelementptr i8, ptr %i.ak, i64 %i.ap ; 2 uses
  %i.aq = load i64, ptr %i.ah, align 4
  %broadcast.splatinsert51 = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %broadcast.splat52 = shufflevector <2 x i64> %broadcast.splatinsert51, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x i64> %broadcast.splat52, ptr %next.gep50, align 4
  store <2 x i64> %broadcast.splat52, ptr %i.ar, align 4
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.as, label %middle.block54, label %vector.body48, !llvm.loop !729

middle.block54:                                   ; preds = %vector.body48
  %cmp.n55 = icmp eq i64 %i.ao, %n.vec47
  br i1 %cmp.n55, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i.i.i31.preheader:                 ; preds = %bb.g, %middle.block54
  %.06.i.i.i.i.i.i.i32.ph = phi ptr [ %i.ak, %bb.g ], [ %5, %middle.block54 ]
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader ] ; 2 uses
  %i.at = load i64, ptr %i.ah, align 4
  store i64 %i.at, ptr %.06.i.i.i.i.i.i.i32, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !730

_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %middle.block54, %_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !451
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #23
  br label %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !450
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !454
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !451
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !731
  switch i8 %i.a, label %bb.f [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.600, i64 noundef 13) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.601, i64 noundef 5) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.602, i64 noundef 6) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.603, i64 noundef 6) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %0
}

declare noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, i32 noundef, i8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12V3NumberData5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !445
  ret i32 %i.b
}

declare void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

declare void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK7AstNode14findLogicDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, i32 noundef, i8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL17dumpTreeJsonLevelv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"class.std::allocator", align 1    ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load i32, ptr @_ZZL17dumpTreeJsonLevelvE7s_level, align 4, !tbaa !80 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.l, !prof !29

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.605, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i32 @_ZNK9V3Options9dumpLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !37
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = invoke noundef i32 @_ZNK9V3Options12dumpSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !37
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.o = call i32 @llvm.umax.i32(i32 %i.c, i32 %i.i) ; 3 uses
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1914), align 2, !tbaa !137, !range !92, !noundef !93
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread, label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !37
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.j:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #23
end_hunk_1
