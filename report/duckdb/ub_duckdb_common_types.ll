inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb5Value4BLOBERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %3 = alloca %"struct.duckdb::CastParameters", align 8 ; 8 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.sroa.0 = alloca %struct.anon, align 8         ; 7 uses
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 26)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.w
end_hunk_0
begin_hunk_1_@_ZN6duckdb5Value4BLOBERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.a, align 8, !tbaa !514
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.b = load ptr, ptr %1, align 8, !tbaa !89     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !152  ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb5Value4BLOBERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.e:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 1
  %.sroa.0.4..sroa_idx36 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %i.i, ptr %.sroa.0.4..sroa_idx36, align 4
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  store ptr %i.b, ptr %.sroa.0.8..sroa_idx, align 8, !tbaa !153
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d, %bb.c
end_hunk_2
begin_hunk_3_@_ZN6duckdb5Value3BITERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.sroa.0 = alloca %struct.anon, align 8         ; 7 uses
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 36)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.w
end_hunk_3
begin_hunk_4_@_ZN6duckdb5Value3BITERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.a, align 8, !tbaa !514
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.b = load ptr, ptr %1, align 8, !tbaa !89     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !152  ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb5Value3BITERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.e:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 1
  %.sroa.0.4..sroa_idx36 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %i.i, ptr %.sroa.0.4..sroa_idx36, align 4
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  store ptr %i.b, ptr %.sroa.0.8..sroa_idx, align 8, !tbaa !153
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d, %bb.c
end_hunk_5
