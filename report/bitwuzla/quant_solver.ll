Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/quant_solver?download=true
inline.NumInlined: 2953
inline.NumDeleted: 1406
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb1EEEm:bb.a
  store ptr %i.x, ptr %3, align 8, !tbaa !66
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !121
  store ptr %3, ptr %i.y, align 8, !tbaa !66
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !151
  store ptr %i.aa, ptr %3, align 8, !tbaa !66
  store ptr %3, ptr %i.z, align 8, !tbaa !151
  %i.ab = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !123
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !121
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !121
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEE.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !181
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !181
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #22
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSA_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #23
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSA_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSA_.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %i.n) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSA_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !158

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !427
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !158

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorIS4_SaIS4_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !151
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !66 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !123
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !151
  store ptr %i.o, ptr %.02530, align 8, !tbaa !66
  store ptr %.02530, ptr %i.g, align 8, !tbaa !151
  store ptr %i.g, ptr %i.m, align 8, !tbaa !121
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !66
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !121
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !66
  store ptr %i.r, ptr %.02530, align 8, !tbaa !66
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !121
  store ptr %.02530, ptr %i.s, align 8, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !426

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !149    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !150
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #23
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !150
  store ptr %.0.i, ptr %0, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %5 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %6 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %7 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %8 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %9 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %10 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %11 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %12 = alloca %"class.bzla::Node", align 8       ; 6 uses
  %13 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %14 = alloca %"class.bzla::Node", align 8       ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 464 ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 472 ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 496 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 504 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 488 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 512 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 480 ; 32 uses
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph573

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEET_SH_SH_T0_.exit"
  %i.o = icmp eq i64 %i.ae, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph573, !llvm.loop !428

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.mf, %bb.b ] ; 2 uses
  %storemerge171.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.0118.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.p = add nsw i64 %.lcssa, -2
  %i.q = lshr i64 %i.p, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %._crit_edge
  %.012.i.i.i = phi i64 [ %i.q, %._crit_edge ], [ %i.s, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i.i.i
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_T0_SI_T1_T2_"(ptr nonnull %0, i64 noundef %.012.i.i.i, i64 noundef %.lcssa, ptr noundef align 8 %14, ptr %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  %.not.i.i.i = icmp eq i64 %.012.i.i.i, 0
  %i.s = add nsw i64 %.012.i.i.i, -1
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_RT0_.exit.i.i", label %bb.c, !llvm.loop !429

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  br label %bb.h

common.resume:                                    ; preds = %bb.q, %bb.u, %bb.x, %bb.ab, %bb.af, %bb.ai, %common.resume.i.i.i, %common.resume.i17.i.i, %bb.du, %bb.h, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.h ], [ %.pn.i.i10.i, %bb.m ], [ %i.be, %bb.ai ], [ %i.am, %bb.q ], [ %i.aq, %bb.u ], [ %i.at, %bb.x ], [ %i.ax, %bb.ab ], [ %i.bb, %bb.af ], [ %common.resume.op.i.i.i, %common.resume.i.i.i ], [ %common.resume.op.i19.i.i, %common.resume.i17.i.i ], [ %i.mb, %bb.du ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i.i.i = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %common.resume

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_RT0_.exit.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_RT0_.exit.i11.i"
  %.sroa.0.03.i.i = phi ptr [ %i.v, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_RT0_.exit.i11.i" ], [ %storemerge171.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_RT0_.exit.i.i" ]
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %.lr.ph.i9.i
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.x, %i.a                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 3
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_T0_SI_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.z, ptr noundef align 8 %12, ptr %3)
          to label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_RT0_.exit.i11.i" unwind label %bb.l

bb.k:                                             ; preds = %bb.i, %.lr.ph.i9.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i.i10.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.aa, %bb.k ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_RT0_.exit.i11.i": ; preds = %bb.j
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ac = icmp sgt i64 %i.y, 8
  br i1 %i.ac, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !430

