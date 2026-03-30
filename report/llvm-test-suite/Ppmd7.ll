begin_hunk_0
bb.c:                                             ; preds = %bb.b
  %.sroa.012.0.copyload = load i8, ptr %i.ae, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.189.a, i64 8
  %.sroa.5.0.copyload = load <2 x i16>, ptr %.sroa.5.0..sroa_idx, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
end_hunk_0
begin_hunk_1
  %.sroa.414.0..sroa_idx15 = getelementptr inbounds i8, ptr %.091, i64 -5
  store i8 %i.al, ptr %.sroa.414.0..sroa_idx15, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds i8, ptr %.091, i64 -4
  store <2 x i16> %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx17, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.critedge
end_hunk_1
begin_hunk_2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !15
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.7.0.copyload = load <2 x i16>, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
end_hunk_2
begin_hunk_3
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %.pre120, i64 3
  store i8 %i.bk, ptr %.sroa.4.0..sroa_idx2, align 1, !tbaa !15
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.pre120, i64 4
  store <2 x i16> %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx5, align 1
  br label %bb.t

.thread:                                          ; preds = %ShrinkUnits.exit, %bb.m, %bb.g
end_hunk_3
