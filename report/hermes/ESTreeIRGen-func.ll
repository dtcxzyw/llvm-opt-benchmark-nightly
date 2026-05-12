inline.NumInlined: 1026
inline.NumDeleted: 528
begin_hunk_0_@_ZN6hermes5irgen11ESTreeIRGen14emitParametersEPNS_6ESTree16FunctionLikeNodeEb:bb.a
  %.sroa.0.0.copyload.i63 = load ptr, ptr %i.cu, align 8, !tbaa !289
  store ptr %.sroa.0.0.copyload.i63, ptr %7, align 8
  %i.da = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E16FindAndConstructERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !309 ; 3 uses
  %.not.i64 = icmp eq ptr %i.dc, null
  br i1 %.not.i64, label %._crit_edge.i, label %bb.p

end_hunk_0
begin_hunk_1_@_ZN6hermes5irgen11ESTreeIRGen14emitParametersEPNS_6ESTree16FunctionLikeNodeEb:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store i32 %i.dl, ptr %i.dp, align 8, !tbaa !308
  %8 = load ptr, ptr %i.db, align 8, !tbaa !309
  store ptr %8, ptr %i.do, align 8, !tbaa !310
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !83
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
end_hunk_1
