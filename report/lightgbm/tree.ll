Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag:bb.a
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
  %i.p = phi double [ %.pre, %.lr.ph ], [ %i.aj, %bb.b ]
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
  %i.y = insertelement <2 x double> poison, double %i.s, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.m, %i.z
  %i.ab = sitofp i32 %i.x to double
  %i.ac = uitofp nneg i32 %i.t to double
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ab, i64 1
  %i.af = fmul <2 x double> %i.aa, %i.ae
  %i.ag = fdiv <2 x double> %i.af, %i.o           ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fadd double %i.p, %i.ah
  store double %i.ai, ptr %i.v, align 8, !tbaa !440
  %i.aj = extractelement <2 x double> %i.ag, i64 1 ; 2 uses
  store double %i.aj, ptr %i.r, align 8, !tbaa !440
  %i.ak = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !39
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
  %3 = sitofp <2 x i32> %i.y to <2 x double>
  %i.z = fmul <2 x double> %broadcast.splat72, %3
  %i.aa = fdiv <2 x double> %i.x, %i.z            ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  store double %i.ab, ptr %i.r, align 8, !tbaa !440
  %i.ac = extractelement <2 x double> %i.aa, i64 1
  store double %i.ac, ptr %i.s, align 8, !tbaa !440
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 -2)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1368

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.preheader75

.lr.ph.split.preheader75:                         ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.k, %.lr.ph.split.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ae = zext nneg i32 %1 to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !440
  %i.ai = zext nneg i32 %.04851 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv59 = phi i64 [ %i.ai, %.lr.ph.split.us.preheader ], [ %indvars.iv.next60, %.lr.ph.split.us ] ; 5 uses
  %.048.in53.us = phi i32 [ %1, %.lr.ph.split.us.preheader ], [ %i.aw, %.lr.ph.split.us ]
  %.04952.us = phi double [ %i.ah, %.lr.ph.split.us.preheader ], [ %i.av, %.lr.ph.split.us ]
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !440
  %i.am = fmul double %.04952.us, %i.j
  %i.an = uitofp nneg i32 %.048.in53.us to double
  %i.ao = fmul double %i.d, %i.an
  %i.ap = fdiv double %i.am, %i.ao                ; 2 uses
  store double %i.ap, ptr %i.ak, align 8, !tbaa !440
  %i.aq = fmul double %i.f, %i.ap
  %i.ar = trunc i64 %indvars.iv59 to i32
  %i.as = sub i32 %1, %i.ar
  %4 = sitofp i32 %i.as to double
  %i.at = fmul double %i.aq, %4
  %i.au = fdiv double %i.at, %i.j
  %i.av = fsub double %i.al, %i.au
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1
  %.not67 = icmp eq i64 %indvars.iv59, 0
  %i.aw = trunc nuw nsw i64 %indvars.iv59 to i32
  br i1 %.not67, label %.preheader, label %.lr.ph.split.us, !llvm.loop !40

.preheader:                                       ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %bb.a
  %i.ax = icmp slt i32 %2, %1
  br i1 %i.ax, label %.lr.ph56.preheader, label %._crit_edge

.lr.ph56.preheader:                               ; preds = %.preheader
  %wide.trip.count = sext i32 %1 to i64           ; 3 uses
  %i.ay = sub nsw i64 %wide.trip.count, %i.a
  %xtraiter = and i64 %i.ay, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader
  %indvars.iv.next63.prol = add nsw i64 %i.a, 1   ; 2 uses
  %i.az = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63.prol ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !437
  %i.bb = getelementptr inbounds [32 x i8], ptr %0, i64 %i.a ; 2 uses
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !437
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load <2 x double>, ptr %i.bc, align 8, !tbaa !118
  store <2 x double> %i.be, ptr %i.bd, align 8, !tbaa !118
  br label %.lr.ph56.prol.loopexit

.lr.ph56.prol.loopexit:                           ; preds = %.lr.ph56.prol, %.lr.ph56.preheader
  %indvars.iv62.unr = phi i64 [ %i.a, %.lr.ph56.preheader ], [ %indvars.iv.next63.prol, %.lr.ph56.prol ]
  %i.bf = add nsw i64 %wide.trip.count, -1
  %i.bg = icmp eq i64 %i.bf, %i.a
  br i1 %i.bg, label %._crit_edge, label %.lr.ph56

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader75, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader75 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !440
  %i.bk = fmul double %i.bj, %i.j
  %i.bl = trunc i64 %indvars.iv to i32
  %i.bm = sub i32 %1, %i.bl
  %5 = sitofp i32 %i.bm to double
  %i.bn = fmul double %i.f, %5
  %i.bo = fdiv double %i.bk, %i.bn
  store double %i.bo, ptr %i.bi, align 8, !tbaa !440
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.preheader, label %.lr.ph.split, !llvm.loop !1369

