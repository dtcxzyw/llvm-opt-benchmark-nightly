Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/criterion-524b2807e12f564b.criterion.5ad8dacf280593c5-cgu.12?download=true
inline.NumInlined: 484
inline.NumDeleted: 246
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion:bb.a

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !538
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #19, !noalias !538
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !538, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = icmp ule i64 %.val1.i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !538
  %.not.i.i.i.i = icmp eq i64 %.val1.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRNtNtCscdodAO9FK5_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs7NzLGBMhIGf_9criterion.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val1.i, i1 false), !noalias !539
  br label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRNtNtCscdodAO9FK5_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs7NzLGBMhIGf_9criterion.exit

_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRNtNtCscdodAO9FK5_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i, %bb.c
  store i8 3, ptr %0, align 8, !alias.scope !540
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !540
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !540
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !540
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtCs7NzLGBMhIGf_9criterion4html10ReportLinkEBP_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !543 {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !544, !nonnull !5, !align !7, !noundef !5
  tail call void @_RINvXNvNtCs7NzLGBMhIGf_9criterion4htmls4_1__NtB5_10ReportLinkNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtCs7NzLGBMhIGf_9criterion4html14BenchmarkGroupEBP_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !547 {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !548, !nonnull !5, !align !7, !noundef !5
  tail call void @_RINvXNvNtCs7NzLGBMhIGf_9criterion4htmls6_1__NtB5_14BenchmarkGroupNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtCs7NzLGBMhIGf_9criterion4html19BenchmarkValueGroupEBP_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !551 {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !552, !nonnull !5, !align !7, !noundef !5
  tail call void @_RINvXNvNtCs7NzLGBMhIGf_9criterion4htmls5_1__NtB5_19BenchmarkValueGroupNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtCs7NzLGBMhIGf_9criterion4html19IndividualBenchmarkEBP_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !555 {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !556, !nonnull !5, !align !7, !noundef !5
  tail call void @_RINvXNvNtCs7NzLGBMhIGf_9criterion4htmls_1__NtB5_19IndividualBenchmarkNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtCs7NzLGBMhIGf_9criterion4html4PlotEBP_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !559 {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !560, !nonnull !5, !align !7, !noundef !5
  tail call void @_RINvXNvNtCs7NzLGBMhIGf_9criterion4htmls2_1__NtB5_4PlotNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRReECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !574 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %.val.i = load ptr, ptr %1, align 8, !noalias !575, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !noalias !575, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !579
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !579
  %i.c = load i64, ptr %i.a, align 8, !range !15, !noalias !579, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !16, !noalias !579, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !579
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #19, !noalias !579
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !579, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = icmp ule i64 %.val1.i, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !579
  %.not.i.i.i.i.i = icmp eq i64 %.val1.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs7NzLGBMhIGf_9criterion.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val1.i, i1 false), !noalias !580
  br label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs7NzLGBMhIGf_9criterion.exit

_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i, %bb.c
  store i8 3, ptr %0, align 8, !alias.scope !581
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !581
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !581
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !581
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRbECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 2)) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !588 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %.val.i = load i8, ptr %1, align 1, !range !590, !noalias !589, !noundef !5
  store i8 1, ptr %0, align 8, !alias.scope !591
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !alias.scope !591
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRjECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !598 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %.val.i = load i64, ptr %1, align 8, !noalias !599, !noundef !5
  store i8 2, ptr %0, align 8, !alias.scope !600
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !600
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !600
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys2io11is_terminal6isatty11is_terminalNtNtNtBa_2io5stdio6StdoutECs7NzLGBMhIGf_9criterion(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 !guid !601 {
bb.a:
  %i.a = tail call noundef i32 @isatty(i32 noundef 1) #22
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RINvNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB5_6SamplepE11percentiles3cmpdEBb_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !602 {
bb.a:
  %.val = load double, ptr %0, align 8, !noundef !5 ; 3 uses
  %.val3 = load double, ptr %1, align 8, !noundef !5 ; 3 uses
  %i.a = fcmp ugt double %.val, %.val3
  %i.b = fcmp ult double %.val, %.val3            ; 2 uses
  %..i = select i1 %i.b, i8 -2, i8 1
  %.1.i = sext i1 %i.b to i8
  %.sroa.0.0.i = select i1 %i.a, i8 %..i, i8 %.1.i
  %.not = fcmp uno double %.val, %.val3
  %. = select i1 %.not, i8 0, i8 %.sroa.0.0.i
  ret i8 %.
}

; Function Attrs: nonlazybind uwtable
define hidden { double, double } @_RNvMNtCs7NzLGBMhIGf_9criterion5statsINtB2_12DistributiondE19confidence_intervalB4_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !603 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = fcmp ogt double %1, 0.000000e+00
  %i.c = fcmp olt double %1, 1.000000e+00
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
  unreachable

bb.c:                                             ; preds = %bb.f, %bb.e
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq i64 %i.l, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw nsw i64 %i.l, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef 8) #22
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = tail call { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE11percentilesB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef %i.i) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 5 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 5 uses
  store ptr %i.k, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = fsub nnan ninf double 1.000000e+00, %1
  %i.o = fmul nnan double %i.n, 5.000000e+01
  %i.p = invoke noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentilesINtB2_11PercentilesdE2atB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, double noundef %i.o)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.q = fadd nnan double %1, 1.000000e+00
  %i.r = fmul nnan double %i.q, 5.000000e+01
  %i.s = invoke noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentilesINtB2_11PercentilesdE2atB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, double noundef %i.r)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = shl nuw nsw i64 %i.l, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef 8) #22
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit4: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = insertvalue { double, double } poison, double %i.p, 0
  %i.w = insertvalue { double, double } %i.v, double %i.s, 1
  ret { double, double } %i.w

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentilesINtB2_11PercentilesdE2atB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !606 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = fcmp ult double %1, 0.000000e+00
  %i.c = fcmp ugt double %1, 1.000000e+02
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = add i64 %i.e, -1                         ; 2 uses
  %i.h = fcmp oeq double %1, 1.000000e+02
  br i1 %i.h, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = fdiv nnan double %1, 1.000000e+02
  %i.j = uitofp i64 %i.g to double
  %i.k = fmul double %i.i, %i.j                   ; 2 uses
  %i.l = tail call noundef double @llvm.floor.f64(double %i.k) ; 5 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = fcmp uno double %i.l, 0.000000e+00
  br i1 %i.n, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.fabs.f64(double %i.l)
  %or.cond.i.i = fcmp oeq double %i.o, +inf
  br i1 %or.cond.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = fcmp ogt double %i.l, f0x43EFFFFFFFFFFFFF
  br i1 %i.p, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtCsfpDJYaEmhVs_4cast5ErrorE6unwrapCs7NzLGBMhIGf_9criterion.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.4.0.ph.i = phi i8 [ 2, %bb.h ], [ 0, %bb.g ], [ 1, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !607
  store i8 %.sroa.4.0.ph.i, ptr %i.a, align 1, !noalias !607
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19, !noalias !607
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtCsfpDJYaEmhVs_4cast5ErrorE6unwrapCs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.h
  %i.q = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l) ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !noundef !5 ; 2 uses
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.e
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.t
  %i.w = load double, ptr %i.v, align 8, !noundef !5
  %i.x = fsub double %i.w, %i.s
  %i.y = fmul double %i.m, %i.x
  %i.z = fadd double %i.s, %i.y
  br label %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentilesINtB2_11PercentilesdE12at_uncheckedB8_.exit

