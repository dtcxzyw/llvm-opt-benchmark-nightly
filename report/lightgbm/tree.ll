Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag:bb.a

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPdS1_EEEES5_mT_S7_.exit, %bb.g
  store ptr %i.l, ptr %0, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !196
  store ptr %i.v, ptr %i.d, align 8, !tbaa !69
  br label %_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !196  ; 5 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.z, %i.c
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i64 %i.c, 8
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !206

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !196
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.c, 8
  br i1 %i.ab, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = load double, ptr %1, align 8, !tbaa !118
  store double %i.ac, ptr %i.f, align 8, !tbaa !118
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.ad = phi ptr [ %.pre, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.not.i18 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i18, label %_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !196
  br label %_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.z ; 3 uses
  %i.af = ptrtoint ptr %.sink.i to i64
  %i.ag = icmp sgt i64 %i.z, 8
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !206

bb.m:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.z, i1 false)
  %.pre24 = load ptr, ptr %i.w, align 8, !tbaa !196
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit19

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ah = icmp eq i64 %i.z, 8
  br i1 %i.ah, label %bb.o, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit19

bb.o:                                             ; preds = %bb.n
  %i.ai = load double, ptr %1, align 8, !tbaa !118
  store double %i.ai, ptr %i.f, align 8, !tbaa !118
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit19

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit19: ; preds = %bb.m, %bb.n, %bb.o
  %i.aj = phi ptr [ %.pre24, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %bb.o ] ; 3 uses
  %i.ak = sub i64 %i.a, %i.af                     ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.p, label %bb.q, !prof !206

bb.p:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit19
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aj, ptr align 8 %.sink.i, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit

bb.q:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit19
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit

bb.r:                                             ; preds = %bb.q
  %i.an = load double, ptr %.sink.i, align 8, !tbaa !118
  store double %i.an, ptr %i.aj, align 8, !tbaa !118
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.p, %bb.q, %bb.r
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !196
  br label %_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd.exit

_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd.exit:    ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_.exit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !418 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !262  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !202
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !262  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !202
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #41
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #41
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !36

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !415
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !416
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !415    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !416
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #35 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr %0, i64 %i.a ; 4 uses
  store i32 %4, ptr %i.b, align 8, !tbaa !437
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %2, ptr %i.c, align 8, !tbaa !438
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %3, ptr %i.d, align 8, !tbaa !439
  %i.e = icmp eq i32 %1, 0
  %i.f = uitofp i1 %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %i.f, ptr %i.g, align 8, !tbaa !440
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = add nuw nsw i32 %1, 1
  %i.j = uitofp nneg i32 %i.i to double
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.k
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 24
  %.pre = load double, ptr %.phi.trans.insert31, align 8, !tbaa !440
  %i.l = insertelement <2 x double> poison, double %3, i64 0
  %i.m = insertelement <2 x double> %i.l, double %2, i64 1
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.p = phi double [ %.pre, %.lr.ph ], [ %i.ai, %bb.b ]
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !440
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = trunc i64 %indvars.iv.next to i32
  %i.x = sub i32 %1, %i.w
  %5 = uitofp nneg i32 %i.t to double
  %i.y = insertelement <2 x double> poison, double %i.s, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.m, %i.z
  %i.ab = sitofp i32 %i.x to double
  %i.ac = insertelement <2 x double> poison, double %5, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1
  %i.ae = fmul <2 x double> %i.aa, %i.ad
  %i.af = fdiv <2 x double> %i.ae, %i.o           ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = fadd double %i.p, %i.ag
  store double %i.ah, ptr %i.v, align 8, !tbaa !440
  %i.ai = extractelement <2 x double> %i.af, i64 1 ; 2 uses
  store double %i.ai, ptr %i.r, align 8, !tbaa !440
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #35 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 6 uses
  %i.b = getelementptr inbounds [32 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !439 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !438 ; 3 uses
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %.04851 = add nsw i32 %1, -1                    ; 3 uses
  %i.h = fcmp une double %i.d, 0.000000e+00
  %i.i = add nuw nsw i32 %1, 1
  %i.j = uitofp nneg i32 %i.i to double           ; 4 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.k = zext i32 %.04851 to i64                  ; 3 uses
  %i.l = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp eq i32 %1, 1
  br i1 %min.iters.check, label %.lr.ph.split.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.l, 2147483646               ; 3 uses
  %i.m = sub nsw i64 %i.k, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <2 x i32> poison, i32 %1, i64 0
  %broadcast.splat70 = shufflevector <2 x i32> %broadcast.splatinsert69, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %i.f, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <2 x i32> poison, i32 %.04851, i64 0
  %broadcast.splat74 = shufflevector <2 x i32> %broadcast.splatinsert73, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.n = add <2 x i32> %broadcast.splat74, <i32 0, i32 -1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %i.n, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.o = sub i64 %i.k, %index                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr [32 x i8], ptr %0, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 -8       ; 2 uses
  %i.t = load double, ptr %i.r, align 8, !tbaa !440
  %i.u = load double, ptr %i.s, align 8, !tbaa !440
  %i.v = insertelement <2 x double> poison, double %i.t, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.u, i64 1
  %i.x = fmul <2 x double> %i.w, %broadcast.splat
  %i.y = sub <2 x i32> %broadcast.splat70, %vec.ind
  %i.z = sitofp <2 x i32> %i.y to <2 x double>
  %i.aa = fmul <2 x double> %broadcast.splat72, %i.z
  %i.ab = fdiv <2 x double> %i.x, %i.aa           ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  store double %i.ac, ptr %i.r, align 8, !tbaa !440
  %i.ad = extractelement <2 x double> %i.ab, i64 1
  store double %i.ad, ptr %i.s, align 8, !tbaa !440
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 -2)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1368

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.preheader75

