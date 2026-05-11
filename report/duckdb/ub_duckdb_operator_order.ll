inline.NumInlined: 2075
inline.NumDeleted: 1248
begin_hunk_0_@_ZN6duckdb8TopNHeap19CheckBoundaryValuesERNS_9DataChunkES2_RNS_17TopNBoundaryValueE
define noundef zeroext i1 @_ZN6duckdb8TopNHeap19CheckBoundaryValuesERNS_9DataChunkES2_RNS_17TopNBoundaryValueE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(194) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %.sroa.0110 = alloca %struct.anon, align 8      ; 6 uses
  %5 = alloca %"struct.duckdb::SelectionVector", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN6duckdb17TopNBoundaryValue16GetBoundaryValueB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(194) %3)
end_hunk_0
begin_hunk_1_@_ZN6duckdb8TopNHeap19CheckBoundaryValuesERNS_9DataChunkES2_RNS_17TopNBoundaryValueE:bb.a
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !88  ; 3 uses
  %i.af = load i64, ptr %i.e, align 8, !tbaa !148 ; 2 uses
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  store i32 %i.ag, ptr %.sroa.0110, align 8, !tbaa !149
end_hunk_1
begin_hunk_2_@_ZN6duckdb8TopNHeap19CheckBoundaryValuesERNS_9DataChunkES2_RNS_17TopNBoundaryValueE:bb.a

bb.l:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %i.ae, align 1
  %.sroa.0110.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0110, i64 4
  store i32 %i.ak, ptr %.sroa.0110.8..sroa_idx, align 4
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.l, %bb.k, %bb.j
end_hunk_2
