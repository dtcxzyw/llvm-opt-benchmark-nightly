Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldChainedFixupsCreator?download=true
inline.NumInlined: 4364
inline.NumDeleted: 1650
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS7_EEES3_INS9_14_Node_iteratorIS7_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.043, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !324

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !992
  br label %_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4LIEF5MachO15strong_symbol_tEPNS4_22ChainedBindingInfoListEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !324

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4LIEF5MachO15strong_symbol_tEPNS4_22ChainedBindingInfoListEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4LIEF5MachO15strong_symbol_tEPNS4_22ChainedBindingInfoListEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4LIEF5MachO15strong_symbol_tEPNS4_22ChainedBindingInfoListEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !326  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !326
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !264 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = tail call noundef i64 @_ZNK4LIEF5MachO16StrongSymbolHashclERKNS0_15strong_symbol_tE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.j) #23
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !294  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !326
  store ptr %i.o, ptr %.02530, align 8, !tbaa !264
  store ptr %.02530, ptr %i.g, align 8, !tbaa !326
  store ptr %i.g, ptr %i.m, align 8, !tbaa !294
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !264
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !294
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !264
  store ptr %i.r, ptr %.02530, align 8, !tbaa !264
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !294
  store ptr %.02530, ptr %i.s, align 8, !tbaa !264
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !993

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !258    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !260
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #24
  br label %_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !260
  store ptr %.0.i, ptr %0, align 8, !tbaa !258
  ret void
}

declare void @_ZN4LIEF5MachO17DyldChainedFixupsC1Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #18 comdat {
bb.a:
  %2 = alloca %"struct.LIEF::MachO::DyldChainedFixupsCreator::binding_rebase_t", align 8 ; 4 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g)
  %i.h = icmp sgt i64 %i.c, 256
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.sroa.0.018.i.idx = phi i64 [ 16, %bb.c ], [ %.sroa.0.018.i.add, %bb.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %bb.c ], [ %.sroa.0.018.i.ptr, %bb.i ] ; 4 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 6 uses
  %i.i = load ptr, ptr %.sroa.0.018.i.ptr, align 8, !tbaa !8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(88) %i.i) #23, !inline_history !994
  %i.n = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(88) %i.n) #23, !inline_history !994
  %i.s = icmp ult i64 %i.m, %i.r
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.ptr, i64 16, i1 false), !tbaa.struct !99
  %i.t = icmp samesign ugt i64 %.sroa.0.018.i.idx, 16
  br i1 %i.t, label %bb.f, label %bb.g, !prof !312

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !99
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.018.i.ptr, align 8, !tbaa !8 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24
  %i.v = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.w = load ptr, ptr %.sroa.03.0.copyload.i.i, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.03.0.copyload.i.i) #23, !inline_history !995
  %i.aa = load ptr, ptr %.pn17.i, align 8, !tbaa !8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(88) %i.aa) #23, !inline_history !995
  %i.af = icmp ult i64 %i.z, %i.ae
  br i1 %i.af, label %.lr.ph.i.i4, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i4:                                      ; preds = %bb.h, %.lr.ph.i.i4
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i4 ], [ %.pn17.i, %bb.h ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i4 ], [ %.sroa.0.018.i.ptr, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.011.i.i, i64 12, i1 false), !tbaa.struct !99
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.ag = load ptr, ptr %.sroa.03.0.copyload.i.i, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.03.0.copyload.i.i) #23, !inline_history !995
  %i.ak = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(88) %i.ak) #23, !inline_history !995
  %i.ap = icmp ult i64 %i.aj, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i4, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !996

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i4, %bb.h
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.h ], [ %.sroa.0.011.i.i, %.lr.ph.i.i4 ] ; 2 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i = trunc i64 %i.v to i32
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !tbaa !100
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.d, !llvm.loop !997

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not4.i.i, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i ], [ %i.aq, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %.sroa.0.05.i.i, align 8, !tbaa !8 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8
  %i.ar = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.0.09.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 2 uses
  %i.as = load ptr, ptr %.sroa.03.0.copyload.i.i.i, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.03.0.copyload.i.i.i) #23, !inline_history !998
  %i.aw = load ptr, ptr %.sroa.0.09.i.i.i, align 8, !tbaa !8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef i64 %i.az(ptr noundef nonnull align 8 dereferenceable(88) %i.aw) #23, !inline_history !998
  %i.bb = icmp ult i64 %i.av, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.sroa.0.011.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.06.010.i.i.i = phi ptr [ %.sroa.0.011.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.05.i.i, %.lr.ph.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.06.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.011.i.i.i, i64 12, i1 false), !tbaa.struct !99
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i.i, i64 -16 ; 2 uses
  %i.bc = load ptr, ptr %.sroa.03.0.copyload.i.i.i, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.03.0.copyload.i.i.i) #23, !inline_history !998
  %i.bg = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(88) %i.bg) #23, !inline_history !998
  %i.bl = icmp ult i64 %i.bf, %i.bk
  br i1 %i.bl, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i, !llvm.loop !996

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.sroa.06.0.lcssa.i.i.i = phi ptr [ %.sroa.0.05.i.i, %.lr.ph.i.i ], [ %.sroa.0.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.ar to i32
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %.sroa.06.0.lcssa.i.i.i, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.i, i64 8
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !tbaa !100
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %1
  br i1 %.not.i.i, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i.i, !llvm.loop !999

bb.j:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1)
  br label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit

