Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.11?download=true
inline.NumInlined: 2055
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async12unused_async:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1540
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.m, ptr noundef nonnull align 8 %i.ay), !noalias !1544
  %i.ba = load i64, ptr %i.e, align 8, !range !88, !noalias !1540, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.ba, 2
  br i1 %.not.i.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async24is_async_context_manager0Bb_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %i.e, i64 144, i1 false), !noalias !1540
  call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  %i.bb = load i64, ptr %i.d, align 8, !range !268, !alias.scope !1545, !noalias !1540, !noundef !6 ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i1               ; 5 uses
  %i.bd = load ptr, ptr %i.av, align 8, !alias.scope !1545, !noalias !1540, !nonnull !6 ; 4 uses
  %i.be = load i64, ptr %i.aw, align 8, !alias.scope !1545, !noalias !1540
  %i.bf = load i32, ptr %i.ax, align 8, !alias.scope !1545, !noalias !1540
  %i.bg = zext i32 %i.bf to i64
  %.sroa.7.0.i.i.i.i = select i1 %i.bc, i64 %i.be, i64 %i.bg
  %.sroa.01.0.i.i.i.i = select i1 %i.bc, ptr %i.bd, ptr %i.av
  %i.bh = icmp eq i64 %.sroa.7.0.i.i.i.i, 2
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.01.0.i.sroa.sel.i.i.i = select i1 %i.bc, ptr %.sroa.gep.i.i.i, ptr %i.aw
  %i.bi = load i64, ptr %.sroa.01.0.i.sroa.sel.i.i.i, align 8, !noalias !1544, !noundef !6
  %i.bj = icmp eq i64 %i.bi, 10
  br i1 %i.bj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %.sroa.01.0.i.i.i.i, align 8, !noalias !1544, !nonnull !6, !noundef !6 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = xor i64 %i.bl, 7815003630535077731
  %i.bn = getelementptr i8, ptr %i.bk, i64 8
  %i.bo = load i16, ptr %i.bn, align 1
  %i.bp = zext i16 %i.bo to i64
  %i.bq = xor i64 %i.bp, 25193
  %i.br = or i64 %i.bm, %i.bq
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.sroa.gep2.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.01.0.i.sroa.sel4.i.i.i = select i1 %i.bc, ptr %.sroa.gep2.i.i.i, ptr %.sroa.gep3.i.i.i
  %i.bv = load i64, ptr %.sroa.01.0.i.sroa.sel4.i.i.i, align 8, !noalias !1544, !noundef !6
  %i.bw = icmp eq i64 %i.bv, 19
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.gep5.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.01.0.i.sroa.sel7.i.i.i = select i1 %i.bc, ptr %.sroa.gep5.i.i.i, ptr %.sroa.gep6.i.i.i
  %i.bx = load ptr, ptr %.sroa.01.0.i.sroa.sel7.i.i.i, align 8, !noalias !1544, !nonnull !6, !noundef !6 ; 2 uses
  %i.by = load i128, ptr %i.bx, align 1
  %i.bz = xor i128 %i.by, 129508244311222750322076114225880200033
  %i.ca = getelementptr i8, ptr %i.bx, i64 3
  %i.cb = load i128, ptr %i.ca, align 1
  %i.cc = xor i128 %i.cb, 152058510309674500878504988348027986798
  %i.cd = or i128 %i.bz, %i.cc
  %i.ce = icmp ne i128 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i = phi i1 [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ %i.cg, %bb.m ], [ false, %bb.l ]
  %i.ch = icmp eq i64 %i.bb, 0
  br i1 %i.ch, label %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async24is_async_context_manager00Bd_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i unwind label %bb.p, !noalias !1544

bb.p:                                             ; preds = %bb.o
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %common.resume unwind label %bb.q, !noalias !1544

bb.q:                                             ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1544
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %bb.p ], [ %i.cs, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i: ; preds = %bb.o
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax), !noalias !1544
  br label %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async24is_async_context_manager00Bd_.exit.i.i.i

_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async24is_async_context_manager00Bd_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1540
  br i1 %.sroa.0.0.i.i.i.i, label %_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7fastapi5rules16is_fastapi_route.exit, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async24is_async_context_manager0Bb_.exit.i.i, %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async24is_async_context_manager00Bd_.exit.i.i.i
  %.not6.i.i = icmp eq ptr %i.az, %i.au
  br i1 %.not6.i.i, label %.loopexit, label %bb.h

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async24is_async_context_manager0Bb_.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1540
  br label %.backedge.i.i

