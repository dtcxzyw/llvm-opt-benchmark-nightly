Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.02?download=true
inline.NumInlined: 6474
inline.NumDeleted: 3263
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules23unnecessary_dunder_callNtB4_17DunderReplacement11from_method:bb.a
bb.fp:                                            ; preds = %bb.fl
  %i.zd = load i64, ptr %1, align 1
  %i.ze = xor i64 %i.zd, 8391439158244237151
  %i.zf = getelementptr i8, ptr %1, i64 3
  %i.zg = load i64, ptr %i.zf, align 1
  %i.zh = xor i64 %i.zg, 6872337400884982885
  %i.zi = or i64 %i.ze, %i.zh
  %i.zj = icmp ne i64 %i.zi, 0
  %i.zk = zext i1 %i.zj to i32
  %i.zl = icmp eq i32 %i.zk, 0
  br i1 %i.zl, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  store i8 3, ptr %0, align 8
  %.sroa.4528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @165, ptr %.sroa.4528.0..sroa_idx, align 8
  %.sroa.5529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 58, ptr %.sroa.5529.0..sroa_idx, align 8
  br label %bb.fw

bb.fr:                                            ; preds = %bb.fp
  %i.zm = load i64, ptr %1, align 1
  %i.zn = xor i64 %i.zm, 7310584043768340319
  %i.zo = getelementptr i8, ptr %1, i64 3
  %i.zp = load i64, ptr %i.zo, align 1
  %i.zq = xor i64 %i.zp, 6872331838902858853
  %i.zr = or i64 %i.zn, %i.zq
  %i.zs = icmp ne i64 %i.zr, 0
  %i.zt = zext i1 %i.zs to i32
  %i.zu = icmp eq i32 %i.zt, 0
  br i1 %i.zu, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  store i8 3, ptr %0, align 8
  %.sroa.4533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @164, ptr %.sroa.4533.0..sroa_idx, align 8
  %.sroa.5534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 24, ptr %.sroa.5534.0..sroa_idx, align 8
  br label %bb.fw

bb.ft:                                            ; preds = %bb.el
  %i.zv = load i64, ptr %1, align 1
  %i.zw = xor i64 %i.zv, 6873458907007967071
  %i.zx = getelementptr i8, ptr %1, i64 8
  %i.zy = load i8, ptr %i.zx, align 1
  %i.zz = zext i8 %i.zy to i64
  %i.aaa = xor i64 %i.zz, 95
  %i.aab = or i64 %i.zw, %i.aaa
  %i.aac = icmp ne i64 %i.aab, 0
  %i.aad = zext i1 %i.aac to i32
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.fn, %bb.fd, %bb.fb, %bb.ez, %bb.et, %bb.eb, %bb.br, %bb.fr, %bb.fj, %bb.bd, %bb.a, %bb.ft
  store i8 -1, ptr %0, align 8
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  store i8 3, ptr %0, align 8
  %.sroa.4538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @163, ptr %.sroa.4538.0..sroa_idx, align 8
  %.sroa.5539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %.sroa.5539.0..sroa_idx, align 8
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu, %bb.fs, %bb.fq, %bb.fo, %bb.fm, %bb.fk, %bb.fi, %bb.fg, %bb.fe, %bb.fc, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.es, %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i16, ptr %i.b, align 8, !range !9569, !noundef !12 ; 2 uses
  %i.d = and i16 %i.c, 63
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i16 %i.c, 6
  %i.h = zext nneg i16 %i.g to i64
  %i.i = load ptr, ptr %0, align 8, !nonnull !12, !align !19, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.h
  %i.l = load i64, ptr %i.k, align 8, !noundef !12
  %i.m = and i64 %i.f, %i.l
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !12
  %.not4 = icmp eq ptr %i.p, null
  br i1 %.not4, label %.invoke, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.a
  %i.q = invoke noundef i8 @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard21resolve_applicability(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.j unwind label %bb.l

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic10remove_fix(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.l

.invoke:                                          ; preds = %bb.j, %bb.b
  %i.r = phi ptr [ @283, %bb.b ], [ @284, %bb.j ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) #46
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %1, align 8, !alias.scope !9570 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i, 0
  br i1 %i.t, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.u, align 8, !alias.scope !9571, !nonnull !12, !noundef !12
  %i.v = mul nuw i64 %.val2.i.i, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9572
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !9570 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load ptr, ptr %i.x, align 8, !alias.scope !9571, !nonnull !12, !noundef !12
  %i.y = mul nuw i64 %.val.i.i, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9573
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit

common.resume:                                    ; preds = %bb.l, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.s, %bb.g ], [ %lpad.thr_comm, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k, %bb.i, %bb.h
  ret void

bb.j:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !12
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.invoke, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %i.q, ptr %i.ab, align 8
  call void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic7set_fix(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %.invoke, %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %1) #48
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMsk_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE17clone_from_ref_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.12.i.i = alloca [24 x i8], align 8       ; 5 uses
  %.sroa.13.i.i = alloca [24 x i8], align 8       ; 5 uses
  %.sroa.16.i.i = alloca [7 x i8], align 1        ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9586)
  %i.d = tail call { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 136), !noalias !9586 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.e to ptr
  br label %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0CsEhZmuQNqkz_11ruff_linter.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9586
  %i.i = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.e) #47, !noalias !9586
  br label %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0CsEhZmuQNqkz_11ruff_linter.exit.i.i

