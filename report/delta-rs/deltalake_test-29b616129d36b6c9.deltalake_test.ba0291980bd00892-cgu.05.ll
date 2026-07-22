inline.NumInlined: 294
inline.NumDeleted: 122
begin_hunk_0_@_RINvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB5_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE16write_with_styleNtNtCsfxCIOvQJdVR_5yansi5style5StyleECsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = call noundef zeroext i1 @_RNvXs1_NtCsfxCIOvQJdVR_5yansi5styleNtB5_5StyleNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.g = load ptr, ptr %0, align 8, !nonnull !3, !align !14, !noundef !3 ; 3 uses
  br i1 %i.f, label %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_suffix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4)
  br i1 %i.h, label %bb.e, label %bb.c

_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRcNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !28, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !28, !nonnull !3, !align !14, !noundef !3
  %i.l = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @2, ptr noundef nonnull %i.b), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !nonnull !3, !align !14, !noundef !3
  %i.n = call noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_prefix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4)
  br i1 %i.n, label %bb.e, label %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit10

_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit10: ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !nonnull !3, !align !14, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRcNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !31, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !31, !nonnull !3, !align !14, !noundef !3
  %i.s = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @2, ptr noundef nonnull %i.a), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit10, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.l, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit ], [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ true, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit10 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.c = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @5, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !34, !noundef !3 ; 2 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr nonnull %.val.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit, !prof !37

bb.f:                                             ; preds = %bb.d
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr nonnull %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.f, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2pqxYH9ZEk8_3std3env3varReECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtCs2pqxYH9ZEk8_3std3env4__var(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 16               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 16               ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 13 uses
  %i.v = alloca [72 x i8], align 8                ; 12 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvCs2EMQEx3u6w6_4diff5lines(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !range !38, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 230584300921369396
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 3 uses
  store ptr %i.y, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 5 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 3 uses
  store ptr %i.ad, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr null, ptr %i.u, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  store i64 0, ptr %i.ag, align 8
  %.sroa.527.sroa.4.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.4.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.582.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.2101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.4103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.5104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %.sroa.527.sroa.4.0.copyload.a = phi i64 [ %.sroa.527.sroa.4.0.copyload.pre, %bb.p ], [ undef, %bb.a ]
  %.sroa.527.sroa.0.0.copyload = phi ptr [ %.sroa.527.sroa.0.0.copyload.pre, %bb.p ], [ undef, %bb.a ]
  %.sroa.025.0.copyload = phi i64 [ %.sroa.025.0.copyload.pre, %bb.p ], [ 4, %bb.a ] ; 2 uses
  store i64 4, ptr %i.v, align 8
  %.not = icmp eq i64 %.sroa.025.0.copyload, 4
  br i1 %.not, label %bb.c, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.as = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !39, !noalias !42, !nonnull !3, !noundef !3
  %i.at = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !39, !noalias !42, !nonnull !3, !noundef !3 ; 5 uses
  %i.au = icmp eq ptr %i.at, %i.as
  br i1 %i.au, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !39, !noalias !42
  %.sroa.0.0.copyload = load i64, ptr %i.at, align 8, !noalias !39
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !39
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !39
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bo, %bb.bl, %.loopexit.split-lp.i, %bb.aq, %bb.bb, %bb.ac, %bb.z, %bb.bi, %bb.w
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.bi ], [ %i.bn, %bb.w ], [ %i.ef, %bb.bl ], [ %i.br, %bb.z ], [ %i.bt, %bb.ac ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.eh, %bb.bo ], [ %i.dx, %bb.bb ], [ %i.cz, %bb.aq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEEEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.af

.loopexit:                                        ; preds = %bb.be, %bb.t, %bb.k, %bb.j, %bb.r, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i92, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit96, %bb.ah, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCs2EMQEx3u6w6_4diff6ResultcEEECsfY7SmN0bPrO_14deltalake_test.exit.i, %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i119, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit123
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i113
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.b, %bb.d
  %.sroa.10.1 = phi i64 [ %.sroa.10.0.copyload, %bb.d ], [ %.sroa.527.sroa.4.0.copyload.a, %bb.b ] ; 5 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0.copyload, %bb.d ], [ %.sroa.527.sroa.0.0.copyload, %bb.b ] ; 9 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.d ], [ %.sroa.025.0.copyload, %bb.b ] ; 3 uses
  %.not66 = icmp eq i64 %.sroa.0.0, 3
  br i1 %.not66, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.aw = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !55, !noalias !56, !nonnull !3, !noundef !3
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !55, !noalias !56, !nonnull !3, !noundef !3 ; 4 uses
  %i.ay = icmp eq ptr %i.ax, %i.aw
  br i1 %i.ay, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  store i64 3, ptr %i.v, align 8, !alias.scope !44, !noalias !47
  br label %bb.h

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.thread: ; preds = %bb.c, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit
  %.val81 = load ptr, ptr %0, align 8
  %.val82 = load ptr, ptr %i.ai, align 8
  %i.az = invoke fastcc noundef zeroext i1 @_RINvMNtCs3TL38MOHY2H_17pretty_assertions7printerNtB3_14LatentDeletion5flushNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.u, ptr %.val81, ptr %.val82)
          to label %.loopexit139 unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !55, !noalias !56
  %.sroa.0.0.copyload8.i = load i64, ptr %i.ax, align 8, !noalias !59 ; 4 uses
  %.sroa.5.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.0.0.copyload8.i, ptr %i.v, align 8, !alias.scope !44, !noalias !47
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.323.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx9.i, i64 32, i1 false)
  %i.bb = icmp ne i64 %.sroa.0.0.copyload8.i, 4
  call void @llvm.assume(i1 %i.bb)
  %.not67 = icmp eq i64 %.sroa.0.0.copyload8.i, 3
  br i1 %.not67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i64 %.sroa.0.0, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.m
  ]

