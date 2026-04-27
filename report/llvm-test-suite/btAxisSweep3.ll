inline.NumInlined: 230
inline.NumDeleted: 61
begin_hunk_0_@_ZN20btAxisSweep3InternalItE25calculateOverlappingPairsEP12btDispatcher:bb.a
  %.sroa.043.052 = phi ptr [ null, %.lr.ph ], [ %i.ck, %bb.o ]
  %.sroa.644.051 = phi ptr [ null, %.lr.ph ], [ %i.cn, %bb.o ]
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !82
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %indvars.iv ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !88 ; 8 uses
  %i.cl = icmp eq ptr %i.ck, %.sroa.043.052
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
end_hunk_0
begin_hunk_1_@_ZN20btAxisSweep3InternalIjE25calculateOverlappingPairsEP12btDispatcher:bb.a
  %.sroa.043.052 = phi ptr [ null, %.lr.ph ], [ %i.ck, %bb.o ]
  %.sroa.644.051 = phi ptr [ null, %.lr.ph ], [ %i.cn, %bb.o ]
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !82
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %indvars.iv ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !88 ; 8 uses
  %i.cl = icmp eq ptr %i.ck, %.sroa.043.052
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
end_hunk_1
begin_hunk_2_@_ZN15btNullPairCache26getOverlappingPairArrayPtrEv
define linkonce_odr dso_local noundef ptr @_ZN15btNullPairCache26getOverlappingPairArrayPtrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  ret ptr %i.b
}

end_hunk_2
begin_hunk_3_@_ZNK15btNullPairCache26getOverlappingPairArrayPtrEv
define linkonce_odr dso_local noundef ptr @_ZNK15btNullPairCache26getOverlappingPairArrayPtrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  ret ptr %i.b
}

end_hunk_3
