inline.NumInlined: 2805
inline.NumDeleted: 972
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader19read_sequence_infosEv:bb.a
  br label %.loopexit820

bb.y:                                             ; preds = %bb.v, %bb.w
  %i.lf = phi i32 [ 2, %bb.w ], [ 1, %bb.v ]      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.lg = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %.noexc.i455 unwind label %.loopexit821 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader19read_sequence_infosEv:bb.a
  store ptr %i.ed, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.lg, i64 1104 ; 2 uses
  store i32 %i.lf, ptr %i.me, align 8
  %29 = shl nuw nsw i32 %i.lf, 3
  %30 = zext nneg i32 %29 to i64
  %i.mf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %30) #27
          to label %.lr.ph unwind label %.loopexit821

.lr.ph:                                           ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit470
end_hunk_1