bb.h:                                             ; preds = %.thread, %bb.f
  switch i64 %.sroa.0.0, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h, %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1) ]
  %.val79 = load ptr, ptr %0, align 8
  %.val80 = load ptr, ptr %i.ai, align 8
  %i.bc = invoke fastcc noundef zeroext i1 @_RINvMNtCs3TL38MOHY2H_17pretty_assertions7printerNtB3_14LatentDeletion5flushNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.u, ptr %.val79, ptr %.val80)
          to label %bb.n unwind label %.loopexit

bb.k:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1) ]
  store ptr %.sroa.8.1, ptr %i.t, align 8
  store i64 %.sroa.10.1, ptr %i.ar, align 8
  %.val77 = load ptr, ptr %0, align 8
  %.val78 = load ptr, ptr %i.ai, align 8
  %i.bd = invoke fastcc noundef zeroext i1 @_RINvMNtCs3TL38MOHY2H_17pretty_assertions7printerNtB3_14LatentDeletion5flushNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.u, ptr %.val77, ptr %.val78)
          to label %bb.q unwind label %.loopexit

bb.l:                                             ; preds = %bb.h, %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1) ]
  store ptr %.sroa.8.1, ptr %i.l, align 8
  store i64 %.sroa.10.1, ptr %i.al, align 8
  %i.be = load i64, ptr %i.ag, align 8, !noundef !3
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.ag, label %bb.be

bb.m:                                             ; preds = %bb.g
  %i.bg = icmp eq i64 %.sroa.0.0.copyload8.i, 2
  br i1 %i.bg, label %bb.t, label %bb.l

bb.n:                                             ; preds = %bb.j
  br i1 %i.bc, label %.loopexit139, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %.sroa.8.1, ptr %i.u, align 8
  store i64 %.sroa.10.1, ptr %i.af, align 8
  %i.bh = load i64, ptr %i.ag, align 8, !noundef !3
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.ag, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.bf, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit126, %bb.ae, %bb.s, %bb.o
  %.sroa.025.0.copyload.pre = load i64, ptr %i.v, align 8
  %.sroa.527.sroa.0.0.copyload.pre = load ptr, ptr %.sroa.323.0..sroa_idx, align 8
  %.sroa.527.sroa.4.0.copyload.pre = load i64, ptr %.sroa.527.sroa.4.0..sroa.323.0..sroa_idx.sroa_idx, align 8
  br label %bb.b

bb.q:                                             ; preds = %bb.k
  br i1 %i.bd, label %.loopexit140, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.t, ptr %i.s, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.432.0..sroa_idx, align 8
  %i.bj = load ptr, ptr %0, align 8, !alias.scope !60, !nonnull !3, !noundef !3
  %i.bk = load ptr, ptr %i.ai, align 8, !alias.scope !60, !nonnull !3, !align !14, !noundef !3
  %i.bl = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bk, ptr noundef nonnull @9, ptr noundef nonnull %i.s)
          to label %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit unwind label %.loopexit

