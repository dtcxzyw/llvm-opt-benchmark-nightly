inline.NumInlined: 280
inline.NumDeleted: 127
begin_hunk_0_@_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsfY7SmN0bPrO_14deltalake_test:bb.a
  store ptr %i.z, ptr %i.dq, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArceENtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.4118.0..sroa_idx, align 8
  %i.dr = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !3, !align !4, !noundef !3
  %i.du = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dt, ptr noundef nonnull @13, ptr noundef nonnull %i.r)
          to label %bb.ap unwind label %bb.w

bb.an:                                            ; preds = %bb.al
  %i.dv = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !3, !align !4, !noundef !3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !invariant.load !3, !nonnull !3
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noundef nonnull %i.dv, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4)
          to label %bb.ao unwind label %bb.w

bb.ao:                                            ; preds = %bb.an, %bb.ap
  %.sroa.0.6.in = phi i1 [ %i.du, %bb.ap ], [ %i.ea, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ai

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.body, %bb.v
  resume { ptr, i32 } %.pn

bb.aq:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5valueCsfY7SmN0bPrO_14deltalake_test.exit191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i32 %i.br, ptr %i.ah, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ah, ptr %i.ag, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsi_NtNtCshmPyUV8PP35_6chrono5naive4dateNtB5_9NaiveDateNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.eb = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !3, !align !4, !noundef !3
  %i.ee = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ed, ptr noundef nonnull @12, ptr noundef nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.s

bb.ar:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5valueCsfY7SmN0bPrO_14deltalake_test.exit191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ai, ptr %i.af, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %.0.val, ptr %i.ef, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.434.0..sroa_idx, align 8
  %i.eg = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !3, !align !4, !noundef !3
  %i.ej = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei, ptr noundef nonnull @14, ptr noundef nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.s

bb.as:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5valueCsfY7SmN0bPrO_14deltalake_test.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.el = load <2 x i32>, ptr %i.ek, align 4
  store <2 x i32> %i.el, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ac, ptr %i.ab, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXsb_NtNtCshmPyUV8PP35_6chrono5naive4timeNtB5_9NaiveTimeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  %i.em = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !3, !align !4, !noundef !3
  %i.ep = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eo, ptr noundef nonnull @12, ptr noundef nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.au

bb.at:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5valueCsfY7SmN0bPrO_14deltalake_test.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ae, ptr %i.aa, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.0.val, ptr %i.eq, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.470.0..sroa_idx, align 8
  %i.er = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !3, !align !4, !noundef !3
  %i.eu = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.er, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.et, ptr noundef nonnull @14, ptr noundef nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.sroa.0.12.in = phi i1 [ %i.ep, %bb.as ], [ %i.eu, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #6 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #6 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull returned align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateECsfY7SmN0bPrO_14deltalake_test)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull returned align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextECsfY7SmN0bPrO_14deltalake_test)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !683 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !476

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !689
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !689
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !689
  %i.i = load i64, ptr %i.a, align 8, !range !653, !noalias !689, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfY7SmN0bPrO_14deltalake_test.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !477, !noalias !689, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !689
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !689, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !689
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !689
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !689
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #33
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfY7SmN0bPrO_14deltalake_test.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !476

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !690
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.h, align 8, !alias.scope !690
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !690
  %i.i = load i64, ptr %i.a, align 8, !range !653, !noalias !690, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !477, !noalias !690, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !690
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !690, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !690
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !690
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !690
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfY7SmN0bPrO_14deltalake_test.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.n, %bb.e ], [ undef, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfY7SmN0bPrO_14deltalake_test.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.e ], [ -9223372036854775807, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfY7SmN0bPrO_14deltalake_test.exit ], [ -9223372036854775807, %bb.a ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.r
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionxEE8grow_oneCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !693
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !693
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !693
  %i.f = load i64, ptr %i.a, align 8, !range !653, !noalias !693, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !477, !noalias !693, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !693
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !693, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !693
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !693
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !693
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtB7_6string6StringEEE8grow_oneCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !696
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !696
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !696
  %i.f = load i64, ptr %i.a, align 8, !range !653, !noalias !696, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !477, !noalias !696, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !696
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !696, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !696
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !696
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !696
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2r_6errors15DeltaTableErrorEEEE8grow_oneCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !699
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !699
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !699
  %i.f = load i64, ptr %i.a, align 8, !range !653, !noalias !699, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !477, !noalias !699, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !699
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !699, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !699
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !699
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !699
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsfY7SmN0bPrO_14deltalake_test10concurrent6WorkerE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !702
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !702
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 144), !noalias !702
  %i.f = load i64, ptr %i.a, align 8, !range !653, !noalias !702, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !477, !noalias !702, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !702
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !702, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !702
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !702
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !702
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCslhw8ac5C6Cs_9arrow_ord4sort10SortColumnE8grow_oneCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !705
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !705
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !705
  %i.f = load i64, ptr %i.a, align 8, !range !653, !noalias !705, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !477, !noalias !705, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !705
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !705, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !705
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !705
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !705
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !478
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !478

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
end_hunk_0