.lr.ph.split.preheader75:                         ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.k, %.lr.ph.split.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.af = zext nneg i32 %1 to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !440
  %i.aj = zext nneg i32 %.04851 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv59 = phi i64 [ %i.aj, %.lr.ph.split.us.preheader ], [ %indvars.iv.next60, %.lr.ph.split.us ] ; 5 uses
  %.048.in53.us = phi i32 [ %1, %.lr.ph.split.us.preheader ], [ %i.ay, %.lr.ph.split.us ]
  %.04952.us = phi double [ %i.ai, %.lr.ph.split.us.preheader ], [ %i.ax, %.lr.ph.split.us ]
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv59
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !440
  %i.an = fmul double %.04952.us, %i.j
  %i.ao = uitofp nneg i32 %.048.in53.us to double
  %i.ap = fmul double %i.d, %i.ao
  %i.aq = fdiv double %i.an, %i.ap                ; 2 uses
  store double %i.aq, ptr %i.al, align 8, !tbaa !440
  %i.ar = fmul double %i.f, %i.aq
  %i.as = trunc i64 %indvars.iv59 to i32
  %i.at = sub i32 %1, %i.as
  %i.au = sitofp i32 %i.at to double
  %i.av = fmul double %i.ar, %i.au
  %i.aw = fdiv double %i.av, %i.j
  %i.ax = fsub double %i.am, %i.aw
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1
  %.not67 = icmp eq i64 %indvars.iv59, 0
  %i.ay = trunc nuw nsw i64 %indvars.iv59 to i32
  br i1 %.not67, label %.preheader, label %.lr.ph.split.us, !llvm.loop !40

.preheader:                                       ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %bb.a
  %i.az = icmp slt i32 %2, %1
  br i1 %i.az, label %.lr.ph56.preheader, label %._crit_edge

.lr.ph56.preheader:                               ; preds = %.preheader
  %wide.trip.count = sext i32 %1 to i64           ; 3 uses
  %i.ba = sub nsw i64 %wide.trip.count, %i.a
  %xtraiter = and i64 %i.ba, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader
  %indvars.iv.next63.prol = add nsw i64 %i.a, 1   ; 2 uses
  %i.bb = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63.prol ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !437
  %i.bd = getelementptr inbounds [32 x i8], ptr %0, i64 %i.a ; 2 uses
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !437
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !118
  store <2 x double> %i.bg, ptr %i.bf, align 8, !tbaa !118
  br label %.lr.ph56.prol.loopexit

.lr.ph56.prol.loopexit:                           ; preds = %.lr.ph56.prol, %.lr.ph56.preheader
  %indvars.iv62.unr = phi i64 [ %i.a, %.lr.ph56.preheader ], [ %indvars.iv.next63.prol, %.lr.ph56.prol ]
  %i.bh = add nsw i64 %wide.trip.count, -1
  %i.bi = icmp eq i64 %i.bh, %i.a
  br i1 %i.bi, label %._crit_edge, label %.lr.ph56

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader75, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader75 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !440
  %i.bm = fmul double %i.bl, %i.j
  %i.bn = trunc i64 %indvars.iv to i32
  %i.bo = sub i32 %1, %i.bn
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = fmul double %i.f, %i.bp
  %i.br = fdiv double %i.bm, %i.bq
  store double %i.br, ptr %i.bk, align 8, !tbaa !440
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.preheader, label %.lr.ph.split, !llvm.loop !1369

