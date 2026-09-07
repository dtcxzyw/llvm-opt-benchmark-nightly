Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.11?download=true
inline.NumInlined: 2055
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules12unused_async12unused_async:bb.a
  store i32 1610612768, ptr %i.cp, align 8, !noalias !1553
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1553
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1553
  store ptr %i.c, ptr %i.b, align 8, !noalias !1553
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @300, ptr %i.cq, align 8, !noalias !1553
  %i.cr = invoke noundef zeroext i1 @_RNvXs2i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.t unwind label %bb.s, !noalias !1553

bb.s:                                             ; preds = %bb.u, %bb.r
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #26
          to label %common.resume unwind label %bb.v, !noalias !1553

bb.t:                                             ; preds = %bb.r
  br i1 %i.cr, label %bb.u, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit, !prof !4

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #25
          to label %.noexc.i unwind label %bb.s, !noalias !1553

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1553
  unreachable

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1553
  %i.cu = load i32, ptr %1, align 8, !noundef !3
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !3, !align !6, !noundef !3
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
  %i.q = alloca [80 x i8], align 8                ; 7 uses
  %i.r = alloca [1 x i8], align 1                 ; 8 uses
  %i.s = alloca [1 x i8], align 1                 ; 5 uses
  %i.t = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.u = load i32, ptr %i.t, align 8, !range !5, !noundef !3
  %switch.tableidx = add nsw i32 %i.u, -8         ; 3 uses
  %i.v = icmp ult i32 %switch.tableidx, 23
  %switch.shifted = lshr i32 6298113, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.v, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB5_17CheckableExprType8try_from.exit

