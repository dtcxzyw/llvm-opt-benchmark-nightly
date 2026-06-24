inline.NumInlined: 442
inline.NumDeleted: 301
begin_hunk_0_@_ZN2v88internal18PretenuringHandlerC2EPNS0_4HeapE:bb.a
  br label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.k, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.b, %bb.c ], [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8
  store i64 %i.g, ptr %i.c, align 8
  br label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEEC2EmRKS6_RKS8_RKSC_.exit

_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEEC2EmRKS6_RKS8_RKSC_.exit: ; preds = %bb.a, %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.o, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18PretenuringHandlerD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEEEclEPS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  tail call void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull %i.d, i64 noundef %i.j) #14
  br label %_ZNKSt14default_deleteIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEEEclEPS4_.exit.i

_ZNKSt14default_deleteIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEEEclEPS4_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #17
  br label %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEEEclEPS4_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.m, %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EED2Ev.exit ] ; 2 uses
  %i.n = load ptr, ptr %.06.i.i.i.i, align 8      ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #17
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EED2Ev.exit
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.v = load i64, ptr %i.p, align 8
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #17
  br label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEED2Ev.exit

_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN2v88internal18PretenuringHandler28GetMinMementoCountForTestingEv() local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 100
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18PretenuringHandler38MergeAllocationSitePretenuringFeedbackERKSt13unordered_mapINS0_6TaggedINS0_14AllocationSiteEEEmNS0_6Object6HasherESt8equal_toIS5_ESaISt4pairIKS5_mEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.240", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.035 = load ptr, ptr %i.a, align 8    ; 2 uses
  %i.b = icmp eq ptr %.sroa.017.035, null
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.017.036 = phi ptr [ %.sroa.017.035, %.lr.ph ], [ %.sroa.017.0, %bb.f ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.017.036, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = and i64 %i.h, 3
  %i.j = icmp eq i64 %i.i, 0
  %i.k = add nuw i64 %i.h, 1
  %spec.select = select i1 %i.j, i64 %i.k, i64 %i.e ; 2 uses
  %i.l = add i64 %spec.select, -1
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp eq i16 %i.q, 259
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.t = load atomic i32, ptr %i.s monotonic, align 8
  %i.u = and i32 %i.t, 469762048
  %i.v = icmp eq i32 %i.u, 268435456
  br i1 %i.v, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.036, i64 16
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = load atomic i32, ptr %i.s monotonic, align 8
  %i.aa = and i32 %i.z, 67108863
  %i.ab = add nsw i32 %i.aa, %i.y                 ; 2 uses
  %i.ac = load atomic i32, ptr %i.s monotonic, align 8
  %i.ad = and i32 %i.ac, -67108864
  %i.ae = or i32 %i.ad, %i.ab
  store atomic i32 %i.ae, ptr %i.s monotonic, align 8
  %i.af = icmp sgt i32 %i.ab, 99
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 %spec.select, ptr %2, align 8
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ag = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS5_IS4_iEEEES5_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.sroa.017.0 = load ptr, ptr %.sroa.017.036, align 8 ; 2 uses
  %i.ah = icmp eq ptr %.sroa.017.0, null
  br i1 %i.ah, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18PretenuringHandler39RemoveAllocationSitePretenuringFeedbackENS0_6TaggedINS0_14AllocationSiteEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Tagged.230", align 8 ; 2 uses
  store i64 %1, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call noundef i64 @_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18PretenuringHandler26ProcessPretenuringFeedbackEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 225), align 1, !range !8, !noundef !9
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g) #14
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16777216) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.l = icmp uge i64 %1, %.sroa.speculated       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.043.052 = load ptr, ptr %i.n, align 8    ; 2 uses
  %i.o = icmp eq ptr %.sroa.043.052, null
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = icmp ugt i64 %1, 16777216
  %i.q = uitofp i64 %1 to double
  %i.r = fdiv double f0x416999999999999A, %i.q
  %.mux = select i1 %i.p, double %i.r, double 8.000000e-01
  br label %bb.c

