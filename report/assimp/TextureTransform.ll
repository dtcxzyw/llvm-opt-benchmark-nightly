inline.NumInlined: 493
inline.NumDeleted: 245
begin_hunk_0_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
  %i.k = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull @.str.10)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8              ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit, label %_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i

end_hunk_0
begin_hunk_1_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

._crit_edge631.loopexit:                          ; preds = %._crit_edge628
  %.pre723 = load i32, ptr %i.l, align 8
  br label %._crit_edge631

._crit_edge631:                                   ; preds = %._crit_edge631.loopexit, %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit
  %3 = phi i32 [ %.pre723, %._crit_edge631.loopexit ], [ %i.m, %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4
end_hunk_1
begin_hunk_2_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 0, ptr %i.f, align 4
  %.not684 = icmp eq i32 %3, 0
  br i1 %.not684, label %._crit_edge677, label %.lr.ph676

end_hunk_2
begin_hunk_3_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
  %indvars.iv.next707 = add nuw nsw i64 %indvars.iv706, 1 ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next707, %i.bp
  br i1 %i.bq, label %bb.b, label %._crit_edge631.loopexit, !llvm.loop !21

.lr.ph627:                                        ; preds = %bb.b, %bb.ap
  %indvars.iv703 = phi i64 [ %indvars.iv.next704, %bb.ap ], [ 0, %bb.b ] ; 2 uses
end_hunk_3
