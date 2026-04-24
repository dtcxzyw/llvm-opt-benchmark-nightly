inline.NumInlined: 35813
inline.NumDeleted: 7889
begin_hunk_0_@_ZN8facebook5velox27wrapRowChildInLazyRecursiveERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41
  br i1 %.1, label %bb.bp, label %._crit_edge.thread

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_M_allocateEm.exit.i, %bb.d
  %i.p = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox27wrapRowChildInLazyRecursiveERSt10shared_ptrINS0_10BaseVectorEE:bb.a

bb.g:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41
  %.089 = phi i32 [ 0, %.lr.ph ], [ %i.cr, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41 ] ; 2 uses
  %.01788 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.d, i32 noundef %.089)
          to label %bb.h unwind label %bb.ab      ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox27wrapRowChildInLazyRecursiveERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %bb.h, %bb.j, %bb.k
  br i1 %.01788, label %_ZN8facebook5velox21canWrapRowChildInLazyERKSt10shared_ptrINS0_10BaseVectorEE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.z = load ptr, ptr %4, align 16, !tbaa !76    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox27wrapRowChildInLazyRecursiveERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  br label %bb.ap

_ZN8facebook5velox21canWrapRowChildInLazyERKSt10shared_ptrINS0_10BaseVectorEE.exit.thread: ; preds = %bb.m, %bb.l, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN8facebook5velox21canWrapRowChildInLazyERKSt10shared_ptrINS0_10BaseVectorEE.exit, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %.1 = phi i1 [ true, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit ], [ true, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %_ZN8facebook5velox21canWrapRowChildInLazyERKSt10shared_ptrINS0_10BaseVectorEE.exit ], [ false, %bb.l ], [ false, %bb.m ] ; 2 uses
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !190 ; 5 uses
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !191
  %.not.i = icmp eq ptr %i.bq, %i.br
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE:bb.a
  %.05271 = phi i64 [ %.1, %bb.p ], [ 0, %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 3 uses
  %.05370 = phi i64 [ %i.l, %bb.p ], [ 0, %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.05469 = phi ptr [ %.072, %bb.p ], [ null, %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 5 uses
  %.05568 = phi i1 [ %or.cond, %bb.p ], [ false, %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ]
  %i.i = load ptr, ptr %.072, align 8, !tbaa !467 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.072, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !124
  %i.l = urem i64 %i.k, %1                        ; 6 uses
  %.not62 = icmp ne ptr %.05469, null
  %i.m = icmp eq i64 %.05370, %i.l
  %or.cond = and i1 %.not62, %i.m                 ; 3 uses
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE:bb.a
  br label %bb.p

bb.h:                                             ; preds = %.lr.ph
  br i1 %.05568, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %.05469, align 8, !tbaa !467 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.g
  %.1 = phi i64 [ %.05271, %bb.g ], [ %.05271, %bb.o ], [ %i.l, %bb.n ], [ %i.l, %bb.m ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8142

._crit_edge:                                      ; preds = %bb.p
  br i1 %or.cond, label %bb.q, label %._crit_edge.thread

bb.q:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr %.072, align 8, !tbaa !467 ; 2 uses
end_hunk_6
