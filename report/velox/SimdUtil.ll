inline.NumInlined: 131
inline.NumDeleted: 79
begin_hunk_0_@_ZN8facebook5velox4simd10gatherBitsEPKmN5folly5RangeIPKiEEPm:bb.a
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 8 uses
  %i.e = icmp ult i64 %i.d, 5
  br i1 %i.e, label %.preheader, label %.preheader36, !prof !7

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4simd10gatherBitsEPKmN5folly5RangeIPKiEEPm:bb.a

.lr.ph:                                           ; preds = %.preheader36, %.lr.ph
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph ], [ 0, %.preheader36 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 8, %.preheader36 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv45
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4simd10gatherBitsEPKmN5folly5RangeIPKiEEPm:bb.a
  br i1 %i.br, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bs = trunc i64 %i.d to i32
  %8 = add i32 %i.bs, -9
  %9 = and i32 %8, -8
  %10 = add i32 %9, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader36
  %.031.lcssa = phi i32 [ 0, %.preheader36 ], [ %10, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = zext nneg i32 %.031.lcssa to i64        ; 2 uses
  %.not = icmp eq i64 %i.d, %i.bt
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_2
