inline.NumInlined: 1316
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv:bb.a
  %i.i = and i64 %i.g, 255
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.copyload.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i to i64
  %notmask.i = shl nsw i64 -1, %i.i
  %i.l = xor i64 %notmask.i, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi i64 [ %i.ab, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !344
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %.05.i.i ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !16
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !16
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #28
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.ab = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !345

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit: ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pre = load i64, ptr %i.f, align 8, !tbaa !113
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit, %bb.b
  %i.ac = phi i64 [ %.pre, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit ], [ %i.g, %bb.b ] ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 256
  br i1 %i.ad, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit
  %i.ae = and i64 %i.ac, 255                      ; 2 uses
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !113
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit, %bb.c
  %i.af = phi i64 [ %i.ac, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit ], [ %i.ae, %bb.c ] ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.0.copyload.i = load i16, ptr %i.ah, align 1
  %i.ai = zext i16 %.0.copyload.i to i64
  %i.aj = icmp eq i64 %i.af, 0
  %i.ak = shl nuw nsw i64 %i.ai, 2
  %.neg17 = sub nuw nsw i64 -16, %i.ak
  %.neg18 = shl i64 -64, %i.af
  %.0.i.neg = select i1 %i.aj, i64 %.neg17, i64 %.neg18
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !112
  store i64 0, ptr %i.f, align 8, !tbaa !113
  %i.al = and i64 %.0.i.neg, -8
  %i.am = shl nuw nsw i64 %i.k, 6
  %i.an = mul i64 %i.am, %i.n
  %i.ao = sub i64 %i.an, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ao) #27
  store ptr null, ptr %0, align 8, !tbaa !344
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !346
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !346
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !348 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #28
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !349

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !77
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #28
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @_ZN8facebook5velox5cache19AsyncDataCacheEntry7releaseEv(ptr noundef nonnull align 8 dereferenceable(169)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !280  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !283    ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #25
  unreachable

_ZNKSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 13 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  store ptr null, ptr %i.q, align 8, !tbaa !208
  %i.r = load ptr, ptr %2, align 8, !tbaa !208    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK8facebook5velox5cache8CachePin12addReferenceEv.exit.i.i.i, !prof !15

bb.c:                                             ; preds = %_ZNKSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE12_M_check_lenEmPKc.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox5cache8CachePin12addReferenceEvE18veloxCheckFailArgs) #25
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNK8facebook5velox5cache8CachePin12addReferenceEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE12_M_check_lenEmPKc.exit
  invoke void @_ZN8facebook5velox5cache19AsyncDataCacheEntry12addReferenceEv(ptr noundef nonnull align 8 dereferenceable(169) %i.r)
          to label %.noexc26 unwind label %bb.h