_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0CsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ] ; 16 uses
  %i.j = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %i.j, label %bb.d, label %_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCsEhZmuQNqkz_11ruff_linter.exit, !prof !13

bb.d:                                             ; preds = %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.e, i64 noundef %i.f) #46, !noalias !9586
  unreachable

_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i, align 8, !noalias !9586
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !9586
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.l, align 8, !alias.scope !9586
  store i64 8, ptr %i.c, align 8, !alias.scope !9586
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 136, ptr %i.m, align 8, !alias.scope !9586
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.n, align 8, !alias.scope !9586
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9588)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9590)
  %i.o = load i64, ptr %0, align 8, !range !24, !alias.scope !9591, !noalias !9589, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCsEhZmuQNqkz_11ruff_linter.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9592)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !9593, !noalias !9594, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9595
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %.noexc unwind label %.body.thread7

.body.thread7:                                    ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !9593, !noalias !9594
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load i8, ptr %i.v, align 8, !range !58, !alias.scope !9593, !noalias !9594, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load <2 x i64>, ptr %i.x, align 8, !alias.scope !9593, !noalias !9594
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1 = load i64, ptr %i.z, align 8, !alias.scope !9593, !noalias !9594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9595
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.f, !noalias !9594

bb.f:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecyEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.b) #48
          to label %.body.thread unwind label %bb.g, !noalias !9594

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #49, !noalias !9594
  unreachable

_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i: ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !9593, !noalias !9594
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %2 = load <2 x i64>, ptr %i.af, align 8, !alias.scope !9593, !noalias !9594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !9591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !9591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9595
  br label %bb.i

bb.h:                                             ; preds = %_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load <2 x i64>, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !9596
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.7.0.copyload7.i.i = load i64, ptr %.sroa.7.0..sroa_idx6.i.i, align 8, !alias.scope !9596
  %.sroa.8.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load <2 x i64>, ptr %.sroa.8.0..sroa_idx8.i.i, align 8, !alias.scope !9596
  %.sroa.10.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load <2 x i64>, ptr %.sroa.10.0..sroa_idx12.i.i, align 8, !alias.scope !9596
  %.sroa.12.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.12.0..sroa_idx16.i.i, i64 24, i1 false), !alias.scope !9597
  %.sroa.13.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.13.0..sroa_idx17.i.i, i64 24, i1 false), !alias.scope !9597
  %.sroa.14.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.14.0.copyload19.i.i = load i64, ptr %.sroa.14.0..sroa_idx18.i.i, align 8, !alias.scope !9596
  %.sroa.15.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.15.0.copyload21.i.i = load i8, ptr %.sroa.15.0..sroa_idx20.i.i, align 8, !alias.scope !9596
  %.sroa.16.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %0, i64 121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.i.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.16.0..sroa_idx22.i.i, i64 7, i1 false), !alias.scope !9597
  %.sroa.1623.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.1623.0.copyload25.i.i = load i64, ptr %.sroa.1623.0..sroa_idx24.i.i, align 8, !alias.scope !9596
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.1623.0.i.i = phi i64 [ %.sroa.1623.0.copyload25.i.i, %bb.h ], [ %i.q, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.15.0.i.i = phi i8 [ %.sroa.15.0.copyload21.i.i, %bb.h ], [ %i.w, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.14.0.i.i = phi i64 [ %.sroa.14.0.copyload19.i.i, %bb.h ], [ %i.u, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload7.i.i, %bb.h ], [ %1, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ]
  %i.ah = phi <2 x i64> [ %i.ag, %bb.h ], [ %i.y, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ]
  %5 = phi <2 x i64> [ %3, %bb.h ], [ %i.ae, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ]
  %6 = phi <2 x i64> [ %4, %bb.h ], [ %2, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  store i64 %i.o, ptr %i.ai, align 8, !noalias !9598
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 24
  store <2 x i64> %i.ah, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9598
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 40
  store i64 %.sroa.7.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !9598
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 48
  store <2 x i64> %5, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !9598
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 64
  store <2 x i64> %6, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !9598
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i, i64 24, i1 false), !noalias !9598
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i, i64 24, i1 false), !noalias !9598
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 128
  store i64 %.sroa.14.0.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !9598
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 136
  store i8 %.sroa.15.0.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !9598
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.i.i, i64 7, i1 false), !noalias !9598
  %.sroa.1623.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 144
  store i64 %.sroa.1623.0.i.i, ptr %.sroa.1623.0..sroa_idx.i.i, align 8, !noalias !9598
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %.sroa.0.0.i.i.i.i.i

