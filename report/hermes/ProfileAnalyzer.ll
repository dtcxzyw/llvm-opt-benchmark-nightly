inline.NumInlined: 3091
inline.NumDeleted: 1557
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_T0_T1_":bb.a
bb.q:                                             ; preds = %bb.o
  %i.ds = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.dt = load i8, ptr %0, align 8, !tbaa !303    ; 2 uses
  br i1 %i.ds, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.du = load i8, ptr %i.da, align 8, !tbaa !303
  store i8 %i.du, ptr %0, align 8, !tbaa !303
  store i8 %i.dt, ptr %i.da, align 8, !tbaa !303
  %i.dv = load i64, ptr %i.h, align 8, !tbaa !109
  store i64 %.val1.i27.i.i, ptr %i.h, align 8, !tbaa !109
  store i64 %i.dv, ptr %i.dd, align 8, !tbaa !109
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.dw = load i8, ptr %i.cz, align 8, !tbaa !303
  store i8 %i.dw, ptr %0, align 8, !tbaa !303
  store i8 %i.dt, ptr %i.cz, align 8, !tbaa !303
  %i.dx = load i64, ptr %i.h, align 8, !tbaa !109
  store i64 %.val1.i.i.i, ptr %i.h, align 8, !tbaa !109
  store i64 %i.dx, ptr %i.db, align 8, !tbaa !109
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.ea, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2645, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !301 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.ea, %bb.t ] ; 10 uses
  %i.dy = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.dy, align 8, !tbaa !301 ; 2 uses
  %i.dz = icmp ugt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.dz, label %bb.t, label %.preheader.i.i.preheader, !llvm.loop !753

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.eb = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.ec = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i64, ptr %i.ec, align 8, !tbaa !301 ; 2 uses
  %i.ed = icmp ugt i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.ed, label %.preheader.i.i, label %bb.u, !llvm.loop !754

