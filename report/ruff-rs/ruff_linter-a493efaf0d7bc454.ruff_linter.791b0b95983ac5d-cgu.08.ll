Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.08?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_logging_format5rules12logging_call17find_logging_call:bb.a
bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %i.bp, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.t
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit

bb.w:                                             ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_future_annotations5rules31future_required_type_annotation31future_required_type_annotation(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load i32, ptr %1, align 8, !range !359, !noundef !9 ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCsEhZmuQNqkz_11ruff_linter, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.f = zext nneg i32 %i.d to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCsEhZmuQNqkz_11ruff_linter, i64 %i.f
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext3 = zext i8 %switch.load2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext3
  %.sroa.0.0.i = load i32, ptr %i.g, align 4, !noundef !9
  %.sroa.34.0.i = load i32, ptr %i.h, align 4, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !align !473, !noundef !9
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules25flake8_future_annotations5rules31future_required_type_annotation28FutureRequiredTypeAnnotationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.j, i1 noundef zeroext %2, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.34.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560
  invoke void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer17add_future_import(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.k)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %bb.c, %bb.b, %switch.lookup
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c) #38
          to label %bb.f unwind label %bb.e

bb.b:                                             ; preds = %switch.lookup
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix11unsafe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.d unwind label %bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.f:                                             ; preds = %bb.a
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del11is_same_key(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = load i32, ptr %0, align 8, !range !359, !noundef !9
  switch i32 %i.e, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit [
    i32 19, label %bb.b
    i32 20, label %bb.c
    i32 21, label %bb.d
    i32 22, label %bb.e
    i32 23, label %bb.f
    i32 24, label %bb.g
    i32 28, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 8, !range !359, !noundef !9
  %i.g = icmp eq i32 %i.f, 19
  br i1 %i.g, label %bb.i, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %1, align 8, !range !359, !noundef !9
  %i.i = icmp eq i32 %i.h, 20
  br i1 %i.i, label %bb.l, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !range !359, !noundef !9
  %i.k = icmp eq i32 %i.j, 21
  br i1 %i.k, label %bb.o, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8, !range !359, !noundef !9
  %i.m = icmp eq i32 %i.l, 22
  br i1 %i.m, label %bb.x, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.a
  %i.n = load i32, ptr %1, align 8, !range !359, !noundef !9
  %i.o = icmp eq i32 %i.n, 23
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.a
  %i.p = load i32, ptr %1, align 8, !range !359, !noundef !9
  %i.q = icmp eq i32 %i.p, 24
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.a
  %i.r = load i32, ptr %1, align 8, !range !359, !noundef !9
  %i.s = icmp eq i32 %i.r, 28
  br i1 %i.s, label %bb.y, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4940)
  %i.u = load i64, ptr %i.t, align 8, !range !526, !noalias !4940, !noundef !9
  %.not.i = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not.i, label %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.v, align 8, !noalias !4940, !nonnull !9, !noundef !9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noalias !4940, !noundef !9
  br label %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit

_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit: ; preds = %bb.i, %bb.j
  %.sroa.6.0.i = phi i64 [ %i.y, %bb.j ], [ 1, %bb.i ]
  %.sroa.0.0.i = phi ptr [ %i.w, %bb.j ], [ %i.v, %bb.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i, i64 %.sroa.6.0.i
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !alias.scope !4940
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4940
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4940
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !4940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4943)
  %i.ab = load i64, ptr %i.aa, align 8, !range !526, !noalias !4943, !noundef !9
  %.not.i2 = icmp eq i64 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not.i2, label %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit8, label %bb.k

bb.k:                                             ; preds = %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !4943, !nonnull !9, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noalias !4943, !noundef !9
  br label %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit8

_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit8: ; preds = %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit, %bb.k
  %.sroa.6.0.i3 = phi i64 [ %i.af, %bb.k ], [ 1, %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit ]
  %.sroa.0.0.i4 = phi ptr [ %i.ad, %bb.k ], [ %i.ac, %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i4, i64 %.sroa.6.0.i3
  store ptr %.sroa.0.0.i4, ptr %i.a, align 8, !alias.scope !4943
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i5, align 8, !alias.scope !4943
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx.i6, align 8, !alias.scope !4943
  %.sroa.7.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i7, align 8, !alias.scope !4943
  %i.ah = call noundef zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBc_3str4iter5CharsNCNvMsP_B1r_NtB1r_18StringLiteralValue5chars0ENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B3s_2eqB3_E0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %3, %bb.q, %bb.o, %bb.y, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.h, %bb.z, %bb.x, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit19, %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit8, %bb.g, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.ah, %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit8 ], [ %i.ay, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit19 ], [ false, %bb.y ], [ %i.cd, %bb.x ], [ %i.o, %bb.f ], [ %i.q, %bb.g ], [ %i.db, %bb.z ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.v ], [ %i.bp, %bb.u ], [ %i.by, %bb.w ], [ false, %bb.o ], [ %i.bl, %bb.t ], [ false, %bb.q ], [ %i.bk, %bb.s ], [ false, %3 ]
  ret i1 %.sroa.0.0.shrunk

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4946)
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !4946, !noundef !9
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.m, label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !4946, !nonnull !9, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noalias !4946, !noundef !9
  br label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit

