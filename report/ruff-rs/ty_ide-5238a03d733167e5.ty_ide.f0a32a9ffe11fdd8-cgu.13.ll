Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.13?download=true
inline.NumInlined: 836
inline.NumDeleted: 515
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMNtCskEUeM34gmJU_6ty_ide5hintsNtB2_4Hint7message:bb.a
  %i.k = load i64, ptr %i.b, align 8, !range !5, !noalias !1011, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !noalias !1011, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.h, !prof !3

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1011
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1011
  %i.p = load i64, ptr %i.a, align 8, !range !5, !noalias !1011, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !6, !noalias !1011, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !3

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.t, align 8, !noalias !1011
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #34, !noalias !1011
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.t, align 8, !noalias !1011, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = icmp samesign ugt i64 %i.s, 25
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1011
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.v, ptr noundef nonnull align 1 dereferenceable(26) @14, i64 26, i1 false), !noalias !1011
  store i64 %i.s, ptr %0, align 8, !alias.scope !1009, !noalias !1010
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1009, !noalias !1010
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !1009, !noalias !1010
  br label %_RNvMs_NtCskEUeM34gmJU_6ty_ide5hintsNtB4_8HintKind7message.exit

bb.g:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.o, align 8, !noalias !1011
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.x) #34, !noalias !1011
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.o, align 8, !noalias !1011, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = icmp samesign ugt i64 %i.n, 75
  tail call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1011
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.y, ptr noundef nonnull align 1 dereferenceable(76) @15, i64 76, i1 false), !noalias !1011
  store i64 %i.n, ptr %0, align 8, !alias.scope !1009, !noalias !1010
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1009, !noalias !1010
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 76, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1009, !noalias !1010
  br label %_RNvMs_NtCskEUeM34gmJU_6ty_ide5hintsNtB4_8HintKind7message.exit

_RNvMs_NtCskEUeM34gmJU_6ty_ide5hintsNtB4_8HintKind7message.exit: ; preds = %.split.i, %bb.f, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer18flush_pending_line(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !7, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !alias.scope !1022, !noalias !1023 ; 2 uses
  store i64 -1, ptr %i.b, align 8, !alias.scope !1022, !noalias !1023
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i, label %_RNvMNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB2_8Renderer18flush_pending_link.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1024
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !noalias !1024
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx.i, i64 80, i1 false), !noalias !1023
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1024, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = load i64, ptr %i.g, align 8, !noalias !1024, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.h)
          to label %.noexc.i unwind label %bb.d, !noalias !1022

.noexc.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1025, !noalias !1022, !noundef !4 ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1025, !noalias !1022, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.f, i64 %i.h, i1 false), !noalias !1022
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !1025, !noalias !1022
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline11PendingLinkEBL_(ptr noalias noundef align 8 dereferenceable(88) %i.a) #35
          to label %bb.g unwind label %bb.f, !noalias !1022

bb.e:                                             ; preds = %bb.c, %.noexc.i
  %i.p = phi i64 [ %.pre.i.i, %bb.c ], [ %i.j, %.noexc.i ]
  %i.q = add i64 %i.p, %i.h
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1025, !noalias !1022
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline11PendingLinkEBL_(ptr noalias noundef align 8 dereferenceable(88) %i.a), !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1024
  br label %_RNvMNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB2_8Renderer18flush_pending_link.exit

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !1022
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

_RNvMNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB2_8Renderer18flush_pending_link.exit: ; preds = %bb.a, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1026, !noalias !1027, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1026, !noalias !1027, !noundef !4 ; 4 uses
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.v), !noalias !1026
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1028, !noalias !1026, !noundef !4 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %.not.i.i1 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i1, label %_RNvMs_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB4_10LinePrefix4emit.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB2_8Renderer18flush_pending_link.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1028, !noalias !1026, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.t, i64 %i.v, i1 false), !noalias !1026
  %.pre.i.i2 = load i64, ptr %i.w, align 8, !alias.scope !1028, !noalias !1026
  br label %_RNvMs_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB4_10LinePrefix4emit.exit