_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i, %bb.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.LIEF::MachO::DyldChainedFixupsCreator::binding_rebase_t", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph34

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
  %i.h = icmp eq i64 %i.at, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph34, !llvm.loop !1000

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa30 = phi i64 [ %i.d, %.lr.ph ], [ %i.aw, %bb.b ] ; 2 uses
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa30, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [16 x i8], ptr %0, i64 %.09.i.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !100
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa30, ptr %.sroa.02.0.copyload.i.i.i, i32 %.sroa.4.0.copyload.i.i.i)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.l = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i8.i, label %bb.c, !llvm.loop !1001

.lr.ph.i8.i:                                      ; preds = %bb.c, %.lr.ph.i8.i
  %.sroa.0.05.i.i = phi ptr [ %i.m, %.lr.ph.i8.i ], [ %storemerge17.lcssa, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.02.0.copyload.i.i9.i = load ptr, ptr %i.m, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i10.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.4.0.copyload.i.i11.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i10.i, align 8, !tbaa !100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !99
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 4
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.p, ptr %.sroa.02.0.copyload.i.i9.i, i32 %.sroa.4.0.copyload.i.i11.i)
  %i.q = icmp sgt i64 %i.o, 16
  br i1 %i.q, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !1002

.lr.ph34:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1733 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01832 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %i.r = phi i64 [ %i.aw, %bb.b ], [ %i.d, %.lr.ph ]
  %i.s = lshr i64 %i.r, 1
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %storemerge1733, i64 -16
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr nonnull %i.f, ptr %i.t, ptr nonnull %i.u)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph34
  %.sroa.010.0.i.i = phi ptr [ %i.f, %.lr.ph34 ], [ %i.ag, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1733, %.lr.ph34 ], [ %.sroa.0.1.i.i, %bb.g ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.d ], [ %i.ag, %bb.e ] ; 9 uses
  %i.v = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(88) %i.v) #23, !inline_history !1003
  %i.aa = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(88) %i.aa) #23, !inline_history !1003
  %i.af = icmp ult i64 %i.z, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.af, label %bb.e, label %.preheader.i.i, !llvm.loop !1004

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.e ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(88) %i.ah) #23, !inline_history !1003
  %i.am = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(88) %i.am) #23, !inline_history !1003
  %i.ar = icmp ult i64 %i.al, %i.aq
  br i1 %i.ar, label %.preheader.i.i, label %bb.f, !llvm.loop !1005