_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit: ; preds = %bb.l, %bb.m
  %.sroa.6.0.i9 = phi i64 [ %i.ao, %bb.m ], [ 1, %bb.l ]
  %.sroa.0.0.i10 = phi ptr [ %i.am, %bb.m ], [ %i.ai, %bb.l ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i10, i64 %.sroa.6.0.i9
  store ptr %.sroa.0.0.i10, ptr %i.d, align 8, !alias.scope !4946
  %.sroa.4.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i11, align 8, !alias.scope !4946
  %.sroa.5.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx.i12, align 8, !alias.scope !4946
  %.sroa.7.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i13, align 8, !alias.scope !4946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4949)
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !4949, !noundef !9
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.n, label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit19

bb.n:                                             ; preds = %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !noalias !4949, !nonnull !9, !noundef !9
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !noalias !4949, !noundef !9
  br label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit19

_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit19: ; preds = %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit, %bb.n
  %.sroa.6.0.i14 = phi i64 [ %i.aw, %bb.n ], [ 1, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit ]
  %.sroa.0.0.i15 = phi ptr [ %i.au, %bb.n ], [ %i.aq, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i15, i64 %.sroa.6.0.i14
  store ptr %.sroa.0.0.i15, ptr %i.c, align 8, !alias.scope !4949
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i16, align 8, !alias.scope !4949
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx.i17, align 8, !alias.scope !4949
  %.sroa.7.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i18, align 8, !alias.scope !4949
  %i.ay = call noundef zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB8_6copied6CopiedIB10_hEENCNvMs15_B1r_NtB1r_17BytesLiteralValue5bytes0ENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B3x_2eqB3_E0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4955)
  %i.bb = load i64, ptr %i.az, align 8, !range !701, !alias.scope !4952, !noalias !4955, !noundef !9 ; 2 uses
  %i.bc = load i64, ptr %i.ba, align 8, !range !701, !alias.scope !4955, !noalias !4952, !noundef !9
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.p, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  switch i64 %i.bb, label %default.unreachable [
    i64 0, label %bb.q
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

default.unreachable:                              ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.be, align 8, !alias.scope !4952, !noalias !4955, !noundef !9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i64, ptr %i.bg, align 8, !alias.scope !4952, !noalias !4955 ; 2 uses
  %.val3.i = load ptr, ptr %i.bf, align 8, !alias.scope !4955, !noalias !4952, !noundef !9 ; 2 uses
  %i.bh = icmp ne ptr %.val.i, null               ; 2 uses
  %i.bi = icmp eq ptr %.val3.i, null              ; 3 uses
  %not..i.i = xor i1 %i.bi, true
  %i.bj = xor i1 %i.bh, %i.bi
  br i1 %i.bj, label %bb.r, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i = load i64, ptr %2, align 8, !alias.scope !4955, !noalias !4952
  %i.bk = icmp eq i64 %.val2.i, %.val4.i          ; 2 uses
  br i1 %i.bh, label %3, label %bb.s

3:                                                ; preds = %bb.r
  tail call void @llvm.assume(i1 %not..i.i)
  br i1 %i.bk, label %bb.t, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.assume(i1 %i.bi)
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !noalias !4957
  %i.bl = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.p
  %i.bm = load double, ptr %i.be, align 8, !alias.scope !4952, !noalias !4955, !noundef !9
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !alias.scope !4955, !noalias !4952, !noundef !9
  %i.bp = fcmp oeq double %i.bm, %i.bo
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.p
  %i.bq = load double, ptr %i.be, align 8, !alias.scope !4952, !noalias !4955, !noundef !9
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load double, ptr %i.br, align 8, !alias.scope !4955, !noalias !4952, !noundef !9
  %i.bt = fcmp oeq double %i.bq, %i.bs
  br i1 %i.bt, label %bb.w, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load double, ptr %i.bu, align 8, !alias.scope !4952, !noalias !4955, !noundef !9
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !alias.scope !4955, !noalias !4952, !noundef !9
  %i.by = fcmp oeq double %i.bv, %i.bx
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load i8, ptr %i.bz, align 8, !range !527, !noundef !9
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load i8, ptr %i.cb, align 8, !range !527, !noundef !9
  %i.cd = icmp eq i8 %i.ca, %i.cc
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.cf = load i8, ptr %i.ce, align 1, !range !956, !alias.scope !4958, !noundef !9 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !4958, !noundef !9
  %i.ci = and i64 %i.ch, 72057594037927935
  %i.cj = icmp ult i8 %i.cf, -48
  %i.ck = zext i8 %i.cf to i64
  %i.cl = add nsw i64 %i.ck, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 16)
  %.sroa.0.0.i20 = select i1 %i.cj, i64 %spec.store.select.i, i64 %i.ci ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.cn = load i8, ptr %i.cm, align 1, !range !956, !alias.scope !4961, !noundef !9 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !4961, !noundef !9
  %i.cq = and i64 %i.cp, 72057594037927935
  %i.cr = icmp ult i8 %i.cn, -48
  %i.cs = zext i8 %i.cn to i64
  %i.ct = add nsw i64 %i.cs, -192
  %spec.store.select.i21 = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 16)
  %.sroa.0.0.i22 = select i1 %i.cr, i64 %spec.store.select.i21, i64 %i.cq
  %i.cu = icmp eq i64 %.sroa.0.0.i20, %.sroa.0.0.i22
  br i1 %i.cu, label %bb.z, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.y
  %i.cv = icmp ugt i8 %i.cn, -49
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !4961
  %.sroa.01.0.i23 = select i1 %i.cv, ptr %i.cx, ptr %i.cw
  %i.cy = icmp ugt i8 %i.cf, -49
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !4958
  %.sroa.01.0.i = select i1 %i.cy, ptr %i.da, ptr %i.cz
  %bcmp = tail call i32 @bcmp(ptr %.sroa.01.0.i, ptr %.sroa.01.0.i23, i64 %.sroa.0.0.i20)
  %i.db = icmp eq i32 %bcmp, 0
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del12is_same_dict(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !range !956, !alias.scope !4964, !noundef !9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4964, !noundef !9
  %i.e = and i64 %i.d, 72057594037927935
  %i.f = icmp ult i8 %i.b, -48
  %i.g = zext i8 %i.b to i64
  %i.h = add nsw i64 %i.g, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %.sroa.0.0.i = select i1 %i.f, i64 %spec.store.select.i, i64 %i.e ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.j = load i8, ptr %i.i, align 1, !range !956, !alias.scope !4967, !noundef !9 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !4967, !noundef !9
  %i.m = and i64 %i.l, 72057594037927935
  %i.n = icmp ult i8 %i.j, -48
  %i.o = zext i8 %i.j to i64
  %i.p = add nsw i64 %i.o, -192
  %spec.store.select.i2 = tail call i64 @llvm.umin.i64(i64 %i.p, i64 16)
  %.sroa.0.0.i3 = select i1 %i.n, i64 %spec.store.select.i2, i64 %i.m
  %i.q = icmp eq i64 %.sroa.0.0.i, %.sroa.0.0.i3
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ugt i8 %i.j, -49
  %i.s = load ptr, ptr %1, align 8, !alias.scope !4967
  %.sroa.01.0.i4 = select i1 %i.r, ptr %i.s, ptr %1
  %i.t = icmp ugt i8 %i.b, -49
  %i.u = load ptr, ptr %0, align 8, !alias.scope !4964
  %.sroa.01.0.i = select i1 %i.t, ptr %i.u, ptr %0
  %bcmp = tail call i32 @bcmp(ptr %.sroa.01.0.i, ptr %.sroa.01.0.i4, i64 %.sroa.0.0.i)
  %i.v = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.v, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del18if_key_in_dict_del(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !9 ; 2 uses
  %i.f = icmp ult i64 %i.e, 96076792050570582
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.b, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h) ; 5 uses
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.k = load i64, ptr %i.j, align 8, !noundef !9
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.n = load i8, ptr %i.m, align 4, !range !468, !noundef !9
  %i.o = icmp eq i8 %i.n, 4
  br i1 %i.o, label %bb.d, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.e, %bb.j, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.a, %bb.r, %bb.c, %bb.b
  ret void

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9 ; 6 uses
  %i.r = load i32, ptr %i.q, align 8, !range !359, !noundef !9
  %i.s = icmp eq i32 %i.r, 15
  br i1 %i.s, label %bb.e, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i64, ptr %i.w, align 8, !noundef !9
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.v, align 8, !range !359, !noundef !9
  %i.aa = icmp eq i32 %i.z, 28
  br i1 %i.aa, label %bb.g, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !9
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !9, !noundef !9
  %i.ah = load i8, ptr %i.ag, align 1, !range !4180, !noundef !9
  %i.ai = icmp eq i8 %i.ah, 8
  br i1 %i.ai, label %bb.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.t, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !9
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.j, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.al, align 8, !range !359, !noundef !9
  %i.aq = icmp eq i32 %i.ap, 26
  br i1 %i.aq, label %bb.k, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !range !359, !noundef !9
  %i.au = icmp eq i32 %i.at, 28
  br i1 %i.au, label %bb.l, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules18if_key_in_dict_del30extract_dict_and_key_from_test.exit.thread

end_hunk_0
begin_hunk_1_@_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter:bb.a
  %.not1.not = icmp eq i64 %i.c, 0
  br i1 %.not1.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.01.0.i2 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %.sroa.01.0.i2
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %.sroa.01.0.i2
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXsbv_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4StmtNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.h, ptr noundef nonnull align 8 %i.i), !inline_history !8541 ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i2, 1            ; 2 uses
  %exitcond.not = icmp ne i64 %i.k, %i.c
  %or.cond.not = select i1 %i.j, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph, %.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.j, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 3 uses
  %i.d = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.e = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.f = load i64, ptr %i.e, align 8, !noundef !9
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %.preheader, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