bb.u:                                             ; preds = %.preheader.i.i
  %i.ee = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ee, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEET_SH_SH_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.eg = load i8, ptr %.sroa.012.1.i.i, align 1, !tbaa !303
  %i.eh = load i8, ptr %.sroa.0.1.i.i, align 1, !tbaa !303
  store i8 %i.eh, ptr %.sroa.012.1.i.i, align 1, !tbaa !303
  store i8 %i.eg, ptr %.sroa.0.1.i.i, align 1, !tbaa !303
  store i64 %.val1.i9.i.i, ptr %i.eb, align 8, !tbaa !109
  store i64 %.val.i.i14.i, ptr %i.ef, align 8, !tbaa !109
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !755

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEET_SH_SH_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2645, i64 noundef %i.cx)
  %i.ei = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ej = sub i64 %i.ei, %i.a
  %.fr.i.i = freeze i64 %i.ej                     ; 2 uses
  %i.ek = ashr exact i64 %.fr.i.i, 4              ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 16
  br i1 %i.el, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_T0_.exit", !llvm.loop !748

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !69

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !206
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !69

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  store ptr %.0.i, ptr %0, align 8, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = phi ptr [ %.0.i, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84   ; 3 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 4 uses
  store ptr null, ptr %i.n, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !84
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !81   ; 2 uses
  %i.s = load i16, ptr %i.o, align 8, !tbaa !110
  %i.t = zext i16 %i.s to i64
  %i.u = urem i64 %i.t, %i.r
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.u
  store ptr %i.p, ptr %i.v, align 8, !tbaa !203
  %.02226 = load ptr, ptr %i.l, align 8, !tbaa !49 ; 2 uses
  %.not2427 = icmp eq ptr %.02226, null
  br i1 %.not2427, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %.02229 = phi ptr [ %.022, %bb.k ], [ %.02226, %bb.i ] ; 2 uses
  %.028 = phi ptr [ %i.x, %bb.k ], [ %i.n, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02229, i64 8
  %i.x = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 4 uses
  store ptr null, ptr %i.x, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  store ptr %i.x, ptr %.028, align 8, !tbaa !49
  %i.z = load i16, ptr %i.y, align 8, !tbaa !110
  %i.aa = zext i16 %i.z to i64
  %i.ab = urem i64 %i.aa, %i.r
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !203
  %.not25 = icmp eq ptr %i.ad, null
  br i1 %.not25, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  store ptr %.028, ptr %i.ac, align 8, !tbaa !203
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %.022 = load ptr, ptr %.02229, align 8, !tbaa !49 ; 2 uses
  %.not24 = icmp eq ptr %.022, null
  br i1 %.not24, label %.loopexit, label %.lr.ph, !llvm.loop !756

.loopexit:                                        ; preds = %bb.k, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !324  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !419    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #26
  unreachable

_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %4 = select i1 %3, i64 115292150460684697, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %4, 80
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #24 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 8 uses
  %i.p = load i32, ptr %2, align 8, !tbaa !315
  store i32 %i.p, ptr %i.o, align 8, !tbaa !315
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !80   ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !84  ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !205
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !205
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !317
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 4 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ai = icmp eq ptr %i.u, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !80
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !206
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !206
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ak = phi ptr [ %i.ag, %bb.c ], [ %i.u, %_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.am = load i16, ptr %i.al, align 2, !tbaa !110
  %i.an = zext i16 %i.am to i64
  %i.ao = urem i64 %i.an, %i.x
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  store ptr %i.y, ptr %i.ap, align 8, !tbaa !203
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit: ; preds = %bb.d, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.aq, align 8, !tbaa !328
  store i64 1, ptr %i.w, align 8, !tbaa !81
  store ptr null, ptr %i.ah, align 8, !tbaa !206
  store ptr %i.ah, ptr %i.t, align 8, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bu, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.bt, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.ar = load i32, ptr %.0911.i.i.i, align 8, !tbaa !315, !alias.scope !760, !noalias !757
  store i32 %i.ar, ptr %.012.i.i.i, align 8, !tbaa !315, !alias.scope !757, !noalias !760
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.at, i64 16, i1 false), !alias.scope !762
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !80, !alias.scope !760, !noalias !757 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !80, !alias.scope !757, !noalias !760
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !81, !alias.scope !760, !noalias !757 ; 2 uses
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !81, !alias.scope !757, !noalias !760
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !84, !alias.scope !760, !noalias !757 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !49, !alias.scope !757, !noalias !760
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !205, !alias.scope !760, !noalias !757
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !205, !alias.scope !757, !noalias !760
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !317, !alias.scope !762
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 4 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !206, !alias.scope !757, !noalias !760
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 4 uses
  %i.bk = icmp eq ptr %i.aw, %i.bj
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.bi, ptr %i.au, align 8, !tbaa !80, !alias.scope !757, !noalias !760
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !206, !alias.scope !760, !noalias !757
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !206, !alias.scope !757, !noalias !760
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.bm = phi ptr [ %i.bi, %bb.f ], [ %i.aw, %.lr.ph.i.i.i ]
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !110, !noalias !760
  %i.bp = zext i16 %i.bo to i64
  %i.bq = urem i64 %i.bp, %i.az
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bq
  store ptr %i.ba, ptr %i.br, align 8, !tbaa !203, !noalias !760
  br label %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  store i64 0, ptr %i.bs, align 8, !tbaa !328, !alias.scope !760, !noalias !757
  store i64 1, ptr %i.ay, align 8, !tbaa !81, !alias.scope !760, !noalias !757
  store ptr %i.bj, ptr %i.av, align 8, !tbaa !80, !alias.scope !760, !noalias !757
  store i64 0, ptr %i.bj, align 8, !alias.scope !760, !noalias !757
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false), !alias.scope !760, !noalias !757
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bt, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !763

_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit ], [ %i.bu, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.cz, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bv, %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 9 uses
  %.0911.i.i.i19 = phi ptr [ %i.cy, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.bw = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !315, !alias.scope !767, !noalias !764
  store i32 %i.bw, ptr %.012.i.i.i18, align 8, !tbaa !315, !alias.scope !764, !noalias !767
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bx, ptr noundef nonnull align 8 dereferenceable(72) %i.by, i64 16, i1 false), !alias.scope !769
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !80, !alias.scope !767, !noalias !764 ; 3 uses
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !80, !alias.scope !764, !noalias !767
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !81, !alias.scope !767, !noalias !764 ; 2 uses
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !81, !alias.scope !764, !noalias !767
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !84, !alias.scope !767, !noalias !764 ; 3 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !49, !alias.scope !764, !noalias !767
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !205, !alias.scope !767, !noalias !764
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !205, !alias.scope !764, !noalias !767
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !317, !alias.scope !769
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 4 uses
  store ptr null, ptr %i.cn, align 8, !tbaa !206, !alias.scope !764, !noalias !767
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 4 uses
  %i.cp = icmp eq ptr %i.cb, %i.co
  br i1 %i.cp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i17
  store ptr %i.cn, ptr %i.bz, align 8, !tbaa !80, !alias.scope !764, !noalias !767
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !206, !alias.scope !767, !noalias !764
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !206, !alias.scope !764, !noalias !767
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i17
  %i.cr = phi ptr [ %i.cn, %bb.i ], [ %i.cb, %.lr.ph.i.i.i17 ]
  %.not.i.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !110, !noalias !767
  %i.cu = zext i16 %i.ct to i64
  %i.cv = urem i64 %i.cu, %i.ce
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cv
  store ptr %i.cf, ptr %i.cw, align 8, !tbaa !203, !noalias !767
  br label %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.k, %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  store i64 0, ptr %i.cx, align 8, !tbaa !328, !alias.scope !767, !noalias !764
  store i64 1, ptr %i.cd, align 8, !tbaa !81, !alias.scope !767, !noalias !764
  store ptr %i.co, ptr %i.ca, align 8, !tbaa !80, !alias.scope !767, !noalias !764
  store i64 0, ptr %i.co, align 8, !alias.scope !767, !noalias !764
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !alias.scope !767, !noalias !764
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 80 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 80 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.cy, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24, label %.lr.ph.i.i.i17, !llvm.loop !763

_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24: ; preds = %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.bv, %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.cz, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !327
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dd) #22
  br label %_ZNSt12_Vector_baseISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24, %bb.l
  store ptr %i.n, ptr %0, align 8, !tbaa !419
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !324
  %i.de = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %4
  store ptr %i.de, ptr %i.da, align 8, !tbaa !327
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.std::pair.217", align 8    ; 11 uses
  %4 = alloca %"struct.std::pair.217", align 8    ; 11 uses
  %5 = alloca %"struct.std::pair.217", align 8    ; 11 uses
  %6 = alloca %"struct.std::pair.217", align 8    ; 11 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 1280
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph70

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEET_SG_SG_T0_.exit"
  %i.i = icmp eq i64 %i.fl, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph70, !llvm.loop !770

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa66 = phi i64 [ %i.c, %.lr.ph ], [ %i.gr, %bb.b ]
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa66, 80             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.k = add nsw i64 %i.j, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit17.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.bp, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit17.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ab = getelementptr inbounds [80 x i8], ptr %0, i64 %.08.i.i.i ; 9 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !315 ; 2 uses
  store i32 %i.ac, ptr %5, align 8, !tbaa !315
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !81 ; 4 uses
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !84 ; 3 uses
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !205 ; 2 uses
  store i64 %i.al, ptr %i.q, align 8, !tbaa !205
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !317
  store ptr null, ptr %i.s, align 8, !tbaa !206
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 4 uses
  %i.ao = icmp eq ptr %i.af, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.s, ptr %i.n, align 8, !tbaa !80
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !206
  store ptr %i.ap, ptr %i.s, align 8, !tbaa !206
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi ptr [ %i.s, %bb.d ], [ %i.af, %bb.c ] ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !110
  %i.at = zext i16 %i.as to i64
  %i.au = urem i64 %i.at, %i.ah
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  store ptr %i.p, ptr %i.av, align 8, !tbaa !203
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !84
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.aw = phi ptr [ null, %bb.e ], [ %.pre.i.i.i, %bb.f ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i64 0, ptr %i.ax, align 8, !tbaa !328
  store i64 1, ptr %i.ag, align 8, !tbaa !81
  store ptr null, ptr %i.an, align 8, !tbaa !206
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i32 %i.ac, ptr %6, align 8, !tbaa !315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 16, i1 false)
  store ptr %i.aq, ptr %i.u, align 8, !tbaa !80
  store i64 %i.ah, ptr %i.v, align 8, !tbaa !81
  store ptr %i.aw, ptr %i.w, align 8, !tbaa !49
  store i64 %i.al, ptr %i.x, align 8, !tbaa !205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !317
  store ptr null, ptr %i.z, align 8, !tbaa !206
  %i.ay = icmp eq ptr %i.aq, %i.s
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i
  store ptr %i.z, ptr %i.u, align 8, !tbaa !80
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !206
  store ptr %i.az, ptr %i.z, align 8, !tbaa !206
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i
  %i.ba = phi ptr [ %i.z, %bb.g ], [ %i.aq, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i ]
  %.not.i.i.i.i.i.i9.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i9.i.i.i, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !110
  %i.bd = zext i16 %i.bc to i64
  %i.be = urem i64 %i.bd, %i.ah
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.be
  store ptr %i.w, ptr %i.bf, align 8, !tbaa !203
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i: ; preds = %bb.i, %bb.h
  store i64 0, ptr %i.aa, align 8, !tbaa !328
  store i64 1, ptr %i.o, align 8, !tbaa !81
  store ptr null, ptr %i.s, align 8, !tbaa !206
  store ptr %i.s, ptr %i.n, align 8, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_T0_SH_T1_T2_"(ptr nonnull %0, i64 noundef %.08.i.i.i, i64 noundef %i.j, ptr noundef %6)
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !84  ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bg, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i ] ; 2 uses
  %i.bh = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !49 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i, i64 noundef 24) #22
  %.not.i.i.i.i.i.i11.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i11.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !95

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.bj = load i64, ptr %i.v, align 8, !tbaa !81
  %i.bk = shl i64 %i.bj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.bk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !80  ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.z
  br i1 %i.bm, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i
  %i.bn = load i64, ptr %i.v, align 8, !tbaa !81
  %i.bo = shl i64 %i.bn, 3
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #22
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i: ; preds = %bb.j, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.bp = add nsw i64 %.08.i.i.i, -1
  %i.bq = load ptr, ptr %i.p, align 8, !tbaa !84  ; 2 uses
  %.not5.i.i.i.i.i.i12.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not5.i.i.i.i.i.i12.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i16.i.i.i, label %.lr.ph.i.i.i.i.i.i13.i.i.i

.lr.ph.i.i.i.i.i.i13.i.i.i:                       ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i, %.lr.ph.i.i.i.i.i.i13.i.i.i
  %.06.i.i.i.i.i.i14.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i13.i.i.i ], [ %i.bq, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i ] ; 2 uses
  %i.br = load ptr, ptr %.06.i.i.i.i.i.i14.i.i.i, align 8, !tbaa !49 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i14.i.i.i, i64 noundef 24) #22
  %.not.i.i.i.i.i.i15.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i15.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i16.i.i.i, label %.lr.ph.i.i.i.i.i.i13.i.i.i, !llvm.loop !95

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i16.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i13.i.i.i, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !80
  %i.bt = load i64, ptr %i.o, align 8, !tbaa !81
  %i.bu = shl i64 %i.bt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bs, i8 0, i64 %i.bu, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.bv = load ptr, ptr %i.n, align 8, !tbaa !80  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.s
  br i1 %i.bw, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit17.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i16.i.i.i
  %i.bx = load i64, ptr %i.o, align 8, !tbaa !81
  %i.by = shl i64 %i.bx, 3
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #22
end_hunk_0