._crit_edge:                                      ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56, %.preheader
  ret void

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.1, %.lr.ph56 ], [ %indvars.iv62.unr, %.lr.ph56.prol.loopexit ] ; 3 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.bp = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !437
  %i.br = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv62 ; 2 uses
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !437
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load <2 x double>, ptr %i.bs, align 8, !tbaa !118
  store <2 x double> %i.bu, ptr %i.bt, align 8, !tbaa !118
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, 2 ; 3 uses
  %i.bv = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63.1 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !437
  %i.bx = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63 ; 2 uses
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !437
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load <2 x double>, ptr %i.by, align 8, !tbaa !118
  store <2 x double> %i.ca, ptr %i.bz, align 8, !tbaa !118
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
  %.0.in37.us = phi i32 [ %1, %.lr.ph.split.us.preheader ], [ %i.al, %.lr.ph.split.us ]
  %.03036.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %.1.us, %.lr.ph.split.us ]
  %.03135.us = phi double [ %i.x, %.lr.ph.split.us.preheader ], [ %i.ak, %.lr.ph.split.us ]
  %i.z = fmul double %.03135.us, %i.j
  %i.aa = uitofp nneg i32 %.0.in37.us to double
  %i.ab = fmul double %i.d, %i.aa
  %i.ac = fdiv double %i.z, %i.ab                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !440
  %i.ag = trunc i64 %indvars.iv41 to i32
  %i.ah = sub i32 %1, %i.ag
  %3 = sitofp i32 %i.ah to double
  %i.ai = fdiv double %3, %i.j
  %i.aj = fmul double %i.ac, %i.k
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ai, double %i.af)
  %.1.us = fadd double %.03036.us, %i.ac          ; 2 uses
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, -1
  %.not46 = icmp eq i64 %indvars.iv41, 0
  %i.al = trunc nuw nsw i64 %indvars.iv41 to i32
  br i1 %.not46, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.030.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.us, %.lr.ph.split.us ], [ %.1.lcssa.unr, %.lr.ph.split.prol.loopexit ], [ %.1.1, %.lr.ph.split ]
  ret double %.030.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split ], [ %indvars.iv.unr, %.lr.ph.split.prol.loopexit ] ; 4 uses
  %.03036 = phi double [ %.1.1, %.lr.ph.split ], [ %.03036.unr, %.lr.ph.split.prol.loopexit ]
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !440
  %i.ap = fdiv double %i.ao, %i.f
  %i.aq = trunc i64 %indvars.iv to i32
  %i.ar = sub i32 %1, %i.aq
  %4 = sitofp i32 %i.ar to double
  %i.as = fdiv double %4, %i.j
  %i.at = fdiv double %i.ap, %i.as
  %.1 = fadd double %.03036, %i.at
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load double, ptr %i.av, align 8, !tbaa !440
  %i.ax = fdiv double %i.aw, %i.f
  %i.ay = trunc i64 %indvars.iv.next to i32
  %i.az = sub i32 %1, %i.ay
  %5 = sitofp i32 %i.az to double
  %i.ba = fdiv double %5, %i.j
  %i.bb = fdiv double %i.ax, %i.ba
  %.1.1 = fadd double %.1, %i.bb                  ; 2 uses
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
  %.tr97 = phi i32 [ %3, %bb.a ], [ %i.fp, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr98 = phi i32 [ %4, %bb.a ], [ %.pre-phi, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 29 uses
  %.tr99 = phi ptr [ %5, %bb.a ], [ %i.k, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr100 = phi double [ %6, %bb.a ], [ %i.jz, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr101 = phi double [ %7, %bb.a ], [ 0.000000e+00, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr102 = phi i32 [ %8, %bb.a ], [ %i.jy, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 2 uses
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
  %i.x = phi double [ 0.000000e+00, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit ], [ %i.ar, %bb.e ]
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
  %i.ag = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x double> %i.u, %i.ah
  %i.aj = sitofp i32 %i.af to double
  %i.ak = uitofp nneg i32 %i.ab to double
  %i.al = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  %i.an = fmul <2 x double> %i.ai, %i.am
  %i.ao = fdiv <2 x double> %i.an, %i.w           ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 1
  %i.aq = fadd double %i.x, %i.ap
  store double %i.aq, ptr %i.ad, align 8, !tbaa !440
  %i.ar = extractelement <2 x double> %i.ao, i64 0 ; 2 uses
  store double %i.ar, ptr %i.z, align 8, !tbaa !440
  %i.as = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.as, label %bb.e, label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit, !llvm.loop !39

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge: ; preds = %tailrecurse
  %i.at = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.j ; 4 uses
  store i32 %.tr102, ptr %i.at, align 8, !tbaa !437
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %.tr100, ptr %i.au, align 8, !tbaa !438
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store double %.tr101, ptr %i.av, align 8, !tbaa !439
  %i.aw = icmp eq i32 %.tr98, 0
  %i.ax = uitofp i1 %i.aw to double
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store double %i.ax, ptr %i.ay, align 8, !tbaa !440
  br label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit: ; preds = %bb.e, %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge
  %i.az = icmp slt i32 %.tr97, 0
  br i1 %i.az, label %.preheader, label %bb.f

.preheader:                                       ; preds = %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit
  %.not79109 = icmp slt i32 %.tr98, 1
  br i1 %.not79109, label %._crit_edge111, label %.lr.ph.i80.lr.ph

.lr.ph.i80.lr.ph:                                 ; preds = %.preheader
  %.034.i = add nsw i32 %.tr98, -1                ; 2 uses
  %i.ba = add nuw i32 %.tr98, 1                   ; 2 uses
  %i.bb = uitofp nneg i32 %i.ba to double         ; 5 uses
  %i.bc = zext i32 %.034.i to i64                 ; 4 uses
  %i.bd = zext nneg i32 %.tr98 to i64
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bh = xor i32 %.tr97, -1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi
  %wide.trip.count119 = zext i32 %i.ba to i64
  %i.bl = and i32 %.tr98, 1
  %lcmp.mod152.not = icmp eq i32 %i.bl, 0
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.bc
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = fdiv double 1.000000e+00, %i.bb
  %indvars.iv.next.i82.prol = add nsw i64 %i.bc, -1
  %i.bp = icmp eq i32 %.034.i, 0
  br label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.lr.ph, %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit
  %indvars.iv115 = phi i64 [ 1, %.lr.ph.i80.lr.ph ], [ %indvars.iv.next116, %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv115 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !439 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !438 ; 5 uses
  %i.bv = fcmp une double %i.bs, 0.000000e+00
  %i.bw = fneg double %i.bu
  br i1 %i.bv, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i80
  br i1 %lcmp.mod152.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.bx = load double, ptr %i.bn, align 8, !tbaa !440
  %i.by = fdiv double %i.bx, %i.bu
  %i.bz = fdiv double %i.by, %i.bo
  %.1.i.prol = fadd double %i.bz, 0.000000e+00    ; 2 uses
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %.1.i.lcssa.unr = phi double [ poison, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  %indvars.iv.i81.unr = phi i64 [ %i.bc, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i82.prol, %.lr.ph.split.i.prol ]
  %.03036.i.unr = phi double [ 0.000000e+00, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  br i1 %i.bp, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i80
  %i.ca = load double, ptr %i.bf, align 8, !tbaa !440
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv41.i = phi i64 [ %i.bc, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph.split.us.i ] ; 4 uses
  %.0.in37.us.i = phi i32 [ %.tr98, %.lr.ph.split.us.preheader.i ], [ %i.ci, %.lr.ph.split.us.i ]
  %.03036.us.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i ], [ %.1.us.i, %.lr.ph.split.us.i ]
  %.03135.us.i = phi double [ %i.ca, %.lr.ph.split.us.preheader.i ], [ %i.cm, %.lr.ph.split.us.i ]
  %i.cb = fmul double %.03135.us.i, %i.bb
  %i.cc = uitofp nneg i32 %.0.in37.us.i to double
  %i.cd = fmul double %i.bs, %i.cc
  %i.ce = fdiv double %i.cb, %i.cd                ; 2 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv41.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !440
  %i.ci = trunc i64 %indvars.iv41.i to i32        ; 2 uses
  %i.cj = sub i32 %.tr98, %i.ci
  %9 = sitofp i32 %i.cj to double
  %i.ck = fdiv double %9, %i.bb
  %i.cl = fmul double %i.ce, %i.bw
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.ck, double %i.ch)
  %.1.us.i = fadd double %.03036.us.i, %i.ce      ; 2 uses
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, -1
  %.not46.i = icmp eq i64 %indvars.iv41.i, 0
  br i1 %.not46.i, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.us.i, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i82.1, %.lr.ph.split.i ], [ %indvars.iv.i81.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %.03036.i = phi double [ %.1.i.1, %.lr.ph.split.i ], [ %.03036.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i81
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load double, ptr %i.co, align 8, !tbaa !440
  %i.cq = fdiv double %i.cp, %i.bu
  %i.cr = trunc i64 %indvars.iv.i81 to i32
  %i.cs = sub i32 %.tr98, %i.cr
  %10 = sitofp i32 %i.cs to double
  %i.ct = fdiv double %10, %i.bb
  %i.cu = fdiv double %i.cq, %i.ct
  %.1.i = fadd double %.03036.i, %i.cu
  %indvars.iv.next.i82 = add nsw i64 %indvars.iv.i81, -1 ; 3 uses
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i82
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !440
  %i.cy = fdiv double %i.cx, %i.bu
  %i.cz = trunc i64 %indvars.iv.next.i82 to i32
  %i.da = sub i32 %.tr98, %i.cz
  %11 = sitofp i32 %i.da to double
  %i.db = fdiv double %11, %i.bb
  %i.dc = fdiv double %i.cy, %i.db
  %.1.i.1 = fadd double %.1.i, %i.dc              ; 2 uses
  %indvars.iv.next.i82.1 = add nsw i64 %indvars.iv.i81, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i82, 0
  br i1 %.not.i.1, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i, !llvm.loop !42

_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit: ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i
  %.030.lcssa.i = phi double [ %.1.us.i, %.lr.ph.split.us.i ], [ %.1.i.lcssa.unr, %.lr.ph.split.i.prol.loopexit ], [ %.1.i.1, %.lr.ph.split.i ]
  %i.dd = fsub double %i.bs, %i.bu
  %i.de = fmul double %.030.lcssa.i, %i.dd
  %i.df = load double, ptr %i.bk, align 8, !tbaa !118
  %i.dg = load i32, ptr %i.bq, align 8, !tbaa !437
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dh ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !118
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.de, double %i.df, double %i.dj)
  store double %i.dk, ptr %i.di, align 8, !tbaa !118
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge111, label %.lr.ph.i80, !llvm.loop !1370

bb.f:                                             ; preds = %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit
  %i.dl = zext nneg i32 %.tr97 to i64             ; 9 uses
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !88 ; 5 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !118 ; 4 uses
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dl
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !202 ; 3 uses
  %i.dv = and i8 %i.du, 1
  %.not.i83 = icmp eq i8 %i.dv, 0
  br i1 %.not.i83, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dw = fcmp uno double %i.dr, 0.000000e+00
  br i1 %i.dw, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dx = fptosi double %i.dr to i32              ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dl
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !118
  %i.ec = fptosi double %i.eb to i32
  %i.ed = sext i32 %i.ec to i64
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.ef = getelementptr [4 x i8], ptr %i.ee, i64 %i.ed ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !88 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ef, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !88
  %i.ej = sub nsw i32 %i.ei, %i.eg
  %i.ek = lshr i32 %i.dx, 5                       ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.ek, %i.ej
  br i1 %.not.i.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i: ; preds = %bb.i
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.em = sext i32 %i.eg to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.em
  %i.eo = zext nneg i32 %i.ek to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !88
  %i.er = and i32 %i.dx, 31
  %i.es = lshr i32 %i.eq, %i.er
  %i.et = trunc i32 %i.es to i1
  br i1 %i.et, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i: ; preds = %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %bb.i
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

bb.j:                                             ; preds = %bb.f
  %i.eu = lshr i8 %i.du, 2
  %i.ev = and i8 %i.eu, 3                         ; 2 uses
  %i.ew = fcmp uno double %i.dr, 0.000000e+00
  %i.ex = icmp ne i8 %i.ev, 2
  %or.cond.i.i = and i1 %i.ew, %i.ex
  %.017.i.i = select i1 %or.cond.i.i, double 0.000000e+00, double %i.dr ; 3 uses
  switch i8 %i.ev, label %bb.n [
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ey = tail call double @llvm.fabs.f64(double %.017.i.i)
  %i.ez = fcmp ugt double %i.ey, f0x38AA95A5C0000000
  br i1 %i.ez, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.fa = fcmp uno double %.017.i.i, 0.000000e+00
  br i1 %i.fa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fb = and i8 %i.du, 2
  %.not.i.i = icmp eq i8 %i.fb, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.dl
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !118
  %i.ff = fcmp ugt double %.017.i.i, %i.fe
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i:  ; preds = %bb.n, %bb.m
  %.sink20.i.i = phi i1 [ %i.ff, %bb.n ], [ %.not.i.i, %bb.m ]
  %.19.i.i = select i1 %.sink20.i.i, i64 40, i64 16
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

_ZNK8LightGBM4Tree8DecisionEdi.exit:              ; preds = %bb.g, %bb.h, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i
  %.sink.i = phi i64 [ 40, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i ], [ 40, %bb.h ], [ 40, %bb.g ], [ %.19.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i ], [ 16, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !62
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.dl
  %.0.i = load i32, ptr %i.fi, align 4, !tbaa !88 ; 5 uses
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.dl ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !88
  %i.fm = icmp eq i32 %.0.i, %i.fl
  %i.fn = load ptr, ptr %i.g, align 8
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.dl
  %.in = select i1 %i.fm, ptr %i.fo, ptr %i.fk
  %i.fp = load i32, ptr %.in, align 4, !tbaa !88  ; 4 uses
  %i.fq = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.dl
  %i.fs = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !88
  %i.fu = sitofp i32 %i.ft to double
  %i.fv = zext nneg i32 %.0.i to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fv
  %i.fx = xor i32 %.0.i, -1
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fy
  %i.ga = icmp slt i32 %.0.i, 0
  %.in.i84 = select i1 %i.ga, ptr %i.fz, ptr %i.fw
  %i.gb = load i32, ptr %.in.i84, align 4, !tbaa !88
  %i.gc = zext nneg i32 %i.fp to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.gc
  %i.ge = xor i32 %i.fp, -1
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gf
  %i.gh = icmp slt i32 %i.fp, 0
  %.in.i85 = select i1 %i.gh, ptr %i.gg, ptr %i.gd
  %i.gi = load i32, ptr %.in.i85, align 4, !tbaa !88
  %i.gj = insertelement <2 x i32> poison, i32 %i.gb, i64 0
  %i.gk = insertelement <2 x i32> %i.gj, i32 %i.gi, i64 1
  %i.gl = sitofp <2 x i32> %i.gk to <2 x double>
  %i.gm = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fdiv <2 x double> %i.gl, %i.gn
  %.not105 = icmp slt i32 %.tr98, 0
  %.pre123 = add i32 %.tr98, 1                    ; 5 uses
  br i1 %.not105, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK8LightGBM4Tree8DecisionEdi.exit
  %wide.trip.count = zext i32 %.pre123 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !437
  %i.gr = icmp eq i32 %i.gq, %i.do
  br i1 %i.gr, label %._crit_edge.loopexit, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, label %.lr.ph, !llvm.loop !1371

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.gs = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK8LightGBM4Tree8DecisionEdi.exit, %._crit_edge.loopexit
  %.0.lcssa = phi i32 [ %i.gs, %._crit_edge.loopexit ], [ 0, %_ZNK8LightGBM4Tree8DecisionEdi.exit ] ; 3 uses
  %.not78 = icmp eq i32 %.0.lcssa, %.pre123
  br i1 %.not78, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.gt = zext nneg i32 %.0.lcssa to i64          ; 6 uses
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !438 ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !439 ; 4 uses
  br i1 %i.l, label %.lr.ph.i86, label %.preheader.i

.lr.ph.i86:                                       ; preds = %bb.p
  %.04851.i = add nsw i32 %.tr98, -1              ; 3 uses
  %i.gz = fcmp une double %i.gy, 0.000000e+00
  %i.ha = uitofp nneg i32 %.pre123 to double      ; 4 uses
  br i1 %i.gz, label %.lr.ph.split.us.preheader.i92, label %.lr.ph.split.preheader.i87

.lr.ph.split.preheader.i87:                       ; preds = %.lr.ph.i86
  %i.hb = zext i32 %.04851.i to i64               ; 3 uses
  %i.hc = zext nneg i32 %.tr98 to i64             ; 2 uses
  %min.iters.check = icmp eq i32 %.tr98, 1
  br i1 %min.iters.check, label %.lr.ph.split.i88.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader.i87
  %n.vec = and i64 %i.hc, 2147483646              ; 3 uses
  %i.hd = sub nsw i64 %i.hb, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ha, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <2 x i32> poison, i32 %.tr98, i64 0
  %broadcast.splat142 = shufflevector <2 x i32> %broadcast.splatinsert141, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <2 x double> poison, double %i.gw, i64 0
  %broadcast.splat144 = shufflevector <2 x double> %broadcast.splatinsert143, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert145 = insertelement <2 x i32> poison, i32 %.04851.i, i64 0
  %broadcast.splat146 = shufflevector <2 x i32> %broadcast.splatinsert145, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.he = add <2 x i32> %broadcast.splat146, <i32 0, i32 -1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %i.he, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.hf = sub i64 %i.hb, %index                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.hf
  %i.hh = getelementptr [32 x i8], ptr %i.k, i64 %i.hf
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hh, i64 -8     ; 2 uses
  %i.hk = load double, ptr %i.hi, align 8, !tbaa !440
  %i.hl = load double, ptr %i.hj, align 8, !tbaa !440
  %i.hm = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hl, i64 1
  %i.ho = fmul <2 x double> %i.hn, %broadcast.splat
  %i.hp = sub <2 x i32> %broadcast.splat142, %vec.ind
  %12 = sitofp <2 x i32> %i.hp to <2 x double>
  %i.hq = fmul <2 x double> %broadcast.splat144, %12
  %i.hr = fdiv <2 x double> %i.ho, %i.hq          ; 2 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 0
  store double %i.hs, ptr %i.hi, align 8, !tbaa !440
  %i.ht = extractelement <2 x double> %i.hr, i64 1
  store double %i.ht, ptr %i.hj, align 8, !tbaa !440
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 -2)
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !1372

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.hc
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.split.i88.preheader

.lr.ph.split.i88.preheader:                       ; preds = %.lr.ph.split.preheader.i87, %middle.block
  %indvars.iv.i89.ph = phi i64 [ %i.hb, %.lr.ph.split.preheader.i87 ], [ %i.hd, %middle.block ]
  br label %.lr.ph.split.i88

.lr.ph.split.us.preheader.i92:                    ; preds = %.lr.ph.i86
  %i.hv = zext nneg i32 %.tr98 to i64
  %i.hw = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !440
  %i.hz = zext nneg i32 %.04851.i to i64
  br label %.lr.ph.split.us.i93

.lr.ph.split.us.i93:                              ; preds = %.lr.ph.split.us.i93, %.lr.ph.split.us.preheader.i92
  %indvars.iv59.i = phi i64 [ %i.hz, %.lr.ph.split.us.preheader.i92 ], [ %indvars.iv.next60.i, %.lr.ph.split.us.i93 ] ; 4 uses
  %.048.in53.us.i = phi i32 [ %.tr98, %.lr.ph.split.us.preheader.i92 ], [ %i.ii, %.lr.ph.split.us.i93 ]
  %.04952.us.i = phi double [ %i.hy, %.lr.ph.split.us.preheader.i92 ], [ %i.im, %.lr.ph.split.us.i93 ]
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv59.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24 ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !440
  %i.id = fmul double %.04952.us.i, %i.ha
  %i.ie = uitofp nneg i32 %.048.in53.us.i to double
  %i.if = fmul double %i.gy, %i.ie
  %i.ig = fdiv double %i.id, %i.if                ; 2 uses
  store double %i.ig, ptr %i.ib, align 8, !tbaa !440
  %i.ih = fmul double %i.gw, %i.ig
  %i.ii = trunc i64 %indvars.iv59.i to i32        ; 2 uses
  %i.ij = sub i32 %.tr98, %i.ii
  %13 = sitofp i32 %i.ij to double
  %i.ik = fmul double %i.ih, %13
  %i.il = fdiv double %i.ik, %i.ha
  %i.im = fsub double %i.ic, %i.il
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, -1
  %.not67.i = icmp eq i64 %indvars.iv59.i, 0
  br i1 %.not67.i, label %.preheader.i, label %.lr.ph.split.us.i93, !llvm.loop !40

.preheader.i:                                     ; preds = %.lr.ph.split.i88, %.lr.ph.split.us.i93, %middle.block, %bb.p
  %i.in = icmp slt i32 %.0.lcssa, %.tr98
  br i1 %i.in, label %.lr.ph56.i.preheader, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit

.lr.ph56.i.preheader:                             ; preds = %.preheader.i
  %i.io = sub nsw i64 %i.j, %i.gt
  %xtraiter = and i64 %i.io, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader
  %indvars.iv.next63.i.prol = add nuw nsw i64 %i.gt, 1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i.prol ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !437
  %i.ir = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.gt ; 2 uses
  store i32 %i.iq, ptr %i.ir, align 8, !tbaa !437
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iu = load <2 x double>, ptr %i.is, align 8, !tbaa !118
  store <2 x double> %i.iu, ptr %i.it, align 8, !tbaa !118
  br label %.lr.ph56.i.prol.loopexit

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %indvars.iv62.i.unr = phi i64 [ %i.gt, %.lr.ph56.i.preheader ], [ %indvars.iv.next63.i.prol, %.lr.ph56.i.prol ]
  %i.iv = add nsw i64 %i.j, -1
  %i.iw = icmp eq i64 %i.iv, %i.gt
  br i1 %i.iw, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit, label %.lr.ph56.i

.lr.ph.split.i88:                                 ; preds = %.lr.ph.split.i88.preheader, %.lr.ph.split.i88
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %.lr.ph.split.i88 ], [ %indvars.iv.i89.ph, %.lr.ph.split.i88.preheader ] ; 4 uses
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i89
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24 ; 2 uses
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !440
  %i.ja = fmul double %i.iz, %i.ha
  %i.jb = trunc i64 %indvars.iv.i89 to i32
  %i.jc = sub i32 %.tr98, %i.jb
  %14 = sitofp i32 %i.jc to double
  %i.jd = fmul double %i.gw, %14
  %i.je = fdiv double %i.ja, %i.jd
  store double %i.je, ptr %i.iy, align 8, !tbaa !440
  %indvars.iv.next.i90 = add nsw i64 %indvars.iv.i89, -1
  %.not.i91 = icmp eq i64 %indvars.iv.i89, 0
  br i1 %.not.i91, label %.preheader.i, label %.lr.ph.split.i88, !llvm.loop !1373

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i.1, %.lr.ph56.i ], [ %indvars.iv62.i.unr, %.lr.ph56.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !437
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv62.i ; 2 uses
  store i32 %i.jg, ptr %i.jh, align 8, !tbaa !437
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load <2 x double>, ptr %i.ji, align 8, !tbaa !118
  store <2 x double> %i.jk, ptr %i.jj, align 8, !tbaa !118
  %indvars.iv.next63.i.1 = add nuw nsw i64 %indvars.iv62.i, 2 ; 3 uses
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i.1 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !437
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i ; 2 uses
  store i32 %i.jm, ptr %i.jn, align 8, !tbaa !437
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = load <2 x double>, ptr %i.jo, align 8, !tbaa !118
  store <2 x double> %i.jq, ptr %i.jp, align 8, !tbaa !118
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next63.i.1, %i.j
  br i1 %exitcond.not.i.1, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit, label %.lr.ph56.i, !llvm.loop !41

_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit: ; preds = %.lr.ph56.i, %.lr.ph56.i.prol.loopexit
  %.pre.pre = load i32, ptr %i.dn, align 4, !tbaa !88
  br label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit

_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit: ; preds = %bb.o, %.preheader.i, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit, %._crit_edge
  %.pre-phi = phi i32 [ %.tr98, %.preheader.i ], [ %.pre123, %._crit_edge ], [ %.tr98, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ %.pre123, %bb.o ] ; 2 uses
  %i.jr = phi i32 [ %i.do, %.preheader.i ], [ %i.do, %._crit_edge ], [ %.pre.pre, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ %i.do, %bb.o ]
  %.073 = phi double [ %i.gw, %.preheader.i ], [ 1.000000e+00, %._crit_edge ], [ %i.gw, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ 1.000000e+00, %bb.o ]
  %.072 = phi double [ %i.gy, %.preheader.i ], [ 1.000000e+00, %._crit_edge ], [ %i.gy, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ 1.000000e+00, %bb.o ]
  %i.js = insertelement <2 x double> poison, double %.073, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ju = fmul <2 x double> %i.go, %i.jt          ; 2 uses
  %i.jv = extractelement <2 x double> %i.ju, i64 0
  tail call void @_ZNK8LightGBM4Tree8TreeSHAPEPKdPdiiPNS0_11PathElementEddi(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, i32 noundef %.pre-phi, ptr noundef nonnull %i.k, double noundef %i.jv, double noundef %.072, i32 noundef %i.jr)
  %i.jw = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.dl
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !88
  %i.jz = extractelement <2 x double> %i.ju, i64 1
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
  %.tr123 = phi i32 [ %3, %bb.a ], [ %i.ie, %._crit_edge.thread ] ; 3 uses
  %.tr124 = phi i32 [ %4, %bb.a ], [ %.pre-phi, %._crit_edge.thread ] ; 28 uses
  %.tr125 = phi ptr [ %5, %bb.a ], [ %i.n, %._crit_edge.thread ] ; 3 uses
  %.tr126 = phi double [ %6, %bb.a ], [ %i.mo, %._crit_edge.thread ] ; 3 uses
  %.tr127 = phi double [ %7, %bb.a ], [ 0.000000e+00, %._crit_edge.thread ] ; 3 uses
  %.tr128 = phi i32 [ %8, %bb.a ], [ %i.mn, %._crit_edge.thread ] ; 2 uses
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
  %i.aa = phi double [ 0.000000e+00, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit ], [ %i.au, %bb.e ]
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
  %i.aj = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.x, %i.ak
  %i.am = sitofp i32 %i.ai to double
  %i.an = uitofp nneg i32 %i.ae to double
  %i.ao = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 1
  %i.aq = fmul <2 x double> %i.al, %i.ap
  %i.ar = fdiv <2 x double> %i.aq, %i.z           ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 1
  %i.at = fadd double %i.aa, %i.as
  store double %i.at, ptr %i.ag, align 8, !tbaa !440
  %i.au = extractelement <2 x double> %i.ar, i64 0 ; 2 uses
  store double %i.au, ptr %i.ac, align 8, !tbaa !440
  %i.av = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.av, label %bb.e, label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit, !llvm.loop !39

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge: ; preds = %tailrecurse
  %i.aw = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.m ; 4 uses
  store i32 %.tr128, ptr %i.aw, align 8, !tbaa !437
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store double %.tr126, ptr %i.ax, align 8, !tbaa !438
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store double %.tr127, ptr %i.ay, align 8, !tbaa !439
  %i.az = icmp eq i32 %.tr124, 0
  %i.ba = uitofp i1 %i.az to double
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store double %i.ba, ptr %i.bb, align 8, !tbaa !440
  br label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit: ; preds = %bb.e, %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge
  %i.bc = icmp slt i32 %.tr123, 0
  br i1 %i.bc, label %.preheader, label %bb.i

.preheader:                                       ; preds = %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit
  %.not82160 = icmp slt i32 %.tr124, 1
  br i1 %.not82160, label %._crit_edge162, label %.lr.ph.i83.lr.ph

.lr.ph.i83.lr.ph:                                 ; preds = %.preheader
  %.034.i = add nsw i32 %.tr124, -1               ; 2 uses
  %i.bd = add nuw i32 %.tr124, 1                  ; 2 uses
  %i.be = uitofp nneg i32 %i.bd to double         ; 5 uses
  %i.bf = zext i32 %.034.i to i64                 ; 4 uses
  %i.bg = zext nneg i32 %.tr124 to i64
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bk = xor i32 %.tr123, -1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count198 = zext i32 %i.bd to i64
  %i.bn = and i32 %.tr124, 1
  %lcmp.mod321.not = icmp eq i32 %i.bn, 0
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.bf
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = fdiv double 1.000000e+00, %i.be
  %indvars.iv.next.i85.prol = add nsw i64 %i.bf, -1
  %i.br = icmp eq i32 %.034.i, 0
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.lr.ph, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit
  %indvars.iv190 = phi i64 [ 1, %.lr.ph.i83.lr.ph ], [ %indvars.iv.next191, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv190 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !439 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !438 ; 5 uses
  %i.bx = fcmp une double %i.bu, 0.000000e+00
  %i.by = fneg double %i.bw
  br i1 %i.bx, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i83
  br i1 %lcmp.mod321.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.bz = load double, ptr %i.bp, align 8, !tbaa !440
  %i.ca = fdiv double %i.bz, %i.bw
  %i.cb = fdiv double %i.ca, %i.bq
  %.1.i.prol = fadd double %i.cb, 0.000000e+00    ; 2 uses
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %.1.i.lcssa.unr = phi double [ poison, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  %indvars.iv.i84.unr = phi i64 [ %i.bf, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i85.prol, %.lr.ph.split.i.prol ]
  %.03036.i.unr = phi double [ 0.000000e+00, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  br i1 %i.br, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i83
  %i.cc = load double, ptr %i.bi, align 8, !tbaa !440
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv41.i = phi i64 [ %i.bf, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph.split.us.i ] ; 4 uses
  %.0.in37.us.i = phi i32 [ %.tr124, %.lr.ph.split.us.preheader.i ], [ %i.ck, %.lr.ph.split.us.i ]
  %.03036.us.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i ], [ %.1.us.i, %.lr.ph.split.us.i ]
  %.03135.us.i = phi double [ %i.cc, %.lr.ph.split.us.preheader.i ], [ %i.co, %.lr.ph.split.us.i ]
  %i.cd = fmul double %.03135.us.i, %i.be
  %i.ce = uitofp nneg i32 %.0.in37.us.i to double
  %i.cf = fmul double %i.bu, %i.ce
  %i.cg = fdiv double %i.cd, %i.cf                ; 2 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv41.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !440
  %i.ck = trunc i64 %indvars.iv41.i to i32        ; 2 uses
  %i.cl = sub i32 %.tr124, %i.ck
  %9 = sitofp i32 %i.cl to double
  %i.cm = fdiv double %9, %i.be
  %i.cn = fmul double %i.cg, %i.by
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cm, double %i.cj)
  %.1.us.i = fadd double %.03036.us.i, %i.cg      ; 2 uses
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, -1
  %.not46.i = icmp eq i64 %indvars.iv41.i, 0
  br i1 %.not46.i, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.us.i, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i84 = phi i64 [ %indvars.iv.next.i85.1, %.lr.ph.split.i ], [ %indvars.iv.i84.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %.03036.i = phi double [ %.1.i.1, %.lr.ph.split.i ], [ %.03036.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.i84
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !440
  %i.cs = fdiv double %i.cr, %i.bw
  %i.ct = trunc i64 %indvars.iv.i84 to i32
  %i.cu = sub i32 %.tr124, %i.ct
  %10 = sitofp i32 %i.cu to double
  %i.cv = fdiv double %10, %i.be
  %i.cw = fdiv double %i.cs, %i.cv
  %.1.i = fadd double %.03036.i, %i.cw
  %indvars.iv.next.i85 = add nsw i64 %indvars.iv.i84, -1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next.i85
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !440
  %i.da = fdiv double %i.cz, %i.bw
  %i.db = trunc i64 %indvars.iv.next.i85 to i32
  %i.dc = sub i32 %.tr124, %i.db
  %11 = sitofp i32 %i.dc to double
  %i.dd = fdiv double %11, %i.be
  %i.de = fdiv double %i.da, %i.dd
  %.1.i.1 = fadd double %.1.i, %i.de              ; 2 uses
  %indvars.iv.next.i85.1 = add nsw i64 %indvars.iv.i84, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i85, 0
  br i1 %.not.i.1, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i, !llvm.loop !42

_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit: ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i
  %.030.lcssa.i = phi double [ %.1.us.i, %.lr.ph.split.us.i ], [ %.1.i.lcssa.unr, %.lr.ph.split.i.prol.loopexit ], [ %.1.i.1, %.lr.ph.split.i ]
  %i.df = fsub double %i.bu, %i.bw
  %i.dg = fmul double %.030.lcssa.i, %i.df
  %i.dh = load ptr, ptr %i.bj, align 8, !tbaa !68
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.bl
  %i.dj = load double, ptr %i.di, align 8, !tbaa !118
  %i.dk = load i32, ptr %i.bs, align 8, !tbaa !88 ; 3 uses
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = load i64, ptr %i.bm, align 8, !tbaa !443 ; 2 uses
  %i.dn = urem i64 %i.dl, %i.dm                   ; 3 uses
  %i.do = load ptr, ptr %2, align 8, !tbaa !444
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dn
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !423 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !418 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !88
  %i.du = icmp eq i32 %i.dk, %i.dt
  br i1 %i.du, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.dv = icmp eq i32 %i.dk, %i.dy
  br i1 %i.dv, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1374

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.dw, %bb.g ], [ %i.dr, %bb.f ]
  %i.dw = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !418 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !88 ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = urem i64 %i.dz, %i.dm
  %.not19.i.i.i.i = icmp eq i64 %i.ea, %i.dn
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1374

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit.i.i, !llvm.loop !1374

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit
  %i.eb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43 ; 5 uses
  store ptr null, ptr %i.eb, align 8, !tbaa !418
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.bs, align 8, !tbaa !88
  store i32 %i.ed, ptr %i.ec, align 8, !tbaa !1381
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store double 0.000000e+00, ptr %i.ee, align 8, !tbaa !1382
  %i.ef = invoke ptr @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %i.dn, i64 noundef %i.dl, ptr noundef nonnull %i.eb, i64 noundef 1)
          to label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 24) #41
  resume { ptr, i32 } %i.eg

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit: ; preds = %bb.g, %bb.f, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ef, %.loopexit.i.i ], [ %i.dr, %bb.f ], [ %i.dw, %bb.g ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.eh = load double, ptr %.1.i.i, align 8, !tbaa !118
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dj, double %i.eh)
  store double %i.ei, ptr %.1.i.i, align 8, !tbaa !118
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge162, label %.lr.ph.i83, !llvm.loop !1375

bb.i:                                             ; preds = %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit
  %i.ej = zext nneg i32 %.tr123 to i64            ; 10 uses
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ej ; 2 uses
  %i.em = load i64, ptr %i.b, align 8, !tbaa !445
  %.not.not.i.i.i = icmp eq i64 %i.em, 0          ; 2 uses
  %i.en = load i32, ptr %i.el, align 4            ; 11 uses
  br i1 %.not.not.i.i.i, label %.preheader263, label %bb.k

.preheader263:                                    ; preds = %bb.i, %bb.j
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.j ], [ %i.d, %bb.i ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !418 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.thread118, label %bb.j

bb.j:                                             ; preds = %.preheader263
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !88
  %i.eq = icmp eq i32 %i.en, %i.ep
  br i1 %i.eq, label %.loopexit133, label %.preheader263, !llvm.loop !1376

bb.k:                                             ; preds = %bb.i
  %i.er = sext i32 %i.en to i64
  %i.es = load i64, ptr %i.c, align 8, !tbaa !443 ; 3 uses
  %i.et = urem i64 %i.er, %i.es                   ; 3 uses
  %i.eu = load ptr, ptr %1, align 8, !tbaa !444   ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !423 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i.i, label %.thread118, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !418 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !88
  %i.fa = icmp eq i32 %i.en, %i.ez
  br i1 %i.fa, label %.thread, label %.lr.ph.i.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.fb = icmp eq i32 %i.en, %i.fe
  br i1 %i.fb, label %.loopexit133, label %.lr.ph.i.i.i.i.i, !llvm.loop !1374

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %bb.m
  %.020.i.i.i.i.i = phi ptr [ %i.fc, %bb.m ], [ %i.ex, %bb.l ]
  %i.fc = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !418 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not18.i.i.i.i.i, label %.thread118, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !88 ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = urem i64 %i.ff, %i.es
  %.not19.i.i.i.i.i = icmp eq i64 %i.fg, %i.et
  br i1 %.not19.i.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !1374

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.n
  br label %.thread118, !llvm.loop !1374

.loopexit133:                                     ; preds = %bb.m, %bb.j
  br i1 %.not.not.i.i.i, label %.preheader260, label %.loopexit133..thread_crit_edge

.loopexit133..thread_crit_edge:                   ; preds = %.loopexit133
  %.pre = load i64, ptr %i.c, align 8, !tbaa !443 ; 2 uses
  %.pre200 = load ptr, ptr %1, align 8, !tbaa !444
  %.pre204 = sext i32 %i.en to i64
  %.pre206 = urem i64 %.pre204, %.pre
  br label %.thread

.preheader260:                                    ; preds = %.loopexit133, %bb.o
  %.sroa.06.0.in.i.i.i95 = phi ptr [ %.sroa.06.0.i.i.i96, %bb.o ], [ %i.d, %.loopexit133 ]
  %.sroa.06.0.i.i.i96 = load ptr, ptr %.sroa.06.0.in.i.i.i95, align 8, !tbaa !418 ; 4 uses
  %.not.i.i.i97 = icmp eq ptr %.sroa.06.0.i.i.i96, null
  br i1 %.not.i.i.i97, label %.loopexit.i.i93, label %bb.o

bb.o:                                             ; preds = %.preheader260
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i96, i64 8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !88
  %i.fj = icmp eq i32 %i.en, %i.fi
  br i1 %i.fj, label %.loopexit, label %.preheader260, !llvm.loop !1376

.thread:                                          ; preds = %.loopexit133..thread_crit_edge, %bb.l
  %.pre-phi207 = phi i64 [ %.pre206, %.loopexit133..thread_crit_edge ], [ %i.et, %bb.l ] ; 2 uses
  %i.fk = phi ptr [ %.pre200, %.loopexit133..thread_crit_edge ], [ %i.eu, %bb.l ]
  %i.fl = phi i64 [ %.pre, %.loopexit133..thread_crit_edge ], [ %i.es, %bb.l ]
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.pre-phi207
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !423 ; 2 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i87, label %.loopexit.i.i93, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !418 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !88
  %i.fr = icmp eq i32 %i.en, %i.fq
  br i1 %i.fr, label %.loopexit, label %.lr.ph.i.i.i.i.i88

bb.q:                                             ; preds = %bb.r
  %i.fs = icmp eq i32 %i.en, %i.fv
  br i1 %i.fs, label %.loopexit, label %.lr.ph.i.i.i.i.i88, !llvm.loop !1374

.lr.ph.i.i.i.i.i88:                               ; preds = %bb.p, %bb.q
  %.020.i.i.i.i.i89 = phi ptr [ %i.ft, %bb.q ], [ %i.fo, %bb.p ]
  %i.ft = load ptr, ptr %.020.i.i.i.i.i89, align 8, !tbaa !418 ; 4 uses
  %.not18.i.i.i.i.i90 = icmp eq ptr %i.ft, null
  br i1 %.not18.i.i.i.i.i90, label %.loopexit.i.i93, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i88
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !88 ; 2 uses
  %i.fw = sext i32 %i.fv to i64
  %i.fx = urem i64 %i.fw, %i.fl
  %.not19.i.i.i.i.i91 = icmp eq i64 %i.fx, %.pre-phi207
  br i1 %.not19.i.i.i.i.i91, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i.i92, !llvm.loop !1374

..loopexit_crit_edge21.i.i.i.i.i92:               ; preds = %bb.r
  br label %.loopexit.i.i93, !llvm.loop !1374

.loopexit.i.i93:                                  ; preds = %.thread, %.lr.ph.i.i.i.i.i88, %.preheader260, %..loopexit_crit_edge21.i.i.i.i.i92
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.189) #42
  unreachable
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM4Tree13TreeSHAPByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEPSA_iiPNS0_11PathElementEddi:bb.a
  %i.gk = fptosi double %i.gj to i32              ; 3 uses
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %bb.t

bb.t:                                             ; preds = %.thread120
  %i.gm = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.ej
  %i.go = load double, ptr %i.gn, align 8, !tbaa !118
  %i.gp = fptosi double %i.go to i32
  %i.gq = sext i32 %i.gp to i64
  %i.gr = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.gs = getelementptr [4 x i8], ptr %i.gr, i64 %i.gq ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !88 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gs, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !88
  %i.gw = sub nsw i32 %i.gv, %i.gt
  %i.gx = lshr i32 %i.gk, 5                       ; 2 uses
  %.not.i.i.i99 = icmp slt i32 %i.gx, %i.gw
  br i1 %.not.i.i.i99, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i: ; preds = %bb.t
  %i.gy = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.gz = sext i32 %i.gt to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.gz
  %i.hb = zext nneg i32 %i.gx to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !88
  %i.he = and i32 %i.gk, 31
  %i.hf = lshr i32 %i.hd, %i.he
  %i.hg = trunc i32 %i.hf to i1
  br i1 %i.hg, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i: ; preds = %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %bb.t
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

bb.u:                                             ; preds = %.thread118, %.loopexit
  %i.hh = phi i8 [ %i.gg, %.thread118 ], [ %i.gc, %.loopexit ] ; 2 uses
  %i.hi = phi double [ 0.000000e+00, %.thread118 ], [ %i.fz, %.loopexit ] ; 2 uses
  %i.hj = lshr i8 %i.hh, 2
  %i.hk = and i8 %i.hj, 3                         ; 2 uses
  %i.hl = fcmp uno double %i.hi, 0.000000e+00
  %i.hm = icmp ne i8 %i.hk, 2
  %or.cond.i.i = and i1 %i.hl, %i.hm
  %.017.i.i = select i1 %or.cond.i.i, double 0.000000e+00, double %i.hi ; 3 uses
  switch i8 %i.hk, label %bb.y [
    i8 1, label %bb.v
    i8 2, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.hn = tail call double @llvm.fabs.f64(double %.017.i.i)
  %i.ho = fcmp ugt double %i.hn, f0x38AA95A5C0000000
  br i1 %i.ho, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.hp = fcmp uno double %.017.i.i, 0.000000e+00
  br i1 %i.hp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hq = and i8 %i.hh, 2
  %.not.i.i100 = icmp eq i8 %i.hq, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.hr = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ej
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !118
  %i.hu = fcmp ugt double %.017.i.i, %i.ht
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i:  ; preds = %bb.y, %bb.x
  %.sink20.i.i = phi i1 [ %i.hu, %bb.y ], [ %.not.i.i100, %bb.x ]
  %.19.i.i = select i1 %.sink20.i.i, i64 40, i64 16
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

_ZNK8LightGBM4Tree8DecisionEdi.exit:              ; preds = %bb.s, %.thread120, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i
  %.sink.i = phi i64 [ 40, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i ], [ 40, %.thread120 ], [ 40, %bb.s ], [ %.19.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i ], [ 16, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ej
  %.0.i = load i32, ptr %i.hx, align 4, !tbaa !88 ; 5 uses
  %i.hy = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ej
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !88 ; 2 uses
  %i.ib = icmp eq i32 %.0.i, %i.ia
  br i1 %i.ib, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK8LightGBM4Tree8DecisionEdi.exit
  %i.ic = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ej
  %.pre201 = load i32, ptr %i.id, align 4, !tbaa !88
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK8LightGBM4Tree8DecisionEdi.exit, %bb.z
  %i.ie = phi i32 [ %.pre201, %bb.z ], [ %i.ia, %_ZNK8LightGBM4Tree8DecisionEdi.exit ] ; 4 uses
  %i.if = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ej
  %i.ih = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ii = load i32, ptr %i.ig, align 4, !tbaa !88
  %i.ij = sitofp i32 %i.ii to double
  %i.ik = zext nneg i32 %.0.i to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ik
  %i.im = xor i32 %.0.i, -1
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.in
  %i.ip = icmp slt i32 %.0.i, 0
  %.in.i101 = select i1 %i.ip, ptr %i.io, ptr %i.il
  %i.iq = load i32, ptr %.in.i101, align 4, !tbaa !88
  %i.ir = zext nneg i32 %i.ie to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ir
  %i.it = xor i32 %i.ie, -1
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.iu
  %i.iw = icmp slt i32 %i.ie, 0
  %.in.i102 = select i1 %i.iw, ptr %i.iv, ptr %i.is
  %i.ix = load i32, ptr %.in.i102, align 4, !tbaa !88
  %i.iy = insertelement <2 x i32> poison, i32 %i.iq, i64 0
  %i.iz = insertelement <2 x i32> %i.iy, i32 %i.ix, i64 1
  %i.ja = sitofp <2 x i32> %i.iz to <2 x double>
  %i.jb = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = fdiv <2 x double> %i.ja, %i.jc
  %.not80156 = icmp slt i32 %.tr124, 0
  %.pre208 = add i32 %.tr124, 1                   ; 5 uses
  br i1 %.not80156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %wide.trip.count = zext i32 %.pre208 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %i.je = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !437
  %i.jg = icmp eq i32 %i.jf, %i.en
  br i1 %i.jg, label %._crit_edge.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.ab, !llvm.loop !1377

._crit_edge.loopexit:                             ; preds = %bb.ab
  %i.jh = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa, %._crit_edge.loopexit
  %.0.lcssa = phi i32 [ %i.jh, %._crit_edge.loopexit ], [ 0, %bb.aa ] ; 3 uses
  %.not81 = icmp eq i32 %.0.lcssa, %.pre208
  br i1 %.not81, label %._crit_edge.thread, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.ji = zext nneg i32 %.0.lcssa to i64          ; 6 uses
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ji ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !438 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !439 ; 3 uses
  br i1 %i.o, label %.lr.ph.i103, label %.preheader.i

.lr.ph.i103:                                      ; preds = %bb.ad
  %.04851.i = add nsw i32 %.tr124, -1             ; 3 uses
  %i.jo = fcmp une double %i.jn, 0.000000e+00
  %i.jp = uitofp nneg i32 %.pre208 to double      ; 4 uses
  br i1 %i.jo, label %.lr.ph.split.us.preheader.i109, label %.lr.ph.split.preheader.i104

.lr.ph.split.preheader.i104:                      ; preds = %.lr.ph.i103
  %i.jq = zext i32 %.04851.i to i64               ; 3 uses
  %i.jr = zext nneg i32 %.tr124 to i64            ; 2 uses
  %min.iters.check = icmp eq i32 %.tr124, 1
  br i1 %min.iters.check, label %.lr.ph.split.i105.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader.i104
  %n.vec = and i64 %i.jr, 2147483646              ; 3 uses
  %i.js = sub nsw i64 %i.jq, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <2 x i32> poison, i32 %.tr124, i64 0
  %broadcast.splat288 = shufflevector <2 x i32> %broadcast.splatinsert287, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <2 x double> poison, double %i.jl, i64 0
  %broadcast.splat290 = shufflevector <2 x double> %broadcast.splatinsert289, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert291 = insertelement <2 x i32> poison, i32 %.04851.i, i64 0
  %broadcast.splat292 = shufflevector <2 x i32> %broadcast.splatinsert291, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jt = add <2 x i32> %broadcast.splat292, <i32 0, i32 -1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %i.jt, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ju = sub i64 %i.jq, %index                   ; 2 uses
  %i.jv = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ju
  %i.jw = getelementptr [32 x i8], ptr %i.n, i64 %i.ju
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jw, i64 -8     ; 2 uses
  %i.jz = load double, ptr %i.jx, align 8, !tbaa !440
  %i.ka = load double, ptr %i.jy, align 8, !tbaa !440
  %i.kb = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kc = insertelement <2 x double> %i.kb, double %i.ka, i64 1
  %i.kd = fmul <2 x double> %i.kc, %broadcast.splat
  %i.ke = sub <2 x i32> %broadcast.splat288, %vec.ind
  %12 = sitofp <2 x i32> %i.ke to <2 x double>
  %i.kf = fmul <2 x double> %broadcast.splat290, %12
  %i.kg = fdiv <2 x double> %i.kd, %i.kf          ; 2 uses
  %i.kh = extractelement <2 x double> %i.kg, i64 0
  store double %i.kh, ptr %i.jx, align 8, !tbaa !440
  %i.ki = extractelement <2 x double> %i.kg, i64 1
  store double %i.ki, ptr %i.jy, align 8, !tbaa !440
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 -2)
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %middle.block, label %vector.body, !llvm.loop !1378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.jr
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.split.i105.preheader

.lr.ph.split.i105.preheader:                      ; preds = %.lr.ph.split.preheader.i104, %middle.block
  %indvars.iv.i106.ph = phi i64 [ %i.jq, %.lr.ph.split.preheader.i104 ], [ %i.js, %middle.block ]
  br label %.lr.ph.split.i105

.lr.ph.split.us.preheader.i109:                   ; preds = %.lr.ph.i103
  %i.kk = zext nneg i32 %.tr124 to i64
  %i.kl = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load double, ptr %i.km, align 8, !tbaa !440
  %i.ko = zext nneg i32 %.04851.i to i64
  br label %.lr.ph.split.us.i110

.lr.ph.split.us.i110:                             ; preds = %.lr.ph.split.us.i110, %.lr.ph.split.us.preheader.i109
  %indvars.iv59.i = phi i64 [ %i.ko, %.lr.ph.split.us.preheader.i109 ], [ %indvars.iv.next60.i, %.lr.ph.split.us.i110 ] ; 4 uses
  %.048.in53.us.i = phi i32 [ %.tr124, %.lr.ph.split.us.preheader.i109 ], [ %i.kx, %.lr.ph.split.us.i110 ]
  %.04952.us.i = phi double [ %i.kn, %.lr.ph.split.us.preheader.i109 ], [ %i.lb, %.lr.ph.split.us.i110 ]
  %i.kp = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv59.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24 ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !440
  %i.ks = fmul double %.04952.us.i, %i.jp
  %i.kt = uitofp nneg i32 %.048.in53.us.i to double
  %i.ku = fmul double %i.jn, %i.kt
  %i.kv = fdiv double %i.ks, %i.ku                ; 2 uses
  store double %i.kv, ptr %i.kq, align 8, !tbaa !440
  %i.kw = fmul double %i.jl, %i.kv
  %i.kx = trunc i64 %indvars.iv59.i to i32        ; 2 uses
  %i.ky = sub i32 %.tr124, %i.kx
  %13 = sitofp i32 %i.ky to double
  %i.kz = fmul double %i.kw, %13
  %i.la = fdiv double %i.kz, %i.jp
  %i.lb = fsub double %i.kr, %i.la
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, -1
  %.not67.i = icmp eq i64 %indvars.iv59.i, 0
  br i1 %.not67.i, label %.preheader.i, label %.lr.ph.split.us.i110, !llvm.loop !40

.preheader.i:                                     ; preds = %.lr.ph.split.i105, %.lr.ph.split.us.i110, %middle.block, %bb.ad
  %i.lc = icmp slt i32 %.0.lcssa, %.tr124
  br i1 %i.lc, label %.lr.ph56.i.preheader, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit

.lr.ph56.i.preheader:                             ; preds = %.preheader.i
  %i.ld = sub nsw i64 %i.m, %i.ji
  %xtraiter = and i64 %i.ld, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader
  %indvars.iv.next63.i.prol = add nuw nsw i64 %i.ji, 1 ; 2 uses
  %i.le = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next63.i.prol ; 2 uses
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !437
  %i.lg = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ji ; 2 uses
  store i32 %i.lf, ptr %i.lg, align 8, !tbaa !437
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lj = load <2 x double>, ptr %i.lh, align 8, !tbaa !118
  store <2 x double> %i.lj, ptr %i.li, align 8, !tbaa !118
  br label %.lr.ph56.i.prol.loopexit

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %indvars.iv62.i.unr = phi i64 [ %i.ji, %.lr.ph56.i.preheader ], [ %indvars.iv.next63.i.prol, %.lr.ph56.i.prol ]
  %i.lk = add nsw i64 %i.m, -1
  %i.ll = icmp eq i64 %i.lk, %i.ji
  br i1 %i.ll, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, label %.lr.ph56.i

.lr.ph.split.i105:                                ; preds = %.lr.ph.split.i105.preheader, %.lr.ph.split.i105
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i107, %.lr.ph.split.i105 ], [ %indvars.iv.i106.ph, %.lr.ph.split.i105.preheader ] ; 4 uses
  %i.lm = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.i106
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24 ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !440
  %i.lp = fmul double %i.lo, %i.jp
  %i.lq = trunc i64 %indvars.iv.i106 to i32
  %i.lr = sub i32 %.tr124, %i.lq
  %14 = sitofp i32 %i.lr to double
  %i.ls = fmul double %i.jl, %14
  %i.lt = fdiv double %i.lp, %i.ls
  store double %i.lt, ptr %i.ln, align 8, !tbaa !440
  %indvars.iv.next.i107 = add nsw i64 %indvars.iv.i106, -1
  %.not.i108 = icmp eq i64 %indvars.iv.i106, 0
  br i1 %.not.i108, label %.preheader.i, label %.lr.ph.split.i105, !llvm.loop !1379

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i.1, %.lr.ph56.i ], [ %indvars.iv62.i.unr, %.lr.ph56.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.lu = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next63.i ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !437
  %i.lw = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv62.i ; 2 uses
  store i32 %i.lv, ptr %i.lw, align 8, !tbaa !437
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.lz = load <2 x double>, ptr %i.lx, align 8, !tbaa !118
  store <2 x double> %i.lz, ptr %i.ly, align 8, !tbaa !118
  %indvars.iv.next63.i.1 = add nuw nsw i64 %indvars.iv62.i, 2 ; 3 uses
  %i.ma = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next63.i.1 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !437
  %i.mc = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next63.i ; 2 uses
  store i32 %i.mb, ptr %i.mc, align 8, !tbaa !437
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mf = load <2 x double>, ptr %i.md, align 8, !tbaa !118
  store <2 x double> %i.mf, ptr %i.me, align 8, !tbaa !118
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next63.i.1, %i.m
  br i1 %exitcond.not.i.1, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, label %.lr.ph56.i, !llvm.loop !41

_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit: ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %.preheader.i
  %.pre202 = load i32, ptr %i.el, align 4, !tbaa !88
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ac, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, %._crit_edge
  %.pre-phi = phi i32 [ %.tr124, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ], [ %.pre208, %._crit_edge ], [ %.pre208, %bb.ac ] ; 2 uses
  %i.mg = phi i32 [ %.pre202, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ], [ %i.en, %._crit_edge ], [ %i.en, %bb.ac ]
  %.075 = phi double [ %i.jl, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ], [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %bb.ac ]
  %.074 = phi double [ %i.jn, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ], [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %bb.ac ]
  %i.mh = insertelement <2 x double> poison, double %.075, i64 0
  %i.mi = shufflevector <2 x double> %i.mh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mj = fmul <2 x double> %i.jd, %i.mi          ; 2 uses
  %i.mk = extractelement <2 x double> %i.mj, i64 0
  tail call void @_ZNK8LightGBM4Tree13TreeSHAPByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEPSA_iiPNS0_11PathElementEddi(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, i32 noundef %.0.i, i32 noundef %.pre-phi, ptr noundef %i.n, double noundef %i.mk, double noundef %.074, i32 noundef %i.mg)
  %i.ml = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.ej
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !88
  %i.mo = extractelement <2 x double> %i.mj, i64 1
  br label %tailrecurse

._crit_edge162:                                   ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !431
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !443
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !445
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #12 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #42
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #44
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !443
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !444    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !423  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !418
  store ptr %i.w, ptr %3, align 8, !tbaa !418
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !423
  store ptr %3, ptr %i.x, align 8, !tbaa !418
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !446
  store ptr %i.z, ptr %3, align 8, !tbaa !418
  store ptr %3, ptr %i.y, align 8, !tbaa !446
  %i.aa = load ptr, ptr %3, align 8, !tbaa !418   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !443
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !88
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !423
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !423
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !445
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !445
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !208

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !208

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #42
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #43 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !446  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !446
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !418 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !88
  %i.l = sext i32 %i.k to i64
end_hunk_1