.noexc26:                                         ; preds = %_ZNK8facebook5velox5cache8CachePin12addReferenceEv.exit.i.i.i
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !208  ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc26
  invoke void @_ZN8facebook5velox5cache19AsyncDataCacheEntry7releaseEv(ptr noundef nonnull align 8 dereferenceable(169) %i.s)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d, %.noexc26
  %i.t = load ptr, ptr %2, align 8, !tbaa !208
  store ptr %i.t, ptr %i.q, align 8, !tbaa !208
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e                       ; 3 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.v, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.e
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.ab
  %scevgep51 = getelementptr i8, ptr %i.c, i64 %i.ab
  %bound0 = icmp ult ptr %i.p, %scevgep51
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check52 = icmp ult i64 %i.v, 120
  br i1 %min.iters.check52, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.x, 12
  %n.vec = and i64 %i.x, 4611686018427387888      ; 4 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.af ; 4 uses
  %next.gep53 = getelementptr i8, ptr %i.c, i64 %i.af ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.ag = getelementptr i8, ptr %next.gep53, i64 32 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep53, i64 64 ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep53, i64 96 ; 2 uses
  %wide.load = load <4 x ptr>, ptr %next.gep53, align 8, !tbaa !208, !alias.scope !355, !noalias !350
  %wide.load54 = load <4 x ptr>, ptr %i.ag, align 8, !tbaa !208, !alias.scope !355, !noalias !350
  %wide.load55 = load <4 x ptr>, ptr %i.ah, align 8, !tbaa !208, !alias.scope !355, !noalias !350
  %wide.load56 = load <4 x ptr>, ptr %i.ai, align 8, !tbaa !208, !alias.scope !355, !noalias !350
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  store <4 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !208, !alias.scope !358, !noalias !355
  store <4 x ptr> %wide.load54, ptr %i.aj, align 8, !tbaa !208, !alias.scope !358, !noalias !355
  store <4 x ptr> %wide.load55, ptr %i.ak, align 8, !tbaa !208, !alias.scope !358, !noalias !355
  store <4 x ptr> %wide.load56, ptr %i.al, align 8, !tbaa !208, !alias.scope !358, !noalias !355
  store <4 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !208, !alias.scope !355, !noalias !350
  store <4 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !208, !alias.scope !355, !noalias !350
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !208, !alias.scope !355, !noalias !350
  store <4 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !208, !alias.scope !355, !noalias !350
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !360

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !144

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.x, 4611686018427387900    ; 3 uses
  %i.an = shl i64 %n.vec59, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index60, 3                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.p, i64 %i.aq
  %next.gep62 = getelementptr i8, ptr %i.c, i64 %i.aq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %wide.load63 = load <4 x ptr>, ptr %next.gep62, align 8, !tbaa !208, !alias.scope !355, !noalias !350
  store <4 x ptr> %wide.load63, ptr %next.gep61, align 8, !tbaa !208, !alias.scope !358, !noalias !355
  store <4 x ptr> splat (ptr null), ptr %next.gep62, align 8, !tbaa !208, !alias.scope !355, !noalias !350
  %index.next64 = add nuw i64 %index60, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next64, %n.vec59
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !361

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %i.x, %n.vec59
  br i1 %cmp.n65, label %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.p, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.c, %vector.memcheck ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.as = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !208, !alias.scope !353, !noalias !350
  store ptr %i.as, ptr %.012.i.i.i, align 8, !tbaa !208, !alias.scope !350, !noalias !353
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !208, !alias.scope !353, !noalias !350
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !362

_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.au, %.lr.ph.i.i.i ] ; 2 uses
  %i.av = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 8 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %iter.check93

iter.check93:                                     ; preds = %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.aw = add i64 %i.d, -8
  %i.ax = sub i64 %i.aw, %i.m                     ; 3 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 5 uses
  %min.iters.check74 = icmp ult i64 %i.ax, 24
  br i1 %min.iters.check74, label %.lr.ph.i.i.i29.preheader, label %vector.memcheck68

vector.memcheck68:                                ; preds = %iter.check93
  %i.ba = add i64 %i.d, -8
  %i.bb = sub i64 %i.ba, %i.m
  %i.bc = and i64 %i.bb, -8                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bc
  %scevgep69 = getelementptr i8, ptr %i.bd, i64 16
  %i.be = getelementptr i8, ptr %1, i64 %i.bc
  %scevgep70 = getelementptr i8, ptr %i.be, i64 8
  %bound071 = icmp ult ptr %i.av, %scevgep70
  %bound172 = icmp ult ptr %1, %scevgep69
  %found.conflict73 = and i1 %bound071, %bound172
  br i1 %found.conflict73, label %.lr.ph.i.i.i29.preheader, label %vector.main.loop.iter.check75

vector.main.loop.iter.check75:                    ; preds = %vector.memcheck68
  %min.iters.check76 = icmp ult i64 %i.ax, 120
  br i1 %min.iters.check76, label %vec.epilog.ph97, label %vector.ph77

