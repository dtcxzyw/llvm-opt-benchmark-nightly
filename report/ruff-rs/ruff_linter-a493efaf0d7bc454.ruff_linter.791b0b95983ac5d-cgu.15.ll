Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.15?download=true
inline.NumInlined: 5570
inline.NumDeleted: 2226
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvNtCsEhZmuQNqkz_11ruff_linter7logging14set_up_logging:_RINvMNtCsjBJLkJIqpmN_4fern8buildersNtB3_8Dispatch6formatNCNvNtCsEhZmuQNqkz_11ruff_linter7logging14set_up_logging0EBY_.exit
  store i64 %i.s, ptr %i.i, align 8, !alias.scope !7866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false), !alias.scope !7865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.t = call noundef zeroext i1 @_RNvMNtCsjBJLkJIqpmN_4fern8buildersNtB2_8Dispatch5apply(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvMNtCsjBJLkJIqpmN_4fern8buildersNtB3_8Dispatch5chainNtNtNtCs2AWtUsOyxgP_3std2io5stdio6StderrECsEhZmuQNqkz_11ruff_linter.exit
  %i.u = call noundef nonnull ptr @_RNvXs_NtCsiXichZnxgbf_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtCsdxG2AMukdbL_3log14SetLoggerErrorE4fromCsEhZmuQNqkz_11ruff_linter()
  br label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsjBJLkJIqpmN_4fern8buildersNtB3_8Dispatch5chainNtNtNtCs2AWtUsOyxgP_3std2io5stdio6StderrECsEhZmuQNqkz_11ruff_linter.exit, %bb.f
  %.sroa.0.0 = phi ptr [ %i.u, %bb.f ], [ null, %_RINvMNtCsjBJLkJIqpmN_4fern8buildersNtB3_8Dispatch5chainNtNtNtCs2AWtUsOyxgP_3std2io5stdio6StderrECsEhZmuQNqkz_11ruff_linter.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvNtCsEhZmuQNqkz_11ruff_linter7message18render_diagnostics(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i8 noundef range(i8 0, 12) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 10 uses
  switch i8 %2, label %default.unreachable [
    i8 0, label %bb.k
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.w
    i8 6, label %bb.f
    i8 7, label %bb.g
    i8 8, label %bb.h
    i8 9, label %bb.i
    i8 10, label %bb.j
    i8 11, label %bb.ai
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.a
  %.sroa.13.0.i.ph = phi i8 [ 1, %bb.a ], [ 2, %bb.j ], [ 5, %bb.i ], [ 6, %bb.h ], [ 8, %bb.g ], [ 9, %bb.f ], [ 7, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %3, align 8, !nonnull !13, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !13
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noundef !13
  store ptr %i.f, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 %.sroa.13.0.i.ph, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 41
  %i.p = load <2 x i64>, ptr %i.g, align 8
  store <2 x i64> %i.p, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.j, ptr %i.q, align 8
  %i.r = load <8 x i8>, ptr %i.h, align 1
  store <8 x i8> %i.r, ptr %i.o, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 7 uses
  store ptr %i.l, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %4, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @273, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %5, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %6, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6renderNtB5_18DisplayDiagnosticsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !13, !nonnull !13
  %i.z = invoke noundef ptr %i.y(ptr noundef nonnull %0, ptr noundef nonnull @282, ptr noundef nonnull %i.c)
          to label %bb.o unwind label %bb.l       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7928)
  call void @llvm.experimental.noalias.scope.decl(metadata !7929)
  %i.ab = load ptr, ptr %i.s, align 8, !alias.scope !7930, !noundef !13 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !7931
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomicbEE9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.thread unwind label %bb.v

bb.o:                                             ; preds = %bb.k
  %.not = icmp eq ptr %i.z, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !7932)
  call void @llvm.experimental.noalias.scope.decl(metadata !7933)
  %i.af = load ptr, ptr %i.s, align 8, !alias.scope !7934, !noundef !13 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit41, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !7935
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit41

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomicbEE9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit41

bb.s:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !7936)
  call void @llvm.experimental.noalias.scope.decl(metadata !7937)
  %i.aj = load ptr, ptr %i.s, align 8, !alias.scope !7938, !noundef !13 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit43, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !7939
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit43

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomicbEE9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit43

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit43: ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit46: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ac, %bb.ab, %bb.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit41, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit43
  %.sroa.0.0 = phi ptr [ null, %bb.ac ], [ null, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit43 ], [ %i.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit41 ], [ null, %bb.aa ], [ null, %bb.ab ], [ %.sroa.0.1, %bb.af ], [ %.sroa.0.1, %bb.ag ], [ %.sroa.0.1, %bb.ah ]
  ret ptr %.sroa.0.0

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit41: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit46

bb.v:                                             ; preds = %bb.aq, %bb.n
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = load i8, ptr %i.ao, align 8, !range !20, !noundef !13
  %.sroa.04.0.insert.ext.i = zext nneg i8 %i.ap to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 42
  %i.ar = load i8, ptr %i.aq, align 2, !range !17, !noundef !13
  %.sroa.24.0.insert.ext.i = zext nneg i8 %i.ar to i32
  %.sroa.24.0.insert.shift.i = shl nuw nsw i32 %.sroa.24.0.insert.ext.i, 24
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.24.0.insert.shift.i, %.sroa.04.0.insert.ext.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 45
  %7 = load i16, ptr %i.as, align 1
  %i.at = zext i16 %7 to i32
  %.sroa.28.0.insert.shift.i44 = shl nuw nsw i32 %i.at, 8
  %.sroa.07.0.insert.insert.i45 = or disjoint i32 %.sroa.0.0.insert.insert.i, %.sroa.28.0.insert.shift.i44
  store i32 %.sroa.07.0.insert.insert.i45, ptr %i.b, align 4
  %i.au = invoke noundef ptr @_RNvXs0_NtNtCsEhZmuQNqkz_11ruff_linter7message7groupedNtB5_14GroupedEmitterNtB7_7Emitter4emit(ptr noalias noundef nonnull dereferenceable(4) %i.b, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4)
          to label %bb.x unwind label %bb.ao      ; 2 uses

bb.x:                                             ; preds = %bb.w
  %.not37 = icmp eq ptr %i.au, null
  br i1 %.not37, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = invoke { ptr, ptr } @_RNvXsa_NtCsiXichZnxgbf_6anyhow5errorINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB1b_6marker4SendNtB1I_4SyncEL_EINtNtB1b_7convert4FromNtB7_5ErrorE4from(ptr noundef nonnull %i.au)
          to label %bb.ad unwind label %bb.ao     ; 2 uses

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.al, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !7940)
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7941)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !7942, !noundef !13 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit46, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.az = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !7943
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit46

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomicbEE9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit46