_RNvMs_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB4_10LinePrefix4emit.exit: ; preds = %_RNvMNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB2_8Renderer18flush_pending_link.exit, %bb.h
  %i.ac = phi i64 [ %.pre.i.i2, %bb.h ], [ %i.x, %_RNvMNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB2_8Renderer18flush_pending_link.exit ]
  %i.ad = add i64 %i.ac, %i.v
  store i64 %i.ad, ptr %i.w, align 8, !alias.scope !1028, !noalias !1026
  store i64 0, ptr %i.u, align 8, !alias.scope !1026, !noalias !1027
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB2_8Renderer32render_line_with_no_link_pending(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [12 x i8], align 4                ; 12 uses
  %i.j = alloca [40 x i8], align 8                ; 10 uses
  %.sroa.048 = alloca [72 x i8], align 8          ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.11 = alloca [40 x i8], align 8           ; 6 uses
  %i.l = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i64, ptr %i.q, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1100
  call void @_RNvMs3_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntaxNtB5_15BacktickScanner3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r), !noalias !1101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1100
  call void @_RNvXs4_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntaxNtB5_15BacktickScannerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j), !noalias !1101
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.t = load i8, ptr %i.s, align 4, !range !16, !noalias !1100, !noundef !4 ; 2 uses
  %.not33.i150 = icmp eq i8 %i.t, 2
  br i1 %.not33.i150, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit.thread, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.a
  %.sroa.11.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit
  %.sroa.560.0.copyload234 = phi i8 [ %i.t, %.lr.ph.i.preheader.lr.ph ], [ %i.ig, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit ]
  %.sroa.0.0154 = phi ptr [ %i.l, %.lr.ph.i.preheader.lr.ph ], [ inttoptr (i64 1 to ptr), %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit ] ; 5 uses
  %.sroa.5.0153 = phi i64 [ %i.n, %.lr.ph.i.preheader.lr.ph ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit ] ; 15 uses
  %.sroa.05.0152 = phi ptr [ %i.p, %.lr.ph.i.preheader.lr.ph ], [ %i.ib, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit ] ; 17 uses
  %.sroa.9.0151 = phi i64 [ %i.r, %.lr.ph.i.preheader.lr.ph ], [ %i.ia, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit ] ; 30 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.backedge.i
  %.sroa.560.0.copyload = phi i8 [ %.sroa.560.0.copyload234, %.lr.ph.i.preheader ], [ %i.ek, %.backedge.i ]
  %.sroa.058.0.copyload = load i32, ptr %i.i, align 4, !noalias !1103 ; 5 uses
  %i.x = zext i32 %.sroa.058.0.copyload to i64    ; 27 uses
  %i.y = trunc nuw i8 %.sroa.560.0.copyload to i1
  br i1 %i.y, label %.backedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.z = icmp eq i32 %.sroa.058.0.copyload, 0     ; 5 uses
  br i1 %i.z, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp ugt i64 %.sroa.9.0151, %i.x
  br i1 %.not.i.i.i, label %bb.d, label %.split3.i.i.i

.split3.i.i.i:                                    ; preds = %bb.c
  %3 = icmp eq i64 %.sroa.9.0151, %i.x
  br i1 %3, label %.split.i.i.i, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.0152, i64 %i.x
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !1104, !noalias !1105, !noundef !4
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %.split.i.i.i, label %bb.f

.split.i.i.i:                                     ; preds = %bb.d, %.split3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.0152, i64 %i.x
  %i.ae = sub i64 %.sroa.9.0151, %i.x
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i.i

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i.i: ; preds = %.split.i.i.i, %bb.b
  %.sroa.9.0.i.i = phi i64 [ %.sroa.9.0151, %bb.b ], [ %i.ae, %.split.i.i.i ] ; 5 uses
  %.sroa.7.0.i.i = phi ptr [ %.sroa.05.0152, %bb.b ], [ %i.ad, %.split.i.i.i ] ; 9 uses
  %.not.i9.i.i = icmp ugt i64 %.sroa.9.0.i.i, 1
  br i1 %.not.i9.i.i, label %bb.e, label %.split.i10.i.i

.split.i10.i.i:                                   ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i.i
  %i.af = icmp eq i64 %.sroa.9.0.i.i, 1
  br i1 %i.af, label %bb.g, label %bb.h

bb.e:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !1106, !noalias !1101, !noundef !4
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d, %.split3.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0152, i64 noundef %.sroa.9.0151, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #34, !noalias !1101
  unreachable

bb.g:                                             ; preds = %bb.e, %.split.i10.i.i
  %i.aj = add i64 %.sroa.9.0.i.i, -1              ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 1 ; 2 uses
  br i1 %i.z, label %bb.p, label %bb.i

bb.h:                                             ; preds = %bb.e, %.split.i10.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.i.i, i64 noundef %.sroa.9.0.i.i, i64 noundef 1, i64 noundef %.sroa.9.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #34, !noalias !1101
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.05.0152, i64 %i.x ; 5 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !1107, !noalias !1108, !noundef !4 ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.j, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit17.i.i.i.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit17.i.i.i.i.i.i: ; preds = %bb.i
  %i.ap = icmp ne i32 %.sroa.058.0.copyload, 1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 -2
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !1107, !noalias !1108, !noundef !4 ; 3 uses
  %i.as = and i8 %i.ar, 31
  %i.at = zext nneg i8 %i.as to i32
  %i.au = icmp slt i8 %i.ar, -64
  br i1 %i.au, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit19.i.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = zext nneg i8 %i.an to i32
  br label %bb.m

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit19.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit17.i.i.i.i.i.i
  %i.aw = icmp ne i32 %.sroa.058.0.copyload, 2
  call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds i8, ptr %i.al, i64 -3
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !1107, !noalias !1108, !noundef !4 ; 3 uses
  %i.az = and i8 %i.ay, 15
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = icmp slt i8 %i.ay, -64
  br i1 %i.bb, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit21.i.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit17.i.i.i.i.i.i
  %.sroa.010.0.i.i.i.i.i.i = phi i32 [ %i.bs, %bb.l ], [ %i.at, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit17.i.i.i.i.i.i ]
  %i.bc = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i, 6
  %i.bd = and i8 %i.an, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  br label %bb.m

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit21.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit19.i.i.i.i.i.i
  %i.bg = icmp ne i32 %.sroa.058.0.copyload, 3
  call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !1107, !noalias !1108, !noundef !4
  %i.bj = and i8 %i.bi, 7
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 6
  %i.bm = and i8 %i.ay, 63
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit21.i.i.i.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit19.i.i.i.i.i.i
  %.sroa.010.1.i.i.i.i.i.i = phi i32 [ %i.bo, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit21.i.i.i.i.i.i ], [ %i.ba, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit19.i.i.i.i.i.i ]
  %i.bp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i, 6
  %i.bq = and i8 %i.ar, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.4.1.i.ph.i.i.i.i.i = phi i32 [ %i.av, %bb.j ], [ %i.bf, %bb.k ] ; 2 uses
  %i.bt = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.bt)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i [
    i32 9, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 10, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 12, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 13, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 32, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 45, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 47, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 58, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 34, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 39, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 40, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 60, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 91, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
    i32 123, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
  ]

