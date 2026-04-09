inline.NumInlined: 1851
inline.NumDeleted: 929
begin_hunk_0_@_ZN6Assimp4Ogre11IVertexData17AssimpBoneWeightsEm:bb.a

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc30
  %i.cf = ptrtoaddr ptr %i.cb to i64
  %6 = sub i64 %i.br, %i.bs
  %7 = add i64 %6, -8                             ; 2 uses
  %i.cg = lshr i64 %7, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 24
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre4Bone19ConvertToAssimpBoneEPNS0_8SkeletonERKSt6vectorI14aiVertexWeightSaIS5_EE:bb.a
  %i.v = icmp ugt i64 %i.s, 2305843009213693951
  %i.w = select i1 %i.v, i64 -1, i64 %i.r
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #32 ; 3 uses
  %i.y = sub i64 %i.p, %i.q
  %i.z = and i64 %i.y, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  store ptr %i.x, ptr %i.aa, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr nonnull align 4 %i.l, i64 %i.r, i1 false)
end_hunk_1
