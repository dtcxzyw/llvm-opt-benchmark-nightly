inline.NumInlined: 420
inline.NumDeleted: 171
begin_hunk_0_@_ZN8facebook5velox4util12_GLOBAL__N_122parseFractionalSecondsEPKcmRm:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.ph ], [ %i.bn, %vector.body ] ; 2 uses
  %i.bn = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %._crit_edge.loopexit, label %vector.body, !llvm.loop !231

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4util12_GLOBAL__N_122parseFractionalSecondsEPKcmRm:bb.a
  br label %bb.s

._crit_edge.loopexit:                             ; preds = %vector.body
  %broadcast.splatinsert92 = insertelement <4 x i64> poison, i64 %index, i64 0
  %broadcast.splat93 = shufflevector <4 x i64> %broadcast.splatinsert92, <4 x i64> poison, <4 x i32> zeroinitializer
  %vec.iv = or disjoint <4 x i64> %broadcast.splat93, <i64 0, i64 1, i64 2, i64 3>
  %.not94 = icmp ugt <4 x i64> %vec.iv, %broadcast.splat
  %i.cc = select <4 x i1> %.not94, <4 x i32> %vec.phi, <4 x i32> %i.bn
  %i.cd = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.cc)
  br label %._crit_edge
end_hunk_1