vector.ph77:                                      ; preds = %vector.main.loop.iter.check75
  %n.mod.vf78 = and i64 %i.az, 12
  %n.vec79 = and i64 %i.az, 4611686018427387888   ; 4 uses
  %i.bf = shl i64 %n.vec79, 3                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %1, i64 %i.bf
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph77
  %index81 = phi i64 [ 0, %vector.ph77 ], [ %index.next88, %vector.body80 ] ; 2 uses
  %i.bi = shl i64 %index81, 3                     ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.av, i64 %i.bi ; 4 uses
  %next.gep83 = getelementptr i8, ptr %1, i64 %i.bi ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.bj = getelementptr i8, ptr %next.gep83, i64 32 ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep83, i64 64 ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep83, i64 96 ; 2 uses
  %wide.load84 = load <4 x ptr>, ptr %next.gep83, align 8, !tbaa !208, !alias.scope !368, !noalias !363
  %wide.load85 = load <4 x ptr>, ptr %i.bj, align 8, !tbaa !208, !alias.scope !368, !noalias !363
  %wide.load86 = load <4 x ptr>, ptr %i.bk, align 8, !tbaa !208, !alias.scope !368, !noalias !363
  %wide.load87 = load <4 x ptr>, ptr %i.bl, align 8, !tbaa !208, !alias.scope !368, !noalias !363
  %i.bm = getelementptr i8, ptr %next.gep82, i64 32
  %i.bn = getelementptr i8, ptr %next.gep82, i64 64
  %i.bo = getelementptr i8, ptr %next.gep82, i64 96
  store <4 x ptr> %wide.load84, ptr %next.gep82, align 8, !tbaa !208, !alias.scope !371, !noalias !368
  store <4 x ptr> %wide.load85, ptr %i.bm, align 8, !tbaa !208, !alias.scope !371, !noalias !368
  store <4 x ptr> %wide.load86, ptr %i.bn, align 8, !tbaa !208, !alias.scope !371, !noalias !368
  store <4 x ptr> %wide.load87, ptr %i.bo, align 8, !tbaa !208, !alias.scope !371, !noalias !368
  store <4 x ptr> splat (ptr null), ptr %next.gep83, align 8, !tbaa !208, !alias.scope !368, !noalias !363
  store <4 x ptr> splat (ptr null), ptr %i.bj, align 8, !tbaa !208, !alias.scope !368, !noalias !363
  store <4 x ptr> splat (ptr null), ptr %i.bk, align 8, !tbaa !208, !alias.scope !368, !noalias !363
  store <4 x ptr> splat (ptr null), ptr %i.bl, align 8, !tbaa !208, !alias.scope !368, !noalias !363
  %index.next88 = add nuw i64 %index81, 16        ; 2 uses
  %i.bp = icmp eq i64 %index.next88, %n.vec79
  br i1 %i.bp, label %middle.block89, label %vector.body80, !llvm.loop !373

middle.block89:                                   ; preds = %vector.body80
  %cmp.n90 = icmp eq i64 %i.az, %n.vec79
  br i1 %cmp.n90, label %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %vec.epilog.iter.check95

vec.epilog.iter.check95:                          ; preds = %middle.block89
  %min.epilog.iters.check96 = icmp eq i64 %n.mod.vf78, 0
  br i1 %min.epilog.iters.check96, label %.lr.ph.i.i.i29.preheader, label %vec.epilog.ph97, !prof !144

vec.epilog.ph97:                                  ; preds = %vector.main.loop.iter.check75, %vec.epilog.iter.check95
  %vec.epilog.resume.val91 = phi i64 [ %n.vec79, %vec.epilog.iter.check95 ], [ 0, %vector.main.loop.iter.check75 ]
  %n.vec99 = and i64 %i.az, 4611686018427387900   ; 3 uses
  %i.bq = shl i64 %n.vec99, 3                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.av, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq
  br label %vec.epilog.vector.body100