_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i: ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %.not.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i, label %.split4.i.i

.split4.i.i:                                      ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i
  %i.bu = load i8, ptr %i.ak, align 1, !alias.scope !1109, !noalias !1110, !noundef !4 ; 5 uses
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.n, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i.i.i: ; preds = %.split4.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 2
  %i.bx = and i8 %i.bu, 31
  %i.by = zext nneg i8 %i.bx to i32               ; 3 uses
  %i.bz = icmp samesign ne i64 %i.aj, 1
  call void @llvm.assume(i1 %i.bz)
  %i.ca = load i8, ptr %i.bw, align 1, !alias.scope !1109, !noalias !1110, !noundef !4
  %i.cb = shl nuw nsw i32 %i.by, 6
  %i.cc = and i8 %i.ca, 63
  %i.cd = zext nneg i8 %i.cc to i32               ; 2 uses
  %i.ce = or disjoint i32 %i.cb, %i.cd
  %i.cf = icmp samesign ugt i8 %i.bu, -33
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i.i.i, label %bb.o

bb.n:                                             ; preds = %.split4.i.i
  %i.cg = zext nneg i8 %i.bu to i32
  br label %bb.o

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 3
  %i.ci = icmp samesign ne i64 %i.aj, 2
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load i8, ptr %i.ch, align 1, !alias.scope !1109, !noalias !1110, !noundef !4
  %i.ck = shl nuw nsw i32 %i.cd, 6
  %i.cl = and i8 %i.cj, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm            ; 2 uses
  %i.co = shl nuw nsw i32 %i.by, 12
  %i.cp = or disjoint i32 %i.cn, %i.co
  %i.cq = icmp samesign ugt i8 %i.bu, -17
  br i1 %i.cq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i.i.i, label %bb.o

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 4
  %i.cs = icmp samesign ne i64 %i.aj, 3
  call void @llvm.assume(i1 %i.cs)
  %i.ct = load i8, ptr %i.cr, align 1, !alias.scope !1109, !noalias !1110, !noundef !4
  %i.cu = shl nuw nsw i32 %i.by, 18
  %i.cv = and i32 %i.cu, 1835008
  %i.cw = shl nuw nsw i32 %i.cn, 6
  %i.cx = and i8 %i.ct, 63
  %i.cy = zext nneg i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cw, %i.cy
  %i.da = or disjoint i32 %i.cz, %i.cv
  br label %bb.o

bb.o:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i.i.i, %bb.n, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.cp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i.i.i ], [ %i.da, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i.i.i ], [ %i.ce, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i.i.i ], [ %i.cg, %bb.n ] ; 2 uses
  %i.db = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.db)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %bb.s [
    i32 96, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
    i32 9, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
    i32 10, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
    i32 12, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
    i32 13, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
    i32 32, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
  ]

bb.p:                                             ; preds = %bb.g
  %.old.i.i = icmp eq i64 %i.aj, 0
  br i1 %.old.i.i, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.p
  %i.dc = load i8, ptr %i.ak, align 1, !alias.scope !1111, !noalias !1112, !noundef !4 ; 5 uses
  %i.dd = icmp sgt i8 %i.dc, -1
  br i1 %i.dd, label %bb.q, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i11.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i11.i.i: ; preds = %.split.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 2
  %i.df = and i8 %i.dc, 31
  %i.dg = zext nneg i8 %i.df to i32               ; 3 uses
  %i.dh = icmp samesign ne i64 %i.aj, 1
  call void @llvm.assume(i1 %i.dh)
  %i.di = load i8, ptr %i.de, align 1, !alias.scope !1111, !noalias !1112, !noundef !4
  %i.dj = shl nuw nsw i32 %i.dg, 6
  %i.dk = and i8 %i.di, 63
  %i.dl = zext nneg i8 %i.dk to i32               ; 2 uses
  %i.dm = or disjoint i32 %i.dj, %i.dl
  %i.dn = icmp samesign ugt i8 %i.dc, -33
  br i1 %i.dn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i13.i.i, label %bb.r

bb.q:                                             ; preds = %.split.i.i
  %i.do = zext nneg i8 %i.dc to i32
  br label %bb.r

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i13.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i11.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 3
  %i.dq = icmp samesign ne i64 %i.aj, 2
  call void @llvm.assume(i1 %i.dq)
  %i.dr = load i8, ptr %i.dp, align 1, !alias.scope !1111, !noalias !1112, !noundef !4
  %i.ds = shl nuw nsw i32 %i.dl, 6
  %i.dt = and i8 %i.dr, 63
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du            ; 2 uses
  %i.dw = shl nuw nsw i32 %i.dg, 12
  %i.dx = or disjoint i32 %i.dv, %i.dw
  %i.dy = icmp samesign ugt i8 %i.dc, -17
  br i1 %i.dy, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i14.i.i, label %bb.r

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i13.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 4
  %i.ea = icmp samesign ne i64 %i.aj, 3
  call void @llvm.assume(i1 %i.ea)
  %i.eb = load i8, ptr %i.dz, align 1, !alias.scope !1111, !noalias !1112, !noundef !4
  %i.ec = shl nuw nsw i32 %i.dg, 18
  %i.ed = and i32 %i.ec, 1835008
  %i.ee = shl nuw nsw i32 %i.dv, 6
  %i.ef = and i8 %i.eb, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = or disjoint i32 %i.ee, %i.eg
  %i.ei = or disjoint i32 %i.eh, %i.ed
  br label %bb.r