.lr.ph573:                                        ; preds = %.lr.ph, %bb.b
  %storemerge171572 = phi ptr [ %.sroa.0118.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.0172571 = phi i64 [ %i.ae, %bb.b ], [ %2, %.lr.ph ]
  %i.ad = phi i64 [ %i.mf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ae = add nsw i64 %.0172571, -1               ; 3 uses
  %i.af = lshr i64 %i.ad, 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af ; 7 uses
  %i.ah = getelementptr inbounds i8, ptr %storemerge171572, i64 -8 ; 8 uses
  %i.ai = call fastcc noundef zeroext i1 @"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  br i1 %i.ai, label %bb.n, label %bb.y

bb.n:                                             ; preds = %.lr.ph573
  %i.aj = call fastcc noundef zeroext i1 @"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  br i1 %i.aj, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i.i unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i.i: ; preds = %bb.p
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.n
  %i.an = call fastcc noundef zeroext i1 @"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  br i1 %i.an, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit30.i.i unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit30.i.i: ; preds = %bb.t
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit31.i.i unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit31.i.i: ; preds = %bb.w
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.y:                                             ; preds = %.lr.ph573
  %i.au = call fastcc noundef zeroext i1 @"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  br i1 %i.au, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.aa unwind label %bb.ab     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit32.i.i unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit32.i.i: ; preds = %bb.aa
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.ac:                                            ; preds = %bb.y
  %i.ay = call fastcc noundef zeroext i1 @"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_"(ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  br i1 %i.ay, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit33.i.i unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit33.i.i: ; preds = %bb.ae
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.ah unwind label %bb.ai     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit34.i.i unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_T0_T1_":bb.a

.noexc7.i.i.i91.i.i:                              ; preds = %bb.dc
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc94.i.i unwind label %.loopexit.split-lp122.i.i

.noexc94.i.i:                                     ; preds = %.noexc7.i.i.i91.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i79.i.i: ; preds = %bb.db
  %i.kg = shl nuw nsw i64 %i.kc, 3                ; 2 uses
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #24
          to label %.noexc95.i.i unwind label %.loopexit121.i.i ; 2 uses

.noexc95.i.i:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i79.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kh, i8 0, i64 %i.kg, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i80.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i80.i.i: ; preds = %.noexc95.i.i, %bb.da
  %.0.i.i81.i.i = phi ptr [ %i.l, %bb.da ], [ %i.kh, %.noexc95.i.i ] ; 4 uses
  %i.ki = load ptr, ptr %i.m, align 8, !tbaa !71  ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !71
  %.not29.i82.i.i = icmp eq ptr %i.ki, null
  br i1 %.not29.i82.i.i, label %._crit_edge.i89.i.i, label %.lr.ph.i83.i.i

.lr.ph.i83.i.i:                                   ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i80.i.i, %bb.dg
  %.031.i84.i.i = phi i64 [ %.1.i87.i.i, %bb.dg ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i80.i.i ] ; 2 uses
  %.02530.i85.i.i = phi ptr [ %i.kj, %bb.dg ], [ %i.ki, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i80.i.i ] ; 8 uses
  %i.kj = load ptr, ptr %.02530.i85.i.i, align 8, !tbaa !66 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.02530.i85.i.i, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !127
  %i.km = urem i64 %i.kl, %i.kc                   ; 3 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i81.i.i, i64 %i.km ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !121 ; 2 uses
  %.not27.i86.i.i = icmp eq ptr %i.ko, null
  br i1 %.not27.i86.i.i, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %.lr.ph.i83.i.i
  %i.kp = load ptr, ptr %i.m, align 8, !tbaa !71
  store ptr %i.kp, ptr %.02530.i85.i.i, align 8, !tbaa !66
  store ptr %.02530.i85.i.i, ptr %i.m, align 8, !tbaa !71
  store ptr %i.m, ptr %i.kn, align 8, !tbaa !121
  %i.kq = load ptr, ptr %.02530.i85.i.i, align 8, !tbaa !66
  %.not28.i90.i.i = icmp eq ptr %i.kq, null
  br i1 %.not28.i90.i.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i81.i.i, i64 %.031.i84.i.i
  store ptr %.02530.i85.i.i, ptr %i.kr, align 8, !tbaa !121
  br label %bb.dg

bb.df:                                            ; preds = %.lr.ph.i83.i.i
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !66
  store ptr %i.ks, ptr %.02530.i85.i.i, align 8, !tbaa !66
  %i.kt = load ptr, ptr %i.kn, align 8, !tbaa !121
  store ptr %.02530.i85.i.i, ptr %i.kt, align 8, !tbaa !66
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %.1.i87.i.i = phi i64 [ %.031.i84.i.i, %bb.df ], [ %i.km, %bb.de ], [ %i.km, %bb.dd ]
  %.not.i88.i.i = icmp eq ptr %i.kj, null
  br i1 %.not.i88.i.i, label %._crit_edge.i89.i.i, label %.lr.ph.i83.i.i, !llvm.loop !10

._crit_edge.i89.i.i:                              ; preds = %bb.dg, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i80.i.i
  %i.ku = load ptr, ptr %i.g, align 8, !tbaa !45  ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.l
  br i1 %i.kv, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i47.i.i, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge.i89.i.i
  %i.kw = load i64, ptr %i.h, align 8, !tbaa !46
  %i.kx = shl i64 %i.kw, 3
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #23
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i47.i.i

.loopexit121.i.i:                                 ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i79.i.i
  %lpad.loopexit123.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.di

.loopexit.split-lp122.i.i:                        ; preds = %.noexc7.i.i.i91.i.i, %.noexc.i.i.i92.i.i
  %lpad.loopexit.split-lp124.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.di

bb.di:                                            ; preds = %.loopexit.split-lp122.i.i, %.loopexit121.i.i
  %lpad.phi125.i.i = phi { ptr, i32 } [ %lpad.loopexit123.i.i, %.loopexit121.i.i ], [ %lpad.loopexit.split-lp124.i.i, %.loopexit.split-lp122.i.i ]
  %i.ky = extractvalue { ptr, i32 } %lpad.phi125.i.i, 0
  %i.kz = call ptr @__cxa_begin_catch(ptr %i.ky) #22 ; 0 uses
  store i64 %i.jw, ptr %i.j, align 8, !tbaa !156
  invoke void @__cxa_rethrow() #25
          to label %bb.dl unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.la = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume.i17.i.i unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #26
  unreachable

bb.dl:                                            ; preds = %bb.di
  unreachable

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i47.i.i: ; preds = %bb.dh, %._crit_edge.i89.i.i
  store i64 %i.kc, ptr %i.h, align 8, !tbaa !46
  store ptr %.0.i.i81.i.i, ptr %i.g, align 8, !tbaa !45
  %i.ld = urem i64 %i.gq, %i.kc
  br label %bb.dm

bb.dm:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i47.i.i, %.noexc48._crit_edge.i.i
  %i.le = phi ptr [ %.0.i.i81.i.i, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i47.i.i ], [ %.pre278.i.i, %.noexc48._crit_edge.i.i ] ; 2 uses
  %.0.i44.i.i = phi i64 [ %i.ld, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i47.i.i ], [ %i.jh, %.noexc48._crit_edge.i.i ]
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %.0.i44.i.i ; 3 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !121 ; 2 uses
  %.not.i.i45.i.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i45.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !66
  store ptr %i.lh, ptr %i.jt, align 8, !tbaa !66
  %i.li = load ptr, ptr %i.lf, align 8, !tbaa !121
  store ptr %i.jt, ptr %i.li, align 8, !tbaa !66
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit50.i.i

bb.do:                                            ; preds = %bb.dm
  %i.lj = load ptr, ptr %i.m, align 8, !tbaa !71  ; 3 uses
  store ptr %i.lj, ptr %i.jt, align 8, !tbaa !66
  store ptr %i.jt, ptr %i.m, align 8, !tbaa !71
  %.not11.i.i46.i.i = icmp eq ptr %i.lj, null
  br i1 %.not11.i.i46.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load i64, ptr %i.h, align 8, !tbaa !46
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !127
  %i.ln = urem i64 %i.lm, %i.ll
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.ln
  store ptr %i.jt, ptr %i.lo, align 8, !tbaa !121
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  store ptr %i.m, ptr %i.lf, align 8, !tbaa !121
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit50.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit50.i.i: ; preds = %bb.dq, %bb.dn
  %i.lp = load i64, ptr %i.k, align 8, !tbaa !157
  %i.lq = add i64 %i.lp, 1
  store i64 %i.lq, ptr %i.k, align 8, !tbaa !157
  br label %"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_.exit36.i.i"

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i14.i33.i.i: ; preds = %.loopexit.i.i13.i32.i.i
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i17.i.i

"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_.exit36.i.i": ; preds = %bb.cx, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit50.i.i, %bb.cw
  %.pn.i.i15.i34.i.i = phi ptr [ %i.jt, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit50.i.i ], [ %i.jk, %bb.cw ], [ %i.jp, %bb.cx ]
  %.1.i.i16.i35.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i15.i34.i.i, i64 16
  %i.ls = load i64, ptr %.1.i.i16.i35.i.i, align 8, !tbaa !127 ; 2 uses
  %i.lt = icmp ult i64 %i.jg, %i.ls
  %i.lu = icmp eq i64 %i.jg, %i.ls
  %i.lv = icmp ult i64 %i.gp, %i.gq
  %i.lw = and i1 %i.lv, %i.lu
  %i.lx = or i1 %i.lt, %i.lw
  br i1 %i.lx, label %.preheader.i.i, label %bb.dr, !llvm.loop !432

bb.dr:                                            ; preds = %"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_.exit36.i.i"
  %i.ly = icmp ult ptr %.sroa.0118.1.i.i, %.sroa.0115.1.i.i
  br i1 %i.ly, label %bb.ds, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEET_SH_SH_T0_.exit"

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.1.i.i)
  %i.lz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0115.1.i.i)
          to label %bb.dt unwind label %bb.du     ; 0 uses

bb.dt:                                            ; preds = %bb.ds
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0115.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i14.i unwind label %bb.du ; 0 uses

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i14.i: ; preds = %bb.dt
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0118.1.i.i, i64 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !433

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.dr
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.0118.1.i.i, ptr %storemerge171572, i64 noundef %i.ae, ptr %3)
  %i.md = ptrtoint ptr %.sroa.0118.1.i.i to i64
  %i.me = sub i64 %i.md, %i.a
  %i.mf = ashr exact i64 %i.me, 3                 ; 3 uses
  %i.mg = icmp sgt i64 %i.mf, 16
  br i1 %i.mg, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !428

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_SH_SH_RT0_.exit.i11.i", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_T0_SI_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3, ptr %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.bzla::Node", align 8        ; 5 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.040 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.040, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = tail call fastcc noundef zeroext i1 @"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_"(ptr %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.040
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 0 uses
  %i.m = icmp slt i64 %spec.select, %i.b
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !434

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.n = and i64 %2, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %2, -2
  %i.q = ashr exact i64 %i.p, 1
  %i.r = icmp eq i64 %.0.lcssa, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = shl nsw i64 %.0.lcssa, 1
  %i.t = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.t, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.x = icmp sgt i64 %.1, %1
  br i1 %i.x, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d, %.noexc27
  %.010.i = phi i64 [ %.0911.i, %.noexc27 ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %i.z = invoke fastcc noundef zeroext i1 @"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_"(ptr %4, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  br i1 %i.z, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %.noexc27 unwind label %.loopexit ; 0 uses

.noexc27:                                         ; preds = %bb.e
  %i.ac = icmp sgt i64 %.0911.i, %1
  br i1 %i.ac, label %.lr.ph.i, label %.critedge.i, !llvm.loop !435

.critedge.i:                                      ; preds = %.noexc27, %.noexc, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %.noexc ], [ %.0911.i, %.noexc27 ]
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_T0_SI_T1_RT2_.exit" unwind label %.loopexit.split-lp ; 0 uses

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIZNS2_5quant11QuantSolver10mbqi_checkERKS7_E3$_0EEEvT_T0_SI_T1_RT2_.exit": ; preds = %.critedge.i
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  ret void

.loopexit:                                        ; preds = %.lr.ph.i, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.critedge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4bzla5quant11QuantSolver10mbqi_checkERKSt6vectorINS_4NodeESaIS3_EEENK3$_0clIS3_S3_EEDaRKT_RKT0_"(ptr %.0.val, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 6 uses
  %i.b = tail call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 464 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 472 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46   ; 4 uses
  %i.f = urem i64 %i.a, %i.e                      ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !45   ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !127
  %i.m = icmp eq i64 %i.a, %i.l
  br i1 %i.m, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.a, %i.q
  br i1 %i.n, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.020.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ]
  %i.o = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !66 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !127  ; 2 uses
  %i.r = urem i64 %i.q, %i.e
  %.not19.i.i.i.i = icmp eq i64 %i.r, %i.f
  br i1 %.not19.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.d
  br label %.loopexit.i.i, !llvm.loop !9

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.a
  %i.s = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  store ptr null, ptr %i.s, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.a, ptr %i.t, align 8, !tbaa !154
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.u, align 8, !tbaa !155
  %i.v = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.f, i64 noundef %i.a, ptr noundef nonnull %i.s, i64 noundef 1)
          to label %.loopexit.i.i._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