bb.f:                                             ; preds = %.preheader.i.i
  %i.as = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.as, label %bb.g, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d, !llvm.loop !1006

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %bb.f
  %i.at = add nsw i64 %.01832, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1733, i64 noundef %i.at)
  %i.au = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.av = sub i64 %i.au, %i.a
  %i.aw = ashr exact i64 %i.av, 4                 ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 16
  br i1 %i.ax, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !1000

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %.lr.ph.i8.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr %3, i32 %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.037 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.037, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(88) %i.i) #23, !inline_history !1007
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(88) %i.n) #23, !inline_history !1007
  %i.s = icmp ult i64 %i.m, %i.r
  %spec.select = select i1 %i.s, i64 %i.g, i64 %i.e ; 4 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.037
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %i.t, i64 12, i1 false), !tbaa.struct !99
  %i.v = icmp slt i64 %spec.select, %i.b
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !1008

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.w = and i64 %2, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.y = add nsw i64 %2, -2
  %i.z = ashr exact i64 %i.y, 1
  %i.aa = icmp eq i64 %.0.lcssa, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = shl nsw i64 %.0.lcssa, 1
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 8 dereferenceable(12) %i.ad, i64 12, i1 false), !tbaa.struct !99
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ac, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.af = icmp sgt i64 %.1, %1
  br i1 %i.af, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.019.i = phi i64 [ %.0920.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.0920.in.i = add nsw i64 %.019.i, -1
  %.0920.i = sdiv i64 %.0920.in.i, 2              ; 4 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.0920.i ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_:bb.a
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(88) %i.l) #23, !inline_history !1007
  %i.q = load ptr, ptr %3, align 8, !tbaa !8      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(88) %i.q) #23, !inline_history !1007
  %i.v = icmp ult i64 %i.p, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(88) %i.w) #23, !inline_history !1007
  %i.ab = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(88) %i.ab) #23, !inline_history !1007
  %i.ag = icmp ult i64 %i.aa, %i.af
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(88) %i.ah) #23, !inline_history !1007
  %i.am = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(88) %i.am) #23, !inline_history !1007
  %i.ar = icmp ult i64 %i.al, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(88) %i.as) #23, !inline_history !1007
  %i.ax = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(88) %i.ax) #23, !inline_history !1007
  %i.bc = icmp ult i64 %i.aw, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %2 = alloca %"struct.LIEF::MachO::DyldChainedFixupsCreator::binding_rebase_t", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.015 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not16 = icmp eq ptr %.sroa.0.015, %1
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.018 = phi ptr [ %.sroa.0.015, %.lr.ph ], [ %.sroa.0.0, %bb.h ] ; 8 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.018, %bb.h ] ; 5 uses
  %i.c = load ptr, ptr %.sroa.0.018, align 8, !tbaa !8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(88) %i.c) #23, !inline_history !1007
  %i.h = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(88) %i.h) #23, !inline_history !1007
  %i.m = icmp ult i64 %i.g, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018, i64 16, i1 false), !tbaa.struct !99
  %i.n = ptrtoint ptr %.sroa.0.018 to i64
  %i.o = sub i64 %i.n, %i.b                       ; 3 uses
  %i.p = ashr exact i64 %i.o, 4                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e, !prof !312

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %i.s = sub nsw i64 0, %i.p
  %i.t = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.o, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.o, 16
  br i1 %i.u, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.pn17, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !99
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %.sroa.03.0.copyload.i = load ptr, ptr %.sroa.0.018, align 8, !tbaa !8 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn17, i64 24
  %i.w = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.x = load ptr, ptr %.sroa.03.0.copyload.i, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.03.0.copyload.i) #23, !inline_history !1011
  %i.ab = load ptr, ptr %.pn17, align 8, !tbaa !8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(88) %i.ab) #23, !inline_history !1011
  %i.ag = icmp ult i64 %i.aa, %i.af
  br i1 %i.ag, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.011.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.pn17, %bb.g ] ; 4 uses
  %.sroa.06.010.i = phi ptr [ %.sroa.0.011.i, %.lr.ph.i ], [ %.sroa.0.018, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.06.010.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.011.i, i64 12, i1 false), !tbaa.struct !99
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.011.i, i64 -16 ; 2 uses
  %i.ah = load ptr, ptr %.sroa.03.0.copyload.i, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.03.0.copyload.i) #23, !inline_history !1011
  %i.al = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(88) %i.al) #23, !inline_history !1011
  %i.aq = icmp ult i64 %i.ak, %i.ap
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit, !llvm.loop !996

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %.lr.ph.i, %bb.g
  %.sroa.06.0.lcssa.i = phi ptr [ %.sroa.0.018, %bb.g ], [ %.sroa.0.011.i, %.lr.ph.i ] ; 2 uses
  %.sroa.5.sroa.0.0.extract.trunc.i = trunc i64 %i.w to i32
  store ptr %.sroa.03.0.copyload.i, ptr %.sroa.06.0.lcssa.i, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i, i64 8
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !100
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !997

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %7 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %8 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.1378", align 16 ; 7 uses
  %10 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !148, !noundef !149
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !361
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.k, ptr %8, align 8, !tbaa !342
  store i64 250, ptr %i.h, align 8, !tbaa !340
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %i.l = load ptr, ptr %5, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37
  store ptr %i.l, ptr %9, align 16, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.q = load i64, ptr %6, align 8, !tbaa !11, !noalias !1012
  store i64 %i.q, ptr %i.p, align 16, !tbaa !8, !alias.scope !1012
  %i.r = icmp eq i64 %4, 2
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = load i16, ptr %3, align 1
  %i.t = icmp ne i16 %i.s, 32123
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %9, align 16, !tbaa !8 ; 2 uses
  %i.w = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.x = lshr i128 %.sroa.0.0.copyload.sink66.i, 64
  %i.y = trunc nuw i128 %i.x to i64
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = inttoptr i64 %i.w to ptr ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, i64 %i.y
  %i.aa = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef %i.z, ptr nonnull align 8 dereferenceable(32) %8) ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %3, ptr %7, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !348
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %8, ptr %i.ac, align 8, !tbaa !346
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 77, ptr %i.ad, align 8, !tbaa !919
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %9, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr null, ptr %i.ae, align 8, !tbaa !511
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(56) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.aj = load ptr, ptr %8, align 8, !tbaa !342
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !343
  %i.al = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  store ptr %i.ag, ptr %10, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ai, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %2, ptr %i.am, align 8, !tbaa !920
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.al, ptr %i.an, align 8, !tbaa !11
  %i.ao = load i8, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %._crit_edge.i.i.i, !prof !926

