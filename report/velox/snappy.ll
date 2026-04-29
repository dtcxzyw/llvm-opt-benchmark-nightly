inline.NumInlined: 441
inline.NumDeleted: 208
begin_hunk_0_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue413, %.lr.ph.i169
  %index = phi i64 [ 0, %.lr.ph.i169 ], [ %index.next, %pred.store.continue413 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph.i169 ], [ %vec.ind.next, %pred.store.continue413 ] ; 2 uses
  %5 = mul i64 %index, 3                          ; 4 uses
  %next.gep403.a = getelementptr i8, ptr %.8, i64 %5
  %i.mx = getelementptr i8, ptr %next.gep403.a, i64 3
  %next.gep404.a = getelementptr i8, ptr %.8, i64 %5
  %i.my = getelementptr i8, ptr %next.gep404.a, i64 6
  %next.gep405.a = getelementptr i8, ptr %.8, i64 %5
  %next.gep405 = getelementptr i8, ptr %next.gep405.a, i64 9
  %i.mz = icmp ule <4 x i64> %vec.ind, %broadcast.splat ; 4 uses
  %i.na = extractelement <4 x i1> %i.mz, i64 0
  br i1 %i.na, label %pred.store.if, label %pred.store.continue

end_hunk_0
begin_hunk_1_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.nb, label %pred.store.if408.a, label %pred.store.continue409.a

pred.store.if408.a:                               ; preds = %pred.store.continue
  store i32 %i.mp, ptr %i.mx, align 1
  br label %pred.store.continue409.a

pred.store.continue409.a:                         ; preds = %pred.store.if408.a, %pred.store.continue
end_hunk_1
begin_hunk_2_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.nc, label %pred.store.if410.a, label %pred.store.continue411.a

pred.store.if410.a:                               ; preds = %pred.store.continue409.a
  store i32 %i.mp, ptr %i.my, align 1
  br label %pred.store.continue411.a

pred.store.continue411.a:                         ; preds = %pred.store.if410.a, %pred.store.continue409.a
end_hunk_2
begin_hunk_3_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.nd, label %pred.store.if412, label %pred.store.continue413

pred.store.if412:                                 ; preds = %pred.store.continue411.a
  store i32 %i.mp, ptr %next.gep405, align 1
  br label %pred.store.continue413

pred.store.continue413:                           ; preds = %pred.store.if412, %pred.store.continue411.a
  %index.next = add i64 %index, 4                 ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 4)
  %i.ne = icmp eq i64 %index.next, %n.vec
  br i1 %i.ne, label %._crit_edge.i166, label %vector.body, !prof !32, !llvm.loop !33

end_hunk_3
