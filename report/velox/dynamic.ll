inline.NumInlined: 2716
inline.NumDeleted: 1112
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15directBuildFromIRKS9_EEvOT_:bb.a

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %i.j = phi i64 [ %i.c, %bb.a ], [ %i.bf, %._crit_edge ]
  %.pn49 = phi ptr [ %i.i, %bb.a ], [ %.045, %._crit_edge ] ; 4 uses
  %.pn48 = phi ptr [ %i.h, %bb.a ], [ %.044, %._crit_edge ] ; 4 uses
  %.045 = getelementptr i8, ptr %.pn49, i64 -128  ; 2 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -128  ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15directBuildFromIRKS9_EEvOT_:bb.a
  %i.y = icmp ne ptr %.044, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr i8, ptr %.pn49, i64 -112
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15directBuildFromIRKS9_EEvOT_:bb.a
  %i.al = zext i32 %.sroa.872.1.in to i64         ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !223 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.04697 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #38, !inline_history !291 ; 5 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !223
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(80) %i.an)
end_hunk_2
