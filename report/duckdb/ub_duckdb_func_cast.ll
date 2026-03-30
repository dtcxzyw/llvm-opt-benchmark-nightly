begin_hunk_0
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb6Bignum11BignumToIntINS_10uhugeint_tEEEbRKNS_8bignum_tERT_Rb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::uhugeint_t", align 16 ; 11 uses
  %4 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %5 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 4 uses
end_hunk_0
begin_hunk_1
  %i.t = call { i64, i64 } @_ZNK6duckdb10uhugeint_torERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = extractvalue { i64, i64 } %i.t, 1
  store i64 %i.u, ptr %3, align 16, !tbaa !13
  store i64 %i.v, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
end_hunk_1
begin_hunk_2
  br i1 %.0, label %.sink.split, label %bb.p

bb.n:                                             ; preds = %bb.i
  %.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %1, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
end_hunk_2