vec.epilog.vector.body100:                        ; preds = %vec.epilog.vector.body100, %vec.epilog.ph97
  %index101 = phi i64 [ %vec.epilog.resume.val91, %vec.epilog.ph97 ], [ %index.next105, %vec.epilog.vector.body100 ] ; 2 uses
  %i.bt = shl i64 %index101, 3                    ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.av, i64 %i.bt
  %next.gep103 = getelementptr i8, ptr %1, i64 %i.bt ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %wide.load104 = load <4 x ptr>, ptr %next.gep103, align 8, !tbaa !208, !alias.scope !368, !noalias !363
  store <4 x ptr> %wide.load104, ptr %next.gep102, align 8, !tbaa !208, !alias.scope !371, !noalias !368
  store <4 x ptr> splat (ptr null), ptr %next.gep103, align 8, !tbaa !208, !alias.scope !368, !noalias !363
  %index.next105 = add nuw i64 %index101, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.bu, label %vec.epilog.middle.block106, label %vec.epilog.vector.body100, !llvm.loop !374

vec.epilog.middle.block106:                       ; preds = %vec.epilog.vector.body100
  %cmp.n107 = icmp eq i64 %i.az, %n.vec99
  br i1 %cmp.n107, label %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29.preheader

.lr.ph.i.i.i29.preheader:                         ; preds = %vector.memcheck68, %iter.check93, %vec.epilog.iter.check95, %vec.epilog.middle.block106
  %.012.i.i.i30.ph = phi ptr [ %i.av, %iter.check93 ], [ %i.av, %vector.memcheck68 ], [ %i.bg, %vec.epilog.iter.check95 ], [ %i.br, %vec.epilog.middle.block106 ]
  %.0911.i.i.i31.ph = phi ptr [ %1, %iter.check93 ], [ %1, %vector.memcheck68 ], [ %i.bh, %vec.epilog.iter.check95 ], [ %i.bs, %vec.epilog.middle.block106 ]
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.lr.ph.i.i.i29.preheader, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bx, %.lr.ph.i.i.i29 ], [ %.012.i.i.i30.ph, %.lr.ph.i.i.i29.preheader ] ; 2 uses
  %.0911.i.i.i31 = phi ptr [ %i.bw, %.lr.ph.i.i.i29 ], [ %.0911.i.i.i31.ph, %.lr.ph.i.i.i29.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.bv = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !208, !alias.scope !366, !noalias !363
  store ptr %i.bv, ptr %.012.i.i.i30, align 8, !tbaa !208, !alias.scope !363, !noalias !366
  store ptr null, ptr %.0911.i.i.i31, align 8, !tbaa !208, !alias.scope !366, !noalias !363
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bw, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !375

_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i29, %middle.block89, %vec.epilog.middle.block106, %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.av, %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.br, %vec.epilog.middle.block106 ], [ %i.bg, %middle.block89 ], [ %i.bx, %.lr.ph.i.i.i29 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN8facebook5velox5cache8CachePinESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !282
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cb) #28
  br label %_ZNSt12_Vector_baseIN8facebook5velox5cache8CachePinESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN8facebook5velox5cache8CachePinESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !283
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !280
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !282
  ret void

bb.g:                                             ; preds = %bb.h
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.d, %_ZNK8facebook5velox5cache8CachePin12addReferenceEv.exit.i.i.i, %bb.c
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  %i.cg = tail call ptr @__cxa_begin_catch(ptr %i.cf) #27 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #28
  invoke void @__cxa_rethrow() #25
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.cd

bb.j:                                             ; preds = %bb.g
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #29
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable
}