.preheader:                                       ; preds = %bb.a
  %.not1.not = icmp eq i64 %i.c, 0
  br i1 %.not1.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.01.0.i2 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.01.0.i2
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %.sroa.01.0.i2
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXsbP_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7PatternNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.h, ptr noundef nonnull align 8 %i.i), !inline_history !8542 ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i2, 1            ; 2 uses
  %exitcond.not = icmp ne i64 %i.k, %i.c
  %or.cond.not = select i1 %i.j, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph, %.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.j, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshb_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_16ExprBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !noundef !9
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4, !noundef !9
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !noundef !9
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !noundef !9
  %i.q = icmp eq ptr %i.p, null                   ; 3 uses
  %i.r = xor i1 %i.o, %i.q
  br i1 %i.r, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !9
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.m, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  %i.x = xor i1 %i.q, true
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !noundef !9
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !noundef !9
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !noundef !9
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.i, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.ai, ptr noundef nonnull align 4 %i.aj)
  br i1 %i.ak, label %bb.j, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !9 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !9
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.ar = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ar, ptr nonnull %i.aq, i64 %i.am)
  %i.as = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.as, label %bb.l, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i8, ptr %i.at, align 4, !noundef !9
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aw = load i8, ptr %i.av, align 4, !noundef !9
  %i.ax = icmp eq i8 %i.au, %i.aw
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !9, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !9, !noundef !9
  %i.bc = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.az, i64 noundef %i.t)
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bc, %bb.m ], [ false, %bb.d ], [ false, %bb.f ], [ %i.ax, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !9
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !9
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8546)
  %i.n = load i64, ptr %0, align 8, !range !701, !alias.scope !8543, !noalias !8546, !noundef !9 ; 2 uses
  %i.o = load i64, ptr %1, align 8, !range !701, !alias.scope !8546, !noalias !8543, !noundef !9
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !8543, !noalias !8546, !noundef !9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.s, align 8, !alias.scope !8543, !noalias !8546 ; 2 uses
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !8546, !noalias !8543, !noundef !9 ; 2 uses
  %i.t = icmp ne ptr %.val.i, null                ; 2 uses
  %i.u = icmp eq ptr %.val3.i, null               ; 3 uses
  %not..i.i = xor i1 %i.u, true
  %i.v = xor i1 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %2, align 8, !alias.scope !8546, !noalias !8543
  %i.w = icmp eq i64 %.val2.i, %.val4.i           ; 2 uses
  br i1 %i.t, label %3, label %bb.h

