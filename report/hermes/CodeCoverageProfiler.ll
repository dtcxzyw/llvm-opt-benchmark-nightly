inline.NumInlined: 726
inline.NumDeleted: 400
begin_hunk_0_@_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EEC2ERKS5_:bb.a

_ZNSt15__new_allocatorIN6hermes2vm20CodeCoverageProfiler8FuncInfoEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #15
  br label %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EEC2EmRKS4_.exit

_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EEC2EmRKS4_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN6hermes2vm20CodeCoverageProfiler8FuncInfoEE8allocateEmPKv.exit.i.i.i
  %i.k = phi ptr [ %i.j, %_ZNSt15__new_allocatorIN6hermes2vm20CodeCoverageProfiler8FuncInfoEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !140
  %i.o = load ptr, ptr %1, align 8, !tbaa !197    ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm20CodeCoverageProfiler8FuncInfoESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EEC2EmRKS4_.exit, %_ZSt10_ConstructIN6hermes2vm20CodeCoverageProfiler8FuncInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ah, %_ZSt10_ConstructIN6hermes2vm20CodeCoverageProfiler8FuncInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EEC2EmRKS4_.exit ] ; 5 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ag, %_ZSt10_ConstructIN6hermes2vm20CodeCoverageProfiler8FuncInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EEC2EmRKS4_.exit ] ; 4 uses
  %i.q = load i64, ptr %.sroa.04.08.i.i.i.i, align 8
  store i64 %i.q, ptr %.09.i.i.i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !163
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !144  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.w, ptr %i.a, align 8, !tbaa !45
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !137
  %i.z = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.z, ptr %i.t, align 8, !tbaa !138
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.aa = phi ptr [ %i.y, %bb.d ], [ %i.t, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.w, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt10_ConstructIN6hermes2vm20CodeCoverageProfiler8FuncInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !138
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !138
  br label %_ZSt10_ConstructIN6hermes2vm20CodeCoverageProfiler8FuncInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZSt10_ConstructIN6hermes2vm20CodeCoverageProfiler8FuncInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN6hermes2vm20CodeCoverageProfiler8FuncInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !144
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !137
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm20CodeCoverageProfiler8FuncInfoESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !198

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm20CodeCoverageProfiler8FuncInfoESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6hermes2vm20CodeCoverageProfiler8FuncInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EEC2EmRKS4_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.k, %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EEC2EmRKS4_.exit ], [ %i.ah, %_ZSt10_ConstructIN6hermes2vm20CodeCoverageProfiler8FuncInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.l, align 8, !tbaa !136
  ret void
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !199
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISE_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISE_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #15 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISE_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISE_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !196  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !196
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !123 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !193
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !192  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !196
  store ptr %i.o, ptr %.031, align 8, !tbaa !123
  store ptr %.031, ptr %i.g, align 8, !tbaa !196
  store ptr %i.g, ptr %i.m, align 8, !tbaa !192
  %i.p = load ptr, ptr %.031, align 8, !tbaa !123
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !192
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !123
  store ptr %i.r, ptr %.031, align 8, !tbaa !123
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !192
  store ptr %.031, ptr %i.s, align 8, !tbaa !123
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !200

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !120    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !122
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #17
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !122
  store ptr %.0.i, ptr %0, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE17_M_realloc_insertIJRKjS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136  ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !133    ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.b, label %_ZNKSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.j = sdiv exact i64 %i.h, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i, %i.j    ; 2 uses
  %6 = icmp ult i64 %i.k, %i.j
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 230584300921369395)
  %7 = select i1 %6, i64 230584300921369395, i64 %i.l ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.g
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %7, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #15
  br label %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.s = load i32, ptr %2, align 4, !tbaa !3
  %i.t = load i32, ptr %3, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !163
  %i.v = load ptr, ptr %4, align 8, !tbaa !137    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !144  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 %i.x, ptr %i.b, align 8, !tbaa !45
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #14 ; 2 uses
  store ptr %i.z, ptr %5, align 8, !tbaa !137
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !45
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !138
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit
  %i.ab = phi ptr [ %i.z, %bb.d ], [ %i.u, %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.x, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !138
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !144
  %i.af = load ptr, ptr %5, align 8, !tbaa !137
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  store i32 %i.s, ptr %i.r, align 8, !tbaa !176
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.t, ptr %i.ah, align 4, !tbaa !178
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !163
  %i.ak = load ptr, ptr %5, align 8, !tbaa !137   ; 2 uses
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !144 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.al, ptr %i.a, align 8, !tbaa !45
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !137
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !138
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ap = phi ptr [ %i.an, %bb.g ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.al, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !138
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !138
  br label %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.ak, i64 %i.al, i1 false)
  br label %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !144
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !137
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.av = load ptr, ptr %5, align 8, !tbaa !137   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.u
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ax = load i64, ptr %i.u, align 8, !tbaa !138
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not10.i.i.i = icmp eq ptr %i.e, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bp, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.az = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !204, !noalias !201
  store i64 %i.az, ptr %.012.i.i.i, align 8, !alias.scope !201, !noalias !204
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !163, !alias.scope !201, !noalias !204
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !137, !alias.scope !204, !noalias !201 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !144, !alias.scope !204, !noalias !201 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false), !alias.scope !206
  br label %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !137, !alias.scope !201, !noalias !204
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !138, !alias.scope !204, !noalias !201
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !138, !alias.scope !201, !noalias !204
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !144, !alias.scope !204, !noalias !201
  br label %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.j
  %i.bl = phi i64 [ %i.bh, %bb.j ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !144, !alias.scope !201, !noalias !204
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !137, !alias.scope !204, !noalias !201
  store i64 0, ptr %i.bm, align 8, !tbaa !144, !alias.scope !204, !noalias !201
  store i8 0, ptr %i.be, align 8, !tbaa !138, !alias.scope !204, !noalias !201
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !207

_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bp, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i18 = icmp eq ptr %1, %i.d
  br i1 %.not10.i.i.i18, label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25
  %.012.i.i.i20 = phi ptr [ %i.ch, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ], [ %i.bq, %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 5 uses
  %.0911.i.i.i21 = phi ptr [ %i.cg, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ], [ %1, %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.br = load i64, ptr %.0911.i.i.i21, align 8, !alias.scope !211, !noalias !208
  store i64 %i.br, ptr %.012.i.i.i20, align 8, !alias.scope !208, !noalias !211
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 24 ; 3 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !163, !alias.scope !208, !noalias !211
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !137, !alias.scope !211, !noalias !208 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 24 ; 5 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22

bb.k:                                             ; preds = %.lr.ph.i.i.i19
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !144, !alias.scope !211, !noalias !208 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.cb, i1 false), !alias.scope !213
  br label %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22: ; preds = %.lr.ph.i.i.i19
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !137, !alias.scope !208, !noalias !211
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !138, !alias.scope !211, !noalias !208
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !138, !alias.scope !208, !noalias !211
  %.phi.trans.insert.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16
  %.pre.i.i.i.i24 = load i64, ptr %.phi.trans.insert.i.i.i.i23, align 8, !tbaa !144, !alias.scope !211, !noalias !208
  br label %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25

_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22, %bb.k
  %i.cd = phi i64 [ %i.bz, %bb.k ], [ %.pre.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 16
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !144, !alias.scope !208, !noalias !211
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !137, !alias.scope !211, !noalias !208
  store i64 0, ptr %i.ce, align 8, !tbaa !144, !alias.scope !211, !noalias !208
  store i8 0, ptr %i.bw, align 8, !tbaa !138, !alias.scope !211, !noalias !208
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 40 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 40 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.cg, %i.d
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, label %.lr.ph.i.i.i19, !llvm.loop !207

_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28: ; preds = %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25, %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i27 = phi ptr [ %i.bq, %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ch, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.e, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !140
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.g
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.cl) #17
  br label %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, %bb.l
  store ptr %i.q, ptr %0, align 8, !tbaa !133
  store ptr %.0.lcssa.i.i.i27, ptr %i.c, align 8, !tbaa !136
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %7
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !140
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE17_M_realloc_insertIJRKjS8_RN4llvh9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136  ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !133    ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.b, label %_ZNKSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.j = sdiv exact i64 %i.h, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i, %i.j    ; 2 uses
  %6 = icmp ult i64 %i.k, %i.j
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 230584300921369395)
  %7 = select i1 %6, i64 230584300921369395, i64 %i.l ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.g
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %7, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #15
  br label %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.s = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.u = load ptr, ptr %4, align 8, !tbaa !185, !noalias !220 ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %._crit_edge.i.i.i.thread, label %bb.d

._crit_edge.i.i.i.thread:                         ; preds = %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !163, !alias.scope !220
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !144, !alias.scope !220
  store i8 0, ptr %i.v, align 8, !tbaa !138, !alias.scope !220
  store i32 %i.s, ptr %i.r, align 8, !tbaa !176
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.t, ptr %i.x, align 4, !tbaa !178
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.y, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !45
  br label %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_M_allocateEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !188, !noalias !220 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !163, !alias.scope !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !220
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !45, !noalias !220
  %i.ad = icmp ugt i64 %i.ab, 15
  br i1 %i.ad, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #14 ; 2 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !137, !alias.scope !220
  %i.af = load i64, ptr %i.b, align 8, !tbaa !45, !noalias !220
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !138, !alias.scope !220
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.ag = phi ptr [ %i.ae, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load i8, ptr %i.u, align 1, !tbaa !138
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !138
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.u, i64 %i.ab, i1 false)
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !45, !noalias !220 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !144, !alias.scope !220
  %i.ak = load ptr, ptr %5, align 8, !tbaa !137, !alias.scope !220
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !220
  %.pre = load ptr, ptr %5, align 8, !tbaa !137   ; 2 uses
  %.pre35 = load i64, ptr %i.aj, align 8, !tbaa !144 ; 4 uses
  store i32 %i.s, ptr %i.r, align 8, !tbaa !176
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.t, ptr %i.am, align 4, !tbaa !178
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %.pre35, ptr %i.a, align 8, !tbaa !45
  %i.ap = icmp ugt i64 %.pre35, 15
  br i1 %i.ap, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !137
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !138
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.as = phi ptr [ %i.aq, %bb.h ], [ %i.ao, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 2 uses
  switch i64 %.pre35, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.at = load i8, ptr %.pre, align 1, !tbaa !138
  store i8 %i.at, ptr %i.as, align 1, !tbaa !138
  br label %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %.pre, i64 %.pre35, i1 false)
  br label %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.au = phi ptr [ %i.y, %._crit_edge.i.i.i.thread ], [ %i.an, %._crit_edge.i.i.i ], [ %i.an, %bb.i ], [ %i.an, %bb.j ]
  %i.av = load i64, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !144
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !137
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.az = load ptr, ptr %5, align 8, !tbaa !137   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !138
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not10.i.i.i = icmp eq ptr %i.e, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.bt, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.be = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !224, !noalias !221
  store i64 %i.be, ptr %.012.i.i.i, align 8, !alias.scope !221, !noalias !224
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !163, !alias.scope !221, !noalias !224
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !137, !alias.scope !224, !noalias !221 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !144, !alias.scope !224, !noalias !221 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false), !alias.scope !226
  br label %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !137, !alias.scope !221, !noalias !224
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !138, !alias.scope !224, !noalias !221
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !138, !alias.scope !221, !noalias !224
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !144, !alias.scope !224, !noalias !221
  br label %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.k
  %i.bq = phi i64 [ %i.bm, %bb.k ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !144, !alias.scope !221, !noalias !224
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !137, !alias.scope !224, !noalias !221
  store i64 0, ptr %i.br, align 8, !tbaa !144, !alias.scope !224, !noalias !221
  store i8 0, ptr %i.bj, align 8, !tbaa !138, !alias.scope !224, !noalias !221
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bt, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !207

_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bu, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i18 = icmp eq ptr %1, %i.d
  br i1 %.not10.i.i.i18, label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25
  %.012.i.i.i20 = phi ptr [ %i.cm, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ], [ %i.bv, %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 5 uses
  %.0911.i.i.i21 = phi ptr [ %i.cl, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ], [ %1, %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.bw = load i64, ptr %.0911.i.i.i21, align 8, !alias.scope !230, !noalias !227
  store i64 %i.bw, ptr %.012.i.i.i20, align 8, !alias.scope !227, !noalias !230
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 24 ; 3 uses
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !163, !alias.scope !227, !noalias !230
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !137, !alias.scope !230, !noalias !227 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 24 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22

bb.l:                                             ; preds = %.lr.ph.i.i.i19
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !144, !alias.scope !230, !noalias !227 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false), !alias.scope !232
  br label %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22: ; preds = %.lr.ph.i.i.i19
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !137, !alias.scope !227, !noalias !230
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !138, !alias.scope !230, !noalias !227
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !138, !alias.scope !227, !noalias !230
  %.phi.trans.insert.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16
  %.pre.i.i.i.i24 = load i64, ptr %.phi.trans.insert.i.i.i.i23, align 8, !tbaa !144, !alias.scope !230, !noalias !227
  br label %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25

_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22, %bb.l
  %i.ci = phi i64 [ %i.ce, %bb.l ], [ %.pre.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 16
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !144, !alias.scope !227, !noalias !230
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !137, !alias.scope !230, !noalias !227
  store i64 0, ptr %i.cj, align 8, !tbaa !144, !alias.scope !230, !noalias !227
  store i8 0, ptr %i.cb, align 8, !tbaa !138, !alias.scope !230, !noalias !227
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 40 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 40 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.cl, %i.d
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, label %.lr.ph.i.i.i19, !llvm.loop !207

_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28: ; preds = %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25, %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i27 = phi ptr [ %i.bv, %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.cm, %_ZSt19__relocate_object_aIN6hermes2vm20CodeCoverageProfiler8FuncInfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.e, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !140
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.g
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.cq) #17
  br label %_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, %bb.m
  store ptr %i.q, ptr %0, align 8, !tbaa !133
  store ptr %.0.lcssa.i.i.i27, ptr %i.c, align 8, !tbaa !136
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %7
  store ptr %i.cr, ptr %i.cn, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJRS7_EEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOS5_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.290") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !27     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !29     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !51

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !52

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !53, !llvm.loop !233

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !234
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !24 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !52

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !235
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !52

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !24
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !234
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 3 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !24
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !29
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIS5_JRS7_EEEPSB_SG_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !235
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !235
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIS5_JRS7_EEEPSB_SG_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIS5_JRS7_EEEPSB_SG_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %2, align 8, !tbaa !29
  store ptr %i.av, ptr %i.an, align 8, !tbaa !29
  %i.aw = load ptr, ptr %1, align 8, !tbaa !27
  %i.ax = load i32, ptr %i.c, align 8, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIS5_JRS7_EEEPSB_SG_OT_DpOT0_.exit
  %.sink34 = phi i32 [ %i.ax, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIS5_JRS7_EEEPSB_SG_OT_DpOT0_.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.d ]
  %.sink32 = phi ptr [ %i.aw, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIS5_JRS7_EEEPSB_SG_OT_DpOT0_.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.d ]
  %.sink31 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIS5_JRS7_EEEPSB_SG_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIS5_JRS7_EEEPSB_SG_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.ay = zext i32 %.sink34 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sink32, i64 %i.ay
  store ptr %.sink31, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ba, align 8, !tbaa !236
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPKSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02944.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02944.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPKSB_.exit, label %.lr.ph.i, !prof !51

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02947.i = phi i32 [ %.029.i, %bb.d ], [ %.02944.i, %bb.b ]
  %.02746.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %bb.c, label %bb.d, !prof !52

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03245.i, null
  %i.s = select i1 %.not.i, ptr %i.q, ptr %.03245.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPKSB_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq ptr %i.p, inttoptr (i64 -16 to ptr)
  %i.u = icmp eq ptr %.03245.i, null
  %or.cond.not.i = select i1 %i.t, i1 %i.u, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.q, ptr %.03245.i
  %i.v = add i32 %.02746.i, 1
  %i.w = add i32 %.02746.i, %.02947.i
  %.029.i = and i32 %i.w, %i.k                    ; 2 uses
  %i.x = zext i32 %.029.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29   ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPKSB_.exit, label %.lr.ph.i, !prof !53, !llvm.loop !233

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPKSB_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !234
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
end_hunk_0
