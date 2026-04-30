inline.NumInlined: 881
inline.NumDeleted: 482
begin_hunk_0

$_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEEC2IRjS4_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS8_S9_EEEEOT_OT0_ = comdat any

$_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZTVN2v88internal4wasm7DecoderE = comdat any
end_hunk_0
begin_hunk_1_@_ZN2v84base5Mutex4LockEv
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 11 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @_ZNSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEEC2IRjS4_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS8_S9_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.d, 0
  br i1 %.not.not, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  %3 = load i32, ptr %i.b, align 4                ; 3 uses
  %i.e = zext i32 %3 to i64                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = urem i64 %i.e, %i.g                      ; 5 uses
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %4 = load i32, ptr %i.b, align 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %4, %i.o
  br i1 %i.p, label %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %bb.c, !llvm.loop !74

.critedge:                                        ; preds = %bb.c
  %5 = load i32, ptr %i.b, align 4
  %i.q = zext i32 %5 to i64                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = urem i64 %i.q, %i.s
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %i.u = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %3, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %3, %i.ab
  br i1 %i.y, label %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i, !llvm.loop !56

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a

_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit: ; preds = %bb.f, %bb.d, %bb.e
  %.sroa.032.0.ph = phi ptr [ %.sroa.025.0, %bb.d ], [ %i.u, %bb.e ], [ %i.z, %bb.f ]
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %8 = load ptr, ptr %7, align 8                  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v84base11OwnedVectorIjED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  tail call void @_ZdaPv(ptr noundef nonnull %8) #21
  br label %_ZN2v84base11OwnedVectorIjED2Ev.exit.i.i.i.i.i

_ZN2v84base11OwnedVectorIjED2Ev.exit.i.i.i.i.i:   ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  %9 = load ptr, ptr %6, align 8                  ; 4 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %9, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN2v84base11OwnedVectorIjED2Ev.exit.i.i.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %9, i64 -8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = shl i64 %i.bh, 4        ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i:             ; preds = %bb.o
  %i.bj = getelementptr inbounds i8, ptr %9, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.preheader.i.i.i.i.i.i.i.i
  %i.bs = icmp eq ptr %i.bl, %9
  br i1 %i.bs, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i: ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i, %bb.o
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEEC2IRjS4_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS8_S9_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr %0, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 16, i1 false)
  %6 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %7 = load ptr, ptr %5, align 8                  ; 4 uses
  store ptr %6, ptr %5, align 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEEC2IS4_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS8_EES7_IT_S9_ISC_EEEEEONS1_ISC_EE.exit.i, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %7, i64 -8  ; 2 uses
  %10 = load i64, ptr %9, align 8                 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = shl i64 %10, 4          ; 2 uses
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i:             ; preds = %8
  %12 = getelementptr inbounds i8, ptr %7, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i
  %13 = phi ptr [ %14, %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i ], [ %12, %.preheader.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %14 = getelementptr inbounds i8, ptr %13, i64 -16 ; 3 uses
  %15 = load i32, ptr %14, align 8
  %16 = icmp slt i32 %15, -1
  br i1 %16, label %17, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i

17:                                               ; preds = %.preheader.i.i.i.i.i.i.i.i
  %18 = getelementptr inbounds i8, ptr %13, i64 -8
  %19 = load i64, ptr %18, align 8                ; 2 uses
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i, label %21

21:                                               ; preds = %17
  %22 = inttoptr i64 %19 to ptr
  tail call void @_ZdaPv(ptr noundef nonnull %22) #21
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %21, %17, %.preheader.i.i.i.i.i.i.i.i
  %23 = icmp eq ptr %14, %7
  br i1 %23, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i: ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i, %8
  %24 = or disjoint i64 %.idx.i.i.i.i.i.i.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %9, i64 noundef %24) #21
  br label %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEEC2IS4_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS8_EES7_IT_S9_ISC_EEEEEONS1_ISC_EE.exit.i

_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEEC2IS4_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS8_EES7_IT_S9_ISC_EEEEEONS1_ISC_EE.exit.i: ; preds = %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i, %3
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %25, align 8
  store i64 0, ptr %26, align 8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  %30 = load ptr, ptr %29, align 8
  store ptr null, ptr %29, align 8
  %31 = load ptr, ptr %28, align 8                ; 2 uses
  store ptr %30, ptr %28, align 8
  %.not.i.i.i.i.i.i4.i = icmp eq ptr %31, null
  br i1 %.not.i.i.i.i.i.i4.i, label %_ZN2v88internal4wasm20FunctionTypeFeedbackC2EOS2_.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEEC2IS4_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS8_EES7_IT_S9_ISC_EEEEEONS1_ISC_EE.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %31) #21
  br label %_ZN2v88internal4wasm20FunctionTypeFeedbackC2EOS2_.exit

_ZN2v88internal4wasm20FunctionTypeFeedbackC2EOS2_.exit: ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEEC2IS4_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS8_EES7_IT_S9_ISC_EEEEEONS1_ISC_EE.exit.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %32, align 8
  store i64 0, ptr %33, align 8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %35, align 8
  ret void
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
end_hunk_6
