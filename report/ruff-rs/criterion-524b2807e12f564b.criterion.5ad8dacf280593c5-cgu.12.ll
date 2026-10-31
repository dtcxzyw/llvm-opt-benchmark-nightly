Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/criterion-524b2807e12f564b.criterion.5ad8dacf280593c5-cgu.12?download=true
inline.NumInlined: 484
inline.NumDeleted: 246
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtCs7NzLGBMhIGf_9criterion4html4PlotEBP_:bb.a
  %.val.i = load ptr, ptr %1, align 8, !noalias !508, !nonnull !4, !align !6, !noundef !4
  tail call void @_RINvXNvNtCs7NzLGBMhIGf_9criterion4htmls2_1__NtB5_4PlotNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRReECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %.val.i = load ptr, ptr %1, align 8, !noalias !522, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !noalias !522, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !526
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !526
  %i.c = load i64, ptr %i.a, align 8, !range !14, !noalias !526, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !15, !noalias !526, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !526
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #19, !noalias !526
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !526, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = icmp ule i64 %.val1.i, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !526
  %.not.i.i.i.i.i = icmp eq i64 %.val1.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs7NzLGBMhIGf_9criterion.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val1.i, i1 false), !noalias !527
  br label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs7NzLGBMhIGf_9criterion.exit

