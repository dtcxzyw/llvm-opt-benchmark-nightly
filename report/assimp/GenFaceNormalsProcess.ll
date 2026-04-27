inline.NumInlined: 526
inline.NumDeleted: 308
begin_hunk_0_@_ZN6Assimp21GenFaceNormalsProcess18GenMeshFaceNormalsEP6aiMesh:bb.a
  call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc105
  store ptr %i.z, ptr %4, align 8
  %.idx = shl nuw nsw i64 %i.w, 2                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx ; 5 uses
end_hunk_0