bb.r:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i14.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i13.i.i, %bb.q, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i11.i.i
  %.sroa.4.0.i.ph.i.i.i12.i.i = phi i32 [ %i.dx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i13.i.i ], [ %i.ei, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i14.i.i ], [ %i.dm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i11.i.i ], [ %i.do, %bb.q ] ; 2 uses
  %i.ej = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i12.i.i, 1114112
  call void @llvm.assume(i1 %i.ej)
  switch i32 %.sroa.4.0.i.ph.i.i.i12.i.i, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread19.i [
    i32 96, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
    i32 9, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
    i32 10, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
    i32 12, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
    i32 13, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
    i32 32, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i
  ]

_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread19.i: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1103
  br label %bb.u

.backedge.i:                                      ; preds = %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1103
  call void @_RNvXs4_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntaxNtB5_15BacktickScannerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j), !noalias !1101
  %i.ek = load i8, ptr %i.s, align 4, !range !16, !noalias !1103, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.ek, 2
  br i1 %.not.i, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit.thread, label %.lr.ph.i

_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i: ; preds = %bb.w, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.p, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNCNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start0ENtB5_7Pattern12is_suffix_ofB1a_.exit.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1103
  call void @_RNvMs3_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntaxNtB5_15BacktickScanner8eat_span(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.i), !noalias !1101
  %i.el = load ptr, ptr %i.g, align 8, !noalias !1103, !noundef !4
  %.not14.i = icmp eq ptr %i.el, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1103
  br i1 %.not14.i, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit.thread, label %.backedge.i

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1103
  %.not.i15.i = icmp ugt i64 %.sroa.9.0151, %i.x
  br i1 %.not.i15.i, label %bb.t, label %.split.i16.i

.split.i16.i:                                     ; preds = %bb.s
  %4 = icmp eq i64 %.sroa.9.0151, %i.x
  br i1 %4, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.em = load i8, ptr %i.al, align 1, !alias.scope !1113, !noalias !1101, !noundef !4
  %i.en = icmp sgt i8 %i.em, -65
  br i1 %i.en, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %.split.i16.i, %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread19.i
  %i.eo = sub nuw i64 %.sroa.9.0151, %i.x         ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.05.0152, i64 %i.x ; 5 uses
  call fastcc void @_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline15parse_candidate(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef %i.eo), !noalias !1101
  %i.eq = load i64, ptr %i.h, align 8, !range !17, !noalias !1103, !noundef !4 ; 3 uses
  %.not13.i = icmp eq i64 %i.eq, -3
  br i1 %.not13.i, label %bb.w, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit

bb.v:                                             ; preds = %bb.t, %.split.i16.i
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0152, i64 noundef %.sroa.9.0151, i64 noundef %i.x, i64 noundef %.sroa.9.0151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #34, !noalias !1101
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1103
  br label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i

_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.8..sroa_idx47, i64 40, i1 false), !noalias !1102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1103
  %cond = icmp eq i64 %i.eq, -2
  br i1 %cond, label %bb.z, label %bb.bh

_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit.thread: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit, %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i, %.backedge.i, %bb.a
  %.sroa.9.0146 = phi i64 [ %.sroa.9.0151, %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i ], [ %i.r, %bb.a ], [ %.sroa.9.0151, %.backedge.i ], [ %i.ia, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit ]
  %.sroa.05.0134 = phi ptr [ %.sroa.05.0152, %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i ], [ %i.p, %bb.a ], [ %.sroa.05.0152, %.backedge.i ], [ %i.ib, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit ]
  %.sroa.5.0122 = phi i64 [ %.sroa.5.0153, %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i ], [ %i.n, %bb.a ], [ %.sroa.5.0153, %.backedge.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit ] ; 4 uses
  %.sroa.0.0110 = phi ptr [ %.sroa.0.0154, %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline13is_link_start.exit.thread.i ], [ %i.l, %bb.a ], [ %.sroa.0.0154, %.backedge.i ], [ inttoptr (i64 1 to ptr), %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1103
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.5.0122)
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !1114, !noundef !4 ; 3 uses
  %i.et = icmp sgt i64 %i.es, -1
  call void @llvm.assume(i1 %i.et)
  %.not.i33 = icmp eq i64 %.sroa.5.0122, 0
  br i1 %.not.i33, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit, label %bb.x

bb.x:                                             ; preds = %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit.thread
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !1114, !nonnull !4, !noundef !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.es
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull readonly align 1 %.sroa.0.0110, i64 %.sroa.5.0122, i1 false)
  %.pre.i = load i64, ptr %i.er, align 8, !alias.scope !1114
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit: ; preds = %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit.thread, %bb.x
  %i.ex = phi i64 [ %.pre.i, %bb.x ], [ %i.es, %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit.thread ]
  %i.ey = add i64 %i.ex, %.sroa.5.0122
  store i64 %i.ey, ptr %i.er, align 8, !alias.scope !1114
  call fastcc void @_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline18render_inline_text(ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0134, i64 noundef %.sroa.9.0146)
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline11PendingLinkEEB17_.exit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret void