bb.j:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.g
  %i.ab = load double, ptr %i.aa, align 8, !noundef !5
  br label %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentilesINtB2_11PercentilesdE12at_uncheckedB8_.exit

_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentilesINtB2_11PercentilesdE12at_uncheckedB8_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtCsfpDJYaEmhVs_4cast5ErrorE6unwrapCs7NzLGBMhIGf_9criterion.exit.i, %bb.j
  %.sroa.0.0.i = phi double [ %i.ab, %bb.j ], [ %i.z, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtCsfpDJYaEmhVs_4cast5ErrorE6unwrapCs7NzLGBMhIGf_9criterion.exit.i ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2_3KdedNtNtB2_6kernel8GaussianE3mapB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 !guid !608 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.e, align 8
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1p_5slice4iter4IterdENCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2C_3KdedNtNtB2C_6kernel8GaussianE3map0EE9from_iterB2I_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecdE16into_boxed_sliceCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2_3KdedNtNtB2_6kernel8GaussianE8estimateB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, double noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality !guid !609 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.c, 1
  %i.g = icmp eq i64 %i.c, 1
  br i1 %i.g, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.aa, %.preheader ] ; 3 uses
  %.sroa.02.0.i = phi double [ 0.000000e+00, %.preheader.preheader.new ], [ %i.z, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %.val14.i = load double, ptr %i.h, align 8, !noundef !5
  %i.i = fsub double %1, %.val14.i
  %i.j = fdiv double %i.i, %i.e                   ; 2 uses
  %i.k = fmul double %i.j, %i.j
  %i.l = tail call noundef double @llvm.exp.f64(double %i.k)
  %i.m = fmul double %i.l, f0x401921FB60000000
  %i.n = tail call noundef double @llvm.sqrt.f64(double %i.m)
  %i.o = fdiv double 1.000000e+00, %i.n
  %i.p = fadd double %.sroa.02.0.i, %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val14.i.1 = load double, ptr %i.r, align 8, !noundef !5
  %i.s = fsub double %1, %.val14.i.1
  %i.t = fdiv double %i.s, %i.e                   ; 2 uses
  %i.u = fmul double %i.t, %i.t
  %i.v = tail call noundef double @llvm.exp.f64(double %i.u)
  %i.w = fmul double %i.v, f0x401921FB60000000
  %i.x = tail call noundef double @llvm.sqrt.f64(double %i.w)
  %i.y = fdiv double 1.000000e+00, %i.x
  %i.z = fadd double %i.p, %i.y                   ; 3 uses
  %i.aa = add nuw i64 %.sroa.04.0.i, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi double [ 0.000000e+00, %.preheader.preheader ], [ %i.z, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.04.0.i.epil.init
  %.val14.i.epil = load double, ptr %i.ab, align 8, !noundef !5
  %i.ac = fsub double %1, %.val14.i.epil
  %i.ad = fdiv double %i.ac, %i.e                 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad
  %i.af = tail call noundef double @llvm.exp.f64(double %i.ae)
  %i.ag = fmul double %i.af, f0x401921FB60000000
  %i.ah = tail call noundef double @llvm.sqrt.f64(double %i.ag)
  %i.ai = fdiv double 1.000000e+00, %i.ah
  %i.aj = fadd double %.sroa.02.0.i.epil.init, %i.ai
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit: ; preds = %.preheader.epil.preheader, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi double [ 0.000000e+00, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1I_3KdedNtNtB1I_6kernel8GaussianE8estimate0EB1O_.exit.loopexit.unr-lcssa ], [ %i.aj, %.preheader.epil.preheader ]
  %i.ak = uitofp i64 %i.c to double
  %i.al = fmul double %i.e, %i.ak
  %i.am = fdiv double %.sroa.0.0.i, %i.al
  ret double %i.am
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE11percentilesB8_(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !615 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !617
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 1152921504606846976) %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !617
  %i.e = load i64, ptr %i.c, align 8, !range !15, !noalias !617, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !16, !noalias !617, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !noalias !617
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #19, !noalias !617
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !noalias !617, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp ule i64 %1, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !617
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !616
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8, !alias.scope !616
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8, !alias.scope !616
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7NzLGBMhIGf_9criterion.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i
  %i.o = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull readonly align 8 %0, i64 %i.o, i1 false), !noalias !616
  store i64 %1, ptr %i.n, align 8, !alias.scope !616
  br label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7NzLGBMhIGf_9criterion.exit

_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i, %bb.c
  %i.p = call { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecdE16into_boxed_sliceCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 3 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 5 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !618
  store ptr %i.a, ptr %i.b, align 8, !noalias !618
  %i.s = icmp samesign ult i64 %i.r, 2
  br i1 %i.s, label %bb.g, label %bb.d, !prof !6

bb.d:                                             ; preds = %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7NzLGBMhIGf_9criterion.exit
  %i.t = icmp samesign ult i64 %i.r, 21
  br i1 %i.t, label %bb.f, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortdNCINvMB6_Sd16sort_unstable_byINvNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1t_6SamplepE11percentiles3cmpdEE0EB1z_(ptr noalias noundef nonnull align 8 %i.q, i64 noundef range(i64 0, 1152921504606846976) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftdNCINvMB8_Sd16sort_unstable_byINvNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1W_6SamplepE11percentiles3cmpdEE0EB22_(ptr noalias noundef nonnull align 8 %i.q, i64 noundef range(i64 0, 1152921504606846976) %i.r, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7NzLGBMhIGf_9criterion.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !618
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  ret { ptr, i64 } %i.p

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = shl nuw nsw i64 %i.r, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef 8) #22
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE14median_abs_devB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef range(i64 0, 2) %2, double %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !633 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = trunc nuw i64 %2 to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE11percentilesB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 5 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 5 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.noexc.i, label %bb.c, !prof !10

common.resume:                                    ; preds = %bb.h, %bb.r, %.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit.i ], [ %i.aq, %bb.h ], [ %i.as, %bb.r ], [ %.pn16, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit.i: ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = shl nuw nsw i64 %i.i, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef 8) #22, !noalias !634
  br label %common.resume

.noexc.i:                                         ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #19, !noalias !634
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.m = add i64 %i.i, -1
  %i.n = uitofp i64 %i.m to double
  %i.o = fmul nnan double %i.n, 5.000000e-01      ; 2 uses
  %i.p = tail call noundef double @llvm.floor.f64(double %i.o) ; 3 uses
  %i.q = fcmp ogt double %i.p, f0x43EFFFFFFFFFFFFF
  br i1 %i.q, label %bb.d, label %_RNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB4_6SampledE14median_abs_dev0Ba_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !635
  store i8 2, ptr %i.b, align 1, !noalias !635
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19
          to label %.noexc4.i unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit.i, !noalias !634

.noexc4.i:                                        ; preds = %bb.d
  unreachable

_RNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB4_6SampledE14median_abs_dev0Ba_.exit: ; preds = %bb.c
  %i.r = fsub nnan ninf double %i.o, %i.p
  %i.s = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.p) ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !noalias !636, !noundef !5 ; 2 uses
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.i
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.y = load double, ptr %i.x, align 8, !noalias !636, !noundef !5
  %i.z = fsub double %i.y, %i.u
  %i.aa = fmul double %i.r, %i.z
  %i.ab = fadd double %i.u, %i.aa
  %i.ac = shl nuw nsw i64 %i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef 8) #22, !noalias !634
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB4_6SampledE14median_abs_dev0Ba_.exit
  %storemerge = phi double [ %i.ab, %_RNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB4_6SampledE14median_abs_dev0Ba_.exit ], [ %3, %bb.a ]
  store double %storemerge, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  store ptr %0, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.af, align 8
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1p_5slice4iter4IterdENCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2C_6SampledE14median_abs_devs_0EE9from_iterB2I_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5 ; 3 uses
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  br i1 %i.ak, label %.lr.ph, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i, !prof !6

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i: ; preds = %bb.g, %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 70, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i
  unreachable