declare void @_ZN8facebook5velox5cache19AsyncDataCacheEntry12addReferenceEv(ptr noundef nonnull align 8 dereferenceable(169)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_IZN8facebook5velox5cache8SsdCache5writeESt6vectorINS5_8CachePinESaIS8_EEE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.155", align 16 ; 6 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 16, !tbaa !376   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !379
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val17.i = load ptr, ptr %i.i, align 16, !tbaa !289
  invoke void @_ZN8facebook5velox5cache7SsdFile5writeERSt6vectorINS1_8CachePinESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(548) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.val17.i)
          to label %bb.g unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.k = extractvalue { ptr, i32 } %i.j, 1
  %i.l = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #27
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { ptr, i32 } %i.j, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.1, i32 noundef 136, i32 noundef 1)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.e unwind label %bb.o       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.6, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.48, i64 noundef 34)
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE:bb.a
bb.as:                                            ; preds = %bb.ar
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.56) #25
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ds = lshr i32 510, %4
  %i.dt = trunc i32 %i.ds to i1
  br i1 %i.dt, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.56) #25
  unreachable

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71: ; preds = %bb.at
  %i.du = load i32, ptr %2, align 8, !tbaa !405
  %i.dv = or i32 %i.du, 7
  br label %.loopexit155.sink.split

bb.av:                                            ; preds = %bb.d
  %i.dw = lshr i32 12416, %4
  %i.dx = trunc i32 %i.dw to i1
  br i1 %i.dx, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.56) #25
  unreachable

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72: ; preds = %bb.av
  %i.dy = load i32, ptr %2, align 8, !tbaa !405
  %i.dz = and i32 %i.dy, -8
  %i.ea = or disjoint i32 %i.dz, 2
  br label %.loopexit155.sink.split

bb.ax:                                            ; preds = %bb.d
  %i.eb = lshr i32 20480, %4
  %i.ec = trunc i32 %i.eb to i1
  br i1 %i.ec, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.56) #25
  unreachable

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73: ; preds = %bb.ax
  %i.ed = load i32, ptr %2, align 8, !tbaa !405
  %i.ee = and i32 %i.ed, -8
  %i.ef = or disjoint i32 %i.ee, 3
  br label %.loopexit155.sink.split

bb.az:                                            ; preds = %bb.d
  %i.eg = lshr i32 12544, %4
  %i.eh = trunc i32 %i.eg to i1
  br i1 %i.eh, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.56) #25
  unreachable

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74: ; preds = %bb.az
  %i.ei = load i32, ptr %2, align 8, !tbaa !405
  %i.ej = and i32 %i.ei, -8
  %i.ek = or disjoint i32 %i.ej, 1
  br label %.loopexit155.sink.split

bb.bb:                                            ; preds = %bb.d
  %i.el = load i8, ptr %.0145, align 1, !tbaa !16 ; 3 uses
  %i.em = icmp eq i8 %i.el, 125
  br i1 %i.em, label %.loopexit155, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.en = lshr i8 %i.el, 2
  %i.eo = and i8 %i.en, 62
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = lshr i64 4203265827220226048, %i.ep
  %i.er = and i64 %i.eq, 3                        ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0145, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 2 uses
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.a, %i.eu
  %i.ew = icmp slt i64 %i.ev, 1
  br i1 %i.ew, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.56) #25
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ex = icmp eq i8 %i.el, 123
  br i1 %i.ex, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.57) #25
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ey = load i8, ptr %i.et, align 1, !tbaa !16
  switch i8 %i.ey, label %_ZN3fmt3v116detail11parse_alignEc.exit76.thread [
    i8 60, label %_ZN3fmt3v116detail11parse_alignEc.exit76
    i8 62, label %bb.bh
    i8 94, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v116detail11parse_alignEc.exit76

bb.bi:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v116detail11parse_alignEc.exit76

_ZN3fmt3v116detail11parse_alignEc.exit76:         ; preds = %bb.bg, %bb.bh, %bb.bi
  %.0.i75 = phi i32 [ 8, %bb.bg ], [ 24, %bb.bi ], [ 16, %bb.bh ]
  %i.ez = icmp eq i32 %.sroa.0113.0, 0
  br i1 %i.ez, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78, label %_ZN3fmt3v116detail11parse_alignEc.exit76.thread

_ZN3fmt3v116detail11parse_alignEc.exit76.thread:  ; preds = %bb.bg, %_ZN3fmt3v116detail11parse_alignEc.exit76
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.56) #25
  unreachable

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78: ; preds = %_ZN3fmt3v116detail11parse_alignEc.exit76
  %i.fa = load i32, ptr %2, align 8, !tbaa !405
  %i.fb = and i32 %i.fa, -229377
  %i.fc = trunc nuw nsw i64 %i.er to i32
  %i.fd = shl nuw nsw i32 %i.fc, 15
  %i.fe = add nuw nsw i32 %i.fd, 32768
  %i.ff = or disjoint i32 %i.fb, %i.fe            ; 2 uses
  store i32 %i.ff, ptr %2, align 8, !tbaa !405
  %cond = icmp eq i64 %i.er, 0
  br i1 %cond, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fg = load i8, ptr %.0145, align 1, !tbaa !16
  store i8 %i.fg, ptr %i.q, align 4, !tbaa !16
  store i8 0, ptr %i.t, align 1, !tbaa !16
  store i8 0, ptr %i.u, align 2, !tbaa !16
  br label %_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