bb.z:                                             ; preds = %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1116
  %i.fb = add i64 %.sroa.5.0153, %i.x             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1116
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.fb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1116
  %i.fc = load i64, ptr %i.c, align 8, !range !5, !noalias !1116, !noundef !4
  %i.fd = trunc nuw i64 %i.fc to i1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !6, !noalias !1116, !noundef !4 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.fd, label %bb.aa, label %bb.ab, !prof !3

bb.aa:                                            ; preds = %bb.z
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !1116
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ff, i64 %i.fh) #34, !noalias !1117
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.fi = load ptr, ptr %i.fg, align 8, !noalias !1116, !nonnull !4, !noundef !4
  %i.fj = icmp ule i64 %i.fb, %i.ff
  call void @llvm.assume(i1 %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1116
  store i64 %i.ff, ptr %i.f, align 8, !noalias !1116
  %.sroa.4.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.fi, ptr %.sroa.4.0..sroa_idx.i34, align 8, !noalias !1116
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1116
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.sroa.5.0153)
          to label %.noexc.i unwind label %bb.ae, !noalias !1117

.noexc.i:                                         ; preds = %bb.ab
  %i.fk = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1118, !noalias !1116, !noundef !4 ; 3 uses
  %i.fl = icmp sgt i64 %i.fk, -1
  call void @llvm.assume(i1 %i.fl)
  %.not.i.i35 = icmp eq i64 %.sroa.5.0153, 0      ; 2 uses
  br i1 %.not.i.i35, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.noexc.i
  %i.fm = load ptr, ptr %.sroa.4.0..sroa_idx.i34, align 8, !alias.scope !1118, !noalias !1116, !nonnull !4, !noundef !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fn, ptr nonnull readonly align 1 %.sroa.0.0154, i64 %.sroa.5.0153, i1 false), !noalias !1119
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1118, !noalias !1116
  br label %bb.af

bb.ad:                                            ; preds = %bb.aq, %bb.ae
  %.pn20.i = phi { ptr, i32 } [ %i.fo, %bb.ae ], [ %.pn.i, %bb.aq ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24) %i.f) #35
          to label %common.resume unwind label %bb.bf, !noalias !1117

bb.ae:                                            ; preds = %bb.an, %bb.al, %bb.aj, %bb.ai, %bb.ab
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac, %.noexc.i
  %i.fp = phi i64 [ %.pre.i.i, %bb.ac ], [ %i.fk, %.noexc.i ]
  %i.fq = add i64 %i.fp, %.sroa.5.0153
  store i64 %i.fq, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1118, !noalias !1116
  br i1 %i.z, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i22.i = icmp ugt i64 %.sroa.9.0151, %i.x
  br i1 %.not.i22.i, label %bb.ah, label %.split.i.i36

.split.i.i36:                                     ; preds = %bb.ag
  %i.fr = icmp eq i64 %.sroa.9.0151, %i.x
  br i1 %i.fr, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fs = load i8, ptr %i.ep, align 1, !alias.scope !1120, !noalias !1117, !noundef !4
  %i.ft = icmp sgt i8 %i.fs, -65
  br i1 %i.ft, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %.split.i.i36, %bb.af
  invoke fastcc void @_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline18render_inline_text(ptr noalias noundef align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0152, i64 noundef %i.x)
          to label %bb.al unwind label %bb.ae, !noalias !1117

bb.aj:                                            ; preds = %bb.ah, %.split.i.i36
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0152, i64 noundef %.sroa.9.0151, i64 noundef 0, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34
          to label %bb.ak unwind label %bb.ae, !noalias !1117

bb.ak:                                            ; preds = %bb.az, %bb.ax, %bb.an, %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1116
  %i.fu = add i64 %.sroa.5.0153, %.sroa.9.0151    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1116
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.fu, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.am unwind label %bb.ae, !noalias !1117

bb.am:                                            ; preds = %bb.al
  %i.fv = load i64, ptr %i.b, align 8, !range !5, !noalias !1116, !noundef !4
  %i.fw = trunc nuw i64 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !range !6, !noalias !1116, !noundef !4 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.fw, label %bb.an, label %bb.ao, !prof !3

bb.an:                                            ; preds = %bb.am
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !1116
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fy, i64 %i.ga) #34
          to label %bb.ak unwind label %bb.ae, !noalias !1117

bb.ao:                                            ; preds = %bb.am
  %i.gb = load ptr, ptr %i.fz, align 8, !noalias !1116, !nonnull !4, !noundef !4
  %i.gc = icmp ule i64 %i.fu, %i.fy
  call void @llvm.assume(i1 %i.gc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1116
  store i64 %i.fy, ptr %i.e, align 8, !noalias !1116
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.gb, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1116
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !1116
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.5.0153)
          to label %.noexc25.i unwind label %bb.ar, !noalias !1117