._crit_edge:                                      ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56, %.preheader
  ret void

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.1, %.lr.ph56 ], [ %indvars.iv62.unr, %.lr.ph56.prol.loopexit ] ; 3 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.bs = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !437
  %i.bu = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv62 ; 2 uses
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !437
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load <2 x double>, ptr %i.bv, align 8, !tbaa !118
  store <2 x double> %i.bx, ptr %i.bw, align 8, !tbaa !118
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, 2 ; 3 uses
  %i.by = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63.1 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !437
  %i.ca = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63 ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !437
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load <2 x double>, ptr %i.cb, align 8, !tbaa !118
  store <2 x double> %i.cd, ptr %i.cc, align 8, !tbaa !118
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next63.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph56, !llvm.loop !41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #36 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !439 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !438 ; 4 uses
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.034 = add nsw i32 %1, -1                      ; 3 uses
  %i.h = fcmp une double %i.d, 0.000000e+00
  %i.i = add nuw nsw i32 %1, 1
  %i.j = uitofp nneg i32 %i.i to double           ; 5 uses
  %i.k = fneg double %i.f
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.l = zext i32 %.034 to i64                    ; 3 uses
  %i.m = and i32 %1, 1
  %lcmp.mod.not = icmp eq i32 %i.m, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !440
  %i.q = fdiv double %i.p, %i.f
  %i.r = fdiv double 1.000000e+00, %i.j
  %i.s = fdiv double %i.q, %i.r
  %.1.prol = fadd double %i.s, 0.000000e+00       ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.l, -1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.1.lcssa.unr = phi double [ poison, %.lr.ph.split.preheader ], [ %.1.prol, %.lr.ph.split.prol ]
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph.split.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.prol ]
  %.03036.unr = phi double [ 0.000000e+00, %.lr.ph.split.preheader ], [ %.1.prol, %.lr.ph.split.prol ]
  %i.t = icmp eq i32 %.034, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.u = zext nneg i32 %1 to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !440
  %i.y = zext nneg i32 %.034 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv41 = phi i64 [ %i.y, %.lr.ph.split.us.preheader ], [ %indvars.iv.next42, %.lr.ph.split.us ] ; 5 uses
  %.0.in37.us = phi i32 [ %1, %.lr.ph.split.us.preheader ], [ %i.am, %.lr.ph.split.us ]
  %.03036.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %.1.us, %.lr.ph.split.us ]
  %.03135.us = phi double [ %i.x, %.lr.ph.split.us.preheader ], [ %i.al, %.lr.ph.split.us ]
  %i.z = fmul double %.03135.us, %i.j
  %i.aa = uitofp nneg i32 %.0.in37.us to double
  %i.ab = fmul double %i.d, %i.aa
  %i.ac = fdiv double %i.z, %i.ab                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !440
  %i.ag = trunc i64 %indvars.iv41 to i32
  %i.ah = sub i32 %1, %i.ag
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = fdiv double %i.ai, %i.j
  %i.ak = fmul double %i.ac, %i.k
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.aj, double %i.af)
  %.1.us = fadd double %.03036.us, %i.ac          ; 2 uses
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, -1
  %.not46 = icmp eq i64 %indvars.iv41, 0
  %i.am = trunc nuw nsw i64 %indvars.iv41 to i32
  br i1 %.not46, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.030.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.us, %.lr.ph.split.us ], [ %.1.lcssa.unr, %.lr.ph.split.prol.loopexit ], [ %.1.1, %.lr.ph.split ]
  ret double %.030.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split ], [ %indvars.iv.unr, %.lr.ph.split.prol.loopexit ] ; 4 uses
  %.03036 = phi double [ %.1.1, %.lr.ph.split ], [ %.03036.unr, %.lr.ph.split.prol.loopexit ]
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !440
  %i.aq = fdiv double %i.ap, %i.f
  %i.ar = trunc i64 %indvars.iv to i32
  %i.as = sub i32 %1, %i.ar
  %i.at = sitofp i32 %i.as to double
  %i.au = fdiv double %i.at, %i.j
  %i.av = fdiv double %i.aq, %i.au
  %.1 = fadd double %.03036, %i.av
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !440
  %i.az = fdiv double %i.ay, %i.f
  %i.ba = trunc i64 %indvars.iv.next to i32
  %i.bb = sub i32 %1, %i.ba
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fdiv double %i.bc, %i.j
  %i.be = fdiv double %i.az, %i.bd
  %.1.1 = fadd double %.1, %i.be                  ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !42
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK8LightGBM4Tree8TreeSHAPEPKdPdiiPNS0_11PathElementEddi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, double noundef %6, double noundef %7, i32 noundef %8) local_unnamed_addr #37 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, %bb.a
  %.tr97 = phi i32 [ %3, %bb.a ], [ %i.fr, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr98 = phi i32 [ %4, %bb.a ], [ %.pre-phi, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 29 uses
  %.tr99 = phi ptr [ %5, %bb.a ], [ %i.k, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr100 = phi double [ %6, %bb.a ], [ %i.ke, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr101 = phi double [ %7, %bb.a ], [ 0.000000e+00, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr102 = phi i32 [ %8, %bb.a ], [ %i.kd, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 2 uses
  %i.j = sext i32 %.tr98 to i64                   ; 7 uses
  %i.k = getelementptr inbounds [32 x i8], ptr %.tr99, i64 %i.j ; 27 uses
  %i.l = icmp sgt i32 %.tr98, 0                   ; 2 uses
  br i1 %i.l, label %bb.b, label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge

bb.b:                                             ; preds = %tailrecurse
  %.not94 = icmp eq i32 %.tr98, 1
  br i1 %.not94, label %bb.d, label %bb.c, !prof !208

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.j, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %.tr99, i64 %.idx, i1 false)
  br label %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.tr99, i64 32, i1 false), !tbaa.struct !441
  br label %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit: ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.j ; 4 uses
  store i32 %.tr102, ptr %i.m, align 8, !tbaa !437
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store double %.tr100, ptr %i.n, align 8, !tbaa !438
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store double %.tr101, ptr %i.o, align 8, !tbaa !439
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !440
  %i.q = add nuw nsw i32 %.tr98, 1
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = zext nneg i32 %.tr98 to i64
  %i.t = insertelement <2 x double> poison, double %.tr100, i64 0
  %i.u = insertelement <2 x double> %i.t, double %.tr101, i64 1
  %i.v = insertelement <2 x double> poison, double %i.r, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit
  %i.x = phi double [ 0.000000e+00, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit ], [ %i.aq, %bb.e ]
  %indvars.iv.i = phi i64 [ %i.s, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !440
  %i.ab = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = trunc i64 %indvars.iv.next.i to i32
  %i.af = sub i32 %.tr98, %i.ae
  %9 = uitofp nneg i32 %i.ab to double
  %i.ag = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x double> %i.u, %i.ah
  %i.aj = sitofp i32 %i.af to double
  %i.ak = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %9, i64 1
  %i.am = fmul <2 x double> %i.ai, %i.al
  %i.an = fdiv <2 x double> %i.am, %i.w           ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 1
  %i.ap = fadd double %i.x, %i.ao
  store double %i.ap, ptr %i.ad, align 8, !tbaa !440
  %i.aq = extractelement <2 x double> %i.an, i64 0 ; 2 uses
  store double %i.aq, ptr %i.z, align 8, !tbaa !440
  %i.ar = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ar, label %bb.e, label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit, !llvm.loop !39

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge: ; preds = %tailrecurse
  %i.as = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.j ; 4 uses
  store i32 %.tr102, ptr %i.as, align 8, !tbaa !437
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store double %.tr100, ptr %i.at, align 8, !tbaa !438
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double %.tr101, ptr %i.au, align 8, !tbaa !439
  %i.av = icmp eq i32 %.tr98, 0
  %i.aw = uitofp i1 %i.av to double
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store double %i.aw, ptr %i.ax, align 8, !tbaa !440
  br label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit: ; preds = %bb.e, %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge
  %i.ay = icmp slt i32 %.tr97, 0
  br i1 %i.ay, label %.preheader, label %bb.f

.preheader:                                       ; preds = %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit
  %.not79109 = icmp slt i32 %.tr98, 1
  br i1 %.not79109, label %._crit_edge111, label %.lr.ph.i80.lr.ph

.lr.ph.i80.lr.ph:                                 ; preds = %.preheader
  %.034.i = add nsw i32 %.tr98, -1                ; 2 uses
  %i.az = add nuw i32 %.tr98, 1                   ; 2 uses
  %i.ba = uitofp nneg i32 %i.az to double         ; 5 uses
  %i.bb = zext i32 %.034.i to i64                 ; 4 uses
  %i.bc = zext nneg i32 %.tr98 to i64
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bg = xor i32 %.tr97, -1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !68
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %wide.trip.count119 = zext i32 %i.az to i64
  %i.bk = and i32 %.tr98, 1
  %lcmp.mod152.not = icmp eq i32 %i.bk, 0
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.bb
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = fdiv double 1.000000e+00, %i.ba
  %indvars.iv.next.i82.prol = add nsw i64 %i.bb, -1
  %i.bo = icmp eq i32 %.034.i, 0
  br label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.lr.ph, %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit
  %indvars.iv115 = phi i64 [ 1, %.lr.ph.i80.lr.ph ], [ %indvars.iv.next116, %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv115 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load double, ptr %i.bq, align 8, !tbaa !439 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !438 ; 5 uses
  %i.bu = fcmp une double %i.br, 0.000000e+00
  %i.bv = fneg double %i.bt
  br i1 %i.bu, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i80
  br i1 %lcmp.mod152.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.bw = load double, ptr %i.bm, align 8, !tbaa !440
  %i.bx = fdiv double %i.bw, %i.bt
  %i.by = fdiv double %i.bx, %i.bn
  %.1.i.prol = fadd double %i.by, 0.000000e+00    ; 2 uses
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %.1.i.lcssa.unr = phi double [ poison, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  %indvars.iv.i81.unr = phi i64 [ %i.bb, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i82.prol, %.lr.ph.split.i.prol ]
  %.03036.i.unr = phi double [ 0.000000e+00, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  br i1 %i.bo, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i80
  %i.bz = load double, ptr %i.be, align 8, !tbaa !440
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv41.i = phi i64 [ %i.bb, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph.split.us.i ] ; 4 uses
  %.0.in37.us.i = phi i32 [ %.tr98, %.lr.ph.split.us.preheader.i ], [ %i.ch, %.lr.ph.split.us.i ]
  %.03036.us.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i ], [ %.1.us.i, %.lr.ph.split.us.i ]
  %.03135.us.i = phi double [ %i.bz, %.lr.ph.split.us.preheader.i ], [ %i.cm, %.lr.ph.split.us.i ]
  %i.ca = fmul double %.03135.us.i, %i.ba
  %i.cb = uitofp nneg i32 %.0.in37.us.i to double
  %i.cc = fmul double %i.br, %i.cb
  %i.cd = fdiv double %i.ca, %i.cc                ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv41.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !440
  %i.ch = trunc i64 %indvars.iv41.i to i32        ; 2 uses
  %i.ci = sub i32 %.tr98, %i.ch
  %i.cj = sitofp i32 %i.ci to double
  %i.ck = fdiv double %i.cj, %i.ba
  %i.cl = fmul double %i.cd, %i.bv
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.ck, double %i.cg)
  %.1.us.i = fadd double %.03036.us.i, %i.cd      ; 2 uses
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, -1
  %.not46.i = icmp eq i64 %indvars.iv41.i, 0
  br i1 %.not46.i, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.us.i, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i82.1, %.lr.ph.split.i ], [ %indvars.iv.i81.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %.03036.i = phi double [ %.1.i.1, %.lr.ph.split.i ], [ %.03036.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i81
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load double, ptr %i.co, align 8, !tbaa !440
  %i.cq = fdiv double %i.cp, %i.bt
  %i.cr = trunc i64 %indvars.iv.i81 to i32
  %i.cs = sub i32 %.tr98, %i.cr
  %i.ct = sitofp i32 %i.cs to double
  %i.cu = fdiv double %i.ct, %i.ba
  %i.cv = fdiv double %i.cq, %i.cu
  %.1.i = fadd double %.03036.i, %i.cv
  %indvars.iv.next.i82 = add nsw i64 %indvars.iv.i81, -1 ; 3 uses
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i82
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !440
  %i.cz = fdiv double %i.cy, %i.bt
  %i.da = trunc i64 %indvars.iv.next.i82 to i32
  %i.db = sub i32 %.tr98, %i.da
  %i.dc = sitofp i32 %i.db to double
  %i.dd = fdiv double %i.dc, %i.ba
  %i.de = fdiv double %i.cz, %i.dd
  %.1.i.1 = fadd double %.1.i, %i.de              ; 2 uses
  %indvars.iv.next.i82.1 = add nsw i64 %indvars.iv.i81, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i82, 0
  br i1 %.not.i.1, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i, !llvm.loop !42

_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit: ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i
  %.030.lcssa.i = phi double [ %.1.us.i, %.lr.ph.split.us.i ], [ %.1.i.lcssa.unr, %.lr.ph.split.i.prol.loopexit ], [ %.1.i.1, %.lr.ph.split.i ]
  %i.df = fsub double %i.br, %i.bt
  %i.dg = fmul double %.030.lcssa.i, %i.df
  %i.dh = load double, ptr %i.bj, align 8, !tbaa !118
  %i.di = load i32, ptr %i.bp, align 8, !tbaa !437
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dj ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !118
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dh, double %i.dl)
  store double %i.dm, ptr %i.dk, align 8, !tbaa !118
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge111, label %.lr.ph.i80, !llvm.loop !1370

bb.f:                                             ; preds = %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit
  %i.dn = zext nneg i32 %.tr97 to i64             ; 9 uses
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dn ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !88 ; 5 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !118 ; 4 uses
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dn
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !202 ; 3 uses
  %i.dx = and i8 %i.dw, 1
  %.not.i83 = icmp eq i8 %i.dx, 0
  br i1 %.not.i83, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dy = fcmp uno double %i.dt, 0.000000e+00
  br i1 %i.dy, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dz = fptosi double %i.dt to i32              ; 3 uses
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dn
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !118
  %i.ee = fptosi double %i.ed to i32
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %i.ef ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !88 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.eh, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !88
  %i.el = sub nsw i32 %i.ek, %i.ei
  %i.em = lshr i32 %i.dz, 5                       ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.em, %i.el
  br i1 %.not.i.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i: ; preds = %bb.i
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.eo = sext i32 %i.ei to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eo
  %i.eq = zext nneg i32 %i.em to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !88
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM4Tree8TreeSHAPEPKdPdiiPNS0_11PathElementEddi:bb.a
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.split.i88.preheader

.lr.ph.split.i88.preheader:                       ; preds = %.lr.ph.split.preheader.i87, %middle.block
  %indvars.iv.i89.ph = phi i64 [ %i.hd, %.lr.ph.split.preheader.i87 ], [ %i.hf, %middle.block ]
  br label %.lr.ph.split.i88

.lr.ph.split.us.preheader.i92:                    ; preds = %.lr.ph.i86
  %i.hy = zext nneg i32 %.tr98 to i64
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !440
  %i.ic = zext nneg i32 %.04851.i to i64
  br label %.lr.ph.split.us.i93

.lr.ph.split.us.i93:                              ; preds = %.lr.ph.split.us.i93, %.lr.ph.split.us.preheader.i92
  %indvars.iv59.i = phi i64 [ %i.ic, %.lr.ph.split.us.preheader.i92 ], [ %indvars.iv.next60.i, %.lr.ph.split.us.i93 ] ; 4 uses
  %.048.in53.us.i = phi i32 [ %.tr98, %.lr.ph.split.us.preheader.i92 ], [ %i.il, %.lr.ph.split.us.i93 ]
  %.04952.us.i = phi double [ %i.ib, %.lr.ph.split.us.preheader.i92 ], [ %i.iq, %.lr.ph.split.us.i93 ]
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv59.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24 ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !440
  %i.ig = fmul double %.04952.us.i, %i.hc
  %i.ih = uitofp nneg i32 %.048.in53.us.i to double
  %i.ii = fmul double %i.ha, %i.ih
  %i.ij = fdiv double %i.ig, %i.ii                ; 2 uses
  store double %i.ij, ptr %i.ie, align 8, !tbaa !440
  %i.ik = fmul double %i.gy, %i.ij
  %i.il = trunc i64 %indvars.iv59.i to i32        ; 2 uses
  %i.im = sub i32 %.tr98, %i.il
  %i.in = sitofp i32 %i.im to double
  %i.io = fmul double %i.ik, %i.in
  %i.ip = fdiv double %i.io, %i.hc
  %i.iq = fsub double %i.if, %i.ip
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, -1
  %.not67.i = icmp eq i64 %indvars.iv59.i, 0
  br i1 %.not67.i, label %.preheader.i, label %.lr.ph.split.us.i93, !llvm.loop !40

.preheader.i:                                     ; preds = %.lr.ph.split.i88, %.lr.ph.split.us.i93, %middle.block, %bb.p
  %i.ir = icmp slt i32 %.0.lcssa, %.tr98
  br i1 %i.ir, label %.lr.ph56.i.preheader, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit

.lr.ph56.i.preheader:                             ; preds = %.preheader.i
  %i.is = sub nsw i64 %i.j, %i.gv
  %xtraiter = and i64 %i.is, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader
  %indvars.iv.next63.i.prol = add nuw nsw i64 %i.gv, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i.prol ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !437
  %i.iv = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.gv ; 2 uses
  store i32 %i.iu, ptr %i.iv, align 8, !tbaa !437
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iy = load <2 x double>, ptr %i.iw, align 8, !tbaa !118
  store <2 x double> %i.iy, ptr %i.ix, align 8, !tbaa !118
  br label %.lr.ph56.i.prol.loopexit

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %indvars.iv62.i.unr = phi i64 [ %i.gv, %.lr.ph56.i.preheader ], [ %indvars.iv.next63.i.prol, %.lr.ph56.i.prol ]
  %i.iz = add nsw i64 %i.j, -1
  %i.ja = icmp eq i64 %i.iz, %i.gv
  br i1 %i.ja, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit, label %.lr.ph56.i

.lr.ph.split.i88:                                 ; preds = %.lr.ph.split.i88.preheader, %.lr.ph.split.i88
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %.lr.ph.split.i88 ], [ %indvars.iv.i89.ph, %.lr.ph.split.i88.preheader ] ; 4 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i89
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24 ; 2 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !440
  %i.je = fmul double %i.jd, %i.hc
  %i.jf = trunc i64 %indvars.iv.i89 to i32
  %i.jg = sub i32 %.tr98, %i.jf
  %i.jh = sitofp i32 %i.jg to double
  %i.ji = fmul double %i.gy, %i.jh
  %i.jj = fdiv double %i.je, %i.ji
  store double %i.jj, ptr %i.jc, align 8, !tbaa !440
  %indvars.iv.next.i90 = add nsw i64 %indvars.iv.i89, -1
  %.not.i91 = icmp eq i64 %indvars.iv.i89, 0
  br i1 %.not.i91, label %.preheader.i, label %.lr.ph.split.i88, !llvm.loop !1373

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i.1, %.lr.ph56.i ], [ %indvars.iv62.i.unr, %.lr.ph56.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !437
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv62.i ; 2 uses
  store i32 %i.jl, ptr %i.jm, align 8, !tbaa !437
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jp = load <2 x double>, ptr %i.jn, align 8, !tbaa !118
  store <2 x double> %i.jp, ptr %i.jo, align 8, !tbaa !118
  %indvars.iv.next63.i.1 = add nuw nsw i64 %indvars.iv62.i, 2 ; 3 uses
  %i.jq = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i.1 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !437
  %i.js = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i ; 2 uses
  store i32 %i.jr, ptr %i.js, align 8, !tbaa !437
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jv = load <2 x double>, ptr %i.jt, align 8, !tbaa !118
  store <2 x double> %i.jv, ptr %i.ju, align 8, !tbaa !118
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next63.i.1, %i.j
  br i1 %exitcond.not.i.1, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit, label %.lr.ph56.i, !llvm.loop !41

_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit: ; preds = %.lr.ph56.i, %.lr.ph56.i.prol.loopexit
  %.pre.pre = load i32, ptr %i.dp, align 4, !tbaa !88
  br label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit

_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit: ; preds = %bb.o, %.preheader.i, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit, %._crit_edge
  %.pre-phi = phi i32 [ %.tr98, %.preheader.i ], [ %.pre123, %._crit_edge ], [ %.tr98, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ %.pre123, %bb.o ] ; 2 uses
  %i.jw = phi i32 [ %i.dq, %.preheader.i ], [ %i.dq, %._crit_edge ], [ %.pre.pre, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ %i.dq, %bb.o ]
  %.073 = phi double [ %i.gy, %.preheader.i ], [ 1.000000e+00, %._crit_edge ], [ %i.gy, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ 1.000000e+00, %bb.o ]
  %.072 = phi double [ %i.ha, %.preheader.i ], [ 1.000000e+00, %._crit_edge ], [ %i.ha, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ 1.000000e+00, %bb.o ]
  %i.jx = insertelement <2 x double> poison, double %.073, i64 0
  %i.jy = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jz = fmul <2 x double> %i.gq, %i.jy          ; 2 uses
  %i.ka = extractelement <2 x double> %i.jz, i64 0
  tail call void @_ZNK8LightGBM4Tree8TreeSHAPEPKdPdiiPNS0_11PathElementEddi(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, i32 noundef %.pre-phi, ptr noundef nonnull %i.k, double noundef %i.ka, double noundef %.072, i32 noundef %i.jw)
  %i.kb = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.dn
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !88
  %i.ke = extractelement <2 x double> %i.jz, i64 1
  br label %tailrecurse

._crit_edge111:                                   ; preds = %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8LightGBM4Tree13TreeSHAPByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEPSA_iiPNS0_11PathElementEddi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, double noundef %6, double noundef %7, i32 noundef %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge.thread, %bb.a
  %.tr123 = phi i32 [ %3, %bb.a ], [ %i.ig, %._crit_edge.thread ] ; 3 uses
  %.tr124 = phi i32 [ %4, %bb.a ], [ %.pre-phi, %._crit_edge.thread ] ; 28 uses
  %.tr125 = phi ptr [ %5, %bb.a ], [ %i.n, %._crit_edge.thread ] ; 3 uses
  %.tr126 = phi double [ %6, %bb.a ], [ %i.mt, %._crit_edge.thread ] ; 3 uses
  %.tr127 = phi double [ %7, %bb.a ], [ 0.000000e+00, %._crit_edge.thread ] ; 3 uses
  %.tr128 = phi i32 [ %8, %bb.a ], [ %i.ms, %._crit_edge.thread ] ; 2 uses
  %i.m = sext i32 %.tr124 to i64                  ; 7 uses
  %i.n = getelementptr inbounds [32 x i8], ptr %.tr125, i64 %i.m ; 27 uses
  %i.o = icmp sgt i32 %.tr124, 0                  ; 2 uses
  br i1 %i.o, label %bb.b, label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge

bb.b:                                             ; preds = %tailrecurse
  %.not = icmp eq i32 %.tr124, 1
  br i1 %.not, label %bb.d, label %bb.c, !prof !208

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.m, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %.tr125, i64 %.idx, i1 false)
  br label %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.tr125, i64 32, i1 false), !tbaa.struct !441
  br label %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit: ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.m ; 4 uses
  store i32 %.tr128, ptr %i.p, align 8, !tbaa !437
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store double %.tr126, ptr %i.q, align 8, !tbaa !438
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store double %.tr127, ptr %i.r, align 8, !tbaa !439
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !440
  %i.t = add nuw nsw i32 %.tr124, 1
  %i.u = uitofp nneg i32 %i.t to double
  %i.v = zext nneg i32 %.tr124 to i64
  %i.w = insertelement <2 x double> poison, double %.tr126, i64 0
  %i.x = insertelement <2 x double> %i.w, double %.tr127, i64 1
  %i.y = insertelement <2 x double> poison, double %i.u, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit
  %i.aa = phi double [ 0.000000e+00, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit ], [ %i.at, %bb.e ]
  %indvars.iv.i = phi i64 [ %i.v, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !440
  %i.ae = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = trunc i64 %indvars.iv.next.i to i32
  %i.ai = sub i32 %.tr124, %i.ah
  %9 = uitofp nneg i32 %i.ae to double
  %i.aj = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.x, %i.ak
  %i.am = sitofp i32 %i.ai to double
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %9, i64 1
  %i.ap = fmul <2 x double> %i.al, %i.ao
  %i.aq = fdiv <2 x double> %i.ap, %i.z           ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 1
  %i.as = fadd double %i.aa, %i.ar
  store double %i.as, ptr %i.ag, align 8, !tbaa !440
  %i.at = extractelement <2 x double> %i.aq, i64 0 ; 2 uses
  store double %i.at, ptr %i.ac, align 8, !tbaa !440
  %i.au = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.au, label %bb.e, label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit, !llvm.loop !39

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge: ; preds = %tailrecurse
  %i.av = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.m ; 4 uses
  store i32 %.tr128, ptr %i.av, align 8, !tbaa !437
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store double %.tr126, ptr %i.aw, align 8, !tbaa !438
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store double %.tr127, ptr %i.ax, align 8, !tbaa !439
  %i.ay = icmp eq i32 %.tr124, 0
  %i.az = uitofp i1 %i.ay to double
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store double %i.az, ptr %i.ba, align 8, !tbaa !440
  br label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit: ; preds = %bb.e, %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge
  %i.bb = icmp slt i32 %.tr123, 0
  br i1 %i.bb, label %.preheader, label %bb.i

.preheader:                                       ; preds = %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit
  %.not82160 = icmp slt i32 %.tr124, 1
  br i1 %.not82160, label %._crit_edge162, label %.lr.ph.i83.lr.ph

.lr.ph.i83.lr.ph:                                 ; preds = %.preheader
  %.034.i = add nsw i32 %.tr124, -1               ; 2 uses
  %i.bc = add nuw i32 %.tr124, 1                  ; 2 uses
  %i.bd = uitofp nneg i32 %i.bc to double         ; 5 uses
  %i.be = zext i32 %.034.i to i64                 ; 4 uses
  %i.bf = zext nneg i32 %.tr124 to i64
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bj = xor i32 %.tr123, -1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count198 = zext i32 %i.bc to i64
  %i.bm = and i32 %.tr124, 1
  %lcmp.mod321.not = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.be
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = fdiv double 1.000000e+00, %i.bd
  %indvars.iv.next.i85.prol = add nsw i64 %i.be, -1
  %i.bq = icmp eq i32 %.034.i, 0
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.lr.ph, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit
  %indvars.iv190 = phi i64 [ 1, %.lr.ph.i83.lr.ph ], [ %indvars.iv.next191, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv190 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !439 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !438 ; 5 uses
  %i.bw = fcmp une double %i.bt, 0.000000e+00
  %i.bx = fneg double %i.bv
  br i1 %i.bw, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i83
  br i1 %lcmp.mod321.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.by = load double, ptr %i.bo, align 8, !tbaa !440
  %i.bz = fdiv double %i.by, %i.bv
  %i.ca = fdiv double %i.bz, %i.bp
  %.1.i.prol = fadd double %i.ca, 0.000000e+00    ; 2 uses
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %.1.i.lcssa.unr = phi double [ poison, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  %indvars.iv.i84.unr = phi i64 [ %i.be, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i85.prol, %.lr.ph.split.i.prol ]
  %.03036.i.unr = phi double [ 0.000000e+00, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  br i1 %i.bq, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i83
  %i.cb = load double, ptr %i.bh, align 8, !tbaa !440
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv41.i = phi i64 [ %i.be, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph.split.us.i ] ; 4 uses
  %.0.in37.us.i = phi i32 [ %.tr124, %.lr.ph.split.us.preheader.i ], [ %i.cj, %.lr.ph.split.us.i ]
  %.03036.us.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i ], [ %.1.us.i, %.lr.ph.split.us.i ]
  %.03135.us.i = phi double [ %i.cb, %.lr.ph.split.us.preheader.i ], [ %i.co, %.lr.ph.split.us.i ]
  %i.cc = fmul double %.03135.us.i, %i.bd
  %i.cd = uitofp nneg i32 %.0.in37.us.i to double
  %i.ce = fmul double %i.bt, %i.cd
  %i.cf = fdiv double %i.cc, %i.ce                ; 2 uses
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv41.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !440
  %i.cj = trunc i64 %indvars.iv41.i to i32        ; 2 uses
  %i.ck = sub i32 %.tr124, %i.cj
  %i.cl = sitofp i32 %i.ck to double
  %i.cm = fdiv double %i.cl, %i.bd
  %i.cn = fmul double %i.cf, %i.bx
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cm, double %i.ci)
  %.1.us.i = fadd double %.03036.us.i, %i.cf      ; 2 uses
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, -1
  %.not46.i = icmp eq i64 %indvars.iv41.i, 0
  br i1 %.not46.i, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.us.i, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i84 = phi i64 [ %indvars.iv.next.i85.1, %.lr.ph.split.i ], [ %indvars.iv.i84.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %.03036.i = phi double [ %.1.i.1, %.lr.ph.split.i ], [ %.03036.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.i84
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !440
  %i.cs = fdiv double %i.cr, %i.bv
  %i.ct = trunc i64 %indvars.iv.i84 to i32
  %i.cu = sub i32 %.tr124, %i.ct
  %i.cv = sitofp i32 %i.cu to double
  %i.cw = fdiv double %i.cv, %i.bd
  %i.cx = fdiv double %i.cs, %i.cw
  %.1.i = fadd double %.03036.i, %i.cx
  %indvars.iv.next.i85 = add nsw i64 %indvars.iv.i84, -1 ; 3 uses
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next.i85
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load double, ptr %i.cz, align 8, !tbaa !440
  %i.db = fdiv double %i.da, %i.bv
  %i.dc = trunc i64 %indvars.iv.next.i85 to i32
  %i.dd = sub i32 %.tr124, %i.dc
  %i.de = sitofp i32 %i.dd to double
  %i.df = fdiv double %i.de, %i.bd
  %i.dg = fdiv double %i.db, %i.df
  %.1.i.1 = fadd double %.1.i, %i.dg              ; 2 uses
  %indvars.iv.next.i85.1 = add nsw i64 %indvars.iv.i84, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i85, 0
  br i1 %.not.i.1, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i, !llvm.loop !42

_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit: ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i
  %.030.lcssa.i = phi double [ %.1.us.i, %.lr.ph.split.us.i ], [ %.1.i.lcssa.unr, %.lr.ph.split.i.prol.loopexit ], [ %.1.i.1, %.lr.ph.split.i ]
  %i.dh = fsub double %i.bt, %i.bv
  %i.di = fmul double %.030.lcssa.i, %i.dh
  %i.dj = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.bk
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !118
  %i.dm = load i32, ptr %i.br, align 8, !tbaa !88 ; 3 uses
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = load i64, ptr %i.bl, align 8, !tbaa !443 ; 2 uses
  %i.dp = urem i64 %i.dn, %i.do                   ; 3 uses
  %i.dq = load ptr, ptr %2, align 8, !tbaa !444
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dp
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !423 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !418 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !88
  %i.dw = icmp eq i32 %i.dm, %i.dv
  br i1 %i.dw, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.dx = icmp eq i32 %i.dm, %i.ea
  br i1 %i.dx, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1374

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.dy, %bb.g ], [ %i.dt, %bb.f ]
  %i.dy = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !418 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !88 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = urem i64 %i.eb, %i.do
  %.not19.i.i.i.i = icmp eq i64 %i.ec, %i.dp
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1374

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit.i.i, !llvm.loop !1374

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit
  %i.ed = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43 ; 5 uses
  store ptr null, ptr %i.ed, align 8, !tbaa !418
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i32, ptr %i.br, align 8, !tbaa !88
  store i32 %i.ef, ptr %i.ee, align 8, !tbaa !1381
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store double 0.000000e+00, ptr %i.eg, align 8, !tbaa !1382
  %i.eh = invoke ptr @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %i.dp, i64 noundef %i.dn, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef 24) #41
  resume { ptr, i32 } %i.ei

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit: ; preds = %bb.g, %bb.f, %.loopexit.i.i
end_hunk_1