.loopexit:                                        ; preds = %.backedge.i.i, %_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7fastapi5rules16is_fastapi_route.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 0, ptr %i.h, align 1
  %i.ck = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
  %i.cl = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !6
  call void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order9walk_bodyNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async16AsyncExprVisitorEB1h_(ptr noalias noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull align 8 %i.ck, i64 noundef %i.cm)
  %i.cn = load i8, ptr %i.h, align 1, !range !36, !noundef !6
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.co, label %_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7fastapi5rules16is_fastapi_route.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1548
  store i64 0, ptr %i.c, align 8, !noalias !1548
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1548
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1548
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.cp, align 8, !noalias !1548
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1548
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1548
  store ptr %i.c, ptr %i.b, align 8, !noalias !1548
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @300, ptr %i.cq, align 8, !noalias !1548
  %i.cr = invoke noundef zeroext i1 @_RNvXs2i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.t unwind label %bb.s, !noalias !1548

bb.s:                                             ; preds = %bb.u, %bb.r
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #26
          to label %common.resume unwind label %bb.v, !noalias !1548

bb.t:                                             ; preds = %bb.r
  br i1 %i.cr, label %bb.u, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit, !prof !7

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #25
          to label %.noexc.i unwind label %bb.s, !noalias !1548

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1548
  unreachable

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1548
  %i.cu = load i32, ptr %1, align 8, !noundef !6
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !noundef !6
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !6, !align !17, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules12unused_async11UnusedAsyncEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull align 8 %i.cy, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i32 noundef %i.cu, i32 noundef %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7fastapi5rules16is_fastapi_route.exit