.loopexit.i.i._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit_crit_edge: ; preds = %.loopexit.i.i
  %.pre = load i64, ptr %i.d, align 8, !tbaa !46
  %.pre14 = load ptr, ptr %i.c, align 8, !tbaa !45
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit

common.resume:                                    ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i14, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.sink = phi ptr [ %i.am, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i14 ], [ %i.s, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i14 ], [ %i.w, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 24) #23
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit: ; preds = %bb.c, %.loopexit.i.i._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit_crit_edge, %bb.b
  %i.x = phi ptr [ %.pre14, %.loopexit.i.i._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit_crit_edge ], [ %i.g, %bb.b ], [ %i.g, %bb.c ]
  %i.y = phi i64 [ %.pre, %.loopexit.i.i._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit_crit_edge ], [ %i.e, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.v, %.loopexit.i.i._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.z = load i64, ptr %.1.i.i, align 8, !tbaa !127 ; 2 uses
  %i.aa = urem i64 %i.b, %i.y                     ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i7, label %.loopexit.i.i13, label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !127
  %i.ag = icmp eq i64 %i.b, %i.af
  br i1 %i.ag, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit17, label %.lr.ph.i.i.i.i8

bb.f:                                             ; preds = %bb.g
  %i.ah = icmp eq i64 %i.b, %i.ak
  br i1 %i.ah, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit17, label %.lr.ph.i.i.i.i8, !llvm.loop !9

.lr.ph.i.i.i.i8:                                  ; preds = %bb.e, %bb.f
  %.020.i.i.i.i9 = phi ptr [ %i.ai, %bb.f ], [ %i.ad, %bb.e ]
  %i.ai = load ptr, ptr %.020.i.i.i.i9, align 8, !tbaa !66 ; 4 uses
  %.not18.i.i.i.i10 = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i.i.i10, label %.loopexit.i.i13, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !127 ; 2 uses
  %i.al = urem i64 %i.ak, %i.y
end_hunk_1
