Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/variable_substitution?download=true
inline.NumInlined: 4599
inline.NumDeleted: 1879
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm:bb.a
  store ptr %i.x, ptr %3, align 8, !tbaa !128
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !164
  store ptr %3, ptr %i.y, align 8, !tbaa !128
  br label %_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !205
  store ptr %i.aa, ptr %3, align 8, !tbaa !128
  store ptr %3, ptr %i.z, align 8, !tbaa !205
  %i.ab = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !194
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !166
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !164
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !164
  br label %_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit

_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !224
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !224
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #23
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !71
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImmESt6vectorIN4bzla4NodeESaIS7_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImmESt6vectorIN4bzla4NodeESaIS7_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImmESt6vectorIN4bzla4NodeESaIS7_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImmESt6vectorIN4bzla4NodeESaIS7_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit, %bb.a
  ret void
}

declare noundef i64 @_ZNKSt4hashISt4pairImmEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !214

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !779
  br label %_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImmESt6vectorIN4bzla4NodeESaIS7_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !214

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImmESt6vectorIN4bzla4NodeESaIS7_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImmESt6vectorIN4bzla4NodeESaIS7_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_ImmESt6vectorIN4bzla4NodeESaIS7_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !205  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !205
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !166
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !164  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !205
  store ptr %i.o, ptr %.02530, align 8, !tbaa !128
  store ptr %.02530, ptr %i.g, align 8, !tbaa !205
  store ptr %i.g, ptr %i.m, align 8, !tbaa !164
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !128
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !164
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !128
  store ptr %i.r, ptr %.02530, align 8, !tbaa !128
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !164
  store ptr %.02530, ptr %i.s, align 8, !tbaa !128
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !778

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !193    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !194
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #27
  br label %_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt4pairImmES0_IKS1_St6vectorIN4bzla4NodeESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !194
  store ptr %.0.i, ptr %0, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %4 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %5 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %6 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %7 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %8 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %9 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %10 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %11 = alloca %"class.bzla::Node", align 8       ; 6 uses
  %12 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %13 = alloca %"class.bzla::Node", align 8       ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph141

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEET_S15_S15_T0_.exit"
  %i.h = icmp eq i64 %i.x, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph141, !llvm.loop !780

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa130 = phi i64 [ %i.d, %.lr.ph ], [ %i.dm, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dl, %bb.b ]
  %storemerge55.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.017.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.i = add nsw i64 %.lcssa130, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %._crit_edge
  %.012.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i.i.i
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_T0_S16_T1_T2_"(ptr nonnull %0, i64 noundef %.012.i.i.i, i64 noundef %.lcssa130, ptr noundef align 8 %13)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #23
  %.not.i.i.i = icmp eq i64 %.012.i.i.i, 0
  %i.l = add nsw i64 %.012.i.i.i, -1
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_RT0_.exit.i.i", label %bb.c, !llvm.loop !781

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #23
  br label %bb.h

