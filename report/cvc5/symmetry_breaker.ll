inline.NumInlined: 3781
inline.NumDeleted: 1026
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !169  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !169
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !30 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !169
  store ptr %i.o, ptr %.02530, align 8, !tbaa !30
  store ptr %.02530, ptr %i.g, align 8, !tbaa !169
  store ptr %i.g, ptr %i.m, align 8, !tbaa !35
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !30
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !35
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !30
  store ptr %i.r, ptr %.02530, align 8, !tbaa !30
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !35
  store ptr %.02530, ptr %i.s, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !657

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !156    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !157
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #30
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !157
  store ptr %.0.i, ptr %0, align 8, !tbaa !156
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph33

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
  %i.h = icmp eq i64 %i.aa, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph33, !llvm.loop !658

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge16.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %storemerge16.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %storemerge16.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph33:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1632 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01731 = phi i64 [ %i.aa, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.ad, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1632, i64 -8
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr nonnull %i.f, ptr %i.k, ptr nonnull %i.l)
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i: ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge, %.lr.ph33
  %.sroa.010.0.i.i = phi ptr [ %i.f, %.lr.ph33 ], [ %i.t, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1632, %.lr.ph33 ], [ %.sroa.0.1.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !31
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 1099511627775              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %i.p = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !31 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1099511627775
  %i.s = icmp samesign ult i64 %i.r, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.s, label %bb.c, label %.preheader.i.i, !llvm.loop !659

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.c ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.u = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !31 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 1099511627775
  %i.x = icmp samesign ult i64 %i.o, %i.w
  br i1 %i.x, label %.preheader.i.i, label %bb.d, !llvm.loop !660

bb.d:                                             ; preds = %.preheader.i.i
  %i.y = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.y, label %bb.e, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i, !prof !28

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.u, ptr %.sroa.010.1.i.i, align 8, !tbaa !31
  %.pre.i.i.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !31
  %i.z = icmp eq ptr %.pre.i.i.i.i, %i.p
  br i1 %i.z, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge, label %bb.f, !prof !661

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i
  store ptr %i.p, ptr %.sroa.0.1.i.i, align 8, !tbaa !31
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge: ; preds = %bb.f, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i, %bb.e
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i, !llvm.loop !662

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %bb.d
  %i.aa = add nsw i64 %.01731, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1632, i64 noundef %i.aa)
  %i.ab = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ac = sub i64 %i.ab, %i.a
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 16
  br i1 %i.ae, label %bb.b, label %.loopexit, !llvm.loop !658

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i
  %indvar = phi i64 [ %indvar.next, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.07.020.i.idx = phi i64 [ %.sroa.07.020.i.add, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i ], [ 8, %bb.a ] ; 4 uses
  %.pn19.i = phi ptr [ %.sroa.07.020.i.ptr, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %.sroa.07.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.020.i.idx ; 5 uses
  %i.e = load ptr, ptr %.sroa.07.020.i.ptr, align 8, !tbaa !31 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = and i64 %i.f, 1099511627775              ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !31
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627775
  %i.k = icmp samesign ult i64 %i.g, %i.j
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.e

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %.lr.ph.i
  %i.l = lshr exact i64 %.sroa.07.020.i.idx, 3    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  %i.n = and i64 %.sroa.07.020.i.idx, 8
  %lcmp.mod70.not.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod70.not.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i
  %i.o = getelementptr inbounds i8, ptr %.sroa.07.020.i.ptr, i64 -8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i.i.i.i.i.prol = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i.i.prol, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.prol, label %bb.b, !prof !28

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.prol
  store ptr %i.r, ptr %i.p, align 8, !tbaa !31
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.prol

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.prol: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.prol
  %i.s = add nsw i64 %i.l, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.s, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.p, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.07.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.o, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.prol ]
  %i.t = icmp eq i64 %indvar, 0
  br i1 %i.t, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.1
  %.010.i.i.i.i.i.i = phi i64 [ %i.ac, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.1 ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.z, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.1 ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.y, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.1 ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i, label %bb.c, !prof !28

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.x, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !31  ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.1, label %bb.d, !prof !28

bb.d:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !31
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.1

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.1: ; preds = %bb.d, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i
  %i.ac = add nsw i64 %.010.i.i.i.i.i.i, -2
  %i.ad = icmp sgt i64 %.010.i.i.i.i.i.i, 2
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i, !llvm.loop !663

.loopexit.i:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !31
  %i.ae = icmp eq ptr %.pre.i, %i.e
  br i1 %i.ae, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.sink.split.i, !prof !28

bb.e:                                             ; preds = %.lr.ph.i
  %i.af = load ptr, ptr %.pn19.i, align 8, !tbaa !31 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 1099511627775
  %i.ai = icmp samesign ult i64 %i.g, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i, !prof !664

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i
  %i.aj = phi i64 [ %i.am, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i ], [ %i.f, %bb.e ]
  %i.ak = phi ptr [ %i.ao, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i ], [ %i.af, %bb.e ] ; 2 uses
  %.sroa.0.012.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i ], [ %.pn19.i, %bb.e ] ; 4 uses
  %.sroa.07.011.i.i = phi ptr [ %.sroa.0.012.i.i, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i ], [ %.sroa.07.020.i.ptr, %bb.e ] ; 2 uses
  %i.al = load ptr, ptr %.sroa.07.011.i.i, align 8, !tbaa !31
  %.not.i.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i, label %bb.f, !prof !28

bb.f:                                             ; preds = %.lr.ph.i.i
  store ptr %i.ak, ptr %.sroa.07.011.i.i, align 8, !tbaa !31
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.am = phi i64 [ %i.aj, %.lr.ph.i.i ], [ %.pre.i.i, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i, i64 -8 ; 2 uses
  %i.an = and i64 %i.am, 1099511627775
  %i.ao = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !31 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, 1099511627775
  %i.ar = icmp samesign ult i64 %i.an, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !665

._crit_edge.i.i:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i
  %.pre13.i.i = load ptr, ptr %.sroa.0.012.i.i, align 8, !tbaa !31
  %i.as = icmp eq ptr %.pre13.i.i, %i.e
  br i1 %i.as, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.sink.split.i, !prof !661

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.sink.split.i: ; preds = %._crit_edge.i.i, %.loopexit.i
  %.sroa.0.012.i.lcssa.sink.i = phi ptr [ %0, %.loopexit.i ], [ %.sroa.0.012.i.i, %._crit_edge.i.i ]
  store ptr %i.e, ptr %.sroa.0.012.i.lcssa.sink.i, align 8, !tbaa !31
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i: ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.sink.split.i, %._crit_edge.i.i, %bb.e, %.loopexit.i
  %.sroa.07.020.i.add = add nuw nsw i64 %.sroa.07.020.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.07.020.i.add, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i, !llvm.loop !666

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not4.i = icmp eq ptr %i.at, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.05.i = phi ptr [ %i.bl, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.at, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit ] ; 4 uses
  %i.au = load ptr, ptr %.sroa.0.05.i, align 8, !tbaa !31 ; 4 uses
  %.sroa.0.010.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = and i64 %i.av, 1099511627775
  %i.ax = load ptr, ptr %.sroa.0.010.i.i, align 8, !tbaa !31 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 1099511627775
  %i.ba = icmp samesign ult i64 %i.aw, %i.az
  br i1 %i.ba, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !prof !664

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i13
  %i.bb = phi i64 [ %i.be, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i13 ], [ %i.av, %.lr.ph.i6 ]
  %i.bc = phi ptr [ %i.bg, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i13 ], [ %i.ax, %.lr.ph.i6 ] ; 2 uses
  %.sroa.0.012.i.i9 = phi ptr [ %.sroa.0.0.i.i14, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i13 ], [ %.sroa.0.010.i.i, %.lr.ph.i6 ] ; 4 uses
  %.sroa.07.011.i.i10 = phi ptr [ %.sroa.0.012.i.i9, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i13 ], [ %.sroa.0.05.i, %.lr.ph.i6 ] ; 2 uses
  %i.bd = load ptr, ptr %.sroa.07.011.i.i10, align 8, !tbaa !31
  %.not.i.i.i11 = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.i.i.i11, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i13, label %bb.g, !prof !28

bb.g:                                             ; preds = %.lr.ph.i.i8
  store ptr %i.bc, ptr %.sroa.07.011.i.i10, align 8, !tbaa !31
  %.pre.i.i12 = load i64, ptr %i.au, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i13

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i13: ; preds = %bb.g, %.lr.ph.i.i8
  %i.be = phi i64 [ %i.bb, %.lr.ph.i.i8 ], [ %.pre.i.i12, %bb.g ] ; 2 uses
  %.sroa.0.0.i.i14 = getelementptr inbounds i8, ptr %.sroa.0.012.i.i9, i64 -8 ; 2 uses
  %i.bf = and i64 %i.be, 1099511627775
  %i.bg = load ptr, ptr %.sroa.0.0.i.i14, align 8, !tbaa !31 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 1099511627775
  %i.bj = icmp samesign ult i64 %i.bf, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i8, label %._crit_edge.i.i15, !llvm.loop !665

._crit_edge.i.i15:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i13
  %.pre13.i.i16 = load ptr, ptr %.sroa.0.012.i.i9, align 8, !tbaa !31
  %i.bk = icmp eq ptr %.pre13.i.i16, %i.au
  br i1 %i.bk, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %bb.h, !prof !661

bb.h:                                             ; preds = %._crit_edge.i.i15
  store ptr %i.au, ptr %.sroa.0.012.i.i9, align 8, !tbaa !31
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %bb.h, %._crit_edge.i.i15, %.lr.ph.i6
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i7 = icmp eq ptr %i.bl, %1
  br i1 %.not.i7, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6, !llvm.loop !667

bb.i:                                             ; preds = %bb.a
  %i.bm = icmp eq ptr %0, %1
  %.sroa.07.017.i18 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18.i19 = icmp eq ptr %.sroa.07.017.i18, %1
  %or.cond = select i1 %i.bm, i1 true, i1 %.not18.i19
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %bb.i, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i23
  %.sroa.07.020.i21 = phi ptr [ %.sroa.07.0.i24, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i23 ], [ %.sroa.07.017.i18, %bb.i ] ; 7 uses
  %.pn19.i22 = phi ptr [ %.sroa.07.020.i21, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i23 ], [ %0, %bb.i ] ; 4 uses
  %i.bn = load ptr, ptr %.sroa.07.020.i21, align 8, !tbaa !31 ; 5 uses
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = and i64 %i.bo, 1099511627775            ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = and i64 %i.br, 1099511627775
  %i.bt = icmp samesign ult i64 %i.bp, %i.bs
  br i1 %i.bt, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i20
  %i.bu = ptrtoint ptr %.sroa.07.020.i21 to i64
  %i.bv = sub i64 %i.bu, %i.b                     ; 3 uses
  %i.bw = ashr exact i64 %i.bv, 3                 ; 3 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.preheader.i39, label %.loopexit.i37

.lr.ph.i.i.i.i.i.preheader.i39:                   ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %.pn19.i22, i64 16
  %i.bz = and i64 %i.bv, 8
  %lcmp.mod.not = icmp eq i64 %i.bz, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i.i.i.i40.prol

.lr.ph.i.i.i.i.i.i40.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i39
  %i.ca = getelementptr inbounds i8, ptr %.sroa.07.020.i21, i64 -8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn19.i22, i64 8 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !31
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
end_hunk_0
