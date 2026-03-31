begin_hunk_0
  br label %bb.dc

bb.cq:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %bb.cl
  %i.nv = load i8, ptr %25, align 8, !tbaa !280   ; 17 uses
  switch i8 %i.nv, label %_ZN6duckdb18StringValueScanner15CanDirectlyCastERKNS_11LogicalTypeEb.exit.thread272 [
    i8 11, label %_ZN6duckdb18StringValueScanner15CanDirectlyCastERKNS_11LogicalTypeEb.exit.thread
    i8 12, label %_ZN6duckdb18StringValueScanner15CanDirectlyCastERKNS_11LogicalTypeEb.exit.thread
    i8 13, label %_ZN6duckdb18StringValueScanner15CanDirectlyCastERKNS_11LogicalTypeEb.exit.thread
end_hunk_0
begin_hunk_1
bb.cr:                                            ; preds = %bb.cq
  %i.nw = load i8, ptr %i.bd, align 8, !tbaa !506, !range !135, !noundef !136
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %.thread277, label %.thread

.thread277:                                       ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  br label %bb.cx

.thread:                                          ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #34
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #34
  br label %bb.dc

_ZN6duckdb18StringValueScanner15CanDirectlyCastERKNS_11LogicalTypeEb.exit.thread272: ; preds = %_ZN6duckdb18StringValueScanner15CanDirectlyCastERKNS_11LogicalTypeEb.exit, %bb.cq
  %30 = phi i8 [ %i.nv, %bb.cq ], [ %.pr276, %_ZN6duckdb18StringValueScanner15CanDirectlyCastERKNS_11LogicalTypeEb.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  %i.oi = icmp eq i8 %30, 25
  br i1 %i.oi, label %_ZNK6duckdb11LogicalType8IsNestedEv.exit, label %bb.cx

bb.cx:                                            ; preds = %.thread277, %_ZN6duckdb18StringValueScanner15CanDirectlyCastERKNS_11LogicalTypeEb.exit.thread272
  %i.oj = load i8, ptr %i.mh, align 1, !tbaa !288
  %switch.tableidx = add i8 %i.oj, -23            ; 2 uses
  %i.ok = icmp ult i8 %switch.tableidx, 7
end_hunk_2