_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.bl, label %.loopexit140, label %bb.s

bb.s:                                             ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.p

.loopexit140:                                     ; preds = %bb.q, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.loopexit139

bb.t:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1) ]
  store ptr %.sroa.8.1, ptr %i.r, align 8
  store i64 %.sroa.10.1, ptr %i.ah, align 8
  %.val75 = load ptr, ptr %0, align 8
  %.val76 = load ptr, ptr %i.ai, align 8
  %i.bm = invoke fastcc noundef zeroext i1 @_RINvMNtCs3TL38MOHY2H_17pretty_assertions7printerNtB3_14LatentDeletion5flushNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.u, ptr %.val75, ptr %.val76)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %bb.t
  br i1 %i.bm, label %.loopexit138, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store <2 x ptr> <ptr @10, ptr @_RNvXsk_NtCsbvkFyIu7lgC_4core3fmtcNtB5_7Display3fmt>, ptr %i.n, align 16
  store ptr %i.r, ptr %i.aj, align 16
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.440.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @1, ptr noundef nonnull %i.n)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit unwind label %.loopexit

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs0_NtCsfxCIOvQJdVR_5yansi5colorNtNtB7_5style5StyleINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_5ColorE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i32 5)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.x, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #16
          to label %.body unwind label %bb.af

bb.x:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit
  store ptr %i.p, ptr %i.q, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  store ptr @_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.446.0..sroa_idx, align 8
  %i.bo = load ptr, ptr %0, align 8, !alias.scope !63, !nonnull !3, !noundef !3
  %i.bp = load ptr, ptr %i.ai, align 8, !alias.scope !63, !nonnull !3, !align !14, !noundef !3
  %i.bq = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bp, ptr noundef nonnull @2, ptr noundef nonnull %i.m)
          to label %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit89 unwind label %bb.w

_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit89: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.bq, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit89
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.y
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit89
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i92 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i92: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit96 unwind label %.loopexit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit96: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.bv = load ptr, ptr %0, align 8, !alias.scope !66, !nonnull !3, !noundef !3
  %i.bw = load ptr, ptr %i.ai, align 8, !alias.scope !66, !nonnull !3, !align !14, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !invariant.load !3, !noalias !66, !nonnull !3
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull %i.bv, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 1) #18
          to label %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit99 unwind label %.loopexit, !inline_history !7

_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit99: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit96
  br i1 %i.bz, label %.loopexit138, label %bb.ae

bb.ae:                                            ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.p

.loopexit138:                                     ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit99, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.loopexit139

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.loopexit138

bb.af:                                            ; preds = %.body, %bb.bi, %bb.w
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ag:                                            ; preds = %bb.l
  %i.cb = load ptr, ptr %i.u, align 8, !noundef !3 ; 2 uses
  %i.cc = load i64, ptr %i.af, align 8
  store ptr null, ptr %i.u, align 8
  %.not68 = icmp eq ptr %i.cb, null
  br i1 %.not68, label %bb.be, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !69
  invoke void @_RNvCs2EMQEx3u6w6_4diff5chars(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.8.1, i64 noundef %.sroa.10.1)
          to label %.noexc101 unwind label %.loopexit

.noexc101:                                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69
  store ptr %0, ptr %i.c, align 8, !noalias !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) @11, i64 24, i1 false), !noalias !69
  %i.cd = invoke fastcc noundef zeroext i1 @_RINvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB5_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE16write_with_styleNtNtCsfxCIOvQJdVR_5yansi5color5ColorECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(32) %i.c, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0, i32 4)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.i

.loopexit189.i:                                   ; preds = %bb.ax, %bb.aw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.am, %bb.al
  %lpad.loopexit191.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.av, %._crit_edge199.i, %bb.as, %bb.ak, %._crit_edge.i, %.noexc101
  %lpad.loopexit.split-lp192.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit189.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit189.i ], [ %lpad.loopexit191.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp192.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCs2EMQEx3u6w6_4diff6ResultcEEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.d) #16
          to label %.body unwind label %bb.bd

bb.ai:                                            ; preds = %.noexc101
  br i1 %i.cd, label %_RNvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB4_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE6finishCsfY7SmN0bPrO_14deltalake_test.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ce = load ptr, ptr %i.an, align 8, !noalias !69, !nonnull !3, !noundef !3 ; 2 uses
  %i.cf = load i64, ptr %i.ao, align 8, !noalias !69, !noundef !3 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.cf, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i
end_hunk_0