.lr.ph.i:                                         ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fh = load i8, ptr %.0145, align 1, !tbaa !16
  store i8 %i.fh, ptr %i.q, align 4, !tbaa !16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !16
  store i8 %i.fj, ptr %i.v, align 1, !tbaa !16
  %exitcond.not.i.1 = icmp eq i64 %i.er, 1
  br i1 %exitcond.not.i.1, label %_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0145, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !16
  store i8 %i.fl, ptr %i.w, align 2, !tbaa !16
  %exitcond.not.i.2 = icmp eq i64 %i.er, 2
  br i1 %exitcond.not.i.2, label %_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.fm = getelementptr inbounds nuw i8, ptr %.0145, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !16
  store i8 %i.fn, ptr %i.x, align 1, !tbaa !16
  br label %_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.2, %.lr.ph.i.3, %bb.bj
  %i.fo = and i32 %i.ff, -57
  %i.fp = or disjoint i32 %i.fo, %.0.i75
  store i32 %i.fp, ptr %2, align 8, !tbaa !405
  %i.fq = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63, %_ZN3fmt3v116detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59, %bb.t, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53, %_ZN3fmt3v116detail11parse_alignEc.exit52
  %.1146 = phi ptr [ %i.fq, %_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.ac, %_ZN3fmt3v116detail11parse_alignEc.exit52 ], [ %i.aj, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ %i.an, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ %i.au, %bb.t ], [ %i.ax, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ %i.bh, %_ZN3fmt3v116detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ %i.bq, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ] ; 4 uses
  %.sroa.0113.1 = phi i32 [ 1, %_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ 1, %_ZN3fmt3v116detail11parse_alignEc.exit52 ], [ 2, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ 3, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ 4, %bb.t ], [ 5, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ 6, %_ZN3fmt3v116detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ 7, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ]
  %i.fr = icmp eq ptr %.1146, %1
  br i1 %i.fr, label %.loopexit155, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = load i8, ptr %.1146, align 1, !tbaa !16
  br label %bb.d, !llvm.loop !412

.loopexit155.sink.split:                          ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit
  %.sink = phi i32 [ %i.bv, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit ], [ %i.cc, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64 ], [ %i.ch, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65 ], [ %i.co, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66 ], [ %i.cv, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67 ], [ %i.dc, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68 ], [ %i.dj, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69 ], [ %i.dq, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70 ], [ %i.dv, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71 ], [ %i.ea, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72 ], [ %i.ef, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73 ], [ %i.ek, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74 ]
  store i32 %.sink, ptr %2, align 8, !tbaa !405
  %i.ft = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  br label %.loopexit155