_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i, %bb.c
  store i8 3, ptr %0, align 8, !alias.scope !528
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !528
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !528
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !528
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRbECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 2)) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %.val.i = load i8, ptr %1, align 1, !range !536, !noalias !535, !noundef !4
  store i8 1, ptr %0, align 8, !alias.scope !537
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !alias.scope !537
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRjECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %.val.i = load i64, ptr %1, align 8, !noalias !544, !noundef !4
  store i8 2, ptr %0, align 8, !alias.scope !545
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !545
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !545
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys2io11is_terminal6isatty11is_terminalNtNtNtBa_2io5stdio6StdoutECs7NzLGBMhIGf_9criterion(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @isatty(i32 noundef 1) #22
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RINvNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB5_6SamplepE11percentiles3cmpdEBb_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %.val = load double, ptr %0, align 8, !noundef !4 ; 3 uses
  %.val3 = load double, ptr %1, align 8, !noundef !4 ; 3 uses
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
define hidden { double, double } @_RNvMNtCs7NzLGBMhIGf_9criterion5statsINtB2_12DistributiondE19confidence_intervalB4_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = fcmp ogt double %1, 0.000000e+00
  %i.c = fcmp olt double %1, 1.000000e+00
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.e, label %bb.b, !prof !8

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
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = tail call { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE11percentilesB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef %i.i) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 5 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 5 uses
  store ptr %i.k, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = fsub nnan double 1.000000e+00, %1
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
define hidden noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentilesINtB2_11PercentilesdE2atB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = fcmp ult double %1, 0.000000e+00
  %i.c = fcmp ugt double %1, 1.000000e+02
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = add i64 %i.e, -1                         ; 2 uses
  %i.h = fcmp oeq double %1, 1.000000e+02
  br i1 %i.h, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = fdiv nnan double %1, 1.000000e+02
  %i.j = uitofp i64 %i.g to double
  %i.k = fmul double %i.i, %i.j                   ; 2 uses
  %i.l = tail call noundef double @llvm.floor.f64(double %i.k) ; 6 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = fcmp uno double %i.l, 0.000000e+00
  br i1 %i.n, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.fabs.f64(double %i.l)
  %or.cond.i.i = fcmp oeq double %i.o, +inf
  br i1 %or.cond.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = fcmp ogt double %i.l, f0x43EFFFFFFFFFFFFF
  br i1 %i.p, label %bb.i, label %2

2:                                                ; preds = %bb.h
  %3 = fcmp ugt double %i.l, -1.000000e+00
  br i1 %3, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtCsfpDJYaEmhVs_4cast5ErrorE6unwrapCs7NzLGBMhIGf_9criterion.exit.i, label %bb.i

bb.i:                                             ; preds = %2, %bb.h, %bb.g, %bb.f
  %.sroa.4.0.ph.i = phi i8 [ 3, %2 ], [ 0, %bb.g ], [ 1, %bb.f ], [ 2, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !548
  store i8 %.sroa.4.0.ph.i, ptr %i.a, align 1, !noalias !548
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19, !noalias !548
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtCsfpDJYaEmhVs_4cast5ErrorE6unwrapCs7NzLGBMhIGf_9criterion.exit.i: ; preds = %2
  %i.q = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l) ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.e
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.t
  %i.w = load double, ptr %i.v, align 8, !noundef !4
  %i.x = fsub double %i.w, %i.s
  %i.y = fmul double %i.m, %i.x
  %i.z = fadd double %i.s, %i.y
  br label %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentilesINtB2_11PercentilesdE12at_uncheckedB8_.exit

bb.j:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.g
  %i.ab = load double, ptr %i.aa, align 8, !noundef !4
  br label %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentilesINtB2_11PercentilesdE12at_uncheckedB8_.exit

_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate11percentilesINtB2_11PercentilesdE12at_uncheckedB8_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtCsfpDJYaEmhVs_4cast5ErrorE6unwrapCs7NzLGBMhIGf_9criterion.exit.i, %bb.j
  %.sroa.0.0.i = phi double [ %i.ab, %bb.j ], [ %i.z, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtCsfpDJYaEmhVs_4cast5ErrorE6unwrapCs7NzLGBMhIGf_9criterion.exit.i ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2_3KdedNtNtB2_6kernel8GaussianE3mapB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 {
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
define hidden noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2_3KdedNtNtB2_6kernel8GaussianE8estimateB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, double noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !noundef !4 ; 4 uses
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
  %.val14.i = load double, ptr %i.h, align 8, !noundef !4
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
  %.val14.i.1 = load double, ptr %i.r, align 8, !noundef !4
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
  %.val14.i.epil = load double, ptr %i.ab, align 8, !noundef !4
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
define hidden { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE11percentilesB8_(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !555
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 1152921504606846976) %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !555
  %i.e = load i64, ptr %i.c, align 8, !range !14, !noalias !555, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !15, !noalias !555, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !noalias !555
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #19, !noalias !555
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !noalias !555, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp ule i64 %1, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !555
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !554
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8, !alias.scope !554
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8, !alias.scope !554
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7NzLGBMhIGf_9criterion.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i
  %i.o = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull readonly align 8 %0, i64 %i.o, i1 false), !noalias !554
  store i64 %1, ptr %i.n, align 8, !alias.scope !554
  br label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7NzLGBMhIGf_9criterion.exit

_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i, %bb.c
  %i.p = call { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecdE16into_boxed_sliceCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 3 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 5 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !556
  store ptr %i.a, ptr %i.b, align 8, !noalias !556
  %i.s = icmp samesign ult i64 %i.r, 2
  br i1 %i.s, label %bb.g, label %bb.d, !prof !5

bb.d:                                             ; preds = %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7NzLGBMhIGf_9criterion.exit
  %i.t = icmp samesign ult i64 %i.r, 21
  br i1 %i.t, label %bb.f, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortdNCINvMB6_Sd16sort_unstable_byINvNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1t_6SamplepE11percentiles3cmpdEE0EB1z_(ptr noalias noundef nonnull align 8 %i.q, i64 noundef range(i64 0, 1152921504606846976) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftdNCINvMB8_Sd16sort_unstable_byINvNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1W_6SamplepE11percentiles3cmpdEE0EB22_(ptr noalias noundef nonnull align 8 %i.q, i64 noundef range(i64 0, 1152921504606846976) %i.r, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7NzLGBMhIGf_9criterion.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !556
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

end_hunk_0