switch.lookup:                                    ; preds = %bb.a
  %i.w = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_type18invalid_index_type, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %switch.load, ptr %i.s, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.z = load i32, ptr %i.y, align 8, !range !5, !noundef !3
  switch i32 %i.z, label %_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB5_17CheckableExprType8try_from.exit.sink.split [
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.sroa.037.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store ptr %i.aa, ptr %.sroa.037.sroa.4.0..sroa_idx, align 8
  %.sroa.037.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.ab, ptr %.sroa.037.sroa.5.0..sroa_idx, align 8
  %.sroa.037.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.ac, ptr %.sroa.037.sroa.6.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 0, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.42.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.53.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.5.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %.lr.ph

.thread106:                                       ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.o, %bb.l, %bb.m, %bb.n, %switch.lookup
  %.sroa.0.0.i58.ph.ph.ph = phi i8 [ 10, %bb.n ], [ 9, %bb.m ], [ 8, %bb.l ], [ 16, %bb.o ], [ 3, %bb.k ], [ 2, %bb.j ], [ 1, %bb.i ], [ 0, %bb.h ], [ 18, %bb.g ], [ 13, %bb.f ], [ 12, %bb.e ], [ 11, %bb.d ], [ 14, %bb.c ], [ 15, %bb.b ], [ 19, %switch.lookup ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 %.sroa.0.0.i58.ph.ph.ph, ptr %i.r, align 1
  br label %bb.au

bb.q:                                             ; preds = %switch.lookup
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !15, !noundef !3 ; 2 uses
  %switch.idx.cast.i60 = trunc nuw nsw i64 %i.al to i8
  %switch.offset.i61 = or disjoint i8 %switch.idx.cast.i60, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 %switch.offset.i61, ptr %i.r, align 1
  %cond = icmp eq i64 %i.al, 0
  br i1 %cond, label %bb.ag, label %bb.au

.lr.ph:                                           ; preds = %bb.p, %.split.preheader.i.backedge
  %i.am = phi i64 [ 0, %bb.p ], [ %i.ao, %.split.preheader.i.backedge ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  br label %bb.r

.split.i:                                         ; preds = %bb.r
  %.not.i.i.i.i = icmp eq i64 %i.ao, 3
  br i1 %.not.i.i.i.i, label %.split.preheader.i._crit_edge, label %bb.r

bb.r:                                             ; preds = %.lr.ph, %.split.i
  %i.an = phi i64 [ %i.am, %.lr.ph ], [ %i.ao, %.split.i ] ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, 1                ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.037.sroa.4.0..sroa_idx, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !1577, !nonnull !3, !align !6, !noundef !3
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !1578, !noalias !1576, !align !6, !noundef !3 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %.split.i, label %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit

_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.r
  %i.as = load i32, ptr %i.ar, align 8, !range !5, !noundef !3
  switch i32 %i.as, label %.split.preheader.i.backedge [
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.q, %.thread108, %switch.lookup163, %.split.preheader.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
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
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !15, !noundef !3 ; 2 uses
  %switch.idx.cast.i65 = trunc nuw nsw i64 %i.au to i8
  %switch.offset.i66 = or disjoint i8 %switch.idx.cast.i65, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %switch.offset.i66, ptr %i.p, align 1
  %cond122 = icmp eq i64 %i.au, 0
  br i1 %cond122, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1579
  store i64 0, ptr %i.i, align 8, !noalias !1579
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1579
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1579
  store i32 1610612768, ptr %i.ad, align 8, !noalias !1579
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1579
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1579
  store ptr %i.i, ptr %i.h, align 8, !noalias !1579
  store ptr @300, ptr %i.ae, align 8, !noalias !1579
  %i.av = invoke noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB4_17CheckableExprTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ak unwind label %.loopexit, !noalias !1580

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
          to label %common.resume unwind label %bb.am, !noalias !1579

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.av, label %bb.al, label %bb.ao, !prof !4

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #25
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !1579

.noexc.i:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1579
  unreachable

bb.an:                                            ; preds = %bb.ah, %.thread120, %switch.lookup157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.split.preheader.i.backedge

.split.preheader.i.backedge:                      ; preds = %bb.an, %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEKj3_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  %.not.i.i.i.i130 = icmp eq i64 %i.ao, 3
  br i1 %.not.i.i.i.i130, label %.split.preheader.i._crit_edge, label %.lr.ph

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1582
  store i64 0, ptr %i.g, align 8, !noalias !1582
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i68, align 8, !noalias !1582
  store i64 0, ptr %.sroa.53.0..sroa_idx.i69, align 8, !noalias !1582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1582
  store i32 1610612768, ptr %i.af, align 8, !noalias !1582
  store i16 0, ptr %.sroa.4.0..sroa_idx.i70, align 4, !noalias !1582
  store i16 0, ptr %.sroa.5.0..sroa_idx.i71, align 2, !noalias !1582
  store ptr %i.g, ptr %i.f, align 8, !noalias !1582
  store ptr @300, ptr %i.ag, align 8, !noalias !1582
  %i.ax = invoke noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB4_17CheckableExprTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.aq unwind label %.loopexit122, !noalias !1583

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
          to label %.body73 unwind label %bb.as, !noalias !1582

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.ax, label %bb.ar, label %switch.lookup157, !prof !4

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #25
          to label %.noexc.i72 unwind label %.loopexit.split-lp123, !noalias !1582

.noexc.i72:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1582
  unreachable

.body73:                                          ; preds = %bb.ap
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #26
          to label %common.resume unwind label %bb.at

switch.lookup157:                                 ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i8 1, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.az = load i32, ptr %i.ar, align 8, !range !5, !noundef !3 ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %switch.gep158 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.ba
  %switch.load159 = load i8, ptr %switch.gep158, align 1
  %switch.ext = zext i8 %switch.load159 to i64
  %i.bb = zext nneg i32 %i.az to i64
  %switch.gep160 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.505, i64 %i.bb
  %switch.load161 = load i8, ptr %switch.gep160, align 1
  %switch.ext162 = zext i8 %switch.load161 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %switch.ext
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %switch.ext162
  %.sroa.0.0.i76 = load i32, ptr %i.bc, align 4, !noundef !3
  %.sroa.34.0.i = load i32, ptr %i.bd, align 4, !noundef !3
  %i.be = load ptr, ptr %i.aj, align 8, !nonnull !3, !align !6, !noundef !3
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules18invalid_index_type16InvalidIndexTypeEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noundef nonnull align 8 %i.be, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.n, i32 noundef %.sroa.0.0.i76, i32 noundef %.sroa.34.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.an

bb.at:                                            ; preds = %.body88, %.body73
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.av, %.body88, %.body73, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.av ], [ %i.bo, %.body88 ], [ %lpad.phi, %bb.aj ], [ %lpad.phi126, %.body73 ]
  resume { ptr, i32 } %common.resume.op

bb.au:                                            ; preds = %bb.q, %.thread106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1584
  store i64 0, ptr %i.e, align 8, !noalias !1584
  %.sroa.42.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i77, align 8, !noalias !1584
  %.sroa.53.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i78, align 8, !noalias !1584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1584
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 1610612768, ptr %i.bg, align 8, !noalias !1584
  %.sroa.4.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i79, align 4, !noalias !1584
  %.sroa.5.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i80, align 2, !noalias !1584
  store ptr %i.e, ptr %i.d, align 8, !noalias !1584
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @300, ptr %i.bh, align 8, !noalias !1584
  %i.bi = invoke noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB4_17CheckableExprTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.aw unwind label %bb.av, !noalias !1585

bb.av:                                            ; preds = %bb.ax, %bb.au
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #26
          to label %common.resume unwind label %bb.ay, !noalias !1584

bb.aw:                                            ; preds = %bb.au
  br i1 %i.bi, label %bb.ax, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_type17CheckableExprTypeNtB5_12SpecToString14spec_to_stringBH_.exit82, !prof !4

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #25
          to label %.noexc.i81 unwind label %bb.av, !noalias !1584

.noexc.i81:                                       ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1584
  unreachable

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_type17CheckableExprTypeNtB5_12SpecToString14spec_to_stringBH_.exit82: ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1587
  store i64 0, ptr %i.c, align 8, !noalias !1587
  %.sroa.42.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i83, align 8, !noalias !1587
  %.sroa.53.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i84, align 8, !noalias !1587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1587
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.bl, align 8, !noalias !1587
  %.sroa.4.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i85, align 4, !noalias !1587
  %.sroa.5.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i86, align 2, !noalias !1587
  store ptr %i.c, ptr %i.b, align 8, !noalias !1587
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @300, ptr %i.bm, align 8, !noalias !1587
  %i.bn = invoke noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB4_17CheckableExprTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ba unwind label %bb.az, !noalias !1588

bb.az:                                            ; preds = %bb.bb, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_type17CheckableExprTypeNtB5_12SpecToString14spec_to_stringBH_.exit82
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #26
          to label %.body88 unwind label %bb.bc, !noalias !1587

bb.ba:                                            ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_type17CheckableExprTypeNtB5_12SpecToString14spec_to_stringBH_.exit82
  br i1 %i.bn, label %bb.bb, label %switch.lookup163, !prof !4

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #25
          to label %.noexc.i87 unwind label %bb.az, !noalias !1587

.noexc.i87:                                       ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.az
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !1587
  unreachable

.body88:                                          ; preds = %bb.az
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #26
          to label %common.resume unwind label %bb.at

switch.lookup163:                                 ; preds = %bb.ba
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i8 0, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bs = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !range !5, !noundef !3 ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %switch.gep164 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.bu
  %switch.load165 = load i8, ptr %switch.gep164, align 1
  %switch.ext166 = zext i8 %switch.load165 to i64
  %i.bv = zext nneg i32 %i.bt to i64
  %switch.gep167 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.505, i64 %i.bv
  %switch.load168 = load i8, ptr %switch.gep167, align 1
  %switch.ext169 = zext i8 %switch.load168 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %switch.ext166
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %switch.ext169
  %.sroa.0.0.i93 = load i32, ptr %i.bw, align 4, !noundef !3
  %.sroa.34.0.i94 = load i32, ptr %i.bx, align 4, !noundef !3
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !3, !align !6, !noundef !3
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules18invalid_index_type16InvalidIndexTypeEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull align 8 %i.bz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.k, i32 noundef %.sroa.0.0.i93, i32 noundef %.sroa.34.0.i94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ag

_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB5_17CheckableExprType8try_from.exit.sink.split: ; preds = %switch.lookup, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB5_17CheckableExprType8try_from.exit

_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB5_17CheckableExprType8try_from.exit: ; preds = %bb.a, %_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18invalid_index_typeNtB5_17CheckableExprType8try_from.exit.sink.split
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules23property_without_return23property_without_return(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1138
  %i.g = load i8, ptr %i.f, align 2, !range !9, !noundef !3
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel30in_protocol_or_abstract_method(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.e)
  br i1 %i.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !align !6, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1640
  %i.q = load ptr, ptr %i.p, align 8, !noundef !3 ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1648
  %i.s = load <2 x i64>, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.t = phi <2 x i64> [ %i.s, %bb.d ], [ <i64 undef, i64 0>, %bb.c ] ; 2 uses
  store i64 %.sroa.0.sroa.0.0, ptr %i.d, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.q, ptr %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = extractelement <2 x i64> %i.t, i64 0
  store i64 %i.u, ptr %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.0.sroa.0.0, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.q, ptr %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store <2 x i64> %i.t, ptr %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.v = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
  %i.w = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.x = load i64, ptr %i.w, align 8, !noundef !3
  %i.y = call noundef zeroext i1 @_RINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_propertyNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settings17DecoratorIteratorB1d_EB1l_(ptr noundef nonnull align 8 %i.v, i64 noundef %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.e)
  br i1 %i.y, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
  %i.aa = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_overload(ptr noundef nonnull align 8 %i.z, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.e)
  br i1 %i.ac, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