._crit_edge:                                      ; preds = %bb.l, %bb.b
  %i.s = phi i8 [ 0, %bb.b ], [ %i.cc, %bb.l ]    ; 4 uses
  %.lcssa52 = phi i32 [ 0, %bb.b ], [ %i.ac, %bb.l ]
  %.036.lcssa = phi i32 [ 0, %bb.b ], [ %.137, %bb.l ]
  %.034.lcssa = phi i32 [ 0, %bb.b ], [ %.135, %bb.l ] ; 2 uses
  %.032.lcssa = phi i32 [ 0, %bb.b ], [ %.133, %bb.l ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %.1, %bb.l ] ; 2 uses
  store i32 %.lcssa52, ptr %i.b, align 4
  store i8 %i.s, ptr %i.a, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 4 uses
  %.not50 = icmp eq ptr %i.u, null
  br i1 %.not50, label %bb.r, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %._crit_edge63, label %.lr.ph62

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.043.060 = phi ptr [ %.sroa.043.052, %.lr.ph ], [ %.sroa.043.0, %bb.l ] ; 2 uses
  %i.aa = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.l ]  ; 3 uses
  %.03258 = phi i32 [ 0, %.lr.ph ], [ %.133, %bb.l ] ; 3 uses
  %.056 = phi i32 [ 0, %.lr.ph ], [ %.135, %bb.l ] ; 2 uses
  %.03255 = phi i32 [ 0, %.lr.ph ], [ %.137, %bb.l ] ; 2 uses
  %.03454 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.l ]
  %3 = phi i8 [ 0, %.lr.ph ], [ %i.cc, %bb.l ]    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.043.060, i64 8
  %i.ac = add nuw nsw i32 %.03454, 1              ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr               ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 12 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4
  %i.ai = and i32 %i.ah, 67108863                 ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = add nsw i32 %.03255, 1                  ; 2 uses
  %i.ak = add nuw nsw i32 %i.ai, %.056            ; 2 uses
  %i.al = load ptr, ptr %0, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = add i64 %i.am, -55464
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 36 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4            ; 4 uses
  %i.ar = load atomic i32, ptr %i.ag monotonic, align 4
  %i.as = and i32 %i.ar, 67108863                 ; 3 uses
  %i.at = icmp sgt i32 %i.aq, 99
  br i1 %i.at, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 246), align 2, !range !8, !noundef !9
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.aw = load atomic i32, ptr %i.ag monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121MakePretenureDecisionENS0_6TaggedINS0_14AllocationSiteEEENS3_17PretenureDecisionEdbm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ax = uitofp nneg i32 %i.as to double
  %i.ay = sitofp i32 %i.aq to double
  %i.az = fdiv double %i.ax, %i.ay
  %i.ba = load atomic i32, ptr %i.ag monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121MakePretenureDecisionENS0_6TaggedINS0_14AllocationSiteEEENS3_17PretenureDecisionEdbm.exit.i

bb.g:                                             ; preds = %bb.d
  %i.bb = uitofp nneg i32 %i.as to double
  %i.bc = uitofp nneg i32 %i.aq to double
  %i.bd = fdiv double %i.bb, %i.bc                ; 3 uses
  %i.be = load atomic i32, ptr %i.ag monotonic, align 4 ; 3 uses
  %i.bf = and i32 %i.be, 335544320
  %or.cond.i.i = icmp eq i32 %i.bf, 0
  br i1 %or.cond.i.i, label %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit.i.i, label %_ZN2v88internal12_GLOBAL__N_121MakePretenureDecisionENS0_6TaggedINS0_14AllocationSiteEEENS3_17PretenureDecisionEdbm.exit.i

_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit.i.i: ; preds = %bb.g
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1754), align 2, !range !8, !noundef !9
  %i.bh = trunc nuw i8 %i.bg to i1
  %.0.i.i.i = select i1 %i.bh, double %.mux, double 8.500000e-01
  %i.bi = fcmp oge double %i.bd, %.0.i.i.i        ; 2 uses
  %i.bj = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  %brmerge.not.i.i = and i1 %i.l, %i.bi
  %.mux.i.i = select i1 %i.bi, i32 134217728, i32 67108864
  br i1 %brmerge.not.i.i, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit.i.i
  %i.bk = or i32 %i.bj, 536870912
  store atomic i32 %i.bk, ptr %i.ag monotonic, align 4
  %i.bl = load atomic i32, ptr %i.ag monotonic, align 4
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.h, %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit.i.i
  %4 = phi i8 [ %3, %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit.i.i ], [ 1, %bb.h ]
  %.sink.i.i = phi i32 [ %i.bj, %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit.i.i ], [ %i.bl, %bb.h ]
  %.sink11.i.i = phi i32 [ %.mux.i.i, %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit.i.i ], [ 201326592, %bb.h ]
  %i.bm = and i32 %.sink.i.i, -469762049
  %i.bn = or disjoint i32 %i.bm, %.sink11.i.i
  store atomic i32 %i.bn, ptr %i.ag monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121MakePretenureDecisionENS0_6TaggedINS0_14AllocationSiteEEENS3_17PretenureDecisionEdbm.exit.i