.lr.ph:                                           ; preds = %bb.e
  %.idx = shl nuw nsw i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.al
  br i1 %i.an, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.ao = phi ptr [ %i.ah, %.lr.ph ], [ %i.am, %bb.f ] ; 2 uses
  %.val.i.i = load double, ptr %i.ao, align 8, !alias.scope !637, !noalias !638, !noundef !5
  %i.ap = fcmp ord double %.val.i.i, 0.000000e+00
  br i1 %i.ap, label %bb.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i

bb.h:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i, %._crit_edge
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.t

._crit_edge:                                      ; preds = %bb.f
  %i.ar = invoke { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE11percentilesB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ah, i64 noundef %i.aj)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.i:                                             ; preds = %bb.m, %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.d) #20
          to label %bb.r unwind label %bb.t

bb.j:                                             ; preds = %._crit_edge
  %i.at = extractvalue { ptr, i64 } %i.ar, 0      ; 6 uses
  %i.au = extractvalue { ptr, i64 } %i.ar, 1      ; 5 uses
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #19
          to label %.noexc9 unwind label %bb.i

.noexc9:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.aw = add i64 %i.au, -1
  %i.ax = uitofp i64 %i.aw to double
  %i.ay = fmul nnan double %i.ax, 5.000000e-01    ; 2 uses
  %i.az = call noundef double @llvm.floor.f64(double %i.ay) ; 3 uses
  %i.ba = fcmp ogt double %i.az, f0x43EFFFFFFFFFFFFF
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !639
  store i8 2, ptr %i.a, align 1, !noalias !639
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19
          to label %.noexc10 unwind label %bb.i