.noexc25.i:                                       ; preds = %bb.ao
  %i.gd = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1116, !noundef !4 ; 3 uses
  %i.ge = icmp sgt i64 %i.gd, -1
  call void @llvm.assume(i1 %i.ge)
  br i1 %.not.i.i35, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %.noexc25.i
  %i.gf = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1116, !nonnull !4, !noundef !4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gg, ptr nonnull readonly align 1 %.sroa.0.0154, i64 %.sroa.5.0153, i1 false), !noalias !1119
  %.pre.i24.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1116
  br label %bb.as

bb.aq:                                            ; preds = %bb.be, %bb.ar
  %.pn.i = phi { ptr, i32 } [ %i.gh, %bb.ar ], [ %i.he, %bb.be ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24) %i.e) #35
          to label %bb.ad unwind label %bb.bf, !noalias !1117

bb.ar:                                            ; preds = %bb.az, %bb.ax, %bb.aw, %bb.as, %bb.ao
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.as:                                            ; preds = %bb.ap, %.noexc25.i
  %i.gi = phi i64 [ %.pre.i24.i, %bb.ap ], [ %i.gd, %.noexc25.i ]
  %i.gj = add i64 %i.gi, %.sroa.5.0153
  store i64 %i.gj, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1116
  invoke fastcc void @_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline18render_inline_text(ptr noalias noundef align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0152, i64 noundef %.sroa.9.0151)
          to label %bb.at unwind label %bb.ar, !noalias !1117

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1116
  br i1 %i.z, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not.i27.i = icmp ugt i64 %.sroa.9.0151, %i.x
  br i1 %.not.i27.i, label %bb.av, label %.split.i28.i

.split.i28.i:                                     ; preds = %bb.au
  %i.gk = icmp eq i64 %.sroa.9.0151, %i.x
  br i1 %i.gk, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gl = load i8, ptr %i.ep, align 1, !alias.scope !1122, !noalias !1117, !noundef !4
  %i.gm = icmp sgt i8 %i.gl, -65
  br i1 %i.gm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %.split.i28.i, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1116
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.eo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ay unwind label %bb.ar, !noalias !1117

bb.ax:                                            ; preds = %bb.av, %.split.i28.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0152, i64 noundef %.sroa.9.0151, i64 noundef %i.x, i64 noundef %.sroa.9.0151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #34
          to label %bb.ak unwind label %bb.ar, !noalias !1117

bb.ay:                                            ; preds = %bb.aw
  %i.gn = load i64, ptr %i.a, align 8, !range !5, !noalias !1116, !noundef !4
  %i.go = trunc nuw i64 %i.gn to i1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !range !6, !noalias !1116, !noundef !4 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.go, label %bb.az, label %bb.ba, !prof !3

bb.az:                                            ; preds = %bb.ay
  %i.gs = load i64, ptr %i.gr, align 8, !noalias !1116
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gq, i64 %i.gs) #34
          to label %bb.ak unwind label %bb.ar, !noalias !1117

bb.ba:                                            ; preds = %bb.ay
  %i.gt = load ptr, ptr %i.gr, align 8, !noalias !1116, !nonnull !4, !noundef !4 ; 5 uses
  %i.gu = icmp ule i64 %i.eo, %i.gq
  call void @llvm.assume(i1 %i.gu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1116
  %.not18.i = icmp eq i64 %.sroa.9.0151, %i.x
  br i1 %.not18.i, label %.preheader.i.i.thread.i, label %bb.bb

.preheader.i.i.thread.i:                          ; preds = %bb.ba
  store i64 %i.gq, ptr %i.d, align 8, !noalias !1116
  %.sroa.413.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.gt, ptr %.sroa.413.0..sroa_idx40.i, align 8, !noalias !1116
  %.sroa.6.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx41.i, align 8, !noalias !1116
  br label %_RNvMs_NtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB4_11PendingLink3new.exit

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gt, ptr nonnull readonly align 1 %i.ep, i64 %i.eo, i1 false), !noalias !1117
  store i64 %i.gq, ptr %i.d, align 8, !noalias !1116
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.gt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1116
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.eo, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1116
  %i.gv = icmp samesign ult i64 %i.eo, 16
  br i1 %i.gv, label %.lr.ph.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gw = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 60, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gt, i64 noundef range(i64 0, -9223372036854775808) %i.eo)
          to label %.noexc30.i unwind label %bb.be, !noalias !1117

.noexc30.i:                                       ; preds = %bb.bc
  %i.gx = extractvalue { i64, i64 } %i.gw, 0
  %i.gy = icmp eq i64 %i.gx, 1
  %i.gz = zext i1 %i.gy to i8
  br label %_RNvMs_NtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB4_11PendingLink3new.exit

.lr.ph.i.i.i:                                     ; preds = %bb.bb, %bb.bd
  %.sroa.01.05.i.i.i = phi i64 [ %i.hd, %bb.bd ], [ 0, %bb.bb ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.sroa.01.05.i.i.i
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !1123, !noalias !1117, !noundef !4
  %i.hc = icmp eq i8 %i.hb, 60
  br i1 %i.hc, label %_RNvMs_NtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB4_11PendingLink3new.exit, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  %i.hd = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.hd, %i.eo
  br i1 %exitcond.not.i.i.i, label %_RNvMs_NtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB4_11PendingLink3new.exit, label %.lr.ph.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24) %i.d) #35
          to label %bb.aq unwind label %bb.bf, !noalias !1117

bb.bf:                                            ; preds = %bb.be, %bb.aq, %bb.ad
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !1117
  unreachable

