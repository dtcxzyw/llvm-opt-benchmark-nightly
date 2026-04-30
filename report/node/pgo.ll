inline.NumInlined: 882
inline.NumDeleted: 483
begin_hunk_0

$_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZTVN2v88internal4wasm7DecoderE = comdat any
end_hunk_0
begin_hunk_1_@_ZN2v84base5Mutex4LockEv
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 13 uses
  store ptr null, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = load i32, ptr %1, align 4                  ; 6 uses
  store i32 %4, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %7 = load ptr, ptr %2, align 8                  ; 2 uses
  store ptr null, ptr %2, align 8
  store ptr %7, ptr %5, align 8
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8
  store i64 %.pre.i.i.i.i.i.i, ptr %6, align 8
  store i64 0, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %11 = load ptr, ptr %9, align 8                 ; 3 uses
  store ptr null, ptr %9, align 8
  store ptr %11, ptr %8, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %12 = load <2 x i64>, ptr %i.b, align 8
  store i64 0, ptr %i.b, align 8
  store <2 x i64> %12, ptr %10, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.d, 0
  br i1 %.not.not, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  %i.e = zext i32 %4 to i64                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = urem i64 %i.e, %i.g                      ; 5 uses
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %4, %i.o
  br i1 %i.p, label %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %bb.c, !llvm.loop !74

.critedge:                                        ; preds = %bb.c
  %i.q = zext i32 %4 to i64                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = urem i64 %i.q, %i.s
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %i.u = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %4, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %4, %i.ab
  br i1 %i.y, label %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i, !llvm.loop !56

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a

_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit: ; preds = %bb.f, %bb.d, %bb.e
  %.sroa.032.0.ph = phi ptr [ %.sroa.025.0, %bb.d ], [ %i.u, %bb.e ], [ %i.z, %bb.f ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %11, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v84base11OwnedVectorIjED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  tail call void @_ZdaPv(ptr noundef nonnull %11) #21
  %.pre = load ptr, ptr %5, align 8
  br label %_ZN2v84base11OwnedVectorIjED2Ev.exit.i.i.i.i.i

_ZN2v84base11OwnedVectorIjED2Ev.exit.i.i.i.i.i:   ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  %13 = phi ptr [ %.pre, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i ], [ %7, %_ZNKSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit ] ; 4 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %13, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN2v84base11OwnedVectorIjED2Ev.exit.i.i.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %13, i64 -8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = shl i64 %i.bh, 4        ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i:             ; preds = %bb.o
  %i.bj = getelementptr inbounds i8, ptr %13, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.preheader.i.i.i.i.i.i.i.i
  %i.bs = icmp eq ptr %i.bl, %13
  br i1 %i.bs, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i: ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i.i.i, %bb.o
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  ret { ptr, i8 } %.fca.1.insert
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
end_hunk_6