.noexc10:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bb = call i64 @llvm.fptoui.sat.i64.f64(double %i.az) ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !noalias !640, !noundef !5 ; 2 uses
  %i.be = add nuw i64 %i.bb, 1                    ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.au
  call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.be
  %i.bh = load double, ptr %i.bg, align 8, !noalias !640, !noundef !5
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit12 unwind label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.r:                                             ; preds = %bb.i
  br i1 %i.av, label %common.resume, label %.thread

.thread:                                          ; preds = %bb.o, %bb.s, %bb.r
  %.pn16 = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.bl, %bb.s ], [ %i.bi, %bb.o ]
  %i.bk = shl nuw nsw i64 %i.au, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef 8) #22
  br label %common.resume

bb.s:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit12: ; preds = %bb.p
  %i.bm = fsub nnan ninf double %i.ay, %i.az
  %i.bn = fsub double %i.bh, %i.bd
  %i.bo = fmul double %i.bm, %i.bn
  %i.bp = fadd double %i.bd, %i.bo
  %i.bq = fmul double %i.bp, f0x3FF7B8BAC0000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.br = shl nuw nsw i64 %i.au, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, -9223372036854775808) %i.br, i64 noundef 8) #22
  ret double %i.bq

bb.t:                                             ; preds = %bb.i, %bb.h
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3maxB8_(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !643 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %0, align 8, !noundef !5 ; 3 uses
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1I_6SampledE3max0EB1O_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %1, 2305843009213693951          ; 2 uses
  %i.f = and i64 %i.e, 2305843009213693951        ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.f, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi6 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x double>, ptr %i.g, align 8
  %wide.load7 = load <2 x double>, ptr %i.h, align 8
  %i.i = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %vec.phi, <2 x double> %wide.load) ; 2 uses
  %i.j = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %vec.phi6, <2 x double> %wide.load7) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !641

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %i.i, <2 x double> %i.j)
  %i.l = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1I_6SampledE3max0EB1O_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi double [ %i.c, %bb.c ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i = phi double [ %i.n, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %.val.i = load double, ptr %i.m, align 8, !noundef !5
  %i.n = tail call nsz noundef double @llvm.maximumnum.f64(double %.sroa.02.0.i, double %.val.i) ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.f
  br i1 %i.p, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1I_6SampledE3max0EB1O_.exit, label %scalar.ph, !llvm.loop !642

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1I_6SampledE3max0EB1O_.exit: ; preds = %scalar.ph, %middle.block, %bb.b
  %.sroa.0.0.i = phi double [ %i.c, %bb.b ], [ %i.l, %middle.block ], [ %i.n, %scalar.ph ]
  ret double %.sroa.0.0.i

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3minB8_(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !646 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %0, align 8, !noundef !5 ; 3 uses
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1I_6SampledE3min0EB1O_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %1, 2305843009213693951          ; 2 uses
  %i.f = and i64 %i.e, 2305843009213693951        ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.f, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi6 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x double>, ptr %i.g, align 8
  %wide.load7 = load <2 x double>, ptr %i.h, align 8
  %i.i = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %vec.phi, <2 x double> %wide.load) ; 2 uses
  %i.j = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %vec.phi6, <2 x double> %wide.load7) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !644

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %i.i, <2 x double> %i.j)
  %i.l = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1I_6SampledE3min0EB1O_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi double [ %i.c, %bb.c ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i = phi double [ %i.n, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %.val.i = load double, ptr %i.m, align 8, !noundef !5
  %i.n = tail call nsz noundef double @llvm.minimumnum.f64(double %.sroa.02.0.i, double %.val.i) ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.f
  br i1 %i.p, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1I_6SampledE3min0EB1O_.exit, label %scalar.ph, !llvm.loop !645

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1I_6SampledE3min0EB1O_.exit: ; preds = %scalar.ph, %middle.block, %bb.b
  %.sroa.0.0.i = phi double [ %i.c, %bb.b ], [ %i.l, %middle.block ], [ %i.n, %scalar.ph ]
  ret double %.sroa.0.0.i

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3newB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !649 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 1
  br i1 %i.a, label %.lr.ph, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit, !prof !6

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit: ; preds = %bb.c, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 70, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19
  unreachable

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nuw nsw i64 %1, 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi ptr [ %0, %.lr.ph ], [ %i.c, %bb.b ] ; 2 uses
  %.val.i = load double, ptr %i.e, align 8, !noalias !650, !noundef !5
  %i.f = fcmp ord double %.val.i, 0.000000e+00
  br i1 %i.f, label %bb.b, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit

._crit_edge:                                      ; preds = %bb.b
  %i.g = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %1, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3varB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef range(i64 0, 2) %2, double %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !654 {
bb.a:
  %i.a = trunc nuw i64 %2 to i1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = tail call noundef double @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtNtBb_3ops5arith3Add3addECs7NzLGBMhIGf_9criterion(ptr noundef nonnull readonly align 8 %0, ptr noundef nonnull readonly %i.b, double noundef 0.000000e+00)
  %i.d = uitofp i64 %1 to double
  %i.e = fdiv double %i.c, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi double [ %i.e, %bb.b ], [ %3, %bb.a ] ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCs7NzLGBMhIGf_9criterion8analysis7compare6t_test:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7NzLGBMhIGf_9criterion.exit
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7NzLGBMhIGf_9criterion.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit unwind label %bb.ai

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.p, ptr %i.k, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs7NzLGBMhIGf_9criterion, ptr %.sroa.47.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @78, ptr noundef nonnull %i.k)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #20
          to label %.body unwind label %bb.az

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i20 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i20: ; preds = %bb.as
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit23 unwind label %bb.ai

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit23: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs7NzLGBMhIGf_9criterion.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.al

bb.av:                                            ; preds = %bb.aw, %bb.al
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = icmp eq i64 %i.im, 0
  br i1 %i.jh, label %common.resume, label %common.resume.sink.split

bb.aw:                                            ; preds = %bb.al
  %i.ji = invoke { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecdE16into_boxed_sliceCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.ax unwind label %bb.av     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.jj = extractvalue { ptr, i64 } %i.ji, 0
  %i.jk = extractvalue { ptr, i64 } %i.ji, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store double %i.cy, ptr %0, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jj, ptr %i.jl, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.jk, ptr %i.jm, align 8
  %i.jn = icmp eq i64 %i.im, 0
  br i1 %i.jn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7NzLGBMhIGf_9criterion5stats12DistributiondEEBG_.exit24, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jo = shl nuw nsw i64 %i.im, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.il, i64 noundef range(i64 1, -9223372036854775808) %i.jo, i64 noundef 8) #22
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7NzLGBMhIGf_9criterion5stats12DistributiondEEBG_.exit24

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7NzLGBMhIGf_9criterion5stats12DistributiondEEBG_.exit24: ; preds = %bb.ax, %bb.ay
  ret void

bb.az:                                            ; preds = %bb.ar, %bb.ao
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { double, double } @_RNvNvNtNtCs7NzLGBMhIGf_9criterion8analysis7compare9estimates5stats(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !784 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.d = tail call noundef double @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtNtBb_3ops5arith3Add3addECs7NzLGBMhIGf_9criterion(ptr noundef nonnull readonly align 8 %0, ptr noundef nonnull readonly %i.c, double noundef 0.000000e+00)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %3
  %i.f = tail call noundef double @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtNtBb_3ops5arith3Add3addECs7NzLGBMhIGf_9criterion(ptr noundef nonnull readonly align 8 %2, ptr noundef nonnull readonly %i.e, double noundef 0.000000e+00)
  %i.g = tail call { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE11percentilesB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 5 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 5 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.noexc, label %bb.b, !prof !10

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #19
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = add i64 %i.i, -1
  %i.l = uitofp i64 %i.k to double
  %i.m = fmul nnan double %i.l, 5.000000e-01      ; 2 uses
  %i.n = tail call noundef double @llvm.floor.f64(double %i.m) ; 3 uses
  %i.o = fcmp ogt double %i.n, f0x43EFFFFFFFFFFFFF
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !785
  store i8 2, ptr %i.b, align 1, !noalias !785
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19
          to label %.noexc9 unwind label %.thread30

.noexc9:                                          ; preds = %bb.c
  unreachable

.thread:                                          ; preds = %.thread30, %bb.i
  %.pn26 = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.ab, %.thread30 ]
  %i.p = shl nuw nsw i64 %i.i, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef 8) #22
  resume { ptr, i32 } %.pn26

bb.d:                                             ; preds = %bb.b
  %i.q = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.n) ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !noalias !786, !noundef !5 ; 2 uses
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.i
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %i.w = load double, ptr %i.v, align 8, !noalias !786, !noundef !5
  %i.x = invoke { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE11percentilesB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.e unwind label %.thread30  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.y = extractvalue { ptr, i64 } %i.x, 0        ; 5 uses
  %i.z = extractvalue { ptr, i64 } %i.x, 1        ; 5 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #19
          to label %.noexc13 unwind label %.thread30

.thread30:                                        ; preds = %bb.c, %bb.d, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.noexc13:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.ac = add i64 %i.z, -1
  %i.ad = uitofp i64 %i.ac to double
  %i.ae = fmul nnan double %i.ad, 5.000000e-01    ; 2 uses
  %i.af = tail call noundef double @llvm.floor.f64(double %i.ae) ; 3 uses
  %i.ag = fcmp ogt double %i.af, f0x43EFFFFFFFFFFFFF
  br i1 %i.ag, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit18

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !787
  store i8 2, ptr %i.a, align 1, !noalias !787
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = shl nuw nsw i64 %i.z, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef range(i64 1, -9223372036854775808) %i.ai, i64 noundef 8) #22
  br label %.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentiles11PercentilesdEEBK_.exit18: ; preds = %bb.g
  %i.aj = fsub nnan ninf double %i.ae, %i.af
  %i.ak = fsub nnan ninf double %i.m, %i.n
  %i.al = fsub double %i.w, %i.s
  %i.am = fmul double %i.ak, %i.al
  %i.an = fadd double %i.s, %i.am
  %i.ao = insertelement <2 x i64> poison, i64 %1, i64 0
  %i.ap = insertelement <2 x i64> %i.ao, i64 %3, i64 1
  %i.aq = uitofp <2 x i64> %i.ap to <2 x double>
  %i.ar = insertelement <2 x double> poison, double %i.d, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.f, i64 1
  %i.at = fdiv <2 x double> %i.as, %i.aq          ; 2 uses
  %i.au = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.af) ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !noalias !788, !noundef !5 ; 2 uses
  %i.ax = add nuw i64 %i.au, 1                    ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.z
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ax
  %i.ba = load double, ptr %i.az, align 8, !noalias !788, !noundef !5
  %i.bb = fsub double %i.ba, %i.aw
  %i.bc = fmul double %i.aj, %i.bb
  %i.bd = fadd double %i.aw, %i.bc
  %i.be = shl nuw nsw i64 %i.z, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef range(i64 1, -9223372036854775808) %i.be, i64 noundef 8) #22
  %i.bf = fdiv double %i.an, %i.bd
  %i.bg = fadd double %i.bf, -1.000000e+00
  %i.bh = extractelement <2 x double> %i.at, i64 0
  %i.bi = extractelement <2 x double> %i.at, i64 1
  %i.bj = fdiv double %i.bh, %i.bi
  %i.bk = fadd double %i.bj, -1.000000e+00
  %i.bl = shl nuw nsw i64 %i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.bl, i64 noundef 8) #22
  %i.bm = insertvalue { double, double } poison, double %i.bk, 0
  %i.bn = insertvalue { double, double } %i.bm, double %i.bg, 1
  ret { double, double } %i.bn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCs7NzLGBMhIGf_9criterion8analysis7compare6t_test0INtB7_5FnMutTRRdEE8call_mutBW_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #6 !guid !789 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !7, !noundef !5
  %i.a = load double, ptr %.val, align 8, !noundef !5
  %i.b = tail call double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp one double %i.b, +inf
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_CsfpDJYaEmhVs_4castNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !guid !790 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !791, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs4_CsfpDJYaEmhVs_4castNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs4_CsfpDJYaEmhVs_4castNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.116, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 !guid !795 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %1, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = tail call i32 @memcmp(ptr nonnull readonly %0, ptr nonnull readonly %2, i64 %spec.store.select.i), !alias.scope !796 ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = icmp eq i32 %i.a, 0
  %i.d = sub nsw i64 %1, %3
  %spec.select.i = select i1 %i.c, i64 %i.d, i64 %i.b
  %i.e = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  ret i8 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !guid !797 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #7 !guid !800 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !801, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !801, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !801, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !801
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 !guid !807 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !808
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !809, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !809, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !809
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !809
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !guid !810 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

end_hunk_1