_ZN2v88internal12_GLOBAL__N_121MakePretenureDecisionENS0_6TaggedINS0_14AllocationSiteEEENS3_17PretenureDecisionEdbm.exit.i: ; preds = %.sink.split.i.i, %bb.g, %bb.f, %.thread.i
  %.in.in.i = phi i32 [ %i.aw, %.thread.i ], [ %i.ba, %bb.f ], [ %i.be, %bb.g ], [ %i.be, %.sink.split.i.i ]
  %i.bo = phi double [ 0.000000e+00, %.thread.i ], [ %i.az, %bb.f ], [ %i.bd, %bb.g ], [ %i.bd, %.sink.split.i.i ]
  %.0.i = phi i8 [ %3, %.thread.i ], [ %3, %bb.f ], [ %3, %bb.g ], [ %4, %.sink.split.i.i ] ; 2 uses
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 246), align 2, !range !8, !noundef !9
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_125DigestPretenuringFeedbackEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEEbm.exit, !prof !5

bb.i:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121MakePretenureDecisionENS0_6TaggedINS0_14AllocationSiteEEENS3_17PretenureDecisionEdbm.exit.i
  %.in.i = lshr i32 %.in.in.i, 26
  %i.br = and i32 %.in.i, 7
  %i.bs = inttoptr i64 %i.ad to ptr
  %i.bt = tail call noundef ptr @_ZN2v88internal14AllocationSite21PretenureDecisionNameENS1_17PretenureDecisionE(ptr noundef nonnull align 4 dereferenceable(40) %i.af, i32 noundef %i.br) #14
  %i.bu = load atomic i32, ptr %i.ag monotonic, align 4
  %i.bv = lshr i32 %i.bu, 26
  %i.bw = and i32 %i.bv, 7
  %i.bx = tail call noundef ptr @_ZN2v88internal14AllocationSite21PretenureDecisionNameENS1_17PretenureDecisionE(ptr noundef nonnull align 4 dereferenceable(40) %i.af, i32 noundef %i.bw) #14
  tail call void (ptr, ptr, ...) @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef %i.ao, ptr noundef nonnull @.str.1, ptr noundef %i.bs, i32 noundef %i.aq, i32 noundef %i.as, double noundef %i.bo, ptr noundef %i.bt, ptr noundef %i.bx) #14
  br label %_ZN2v88internal12_GLOBAL__N_125DigestPretenuringFeedbackEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEEbm.exit

_ZN2v88internal12_GLOBAL__N_125DigestPretenuringFeedbackEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEEbm.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121MakePretenureDecisionENS0_6TaggedINS0_14AllocationSiteEEENS3_17PretenureDecisionEdbm.exit.i, %bb.i
  %i.by = load atomic i32, ptr %i.ag monotonic, align 4
  %i.bz = and i32 %i.by, -67108864
  store atomic i32 %i.bz, ptr %i.ag monotonic, align 4
  store i32 0, ptr %i.ap, align 4
  %5 = tail call noundef zeroext i8 @_ZNK2v88internal14AllocationSite17GetAllocationTypeEv(ptr noundef nonnull align 4 dereferenceable(40) %i.af) #14
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_125DigestPretenuringFeedbackEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEEbm.exit
  %i.ca = add nsw i32 %i.aa, 1
  br label %bb.l

bb.k:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_125DigestPretenuringFeedbackEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEEbm.exit
  %i.cb = add nsw i32 %.03258, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.c
  %i.cc = phi i8 [ %.0.i, %bb.j ], [ %.0.i, %bb.k ], [ %3, %bb.c ] ; 2 uses
  %.137 = phi i32 [ %i.aj, %bb.j ], [ %i.aj, %bb.k ], [ %.03255, %bb.c ] ; 2 uses
  %.135 = phi i32 [ %i.ak, %bb.j ], [ %i.ak, %bb.k ], [ %.056, %bb.c ] ; 2 uses
  %.133 = phi i32 [ %.03258, %bb.j ], [ %i.cb, %bb.k ], [ %.03258, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.ca, %bb.j ], [ %i.aa, %bb.k ], [ %i.aa, %bb.c ] ; 2 uses
  %.sroa.043.0 = load ptr, ptr %.sroa.043.060, align 8 ; 2 uses
  %i.cd = icmp eq ptr %.sroa.043.0, null
  br i1 %i.cd, label %._crit_edge, label %bb.c

