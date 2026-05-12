inline.NumInlined: 18
inline.NumDeleted: 8
begin_hunk_0_@RescalerExportRowExpand_SSE2:bb.a

vector.ph182:                                     ; preds = %vector.memcheck167
  %n.vec184 = and i64 %i.aa, 8589934588           ; 3 uses
  %i.ak = load i32, ptr %i.l, align 8, !tbaa !25, !alias.scope !27
  %broadcast.splatinsert185 = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat186 = shufflevector <4 x i32> %broadcast.splatinsert185, <4 x i32> poison, <4 x i32> zeroinitializer
  %1 = add nuw nsw i64 %n.vec184, %i.w
  %i.al = zext <4 x i32> %broadcast.splat186 to <4 x i64>
  br label %vector.body187

end_hunk_0
begin_hunk_1_@RescalerExportRowExpand_SSE2:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 8589934588              ; 3 uses
  %i.dw = load i32, ptr %i.l, align 8, !tbaa !25, !alias.scope !41
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dw, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %2 = add nuw nsw i64 %n.vec, %i.di
  %i.dx = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert162 = insertelement <4 x i64> poison, i64 %i.dh, i64 0
  %broadcast.splat163 = shufflevector <4 x i64> %broadcast.splatinsert162, <4 x i64> poison, <4 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@RescalerExportRowShrink_SSE2:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 8589934588              ; 3 uses
  %i.ar = load i32, ptr %i.r, align 4, !tbaa !54, !alias.scope !55
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %1 = add nuw nsw i64 %n.vec, %i.ad
  %i.as = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert178 = insertelement <4 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat179 = shufflevector <4 x i64> %broadcast.splatinsert178, <4 x i64> poison, <4 x i32> zeroinitializer
end_hunk_2