common.resume:                                    ; preds = %bb.bj, %bb.bx, %bb.bu, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.ie, %bb.bu ], [ %.pn20.i, %bb.ad ], [ %i.ii, %bb.bx ], [ %lpad.phi, %bb.bj ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB4_11PendingLink3new.exit: ; preds = %.lr.ph.i.i.i, %bb.bd, %.preheader.i.i.thread.i, %.noexc30.i
  %.merged.i.i.i = phi i8 [ %i.gz, %.noexc30.i ], [ 0, %.preheader.i.i.thread.i ], [ 1, %.lr.ph.i.i.i ], [ 0, %bb.bd ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.048, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.048.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.048, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.048.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.048.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.048, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.048.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1116
  %i.hg = load i64, ptr %0, align 8, !range !10, !alias.scope !1124, !noundef !4
  %i.hh = icmp eq i64 %i.hg, -1
  br i1 %i.hh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline11PendingLinkEEB17_.exit, label %bb.bg

bb.bg:                                            ; preds = %_RNvMs_NtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB4_11PendingLink3new.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline11PendingLinkEBL_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline11PendingLinkEEB17_.exit unwind label %bb.bx

bb.bh:                                            ; preds = %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.eq, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, i64 40, i1 false)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.5.0153)
          to label %.noexc39 unwind label %.loopexit

.noexc39:                                         ; preds = %bb.bh
  %i.hi = load i64, ptr %i.u, align 8, !alias.scope !1125, !noundef !4 ; 3 uses
  %i.hj = icmp sgt i64 %i.hi, -1
  call void @llvm.assume(i1 %i.hj)
  %.not.i37 = icmp eq i64 %.sroa.5.0153, 0
  br i1 %.not.i37, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.noexc39
  %i.hk = load ptr, ptr %i.v, align 8, !alias.scope !1125, !nonnull !4, !noundef !4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hl, ptr nonnull readonly align 1 %.sroa.0.0154, i64 %.sroa.5.0153, i1 false)
  %.pre.i38 = load i64, ptr %i.u, align 8, !alias.scope !1125
  br label %bb.bk

.loopexit:                                        ; preds = %bb.bn, %bb.bo, %bb.bh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_(ptr noalias noundef align 8 dereferenceable(48) %i.k) #35
          to label %common.resume unwind label %bb.bw

bb.bk:                                            ; preds = %bb.bi, %.noexc39
  %i.hm = phi i64 [ %.pre.i38, %bb.bi ], [ %i.hi, %.noexc39 ]
  %i.hn = add i64 %i.hm, %.sroa.5.0153
  store i64 %i.hn, ptr %i.u, align 8, !alias.scope !1125
  br i1 %i.z, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not.i41 = icmp ugt i64 %.sroa.9.0151, %i.x
  br i1 %.not.i41, label %bb.bm, label %.split.i

.split.i:                                         ; preds = %bb.bl
  %5 = icmp eq i64 %.sroa.9.0151, %i.x
  br i1 %5, label %bb.bn, label %.invoke

bb.bm:                                            ; preds = %bb.bl
  %i.ho = load i8, ptr %i.ep, align 1, !alias.scope !1126, !noundef !4
  %i.hp = icmp sgt i8 %i.ho, -65
  br i1 %i.hp, label %bb.bn, label %.invoke

bb.bn:                                            ; preds = %bb.bm, %.split.i, %bb.bk
  invoke fastcc void @_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline18render_inline_text(ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0152, i64 noundef %i.x)
          to label %bb.bo unwind label %.loopexit

.invoke:                                          ; preds = %bb.br, %.split.i43, %.split.i, %bb.bm
  %i.hq = phi i64 [ 0, %.split.i ], [ 0, %bb.bm ], [ %i.hu, %.split.i43 ], [ %i.hu, %bb.br ]
  %i.hr = phi i64 [ %i.x, %.split.i ], [ %i.x, %bb.bm ], [ %.sroa.9.0151, %.split.i43 ], [ %.sroa.9.0151, %bb.br ]
  %i.hs = phi ptr [ @10, %.split.i ], [ @10, %bb.bm ], [ @11, %.split.i43 ], [ @11, %bb.br ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0152, i64 noundef %.sroa.9.0151, i64 noundef %i.hq, i64 noundef %i.hr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hs) #34
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @_RNvMs0_NtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB5_9Hyperlink15render_markdown(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias noundef align 8 dereferenceable(24) %1)
          to label %bb.bp unwind label %.loopexit

bb.bp:                                            ; preds = %bb.bo
  %i.ht = load i64, ptr %i.w, align 8, !noundef !4
  %i.hu = add i64 %i.ht, %i.x                     ; 8 uses
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not.i42 = icmp ult i64 %i.hu, %.sroa.9.0151
  br i1 %.not.i42, label %bb.br, label %.split.i43

.split.i43:                                       ; preds = %bb.bq
  %i.hw = icmp eq i64 %i.hu, %.sroa.9.0151
  br i1 %i.hw, label %bb.bs, label %.invoke

bb.br:                                            ; preds = %bb.bq
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.05.0152, i64 %i.hu
  %i.hy = load i8, ptr %i.hx, align 1, !alias.scope !1127, !noundef !4
  %i.hz = icmp sgt i8 %i.hy, -65
  br i1 %i.hz, label %bb.bs, label %.invoke

