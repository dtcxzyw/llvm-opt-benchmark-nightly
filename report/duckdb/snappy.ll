inline.NumInlined: 514
inline.NumDeleted: 215
begin_hunk_0_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue413, %.lr.ph.i169
  %index = phi i64 [ 0, %.lr.ph.i169 ], [ %index.next, %pred.store.continue413 ] ; 3 uses
  %5 = mul i64 %index, 3                          ; 4 uses
  %6 = getelementptr i8, ptr %.8, i64 %5
  %next.gep403.a = getelementptr i8, ptr %6, i64 3
  %i.mz = getelementptr i8, ptr %.8, i64 %5
  %next.gep404.a = getelementptr i8, ptr %i.mz, i64 6
  %i.na = getelementptr i8, ptr %.8, i64 %5
  %next.gep405.a = getelementptr i8, ptr %i.na, i64 9
  %broadcast.splatinsert406 = insertelement <4 x i64> poison, i64 %index, i64 0
  %broadcast.splat407 = shufflevector <4 x i64> %broadcast.splatinsert406, <4 x i64> poison, <4 x i32> zeroinitializer
  %vec.iv = or disjoint <4 x i64> %broadcast.splat407, <i64 0, i64 1, i64 2, i64 3>
  %i.nb = icmp ule <4 x i64> %vec.iv, %broadcast.splat ; 4 uses
  %i.nc = extractelement <4 x i1> %i.nb, i64 0
  br i1 %i.nc, label %pred.store.if, label %pred.store.continue

end_hunk_0
begin_hunk_1_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.nd, label %pred.store.if408.a, label %pred.store.continue409.a

pred.store.if408.a:                               ; preds = %pred.store.continue
  store i32 %i.mr, ptr %next.gep403.a, align 1
  br label %pred.store.continue409.a

pred.store.continue409.a:                         ; preds = %pred.store.if408.a, %pred.store.continue
end_hunk_1
begin_hunk_2_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.ne, label %pred.store.if410.a, label %pred.store.continue411.a

pred.store.if410.a:                               ; preds = %pred.store.continue409.a
  store i32 %i.mr, ptr %next.gep404.a, align 1
  br label %pred.store.continue411.a

pred.store.continue411.a:                         ; preds = %pred.store.if410.a, %pred.store.continue409.a
end_hunk_2
begin_hunk_3_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.nf, label %pred.store.if412, label %pred.store.continue413

pred.store.if412:                                 ; preds = %pred.store.continue411.a
  store i32 %i.mr, ptr %next.gep405.a, align 1
  br label %pred.store.continue413

pred.store.continue413:                           ; preds = %pred.store.if412, %pred.store.continue411.a
  %index.next = add i64 %index, 4                 ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %._crit_edge.i166, label %vector.body, !prof !32, !llvm.loop !33

end_hunk_3
begin_hunk_4_@_ZN13duckdb_snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i:bb.a
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue604, %.lr.ph.i276
  %index = phi i64 [ 0, %.lr.ph.i276 ], [ %index.next, %pred.store.continue604 ] ; 3 uses
  %7 = mul i64 %index, 3                          ; 4 uses
  %8 = getelementptr i8, ptr %.2, i64 %7
  %next.gep594.a = getelementptr i8, ptr %8, i64 3
  %i.hr = getelementptr i8, ptr %.2, i64 %7
  %next.gep595.a = getelementptr i8, ptr %i.hr, i64 6
  %i.hs = getelementptr i8, ptr %.2, i64 %7
  %next.gep596.a = getelementptr i8, ptr %i.hs, i64 9
  %broadcast.splatinsert597 = insertelement <4 x i64> poison, i64 %index, i64 0
  %broadcast.splat598 = shufflevector <4 x i64> %broadcast.splatinsert597, <4 x i64> poison, <4 x i32> zeroinitializer
  %vec.iv = or disjoint <4 x i64> %broadcast.splat598, <i64 0, i64 1, i64 2, i64 3>
  %i.ht = icmp ule <4 x i64> %vec.iv, %broadcast.splat ; 4 uses
  %i.hu = extractelement <4 x i1> %i.ht, i64 0
  br i1 %i.hu, label %pred.store.if, label %pred.store.continue

end_hunk_4
begin_hunk_5_@_ZN13duckdb_snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i:bb.a
  br i1 %i.hv, label %pred.store.if599.a, label %pred.store.continue600.a

pred.store.if599.a:                               ; preds = %pred.store.continue
  store i32 %i.hj, ptr %next.gep594.a, align 1
  br label %pred.store.continue600.a

pred.store.continue600.a:                         ; preds = %pred.store.if599.a, %pred.store.continue
end_hunk_5
begin_hunk_6_@_ZN13duckdb_snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i:bb.a
  br i1 %i.hw, label %pred.store.if601.a, label %pred.store.continue602.a

pred.store.if601.a:                               ; preds = %pred.store.continue600.a
  store i32 %i.hj, ptr %next.gep595.a, align 1
  br label %pred.store.continue602.a

pred.store.continue602.a:                         ; preds = %pred.store.if601.a, %pred.store.continue600.a
end_hunk_6
begin_hunk_7_@_ZN13duckdb_snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i:bb.a
  br i1 %i.hx, label %pred.store.if603, label %pred.store.continue604

pred.store.if603:                                 ; preds = %pred.store.continue602.a
  store i32 %i.hj, ptr %next.gep596.a, align 1
  br label %pred.store.continue604

pred.store.continue604:                           ; preds = %pred.store.if603, %pred.store.continue602.a
  %index.next = add i64 %index, 4                 ; 2 uses
  %i.hy = icmp eq i64 %index.next, %n.vec
  br i1 %i.hy, label %._crit_edge.i, label %vector.body, !prof !32, !llvm.loop !42

end_hunk_7