.lr.ph62:                                         ; preds = %.preheader, %bb.p
  %7 = phi ptr [ %i.dj, %bb.p ], [ %i.y, %.preheader ]
  %i.ce = phi ptr [ %i.di, %bb.p ], [ %i.x, %.preheader ]
  %8 = phi i8 [ %spec.select74, %bb.p ], [ %i.s, %.preheader ]
  %i.cf = getelementptr inbounds i8, ptr %7, i64 -8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  store ptr %i.cf, ptr %i.ce, align 8
  %i.ch = load ptr, ptr %0, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = add i64 %i.ci, -55464
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = add i64 %i.cg, -1
  %i.cm = inttoptr i64 %i.cl to ptr               ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 8 uses
  %i.co = load atomic i32, ptr %i.cn monotonic, align 4 ; 2 uses
  %i.cp = lshr i32 %i.co, 26
  %i.cq = and i32 %i.cp, 7
  %i.cr = and i32 %i.co, 335544320
  %or.cond.i = icmp eq i32 %i.cr, 0               ; 2 uses
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph62
  %i.cs = load atomic i32, ptr %i.cn monotonic, align 4
  %i.ct = or i32 %i.cs, 536870912
  store atomic i32 %i.ct, ptr %i.cn monotonic, align 4
  %i.cu = load atomic i32, ptr %i.cn monotonic, align 4
  %i.cv = and i32 %i.cu, -469762049
  %i.cw = or disjoint i32 %i.cv, 201326592
  store atomic i32 %i.cw, ptr %i.cn monotonic, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph62
  %i.cx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 246), align 2, !range !8, !noundef !9
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = inttoptr i64 %i.cg to ptr
  %i.da = tail call noundef ptr @_ZN2v88internal14AllocationSite21PretenureDecisionNameENS1_17PretenureDecisionE(ptr noundef nonnull align 4 dereferenceable(40) %i.cm, i32 noundef %i.cq) #14
  %i.db = load atomic i32, ptr %i.cn monotonic, align 4
  %i.dc = lshr i32 %i.db, 26
  %i.dd = and i32 %i.dc, 7
  %i.de = tail call noundef ptr @_ZN2v88internal14AllocationSite21PretenureDecisionNameENS1_17PretenureDecisionE(ptr noundef nonnull align 4 dereferenceable(40) %i.cm, i32 noundef %i.dd) #14
  tail call void (ptr, ptr, ...) @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef %i.ck, ptr noundef nonnull @.str.2, ptr noundef %i.cz, ptr noundef %i.da, ptr noundef %i.de) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %9 = load atomic i32, ptr %i.cn monotonic, align 4
  %10 = and i32 %9, -67108864
  store atomic i32 %10, ptr %i.cn monotonic, align 4
  %11 = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  store i32 0, ptr %11, align 4
  %spec.select74 = select i1 %or.cond.i, i8 1, i8 %8 ; 2 uses
  %i.df = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq ptr %i.dh, %i.dj
  br i1 %i.dk, label %._crit_edge63, label %.lr.ph62, !llvm.loop !10

._crit_edge63:                                    ; preds = %bb.p, %.preheader
  %i.dl = phi i8 [ %i.s, %.preheader ], [ %spec.select74, %bb.p ] ; 2 uses
  %.lcssa61 = phi ptr [ %i.u, %.preheader ], [ %i.df, %bb.p ] ; 4 uses
  store i8 %i.dl, ptr %i.a, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa61, i64 8
  store ptr null, ptr %i.t, align 8
  %i.dn = load ptr, ptr %i.dm, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge63
  %i.do = getelementptr inbounds nuw i8, ptr %.lcssa61, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3
  tail call void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(32) %.lcssa61, ptr noundef nonnull %i.dn, i64 noundef %i.dt) #14
  br label %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit

_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %._crit_edge63, %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa61, i64 noundef 32) #17
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit, %._crit_edge
  %i.du = phi i8 [ %i.dl, %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit ], [ %i.s, %._crit_edge ]
  %i.dv = load ptr, ptr %0, align 8
  %i.dw = tail call noundef i64 @_ZNK2v88internal4Heap22NewSpaceTargetCapacityEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.dv) #14
  %i.dx = icmp ult i64 %i.dw, %.sroa.speculated
  %.not39 = or i1 %i.l, %i.dx                     ; 2 uses
  br i1 %.not39, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = load ptr, ptr %0, align 8               ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1648
  %.sroa.0.0.copyload.i = load i64, ptr %i.dz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_14AllocationSiteEEEEZNS1_18PretenuringHandler26ProcessPretenuringFeedbackEmE3$_0E9_M_invokeERKSt9_Any_dataOS4_", ptr %i.eb, align 8
  store ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_14AllocationSiteEEEEZNS1_18PretenuringHandler26ProcessPretenuringFeedbackEmE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.ea, align 8
  call void @_ZN2v88internal4Heap21ForeachAllocationSiteENS0_6TaggedINS0_6ObjectEEERKSt8functionIFvNS2_INS0_14AllocationSiteEEEEE(ptr noundef nonnull align 8 dereferenceable(2992) %i.dy, i64 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %i.ec = load ptr, ptr %i.ea, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = call noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #14, !inline_history !11 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.pre = load i8, ptr %i.a, align 1, !range !8
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.r
  %i.ee = phi i8 [ %.pre, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.du, %bb.r ]
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eg = load ptr, ptr %0, align 8
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = add i64 %i.eh, -55464
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  call void @_ZN2v88internal10StackGuard16RequestInterruptENS1_13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(64) %i.ek, i32 noundef 32) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.el = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 246), align 2, !range !8, !noundef !9
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.x, label %bb.ab, !prof !5

