inline.NumInlined: 2442
inline.NumDeleted: 1339
begin_hunk_0_@_ZNK2v88internal4wasm14WasmSerializer21SerializeNativeModuleENS_4base6VectorIhEE:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.bt, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 21 uses
  store ptr %1, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.0.0.copyload.i = load i32, ptr %i.bv, align 8
end_hunk_0
begin_hunk_1_@_ZNK2v88internal4wasm14WasmSerializer21SerializeNativeModuleENS_4base6VectorIhEE:bb.a
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %.04.i.i
  %i.od = load atomic i32, ptr %i.oc monotonic, align 4
  store i32 %i.od, ptr %.val.i.i36.i, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %.val.i.i36.i, i64 4 ; 2 uses
  store ptr %i.oe, ptr %i.bu, align 8
  %i.of = add nuw nsw i64 %.04.i.i, 1             ; 2 uses
  %i.og = load ptr, ptr %8, align 8               ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 216
end_hunk_1