bb.j:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body6

.body.thread:                                     ; preds = %bb.f, %.body.thread7
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.s, %.body.thread7 ], [ %i.ab, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBG_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.c) #48
          to label %bb.j unwind label %bb.k

bb.k:                                             ; preds = %.body.thread
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsr_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_13QualifiedName16from_dotted_name(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 14 uses
  %.sroa.513.i = alloca [24 x i8], align 8        ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [144 x i8], align 8               ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.866 = alloca [112 x i8], align 8         ; 4 uses
  %i.g = alloca [144 x i8], align 8               ; 4 uses
  %i.h = alloca [144 x i8], align 8               ; 18 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.a
  %i.i = phi i64 [ 0, %bb.a ], [ %i.x, %.backedge.i.backedge ] ; 4 uses
  %i.j = sub nuw i64 %2, %i.i                     ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 2 uses
  %i.l = icmp samesign ult i64 %i.j, 16
  br i1 %i.l, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.backedge.i
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.backedge.i
  %i.m = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !9664
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.j, %bb.c ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.s, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.05.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !9665, !noalias !9664, !noundef !12
  %i.r = icmp eq i8 %i.q, 46
  br i1 %i.r, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.s, %i.j
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.merged.i.i.i = phi { i64, i64 } [ %i.o, %._crit_edge.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.t = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.d, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.d:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i
  %i.v = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.w = add i64 %i.i, 1
  %i.x = add i64 %i.w, %i.v                       ; 2 uses
  %.not13.i.i = icmp ugt i64 %i.x, %2             ; 2 uses
  %i.y = add i64 %i.v, %i.i                       ; 5 uses
  %or.cond.i.not.i = icmp ult i64 %i.y, %2
  br i1 %or.cond.i.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not13.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsEhZmuQNqkz_11ruff_linter.exit.thread, label %.backedge.i.backedge

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %lhsc.i = load i8, ptr %i.z, align 1, !alias.scope !9666
  %i.aa = icmp eq i8 %lhsc.i, 46                  ; 2 uses
  %brmerge.i = or i1 %.not13.i.i, %i.aa
  br i1 %brmerge.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsEhZmuQNqkz_11ruff_linter.exit, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.f, %bb.e
  br label %.backedge.i

_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f
  br i1 %i.aa, label %bb.g, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.g:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVecNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !9667)
  %i.ab = load i64, ptr %i.h, align 8, !range !17, !alias.scope !9667, !noalias !9668, !noundef !12
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 21 uses
  br i1 %i.ac, label %bb.l, label %bb.n

_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.e, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i, %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.866)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %2, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9669
  call void @_RNvXs4_NtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB5_8ArrayVecReKj8_EINtNtCs4NRVxsYgnAr_4core7convert7TryFromRSBS_E8try_fromCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef 2), !noalias !9670
  %i.ah = load i64, ptr %i.e, align 8, !range !17, !noalias !9669, !noundef !12
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsEhZmuQNqkz_11ruff_linter.exit.thread
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9671
  %i.aj = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9671 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.464.8.copyload = load i64, ptr %i.al, align 8, !noalias !9672
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.8.copyload = load ptr, ptr %.sroa.6.8..sroa_idx, align 8, !noalias !9672
  %.sroa.765.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.765.8.copyload = load i64, ptr %.sroa.765.8..sroa_idx, align 8, !noalias !9672
  %.sroa.866.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.866, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.866.8..sroa_idx, i64 112, i1 false), !noalias !9672
  br label %_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #46, !noalias !9670
  unreachable

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !9670
  br label %_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit

_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit: ; preds = %bb.i, %bb.k
  %.sroa.765.0 = phi i64 [ 2, %bb.k ], [ %.sroa.765.8.copyload, %bb.i ]
  %.sroa.6.0 = phi ptr [ %i.aj, %bb.k ], [ %.sroa.6.8.copyload, %bb.i ]
  %.sroa.464.0 = phi i64 [ 2, %bb.k ], [ %.sroa.464.8.copyload, %bb.i ]
  %storemerge.i = phi i64 [ 1, %bb.k ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9669
  store i64 %storemerge.i, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.464.0, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.765.0, ptr %.sroa.765.0..sroa_idx, align 8
  %.sroa.866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.866.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.866, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.866)
  br label %bb.be

.loopexit:                                        ; preds = %bb.aj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %select.unfold.i
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.ah, %bb.n, %bb.m, %bb.ag
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_0
