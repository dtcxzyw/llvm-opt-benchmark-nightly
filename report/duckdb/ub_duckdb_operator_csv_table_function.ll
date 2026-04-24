inline.NumInlined: 5256
inline.NumDeleted: 2728
begin_hunk_0_@_ZN6duckdb18FillScanErrorTableERNS_16InternalAppenderEmmRNS_11CSVFileScanE:bb.a
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.sroa.0222 = alloca %struct.anon, align 8      ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.sroa.0213 = alloca %struct.anon, align 8      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 4 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb18FillScanErrorTableERNS_16InternalAppenderEmmRNS_11CSVFileScanE:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !16, !alias.scope !659
  store i8 0, ptr %i.bw, align 8, !tbaa !18, !alias.scope !659
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0213, i8 0, i64 16, i1 false)
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit92

bb.x:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i4.i, %._crit_edge.i.i8.i
  %.sink = phi i64 [ 2, %._crit_edge.i.i.i ], [ 2, %._crit_edge.i.i4.i ], [ 4, %._crit_edge.i.i8.i ] ; 4 uses
  %.sink364.sroa.phi = phi ptr [ %.sink364.sroa.gep, %._crit_edge.i.i.i ], [ %.sink364.sroa.gep376, %._crit_edge.i.i4.i ], [ %.sink364.sroa.gep377, %._crit_edge.i.i8.i ]
  %.ph = phi i32 [ 2, %._crit_edge.i.i.i ], [ 2, %._crit_edge.i.i4.i ], [ 4, %._crit_edge.i.i8.i ]
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sink, ptr %26, align 8, !tbaa !16, !alias.scope !659
  store i8 0, ptr %.sink364.sroa.phi, align 2, !tbaa !18, !alias.scope !659
  store i32 %.ph, ptr %.sroa.0213, align 8, !tbaa !18
  %.sroa.0213.4..sroa_idx273362 = getelementptr inbounds nuw i8, ptr %.sroa.0213, i64 4 ; 2 uses
  %i.by = sub nuw nsw i64 12, %.sink
  %i.bz = getelementptr i8, ptr %.sroa.0213.4..sroa_idx273362, i64 %.sink
end_hunk_1