_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7fastapi5rules16is_fastapi_route.exit: ; preds = %.split.i.i, %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async24is_async_context_manager00Bd_.exit.i.i.i, %.loopexit, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_type18invalid_index_type(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [56 x i8], align 8                ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 7 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 6 uses
  %i.q = alloca [1 x i8], align 1                 ; 8 uses
  %i.r = alloca [1 x i8], align 1                 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.t = load i32, ptr %i.s, align 8, !range !16, !noundef !6
  %switch.tableidx = add nsw i32 %i.t, -8         ; 3 uses
  %i.u = icmp ult i32 %switch.tableidx, 23
  %switch.shifted = lshr i32 6298113, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.u, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB5_17CheckableExprType8try_from.exit

switch.lookup:                                    ; preds = %bb.a
  %i.v = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_type18invalid_index_type, i64 %i.v
  %switch.load = load i8, ptr %switch.gep, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 %switch.load, ptr %i.r, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.y = load i32, ptr %i.x, align 8, !range !16, !noundef !6
  switch i32 %i.y, label %_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB5_17CheckableExprType8try_from.exit.sink.split [
    i32 4, label %.thread106
    i32 6, label %bb.b
    i32 7, label %bb.c
    i32 8, label %bb.d
    i32 9, label %bb.e
    i32 10, label %bb.f
    i32 11, label %bb.g
    i32 17, label %bb.h
    i32 18, label %bb.i
    i32 19, label %bb.j
    i32 20, label %bb.k
    i32 21, label %bb.q
    i32 22, label %.thread108
    i32 23, label %bb.l
    i32 24, label %bb.m
    i32 29, label %bb.n
    i32 30, label %bb.o
    i32 31, label %bb.p
  ]

bb.b:                                             ; preds = %switch.lookup
  br label %.thread106

bb.c:                                             ; preds = %switch.lookup
  br label %.thread106

bb.d:                                             ; preds = %switch.lookup
  br label %.thread106

bb.e:                                             ; preds = %switch.lookup
  br label %.thread106

bb.f:                                             ; preds = %switch.lookup
  br label %.thread106

bb.g:                                             ; preds = %switch.lookup
  br label %.thread106

bb.h:                                             ; preds = %switch.lookup
  br label %.thread106

bb.i:                                             ; preds = %switch.lookup
  br label %.thread106

bb.j:                                             ; preds = %switch.lookup
  br label %.thread106

bb.k:                                             ; preds = %switch.lookup
  br label %.thread106

.thread108:                                       ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  br label %bb.ag

bb.l:                                             ; preds = %switch.lookup
  br label %.thread106

bb.m:                                             ; preds = %switch.lookup
  br label %.thread106

bb.n:                                             ; preds = %switch.lookup
  br label %.thread106

bb.o:                                             ; preds = %switch.lookup
  br label %.thread106

bb.p:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  store ptr %i.z, ptr %.sroa.11, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 8
  store ptr %i.aa, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 16
  store ptr %i.ab, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.42.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.53.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.5.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %.lr.ph

.thread106:                                       ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.o, %bb.l, %bb.m, %bb.n, %switch.lookup
  %.sroa.0.0.i58.ph.ph.ph = phi i8 [ 10, %bb.n ], [ 9, %bb.m ], [ 8, %bb.l ], [ 16, %bb.o ], [ 3, %bb.k ], [ 2, %bb.j ], [ 1, %bb.i ], [ 0, %bb.h ], [ 18, %bb.g ], [ 13, %bb.f ], [ 12, %bb.e ], [ 11, %bb.d ], [ 14, %bb.c ], [ 15, %bb.b ], [ 19, %switch.lookup ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 %.sroa.0.0.i58.ph.ph.ph, ptr %i.q, align 1
  br label %bb.au

bb.q:                                             ; preds = %switch.lookup
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !88, !noundef !6
  %switch.idx.cast.i60 = trunc nuw nsw i64 %i.ak to i8
  %switch.offset.i61 = or disjoint i8 %switch.idx.cast.i60, 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 %switch.offset.i61, ptr %i.q, align 1
  switch i8 %switch.offset.i61, label %bb.au [
    i8 4, label %bb.ag
    i8 7, label %bb.ag
  ]

.lr.ph:                                           ; preds = %bb.p, %.split.preheader.i.backedge
  %i.al = phi i64 [ 0, %bb.p ], [ %i.an, %.split.preheader.i.backedge ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  br label %bb.r

.split.i:                                         ; preds = %bb.r
  %.not.i.i.i.i = icmp eq i64 %i.an, 3
  br i1 %.not.i.i.i.i, label %.split.preheader.i._crit_edge, label %bb.r

bb.r:                                             ; preds = %.lr.ph, %.split.i
  %i.am = phi i64 [ %i.al, %.lr.ph ], [ %i.an, %.split.i ] ; 3 uses
  %i.an = add nuw nsw i64 %i.am, 1                ; 4 uses
  %2 = icmp ult i64 %i.am, 3
  call void @llvm.assume(i1 %2)
  %.sroa.11.24..sroa_stride = shl nuw nsw i64 %i.am, 3
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 %.sroa.11.24..sroa_stride
  %i.ao = load ptr, ptr %.sroa.11.24..sroa_idx, align 8, !alias.scope !1554
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !1561, !noalias !1551, !align !17, !noundef !6 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %.split.i, label %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit

_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.r
  %i.aq = load i32, ptr %i.ap, align 8, !range !16, !noundef !6
  switch i32 %i.aq, label %.split.preheader.i.backedge [
    i32 4, label %.thread116
    i32 6, label %bb.s
    i32 7, label %bb.t
    i32 8, label %bb.u
    i32 9, label %bb.v
    i32 10, label %bb.w
    i32 11, label %bb.x
    i32 17, label %bb.y
    i32 18, label %bb.z
    i32 19, label %bb.aa
    i32 20, label %bb.ab
    i32 21, label %bb.ah
    i32 22, label %.thread120
    i32 23, label %.thread120
    i32 24, label %bb.ac
    i32 29, label %bb.ad
    i32 30, label %bb.ae
    i32 31, label %bb.af
  ]

bb.s:                                             ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.t:                                             ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.u:                                             ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.v:                                             ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.w:                                             ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.x:                                             ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.y:                                             ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.z:                                             ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.aa:                                            ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.ab:                                            ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.ac:                                            ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.ad:                                            ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.ae:                                            ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

bb.af:                                            ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  br label %.thread116

.split.preheader.i._crit_edge:                    ; preds = %.split.preheader.i.backedge, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.ag

bb.ag:                                            ; preds = %.thread108, %switch.lookup163, %bb.q, %bb.q, %.split.preheader.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB5_17CheckableExprType8try_from.exit.sink.split

.thread116:                                       ; preds = %bb.ad, %bb.ac, %bb.ae, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.af, %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0.i63.ph.ph = phi i8 [ 17, %bb.af ], [ 10, %bb.ad ], [ 15, %bb.s ], [ 14, %bb.t ], [ 11, %bb.u ], [ 12, %bb.v ], [ 13, %bb.w ], [ 18, %bb.x ], [ 0, %bb.y ], [ 1, %bb.z ], [ 2, %bb.aa ], [ 3, %bb.ab ], [ 16, %bb.ae ], [ 9, %bb.ac ], [ 19, %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %.sroa.0.0.i63.ph.ph, ptr %i.p, align 1
  br label %bb.ai

.thread120:                                       ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %bb.an

bb.ah:                                            ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !88, !noundef !6
  %switch.idx.cast.i65 = trunc nuw nsw i64 %i.as to i8
  %switch.offset.i66 = or disjoint i8 %switch.idx.cast.i65, 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %switch.offset.i66, ptr %i.p, align 1
  switch i8 %switch.offset.i66, label %bb.ai [
    i8 4, label %bb.an
    i8 7, label %bb.an
  ]

bb.ai:                                            ; preds = %.thread116, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1564
  store i64 0, ptr %i.i, align 8, !noalias !1564
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1564
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1564
  store i32 1610612768, ptr %i.ac, align 8, !noalias !1564
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1564
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1564
  store ptr %i.i, ptr %i.h, align 8, !noalias !1564
  store ptr @300, ptr %i.ad, align 8, !noalias !1564
  %i.at = invoke noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB4_17CheckableExprTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ak unwind label %.loopexit, !noalias !1568

.loopexit:                                        ; preds = %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #26
          to label %common.resume unwind label %bb.am, !noalias !1564

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.at, label %bb.al, label %bb.ao, !prof !7

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #25
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !1564

.noexc.i:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1564
  unreachable

bb.an:                                            ; preds = %.thread120, %bb.ah, %bb.ah, %switch.lookup157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.split.preheader.i.backedge

.split.preheader.i.backedge:                      ; preds = %bb.an, %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  %.not.i.i.i.i130 = icmp eq i64 %i.an, 3
  br i1 %.not.i.i.i.i130, label %.split.preheader.i._crit_edge, label %.lr.ph

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1570
  store i64 0, ptr %i.g, align 8, !noalias !1570
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i68, align 8, !noalias !1570
  store i64 0, ptr %.sroa.53.0..sroa_idx.i69, align 8, !noalias !1570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1570
  store i32 1610612768, ptr %i.ae, align 8, !noalias !1570
  store i16 0, ptr %.sroa.4.0..sroa_idx.i70, align 4, !noalias !1570
  store i16 0, ptr %.sroa.5.0..sroa_idx.i71, align 2, !noalias !1570
  store ptr %i.g, ptr %i.f, align 8, !noalias !1570
  store ptr @300, ptr %i.af, align 8, !noalias !1570
  %i.av = invoke noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB4_17CheckableExprTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.aq unwind label %.loopexit122, !noalias !1574

.loopexit122:                                     ; preds = %bb.ao
  %lpad.loopexit124 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp123:                            ; preds = %bb.ar
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp123, %.loopexit122
  %lpad.phi126 = phi { ptr, i32 } [ %lpad.loopexit124, %.loopexit122 ], [ %lpad.loopexit.split-lp125, %.loopexit.split-lp123 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #26
          to label %.body73 unwind label %bb.as, !noalias !1570

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.av, label %bb.ar, label %switch.lookup157, !prof !7

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #25
          to label %.noexc.i72 unwind label %.loopexit.split-lp123, !noalias !1570

.noexc.i72:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1570
  unreachable

.body73:                                          ; preds = %bb.ap
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #26
          to label %common.resume unwind label %bb.at

switch.lookup157:                                 ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i8 1, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ax = load i32, ptr %i.ap, align 8, !range !16, !noundef !6 ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %switch.gep158 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.ay
  %switch.load159 = load i8, ptr %switch.gep158, align 1
  %switch.ext = zext i8 %switch.load159 to i64
  %i.az = zext nneg i32 %i.ax to i64
  %switch.gep160 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.505, i64 %i.az
  %switch.load161 = load i8, ptr %switch.gep160, align 1
  %switch.ext162 = zext i8 %switch.load161 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %switch.ext
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %switch.ext162
  %.sroa.0.0.i76 = load i32, ptr %i.ba, align 4, !noundef !6
  %.sroa.34.0.i = load i32, ptr %i.bb, align 4, !noundef !6
  %i.bc = load ptr, ptr %i.ai, align 8, !nonnull !6, !align !17, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules18invalid_index_type16InvalidIndexTypeEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noundef nonnull align 8 %i.bc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.n, i32 noundef %.sroa.0.0.i76, i32 noundef %.sroa.34.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.an

bb.at:                                            ; preds = %.body88, %.body73
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.av, %.body88, %.body73, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.av ], [ %i.bm, %.body88 ], [ %lpad.phi, %bb.aj ], [ %lpad.phi126, %.body73 ]
  resume { ptr, i32 } %common.resume.op

bb.au:                                            ; preds = %.thread106, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1575
  store i64 0, ptr %i.e, align 8, !noalias !1575
  %.sroa.42.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i77, align 8, !noalias !1575
  %.sroa.53.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i78, align 8, !noalias !1575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1575
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 1610612768, ptr %i.be, align 8, !noalias !1575
  %.sroa.4.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i79, align 4, !noalias !1575
  %.sroa.5.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i80, align 2, !noalias !1575
  store ptr %i.e, ptr %i.d, align 8, !noalias !1575
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @300, ptr %i.bf, align 8, !noalias !1575
  %i.bg = invoke noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB4_17CheckableExprTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.aw unwind label %bb.av, !noalias !1579

bb.av:                                            ; preds = %bb.ax, %bb.au
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #26
end_hunk_0