3:                                                ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i)
  br i1 %i.w, label %bb.i, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.u)
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !noalias !8548
  %i.x = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.e
  %i.y = load double, ptr %i.q, align 8, !alias.scope !8543, !noalias !8546, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !8546, !noalias !8543, !noundef !9
  %i.ab = fcmp oeq double %i.y, %i.aa
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.e
  %i.ac = load double, ptr %i.q, align 8, !alias.scope !8543, !noalias !8546, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !alias.scope !8546, !noalias !8543, !noundef !9
  %i.af = fcmp oeq double %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !alias.scope !8543, !noalias !8546, !noundef !9
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !alias.scope !8546, !noalias !8543, !noundef !9
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %3, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.k ], [ %i.ab, %bb.j ], [ %i.ak, %bb.l ], [ false, %bb.d ], [ %i.x, %bb.i ], [ false, %bb.f ], [ %i.w, %bb.h ], [ false, %3 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !527, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !527, !noundef !9
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !9
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.p, %bb.e ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noundef !9
  %i.p = icmp eq i32 %i.m, %i.o
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi2_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprTupleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !range !527, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !range !527, !noundef !9
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.f, ptr noundef nonnull align 4 %i.g)
  br i1 %i.h, label %bb.c, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !noundef !9
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i32, ptr %i.p, align 4, !noundef !9
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !9 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !9
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !9, !noundef !9
  %.not2.not = icmp eq i64 %i.t, 0
  br i1 %.not2.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i3, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.01.0.i3 = phi i64 [ %i.ab, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.aa, i64 %.sroa.01.0.i3
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %.sroa.01.0.i3
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ac, ptr noundef nonnull align 8 %i.ad), !inline_history !8512
  br i1 %i.ae, label %bb.g, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.val = load i8, ptr %i.af, align 1, !range !4678, !noundef !9
  %.val1 = load i8, ptr %i.ag, align 1, !range !4678, !noundef !9
  %i.ah = icmp eq i8 %.val, %.val1
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph, %bb.d, %bb.a, %bb.b, %bb.c, %bb.e, %._crit_edge
  %.sroa.0.0 = phi i1 [ %i.ah, %._crit_edge ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi7_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !noundef !9
  %i.e = load i32, ptr %1, align 8, !noundef !9
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !9
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !align !473, !noundef !9 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !align !473, !noundef !9 ; 2 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.k, label %.split

bb.f:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.g, label %bb.k

.split:                                           ; preds = %bb.e
  %i.q = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull align 8 %i.o)
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.split, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !align !473, !noundef !9 ; 2 uses
  %.not4 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !align !473, !noundef !9 ; 2 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.k, label %.split8

bb.i:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %bb.k

.split8:                                          ; preds = %bb.h
  %i.w = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.s, ptr noundef nonnull align 8 %i.u)
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split8, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !align !473, !noundef !9 ; 2 uses
  %.not6 = icmp eq ptr %i.y, null                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !align !473, !noundef !9 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  %brmerge = or i1 %.not6, %i.ab
  %.mux = and i1 %.not6, %i.ab
  br i1 %brmerge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.split8, %.split, %bb.c, %bb.f, %bb.i, %bb.a, %bb.b, %bb.e, %bb.h, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ %i.ac, %bb.l ], [ false, %bb.c ], [ false, %.split8 ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.f ], [ %.mux, %bb.j ], [ false, %.split ]
  ret i1 %.sroa.0.0.shrunk

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.aa)
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
end_hunk_1