bb.ad:                                            ; preds = %bb.y
  %i.bb = extractvalue { ptr, ptr } %i.av, 0
  %i.bc = extractvalue { ptr, ptr } %i.av, 1
  %i.bd = invoke noundef nonnull ptr @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bc)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.an, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.bn, %bb.an ], [ %i.bd, %bb.ae ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7944)
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7945)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !7946, !noundef !13 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit46, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bh = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !7947
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit46

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomicbEE9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.be)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic23DisplayDiagnosticConfigECsEhZmuQNqkz_11ruff_linter.exit46

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  %i.bj = invoke noundef ptr @_RNvXs_NtNtCsEhZmuQNqkz_11ruff_linter7message5sarifNtB4_12SarifEmitterNtB6_7Emitter4emit(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison)
          to label %bb.aj unwind label %bb.ao     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %.not38 = icmp eq ptr %i.bj, null
  br i1 %.not38, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bk = invoke { ptr, ptr } @_RNvXsa_NtCsiXichZnxgbf_6anyhow5errorINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB1b_6marker4SendNtB1I_4SyncEL_EINtNtB1b_7convert4FromNtB7_5ErrorE4from(ptr noundef nonnull %i.bj)
          to label %bb.am unwind label %bb.ao     ; 2 uses

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.am:                                            ; preds = %bb.ak
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  %i.bn = invoke noundef nonnull ptr @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bm)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.af

.thread:                                          ; preds = %bb.ap, %bb.ao, %bb.aq, %bb.n, %bb.l, %bb.m
  %.pn52 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ap ], [ %i.aa, %bb.n ], [ %i.aa, %bb.m ], [ %i.aa, %bb.l ], [ %lpad.thr_comm, %bb.aq ], [ %lpad.thr_comm, %bb.ao ]
  resume { ptr, i32 } %.pn52

bb.ao:                                            ; preds = %bb.am, %bb.ak, %bb.ai, %bb.ad, %bb.y, %bb.w
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7948)
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7949)
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !7950, !noundef !13 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.br = atomicrmw add ptr %i.bp, i64 -1 release, align 8, !noalias !7951
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomicbEE9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtCsEhZmuQNqkz_11ruff_linter7message23create_panic_diagnostic(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %. = select i1 %.not, i64 undef, i64 %2
  call void @_RINvMs0_NtCs56aZGHL6Dc6_7ruff_db5panicNtB6_10PanicError21to_diagnostic_messageNtNtCs2AWtUsOyxgP_3std4path7DisplayECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %.)
  %i.j = call noundef nonnull ptr @_RINvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB3_10Diagnostic3newNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, i8 noundef 3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  store ptr %i.j, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.k = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newReECsEhZmuQNqkz_11ruff_linter(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 29)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.k, %bb.q, %bb.p, %bb.o, %bb.m, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit, %bb.j, %bb.f, %bb.e, %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7958)
  call void @llvm.experimental.noalias.scope.decl(metadata !7959)
  call void @llvm.experimental.noalias.scope.decl(metadata !7960)
  %i.m = load ptr, ptr %i.i, align 8, !alias.scope !7961, !nonnull !13, !noundef !13
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !7961
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.r

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 %i.k)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newReECsEhZmuQNqkz_11ruff_linter(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 120)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 %i.p)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %0, align 8, !range !7962, !noundef !13 ; 2 uses
  %.not24 = icmp eq i64 %i.q, -1
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  switch i64 %i.q, label %default.unreachable29 [
    i64 0, label %bb.l
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.l, %bb.g
  br i1 %.not, label %bb.n, label %bb.m

default.unreachable29:                            ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.r = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newReECsEhZmuQNqkz_11ruff_linter(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @292, i64 noundef 87)
          to label %.invoke unwind label %bb.b

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @293, ptr noundef nonnull %i.d)
end_hunk_0