.loopexit155:                                     ; preds = %bb.bb, %bb.bk, %bb.d, %.loopexit155.sink.split, %bb.c
  %.1 = phi ptr [ %0, %bb.c ], [ %i.ft, %.loopexit155.sink.split ], [ %.0145, %bb.d ], [ %.0145, %bb.bb ], [ %.1146, %bb.bk ]
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1112report_errorEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZN3fmt3v116detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !413
  %i.b = load i8, ptr %0, align 1, !tbaa !16      ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %6 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %scevgep.i = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %6 ; 2 uses
  %i.e = sub i64 %6, %i.d
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  %i.f = zext nneg i8 %i.b to i32
  %i.g = add nsw i32 %i.f, -48                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.h, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = mul i32 %i.o, 10
  %i.j = zext nneg i8 %i.p to i32
  %i.k = add nsw i32 %i.j, -48
  %i.l = add i32 %i.k, %i.i                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.m, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !415

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 4 uses
  %i.o = phi i32 [ %i.l, %bb.c ], [ %i.g, %bb.b ] ; 4 uses
  %.027.i37 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.b ]
  %.028.i36 = phi ptr [ %i.n, %bb.c ], [ %0, %bb.b ]
  %i.p = load i8, ptr %i.n, align 1, !tbaa !16    ; 2 uses
  %i.q = add i8 %i.p, -48
  %or.cond.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !415

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !415

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i37, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.o, %bb.c ]
  %.lcssa = phi i32 [ %i.o, %..critedge.i_crit_edge ], [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %.028.lcssa.i = phi ptr [ %.028.i36, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.n, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.r = ptrtoint ptr %.lcssa.i to i64
  %i.s = sub i64 %i.r, %i.d                       ; 2 uses
  %i.t = icmp slt i64 %i.s, 10
  br i1 %i.t, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.u = icmp eq i64 %i.s, 10
  br i1 %i.u, label %bb.e, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = zext i32 %.027.i.lcssa to i64
  %i.w = mul nuw nsw i64 %i.v, 10
  %i.x = load i8, ptr %.028.lcssa.i, align 1, !tbaa !16
  %i.y = sext i8 %i.x to i64
  %i.z = add nsw i64 %i.y, 4294967248
  %i.aa = and i64 %i.z, 4294967294
  %i.ab = add nuw nsw i64 %i.aa, %i.w
  %i.ac = icmp samesign ugt i64 %i.ab, 2147483647
  %i.ad = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.59) #25
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !3
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ae = icmp eq i8 %i.b, 123
  br i1 %i.ae, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.af, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  switch i8 %i.ag, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !416 ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %_ZN3fmt3v1113parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.61) #25
  unreachable