._crit_edge.i.i.i:                                ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %.pre.i.i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  %.pre.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !11
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

bb.f:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.aq = call noundef i64 (i64, ...) @syscall(i64 noundef 186) #23 ; 2 uses
  %i.ar = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !11
  %i.as = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN6spdlog7details2os9thread_idEvE3tid) ; 0 uses
  store i8 1, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit: ; preds = %._crit_edge.i.i.i, %bb.f
  %i.at = phi i64 [ %.pre.i.i, %._crit_edge.i.i.i ], [ %i.aq, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.at, ptr %i.au, align 8, !tbaa !927
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !90
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i64 %i.ak, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  br i1 %i.c, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %10) #23, !inline_history !928
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit
  br i1 %i.g, label %bb.i, label %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN6spdlog7details10backtracer9push_backERKNS0_7log_msgE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %10)
  br label %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit

_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.bb = load ptr, ptr %8, align 8, !tbaa !342   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, %i.k
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit
  call void @free(ptr noundef %i.bb) #23
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %7 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %8 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.1380", align 16 ; 4 uses
  %10 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !148, !noundef !149
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !361
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.k, ptr %8, align 8, !tbaa !342
  store i64 250, ptr %i.h, align 8, !tbaa !340
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.l = load i32, ptr %5, align 4, !tbaa !306    ; 6 uses
  %.sroa.019.0.insert.ext = zext i32 %i.l to i128
  store i128 %.sroa.019.0.insert.ext, ptr %9, align 16
end_hunk_1