bb.x:                                             ; preds = %bb.w
  %i.en = icmp sgt i32 %.034.lcssa, 0
  %i.eo = icmp sgt i32 %.0.lcssa, 0
  %or.cond = select i1 %i.en, i1 true, i1 %i.eo
  %i.ep = icmp sgt i32 %.032.lcssa, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ep
  br i1 %or.cond3, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.eq = load ptr, ptr %0, align 8
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = add i64 %i.er, -55464
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1754), align 2, !range !8, !noundef !9
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.z, label %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit

bb.z:                                             ; preds = %bb.y
  %i.ew = icmp ult i64 %1, 16777217
  br i1 %i.ew, label %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = uitofp i64 %1 to double
  %i.ey = fdiv double f0x416999999999999A, %i.ex
  br label %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit

_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %.0.i40 = phi double [ 8.500000e-01, %bb.y ], [ %i.ey, %bb.aa ], [ 8.000000e-01, %bb.z ]
  %not..not39 = xor i1 %.not39, true
  %i.ez = zext i1 %not..not39 to i32
  %i.fa = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef %i.et, ptr noundef nonnull @.str, double noundef %.0.i40, i32 noundef %i.ez, i32 noundef %i.fa, i32 noundef %.036.lcssa, i32 noundef %.034.lcssa, i32 noundef %.0.lcssa, i32 noundef %.032.lcssa) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit, %bb.w
  %i.fb = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i ], [ %i.fb, %bb.ab ] ; 2 uses
  %i.fc = load ptr, ptr %.06.i.i.i, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #17
  %.not.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.ab
  %i.fd = load ptr, ptr %i.m, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = shl i64 %i.ff, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fd, i8 0, i64 %i.fg, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 8
  %i.fj = fpext float %i.fi to double             ; 2 uses
  %i.fk = fdiv double 2.560000e+02, %i.fj
  %i.fl = call double @llvm.ceil.f64(double %i.fk)
  %i.fm = fptoui double %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = fdiv double 1.000000e+00, %i.fj
  %i.fq = call double @llvm.ceil.f64(double %i.fp)
  %i.fr = fptoui double %i.fq to i64
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fm, i64 %i.fr)
  %i.fs = call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i64 noundef %.sroa.speculated.i.i.i) #14 ; 2 uses
  %i.ft = load i64, ptr %i.fe, align 8
  %.not.i.i.i41 = icmp eq i64 %i.fs, %i.ft
  br i1 %.not.i.i.i41, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit
  call void @_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 noundef %i.fs)
  br label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE7reserveEm.exit

bb.ad:                                            ; preds = %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit
  store i64 %i.fo, ptr %i.fn, align 8
  br label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE7reserveEm.exit

_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE7reserveEm.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE7reserveEm.exit
  ret void
}

declare noundef zeroext i8 @_ZNK2v88internal14AllocationSite17GetAllocationTypeEv(ptr noundef nonnull align 4 dereferenceable(40)) local_unnamed_addr #3

declare noundef i64 @_ZNK2v88internal4Heap22NewSpaceTargetCapacityEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare void @_ZN2v88internal4Heap21ForeachAllocationSiteENS0_6TaggedINS0_6ObjectEEERKSt8functionIFvNS2_INS0_14AllocationSiteEEEEE(ptr noundef nonnull align 8 dereferenceable(2992), i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18PretenuringHandler39PretenureAllocationSiteOnNextCollectionENS0_6TaggedINS0_14AllocationSiteEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit, label %bb.b

_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16 ; 4 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit, %bb.a
  %i.g = phi ptr [ %i.c, %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit ], [ %i.b, %bb.a ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.not.i.i2 = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %i.i, align 8
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.h, align 8
end_hunk_0
