inline.NumInlined: 441
inline.NumDeleted: 208
begin_hunk_0_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue413, %.lr.ph.i169
  %index = phi i64 [ 0, %.lr.ph.i169 ], [ %index.next, %pred.store.continue413 ] ; 3 uses
  %5 = mul i64 %index, 3                          ; 4 uses
  %6 = getelementptr i8, ptr %.8, i64 %5
  %next.gep403.a = getelementptr i8, ptr %6, i64 3
  %i.mx = getelementptr i8, ptr %.8, i64 %5
  %next.gep404.a = getelementptr i8, ptr %i.mx, i64 6
  %i.my = getelementptr i8, ptr %.8, i64 %5
  %next.gep405.a = getelementptr i8, ptr %i.my, i64 9
  %broadcast.splatinsert406 = insertelement <4 x i64> poison, i64 %index, i64 0
  %broadcast.splat407 = shufflevector <4 x i64> %broadcast.splatinsert406, <4 x i64> poison, <4 x i32> zeroinitializer
  %vec.iv = or disjoint <4 x i64> %broadcast.splat407, <i64 0, i64 1, i64 2, i64 3>
  %i.mz = icmp ule <4 x i64> %vec.iv, %broadcast.splat ; 4 uses
  %i.na = extractelement <4 x i1> %i.mz, i64 0
  br i1 %i.na, label %pred.store.if, label %pred.store.continue

end_hunk_0
begin_hunk_1_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.nb, label %pred.store.if408.a, label %pred.store.continue409.a

pred.store.if408.a:                               ; preds = %pred.store.continue
  store i32 %i.mp, ptr %next.gep403.a, align 1
  br label %pred.store.continue409.a

pred.store.continue409.a:                         ; preds = %pred.store.if408.a, %pred.store.continue
end_hunk_1
begin_hunk_2_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.nc, label %pred.store.if410.a, label %pred.store.continue411.a

pred.store.if410.a:                               ; preds = %pred.store.continue409.a
  store i32 %i.mp, ptr %next.gep404.a, align 1
  br label %pred.store.continue411.a

pred.store.continue411.a:                         ; preds = %pred.store.if410.a, %pred.store.continue409.a
end_hunk_2
begin_hunk_3_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.nd, label %pred.store.if412, label %pred.store.continue413

pred.store.if412:                                 ; preds = %pred.store.continue411.a
  store i32 %i.mp, ptr %next.gep405.a, align 1
  br label %pred.store.continue413

pred.store.continue413:                           ; preds = %pred.store.if412, %pred.store.continue411.a
  %index.next = add i64 %index, 4                 ; 2 uses
  %i.ne = icmp eq i64 %index.next, %n.vec
  br i1 %i.ne, label %._crit_edge.i166, label %vector.body, !prof !32, !llvm.loop !33

end_hunk_3