_ZN3fmt3v1113parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ak = add nuw nsw i32 %i.ai, 1
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !416
  store i32 %i.ai, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !413
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %4, ptr %5, align 8, !tbaa !418
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.al, align 8, !tbaa !420
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.am, align 8, !tbaa !386
  %i.an = call noundef ptr @_ZN3fmt3v116detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.af, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1113parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.af, %bb.h ], [ %i.an, %bb.l ], [ %i.af, %_ZN3fmt3v1113parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i8, ptr %.0, align 1, !tbaa !16
  %i.ap = icmp eq i8 %i.ao, 125
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !413
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.60) #25
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.aq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt3v116detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %3 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !16      ; 5 uses
  %i.c = add i8 %i.b, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.b, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %3 ; 2 uses
  %i.d = sub i64 %3, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.d ; 2 uses
  %i.e = zext nneg i8 %i.b to i32
  %i.f = add nsw i32 %i.e, -48                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.g, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.h = mul i32 %i.n, 10
  %i.i = zext nneg i8 %i.o to i32
  %i.j = add nsw i32 %i.i, -48
  %i.k = add i32 %i.j, %i.h                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.l, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !415

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.n = phi i32 [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %.027.i49 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ]
  %.028.i48 = phi ptr [ %i.m, %bb.d ], [ %0, %bb.c ]
  %i.o = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
  %i.p = add i8 %i.o, -48
  %or.cond.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !415

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !415

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i49, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.n, %bb.d ]
  %.lcssa = phi i32 [ %i.n, %..critedge.i_crit_edge ], [ %i.f, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %.028.lcssa.i = phi ptr [ %.028.i48, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.m, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.q = ptrtoint ptr %.lcssa.i to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = icmp slt i64 %i.r, 10
  br i1 %i.s, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.t = icmp eq i64 %i.r, 10
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %.027.i.lcssa to i64
  %i.v = mul nuw nsw i64 %i.u, 10
  %i.w = load i8, ptr %.028.lcssa.i, align 1, !tbaa !16
  %i.x = sext i8 %i.w to i64
  %i.y = add nsw i64 %i.x, 4294967248
  %i.z = and i64 %i.y, 4294967294
  %i.aa = add nuw nsw i64 %i.z, %i.v
  %i.ab = icmp samesign ult i64 %i.aa, 2147483648
  br i1 %i.ab, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ac, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ad = icmp eq ptr %.037, %1
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ae = load i8, ptr %.037, align 1, !tbaa !16
  switch i8 %i.ae, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.60) #25
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !422, !nonnull !55, !align !424
  store i32 %.021, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !425, !nonnull !55, !align !426
  store i32 1, ptr %i.ai, align 4, !tbaa !413
  %i.aj = load ptr, ptr %2, align 8, !tbaa !427, !nonnull !55, !align !424
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !416
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.62) #25
  unreachable

_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ak, align 8, !tbaa !416
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.an = and i8 %i.b, -33
  %i.ao = add i8 %i.an, -65
  %or.cond10.i = icmp ult i8 %i.ao, 26
  %i.ap = icmp eq i8 %i.b, 95
  %i.aq = or i1 %i.ap, %or.cond10.i
  br i1 %i.aq, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.ar = sub i64 %3, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.ar  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.as, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.60) #25
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.at, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !428

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.au = phi ptr [ %i.at, %.critedge4 ], [ %i.as, %.critedge4.preheader ] ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16  ; 3 uses
  %i.aw = and i8 %i.av, -33
  %i.ax = add i8 %i.aw, -65
  %or.cond10.i32 = icmp ult i8 %i.ax, 26
  %i.ay = icmp eq i8 %i.av, 95
  %i.az = or i1 %i.ay, %or.cond10.i32
  %i.ba = add i8 %i.av, -48
  %or.cond31 = icmp ult i8 %i.ba, 10
  %or.cond38 = or i1 %or.cond31, %i.az
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !428

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !428

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.au, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bb = ptrtoint ptr %.lcssa40 to i64
  %i.bc = sub i64 %i.bb, %i.a
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !422, !nonnull !55, !align !424 ; 2 uses
  store ptr %0, ptr %i.be, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bc, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !425, !nonnull !55, !align !426
  store i32 2, ptr %i.bg, align 4, !tbaa !413
  %i.bh = load ptr, ptr %2, align 8, !tbaa !427, !nonnull !55, !align !424
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 -1, ptr %i.bi, align 8, !tbaa !416
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v116detail16native_formatterIicLNS1_4typeE1EE6formatINS0_7contextEEEDTcldtfp0_3outEERKiRT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.fmt::v11::loc_value", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v11::loc_value", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::format_specs", align 4 ; 9 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !405    ; 2 uses
  %i.b = and i32 %i.a, 960
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !429 ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !3      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i15 = load ptr, ptr %i.d, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = and i32 %i.a, 16384
  %.not25 = icmp eq i32 %i.e, 0
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %3, align 16, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.f, align 16, !tbaa !431
  %i.g = tail call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %3, ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %.sroa.0.0.copyload.i15)
  br i1 %i.g, label %_ZN3fmt3v116detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit14, label %bb.d
end_hunk_1