common.resume:                                    ; preds = %bb.u, %bb.z, %bb.ab, %bb.ag, %bb.al, %bb.an, %bb.ax, %bb.h, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.h ], [ %.pn.i.i10.i, %bb.m ], [ %i.di, %bb.ax ], [ %i.av, %bb.u ], [ %i.bh, %bb.z ], [ %i.bk, %bb.ab ], [ %i.bw, %bb.ag ], [ %i.ci, %bb.al ], [ %i.cl, %bb.an ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i.i.i = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.m, %bb.f ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %common.resume

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_RT0_.exit.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %14 = icmp sgt i64 %.lcssa, 8
  br i1 %14, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_RT0_.exit.i11.i"
  %.sroa.0.03.i.i = phi ptr [ %i.o, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_RT0_.exit.i11.i" ], [ %storemerge55.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_RT0_.exit.i.i" ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %.lr.ph.i9.i
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_T0_S16_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef align 8 %11)
          to label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_RT0_.exit.i11.i" unwind label %bb.l

bb.k:                                             ; preds = %bb.i, %.lr.ph.i9.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i.i10.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.t, %bb.k ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_RT0_.exit.i11.i": ; preds = %bb.j
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.v = icmp sgt i64 %i.r, 8
  br i1 %i.v, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_T0_.exit", !llvm.loop !782

.lr.ph141:                                        ; preds = %.lr.ph, %bb.b
  %storemerge55140 = phi ptr [ %.sroa.017.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.056139 = phi i64 [ %i.x, %bb.b ], [ %2, %.lr.ph ]
  %i.w = phi i64 [ %i.dm, %bb.b ], [ %i.d, %.lr.ph ]
  %i.x = add nsw i64 %.056139, -1                 ; 3 uses
  %i.y = lshr i64 %i.w, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 13 uses
  %i.aa = getelementptr inbounds i8, ptr %storemerge55140, i64 -8 ; 16 uses
  %i.ab = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.ab, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph141
  %i.ac = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %..i.i.i.i.i = select i1 %i.ac, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph141
  %.0.i.i.i.i.i = phi i32 [ 0, %.lr.ph141 ], [ %..i.i.i.i.i, %bb.n ] ; 2 uses
  %i.ad = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  br i1 %i.ad, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i.i
  %i.ae = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %..i8.i.i.i.i = select i1 %i.ae, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i.i: ; preds = %bb.o, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i.i
  %.0.i9.i.i.i.i = phi i32 [ 0, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i.i ], [ %..i8.i.i.i.i, %bb.o ] ; 2 uses
  %i.af = icmp samesign ult i32 %.0.i.i.i.i.i, %.0.i9.i.i.i.i
  br i1 %i.af, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i.i", label %bb.p

bb.p:                                             ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i.i
  %i.ag = icmp eq i32 %.0.i.i.i.i.i, %.0.i9.i.i.i.i
  br i1 %i.ag, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread59.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.i.i": ; preds = %bb.p
  %i.ah = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.ai = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread59.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.i.i", %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i.i
  %i.ak = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  br i1 %i.ak, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i27.i.i, label %bb.q

bb.q:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i.i"
  %i.al = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %..i.i.i26.i.i = select i1 %i.al, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i27.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i27.i.i: ; preds = %bb.q, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i.i"
  %.0.i.i.i28.i.i = phi i32 [ 0, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i.i" ], [ %..i.i.i26.i.i, %bb.q ] ; 2 uses
  %i.am = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  br i1 %i.am, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i30.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i27.i.i
  %i.an = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %..i8.i.i29.i.i = select i1 %i.an, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i30.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i30.i.i: ; preds = %bb.r, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i27.i.i
  %.0.i9.i.i31.i.i = phi i32 [ 0, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i27.i.i ], [ %..i8.i.i29.i.i, %bb.r ] ; 2 uses
  %i.ao = icmp samesign ult i32 %.0.i.i.i28.i.i, %.0.i9.i.i31.i.i
  br i1 %i.ao, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread.i.i", label %bb.s

bb.s:                                             ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i30.i.i
  %i.ap = icmp eq i32 %.0.i.i.i28.i.i, %.0.i9.i.i31.i.i
  br i1 %i.ap, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread60.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.i.i": ; preds = %bb.s
  %i.aq = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ar = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread60.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.i.i", %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i30.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread.i.i"
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i.i unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread.i.i"
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i.i: ; preds = %bb.t
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread60.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.i.i", %bb.s
  %i.aw = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.aw, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i34.i.i, label %bb.v

bb.v:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread60.i.i"
  %i.ax = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %..i.i.i33.i.i = select i1 %i.ax, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i34.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i34.i.i: ; preds = %bb.v, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread60.i.i"
  %.0.i.i.i35.i.i = phi i32 [ 0, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit32.thread60.i.i" ], [ %..i.i.i33.i.i, %bb.v ] ; 2 uses
  %i.ay = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  br i1 %i.ay, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i37.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i34.i.i
  %i.az = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %..i8.i.i36.i.i = select i1 %i.az, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i37.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i37.i.i: ; preds = %bb.w, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i34.i.i
  %.0.i9.i.i38.i.i = phi i32 [ 0, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i34.i.i ], [ %..i8.i.i36.i.i, %bb.w ] ; 2 uses
  %i.ba = icmp samesign ult i32 %.0.i.i.i35.i.i, %.0.i9.i.i38.i.i
  br i1 %i.ba, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.thread.i.i", label %bb.x

bb.x:                                             ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i37.i.i
  %i.bb = icmp eq i32 %.0.i.i.i35.i.i, %.0.i9.i.i38.i.i
  br i1 %i.bb, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.thread61.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.i.i": ; preds = %bb.x
  %i.bc = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.bd = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.thread61.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.i.i", %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i37.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.y unwind label %bb.z       ; 0 uses

bb.y:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.thread.i.i"
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit40.i.i unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.y, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.thread.i.i"
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit40.i.i: ; preds = %bb.y
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.thread61.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit39.i.i", %bb.x
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_T0_T1_":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit48.thread62.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit48.i.i", %bb.ae
  %i.bx = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  br i1 %i.bx, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i51.i.i, label %bb.ah

bb.ah:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit48.thread62.i.i"
  %i.by = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %..i.i.i50.i.i = select i1 %i.by, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i51.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i51.i.i: ; preds = %bb.ah, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit48.thread62.i.i"
  %.0.i.i.i52.i.i = phi i32 [ 0, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit48.thread62.i.i" ], [ %..i.i.i50.i.i, %bb.ah ] ; 2 uses
  %i.bz = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  br i1 %i.bz, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i54.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i51.i.i
  %i.ca = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %..i8.i.i53.i.i = select i1 %i.ca, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i54.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i54.i.i: ; preds = %bb.ai, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i51.i.i
  %.0.i9.i.i55.i.i = phi i32 [ 0, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i51.i.i ], [ %..i8.i.i53.i.i, %bb.ai ] ; 2 uses
  %i.cb = icmp samesign ult i32 %.0.i.i.i52.i.i, %.0.i9.i.i55.i.i
  br i1 %i.cb, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.thread.i.i", label %bb.aj

bb.aj:                                            ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i54.i.i
  %i.cc = icmp eq i32 %.0.i.i.i52.i.i, %.0.i9.i.i55.i.i
  br i1 %i.cc, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.thread63.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.i.i": ; preds = %bb.aj
  %i.cd = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ce = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.cf = icmp ult i64 %i.cd, %i.ce
  br i1 %i.cf, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.thread63.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.i.i", %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i54.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.ak unwind label %bb.al     ; 0 uses

bb.ak:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.thread.i.i"
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit57.i.i unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.thread.i.i"
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit57.i.i: ; preds = %bb.ak
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.thread63.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.i.i", %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.am unwind label %bb.an     ; 0 uses

bb.am:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.thread63.i.i"
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit58.i.i unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit56.thread63.i.i"
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit58.i.i: ; preds = %bb.am
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i.preheader": ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit58.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit57.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit49.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit41.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit40.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i.preheader", %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i19.i
  %.sroa.017.0.i.i = phi ptr [ %i.dj, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i19.i ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i19.i ], [ %storemerge55140, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i.preheader" ]
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i21.i", %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i"
  %.sroa.017.1.i.i = phi ptr [ %.sroa.017.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i" ], [ %i.cv, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i21.i" ] ; 12 uses
  %i.cm = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.017.1.i.i)
  br i1 %i.cm, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i14.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cn = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.017.1.i.i)
  %..i.i.i.i13.i = select i1 %i.cn, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i14.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i14.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i15.i = phi i32 [ 0, %bb.ao ], [ %..i.i.i.i13.i, %bb.ap ] ; 2 uses
  %i.co = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.co, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i17.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i14.i
  %i.cp = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %..i8.i.i.i16.i = select i1 %i.cp, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i17.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i17.i: ; preds = %bb.aq, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i14.i
  %.0.i9.i.i.i18.i = phi i32 [ 0, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i14.i ], [ %..i8.i.i.i16.i, %bb.aq ] ; 2 uses
  %i.cq = icmp samesign ult i32 %.0.i.i.i.i15.i, %.0.i9.i.i.i18.i
  br i1 %i.cq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i21.i", label %bb.ar

bb.ar:                                            ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i17.i
  %i.cr = icmp eq i32 %.0.i.i.i.i15.i, %.0.i9.i.i.i18.i
  br i1 %i.cr, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.i20.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i.preheader": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.i20.i", %bb.ar
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.i20.i": ; preds = %bb.ar
  %i.cs = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.017.1.i.i)
  %i.ct = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.cu = icmp ult i64 %i.cs, %i.ct
  br i1 %i.cu, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i21.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread.i21.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.i20.i", %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i17.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 8
  br label %bb.ao, !llvm.loop !783

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i.backedge", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i.preheader"
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i.preheader" ], [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i.backedge" ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 8 uses
  %i.cw = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.cw, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i9.i.i, label %bb.as

bb.as:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i"
  %i.cx = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %..i.i.i8.i.i = select i1 %i.cx, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i9.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i9.i.i: ; preds = %bb.as, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i"
  %.0.i.i.i10.i.i = phi i32 [ 0, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i" ], [ %..i.i.i8.i.i, %bb.as ] ; 2 uses
  %i.cy = call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i.i)
  br i1 %i.cy, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i12.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i9.i.i
  %i.cz = call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i.i)
  %..i8.i.i11.i.i = select i1 %i.cz, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i12.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i12.i.i: ; preds = %bb.at, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i9.i.i
  %.0.i9.i.i13.i.i = phi i32 [ 0, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i9.i.i ], [ %..i8.i.i11.i.i, %bb.at ] ; 2 uses
  %i.da = icmp samesign ult i32 %.0.i.i.i10.i.i, %.0.i9.i.i13.i.i
  br i1 %i.da, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i.backedge", label %bb.au

bb.au:                                            ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i12.i.i
  %i.db = icmp eq i32 %.0.i.i.i10.i.i, %.0.i9.i.i13.i.i
  br i1 %i.db, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit14.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit14.thread21.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit14.i.i": ; preds = %bb.au
  %i.dc = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.dd = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i.i)
  %i.de = icmp ult i64 %i.dc, %i.dd
  br i1 %i.de, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i.backedge", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit14.thread21.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i.backedge": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit14.i.i", %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i12.i.i
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread20.i.i", !llvm.loop !784

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit14.thread21.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit14.i.i", %bb.au
  %i.df = icmp ult ptr %.sroa.017.1.i.i, %.sroa.0.1.i.i
  br i1 %i.df, label %bb.av, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEET_S15_S15_T0_.exit"

bb.av:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit14.thread21.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.017.1.i.i)
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.017.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i.i)
          to label %bb.aw unwind label %bb.ax     ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i19.i unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i19.i: ; preds = %bb.aw
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_S15_T0_.exit.i", !llvm.loop !785

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEET_S15_S15_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit14.thread21.i.i"
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_T0_T1_"(ptr nonnull %.sroa.017.1.i.i, ptr %storemerge55140, i64 noundef %i.x)
  %i.dk = ptrtoint ptr %.sroa.017.1.i.i to i64
  %i.dl = sub i64 %i.dk, %i.a                     ; 2 uses
  %i.dm = ashr exact i64 %i.dl, 3                 ; 3 uses
  %i.dn = icmp sgt i64 %i.dm, 16
  br i1 %i.dn, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_T0_.exit", !llvm.loop !780

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEET_S15_S15_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_S15_RT0_.exit.i11.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_T0_S16_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread42"
  %.043 = phi i64 [ %i.r, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread42" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.043, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.i, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %..i.i.i = select i1 %i.j, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i: ; preds = %bb.b, %.lr.ph
  %.0.i.i.i = phi i32 [ 0, %.lr.ph ], [ %..i.i.i, %bb.b ] ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br i1 %i.k, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i
  %i.l = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %..i8.i.i = select i1 %i.l, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i: ; preds = %bb.c, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i
  %.0.i9.i.i = phi i32 [ 0, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i ], [ %..i8.i.i, %bb.c ] ; 2 uses
  %i.m = icmp samesign ult i32 %.0.i.i.i, %.0.i9.i.i
  br i1 %i.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread", label %bb.d

bb.d:                                             ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i
  %i.n = icmp eq i32 %.0.i.i.i, %.0.i9.i.i
  br i1 %i.n, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread42"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit": ; preds = %bb.d
  %i.o = tail call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.p = tail call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread42"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread": ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit"
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread42"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread42": ; preds = %bb.d, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread"
  %i.r = phi i64 [ %i.g, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit" ], [ %i.e, %bb.d ] ; 4 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %.043
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 0 uses
  %i.v = icmp slt i64 %i.r, %i.b
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !786

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread42", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.r, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES14_EEbT_T0_.exit.thread42" ] ; 5 uses
  %i.w = and i64 %2, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.y = add nsw i64 %2, -2
  %i.z = ashr exact i64 %i.y, 1
  %i.aa = icmp eq i64 %.0.lcssa, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = shl nsw i64 %.0.lcssa, 1
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.1 = phi i64 [ %i.ac, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ag = icmp sgt i64 %.1, %1
  br i1 %i.ag, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.g, %.noexc30
  %.010.i = phi i64 [ %.0911.i, %.noexc30 ], [ %.1, %bb.g ] ; 4 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 4 uses
  %i.ai = invoke noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  br i1 %i.ai, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.aj = invoke noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %bb.h
  %..i.i.i.i = select i1 %i.aj, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i: ; preds = %.noexc25, %.noexc
  %.0.i.i.i.i = phi i32 [ 0, %.noexc ], [ %..i.i.i.i, %.noexc25 ] ; 2 uses
  %i.ak = invoke noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i
  br i1 %i.ak, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc26
  %i.al = invoke noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc27 unwind label %.loopexit

.noexc27:                                         ; preds = %bb.i
  %..i8.i.i.i = select i1 %i.al, i32 1, i32 2
  br label %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i

_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i: ; preds = %.noexc27, %.noexc26
  %.0.i9.i.i.i = phi i32 [ 0, %.noexc26 ], [ %..i8.i.i.i, %.noexc27 ] ; 2 uses
  %i.am = icmp samesign ult i32 %.0.i.i.i.i, %.0.i9.i.i.i
  br i1 %i.am, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i", label %bb.j

bb.j:                                             ; preds = %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i
  %i.an = icmp eq i32 %.0.i.i.i.i, %.0.i9.i.i.i
  br i1 %i.an, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES7_EEbT_RT0_.exit.i", label %.critedge.i

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES7_EEbT_RT0_.exit.i": ; preds = %bb.j
  %i.ao = invoke noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES7_EEbT_RT0_.exit.i"
  %i.ap = invoke noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc29 unwind label %.loopexit

.noexc29:                                         ; preds = %.noexc28
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i", label %.critedge.i

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i": ; preds = %.noexc29, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit10.i.i.i
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.noexc30 unwind label %.loopexit ; 0 uses

.noexc30:                                         ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i"
  %i.at = icmp sgt i64 %.0911.i, %1
  br i1 %i.at, label %.lr.ph.i, label %.critedge.i, !llvm.loop !787

.critedge.i:                                      ; preds = %.noexc30, %.noexc29, %bb.j, %bb.g
  %.0.lcssa.i = phi i64 [ %.1, %bb.g ], [ %.010.i, %.noexc29 ], [ %.0911.i, %.noexc30 ], [ %.010.i, %bb.j ]
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_T0_S16_T1_RT2_.exit" unwind label %.loopexit.split-lp ; 0 uses

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_T0_S16_T1_RT2_.exit": ; preds = %.critedge.i
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  ret void

.loopexit:                                        ; preds = %.lr.ph.i, %bb.h, %_ZN4bzla10preprocess4pass12_GLOBAL__N_18priorityERKNS_4NodeE.exit.i.i.i, %bb.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES7_EEbT_RT0_.exit.i", %.noexc28, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4bzla10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapINS2_4NodeESt6vectorISt4pairIS7_S7_ESaISA_EESt4hashIS7_ESt8equal_toIS7_ESaIS9_IKS7_SC_EEERNS3_15AssertionVectorERS6_IS7_S7_SE_SG_SaIS9_ISH_S7_EEERS6_IS7_mSE_SG_SaIS9_ISH_mEEEE3$_0EclINS_17__normal_iteratorIPS7_S8_IS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %.critedge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10preprocess4pass24PassVariableSubstitution16process_extractsERKSt13unordered_mapIS3_S5_ISt4pairIS3_S3_ESaISG_EESt4hashIS3_ESt8equal_toIS3_ESaISF_IKS3_SI_EEERNSB_15AssertionVectorERSE_IS3_S3_SK_SM_SaISF_ISN_S3_EEERSE_IS3_mSK_SM_SaISF_ISN_mEEEE3$_0EEEvT_S15_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.019 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.0.019, %1
  br i1 %.not20, label %.loopexit18, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
end_hunk_1
