inline.NumInlined: 871
inline.NumDeleted: 477
begin_hunk_0_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
          to label %.noexc436 unwind label %bb.av ; 4 uses

.noexc436:                                        ; preds = %bb.ar
  %i.aie = sub i64 %i.ahy, %i.ahz
  %i.aif = and i64 %i.aie, -4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aid, i8 0, i64 %i.aif, i1 false)
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.aia ; 2 uses
  %i.aih = add nuw nsw i64 %i.aib, 1
  %i.aii = icmp eq i64 %i.aia, 9223372036854775804
end_hunk_0