bb.bs:                                            ; preds = %bb.bp, %.split.i43, %bb.br
  %i.ia = sub nuw i64 %.sroa.9.0151, %i.hu        ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.05.0152, i64 %i.hu ; 3 uses
  %i.ic = load i64, ptr %i.k, align 8, !range !10, !alias.scope !1128, !noundef !4
  %i.id = icmp eq i64 %i.ic, -1
  br i1 %i.id, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %common.resume unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i: ; preds = %bb.bt
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9HyperlinkEBL_.exit: ; preds = %bb.bs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1129
  call void @_RNvMs3_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntaxNtB5_15BacktickScanner3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ib, i64 noundef %i.ia), !noalias !1101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1129
  call void @_RNvXs4_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntaxNtB5_15BacktickScannerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j), !noalias !1101
  %i.ig = load i8, ptr %i.s, align 4, !range !16, !noalias !1129, !noundef !4 ; 2 uses
  %.not33.i = icmp eq i8 %i.ig, 2
  br i1 %.not33.i, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline9find_link.exit.thread, label %.lr.ph.i.preheader

bb.bw:                                            ; preds = %bb.bj
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.bx:                                            ; preds = %bb.bg
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.048, i64 72, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.fa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.merged.i.i.i, ptr %.sroa.653.0..sroa_idx, align 8
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline11PendingLinkEEB17_.exit: ; preds = %_RNvMs_NtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB4_11PendingLink3new.exit, %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.048, i64 72, i1 false)
  %.sroa.5.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.fa, ptr %.sroa.5.0..sroa_idx51, align 8
  %.sroa.653.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.merged.i.i.i, ptr %.sroa.653.0..sroa_idx54, align 8
  br label %bb.y
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inlineNtB5_9Hyperlink15render_markdown(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1165, !noalias !1166, !noundef !4 ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1), !noalias !1166
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1165, !noalias !1166, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 91, ptr %i.j, align 1, !noalias !1166
  %i.k = add nuw i64 %i.f, 1
  store i64 %i.k, ptr %i.e, align 8, !alias.scope !1165, !noalias !1166
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 4 uses
  %i.m = icmp samesign eq i64 %i.d, 0
  br i1 %i.m, label %_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general6inline15push_link_label.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.backedge.i.i
  %.sroa.0.011.i.i = phi i1 [ %or.cond, %.backedge.i.i ], [ false, %bb.b ]
  %.sroa.0.0410.i.i = phi ptr [ %.sroa.0.1.ph.i.i, %.backedge.i.i ], [ %i.b, %bb.b ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0410.i.i, i64 1 ; 3 uses
  %i.o = load i8, ptr %.sroa.0.0410.i.i, align 1, !alias.scope !1169, !noalias !1170, !noundef !4 ; 5 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.c, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i: ; preds = %.lr.ph.i.i
  %i.q = and i8 %i.o, 31
  %i.r = zext nneg i8 %i.q to i32                 ; 3 uses
  %i.s = icmp ne ptr %i.n, %i.l
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0410.i.i, i64 2 ; 3 uses
  %i.u = load i8, ptr %i.n, align 1, !alias.scope !1169, !noalias !1170, !noundef !4
  %i.v = shl nuw nsw i32 %i.r, 6
  %i.w = and i8 %i.u, 63
  %i.x = zext nneg i8 %i.w to i32                 ; 2 uses
  %i.y = or disjoint i32 %i.v, %i.x
  %i.z = icmp samesign ugt i8 %i.o, -33
  br i1 %i.z, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aa = zext nneg i8 %i.o to i32
  br label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i
  %i.ab = icmp ne ptr %i.t, %i.l
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0410.i.i, i64 3 ; 3 uses
  %i.ad = load i8, ptr %i.t, align 1, !alias.scope !1169, !noalias !1170, !noundef !4
  %i.ae = shl nuw nsw i32 %i.x, 6
  %i.af = and i8 %i.ad, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag            ; 2 uses
  %i.ai = shl nuw nsw i32 %i.r, 12
  %i.aj = or disjoint i32 %i.ah, %i.ai
  %i.ak = icmp samesign ugt i8 %i.o, -17
  br i1 %i.ak, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i
  %i.al = icmp ne ptr %i.ac, %i.l
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0410.i.i, i64 4
  %i.an = load i8, ptr %i.ac, align 1, !alias.scope !1169, !noalias !1170, !noundef !4
  %i.ao = shl nuw nsw i32 %i.r, 18
  %i.ap = and i32 %i.ao, 1835008
  %i.aq = shl nuw nsw i32 %i.ah, 6
  %i.ar = and i8 %i.an, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  %i.au = or disjoint i32 %i.at, %i.ap
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i
  %.sroa.0.1.ph.i.i = phi ptr [ %i.t, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i ], [ %i.aj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i ], [ %i.au, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i ], [ %i.aa, %bb.c ] ; 3 uses
  %i.av = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.av)
  %switch.tableidx = add nsw i32 %.sroa.4.0.i.ph.i.i, -9 ; 2 uses
  %i.aw = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388635, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.aw, i1 %switch.lobit, i1 false ; 2 uses
  br i1 %or.cond, label %.backedge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.sroa.0.011.i.i, label %bb.g, label %bb.f

.backedge.i.i:                                    ; preds = %bb.d, %bb.f
  %i.ax = icmp eq ptr %.sroa.0.1.ph.i.i, %i.l
end_hunk_0
