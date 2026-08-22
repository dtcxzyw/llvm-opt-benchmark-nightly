Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.03?download=true
inline.NumInlined: 7161
inline.NumDeleted: 2417
begin_hunk_0_@_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor18try_visit_variadicNCNvB2_14visit_functionso_0EB8_:bb.a

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.y, !dbg !15346

bb.f:                                             ; preds = %.lr.ph, %bb.v
  %i.t = phi ptr [ %.sroa.7.sroa.7.0.copyload48, %.lr.ph ], [ %i.aw, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15348), !dbg !15351
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !15352
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15354, !alias.scope !15348
  %i.v = load ptr, ptr %i.t, align 8, !dbg !15355, !noalias !15348, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !15358, !range !65, !noundef !13
  %i.x = icmp eq i64 %i.w, 3, !dbg !15361
  br i1 %i.x, label %bb.o, label %bb.p, !dbg !15361

._crit_edge:                                      ; preds = %bb.v, %bb.e
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.g unwind label %bb.d, !dbg !15362

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15364
  %.val10 = load ptr, ptr %i.n, align 8, !dbg !15365, !nonnull !13, !noundef !13 ; 5 uses
  %.val11 = load i64, ptr %i.o, align 8, !dbg !15365, !noundef !13 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15366), !dbg !15369
  %.not.i13 = icmp eq i64 %.val11, 0, !dbg !15370
  br i1 %.not.i13, label %bb.i, label %bb.h, !dbg !15370

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.val10, i64 112, !dbg !15373
  %i.z = load i64, ptr %i.y, align 16, !dbg !15373, !range !15374, !noalias !15366, !noundef !13 ; 2 uses
  %i.aa = icmp ne i64 %i.z, -9223372036854775795, !dbg !15373
  call void @llvm.assume(i1 %i.aa), !dbg !15373
  %i.ab = icmp eq i64 %i.z, -9223372036854775804, !dbg !15375
  br i1 %i.ab, label %bb.j, label %bb.k, !dbg !15375, !prof !15376

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #30
          to label %.noexc unwind label %bb.d, !dbg !15370

.noexc:                                           ; preds = %bb.i
  unreachable, !dbg !15370

bb.j:                                             ; preds = %bb.h
  %i.ac = invoke { ptr, i64 } @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue11extract_str(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %.val10)
          to label %.noexc15 unwind label %bb.d, !dbg !15377

.noexc15:                                         ; preds = %bb.j
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0, !dbg !15377
  %.not8.i = icmp eq ptr %i.ad, null, !dbg !15378
  br i1 %.not8.i, label %bb.k, label %bb.l, !dbg !15387, !prof !12857

bb.k:                                             ; preds = %.noexc15, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15388, !noalias !15366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15389, !noalias !15366
  store ptr %.val10, ptr %i.a, align 8, !dbg !15389, !noalias !15366
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15389
  store ptr @_RNvXs0_NtNtCsfcROwRM8ZtH_11polars_plan3dsl6formatNtNtB7_4expr4ExprNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !15389, !noalias !15366
  invoke fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull @63, ptr noundef nonnull %i.a) #29
          to label %.noexc16 unwind label %bb.d, !dbg !15388

.noexc16:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15388, !noalias !15366
  %.sroa.44.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15388
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.44.0..sroa_idx.i14, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @64)
          to label %.noexc17 unwind label %bb.d, !dbg !15393

.noexc17:                                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15388, !noalias !15366
  store i64 12, ptr %0, align 16, !dbg !15388, !alias.scope !15366
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15388
  store i64 -9223372036854775780, ptr %i.ae, align 16, !dbg !15388, !alias.scope !15366
  br label %_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor14visit_functionso_0B9_.exit, !dbg !15399

bb.l:                                             ; preds = %.noexc15
  %i.af = invoke { ptr, i64 } @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue11extract_str(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %.val10)
          to label %.noexc18 unwind label %bb.d, !dbg !15400 ; 2 uses

.noexc18:                                         ; preds = %bb.l
  %i.ag = extractvalue { ptr, i64 } %i.af, 0, !dbg !15400 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null, !dbg !15402
  br i1 %.not.i.i, label %bb.m, label %_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionReE6unwrapCshquuC4dCYVj_10polars_sql.exit.i, !dbg !15405, !prof !12857

bb.m:                                             ; preds = %.noexc18
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #30
          to label %.noexc19 unwind label %bb.d, !dbg !15406

.noexc19:                                         ; preds = %bb.m
  unreachable, !dbg !15406

_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionReE6unwrapCshquuC4dCYVj_10polars_sql.exit.i: ; preds = %.noexc18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val10, i64 144, !dbg !15407
  %i.ai = add nsw i64 %.val11, -1, !dbg !15421
  %i.aj = extractvalue { ptr, i64 } %i.af, 1, !dbg !15422
  invoke void @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions6concat10concat_strRSNtNtB6_4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noundef nonnull align 16 %i.ah, i64 noundef %i.ai, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.aj, i1 noundef zeroext true)
          to label %_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor14visit_functionso_0B9_.exit unwind label %bb.d, !dbg !15423

_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor14visit_functionso_0B9_.exit: ; preds = %.noexc17, %_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionReE6unwrapCshquuC4dCYVj_10polars_sql.exit.i
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.f), !dbg !15325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15325
  br label %bb.n, !dbg !15424

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql.exit22, %bb.c, %_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor14visit_functionso_0B9_.exit
  ret void, !dbg !15425

bb.o:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !15426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15427
  invoke void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor13parse_sql_arg(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 dereferenceable(176) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak)
          to label %bb.q unwind label %.loopexit, !dbg !15428

bb.p:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.h, align 16, !dbg !15429, !nonnull !13, !align !25, !noundef !13
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19not_supported_error(ptr noalias noundef align 16 captures(none) dereferenceable(144) %0, ptr %.val)
          to label %bb.x unwind label %.loopexit.split-lp, !dbg !15429

bb.q:                                             ; preds = %bb.o
  %i.al = load i64, ptr %i.s, align 16, !dbg !15430, !range !82, !alias.scope !15432, !noalias !15435, !noundef !13 ; 2 uses
  %i.am = icmp eq i64 %i.al, -9223372036854775780, !dbg !15430
  br i1 %i.am, label %bb.w, label %bb.r, !dbg !15437

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.031, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !15438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.935.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.935.0..sroa_idx36, i64 24, i1 false), !dbg !15438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.031, i64 112, i1 false), !dbg !15427
  store i64 %i.al, ptr %.sroa.732.0..sroa_idx, align 16, !dbg !15427
  %i.an = load i64, ptr %i.o, align 8, !dbg !15440, !alias.scope !15443, !noalias !15448, !noundef !13 ; 3 uses
  %i.ao = load i64, ptr %i.f, align 8, !dbg !15451, !range !12907, !alias.scope !15443, !noalias !15448, !noundef !13
  %i.ap = icmp eq i64 %i.an, %i.ao, !dbg !15454
  br i1 %i.ap, label %bb.s, label %bb.v, !dbg !15454

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.v unwind label %bb.t, !dbg !15455, !noalias !15448

bb.t:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.c) #26
          to label %.body unwind label %bb.u, !dbg !15456

bb.u:                                             ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !15457
  unreachable, !dbg !15457

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.as = load ptr, ptr %i.n, align 8, !dbg !15458, !alias.scope !15443, !noalias !15448, !nonnull !13, !noundef !13
  %i.at = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %i.an, !dbg !15463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.at, ptr noundef nonnull align 16 dereferenceable(144) %i.c, i64 144, i1 false), !dbg !15465
  %i.au = add i64 %i.an, 1, !dbg !15467
  store i64 %i.au, ptr %i.o, align 8, !dbg !15467, !alias.scope !15443, !noalias !15448
  %i.av = load ptr, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !15468, !alias.scope !15469, !nonnull !13, !noundef !13
  %i.aw = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15341, !alias.scope !15469, !nonnull !13, !noundef !13 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.av, !dbg !15341
  br i1 %i.ax, label %._crit_edge, label %bb.f, !dbg !15345

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.031, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !15471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.031, i64 72, i1 false), !dbg !15472
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15472
  store i64 -9223372036854775780, ptr %i.ay, align 16, !dbg !15472, !alias.scope !15476, !noalias !15479
  br label %bb.x, !dbg !15481

bb.x:                                             ; preds = %bb.p, %bb.w
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql.exit22 unwind label %bb.d, !dbg !15483

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql.exit22: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15364
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.f), !dbg !15325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15325
  br label %bb.n, !dbg !15424

bb.y:                                             ; preds = %.body, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql.exit
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !15309
  unreachable, !dbg !15309
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor31visit_unary_with_opt_cumulativeNCNvB2_11visit_counts_0NCB1G_s0_0EB8_(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15485 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [144 x i8], align 16              ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [160 x i8], align 16              ; 5 uses
  %i.f = alloca [144 x i8], align 16              ; 4 uses
  %i.g = alloca [144 x i8], align 16              ; 4 uses
  %.sroa.769.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.375.i = alloca [40 x i8], align 8        ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.059.i = alloca [112 x i8], align 16      ; 6 uses
  %i.k = alloca [144 x i8], align 16              ; 8 uses
  %i.l = alloca [144 x i8], align 16              ; 9 uses
  %.sroa.752.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.358.i = alloca [40 x i8], align 8        ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.743.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.10.i = alloca [39 x i8], align 1         ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.2.i = alloca [64 x i8], align 8          ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 3 uses
  %i.r = alloca [152 x i8], align 8               ; 7 uses
  %i.s = alloca [152 x i8], align 8               ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !15486 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 16, !dbg !15486, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !15487, !range !65, !alias.scope !15490, !noundef !13
  %.not.i = icmp eq i64 %i.v, 5, !dbg !15487
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !15493

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !15494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !15496
  call fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19resolve_window_spec(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.r, ptr noundef nonnull align 16 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.u), !dbg !15497
  %i.w = load i64, ptr %i.r, align 8, !dbg !15498, !range !15501, !alias.scope !15502, !noalias !15505, !noundef !13 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4, !dbg !15498
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !15507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false), !dbg !15507
  br i1 %i.x, label %bb.e, label %bb.f, !dbg !15508

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor11visit_unaryNCNvB2_11visit_counts_0EB8_(ptr noalias noundef align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef align 16 dereferenceable(176) %1), !dbg !15509
  br label %bb.d, !dbg !15509

bb.d:                                             ; preds = %bb.c, %bb.e, %bb.am
  ret void, !dbg !15510

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !15511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !15512
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15512
  store i64 -9223372036854775780, ptr %i.z, align 16, !dbg !15512, !alias.scope !15516, !noalias !15519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !15521
  br label %bb.d, !dbg !15522

bb.f:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.r, i64 80, !dbg !15523
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 80, !dbg !15525 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx12, i64 72, i1 false), !dbg !15523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !15511
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !15525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !15496
  store i64 %i.w, ptr %i.s, align 8, !dbg !15525
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15528), !dbg !15531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15533), !dbg !15531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15535), !dbg !15531
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769.i), !dbg !15537
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.375.i), !dbg !15537
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059.i), !dbg !15537
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.752.i), !dbg !15537
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.358.i), !dbg !15537
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.743.i), !dbg !15537
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i), !dbg !15537
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i), !dbg !15537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !15537, !noalias !15541
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor21validate_window_frame(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.s)
          to label %.noexc unwind label %bb.al, !dbg !15542

.noexc:                                           ; preds = %bb.f
  %i.aa = load i64, ptr %i.q, align 8, !dbg !15543, !range !34, !alias.scope !15546, !noalias !15549, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 18, !dbg !15543
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !15551

bb.g:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !15552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx39.i, i64 64, i1 false), !dbg !15552, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !15554, !noalias !15541
  call void @llvm.experimental.noalias.scope.decl(metadata !15555), !dbg !15558
  store i64 %i.aa, ptr %0, align 16, !dbg !15561, !alias.scope !15563, !noalias !15565
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.i, i64 64, i1 false), !dbg !15561, !alias.scope !15566, !noalias !15565
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15561
  store i64 -9223372036854775780, ptr %i.ab, align 16, !dbg !15561, !alias.scope !15567, !noalias !15568
  br label %bb.am, !dbg !15569

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !15554, !noalias !15541
  %.val.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15571, !alias.scope !15535, !noalias !15572, !noundef !13 ; 3 uses
  %i.ac = icmp ult i64 %.val.i, 6987403058223316, !dbg !15573
  call void @llvm.assume(i1 %i.ac), !dbg !15579
  %i.ad = icmp eq i64 %.val.i, 0, !dbg !15580
  br i1 %i.ad, label %bb.j, label %bb.i, !dbg !15581

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !15582, !noalias !15541
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 72, !dbg !15583
  %.val28.i = load ptr, ptr %i.ae, align 8, !dbg !15583, !alias.scope !15535, !noalias !15572, !nonnull !13, !noundef !13
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !15584 ; 2 uses
  %.val30.i = load ptr, ptr %i.af, align 8, !dbg !15584, !alias.scope !15533, !noalias !15585
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !15584 ; 3 uses
  %.val31.i = load ptr, ptr %i.ag, align 16, !dbg !15584, !alias.scope !15533, !noalias !15585
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor24parse_order_by_in_window(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.o, ptr %.val30.i, ptr %.val31.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val28.i, i64 noundef %.val.i)
          to label %.noexc6 unwind label %bb.al, !dbg !15584

.noexc6:                                          ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15586), !dbg !15582
  %i.ah = load i64, ptr %i.o, align 8, !dbg !15589, !range !34, !alias.scope !15592, !noalias !15594, !noundef !13 ; 2 uses
  %.not.i32.i = icmp eq i64 %i.ah, 18, !dbg !15589
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !15595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !15595, !noalias !15541
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !15595
  %.sroa.9.8.copyload.i = load i8, ptr %.sroa.9.8..sroa_idx.i, align 8, !dbg !15595, !alias.scope !15596, !noalias !15541 ; 2 uses
  br i1 %.not.i32.i, label %bb.l, label %bb.k, !dbg !15597

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor11visit_unaryNCNvB2_11visit_counts_0EB8_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1)
          to label %bb.am unwind label %bb.al, !dbg !15598

bb.k:                                             ; preds = %.noexc6
  %.sroa.10.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.o, i64 33, !dbg !15599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.0..sroa_idx47.i, i64 39, i1 false), !dbg !15599, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15601, !noalias !15541
  call void @llvm.experimental.noalias.scope.decl(metadata !15602), !dbg !15605
  store i64 %i.ah, ptr %0, align 16, !dbg !15608, !alias.scope !15610, !noalias !15565
  %.sroa.249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.249.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, i64 24, i1 false), !dbg !15608, !noalias !15565
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15608
  store i8 %.sroa.9.8.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 16, !dbg !15608, !alias.scope !15610, !noalias !15565
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !15608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.i, i64 39, i1 false), !dbg !15608, !noalias !15565
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15608
  store i64 -9223372036854775780, ptr %i.aj, align 16, !dbg !15608, !alias.scope !15612, !noalias !15613
  br label %bb.am, !dbg !15569

bb.l:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15601, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !15614, !noalias !15541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, i64 24, i1 false), !dbg !15582, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !15615, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !15617, !noalias !15541
  %i.ak = load ptr, ptr %i.t, align 16, !dbg !15618, !alias.scope !15533, !noalias !15585, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  invoke fastcc void @_RNvNtCshquuC4dCYVj_10polars_sql9functions12extract_args(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak)
          to label %bb.n unwind label %.split.thread.i, !dbg !15617, !noalias !15572

bb.m:                                             ; preds = %.thread.i
  br i1 %.sroa.07.2.i, label %bb.ak, label %.body, !dbg !15619

.split.thread.i:                                  ; preds = %bb.aa, %bb.l
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak, !dbg !15619

bb.n:                                             ; preds = %bb.l
  %i.al = load i64, ptr %i.m, align 8, !dbg !15620, !range !34, !alias.scope !15622, !noalias !15625, !noundef !13 ; 2 uses
  %.not.i33.i = icmp eq i64 %i.al, 18, !dbg !15620
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !15627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !15627, !noalias !15541
  br i1 %.not.i33.i, label %bb.p, label %bb.aj, !dbg !15628

.thread.i:                                        ; preds = %bb.ag, %bb.af, %.critedge21.thread.i, %bb.ab, %bb.o
  %.pn15.i = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.br, %bb.ag ], [ %i.bp, %.critedge21.thread.i ], [ %i.bm, %bb.af ], [ %i.bm, %bb.ab ] ; 2 uses
  %.sroa.07.2.i = phi i1 [ true, %bb.o ], [ true, %bb.ag ], [ false, %.critedge21.thread.i ], [ true, %bb.af ], [ true, %bb.ab ], !dbg !15629
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n) #26
          to label %bb.m unwind label %bb.ae, !dbg !15630, !noalias !15528

bb.o:                                             ; preds = %bb.z, %bb.s, %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !15631, !noalias !15541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !dbg !15617, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !15632, !noalias !15541
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !15634
  %.val23.i = load i64, ptr %i.ao, align 8, !dbg !15634, !noalias !15541, !noundef !13
  %i.ap = icmp eq i64 %.val23.i, 1, !dbg !15635
  br i1 %i.ap, label %bb.q, label %bb.r, !dbg !15635

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !15634
  %.val22.i = load ptr, ptr %i.aq, align 8, !dbg !15634, !noalias !15541, !nonnull !13, !noundef !13
  %i.ar = load ptr, ptr %.val22.i, align 8, !dbg !15636, !noalias !15572, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !dbg !15636, !range !65, !noalias !15572, !noundef !13
  %i.at = icmp eq i64 %i.as, 3, !dbg !15637
  br i1 %i.at, label %bb.s, label %bb.r, !dbg !15637

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19not_supported_error(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %0, ptr %i.ak)
          to label %bb.aa unwind label %bb.o, !dbg !15638, !noalias !15533

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !15639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !15640, !noalias !15541
  %i.av = load ptr, ptr %i.af, align 8, !dbg !15642, !alias.scope !15533, !noalias !15585, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.aw = load ptr, ptr %i.ag, align 16, !dbg !15643, !alias.scope !15533, !noalias !15585, !align !25, !noundef !13
  invoke void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.aw)
          to label %bb.t unwind label %bb.o, !dbg !15640, !noalias !15572

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 112, !dbg !15644
  %i.ay = load i64, ptr %i.ax, align 16, !dbg !15644, !range !82, !alias.scope !15646, !noalias !15649, !noundef !13 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -9223372036854775780, !dbg !15644
  br i1 %i.az, label %bb.ah, label %bb.u, !dbg !15651

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.059.i, ptr noundef nonnull align 16 dereferenceable(112) %i.k, i64 112, i1 false), !dbg !15652, !noalias !15541
  %.sroa.963.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120, !dbg !15652
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120, !dbg !15653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.963.0..sroa_idx64.i, i64 24, i1 false), !dbg !15652, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15656, !noalias !15541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.l, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.059.i, i64 112, i1 false), !dbg !15640, !noalias !15541
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112, !dbg !15653
  store i64 %i.ay, ptr %.sroa.466.0..sroa_idx.i, align 16, !dbg !15653, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !15657, !noalias !15541
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !15659
  %.val25.i = load i64, ptr %i.ba, align 8, !dbg !15659, !alias.scope !15535, !noalias !15572, !noundef !13 ; 3 uses
  %i.bb = icmp ult i64 %.val25.i, 28120036697727976, !dbg !15660
  call void @llvm.assume(i1 %i.bb), !dbg !15666
  %i.bc = icmp eq i64 %.val25.i, 0, !dbg !15667
  br i1 %i.bc, label %bb.v, label %bb.w, !dbg !15668

bb.v:                                             ; preds = %bb.u
  store i64 -9223372036854775808, ptr %i.j, align 8, !dbg !15669, !noalias !15541
  br label %bb.y, !dbg !15670

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15671, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15671, !noalias !15541
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !15671
  %.val26.i = load ptr, ptr %i.bd, align 8, !dbg !15671, !alias.scope !15535, !noalias !15572, !nonnull !13, !noundef !13 ; 2 uses
  %i.be = getelementptr inbounds nuw [328 x i8], ptr %.val26.i, i64 %.val25.i, !dbg !15672
  store ptr %.val26.i, ptr %i.h, align 8, !dbg !15686, !alias.scope !15700, !noalias !15703
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !15686
  store ptr %i.be, ptr %i.bf, align 8, !dbg !15686, !alias.scope !15700, !noalias !15703
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !15686
  store ptr %i.av, ptr %i.bg, align 8, !dbg !15686, !alias.scope !15700, !noalias !15703
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !15686
  store ptr %i.ag, ptr %i.bh, align 8, !dbg !15686, !alias.scope !15700, !noalias !15703
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2h_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2d_11visit_counts_0NCB3K_s0_0E0ENtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B57_IB55_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB4j_EB5R_EINtNtNtB4_6traits7collect12FromIteratorIB55_B4j_B5R_EE9from_iterBQ_E0B6R_EB2j_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNCNvB1Y_11visit_counts_0NCB3v_s0_0E0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i unwind label %bb.ag, !dbg !15706, !noalias !15528

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNCNvB1Y_11visit_counts_0NCB3v_s0_0E0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15712, !noalias !15541
  %i.bi = load i64, ptr %i.i, align 8, !dbg !15713, !range !34, !alias.scope !15716, !noalias !15719, !noundef !13 ; 2 uses
  %.not.i34.i = icmp eq i64 %i.bi, 18, !dbg !15713
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !15721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !dbg !15721, !noalias !15541
  br i1 %.not.i34.i, label %bb.x, label %bb.z, !dbg !15722

bb.x:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNCNvB1Y_11visit_counts_0NCB3v_s0_0E0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15723, !noalias !15541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, i64 24, i1 false), !dbg !15671, !noalias !15541
  br label %bb.y, !dbg !15670

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15724, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15726, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15726, !noalias !15541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false), !dbg !15727, !noalias !15541
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 144, !dbg !15726
  store i8 0, ptr %i.bk, align 16, !dbg !15726, !noalias !15541
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr9cum_count(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.e, i1 noundef zeroext false)
          to label %_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor11visit_counts0_0B9_.exit.i unwind label %bb.ab, !dbg !15728, !noalias !15528

bb.z:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNCNvB1Y_11visit_counts_0NCB3v_s0_0E0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i
  %.sroa.971.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !15731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.971.0..sroa_idx72.i, i64 40, i1 false), !dbg !15731, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15723, !noalias !15541
  call void @llvm.experimental.noalias.scope.decl(metadata !15733), !dbg !15736
  store i64 %i.bi, ptr %0, align 16, !dbg !15739, !alias.scope !15741, !noalias !15565
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.274.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, i64 24, i1 false), !dbg !15739, !noalias !15565
  %.sroa.375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.i, i64 40, i1 false), !dbg !15739, !alias.scope !15743, !noalias !15565
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15739
  store i64 -9223372036854775780, ptr %i.bl, align 16, !dbg !15739, !alias.scope !15744, !noalias !15745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15746, !noalias !15541
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l)
          to label %bb.aa unwind label %bb.o, !dbg !15747, !noalias !15528

bb.aa:                                            ; preds = %bb.ah, %bb.z, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !15747, !noalias !15541
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %bb.ai unwind label %.split.thread.i, !dbg !15630, !noalias !15528

bb.ab:                                            ; preds = %_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor11visit_counts0_0B9_.exit.i, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load i64, ptr %i.j, align 8, !dbg !15748, !range !15751, !alias.scope !15752, !noalias !15541, !noundef !13
  %i.bo = icmp eq i64 %i.bn, -9223372036854775808, !dbg !15748
  br i1 %i.bo, label %.thread.i, label %bb.af, !dbg !15748

_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor11visit_counts0_0B9_.exit.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15755, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15756, !noalias !15541
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !15756
  store i32 0, ptr %2, align 4, !dbg !15756, !noalias !15541
  store i32 1, ptr %i.d, align 4, !dbg !15756, !noalias !15541
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr23fill_null_with_strategy(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %bb.ac unwind label %bb.ab, !dbg !15757, !noalias !15528

.critedge21.thread.i:                             ; preds = %bb.ac
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i, !dbg !15758

bb.ac:                                            ; preds = %_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor11visit_counts0_0B9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15759, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15759, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15760, !noalias !15541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.g, i64 144, i1 false), !dbg !15760, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15763, !noalias !15541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !15763, !noalias !15541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15764, !noalias !15541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !15765, !noalias !15541
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !15764
  store i32 0, ptr %.sroa.487.0..sroa_idx.i, align 8, !dbg !15764, !noalias !15541
  %.sroa.689.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !15764
  store i8 %.sroa.9.8.copyload.i, ptr %.sroa.689.0..sroa_idx.i, align 8, !dbg !15764, !noalias !15541
  %.sroa.790.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33, !dbg !15764
  store i8 0, ptr %.sroa.790.0..sroa_idx.i, align 1, !dbg !15764, !noalias !15541
  %.sroa.891.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 34, !dbg !15764
  store i8 1, ptr %.sroa.891.0..sroa_idx.i, align 2, !dbg !15764, !noalias !15541
  %.sroa.992.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 35, !dbg !15764
  store i8 0, ptr %.sroa.992.0..sroa_idx.i, align 1, !dbg !15764, !noalias !15541
  invoke void @_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr17over_with_optionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecBA_EBA_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i8 noundef 0)
          to label %bb.ad unwind label %.critedge21.thread.i, !dbg !15766

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15767, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15767, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15767, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15758, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15746, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !15747, !noalias !15541
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %.noexc8 unwind label %bb.al, !dbg !15630

.noexc8:                                          ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !15630, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !15619, !noalias !15541
  br label %bb.am, !dbg !15768

bb.ae:                                            ; preds = %bb.ak, %bb.ag, %bb.af, %.thread.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !15769, !noalias !15528
  unreachable, !dbg !15769

bb.af:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread.i unwind label %bb.ae, !dbg !15748, !noalias !15528

bb.ag:                                            ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l) #26
          to label %.thread.i unwind label %bb.ae, !dbg !15747, !noalias !15528

bb.ah:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.059.i, ptr noundef nonnull align 16 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !15770, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15656, !noalias !15541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.059.i, i64 72, i1 false), !dbg !15771, !noalias !15565
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15771
  store i64 -9223372036854775780, ptr %i.bs, align 16, !dbg !15771, !alias.scope !15775, !noalias !15778
  br label %bb.aa, !dbg !15780

bb.ai:                                            ; preds = %bb.aj, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !15630, !noalias !15541
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p)
          to label %.noexc9 unwind label %bb.al, !dbg !15619

.noexc9:                                          ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !15619, !noalias !15541
  br label %bb.am, !dbg !15569

bb.aj:                                            ; preds = %bb.n
  %.sroa.954.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !15782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.358.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.954.0..sroa_idx55.i, i64 40, i1 false), !dbg !15782, !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !15631, !noalias !15541
  call void @llvm.experimental.noalias.scope.decl(metadata !15783), !dbg !15786
  store i64 %i.al, ptr %0, align 16, !dbg !15789, !alias.scope !15791, !noalias !15565
  %.sroa.257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.257.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !dbg !15789, !noalias !15565
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.358.i, i64 40, i1 false), !dbg !15789, !alias.scope !15793, !noalias !15565
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15789
  store i64 -9223372036854775780, ptr %i.bt, align 16, !dbg !15789, !alias.scope !15794, !noalias !15795
  br label %bb.ai, !dbg !15796

bb.ak:                                            ; preds = %.split.thread.i, %bb.m
  %.pn17125.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.split.thread.i ], [ %.pn15.i, %bb.m ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p) #26
          to label %.body unwind label %bb.ae, !dbg !15619, !noalias !15528

bb.al:                                            ; preds = %bb.ai, %bb.ad, %bb.j, %bb.i, %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !15521

.body:                                            ; preds = %bb.m, %bb.ak, %bb.al
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.al ], [ %.pn15.i, %bb.m ], [ %.pn17125.i, %bb.ak ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.s) #26
          to label %bb.ao unwind label %bb.an, !dbg !15521

bb.am:                                            ; preds = %.noexc9, %.noexc8, %bb.k, %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.i), !dbg !15798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.375.i), !dbg !15798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.059.i), !dbg !15798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.752.i), !dbg !15798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.358.i), !dbg !15798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743.i), !dbg !15798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i), !dbg !15798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i), !dbg !15798
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.s), !dbg !15521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !15521
  br label %bb.d, !dbg !15522

bb.an:                                            ; preds = %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !15799
  unreachable, !dbg !15799

bb.ao:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !15799
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor31visit_unary_with_opt_cumulativeNvB6_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB1U_4expr4Expr7cum_sumEB8_(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15800 {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [144 x i8], align 16              ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [144 x i8], align 16              ; 4 uses
  %i.g = alloca [144 x i8], align 16              ; 4 uses
  %.sroa.769.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.375.i = alloca [40 x i8], align 8        ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.059.i = alloca [112 x i8], align 16      ; 6 uses
  %i.k = alloca [144 x i8], align 16              ; 8 uses
  %i.l = alloca [144 x i8], align 16              ; 9 uses
  %.sroa.752.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.358.i = alloca [40 x i8], align 8        ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.743.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.10.i = alloca [39 x i8], align 1         ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.2.i = alloca [64 x i8], align 8          ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 3 uses
  %i.r = alloca [152 x i8], align 8               ; 7 uses
  %i.s = alloca [152 x i8], align 8               ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !15801 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 16, !dbg !15801, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !15802, !range !65, !alias.scope !15804, !noundef !13
  %.not.i = icmp eq i64 %i.v, 5, !dbg !15802
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !15807

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !15808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !15810
  call fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19resolve_window_spec(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.r, ptr noundef nonnull align 16 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.u), !dbg !15811
  %i.w = load i64, ptr %i.r, align 8, !dbg !15812, !range !15501, !alias.scope !15814, !noalias !15817, !noundef !13 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4, !dbg !15812
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !15819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false), !dbg !15819
  br i1 %i.x, label %bb.e, label %bb.f, !dbg !15820

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor11visit_unaryNvB6_7sql_sumEB8_(ptr noalias noundef align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef align 16 dereferenceable(176) %1), !dbg !15821
  br label %bb.d, !dbg !15821

bb.d:                                             ; preds = %bb.c, %bb.e, %bb.an
  ret void, !dbg !15822

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !15823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !15824
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15824
  store i64 -9223372036854775780, ptr %i.z, align 16, !dbg !15824, !alias.scope !15828, !noalias !15831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !15833
  br label %bb.d, !dbg !15834

bb.f:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.r, i64 80, !dbg !15835
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 80, !dbg !15836 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx12, i64 72, i1 false), !dbg !15835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !15823
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !15836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !15810
  store i64 %i.w, ptr %i.s, align 8, !dbg !15836
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15839), !dbg !15842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15844), !dbg !15842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15846), !dbg !15842
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769.i), !dbg !15848
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.375.i), !dbg !15848
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059.i), !dbg !15848
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.752.i), !dbg !15848
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.358.i), !dbg !15848
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.743.i), !dbg !15848
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i), !dbg !15848
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i), !dbg !15848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !15848, !noalias !15852
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor21validate_window_frame(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.s)
          to label %.noexc unwind label %bb.am, !dbg !15853

.noexc:                                           ; preds = %bb.f
  %i.aa = load i64, ptr %i.q, align 8, !dbg !15854, !range !34, !alias.scope !15856, !noalias !15859, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 18, !dbg !15854
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !15861

bb.g:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !15862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx39.i, i64 64, i1 false), !dbg !15862, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !15863, !noalias !15852
  call void @llvm.experimental.noalias.scope.decl(metadata !15864), !dbg !15867
  store i64 %i.aa, ptr %0, align 16, !dbg !15870, !alias.scope !15872, !noalias !15874
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.i, i64 64, i1 false), !dbg !15870, !alias.scope !15875, !noalias !15874
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15870
  store i64 -9223372036854775780, ptr %i.ab, align 16, !dbg !15870, !alias.scope !15876, !noalias !15877
  br label %bb.an, !dbg !15878

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !15863, !noalias !15852
  %.val.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15880, !alias.scope !15846, !noalias !15881, !noundef !13 ; 3 uses
  %i.ac = icmp ult i64 %.val.i, 6987403058223316, !dbg !15882
  call void @llvm.assume(i1 %i.ac), !dbg !15885
  %i.ad = icmp eq i64 %.val.i, 0, !dbg !15886
  br i1 %i.ad, label %bb.j, label %bb.i, !dbg !15887

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !15888, !noalias !15852
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 72, !dbg !15889
  %.val28.i = load ptr, ptr %i.ae, align 8, !dbg !15889, !alias.scope !15846, !noalias !15881, !nonnull !13, !noundef !13
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !15890 ; 2 uses
  %.val30.i = load ptr, ptr %i.af, align 8, !dbg !15890, !alias.scope !15844, !noalias !15891
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !15890 ; 3 uses
  %.val31.i = load ptr, ptr %i.ag, align 16, !dbg !15890, !alias.scope !15844, !noalias !15891
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor24parse_order_by_in_window(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.o, ptr %.val30.i, ptr %.val31.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val28.i, i64 noundef %.val.i)
          to label %.noexc6 unwind label %bb.am, !dbg !15890

.noexc6:                                          ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15892), !dbg !15888
  %i.ah = load i64, ptr %i.o, align 8, !dbg !15895, !range !34, !alias.scope !15897, !noalias !15899, !noundef !13 ; 2 uses
  %.not.i32.i = icmp eq i64 %i.ah, 18, !dbg !15895
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !15900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !15900, !noalias !15852
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !15900
  %.sroa.9.8.copyload.i = load i8, ptr %.sroa.9.8..sroa_idx.i, align 8, !dbg !15900, !alias.scope !15901, !noalias !15852 ; 2 uses
  br i1 %.not.i32.i, label %bb.l, label %bb.k, !dbg !15902

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor11visit_unaryNvB6_7sql_sumEB8_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1)
          to label %bb.an unwind label %bb.am, !dbg !15903

bb.k:                                             ; preds = %.noexc6
  %.sroa.10.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.o, i64 33, !dbg !15904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.0..sroa_idx47.i, i64 39, i1 false), !dbg !15904, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15905, !noalias !15852
  call void @llvm.experimental.noalias.scope.decl(metadata !15906), !dbg !15909
  store i64 %i.ah, ptr %0, align 16, !dbg !15912, !alias.scope !15914, !noalias !15874
  %.sroa.249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.249.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, i64 24, i1 false), !dbg !15912, !noalias !15874
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15912
  store i8 %.sroa.9.8.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 16, !dbg !15912, !alias.scope !15914, !noalias !15874
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !15912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.i, i64 39, i1 false), !dbg !15912, !noalias !15874
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !15912
  store i64 -9223372036854775780, ptr %i.aj, align 16, !dbg !15912, !alias.scope !15916, !noalias !15917
  br label %bb.an, !dbg !15878

bb.l:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15905, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !15918, !noalias !15852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, i64 24, i1 false), !dbg !15888, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !15919, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !15921, !noalias !15852
  %i.ak = load ptr, ptr %i.t, align 16, !dbg !15922, !alias.scope !15844, !noalias !15891, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  invoke fastcc void @_RNvNtCshquuC4dCYVj_10polars_sql9functions12extract_args(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak)
          to label %bb.n unwind label %.split.thread.i, !dbg !15921, !noalias !15881

bb.m:                                             ; preds = %.thread.i
  br i1 %.sroa.07.2.i, label %bb.al, label %.body, !dbg !15923

.split.thread.i:                                  ; preds = %bb.aa, %bb.l
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al, !dbg !15923

bb.n:                                             ; preds = %bb.l
  %i.al = load i64, ptr %i.m, align 8, !dbg !15924, !range !34, !alias.scope !15926, !noalias !15929, !noundef !13 ; 2 uses
  %.not.i33.i = icmp eq i64 %i.al, 18, !dbg !15924
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !15931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !15931, !noalias !15852
  br i1 %.not.i33.i, label %bb.p, label %bb.ak, !dbg !15932

.thread.i:                                        ; preds = %bb.ah, %bb.ag, %.critedge21.thread.i, %bb.ab, %bb.o
  %.pn15.i = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.br, %bb.ah ], [ %i.bp, %.critedge21.thread.i ], [ %i.bm, %bb.ag ], [ %i.bm, %bb.ab ] ; 2 uses
  %.sroa.07.2.i = phi i1 [ true, %bb.o ], [ true, %bb.ah ], [ false, %.critedge21.thread.i ], [ true, %bb.ag ], [ true, %bb.ab ], !dbg !15933
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n) #26
          to label %bb.m unwind label %bb.af, !dbg !15934, !noalias !15839

bb.o:                                             ; preds = %bb.z, %bb.s, %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !15935, !noalias !15852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !dbg !15921, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !15936, !noalias !15852
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !15938
  %.val23.i = load i64, ptr %i.ao, align 8, !dbg !15938, !noalias !15852, !noundef !13
  %i.ap = icmp eq i64 %.val23.i, 1, !dbg !15939
  br i1 %i.ap, label %bb.q, label %bb.r, !dbg !15939

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !15938
  %.val22.i = load ptr, ptr %i.aq, align 8, !dbg !15938, !noalias !15852, !nonnull !13, !noundef !13
  %i.ar = load ptr, ptr %.val22.i, align 8, !dbg !15940, !noalias !15881, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !dbg !15940, !range !65, !noalias !15881, !noundef !13
  %i.at = icmp eq i64 %i.as, 3, !dbg !15941
  br i1 %i.at, label %bb.s, label %bb.r, !dbg !15941

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19not_supported_error(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %0, ptr %i.ak)
          to label %bb.aa unwind label %bb.o, !dbg !15942, !noalias !15844

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !15943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !15944, !noalias !15852
  %i.av = load ptr, ptr %i.af, align 8, !dbg !15946, !alias.scope !15844, !noalias !15891, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.aw = load ptr, ptr %i.ag, align 16, !dbg !15947, !alias.scope !15844, !noalias !15891, !align !25, !noundef !13
  invoke void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.aw)
          to label %bb.t unwind label %bb.o, !dbg !15944, !noalias !15881

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 112, !dbg !15948
  %i.ay = load i64, ptr %i.ax, align 16, !dbg !15948, !range !82, !alias.scope !15950, !noalias !15953, !noundef !13 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -9223372036854775780, !dbg !15948
  br i1 %i.az, label %bb.ai, label %bb.u, !dbg !15955

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.059.i, ptr noundef nonnull align 16 dereferenceable(112) %i.k, i64 112, i1 false), !dbg !15956, !noalias !15852
  %.sroa.963.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120, !dbg !15956
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120, !dbg !15957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.963.0..sroa_idx64.i, i64 24, i1 false), !dbg !15956, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15960, !noalias !15852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.l, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.059.i, i64 112, i1 false), !dbg !15944, !noalias !15852
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112, !dbg !15957
  store i64 %i.ay, ptr %.sroa.466.0..sroa_idx.i, align 16, !dbg !15957, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !15961, !noalias !15852
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !15963
  %.val25.i = load i64, ptr %i.ba, align 8, !dbg !15963, !alias.scope !15846, !noalias !15881, !noundef !13 ; 3 uses
  %i.bb = icmp ult i64 %.val25.i, 28120036697727976, !dbg !15964
  call void @llvm.assume(i1 %i.bb), !dbg !15967
  %i.bc = icmp eq i64 %.val25.i, 0, !dbg !15968
  br i1 %i.bc, label %bb.v, label %bb.w, !dbg !15969

bb.v:                                             ; preds = %bb.u
  store i64 -9223372036854775808, ptr %i.j, align 8, !dbg !15970, !noalias !15852
  br label %bb.y, !dbg !15971

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15972, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15972, !noalias !15852
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !15972
  %.val26.i = load ptr, ptr %i.bd, align 8, !dbg !15972, !alias.scope !15846, !noalias !15881, !nonnull !13, !noundef !13 ; 2 uses
  %i.be = getelementptr inbounds nuw [328 x i8], ptr %.val26.i, i64 %.val25.i, !dbg !15973
  store ptr %.val26.i, ptr %i.h, align 8, !dbg !15977, !alias.scope !15982, !noalias !15985
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !15977
  store ptr %i.be, ptr %i.bf, align 8, !dbg !15977, !alias.scope !15982, !noalias !15985
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !15977
  store ptr %i.av, ptr %i.bg, align 8, !dbg !15977, !alias.scope !15982, !noalias !15985
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !15977
  store ptr %i.ag, ptr %i.bh, align 8, !dbg !15977, !alias.scope !15982, !noalias !15985
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2h_18SQLFunctionVisitor23apply_cumulative_windowNvB2h_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3Z_4expr4Expr7cum_sumE0EB4w_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B56_IB54_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB4w_EB5Q_EINtNtNtB4_6traits7collect12FromIteratorIB54_B4w_B5Q_EE9from_iterBQ_E0B6Q_EB2j_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvB22_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3K_4expr4Expr7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i unwind label %bb.ah, !dbg !15988, !noalias !15839

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvB22_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3K_4expr4Expr7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15993, !noalias !15852
  %i.bi = load i64, ptr %i.i, align 8, !dbg !15994, !range !34, !alias.scope !15996, !noalias !15999, !noundef !13 ; 2 uses
  %.not.i34.i = icmp eq i64 %i.bi, 18, !dbg !15994
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !16001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !dbg !16001, !noalias !15852
  br i1 %.not.i34.i, label %bb.x, label %bb.z, !dbg !16002

bb.x:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvB22_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3K_4expr4Expr7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16003, !noalias !15852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, i64 24, i1 false), !dbg !15972, !noalias !15852
  br label %bb.y, !dbg !15971

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16004, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16006, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false), !dbg !16007, !noalias !15852
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 0, ptr %i.bk, align 16, !noalias !16008
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr7cum_sum(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.a, i1 noundef zeroext false)
          to label %bb.ac unwind label %bb.ab, !dbg !16012, !noalias !15839

bb.z:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvB22_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3K_4expr4Expr7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i
  %.sroa.971.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !16015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.971.0..sroa_idx72.i, i64 40, i1 false), !dbg !16015, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16003, !noalias !15852
  call void @llvm.experimental.noalias.scope.decl(metadata !16016), !dbg !16019
  store i64 %i.bi, ptr %0, align 16, !dbg !16022, !alias.scope !16024, !noalias !15874
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.274.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, i64 24, i1 false), !dbg !16022, !noalias !15874
  %.sroa.375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.i, i64 40, i1 false), !dbg !16022, !alias.scope !16026, !noalias !15874
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16022
  store i64 -9223372036854775780, ptr %i.bl, align 16, !dbg !16022, !alias.scope !16027, !noalias !16028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16029, !noalias !15852
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l)
          to label %bb.aa unwind label %bb.o, !dbg !16030, !noalias !15839

bb.aa:                                            ; preds = %bb.ai, %bb.z, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16030, !noalias !15852
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %bb.aj unwind label %.split.thread.i, !dbg !15934, !noalias !15839

bb.ab:                                            ; preds = %bb.ac, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load i64, ptr %i.j, align 8, !dbg !16031, !range !15751, !alias.scope !16033, !noalias !15852, !noundef !13
  %i.bo = icmp eq i64 %i.bn, -9223372036854775808, !dbg !16031
  br i1 %i.bo, label %.thread.i, label %bb.ag, !dbg !16031

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16012, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16036, !noalias !15852
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !16036
  store i32 0, ptr %2, align 4, !dbg !16036, !noalias !15852
  store i32 1, ptr %i.e, align 4, !dbg !16036, !noalias !15852
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr23fill_null_with_strategy(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.e)
          to label %bb.ad unwind label %bb.ab, !dbg !16037, !noalias !15839

.critedge21.thread.i:                             ; preds = %bb.ad
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i, !dbg !16038

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16039, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16039, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16040, !noalias !15852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.d, ptr noundef nonnull align 16 dereferenceable(144) %i.g, i64 144, i1 false), !dbg !16040, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16043, !noalias !15852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !16043, !noalias !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16044, !noalias !15852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !16045, !noalias !15852
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16044
  store i32 0, ptr %.sroa.490.0..sroa_idx.i, align 8, !dbg !16044, !noalias !15852
  %.sroa.692.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16044
  store i8 %.sroa.9.8.copyload.i, ptr %.sroa.692.0..sroa_idx.i, align 8, !dbg !16044, !noalias !15852
  %.sroa.793.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 33, !dbg !16044
  store i8 0, ptr %.sroa.793.0..sroa_idx.i, align 1, !dbg !16044, !noalias !15852
  %.sroa.894.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 34, !dbg !16044
  store i8 1, ptr %.sroa.894.0..sroa_idx.i, align 2, !dbg !16044, !noalias !15852
  %.sroa.995.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 35, !dbg !16044
  store i8 0, ptr %.sroa.995.0..sroa_idx.i, align 1, !dbg !16044, !noalias !15852
  invoke void @_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr17over_with_optionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecBA_EBA_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, i8 noundef 0)
          to label %bb.ae unwind label %.critedge21.thread.i, !dbg !16046

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16047, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16047, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16047, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16038, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16029, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16030, !noalias !15852
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %.noexc8 unwind label %bb.am, !dbg !15934

.noexc8:                                          ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !15934, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !15923, !noalias !15852
  br label %bb.an, !dbg !16048

bb.af:                                            ; preds = %bb.al, %bb.ah, %bb.ag, %.thread.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !16049, !noalias !15839
  unreachable, !dbg !16049

bb.ag:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread.i unwind label %bb.af, !dbg !16031, !noalias !15839

bb.ah:                                            ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l) #26
          to label %.thread.i unwind label %bb.af, !dbg !16030, !noalias !15839

bb.ai:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.059.i, ptr noundef nonnull align 16 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !16050, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15960, !noalias !15852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.059.i, i64 72, i1 false), !dbg !16051, !noalias !15874
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16051
  store i64 -9223372036854775780, ptr %i.bs, align 16, !dbg !16051, !alias.scope !16055, !noalias !16058
  br label %bb.aa, !dbg !16060

bb.aj:                                            ; preds = %bb.ak, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !15934, !noalias !15852
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p)
          to label %.noexc9 unwind label %bb.am, !dbg !15923

.noexc9:                                          ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !15923, !noalias !15852
  br label %bb.an, !dbg !15878

bb.ak:                                            ; preds = %bb.n
  %.sroa.954.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !16062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.358.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.954.0..sroa_idx55.i, i64 40, i1 false), !dbg !16062, !noalias !15852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !15935, !noalias !15852
  call void @llvm.experimental.noalias.scope.decl(metadata !16063), !dbg !16066
  store i64 %i.al, ptr %0, align 16, !dbg !16069, !alias.scope !16071, !noalias !15874
  %.sroa.257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.257.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !dbg !16069, !noalias !15874
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.358.i, i64 40, i1 false), !dbg !16069, !alias.scope !16073, !noalias !15874
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16069
  store i64 -9223372036854775780, ptr %i.bt, align 16, !dbg !16069, !alias.scope !16074, !noalias !16075
  br label %bb.aj, !dbg !16076

bb.al:                                            ; preds = %.split.thread.i, %bb.m
  %.pn17128.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.split.thread.i ], [ %.pn15.i, %bb.m ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p) #26
          to label %.body unwind label %bb.af, !dbg !15923, !noalias !15839

bb.am:                                            ; preds = %bb.aj, %bb.ae, %bb.j, %bb.i, %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !15833

.body:                                            ; preds = %bb.m, %bb.al, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.am ], [ %.pn15.i, %bb.m ], [ %.pn17128.i, %bb.al ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.s) #26
          to label %bb.ap unwind label %bb.ao, !dbg !15833

bb.an:                                            ; preds = %.noexc9, %.noexc8, %bb.k, %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.i), !dbg !16078
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.375.i), !dbg !16078
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.059.i), !dbg !16078
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.752.i), !dbg !16078
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.358.i), !dbg !16078
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743.i), !dbg !16078
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i), !dbg !16078
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i), !dbg !16078
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.s), !dbg !15833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !15833
  br label %bb.d, !dbg !15834

bb.ao:                                            ; preds = %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !16079
  unreachable, !dbg !16079

bb.ap:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !16079
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor31visit_unary_with_opt_cumulativeNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB1J_4expr4Expr3maxNvMB1J_B2s_7cum_maxEB8_(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16080 {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [144 x i8], align 16              ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [144 x i8], align 16              ; 4 uses
  %i.g = alloca [144 x i8], align 16              ; 4 uses
  %.sroa.769.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.375.i = alloca [40 x i8], align 8        ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.059.i = alloca [112 x i8], align 16      ; 6 uses
  %i.k = alloca [144 x i8], align 16              ; 8 uses
  %i.l = alloca [144 x i8], align 16              ; 9 uses
  %.sroa.752.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.358.i = alloca [40 x i8], align 8        ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.743.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.10.i = alloca [39 x i8], align 1         ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.2.i = alloca [64 x i8], align 8          ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 3 uses
  %i.r = alloca [152 x i8], align 8               ; 7 uses
  %i.s = alloca [152 x i8], align 8               ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !16081 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 16, !dbg !16081, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !16082, !range !65, !alias.scope !16084, !noundef !13
  %.not.i = icmp eq i64 %i.v, 5, !dbg !16082
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !16087

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !16088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !16090
  call fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19resolve_window_spec(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.r, ptr noundef nonnull align 16 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.u), !dbg !16091
  %i.w = load i64, ptr %i.r, align 8, !dbg !16092, !range !15501, !alias.scope !16094, !noalias !16097, !noundef !13 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4, !dbg !16092
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !16099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false), !dbg !16099
  br i1 %i.x, label %bb.e, label %bb.f, !dbg !16100

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor11visit_unaryNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB1p_4expr4Expr3maxEB8_(ptr noalias noundef align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef align 16 dereferenceable(176) %1), !dbg !16101
  br label %bb.d, !dbg !16101

bb.d:                                             ; preds = %bb.c, %bb.e, %bb.an
  ret void, !dbg !16102

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !16103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !16104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16104
  store i64 -9223372036854775780, ptr %i.z, align 16, !dbg !16104, !alias.scope !16108, !noalias !16111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !16113
  br label %bb.d, !dbg !16114

bb.f:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.r, i64 80, !dbg !16115
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 80, !dbg !16116 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx12, i64 72, i1 false), !dbg !16115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !16103
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !16116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !16090
  store i64 %i.w, ptr %i.s, align 8, !dbg !16116
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16119), !dbg !16122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16124), !dbg !16122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16126), !dbg !16122
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769.i), !dbg !16128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.375.i), !dbg !16128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059.i), !dbg !16128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.752.i), !dbg !16128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.358.i), !dbg !16128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.743.i), !dbg !16128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i), !dbg !16128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i), !dbg !16128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !16128, !noalias !16132
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor21validate_window_frame(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.s)
          to label %.noexc unwind label %bb.am, !dbg !16133

.noexc:                                           ; preds = %bb.f
  %i.aa = load i64, ptr %i.q, align 8, !dbg !16134, !range !34, !alias.scope !16136, !noalias !16139, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 18, !dbg !16134
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !16141

bb.g:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !16142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx39.i, i64 64, i1 false), !dbg !16142, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16143, !noalias !16132
  call void @llvm.experimental.noalias.scope.decl(metadata !16144), !dbg !16147
  store i64 %i.aa, ptr %0, align 16, !dbg !16150, !alias.scope !16152, !noalias !16154
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.i, i64 64, i1 false), !dbg !16150, !alias.scope !16155, !noalias !16154
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16150
  store i64 -9223372036854775780, ptr %i.ab, align 16, !dbg !16150, !alias.scope !16156, !noalias !16157
  br label %bb.an, !dbg !16158

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16143, !noalias !16132
  %.val.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !16160, !alias.scope !16126, !noalias !16161, !noundef !13 ; 3 uses
  %i.ac = icmp ult i64 %.val.i, 6987403058223316, !dbg !16162
  call void @llvm.assume(i1 %i.ac), !dbg !16165
  %i.ad = icmp eq i64 %.val.i, 0, !dbg !16166
  br i1 %i.ad, label %bb.j, label %bb.i, !dbg !16167

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !16168, !noalias !16132
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 72, !dbg !16169
  %.val28.i = load ptr, ptr %i.ae, align 8, !dbg !16169, !alias.scope !16126, !noalias !16161, !nonnull !13, !noundef !13
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !16170 ; 2 uses
  %.val30.i = load ptr, ptr %i.af, align 8, !dbg !16170, !alias.scope !16124, !noalias !16171
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !16170 ; 3 uses
  %.val31.i = load ptr, ptr %i.ag, align 16, !dbg !16170, !alias.scope !16124, !noalias !16171
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor24parse_order_by_in_window(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.o, ptr %.val30.i, ptr %.val31.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val28.i, i64 noundef %.val.i)
          to label %.noexc6 unwind label %bb.am, !dbg !16170

.noexc6:                                          ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16172), !dbg !16168
  %i.ah = load i64, ptr %i.o, align 8, !dbg !16175, !range !34, !alias.scope !16177, !noalias !16179, !noundef !13 ; 2 uses
  %.not.i32.i = icmp eq i64 %i.ah, 18, !dbg !16175
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !16180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !16180, !noalias !16132
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !16180
  %.sroa.9.8.copyload.i = load i8, ptr %.sroa.9.8..sroa_idx.i, align 8, !dbg !16180, !alias.scope !16181, !noalias !16132 ; 2 uses
  br i1 %.not.i32.i, label %bb.l, label %bb.k, !dbg !16182

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor11visit_unaryNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB1p_4expr4Expr3maxEB8_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1)
          to label %bb.an unwind label %bb.am, !dbg !16183

bb.k:                                             ; preds = %.noexc6
  %.sroa.10.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.o, i64 33, !dbg !16184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.0..sroa_idx47.i, i64 39, i1 false), !dbg !16184, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16185, !noalias !16132
  call void @llvm.experimental.noalias.scope.decl(metadata !16186), !dbg !16189
  store i64 %i.ah, ptr %0, align 16, !dbg !16192, !alias.scope !16194, !noalias !16154
  %.sroa.249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.249.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, i64 24, i1 false), !dbg !16192, !noalias !16154
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16192
  store i8 %.sroa.9.8.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 16, !dbg !16192, !alias.scope !16194, !noalias !16154
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !16192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.i, i64 39, i1 false), !dbg !16192, !noalias !16154
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16192
  store i64 -9223372036854775780, ptr %i.aj, align 16, !dbg !16192, !alias.scope !16196, !noalias !16197
  br label %bb.an, !dbg !16158

bb.l:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16185, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !16198, !noalias !16132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, i64 24, i1 false), !dbg !16168, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !16199, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !16201, !noalias !16132
  %i.ak = load ptr, ptr %i.t, align 16, !dbg !16202, !alias.scope !16124, !noalias !16171, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  invoke fastcc void @_RNvNtCshquuC4dCYVj_10polars_sql9functions12extract_args(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak)
          to label %bb.n unwind label %.split.thread.i, !dbg !16201, !noalias !16161

bb.m:                                             ; preds = %.thread.i
  br i1 %.sroa.07.2.i, label %bb.al, label %.body, !dbg !16203

.split.thread.i:                                  ; preds = %bb.aa, %bb.l
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al, !dbg !16203

bb.n:                                             ; preds = %bb.l
  %i.al = load i64, ptr %i.m, align 8, !dbg !16204, !range !34, !alias.scope !16206, !noalias !16209, !noundef !13 ; 2 uses
  %.not.i33.i = icmp eq i64 %i.al, 18, !dbg !16204
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !16211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !16211, !noalias !16132
  br i1 %.not.i33.i, label %bb.p, label %bb.ak, !dbg !16212

.thread.i:                                        ; preds = %bb.ah, %bb.ag, %.critedge21.thread.i, %bb.ab, %bb.o
  %.pn15.i = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.br, %bb.ah ], [ %i.bp, %.critedge21.thread.i ], [ %i.bm, %bb.ag ], [ %i.bm, %bb.ab ] ; 2 uses
  %.sroa.07.2.i = phi i1 [ true, %bb.o ], [ true, %bb.ah ], [ false, %.critedge21.thread.i ], [ true, %bb.ag ], [ true, %bb.ab ], !dbg !16213
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n) #26
          to label %bb.m unwind label %bb.af, !dbg !16214, !noalias !16119

bb.o:                                             ; preds = %bb.z, %bb.s, %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16215, !noalias !16132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !dbg !16201, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !16216, !noalias !16132
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !16218
  %.val23.i = load i64, ptr %i.ao, align 8, !dbg !16218, !noalias !16132, !noundef !13
  %i.ap = icmp eq i64 %.val23.i, 1, !dbg !16219
  br i1 %i.ap, label %bb.q, label %bb.r, !dbg !16219

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !16218
  %.val22.i = load ptr, ptr %i.aq, align 8, !dbg !16218, !noalias !16132, !nonnull !13, !noundef !13
  %i.ar = load ptr, ptr %.val22.i, align 8, !dbg !16220, !noalias !16161, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !dbg !16220, !range !65, !noalias !16161, !noundef !13
  %i.at = icmp eq i64 %i.as, 3, !dbg !16221
  br i1 %i.at, label %bb.s, label %bb.r, !dbg !16221

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19not_supported_error(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %0, ptr %i.ak)
          to label %bb.aa unwind label %bb.o, !dbg !16222, !noalias !16124

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !16223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16224, !noalias !16132
  %i.av = load ptr, ptr %i.af, align 8, !dbg !16226, !alias.scope !16124, !noalias !16171, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.aw = load ptr, ptr %i.ag, align 16, !dbg !16227, !alias.scope !16124, !noalias !16171, !align !25, !noundef !13
  invoke void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.aw)
          to label %bb.t unwind label %bb.o, !dbg !16224, !noalias !16161

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 112, !dbg !16228
  %i.ay = load i64, ptr %i.ax, align 16, !dbg !16228, !range !82, !alias.scope !16230, !noalias !16233, !noundef !13 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -9223372036854775780, !dbg !16228
  br i1 %i.az, label %bb.ai, label %bb.u, !dbg !16235

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.059.i, ptr noundef nonnull align 16 dereferenceable(112) %i.k, i64 112, i1 false), !dbg !16236, !noalias !16132
  %.sroa.963.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120, !dbg !16236
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120, !dbg !16237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.963.0..sroa_idx64.i, i64 24, i1 false), !dbg !16236, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16240, !noalias !16132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.l, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.059.i, i64 112, i1 false), !dbg !16224, !noalias !16132
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112, !dbg !16237
  store i64 %i.ay, ptr %.sroa.466.0..sroa_idx.i, align 16, !dbg !16237, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16241, !noalias !16132
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !16243
  %.val25.i = load i64, ptr %i.ba, align 8, !dbg !16243, !alias.scope !16126, !noalias !16161, !noundef !13 ; 3 uses
  %i.bb = icmp ult i64 %.val25.i, 28120036697727976, !dbg !16244
  call void @llvm.assume(i1 %i.bb), !dbg !16247
  %i.bc = icmp eq i64 %.val25.i, 0, !dbg !16248
  br i1 %i.bc, label %bb.v, label %bb.w, !dbg !16249

bb.v:                                             ; preds = %bb.u
  store i64 -9223372036854775808, ptr %i.j, align 8, !dbg !16250, !noalias !16132
  br label %bb.y, !dbg !16251

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16252, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16252, !noalias !16132
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !16252
  %.val26.i = load ptr, ptr %i.bd, align 8, !dbg !16252, !alias.scope !16126, !noalias !16161, !nonnull !13, !noundef !13 ; 2 uses
  %i.be = getelementptr inbounds nuw [328 x i8], ptr %.val26.i, i64 %.val25.i, !dbg !16253
  store ptr %.val26.i, ptr %i.h, align 8, !dbg !16257, !alias.scope !16262, !noalias !16265
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16257
  store ptr %i.be, ptr %i.bf, align 8, !dbg !16257, !alias.scope !16262, !noalias !16265
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !16257
  store ptr %i.av, ptr %i.bg, align 8, !dbg !16257, !alias.scope !16262, !noalias !16265
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !16257
  store ptr %i.ag, ptr %i.bh, align 8, !dbg !16257, !alias.scope !16262, !noalias !16265
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2h_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3N_4expr4Expr3maxNvMB3N_B4w_7cum_maxE0EB4w_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B5l_IB5j_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB4w_EB65_EINtNtNtB4_6traits7collect12FromIteratorIB5j_B4w_B65_EE9from_iterBQ_E0B75_EB2j_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3maxNvMB3y_B4h_7cum_maxE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i unwind label %bb.ah, !dbg !16268, !noalias !16119

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3maxNvMB3y_B4h_7cum_maxE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16273, !noalias !16132
  %i.bi = load i64, ptr %i.i, align 8, !dbg !16274, !range !34, !alias.scope !16276, !noalias !16279, !noundef !13 ; 2 uses
  %.not.i34.i = icmp eq i64 %i.bi, 18, !dbg !16274
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !16281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !dbg !16281, !noalias !16132
  br i1 %.not.i34.i, label %bb.x, label %bb.z, !dbg !16282

bb.x:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3maxNvMB3y_B4h_7cum_maxE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16283, !noalias !16132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, i64 24, i1 false), !dbg !16252, !noalias !16132
  br label %bb.y, !dbg !16251

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16284, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16286, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false), !dbg !16287, !noalias !16132
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 0, ptr %i.bk, align 16, !noalias !16288
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr7cum_max(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.a, i1 noundef zeroext false)
          to label %bb.ac unwind label %bb.ab, !dbg !16292, !noalias !16119

bb.z:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3maxNvMB3y_B4h_7cum_maxE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i
  %.sroa.971.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !16295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.971.0..sroa_idx72.i, i64 40, i1 false), !dbg !16295, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16283, !noalias !16132
  call void @llvm.experimental.noalias.scope.decl(metadata !16296), !dbg !16299
  store i64 %i.bi, ptr %0, align 16, !dbg !16302, !alias.scope !16304, !noalias !16154
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.274.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, i64 24, i1 false), !dbg !16302, !noalias !16154
  %.sroa.375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.i, i64 40, i1 false), !dbg !16302, !alias.scope !16306, !noalias !16154
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16302
  store i64 -9223372036854775780, ptr %i.bl, align 16, !dbg !16302, !alias.scope !16307, !noalias !16308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16309, !noalias !16132
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l)
          to label %bb.aa unwind label %bb.o, !dbg !16310, !noalias !16119

bb.aa:                                            ; preds = %bb.ai, %bb.z, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16310, !noalias !16132
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %bb.aj unwind label %.split.thread.i, !dbg !16214, !noalias !16119

bb.ab:                                            ; preds = %bb.ac, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load i64, ptr %i.j, align 8, !dbg !16311, !range !15751, !alias.scope !16313, !noalias !16132, !noundef !13
  %i.bo = icmp eq i64 %i.bn, -9223372036854775808, !dbg !16311
  br i1 %i.bo, label %.thread.i, label %bb.ag, !dbg !16311

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16292, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16316, !noalias !16132
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !16316
  store i32 0, ptr %2, align 4, !dbg !16316, !noalias !16132
  store i32 1, ptr %i.e, align 4, !dbg !16316, !noalias !16132
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr23fill_null_with_strategy(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.e)
          to label %bb.ad unwind label %bb.ab, !dbg !16317, !noalias !16119

.critedge21.thread.i:                             ; preds = %bb.ad
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i, !dbg !16318

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16319, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16319, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16320, !noalias !16132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.d, ptr noundef nonnull align 16 dereferenceable(144) %i.g, i64 144, i1 false), !dbg !16320, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16323, !noalias !16132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !16323, !noalias !16132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16324, !noalias !16132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !16325, !noalias !16132
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16324
  store i32 0, ptr %.sroa.490.0..sroa_idx.i, align 8, !dbg !16324, !noalias !16132
  %.sroa.692.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16324
  store i8 %.sroa.9.8.copyload.i, ptr %.sroa.692.0..sroa_idx.i, align 8, !dbg !16324, !noalias !16132
  %.sroa.793.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 33, !dbg !16324
  store i8 0, ptr %.sroa.793.0..sroa_idx.i, align 1, !dbg !16324, !noalias !16132
  %.sroa.894.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 34, !dbg !16324
  store i8 1, ptr %.sroa.894.0..sroa_idx.i, align 2, !dbg !16324, !noalias !16132
  %.sroa.995.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 35, !dbg !16324
  store i8 0, ptr %.sroa.995.0..sroa_idx.i, align 1, !dbg !16324, !noalias !16132
  invoke void @_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr17over_with_optionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecBA_EBA_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, i8 noundef 0)
          to label %bb.ae unwind label %.critedge21.thread.i, !dbg !16326

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16327, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16327, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16327, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16318, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16309, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16310, !noalias !16132
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %.noexc8 unwind label %bb.am, !dbg !16214

.noexc8:                                          ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16214, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !16203, !noalias !16132
  br label %bb.an, !dbg !16328

bb.af:                                            ; preds = %bb.al, %bb.ah, %bb.ag, %.thread.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !16329, !noalias !16119
  unreachable, !dbg !16329

bb.ag:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread.i unwind label %bb.af, !dbg !16311, !noalias !16119

bb.ah:                                            ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l) #26
          to label %.thread.i unwind label %bb.af, !dbg !16310, !noalias !16119

bb.ai:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.059.i, ptr noundef nonnull align 16 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !16330, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16240, !noalias !16132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.059.i, i64 72, i1 false), !dbg !16331, !noalias !16154
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16331
  store i64 -9223372036854775780, ptr %i.bs, align 16, !dbg !16331, !alias.scope !16335, !noalias !16338
  br label %bb.aa, !dbg !16340

bb.aj:                                            ; preds = %bb.ak, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16214, !noalias !16132
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p)
          to label %.noexc9 unwind label %bb.am, !dbg !16203

.noexc9:                                          ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !16203, !noalias !16132
  br label %bb.an, !dbg !16158

bb.ak:                                            ; preds = %bb.n
  %.sroa.954.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !16342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.358.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.954.0..sroa_idx55.i, i64 40, i1 false), !dbg !16342, !noalias !16132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16215, !noalias !16132
  call void @llvm.experimental.noalias.scope.decl(metadata !16343), !dbg !16346
  store i64 %i.al, ptr %0, align 16, !dbg !16349, !alias.scope !16351, !noalias !16154
  %.sroa.257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.257.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !dbg !16349, !noalias !16154
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.358.i, i64 40, i1 false), !dbg !16349, !alias.scope !16353, !noalias !16154
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16349
  store i64 -9223372036854775780, ptr %i.bt, align 16, !dbg !16349, !alias.scope !16354, !noalias !16355
  br label %bb.aj, !dbg !16356

bb.al:                                            ; preds = %.split.thread.i, %bb.m
  %.pn17128.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.split.thread.i ], [ %.pn15.i, %bb.m ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p) #26
          to label %.body unwind label %bb.af, !dbg !16203, !noalias !16119

bb.am:                                            ; preds = %bb.aj, %bb.ae, %bb.j, %bb.i, %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !16113

.body:                                            ; preds = %bb.m, %bb.al, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.am ], [ %.pn15.i, %bb.m ], [ %.pn17128.i, %bb.al ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.s) #26
          to label %bb.ap unwind label %bb.ao, !dbg !16113

bb.an:                                            ; preds = %.noexc9, %.noexc8, %bb.k, %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.i), !dbg !16358
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.375.i), !dbg !16358
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.059.i), !dbg !16358
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.752.i), !dbg !16358
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.358.i), !dbg !16358
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743.i), !dbg !16358
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i), !dbg !16358
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i), !dbg !16358
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.s), !dbg !16113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !16113
  br label %bb.d, !dbg !16114

bb.ao:                                            ; preds = %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !16359
  unreachable, !dbg !16359

bb.ap:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !16359
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor31visit_unary_with_opt_cumulativeNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB1J_4expr4Expr3minNvMB1J_B2s_7cum_minEB8_(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16360 {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [144 x i8], align 16              ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [144 x i8], align 16              ; 4 uses
  %i.g = alloca [144 x i8], align 16              ; 4 uses
  %.sroa.769.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.375.i = alloca [40 x i8], align 8        ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.059.i = alloca [112 x i8], align 16      ; 6 uses
  %i.k = alloca [144 x i8], align 16              ; 8 uses
  %i.l = alloca [144 x i8], align 16              ; 9 uses
  %.sroa.752.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.358.i = alloca [40 x i8], align 8        ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.743.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.10.i = alloca [39 x i8], align 1         ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.2.i = alloca [64 x i8], align 8          ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 3 uses
  %i.r = alloca [152 x i8], align 8               ; 7 uses
  %i.s = alloca [152 x i8], align 8               ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !16361 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 16, !dbg !16361, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !16362, !range !65, !alias.scope !16364, !noundef !13
  %.not.i = icmp eq i64 %i.v, 5, !dbg !16362
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !16367

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !16368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !16370
  call fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19resolve_window_spec(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.r, ptr noundef nonnull align 16 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.u), !dbg !16371
  %i.w = load i64, ptr %i.r, align 8, !dbg !16372, !range !15501, !alias.scope !16374, !noalias !16377, !noundef !13 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4, !dbg !16372
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !16379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false), !dbg !16379
  br i1 %i.x, label %bb.e, label %bb.f, !dbg !16380

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor11visit_unaryNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB1p_4expr4Expr3minEB8_(ptr noalias noundef align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef align 16 dereferenceable(176) %1), !dbg !16381
  br label %bb.d, !dbg !16381

bb.d:                                             ; preds = %bb.c, %bb.e, %bb.an
  ret void, !dbg !16382

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !16383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !16384
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16384
  store i64 -9223372036854775780, ptr %i.z, align 16, !dbg !16384, !alias.scope !16388, !noalias !16391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !16393
  br label %bb.d, !dbg !16394

bb.f:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.r, i64 80, !dbg !16395
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 80, !dbg !16396 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx12, i64 72, i1 false), !dbg !16395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !16383
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !16396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !16370
  store i64 %i.w, ptr %i.s, align 8, !dbg !16396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16399), !dbg !16402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16404), !dbg !16402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16406), !dbg !16402
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769.i), !dbg !16408
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.375.i), !dbg !16408
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059.i), !dbg !16408
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.752.i), !dbg !16408
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.358.i), !dbg !16408
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.743.i), !dbg !16408
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i), !dbg !16408
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i), !dbg !16408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !16408, !noalias !16412
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor21validate_window_frame(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.s)
          to label %.noexc unwind label %bb.am, !dbg !16413

.noexc:                                           ; preds = %bb.f
  %i.aa = load i64, ptr %i.q, align 8, !dbg !16414, !range !34, !alias.scope !16416, !noalias !16419, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 18, !dbg !16414
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !16421

bb.g:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !16422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx39.i, i64 64, i1 false), !dbg !16422, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16423, !noalias !16412
  call void @llvm.experimental.noalias.scope.decl(metadata !16424), !dbg !16427
  store i64 %i.aa, ptr %0, align 16, !dbg !16430, !alias.scope !16432, !noalias !16434
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.i, i64 64, i1 false), !dbg !16430, !alias.scope !16435, !noalias !16434
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16430
  store i64 -9223372036854775780, ptr %i.ab, align 16, !dbg !16430, !alias.scope !16436, !noalias !16437
  br label %bb.an, !dbg !16438

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16423, !noalias !16412
  %.val.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !16440, !alias.scope !16406, !noalias !16441, !noundef !13 ; 3 uses
  %i.ac = icmp ult i64 %.val.i, 6987403058223316, !dbg !16442
  call void @llvm.assume(i1 %i.ac), !dbg !16445
  %i.ad = icmp eq i64 %.val.i, 0, !dbg !16446
  br i1 %i.ad, label %bb.j, label %bb.i, !dbg !16447

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !16448, !noalias !16412
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 72, !dbg !16449
  %.val28.i = load ptr, ptr %i.ae, align 8, !dbg !16449, !alias.scope !16406, !noalias !16441, !nonnull !13, !noundef !13
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !16450 ; 2 uses
  %.val30.i = load ptr, ptr %i.af, align 8, !dbg !16450, !alias.scope !16404, !noalias !16451
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !16450 ; 3 uses
  %.val31.i = load ptr, ptr %i.ag, align 16, !dbg !16450, !alias.scope !16404, !noalias !16451
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor24parse_order_by_in_window(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.o, ptr %.val30.i, ptr %.val31.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val28.i, i64 noundef %.val.i)
          to label %.noexc6 unwind label %bb.am, !dbg !16450

.noexc6:                                          ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16452), !dbg !16448
  %i.ah = load i64, ptr %i.o, align 8, !dbg !16455, !range !34, !alias.scope !16457, !noalias !16459, !noundef !13 ; 2 uses
  %.not.i32.i = icmp eq i64 %i.ah, 18, !dbg !16455
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !16460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !16460, !noalias !16412
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !16460
  %.sroa.9.8.copyload.i = load i8, ptr %.sroa.9.8..sroa_idx.i, align 8, !dbg !16460, !alias.scope !16461, !noalias !16412 ; 2 uses
  br i1 %.not.i32.i, label %bb.l, label %bb.k, !dbg !16462

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor11visit_unaryNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB1p_4expr4Expr3minEB8_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1)
          to label %bb.an unwind label %bb.am, !dbg !16463

bb.k:                                             ; preds = %.noexc6
  %.sroa.10.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.o, i64 33, !dbg !16464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.0..sroa_idx47.i, i64 39, i1 false), !dbg !16464, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16465, !noalias !16412
  call void @llvm.experimental.noalias.scope.decl(metadata !16466), !dbg !16469
  store i64 %i.ah, ptr %0, align 16, !dbg !16472, !alias.scope !16474, !noalias !16434
  %.sroa.249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.249.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, i64 24, i1 false), !dbg !16472, !noalias !16434
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16472
  store i8 %.sroa.9.8.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 16, !dbg !16472, !alias.scope !16474, !noalias !16434
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !16472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.i, i64 39, i1 false), !dbg !16472, !noalias !16434
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16472
  store i64 -9223372036854775780, ptr %i.aj, align 16, !dbg !16472, !alias.scope !16476, !noalias !16477
  br label %bb.an, !dbg !16438

bb.l:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16465, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !16478, !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, i64 24, i1 false), !dbg !16448, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !16479, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !16481, !noalias !16412
  %i.ak = load ptr, ptr %i.t, align 16, !dbg !16482, !alias.scope !16404, !noalias !16451, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  invoke fastcc void @_RNvNtCshquuC4dCYVj_10polars_sql9functions12extract_args(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak)
          to label %bb.n unwind label %.split.thread.i, !dbg !16481, !noalias !16441

bb.m:                                             ; preds = %.thread.i
  br i1 %.sroa.07.2.i, label %bb.al, label %.body, !dbg !16483

.split.thread.i:                                  ; preds = %bb.aa, %bb.l
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al, !dbg !16483

bb.n:                                             ; preds = %bb.l
  %i.al = load i64, ptr %i.m, align 8, !dbg !16484, !range !34, !alias.scope !16486, !noalias !16489, !noundef !13 ; 2 uses
  %.not.i33.i = icmp eq i64 %i.al, 18, !dbg !16484
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !16491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !16491, !noalias !16412
  br i1 %.not.i33.i, label %bb.p, label %bb.ak, !dbg !16492

.thread.i:                                        ; preds = %bb.ah, %bb.ag, %.critedge21.thread.i, %bb.ab, %bb.o
  %.pn15.i = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.br, %bb.ah ], [ %i.bp, %.critedge21.thread.i ], [ %i.bm, %bb.ag ], [ %i.bm, %bb.ab ] ; 2 uses
  %.sroa.07.2.i = phi i1 [ true, %bb.o ], [ true, %bb.ah ], [ false, %.critedge21.thread.i ], [ true, %bb.ag ], [ true, %bb.ab ], !dbg !16493
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n) #26
          to label %bb.m unwind label %bb.af, !dbg !16494, !noalias !16399

bb.o:                                             ; preds = %bb.z, %bb.s, %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16495, !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !dbg !16481, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !16496, !noalias !16412
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !16498
  %.val23.i = load i64, ptr %i.ao, align 8, !dbg !16498, !noalias !16412, !noundef !13
  %i.ap = icmp eq i64 %.val23.i, 1, !dbg !16499
  br i1 %i.ap, label %bb.q, label %bb.r, !dbg !16499

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !16498
  %.val22.i = load ptr, ptr %i.aq, align 8, !dbg !16498, !noalias !16412, !nonnull !13, !noundef !13
  %i.ar = load ptr, ptr %.val22.i, align 8, !dbg !16500, !noalias !16441, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !dbg !16500, !range !65, !noalias !16441, !noundef !13
  %i.at = icmp eq i64 %i.as, 3, !dbg !16501
  br i1 %i.at, label %bb.s, label %bb.r, !dbg !16501

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19not_supported_error(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %0, ptr %i.ak)
          to label %bb.aa unwind label %bb.o, !dbg !16502, !noalias !16404

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !16503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16504, !noalias !16412
  %i.av = load ptr, ptr %i.af, align 8, !dbg !16506, !alias.scope !16404, !noalias !16451, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.aw = load ptr, ptr %i.ag, align 16, !dbg !16507, !alias.scope !16404, !noalias !16451, !align !25, !noundef !13
  invoke void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.aw)
          to label %bb.t unwind label %bb.o, !dbg !16504, !noalias !16441

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 112, !dbg !16508
  %i.ay = load i64, ptr %i.ax, align 16, !dbg !16508, !range !82, !alias.scope !16510, !noalias !16513, !noundef !13 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -9223372036854775780, !dbg !16508
  br i1 %i.az, label %bb.ai, label %bb.u, !dbg !16515

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.059.i, ptr noundef nonnull align 16 dereferenceable(112) %i.k, i64 112, i1 false), !dbg !16516, !noalias !16412
  %.sroa.963.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120, !dbg !16516
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120, !dbg !16517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.963.0..sroa_idx64.i, i64 24, i1 false), !dbg !16516, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16520, !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.l, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.059.i, i64 112, i1 false), !dbg !16504, !noalias !16412
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112, !dbg !16517
  store i64 %i.ay, ptr %.sroa.466.0..sroa_idx.i, align 16, !dbg !16517, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16521, !noalias !16412
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !16523
  %.val25.i = load i64, ptr %i.ba, align 8, !dbg !16523, !alias.scope !16406, !noalias !16441, !noundef !13 ; 3 uses
  %i.bb = icmp ult i64 %.val25.i, 28120036697727976, !dbg !16524
  call void @llvm.assume(i1 %i.bb), !dbg !16527
  %i.bc = icmp eq i64 %.val25.i, 0, !dbg !16528
  br i1 %i.bc, label %bb.v, label %bb.w, !dbg !16529

bb.v:                                             ; preds = %bb.u
  store i64 -9223372036854775808, ptr %i.j, align 8, !dbg !16530, !noalias !16412
  br label %bb.y, !dbg !16531

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16532, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16532, !noalias !16412
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !16532
  %.val26.i = load ptr, ptr %i.bd, align 8, !dbg !16532, !alias.scope !16406, !noalias !16441, !nonnull !13, !noundef !13 ; 2 uses
  %i.be = getelementptr inbounds nuw [328 x i8], ptr %.val26.i, i64 %.val25.i, !dbg !16533
  store ptr %.val26.i, ptr %i.h, align 8, !dbg !16537, !alias.scope !16542, !noalias !16545
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16537
  store ptr %i.be, ptr %i.bf, align 8, !dbg !16537, !alias.scope !16542, !noalias !16545
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !16537
  store ptr %i.av, ptr %i.bg, align 8, !dbg !16537, !alias.scope !16542, !noalias !16545
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !16537
  store ptr %i.ag, ptr %i.bh, align 8, !dbg !16537, !alias.scope !16542, !noalias !16545
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2h_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3N_4expr4Expr3minNvMB3N_B4w_7cum_minE0EB4w_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B5l_IB5j_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB4w_EB65_EINtNtNtB4_6traits7collect12FromIteratorIB5j_B4w_B65_EE9from_iterBQ_E0B75_EB2j_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3minNvMB3y_B4h_7cum_minE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i unwind label %bb.ah, !dbg !16548, !noalias !16399

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3minNvMB3y_B4h_7cum_minE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16553, !noalias !16412
  %i.bi = load i64, ptr %i.i, align 8, !dbg !16554, !range !34, !alias.scope !16556, !noalias !16559, !noundef !13 ; 2 uses
  %.not.i34.i = icmp eq i64 %i.bi, 18, !dbg !16554
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !16561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !dbg !16561, !noalias !16412
  br i1 %.not.i34.i, label %bb.x, label %bb.z, !dbg !16562

bb.x:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3minNvMB3y_B4h_7cum_minE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16563, !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, i64 24, i1 false), !dbg !16532, !noalias !16412
  br label %bb.y, !dbg !16531

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16564, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16566, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false), !dbg !16567, !noalias !16412
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 0, ptr %i.bk, align 16, !noalias !16568
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr7cum_min(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.a, i1 noundef zeroext false)
          to label %bb.ac unwind label %bb.ab, !dbg !16572, !noalias !16399

bb.z:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3minNvMB3y_B4h_7cum_minE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i
  %.sroa.971.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !16575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.971.0..sroa_idx72.i, i64 40, i1 false), !dbg !16575, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16563, !noalias !16412
  call void @llvm.experimental.noalias.scope.decl(metadata !16576), !dbg !16579
  store i64 %i.bi, ptr %0, align 16, !dbg !16582, !alias.scope !16584, !noalias !16434
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.274.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, i64 24, i1 false), !dbg !16582, !noalias !16434
  %.sroa.375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.i, i64 40, i1 false), !dbg !16582, !alias.scope !16586, !noalias !16434
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16582
  store i64 -9223372036854775780, ptr %i.bl, align 16, !dbg !16582, !alias.scope !16587, !noalias !16588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16589, !noalias !16412
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l)
          to label %bb.aa unwind label %bb.o, !dbg !16590, !noalias !16399

bb.aa:                                            ; preds = %bb.ai, %bb.z, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16590, !noalias !16412
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %bb.aj unwind label %.split.thread.i, !dbg !16494, !noalias !16399

bb.ab:                                            ; preds = %bb.ac, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load i64, ptr %i.j, align 8, !dbg !16591, !range !15751, !alias.scope !16593, !noalias !16412, !noundef !13
  %i.bo = icmp eq i64 %i.bn, -9223372036854775808, !dbg !16591
  br i1 %i.bo, label %.thread.i, label %bb.ag, !dbg !16591

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16572, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16596, !noalias !16412
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !16596
  store i32 0, ptr %2, align 4, !dbg !16596, !noalias !16412
  store i32 1, ptr %i.e, align 4, !dbg !16596, !noalias !16412
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr23fill_null_with_strategy(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.e)
          to label %bb.ad unwind label %bb.ab, !dbg !16597, !noalias !16399

.critedge21.thread.i:                             ; preds = %bb.ad
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i, !dbg !16598

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16599, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16599, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16600, !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.d, ptr noundef nonnull align 16 dereferenceable(144) %i.g, i64 144, i1 false), !dbg !16600, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16603, !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !16603, !noalias !16412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16604, !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !16605, !noalias !16412
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16604
  store i32 0, ptr %.sroa.490.0..sroa_idx.i, align 8, !dbg !16604, !noalias !16412
  %.sroa.692.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16604
  store i8 %.sroa.9.8.copyload.i, ptr %.sroa.692.0..sroa_idx.i, align 8, !dbg !16604, !noalias !16412
  %.sroa.793.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 33, !dbg !16604
  store i8 0, ptr %.sroa.793.0..sroa_idx.i, align 1, !dbg !16604, !noalias !16412
  %.sroa.894.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 34, !dbg !16604
  store i8 1, ptr %.sroa.894.0..sroa_idx.i, align 2, !dbg !16604, !noalias !16412
  %.sroa.995.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 35, !dbg !16604
  store i8 0, ptr %.sroa.995.0..sroa_idx.i, align 1, !dbg !16604, !noalias !16412
  invoke void @_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr17over_with_optionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecBA_EBA_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, i8 noundef 0)
          to label %bb.ae unwind label %.critedge21.thread.i, !dbg !16606

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16607, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16607, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16607, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16598, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16589, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16590, !noalias !16412
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %.noexc8 unwind label %bb.am, !dbg !16494

.noexc8:                                          ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16494, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !16483, !noalias !16412
  br label %bb.an, !dbg !16608

bb.af:                                            ; preds = %bb.al, %bb.ah, %bb.ag, %.thread.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !16609, !noalias !16399
  unreachable, !dbg !16609

bb.ag:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread.i unwind label %bb.af, !dbg !16591, !noalias !16399

bb.ah:                                            ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l) #26
          to label %.thread.i unwind label %bb.af, !dbg !16590, !noalias !16399

bb.ai:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.059.i, ptr noundef nonnull align 16 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !16610, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16520, !noalias !16412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.059.i, i64 72, i1 false), !dbg !16611, !noalias !16434
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16611
  store i64 -9223372036854775780, ptr %i.bs, align 16, !dbg !16611, !alias.scope !16615, !noalias !16618
  br label %bb.aa, !dbg !16620

bb.aj:                                            ; preds = %bb.ak, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16494, !noalias !16412
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p)
          to label %.noexc9 unwind label %bb.am, !dbg !16483

.noexc9:                                          ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !16483, !noalias !16412
  br label %bb.an, !dbg !16438

bb.ak:                                            ; preds = %bb.n
  %.sroa.954.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !16622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.358.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.954.0..sroa_idx55.i, i64 40, i1 false), !dbg !16622, !noalias !16412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16495, !noalias !16412
  call void @llvm.experimental.noalias.scope.decl(metadata !16623), !dbg !16626
  store i64 %i.al, ptr %0, align 16, !dbg !16629, !alias.scope !16631, !noalias !16434
  %.sroa.257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.257.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !dbg !16629, !noalias !16434
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.358.i, i64 40, i1 false), !dbg !16629, !alias.scope !16633, !noalias !16434
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16629
  store i64 -9223372036854775780, ptr %i.bt, align 16, !dbg !16629, !alias.scope !16634, !noalias !16635
  br label %bb.aj, !dbg !16636

bb.al:                                            ; preds = %.split.thread.i, %bb.m
  %.pn17128.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.split.thread.i ], [ %.pn15.i, %bb.m ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p) #26
          to label %.body unwind label %bb.af, !dbg !16483, !noalias !16399

bb.am:                                            ; preds = %bb.aj, %bb.ae, %bb.j, %bb.i, %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !16393

.body:                                            ; preds = %bb.m, %bb.al, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.am ], [ %.pn15.i, %bb.m ], [ %.pn17128.i, %bb.al ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.s) #26
          to label %bb.ap unwind label %bb.ao, !dbg !16393

bb.an:                                            ; preds = %.noexc9, %.noexc8, %bb.k, %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.i), !dbg !16638
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.375.i), !dbg !16638
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.059.i), !dbg !16638
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.752.i), !dbg !16638
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.358.i), !dbg !16638
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743.i), !dbg !16638
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i), !dbg !16638
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i), !dbg !16638
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.s), !dbg !16393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !16393
  br label %bb.d, !dbg !16394

bb.ao:                                            ; preds = %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !16639
  unreachable, !dbg !16639

bb.ap:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !16639
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor31visit_unary_with_opt_cumulativeNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB1J_4expr4Expr3sumNvMB1J_B2s_7cum_sumEB8_(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16640 {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [144 x i8], align 16              ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [144 x i8], align 16              ; 4 uses
  %i.g = alloca [144 x i8], align 16              ; 4 uses
  %.sroa.769.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.375.i = alloca [40 x i8], align 8        ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.059.i = alloca [112 x i8], align 16      ; 6 uses
  %i.k = alloca [144 x i8], align 16              ; 8 uses
  %i.l = alloca [144 x i8], align 16              ; 9 uses
  %.sroa.752.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.358.i = alloca [40 x i8], align 8        ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.743.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.10.i = alloca [39 x i8], align 1         ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.2.i = alloca [64 x i8], align 8          ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 3 uses
  %i.r = alloca [152 x i8], align 8               ; 7 uses
  %i.s = alloca [152 x i8], align 8               ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !16641 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 16, !dbg !16641, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !16642, !range !65, !alias.scope !16644, !noundef !13
  %.not.i = icmp eq i64 %i.v, 5, !dbg !16642
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !16647

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !16648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !16650
  call fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19resolve_window_spec(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.r, ptr noundef nonnull align 16 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.u), !dbg !16651
  %i.w = load i64, ptr %i.r, align 8, !dbg !16652, !range !15501, !alias.scope !16654, !noalias !16657, !noundef !13 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4, !dbg !16652
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !16659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false), !dbg !16659
  br i1 %i.x, label %bb.e, label %bb.f, !dbg !16660

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor11visit_unaryNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB1p_4expr4Expr3sumEB8_(ptr noalias noundef align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef align 16 dereferenceable(176) %1), !dbg !16661
  br label %bb.d, !dbg !16661

bb.d:                                             ; preds = %bb.c, %bb.e, %bb.an
  ret void, !dbg !16662

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !16663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !16664
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16664
  store i64 -9223372036854775780, ptr %i.z, align 16, !dbg !16664, !alias.scope !16668, !noalias !16671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !16673
  br label %bb.d, !dbg !16674

bb.f:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.r, i64 80, !dbg !16675
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 80, !dbg !16676 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx12, i64 72, i1 false), !dbg !16675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !16663
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !16676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !16650
  store i64 %i.w, ptr %i.s, align 8, !dbg !16676
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16679), !dbg !16682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16684), !dbg !16682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16686), !dbg !16682
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769.i), !dbg !16688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.375.i), !dbg !16688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059.i), !dbg !16688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.752.i), !dbg !16688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.358.i), !dbg !16688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.743.i), !dbg !16688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i), !dbg !16688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i), !dbg !16688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !16688, !noalias !16692
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor21validate_window_frame(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.s)
          to label %.noexc unwind label %bb.am, !dbg !16693

.noexc:                                           ; preds = %bb.f
  %i.aa = load i64, ptr %i.q, align 8, !dbg !16694, !range !34, !alias.scope !16696, !noalias !16699, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 18, !dbg !16694
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !16701

bb.g:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !16702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx39.i, i64 64, i1 false), !dbg !16702, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16703, !noalias !16692
  call void @llvm.experimental.noalias.scope.decl(metadata !16704), !dbg !16707
  store i64 %i.aa, ptr %0, align 16, !dbg !16710, !alias.scope !16712, !noalias !16714
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.i, i64 64, i1 false), !dbg !16710, !alias.scope !16715, !noalias !16714
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16710
  store i64 -9223372036854775780, ptr %i.ab, align 16, !dbg !16710, !alias.scope !16716, !noalias !16717
  br label %bb.an, !dbg !16718

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16703, !noalias !16692
  %.val.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !16720, !alias.scope !16686, !noalias !16721, !noundef !13 ; 3 uses
  %i.ac = icmp ult i64 %.val.i, 6987403058223316, !dbg !16722
  call void @llvm.assume(i1 %i.ac), !dbg !16725
  %i.ad = icmp eq i64 %.val.i, 0, !dbg !16726
  br i1 %i.ad, label %bb.j, label %bb.i, !dbg !16727

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !16728, !noalias !16692
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 72, !dbg !16729
  %.val28.i = load ptr, ptr %i.ae, align 8, !dbg !16729, !alias.scope !16686, !noalias !16721, !nonnull !13, !noundef !13
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !16730 ; 2 uses
  %.val30.i = load ptr, ptr %i.af, align 8, !dbg !16730, !alias.scope !16684, !noalias !16731
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !16730 ; 3 uses
  %.val31.i = load ptr, ptr %i.ag, align 16, !dbg !16730, !alias.scope !16684, !noalias !16731
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor24parse_order_by_in_window(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.o, ptr %.val30.i, ptr %.val31.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val28.i, i64 noundef %.val.i)
          to label %.noexc6 unwind label %bb.am, !dbg !16730

.noexc6:                                          ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16732), !dbg !16728
  %i.ah = load i64, ptr %i.o, align 8, !dbg !16735, !range !34, !alias.scope !16737, !noalias !16739, !noundef !13 ; 2 uses
  %.not.i32.i = icmp eq i64 %i.ah, 18, !dbg !16735
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !16740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !16740, !noalias !16692
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !16740
  %.sroa.9.8.copyload.i = load i8, ptr %.sroa.9.8..sroa_idx.i, align 8, !dbg !16740, !alias.scope !16741, !noalias !16692 ; 2 uses
  br i1 %.not.i32.i, label %bb.l, label %bb.k, !dbg !16742

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB6_18SQLFunctionVisitor11visit_unaryNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB1p_4expr4Expr3sumEB8_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1)
          to label %bb.an unwind label %bb.am, !dbg !16743

bb.k:                                             ; preds = %.noexc6
  %.sroa.10.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.o, i64 33, !dbg !16744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.0..sroa_idx47.i, i64 39, i1 false), !dbg !16744, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16745, !noalias !16692
  call void @llvm.experimental.noalias.scope.decl(metadata !16746), !dbg !16749
  store i64 %i.ah, ptr %0, align 16, !dbg !16752, !alias.scope !16754, !noalias !16714
  %.sroa.249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.249.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, i64 24, i1 false), !dbg !16752, !noalias !16714
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16752
  store i8 %.sroa.9.8.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 16, !dbg !16752, !alias.scope !16754, !noalias !16714
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !16752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.i, i64 39, i1 false), !dbg !16752, !noalias !16714
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16752
  store i64 -9223372036854775780, ptr %i.aj, align 16, !dbg !16752, !alias.scope !16756, !noalias !16757
  br label %bb.an, !dbg !16718

bb.l:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16745, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !16758, !noalias !16692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.i, i64 24, i1 false), !dbg !16728, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !16759, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !16761, !noalias !16692
  %i.ak = load ptr, ptr %i.t, align 16, !dbg !16762, !alias.scope !16684, !noalias !16731, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  invoke fastcc void @_RNvNtCshquuC4dCYVj_10polars_sql9functions12extract_args(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak)
          to label %bb.n unwind label %.split.thread.i, !dbg !16761, !noalias !16721

bb.m:                                             ; preds = %.thread.i
  br i1 %.sroa.07.2.i, label %bb.al, label %.body, !dbg !16763

.split.thread.i:                                  ; preds = %bb.aa, %bb.l
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al, !dbg !16763

bb.n:                                             ; preds = %bb.l
  %i.al = load i64, ptr %i.m, align 8, !dbg !16764, !range !34, !alias.scope !16766, !noalias !16769, !noundef !13 ; 2 uses
  %.not.i33.i = icmp eq i64 %i.al, 18, !dbg !16764
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !16771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !16771, !noalias !16692
  br i1 %.not.i33.i, label %bb.p, label %bb.ak, !dbg !16772

.thread.i:                                        ; preds = %bb.ah, %bb.ag, %.critedge21.thread.i, %bb.ab, %bb.o
  %.pn15.i = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.br, %bb.ah ], [ %i.bp, %.critedge21.thread.i ], [ %i.bm, %bb.ag ], [ %i.bm, %bb.ab ] ; 2 uses
  %.sroa.07.2.i = phi i1 [ true, %bb.o ], [ true, %bb.ah ], [ false, %.critedge21.thread.i ], [ true, %bb.ag ], [ true, %bb.ab ], !dbg !16773
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n) #26
          to label %bb.m unwind label %bb.af, !dbg !16774, !noalias !16679

bb.o:                                             ; preds = %bb.z, %bb.s, %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16775, !noalias !16692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !dbg !16761, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !16776, !noalias !16692
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !16778
  %.val23.i = load i64, ptr %i.ao, align 8, !dbg !16778, !noalias !16692, !noundef !13
  %i.ap = icmp eq i64 %.val23.i, 1, !dbg !16779
  br i1 %i.ap, label %bb.q, label %bb.r, !dbg !16779

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !16778
  %.val22.i = load ptr, ptr %i.aq, align 8, !dbg !16778, !noalias !16692, !nonnull !13, !noundef !13
  %i.ar = load ptr, ptr %.val22.i, align 8, !dbg !16780, !noalias !16721, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !dbg !16780, !range !65, !noalias !16721, !noundef !13
  %i.at = icmp eq i64 %i.as, 3, !dbg !16781
  br i1 %i.at, label %bb.s, label %bb.r, !dbg !16781

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19not_supported_error(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %0, ptr %i.ak)
          to label %bb.aa unwind label %bb.o, !dbg !16782, !noalias !16684

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !16783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16784, !noalias !16692
  %i.av = load ptr, ptr %i.af, align 8, !dbg !16786, !alias.scope !16684, !noalias !16731, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %i.aw = load ptr, ptr %i.ag, align 16, !dbg !16787, !alias.scope !16684, !noalias !16731, !align !25, !noundef !13
  invoke void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.aw)
          to label %bb.t unwind label %bb.o, !dbg !16784, !noalias !16721

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 112, !dbg !16788
  %i.ay = load i64, ptr %i.ax, align 16, !dbg !16788, !range !82, !alias.scope !16790, !noalias !16793, !noundef !13 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -9223372036854775780, !dbg !16788
  br i1 %i.az, label %bb.ai, label %bb.u, !dbg !16795

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.059.i, ptr noundef nonnull align 16 dereferenceable(112) %i.k, i64 112, i1 false), !dbg !16796, !noalias !16692
  %.sroa.963.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120, !dbg !16796
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120, !dbg !16797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.963.0..sroa_idx64.i, i64 24, i1 false), !dbg !16796, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16800, !noalias !16692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.l, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.059.i, i64 112, i1 false), !dbg !16784, !noalias !16692
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112, !dbg !16797
  store i64 %i.ay, ptr %.sroa.466.0..sroa_idx.i, align 16, !dbg !16797, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16801, !noalias !16692
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !16803
  %.val25.i = load i64, ptr %i.ba, align 8, !dbg !16803, !alias.scope !16686, !noalias !16721, !noundef !13 ; 3 uses
  %i.bb = icmp ult i64 %.val25.i, 28120036697727976, !dbg !16804
  call void @llvm.assume(i1 %i.bb), !dbg !16807
  %i.bc = icmp eq i64 %.val25.i, 0, !dbg !16808
  br i1 %i.bc, label %bb.v, label %bb.w, !dbg !16809

bb.v:                                             ; preds = %bb.u
  store i64 -9223372036854775808, ptr %i.j, align 8, !dbg !16810, !noalias !16692
  br label %bb.y, !dbg !16811

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16812, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16812, !noalias !16692
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !16812
  %.val26.i = load ptr, ptr %i.bd, align 8, !dbg !16812, !alias.scope !16686, !noalias !16721, !nonnull !13, !noundef !13 ; 2 uses
  %i.be = getelementptr inbounds nuw [328 x i8], ptr %.val26.i, i64 %.val25.i, !dbg !16813
  store ptr %.val26.i, ptr %i.h, align 8, !dbg !16817, !alias.scope !16822, !noalias !16825
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16817
  store ptr %i.be, ptr %i.bf, align 8, !dbg !16817, !alias.scope !16822, !noalias !16825
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !16817
  store ptr %i.av, ptr %i.bg, align 8, !dbg !16817, !alias.scope !16822, !noalias !16825
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !16817
  store ptr %i.ag, ptr %i.bh, align 8, !dbg !16817, !alias.scope !16822, !noalias !16825
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2h_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3N_4expr4Expr3sumNvMB3N_B4w_7cum_sumE0EB4w_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B5l_IB5j_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB4w_EB65_EINtNtNtB4_6traits7collect12FromIteratorIB5j_B4w_B65_EE9from_iterBQ_E0B75_EB2j_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3sumNvMB3y_B4h_7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i unwind label %bb.ah, !dbg !16828, !noalias !16679

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3sumNvMB3y_B4h_7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16833, !noalias !16692
  %i.bi = load i64, ptr %i.i, align 8, !dbg !16834, !range !34, !alias.scope !16836, !noalias !16839, !noundef !13 ; 2 uses
  %.not.i34.i = icmp eq i64 %i.bi, 18, !dbg !16834
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !16841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !dbg !16841, !noalias !16692
  br i1 %.not.i34.i, label %bb.x, label %bb.z, !dbg !16842

bb.x:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3sumNvMB3y_B4h_7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16843, !noalias !16692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, i64 24, i1 false), !dbg !16812, !noalias !16692
  br label %bb.y, !dbg !16811

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16844, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16846, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false), !dbg !16847, !noalias !16692
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 0, ptr %i.bk, align 16, !noalias !16848
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr7cum_sum(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.a, i1 noundef zeroext false)
          to label %bb.ac unwind label %bb.ab, !dbg !16852, !noalias !16679

bb.z:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB22_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3y_4expr4Expr3sumNvMB3y_B4h_7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecB4h_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB24_.exit.i
  %.sroa.971.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !16854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.971.0..sroa_idx72.i, i64 40, i1 false), !dbg !16854, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16843, !noalias !16692
  call void @llvm.experimental.noalias.scope.decl(metadata !16855), !dbg !16858
  store i64 %i.bi, ptr %0, align 16, !dbg !16861, !alias.scope !16863, !noalias !16714
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.274.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.i, i64 24, i1 false), !dbg !16861, !noalias !16714
  %.sroa.375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.i, i64 40, i1 false), !dbg !16861, !alias.scope !16865, !noalias !16714
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16861
  store i64 -9223372036854775780, ptr %i.bl, align 16, !dbg !16861, !alias.scope !16866, !noalias !16867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16868, !noalias !16692
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l)
          to label %bb.aa unwind label %bb.o, !dbg !16869, !noalias !16679

bb.aa:                                            ; preds = %bb.ai, %bb.z, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16869, !noalias !16692
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %bb.aj unwind label %.split.thread.i, !dbg !16774, !noalias !16679

bb.ab:                                            ; preds = %bb.ac, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load i64, ptr %i.j, align 8, !dbg !16870, !range !15751, !alias.scope !16872, !noalias !16692, !noundef !13
  %i.bo = icmp eq i64 %i.bn, -9223372036854775808, !dbg !16870
  br i1 %i.bo, label %.thread.i, label %bb.ag, !dbg !16870

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16852, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16875, !noalias !16692
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !16875
  store i32 0, ptr %2, align 4, !dbg !16875, !noalias !16692
  store i32 1, ptr %i.e, align 4, !dbg !16875, !noalias !16692
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr23fill_null_with_strategy(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.e)
          to label %bb.ad unwind label %bb.ab, !dbg !16876, !noalias !16679

.critedge21.thread.i:                             ; preds = %bb.ad
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i, !dbg !16877

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16878, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16878, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16879, !noalias !16692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.d, ptr noundef nonnull align 16 dereferenceable(144) %i.g, i64 144, i1 false), !dbg !16879, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16882, !noalias !16692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !16882, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16883, !noalias !16692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !16884, !noalias !16692
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16883
  store i32 0, ptr %.sroa.490.0..sroa_idx.i, align 8, !dbg !16883, !noalias !16692
  %.sroa.692.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16883
  store i8 %.sroa.9.8.copyload.i, ptr %.sroa.692.0..sroa_idx.i, align 8, !dbg !16883, !noalias !16692
  %.sroa.793.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 33, !dbg !16883
  store i8 0, ptr %.sroa.793.0..sroa_idx.i, align 1, !dbg !16883, !noalias !16692
  %.sroa.894.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 34, !dbg !16883
  store i8 1, ptr %.sroa.894.0..sroa_idx.i, align 2, !dbg !16883, !noalias !16692
  %.sroa.995.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 35, !dbg !16883
  store i8 0, ptr %.sroa.995.0..sroa_idx.i, align 1, !dbg !16883, !noalias !16692
  invoke void @_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr17over_with_optionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecBA_EBA_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, i8 noundef 0)
          to label %bb.ae unwind label %.critedge21.thread.i, !dbg !16885

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16886, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16886, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16886, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16877, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16868, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16869, !noalias !16692
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %.noexc8 unwind label %bb.am, !dbg !16774

.noexc8:                                          ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16774, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !16763, !noalias !16692
  br label %bb.an, !dbg !16887

bb.af:                                            ; preds = %bb.al, %bb.ah, %bb.ag, %.thread.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !16888, !noalias !16679
  unreachable, !dbg !16888

bb.ag:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread.i unwind label %bb.af, !dbg !16870, !noalias !16679

bb.ah:                                            ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l) #26
          to label %.thread.i unwind label %bb.af, !dbg !16869, !noalias !16679

bb.ai:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.059.i, ptr noundef nonnull align 16 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !16889, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16800, !noalias !16692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.059.i, i64 72, i1 false), !dbg !16890, !noalias !16714
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16890
  store i64 -9223372036854775780, ptr %i.bs, align 16, !dbg !16890, !alias.scope !16894, !noalias !16897
  br label %bb.aa, !dbg !16899

bb.aj:                                            ; preds = %bb.ak, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16774, !noalias !16692
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p)
          to label %.noexc9 unwind label %bb.am, !dbg !16763

.noexc9:                                          ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !16763, !noalias !16692
  br label %bb.an, !dbg !16718

bb.ak:                                            ; preds = %bb.n
  %.sroa.954.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !16901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.358.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.954.0..sroa_idx55.i, i64 40, i1 false), !dbg !16901, !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16775, !noalias !16692
  call void @llvm.experimental.noalias.scope.decl(metadata !16902), !dbg !16905
  store i64 %i.al, ptr %0, align 16, !dbg !16908, !alias.scope !16910, !noalias !16714
  %.sroa.257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.257.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !dbg !16908, !noalias !16714
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.358.i, i64 40, i1 false), !dbg !16908, !alias.scope !16912, !noalias !16714
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16908
  store i64 -9223372036854775780, ptr %i.bt, align 16, !dbg !16908, !alias.scope !16913, !noalias !16914
  br label %bb.aj, !dbg !16915

bb.al:                                            ; preds = %.split.thread.i, %bb.m
  %.pn17128.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.split.thread.i ], [ %.pn15.i, %bb.m ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p) #26
          to label %.body unwind label %bb.af, !dbg !16763, !noalias !16679

bb.am:                                            ; preds = %bb.aj, %bb.ae, %bb.j, %bb.i, %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !16673

.body:                                            ; preds = %bb.m, %bb.al, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.am ], [ %.pn15.i, %bb.m ], [ %.pn17128.i, %bb.al ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.s) #26
          to label %bb.ap unwind label %bb.ao, !dbg !16673

bb.an:                                            ; preds = %.noexc9, %.noexc8, %bb.k, %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.i), !dbg !16917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.375.i), !dbg !16917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.059.i), !dbg !16917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.752.i), !dbg !16917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.358.i), !dbg !16917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743.i), !dbg !16917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i), !dbg !16917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i), !dbg !16917
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.s), !dbg !16673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !16673
  br label %bb.d, !dbg !16674

bb.ao:                                            ; preds = %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !16918
  unreachable, !dbg !16918

bb.ap:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !16918
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast12ContactEntryEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16919 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !16920, !range !15751, !noundef !13
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !16920
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !16920

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast12ContactEntryEECshquuC4dCYVj_10polars_sql.exit, %bb.a
  ret void, !dbg !16920

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast12ContactEntryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast12ContactEntryEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.d, !dbg !16921

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCsaRr8xKSRVhT_9sqlparser3ast12ContactEntryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCsaRr8xKSRVhT_9sqlparser3ast12ContactEntryEECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.e, !dbg !16924

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !16921
  unreachable, !dbg !16921

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCsaRr8xKSRVhT_9sqlparser3ast12ContactEntryEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !16921

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast12ContactEntryEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCsaRr8xKSRVhT_9sqlparser3ast12ContactEntryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !16927
  br label %bb.b, !dbg !16920
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast13ExceptionWhenEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16929 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !16930, !range !15751, !noundef !13
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !16930
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !16930

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast13ExceptionWhenEECshquuC4dCYVj_10polars_sql.exit, %bb.a
  ret void, !dbg !16930

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast13ExceptionWhenENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast13ExceptionWhenEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.d, !dbg !16931

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCsaRr8xKSRVhT_9sqlparser3ast13ExceptionWhenENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCsaRr8xKSRVhT_9sqlparser3ast13ExceptionWhenEECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.e, !dbg !16934

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !16931
  unreachable, !dbg !16931

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCsaRr8xKSRVhT_9sqlparser3ast13ExceptionWhenEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !16931

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast13ExceptionWhenEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCsaRr8xKSRVhT_9sqlparser3ast13ExceptionWhenENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !16937
  br label %bb.b, !dbg !16930
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast13UtilityOptionEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16939 {
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor17apply_window_spec:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0102), !dbg !32693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !32693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !32693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %2, i64 144, i1 false), !dbg !32693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !32694
  store i64 %.sroa.08.0.copyload10, ptr %i.b, align 8, !dbg !32694
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !32694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx14, i64 16, i1 false), !dbg !32694
  store i64 %.sroa.776.sroa.0.0.copyload138, ptr %i.a, align 8, !dbg !32690
  %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !32690
  store i32 0, ptr %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx4.sroa_idx, align 8, !dbg !32690
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !32690
  store i8 %.sroa.978.8.copyload, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx, align 8, !dbg !32690
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33, !dbg !32690
  store i8 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx, align 1, !dbg !32690
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34, !dbg !32690
  store i8 1, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx4.sroa_idx, align 2, !dbg !32690
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 35, !dbg !32690
  store i8 0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx4.sroa_idx, align 1, !dbg !32690
  invoke void @_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr17over_with_optionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecBA_EBA_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i8 noundef 0)
          to label %bb.u unwind label %.critedge38.thread, !dbg !32695

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !32696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !32696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !32696
  call void @llvm.experimental.noalias.scope.decl(metadata !32697), !dbg !32693
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !32700
  %i.ay = load i64, ptr %i.ax, align 16, !dbg !32700, !range !82, !alias.scope !32702, !noalias !32697, !noundef !13 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -9223372036854775780, !dbg !32700
  br i1 %i.az, label %bb.x, label %bb.v, !dbg !32704

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0102, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !32705, !alias.scope !32706
  %.sroa.9106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !32705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7113, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9106.0..sroa_idx107, i64 24, i1 false), !dbg !32705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !32707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0108, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0102, i64 112, i1 false), !dbg !32693
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0102), !dbg !32708
  br label %bb.w, !dbg !32709

bb.w:                                             ; preds = %bb.ac, %bb.ae, %bb.v
  %.sroa.5.0.sink = phi i64 [ %i.ay, %bb.v ], [ %.sroa.5.0.copyload110, %bb.ac ], [ %i.bg, %bb.ae ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0108, i64 112, i1 false), !dbg !32710
  %.sroa.5.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !32710
  store i64 %.sroa.5.0.sink, ptr %.sroa.5.0..sroa_idx111, align 16, !dbg !32710
  %.sroa.7113.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !32710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7113.0..sroa_idx115, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7113, i64 24, i1 false), !dbg !32710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !32656
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.n)
          to label %bb.af unwind label %bb.e, !dbg !32589

bb.x:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.0102, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !32711, !alias.scope !32706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !32707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.0102, i64 72, i1 false), !dbg !32707
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !32712
  store i64 -9223372036854775780, ptr %i.ba, align 16, !dbg !32712, !alias.scope !32716, !noalias !32719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0102), !dbg !32708
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECshquuC4dCYVj_10polars_sql.exit50, !dbg !32721

bb.y:                                             ; preds = %bb.ak, %bb.ap, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECshquuC4dCYVj_10polars_sql.exit53
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !32723
  unreachable, !dbg !32723

bb.z:                                             ; preds = %bb.s
  %.sroa.10.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.h, i64 33, !dbg !32724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10.0..sroa_idx81, i64 39, i1 false), !dbg !32724, !alias.scope !32687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !32689
  %.sroa.283.sroa.2.0..sroa.283.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !32725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.283.sroa.2.0..sroa.283.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.776.sroa.7, i64 16, i1 false), !dbg !32689
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !32725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.485.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10, i64 39, i1 false), !dbg !32689
  call void @llvm.experimental.noalias.scope.decl(metadata !32729), !dbg !32732
  store i64 %i.au, ptr %0, align 16, !dbg !32725, !alias.scope !32733
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32725
  store i64 %.sroa.776.sroa.0.0.copyload138, ptr %.sroa.283.0..sroa_idx, align 8, !dbg !32725, !alias.scope !32733
  %.sroa.384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !32725
  store i8 %.sroa.978.8.copyload, ptr %.sroa.384.0..sroa_idx, align 16, !dbg !32725, !alias.scope !32733
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !32725
  store i64 -9223372036854775780, ptr %i.bc, align 16, !dbg !32725, !alias.scope !32735, !noalias !32729
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.776.sroa.7), !dbg !32692
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !32692
  %i.bd = load i64, ptr %i.k, align 8, !dbg !32736, !range !15751, !alias.scope !32738, !noundef !13
  %i.be = icmp eq i64 %i.bd, -9223372036854775808, !dbg !32736
  br i1 %i.be, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECshquuC4dCYVj_10polars_sql.exit50, label %bb.aa, !dbg !32736

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECshquuC4dCYVj_10polars_sql.exit50 unwind label %bb.h, !dbg !32736

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECshquuC4dCYVj_10polars_sql.exit50: ; preds = %bb.z, %bb.aa, %bb.x, %bb.ah
  %.sroa.023.6 = phi i8 [ 0, %bb.ah ], [ 0, %bb.x ], [ 1, %bb.aa ], [ 1, %bb.z ], !dbg !32569 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !32656
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(152) %i.n)
          to label %bb.ai unwind label %bb.e, !dbg !32589

bb.ab:                                            ; preds = %bb.q
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !32667
  store i64 %.sroa.08.0.copyload, ptr %i.g, align 8, !dbg !32741
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !32741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false), !dbg !32741
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.096), !dbg !32742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !32742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !32742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(144) %2, i64 144, i1 false), !dbg !32742
  invoke void @_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr4overINtNtCsgZ49sUHp3tW_5alloc3vec3VecBA_EBA_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.ad unwind label %.critedge38, !dbg !32744

bb.ac:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0108, ptr noundef nonnull align 16 dereferenceable(112) %2, i64 112, i1 false), !dbg !32745
  %.sroa.5.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %2, i64 112, !dbg !32745
  %.sroa.5.0.copyload110 = load i64, ptr %.sroa.5.0..sroa_idx109, align 16, !dbg !32745
  %.sroa.7113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %2, i64 120, !dbg !32745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7113, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7113.0..sroa_idx114, i64 24, i1 false), !dbg !32745
  br label %bb.w, !dbg !32745

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !32746
  call void @llvm.experimental.noalias.scope.decl(metadata !32747), !dbg !32742
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !32750
  %i.bg = load i64, ptr %i.bf, align 16, !dbg !32750, !range !82, !alias.scope !32752, !noalias !32747, !noundef !13 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, -9223372036854775780, !dbg !32750
  br i1 %i.bh, label %bb.ah, label %bb.ae, !dbg !32754

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.096, ptr noundef nonnull align 16 dereferenceable(112) %i.f, i64 112, i1 false), !dbg !32755, !alias.scope !32756
  %.sroa.9100.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !32755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7113, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9100.0..sroa_idx101, i64 24, i1 false), !dbg !32755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !32757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0108, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.096, i64 112, i1 false), !dbg !32742
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.096), !dbg !32758
  br label %bb.w, !dbg !32758

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !32589
  br label %bb.ag, !dbg !32568

bb.ag:                                            ; preds = %bb.aj, %bb.ai, %bb.af, %bb.c
  ret void, !dbg !32759

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.096, ptr noundef nonnull align 16 dereferenceable(72) %i.f, i64 72, i1 false), !dbg !32760, !alias.scope !32756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !32757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.096, i64 72, i1 false), !dbg !32757
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !32761
  store i64 -9223372036854775780, ptr %i.bi, align 16, !dbg !32761, !alias.scope !32765, !noalias !32768
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.096), !dbg !32758
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECshquuC4dCYVj_10polars_sql.exit50, !dbg !32721

bb.ai:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECshquuC4dCYVj_10polars_sql.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !32589
  %i.bj = trunc nuw i8 %.sroa.023.6 to i1, !dbg !32568
  br i1 %i.bj, label %bb.aj, label %bb.ag, !dbg !32568

bb.aj:                                            ; preds = %bb.am, %bb.ai
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %2), !dbg !32568
  br label %bb.ag, !dbg !32568

bb.ak:                                            ; preds = %.critedge38.thread128
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECshquuC4dCYVj_10polars_sql.exit53 unwind label %bb.y, !dbg !32674

bb.al:                                            ; preds = %bb.i
  %.sroa.763.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !32770
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.763.0..sroa_idx64, i64 64, i1 false), !dbg !32770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !32598
  call void @llvm.experimental.noalias.scope.decl(metadata !32775), !dbg !32778
  store i64 %i.v, ptr %0, align 16, !dbg !32771, !alias.scope !32779
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !32771
  store i64 -9223372036854775780, ptr %i.bk, align 16, !dbg !32771, !alias.scope !32781, !noalias !32775
  br label %bb.o, !dbg !32657

bb.am:                                            ; preds = %bb.an, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !32589
  br label %bb.aj, !dbg !32782

bb.an:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !32584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.755, i64 72, i1 false), !dbg !32584
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !32784
  store i64 -9223372036854775780, ptr %i.bl, align 16, !dbg !32784, !alias.scope !32788, !noalias !32791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.755), !dbg !32585
  br label %bb.am, !dbg !32793

bb.ao:                                            ; preds = %bb.ap, %bb.d
  resume { ptr, i32 } %.pn36, !dbg !32723

bb.ap:                                            ; preds = %bb.d
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %2) #26
          to label %bb.ao unwind label %bb.y, !dbg !32568
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19not_supported_error(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(144) %0, ptr nonnull captures(address, read_provenance) %.144.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32795 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !32796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !32796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !32797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !32798, !noalias !32804
  store i64 0, ptr %i.c, align 8, !dbg !32811, !noalias !32804
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !32811
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !32811, !noalias !32804
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !32811
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !32811, !noalias !32804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !32814, !noalias !32804
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !32816
  store i32 1610612768, ptr %1, align 8, !dbg !32816, !noalias !32804
  %.sroa.4.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !32816
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.a, align 4, !dbg !32816, !noalias !32804
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22, !dbg !32816
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !dbg !32816, !noalias !32804
  store ptr %i.c, ptr %i.b, align 8, !dbg !32816, !noalias !32804
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !32816
  store ptr @232, ptr %i.h, align 8, !dbg !32816, !noalias !32804
  %i.i = invoke noundef zeroext i1 @_RNvXs1N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_8FunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.144.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !dbg !32822, !noalias !32824

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.e, !dbg !32825, !noalias !32824

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %bb.g, !dbg !32827, !prof !12857

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #28
          to label %.noexc.i.i unwind label %bb.b, !dbg !32830, !noalias !32824

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !32832, !noalias !32824
  unreachable, !dbg !32832

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.l, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !32833

bb.f:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h, !dbg !32834

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !32836, !noalias !32837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !32838, !noalias !32804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !32839, !noalias !32804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !32840
  store ptr %i.e, ptr %i.d, align 8, !dbg !32840
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !32840
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !32840
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @165, ptr noundef nonnull %i.d)
          to label %_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format.exit unwind label %bb.f, !dbg !32843

_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format.exit:       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !32796
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.e), !dbg !32847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !32796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !32849, !alias.scope !32851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !32796
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32796
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.42.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @166), !dbg !32855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !32796
  store i64 11, ptr %0, align 16, !dbg !32796
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !32796
  store i64 -9223372036854775780, ptr %i.m, align 16, !dbg !32796
  ret void, !dbg !32857

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !32858
  unreachable, !dbg !32858
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor19resolve_window_spec(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32859 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [152 x i8], align 8               ; 5 uses
  %i.e = load i64, ptr %2, align 8, !dbg !32860, !range !15501, !noundef !13
  %i.f = icmp eq i64 %i.e, 4, !dbg !32860
  br i1 %i.f, label %bb.b, label %bb.h, !dbg !32861

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !32862 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !32863
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !32863
  %i.i = load ptr, ptr %i.h, align 8, !dbg !32863, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32865), !dbg !32868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32869), !dbg !32868
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 232, !dbg !32871
  %i.k = load i64, ptr %i.j, align 8, !dbg !32871, !alias.scope !32865, !noalias !32869, !noundef !13
  %i.l = icmp eq i64 %i.k, 0, !dbg !32885
  br i1 %i.l, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECshquuC4dCYVj_10polars_sql.exit, label %bb.c, !dbg !32885

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 208, !dbg !32863
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 240, !dbg !32886
  %i.o = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g), !dbg !32887 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32890), !dbg !32893
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32897), !dbg !32893
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32899), !dbg !32902
  %i.p = lshr i64 %i.o, 57, !dbg !32905
  %i.q = trunc nuw nsw i64 %i.p to i8, !dbg !32915
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 216, !dbg !32917
  %i.s = load i64, ptr %i.r, align 8, !dbg !32917, !alias.scope !32921, !noalias !32922, !noundef !13 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !alias.scope !32921, !noalias !32922, !nonnull !13, !noundef !13 ; 2 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !32922, !noalias !32923 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !32922, !noalias !32923, !nonnull !13
  br label %bb.d, !dbg !32924

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aq, %bb.e ], !dbg !32926
  %.pn.i.i.i = phi i64 [ %i.o, %bb.c ], [ %i.ar, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.s, !dbg !32926 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.0.i.i.i, !dbg !32927
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.y, align 1, !dbg !32932, !noalias !32948 ; 2 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.v, !dbg !32951
  %i.aa = bitcast <16 x i1> %i.z to i16, !dbg !32958 ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.aa, 0, !dbg !32964
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !32976

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i
  %.sroa.05.0.i34.i.i = phi i16 [ %i.ap, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i ], [ %i.aa, %bb.d ] ; 3 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i.i, i1 true), !dbg !32977
  %i.ac = zext nneg i16 %i.ab to i64, !dbg !32985
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac, !dbg !32986
  %i.ae = and i64 %i.ad, %i.s, !dbg !32986
  %i.af = sub nsw i64 0, %i.ae, !dbg !32988
  %i.ag = getelementptr inbounds [176 x i8], ptr %i.t, i64 %i.af, !dbg !33001 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -160, !dbg !33002
  %.val3.i.i.i = load i64, ptr %i.ah, align 8, !dbg !33002, !noalias !33003, !noundef !13
  %i.ai = icmp eq i64 %.val1.i.i.i.i, %.val3.i.i.i, !dbg !33006
  br i1 %i.ai, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i, !dbg !33006, !prof !33026

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.i.i: ; preds = %.lr.ph.i.i
  %i.aj = getelementptr i8, ptr %i.ag, i64 -168, !dbg !33002
  %.val2.i.i.i = load ptr, ptr %i.aj, align 8, !dbg !33002, !noalias !33003, !nonnull !13, !noundef !13
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val1.i.i.i.i), !dbg !33027, !noalias !33003
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0, !dbg !33027
  br i1 %i.ak, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECshquuC4dCYVj_10polars_sql.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i, !dbg !33031, !prof !33036

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i, %bb.d
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !33037
  %i.am = bitcast <16 x i1> %i.al to i16, !dbg !33043
  %i.an = icmp eq i16 %i.am, 0, !dbg !33046
  br i1 %i.an, label %bb.e, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECshquuC4dCYVj_10polars_sql.exit.i, !dbg !33046, !prof !12857

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.i.i, %.lr.ph.i.i
  %i.ao = add i16 %.sroa.05.0.i34.i.i, -1, !dbg !33048
  %i.ap = and i16 %i.ao, %.sroa.05.0.i34.i.i, !dbg !33051 ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ap, 0, !dbg !32964
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !32976

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.011.0.i.i.i, 16, !dbg !33055 ; 2 uses
  %i.ar = add i64 %.sroa.01.0.i.i.i, %i.aq, !dbg !33059
  br label %bb.d, !dbg !32924

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %._crit_edge.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.i.i
  %i.as = phi ptr [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CshquuC4dCYVj_10polars_sql.exit.i.i ], [ null, %._crit_edge.i.i ], !dbg !33060 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null, !dbg !33062
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -152, !dbg !33063
  %.sroa.0.1.i = select i1 %.not.i, ptr null, ptr %i.at, !dbg !33063
  br label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECshquuC4dCYVj_10polars_sql.exit, !dbg !33064

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECshquuC4dCYVj_10polars_sql.exit.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.1.i, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECshquuC4dCYVj_10polars_sql.exit.i ], [ null, %bb.b ], !dbg !33065
  call void @_RNvMs1_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionRNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecE6clonedCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(152) %.sroa.0.0.i), !dbg !33066
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33067), !dbg !33070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33071), !dbg !33070
  %i.au = load i64, ptr %i.d, align 8, !dbg !33073, !range !15501, !alias.scope !33071, !noalias !33076, !noundef !13
  %.not.i1 = icmp eq i64 %i.au, 4, !dbg !33073
  br i1 %.not.i1, label %bb.g, label %bb.f, !dbg !33078

bb.f:                                             ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECshquuC4dCYVj_10polars_sql.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull readonly align 8 dereferenceable(152) %i.d, i64 152, i1 false), !dbg !33079, !alias.scope !33081, !noalias !33082
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecE10ok_or_elseNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2s_18SQLFunctionVisitor19resolve_window_spec0EB2u_.exit, !dbg !33083

bb.g:                                             ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECshquuC4dCYVj_10polars_sql.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !33084, !noalias !33085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33086), !dbg !33084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33089, !noalias !33093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33095, !noalias !33093
  store ptr %i.g, ptr %i.a, align 8, !dbg !33095, !noalias !33093
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !33095
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !33095, !noalias !33093
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @72, ptr noundef nonnull %i.a), !dbg !33098, !noalias !33102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33089, !noalias !33093
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !33103
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @73), !dbg !33109, !noalias !33081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33089, !noalias !33093
  store i64 11, ptr %i.c, align 8, !dbg !33103, !alias.scope !33111, !noalias !33115
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !33116, !noalias !33117
  store i64 4, ptr %0, align 8, !dbg !33116, !alias.scope !33067, !noalias !33117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33118, !noalias !33085
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecE10ok_or_elseNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2s_18SQLFunctionVisitor19resolve_window_spec0EB2u_.exit, !dbg !33118
end_hunk_1
begin_hunk_2_@_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor23apply_aggregate_clauses:bb.a
  unreachable, !dbg !33600

bb.m:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.m) #26
          to label %.body.thread unwind label %bb.l, !dbg !33565, !noalias !33601

_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor32apply_order_by_to_distinct_array.exit: ; preds = %.noexc26, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !33602
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 112, !dbg !33603
  %i.ar = load i64, ptr %i.aq, align 16, !dbg !33603, !range !82, !alias.scope !33605, !noalias !33608, !noundef !13 ; 2 uses
  %i.as = icmp eq i64 %i.ar, -9223372036854775780, !dbg !33603
  br i1 %i.as, label %bb.o, label %bb.n, !dbg !33610

bb.n:                                             ; preds = %_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor32apply_order_by_to_distinct_array.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.033, ptr noundef nonnull align 16 dereferenceable(112) %i.n, i64 112, i1 false), !dbg !33611
  %.sroa.9.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.n, i64 120, !dbg !33611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx36, i64 24, i1 false), !dbg !33611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !33612
  br label %.sink.split, !dbg !33613

bb.o:                                             ; preds = %_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor32apply_order_by_to_distinct_array.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.033, ptr noundef nonnull align 16 dereferenceable(72) %i.n, i64 72, i1 false), !dbg !33614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !33612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.033, i64 72, i1 false), !dbg !33612
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !33615
  store i64 -9223372036854775780, ptr %i.at, align 16, !dbg !33615, !alias.scope !33619, !noalias !33622
  br label %bb.p, !dbg !33546

bb.p:                                             ; preds = %bb.h, %bb.o, %bb.ab, %.thread100
  ret void, !dbg !33624

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !33625
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.047), !dbg !33626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !33626
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !33627
  %i.av = load ptr, ptr %i.au, align 8, !dbg !33627, !nonnull !13, !align !25, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !33628
  %i.ax = load ptr, ptr %i.aw, align 16, !dbg !33628, !align !25, !noundef !13
  invoke void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.015.0.lcssa89, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.ax)
          to label %bb.r unwind label %.body, !dbg !33626

.thread100:                                       ; preds = %._crit_edge.thread, %bb.x, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %2, i64 144, i1 false), !dbg !33629
  br label %bb.p, !dbg !33499

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !33630), !dbg !33626
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 112, !dbg !33633
  %i.az = load i64, ptr %i.ay, align 16, !dbg !33633, !range !82, !alias.scope !33635, !noalias !33630, !noundef !13 ; 4 uses
  %i.ba = icmp eq i64 %i.az, -9223372036854775780, !dbg !33633
  br i1 %i.ba, label %bb.ad, label %bb.s, !dbg !33637

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.047, ptr noundef nonnull align 16 dereferenceable(112) %i.i, i64 112, i1 false), !dbg !33638, !alias.scope !33639
  %.sroa.951.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.i, i64 120, !dbg !33638
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120, !dbg !33640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.951.0..sroa_idx52, i64 24, i1 false), !dbg !33638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !33643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.j, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.047, i64 112, i1 false), !dbg !33626
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112, !dbg !33640
  store i64 %i.az, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !33640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.047), !dbg !33644
  %i.bb = icmp ne i64 %i.az, -9223372036854775795, !dbg !33645
  call void @llvm.assume(i1 %i.bb), !dbg !33645
  %i.bc = icmp eq i64 %i.az, -9223372036854775804, !dbg !33647
  br i1 %i.bc, label %bb.t, label %bb.y, !dbg !33647

bb.t:                                             ; preds = %bb.s
  %i.bd = load i8, ptr %i.j, align 16, !dbg !33645, !range !21342, !noundef !13 ; 2 uses
  %i.be = icmp ne i8 %i.bd, 32, !dbg !33645
  call void @llvm.assume(i1 %i.be), !dbg !33645
  %i.bf = icmp eq i8 %i.bd, 31, !dbg !33647
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bh = load i64, ptr %i.bg, align 16, !range !18647
  %i.bi = icmp eq i64 %i.bh, 1, !dbg !33647
  %or.cond = select i1 %i.bf, i1 %i.bi, i1 false, !dbg !33647
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bk = load i128, ptr %i.bj, align 16          ; 2 uses
  %i.bl = icmp sgt i128 %i.bk, -1
  %or.cond6 = select i1 %or.cond, i1 %i.bl, i1 false, !dbg !33647
  br i1 %or.cond6, label %bb.u, label %bb.y, !dbg !33647

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !33648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !33648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.g, ptr noundef nonnull align 16 dereferenceable(144) %2, i64 144, i1 false), !dbg !33648
  %i.bm = trunc i128 %i.bk to i64, !dbg !33650
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr4head(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.h, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.g, i64 noundef 1, i64 %i.bm)
          to label %bb.w unwind label %bb.v, !dbg !33651

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.u
  %.sroa.017.3 = phi i1 [ false, %bb.u ], [ true, %bb.y ], [ true, %bb.z ], !dbg !33529
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.j) #26
          to label %bb.b unwind label %bb.ac, !dbg !33652

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %2, ptr noundef nonnull align 16 dereferenceable(144) %i.h, i64 144, i1 false), !dbg !33654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !33653
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.j)
          to label %bb.x unwind label %.body, !dbg !33652

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !33652
  br label %.thread100, !dbg !33655

bb.y:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !33656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !33656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !33656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !33657
  store ptr %i.q, ptr %i.c, align 8, !dbg !33657
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !33657
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsh6mDDnHa5nR_14rustc_demangle, ptr %.sroa.462.0..sroa_idx, align 8, !dbg !33657
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @175, ptr noundef nonnull %i.c)
          to label %bb.z unwind label %bb.v, !dbg !33660

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !33664, !alias.scope !33666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !33656
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @176)
          to label %bb.aa unwind label %bb.v, !dbg !33670

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !33656
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.459.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !33656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !33656
  store i64 12, ptr %0, align 16, !dbg !33656
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !33656
  store i64 -9223372036854775780, ptr %i.bo, align 16, !dbg !33656
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.j)
          to label %bb.ab unwind label %.body, !dbg !33652

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !33652
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %2), !dbg !33499
  br label %bb.p, !dbg !33499

bb.ac:                                            ; preds = %bb.ah, %bb.v
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !33672
  unreachable, !dbg !33672

bb.ad:                                            ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.047, ptr noundef nonnull align 16 dereferenceable(72) %i.i, i64 72, i1 false), !dbg !33673, !alias.scope !33639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !33643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.047, i64 72, i1 false), !dbg !33643
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !33674
  store i64 -9223372036854775780, ptr %i.bq, align 16, !dbg !33674, !alias.scope !33678, !noalias !33681
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.047), !dbg !33644
  br label %bb.ab, !dbg !33683

bb.ae:                                            ; preds = %bb.ag, %bb.af, %.lr.ph
  %.sroa.015.1 = phi ptr [ %.sroa.015.077, %.lr.ph ], [ %.sroa.015.077, %bb.ag ], [ %i.bs, %bb.af ], !dbg !33685 ; 4 uses
  %.sroa.6.1 = phi i64 [ %.sroa.6.078, %.lr.ph ], [ %.val25, %bb.ag ], [ %.sroa.6.078, %bb.af ], !dbg !33686 ; 3 uses
  %.sroa.08.1 = phi ptr [ %.sroa.08.079, %.lr.ph ], [ %.val, %bb.ag ], [ %.sroa.08.079, %bb.af ], !dbg !33686 ; 4 uses
  %i.br = icmp eq ptr %i.u, %i.s, !dbg !33490
  br i1 %i.br, label %._crit_edge, label %.lr.ph, !dbg !33498

bb.af:                                            ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.076, i64 8, !dbg !33687
  br label %bb.ae, !dbg !33688

bb.ag:                                            ; preds = %.lr.ph
  %i.bt = getelementptr i8, ptr %.sroa.0.076, i64 16, !dbg !33689
  %.val = load ptr, ptr %i.bt, align 8, !dbg !33689, !nonnull !13, !noundef !13
  %i.bu = getelementptr i8, ptr %.sroa.0.076, i64 24, !dbg !33689
  %.val25 = load i64, ptr %i.bu, align 8, !dbg !33689, !noundef !13
  br label %bb.ae, !dbg !33691

.body.thread:                                     ; preds = %bb.m, %bb.ah, %bb.b
  %.pn63 = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %.pn64, %bb.ah ], [ %i.bn, %bb.b ]
  resume { ptr, i32 } %.pn63, !dbg !33672

bb.ah:                                            ; preds = %.body, %bb.b
  %.pn64 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.bn, %bb.b ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %2) #26
          to label %.body.thread unwind label %bb.ac, !dbg !33499
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor24parse_order_by_in_window(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr %.152.val, ptr nofree readonly captures(address, read_provenance) %.160.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 6987403058223316) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33692 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [144 x i8], align 16              ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 8 uses
  %.sroa.02 = alloca [112 x i8], align 16         ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = icmp eq i64 %2, 0, !dbg !33693
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !33696

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33697
  store i64 0, ptr %3, align 8, !dbg !33697
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33697
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !dbg !33697
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33697
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !dbg !33697
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33697
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !33697
  store i64 18, ptr %0, align 8, !dbg !33697
  br label %bb.f, !dbg !33698

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1312, !dbg !33700
  %i.g = load i8, ptr %i.f, align 8, !dbg !33700, !range !17354, !noundef !13
  %.sroa.02.0.i = icmp ne i8 %i.g, 0, !dbg !33701 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !33703
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33705), !dbg !33708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33709, !noalias !33705
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 6987403058223316) %2, i1 noundef zeroext false, i64 noundef 16, i64 noundef 144), !dbg !33709, !noalias !33705
  %i.h = load i64, ptr %i.a, align 8, !dbg !33709, !range !17352, !noalias !33705, !noundef !13
  %i.i = trunc nuw i64 %i.h to i1, !dbg !33714
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !33715
  %i.k = load i64, ptr %i.j, align 8, !dbg !33715, !range !15751, !noalias !33705, !noundef !13 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !33715 ; 2 uses
  br i1 %i.i, label %bb.d, label %.lr.ph, !dbg !33714, !prof !12857

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !dbg !33716, !noalias !33705
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #28, !dbg !33717, !noalias !33705
  unreachable, !dbg !33717

bb.e:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !33718

.body:                                            ; preds = %bb.m, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.ag, %bb.m ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %bb.r unwind label %bb.q, !dbg !33718

.lr.ph:                                           ; preds = %bb.c
  %i.o = load ptr, ptr %i.l, align 8, !dbg !33719, !noalias !33705, !nonnull !13, !noundef !13
  %i.p = icmp ule i64 %2, %i.k, !dbg !33720
  tail call void @llvm.assume(i1 %i.p), !dbg !33722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33724, !noalias !33705
  store i64 %i.k, ptr %i.d, align 8, !dbg !33725, !alias.scope !33705
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !33725 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !dbg !33725, !alias.scope !33705
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !33725 ; 3 uses
  store i64 0, ptr %i.r, align 8, !dbg !33725, !alias.scope !33705
  %.idx = mul nuw nsw i64 %2, 1320, !dbg !33726
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !33726
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.9.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.g, !dbg !33732

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE4pushCshquuC4dCYVj_10polars_sql.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !33736
  %i.v = xor i1 %.sroa.02.0.i, true, !dbg !33737
  %i.w = zext i1 %i.v to i8, !dbg !33738
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33735
  store i8 %i.w, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !33735
  store i64 18, ptr %0, align 8, !dbg !33735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !33718
  br label %bb.f, !dbg !33739

bb.f:                                             ; preds = %bb.p, %._crit_edge, %bb.b
  ret void, !dbg !33739

bb.g:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE4pushCshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.010 = phi ptr [ %1, %.lr.ph ], [ %i.x, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE4pushCshquuC4dCYVj_10polars_sql.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 1320, !dbg !33740 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 1312, !dbg !33742
  %i.z = load i8, ptr %i.y, align 8, !dbg !33742, !range !17354, !noundef !13
  %.sroa.02.0.i10 = icmp ne i8 %i.z, 0, !dbg !33744
  %i.aa = xor i1 %.sroa.02.0.i, %.sroa.02.0.i10, !dbg !33746
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !33746

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02), !dbg !33747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !33747
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.152.val) ]
  invoke void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.010, ptr noalias noundef nonnull align 8 dereferenceable(248) %.152.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %.160.val)
          to label %bb.j unwind label %bb.e, !dbg !33747

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @178, i64 72, i1 false), !dbg !33748
  br label %bb.p, !dbg !33749

bb.j:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !33751), !dbg !33747
  %i.ab = load i64, ptr %i.t, align 16, !dbg !33754, !range !82, !alias.scope !33756, !noalias !33751, !noundef !13 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, -9223372036854775780, !dbg !33754
  br i1 %i.ac, label %bb.o, label %bb.k, !dbg !33758

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.02, ptr noundef nonnull align 16 dereferenceable(112) %i.c, i64 112, i1 false), !dbg !33759, !alias.scope !33760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx5, i64 24, i1 false), !dbg !33759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.02, i64 112, i1 false), !dbg !33747
  store i64 %i.ab, ptr %.sroa.7.0..sroa_idx, align 16, !dbg !33747
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02), !dbg !33762
  %i.ad = load i64, ptr %i.r, align 8, !dbg !33763, !alias.scope !33767, !noalias !33772, !noundef !13 ; 3 uses
  %i.ae = load i64, ptr %i.d, align 8, !dbg !33775, !range !12907, !alias.scope !33767, !noalias !33772, !noundef !13
  %i.af = icmp eq i64 %i.ad, %i.ae, !dbg !33778
  br i1 %i.af, label %bb.l, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE4pushCshquuC4dCYVj_10polars_sql.exit, !dbg !33778

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE4pushCshquuC4dCYVj_10polars_sql.exit unwind label %bb.m, !dbg !33779, !noalias !33772

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.b) #26
          to label %.body unwind label %bb.n, !dbg !33780

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !33781
  unreachable, !dbg !33781

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE4pushCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.k, %bb.l
  %i.ai = load ptr, ptr %i.q, align 8, !dbg !33782, !alias.scope !33767, !noalias !33772, !nonnull !13, !noundef !13
  %i.aj = getelementptr inbounds nuw [144 x i8], ptr %i.ai, i64 %i.ad, !dbg !33787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.aj, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false), !dbg !33789
  %i.ak = add i64 %i.ad, 1, !dbg !33791
  store i64 %i.ak, ptr %i.r, align 8, !dbg !33791, !alias.scope !33767, !noalias !33772
  %i.al = icmp eq ptr %i.x, %i.s, !dbg !33792
  br i1 %i.al, label %._crit_edge, label %bb.g, !dbg !33732

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.02, ptr noundef nonnull align 16 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !33794, !alias.scope !33760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.02, i64 72, i1 false), !dbg !33761
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02), !dbg !33762
  br label %bb.p, !dbg !33749

bb.p:                                             ; preds = %bb.o, %bb.i
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.d), !dbg !33718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !33718
  br label %bb.f, !dbg !33698

bb.q:                                             ; preds = %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !33795
  unreachable, !dbg !33795

bb.r:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !33795
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5_18SQLFunctionVisitor28visit_window_offset_function(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 16 dereferenceable(176) %1, i64 noundef range(i64 -1, 2) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33796 {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [144 x i8], align 16              ; 4 uses
  %i.l = alloca [144 x i8], align 16              ; 5 uses
  %i.m = alloca [144 x i8], align 16              ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 2 uses
  %i.s = alloca [144 x i8], align 16              ; 8 uses
  %.sroa.0103 = alloca [112 x i8], align 16       ; 7 uses
  %i.t = alloca [144 x i8], align 16              ; 13 uses
  %i.u = alloca [144 x i8], align 16              ; 8 uses
  %.sroa.094 = alloca [112 x i8], align 16        ; 7 uses
  %i.v = alloca [144 x i8], align 16              ; 9 uses
  %i.w = alloca [144 x i8], align 16              ; 4 uses
  %i.x = alloca [144 x i8], align 16              ; 7 uses
  %i.y = alloca [144 x i8], align 16              ; 6 uses
  %i.z = alloca [144 x i8], align 16              ; 8 uses
  %.sroa.085 = alloca [112 x i8], align 16        ; 7 uses
  %.sroa.077 = alloca [112 x i8], align 16        ; 7 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 6 uses
  %i.aa = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.772 = alloca [24 x i8], align 8          ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [152 x i8], align 8              ; 7 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 6 uses
  %i.ah = alloca [152 x i8], align 8              ; 9 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !33797
  %i.al = load ptr, ptr %i.ak, align 16, !dbg !33797, !nonnull !13, !align !25, !noundef !13 ; 7 uses
  %.val16 = load i64, ptr %i.al, align 8, !dbg !33798, !range !65, !noundef !13
  %.not.i17 = icmp eq i64 %.val16, 5, !dbg !33799
  br i1 %.not.i17, label %bb.b, label %_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowTypeE6unwrapCshquuC4dCYVj_10polars_sql.exit, !dbg !33797, !prof !12857
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_13RefUnwindSafeNtNtB2d_6marker4SendNtB42_4SyncEL_EE9put_valueCshquuC4dCYVj_10polars_sql:bb.a

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !34347
  %exitcond.not = icmp eq i32 %i.i, 10, !dbg !34394
  br i1 %exitcond.not, label %bb.f, label %bb.g, !dbg !34293

bb.t:                                             ; preds = %.body, %bb.u
  %.pn14 = phi { ptr, i32 } [ %i.y, %.body ], [ %lpad.phi, %bb.u ]
  resume { ptr, i32 } %.pn14, !dbg !34393

.loopexit:                                        ; preds = %bb.r, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.d, %bb.j, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEECshquuC4dCYVj_10polars_sql(ptr %1) #26
          to label %bb.t unwind label %bb.q, !dbg !34305
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27442 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = ptrtoint ptr %2 to i64, !dbg !34397      ; 2 uses
  %i.c = and i64 %i.b, 1, !dbg !34401
  %.not = icmp eq i64 %i.c, 0, !dbg !34401
  %i.d = lshr i64 %i.b, 1, !dbg !34401            ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34403), !dbg !34406
  br i1 %.not, label %bb.e, label %bb.b, !dbg !34407

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34409), !dbg !34412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34414), !dbg !34417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !34420, !noalias !34433
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !34420, !noalias !34433
  %i.e = load i64, ptr %i.a, align 8, !dbg !34420, !range !17352, !noalias !34433, !noundef !13
  %i.f = trunc nuw i64 %i.e to i1, !dbg !34440
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !34441
  %i.h = load i64, ptr %i.g, align 8, !dbg !34441, !range !15751, !noalias !34433, !noundef !13 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !34441 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshquuC4dCYVj_10polars_sql.exit.i.i.i.i, !dbg !34440, !prof !12857

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !dbg !34442, !noalias !34433
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #28, !dbg !34443, !noalias !34433
  unreachable, !dbg !34443

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshquuC4dCYVj_10polars_sql.exit.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !dbg !34444, !noalias !34433, !nonnull !13, !noundef !13 ; 2 uses
  %i.l = icmp ule i64 %i.d, %i.h, !dbg !34445
  tail call void @llvm.assume(i1 %i.l), !dbg !34447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !34449, !noalias !34433
  %.not.i.i.i.i = icmp eq i64 %i.d, 0, !dbg !34450
  br i1 %.not.i.i.i.i, label %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCshquuC4dCYVj_10polars_sql.exit.i, label %bb.d, !dbg !34450

bb.d:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshquuC4dCYVj_10polars_sql.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !dbg !34451, !noalias !34454
  br label %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCshquuC4dCYVj_10polars_sql.exit.i, !dbg !34455

_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.d, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshquuC4dCYVj_10polars_sql.exit.i.i.i.i
  store i64 %i.h, ptr %0, align 8, !dbg !34456, !alias.scope !34459, !noalias !34460
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34456
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !34456, !alias.scope !34459, !noalias !34460
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34456
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !34456, !alias.scope !34459, !noalias !34460
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshquuC4dCYVj_10polars_sql.exit, !dbg !34412

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !34461, !noalias !34463
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshquuC4dCYVj_10polars_sql.exit, !dbg !34464

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCshquuC4dCYVj_10polars_sql.exit.i, %bb.e
  ret void, !dbg !34465
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RNvNtCshquuC4dCYVj_10polars_sql9functions12extract_args(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !34466 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.7 = alloca [56 x i8], align 8            ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !34467
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !34467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !34467
  call fastcc void @_RNvNtCshquuC4dCYVj_10polars_sql9functions18__extract_func_args(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1, i1 noundef zeroext false, i1 noundef zeroext false), !dbg !34467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34468), !dbg !34467
  %i.d = load i64, ptr %i.a, align 8, !dbg !34471, !range !34, !alias.scope !34473, !noalias !34468, !noundef !13 ; 2 uses
  %.not.i = icmp eq i64 %i.d, 18, !dbg !34471
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !34475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !34475, !alias.scope !34476
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !34477

bb.b:                                             ; preds = %bb.a
  %.sroa.9.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !34478
  %.sroa.9.0.copyload4 = load i64, ptr %.sroa.9.0..sroa_idx3, align 8, !dbg !34478, !alias.scope !34476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !34479
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i64 56, i1 false), !dbg !34479
  store i64 %i.d, ptr %0, align 8, !dbg !34480, !alias.scope !34486
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !34480
  store i64 %.sroa.9.0.copyload4, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !34480, !alias.scope !34486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !34490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !34490
  br label %bb.f, !dbg !34491

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !34479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i64 56, i1 false), !dbg !34467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !34492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !dbg !34492
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !34490
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast22FunctionArgumentClauseEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.f)
          to label %bb.e unwind label %bb.d, !dbg !34490

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.c) #26
          to label %bb.h unwind label %bb.g, !dbg !34493

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !34490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !34490
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !34496
  store i64 18, ptr %0, align 8, !dbg !34494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !34493
  br label %bb.f, !dbg !34491

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void, !dbg !34491

bb.g:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !34497
  unreachable, !dbg !34497

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g, !dbg !34497
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RNvNtCshquuC4dCYVj_10polars_sql9functions18__extract_func_args(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !34498 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [31 x i8], align 1            ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !34499
  %i.k = load i64, ptr %i.j, align 8, !dbg !34499, !range !17044, !noundef !13 ; 2 uses
  %i.l = xor i64 %i.k, -9223372036854775808, !dbg !34499
  %i.m = icmp slt i64 %i.k, 0, !dbg !34499
  %i.n = select i1 %i.m, i64 %i.l, i64 2, !dbg !34499
  switch i64 %i.n, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ], !dbg !34500, !prof !34501

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !34499

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !34502
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !34502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !34503
  store ptr %i.o, ptr %i.a, align 8, !dbg !34503
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !34503
  store ptr @_RNvXsc_NtCsaRr8xKSRVhT_9sqlparser3astNtB5_10ObjectNameNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8, !dbg !34503
  call fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull @217, ptr noundef nonnull %i.a) #29, !dbg !34502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !34502
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34506
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.439.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @218), !dbg !34507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !34502
  store i64 11, ptr %0, align 8, !dbg !34506
  br label %bb.f, !dbg !34509

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 280, !dbg !34510
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 304, !dbg !34511
  %i.r = load i8, ptr %i.q, align 8, !dbg !34511, !range !17354, !noundef !13 ; 3 uses
  %.not8 = icmp eq i8 %i.r, 2, !dbg !34511
  br i1 %.not8, label %bb.j, label %bb.i, !dbg !34515

bb.e:                                             ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34516
  store i64 0, ptr %4, align 8, !dbg !34516
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34516
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.04.sroa.4.0..sroa_idx, align 8, !dbg !34516
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !34516
  store i64 0, ptr %.sroa.04.sroa.5.0..sroa_idx, align 8, !dbg !34516
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !34516
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !34516
  %.sroa.56.sroa.3.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !34516
  store i64 0, ptr %.sroa.56.sroa.3.0..sroa.56.0..sroa_idx.sroa_idx, align 8, !dbg !34516
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !34516
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx, align 8, !dbg !34516
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !34516
  store i64 0, ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx, align 8, !dbg !34516
  store i64 18, ptr %0, align 8, !dbg !34516
  br label %bb.f, !dbg !34517

bb.f:                                             ; preds = %bb.n, %_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast22FunctionArgumentClauseEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit, %bb.p, %bb.e, %bb.c
  ret void, !dbg !34518

bb.g:                                             ; preds = %bb.o
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !34519
  unreachable, !dbg !34519

bb.h:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.af, !dbg !34519

bb.i:                                             ; preds = %bb.d
  %i.t = xor i8 %i.r, 1, !dbg !34515              ; 2 uses
  br i1 %3, label %bb.l, label %bb.k, !dbg !34520

bb.j:                                             ; preds = %bb.d
  br i1 %3, label %bb.l, label %bb.m, !dbg !34520

bb.k:                                             ; preds = %bb.i
  %i.u = trunc nuw i8 %i.r to i1, !dbg !34515
  %or.cond.not = or i1 %2, %i.u, !dbg !34522
  br i1 %or.cond.not, label %bb.m, label %bb.n, !dbg !34522, !prof !34523

bb.l:                                             ; preds = %bb.m, %bb.j, %bb.i
  %.sroa.0.0 = phi i8 [ %i.t, %bb.i ], [ %.sroa.0.1, %bb.m ], [ 0, %bb.j ], !dbg !34515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !34524
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 264, !dbg !34525
  %.val = load ptr, ptr %i.v, align 8, !dbg !34525, !nonnull !13, !noundef !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 272, !dbg !34525
  %.val11 = load i64, ptr %i.w, align 8, !dbg !34525, !noundef !13
  %i.x = getelementptr inbounds nuw [784 x i8], ptr %.val, i64 %.val11, !dbg !34526
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterNtBX_11FunctionArgENCNvNtCshquuC4dCYVj_10polars_sql9functions18__extract_func_args0EE9from_iterB3K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %.val, ptr noundef nonnull %i.x), !dbg !34535
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !34540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !34542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !34542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !34543
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast22FunctionArgumentClauseENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.p unwind label %bb.o, !dbg !34544

bb.m:                                             ; preds = %bb.j, %bb.k
  %.sroa.0.1 = phi i8 [ %i.t, %bb.k ], [ 0, %bb.j ], !dbg !34515
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 296, !dbg !34545
  %.val12 = load i64, ptr %i.y, align 8, !dbg !34545, !noundef !13 ; 2 uses
  %i.z = icmp ult i64 %.val12, 27450512014448738, !dbg !34546
  tail call void @llvm.assume(i1 %i.z), !dbg !34552
  %i.aa = icmp eq i64 %.val12, 0, !dbg !34553
  br i1 %i.aa, label %bb.l, label %_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast22FunctionArgumentClauseEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit, !dbg !34554, !prof !15376

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !34555
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !34555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !34556
  store ptr %i.ab, ptr %i.h, align 8, !dbg !34556
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !34556
  store ptr @_RNvXsc_NtCsaRr8xKSRVhT_9sqlparser3astNtB5_10ObjectNameNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8, !dbg !34556
  call fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull @219, ptr noundef nonnull %i.h) #29, !dbg !34555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !34555
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34555
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.421.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220), !dbg !34559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !34555
  store i64 12, ptr %0, align 8, !dbg !34555
  br label %bb.f, !dbg !34555

_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast22FunctionArgumentClauseEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !34561
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !34561
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !34562
  %.val13 = load ptr, ptr %i.ad, align 8, !dbg !34562, !nonnull !13, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !34563
  store ptr %i.ac, ptr %i.f, align 8, !dbg !34563
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !34563
  store ptr @_RNvXsc_NtCsaRr8xKSRVhT_9sqlparser3astNtB5_10ObjectNameNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8, !dbg !34563
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !34563
  store ptr %.val13, ptr %i.ae, align 8, !dbg !34563
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !34563
  store ptr @_RNvXs1Q_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8, !dbg !34563
  call fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull @221, ptr noundef nonnull %i.f) #29, !dbg !34561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !34561
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34561
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.429.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @222), !dbg !34566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !34561
  store i64 12, ptr %0, align 8, !dbg !34561
  br label %bb.f, !dbg !34568

bb.o:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %bb.h unwind label %bb.g, !dbg !34570

bb.p:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !34540
  %.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 7, !dbg !34540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !34540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !34570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !34570
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !34571
  store i8 %.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !34571
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !34571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5, i64 31, i1 false), !dbg !34571
  store i64 18, ptr %0, align 8, !dbg !34571
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !34572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !34573
  br label %bb.f, !dbg !34574
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXNtNtCscgRAwXFJnXP_4core5clone6uninitNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorNtB2_8CopySpec9clone_oneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1336) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1336)) %1) unnamed_addr #1 !dbg !34575 {
bb.a:
  %i.a = alloca [1336 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !34580
  call fastcc void @_RNvXs7p_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_11TableFactorNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1336) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1336) %0) #29, !dbg !34581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1336) %1, ptr noundef nonnull align 8 dereferenceable(1336) %i.a, i64 1336, i1 false), !dbg !34582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !34585
  ret void, !dbg !34586
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXNtNtCscgRAwXFJnXP_4core5clone6uninitNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableSampleNtB2_8CopySpec9clone_oneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1248) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !34587 {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.522 = alloca [320 x i8], align 8         ; 2 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [320 x i8], align 8           ; 2 uses
  %i.f = alloca [488 x i8], align 8               ; 9 uses
  %i.g = alloca [88 x i8], align 8                ; 8 uses
  %i.h = alloca [336 x i8], align 8               ; 9 uses
  %.sroa.0.sroa.0 = alloca [336 x i8], align 8    ; 4 uses
  %.sroa.0.sroa.6 = alloca [488 x i8], align 8    ; 4 uses
  %.sroa.0.sroa.7 = alloca [88 x i8], align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0), !dbg !34588
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.6), !dbg !34588
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.7), !dbg !34588
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34589), !dbg !34592
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1240, !dbg !34593
  %.val.i = load i8, ptr %i.i, align 8, !dbg !34593, !range !17353, !alias.scope !34589, !noalias !34599, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1241, !dbg !34601
  %.val3.i = load i8, ptr %i.j, align 1, !dbg !34601, !range !22698, !alias.scope !34589, !noalias !34599, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !34602, !noalias !34603
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34604), !dbg !34602
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34607), !dbg !34602
  %i.k = load i64, ptr %0, align 8, !dbg !34609, !range !17275, !alias.scope !34607, !noalias !34613, !noundef !13
  %.not.i8 = icmp eq i64 %i.k, 69, !dbg !34609
  br i1 %.not.i8, label %bb.b, label %_RNvXs85_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_19TableSampleQuantityNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !34614

_RNvXs85_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_19TableSampleQuantityNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !34615
  %i.m = load i8, ptr %i.l, align 8, !dbg !34615, !range !17353, !alias.scope !34620, !noalias !34623, !noundef !13
  call fastcc void @_RNvXs7L_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1248) %0) #29, !dbg !34625, !noalias !34599
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 329, !dbg !34626
  %.val.i.i9 = load i8, ptr %i.n, align 1, !dbg !34626, !range !17354, !alias.scope !34620, !noalias !34623, !noundef !13
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 328, !dbg !34627
  store i8 %i.m, ptr %.sroa.427.0..sroa_idx, align 8, !dbg !34627, !noalias !34628
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 329, !dbg !34627
  store i8 %.val.i.i9, ptr %.sroa.528.0..sroa_idx, align 1, !dbg !34627, !noalias !34628
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query19TableSampleQuantityENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !34629

bb.b:                                             ; preds = %bb.a
  store i64 69, ptr %i.h, align 8, !dbg !34630, !alias.scope !34604, !noalias !34628
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query19TableSampleQuantityENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !34630

_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query19TableSampleQuantityENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %_RNvXs85_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_19TableSampleQuantityNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !34631, !noalias !34603
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1152, !dbg !34631 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34632), !dbg !34631
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34635), !dbg !34631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !34637
  %i.p = load i64, ptr %i.o, align 8, !dbg !34637, !range !19500, !alias.scope !34635, !noalias !34640, !noundef !13
  %.not.i6 = icmp eq i64 %i.p, -9223372036854775785, !dbg !34637
  br i1 %.not.i6, label %bb.d, label %bb.c, !dbg !34641

bb.c:                                             ; preds = %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query19TableSampleQuantityENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1232, !dbg !34642
  %.val.i.i = load i8, ptr %i.q, align 8, !dbg !34642, !range !17353, !alias.scope !34647, !noalias !34650, !noundef !13
  invoke fastcc void @_RNvXso_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB5_5ValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.o) #29
          to label %.noexc7 unwind label %bb.f, !dbg !34652

.noexc7:                                          ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1200, !dbg !34658
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !34659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.r, i64 32, i1 false), !dbg !34660, !noalias !34640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !34665, !noalias !34666
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80, !dbg !34665
  store i8 %.val.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !34665, !alias.scope !34632, !noalias !34666
  br label %bb.g, !dbg !34667

bb.d:                                             ; preds = %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query19TableSampleQuantityENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit
  store i64 -9223372036854775785, ptr %i.g, align 8, !dbg !34668, !alias.scope !34632, !noalias !34666
  br label %bb.g, !dbg !34668

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableSampleSeedEECshquuC4dCYVj_10polars_sql.exit: ; preds = %.body, %bb.o, %bb.f
  %.pn.pn.i = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn.i, %bb.o ], [ %.pn.i, %.body ]
  %i.t = load i64, ptr %i.h, align 8, !dbg !34669, !range !17275, !alias.scope !34671, !noalias !34599, !noundef !13
end_hunk_3
begin_hunk_4_@_RNvXsc_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.ay:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.be, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.di, i64 48, i1 false), !dbg !53189, !alias.scope !53059, !noalias !53041
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.az:                                            ; preds = %bb.u
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !53191
  %.val.i.i.i = load ptr, ptr %i.fb, align 8, !dbg !53192, !alias.scope !53054, !noalias !53055 ; 3 uses
  %i.fc = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxTINtNtB6_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB11_5field5FieldEEE13new_uninit_inCshquuC4dCYVj_10polars_sql()
          to label %.noexc1.i.i unwind label %bb.bv, !dbg !53194, !noalias !53041 ; 3 uses

.noexc1.i.i:                                      ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !53197, !noalias !53203
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(48) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.bc, !dbg !53206, !noalias !53131

.noexc.i.i.i.i:                                   ; preds = %.noexc1.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24, !dbg !53206
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bc, i64 24, !dbg !53206
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fd)
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxTINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBJ_NtNtB12_5field5FieldEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit.i.i.i unwind label %bb.ba, !dbg !53206, !noalias !53131

bb.ba:                                            ; preds = %.noexc.i.i.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bc) #26
          to label %bb.bd unwind label %bb.bb, !dbg !53206, !noalias !53131

bb.bb:                                            ; preds = %bb.ba
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !53206, !noalias !53131
  unreachable, !dbg !53206

bb.bc:                                            ; preds = %.noexc1.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd, !dbg !53210

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.fh, %bb.bc ], [ %i.ff, %bb.ba ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fc, i64 noundef 48, i64 noundef 8) #31, !dbg !53211, !noalias !53131
  br label %.body.i.i, !dbg !53222

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxTINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBJ_NtNtB12_5field5FieldEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit.i.i.i: ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fc, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !dbg !53223, !noalias !53226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !53227, !noalias !53203
  %i.fi = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !53228
  store ptr %i.fc, ptr %i.fi, align 8, !dbg !53228, !alias.scope !53043, !noalias !53056
  store i8 30, ptr %i.be, align 16, !dbg !53228, !alias.scope !53043, !noalias !53056
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.be:                                            ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !53229 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 79, !dbg !53235
  %i.fl = load i8, ptr %i.fk, align 1, !dbg !53235, !range !18241, !alias.scope !53054, !noalias !53055, !noundef !13
  %i.fm = icmp eq i8 %i.fl, -40, !dbg !53242
  br i1 %i.fm, label %bb.bt, label %bb.bu, !dbg !53242

bb.bf:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.be, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.di, i64 48, i1 false), !dbg !53243, !alias.scope !53059, !noalias !53041
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.bg:                                            ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !53245
  %i.fo = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !53246
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fn)
          to label %.noexc2.i.i unwind label %bb.bv, !dbg !53248, !noalias !53041

.noexc2.i.i:                                      ; preds = %bb.bg
  store i8 33, ptr %i.be, align 16, !dbg !53246, !alias.scope !53043, !noalias !53056
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.bh:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.be, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.di, i64 48, i1 false), !dbg !53249, !alias.scope !53059, !noalias !53041
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.bi:                                            ; preds = %bb.an
  %i.fp = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !dbg !53251, !noalias !53131
  %i.fq = icmp slt i64 %i.fp, 0, !dbg !53260
  br i1 %i.fq, label %bb.bk, label %bb.bj, !dbg !53260

bb.bj:                                            ; preds = %bb.bi, %bb.an
  %i.fr = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !53262
  store i64 %i.du, ptr %i.fr, align 8, !dbg !53262, !alias.scope !53043, !noalias !53056
  %i.fs = getelementptr inbounds nuw i8, ptr %i.be, i64 1, !dbg !53262
  store i8 %i.dw, ptr %i.fs, align 1, !dbg !53262, !alias.scope !53043, !noalias !53056
  %i.ft = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !53262
  store ptr %i.dy, ptr %i.ft, align 16, !dbg !53262, !alias.scope !53043, !noalias !53056
  store i8 18, ptr %i.be, align 16, !dbg !53262, !alias.scope !53043, !noalias !53056
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.bk:                                            ; preds = %bb.bi
  tail call void @llvm.trap(), !dbg !53263
  unreachable, !dbg !53263

bb.bl:                                            ; preds = %bb.ar
  %i.fu = getelementptr inbounds nuw i8, ptr %i.be, i64 4, !dbg !53264
  store i32 %i.ea, ptr %i.fu, align 4, !dbg !53264, !alias.scope !53043, !noalias !53056
  %i.fv = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !53264
  store ptr %i.ec, ptr %i.fv, align 8, !dbg !53264, !alias.scope !53043, !noalias !53056
  store i8 22, ptr %i.be, align 16, !dbg !53264, !alias.scope !53043, !noalias !53056
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.bm:                                            ; preds = %bb.ar
  tail call void @llvm.trap(), !dbg !53265
  unreachable, !dbg !53265

bb.bn:                                            ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %i.be, i64 4, !dbg !53266
  store i32 %i.eg, ptr %i.fw, align 4, !dbg !53266, !alias.scope !53043, !noalias !53056
  %i.fx = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !53266
  store ptr %i.ei, ptr %i.fx, align 8, !dbg !53266, !alias.scope !53043, !noalias !53056
  store i8 24, ptr %i.be, align 16, !dbg !53266, !alias.scope !53043, !noalias !53056
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.bo:                                            ; preds = %bb.at
  tail call void @llvm.trap(), !dbg !53267
  unreachable, !dbg !53267

bb.bp:                                            ; preds = %bb.au
  %i.fy = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !53268
  store <2 x ptr> %i.em, ptr %i.fy, align 8, !dbg !53268, !alias.scope !53043, !noalias !53056
  store i8 25, ptr %i.be, align 16, !dbg !53268, !alias.scope !53043, !noalias !53056
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.bq:                                            ; preds = %bb.au
  tail call void @llvm.trap(), !dbg !53269
  unreachable, !dbg !53269

bb.br:                                            ; preds = %bb.av
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !53270
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !53270, !alias.scope !53054, !noalias !53055, !noundef !13
  %i.gb = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !53271
  store <2 x ptr> %i.er, ptr %i.gb, align 16, !dbg !53271, !alias.scope !53043, !noalias !53056
  %i.gc = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !53271
  store i64 %i.ga, ptr %i.gc, align 8, !dbg !53271, !alias.scope !53043, !noalias !53056
  store i8 26, ptr %i.be, align 16, !dbg !53271, !alias.scope !53043, !noalias !53056
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.bs:                                            ; preds = %bb.av
  tail call void @llvm.trap(), !dbg !53272
  unreachable, !dbg !53272

bb.bt:                                            ; preds = %bb.be
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj) #32
          to label %.noexc3.i.i unwind label %bb.bv, !dbg !53273, !noalias !53041

bb.bu:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fj, i64 24, i1 false), !dbg !53274, !noalias !53055
  br label %.noexc3.i.i, !dbg !53277

.noexc3.i.i:                                      ; preds = %bb.bu, %bb.bt
  %i.gd = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !53278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !dbg !53278, !noalias !53056
  store i8 31, ptr %i.be, align 16, !dbg !53278, !alias.scope !53043, !noalias !53056
  br label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !53060

bb.bv:                                            ; preds = %bb.bt, %bb.bg, %bb.az, %bb.ax
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !53279

.body.i.i:                                        ; preds = %bb.bv, %bb.bd
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ge, %bb.bv ], [ %eh.lpad-body.i.i.i.i, %bb.bd ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.bf) #26
          to label %common.resume unwind label %bb.bw, !dbg !53279, !noalias !53041

bb.bw:                                            ; preds = %.body.i.i
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !53280, !noalias !53041
  unreachable, !dbg !53280

common.resume:                                    ; preds = %.body, %.body68, %.body73, %bb.ls, %bb.lr, %bb.mf, %bb.me, %bb.mq, %bb.mp, %bb.nm, %bb.nn, %bb.ov, %bb.ou, %bb.oy, %bb.ox, %bb.le, %bb.lf, %bb.ch, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.yl, %bb.le ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.hg, %bb.ch ], [ %i.yl, %bb.lf ], [ %eh.lpad-body74, %.body73 ], [ %i.afy, %bb.ox ], [ %i.zi, %bb.lr ], [ %i.aaa, %bb.me ], [ %eh.lpad-body, %.body ], [ %.pn33, %bb.mp ], [ %.pn, %.body68 ], [ %i.afy, %bb.oy ], [ %i.adb, %bb.nn ], [ %i.aft, %bb.ou ], [ %i.zi, %bb.ls ], [ %i.aaa, %bb.mf ], [ %.pn33, %bb.mq ], [ %i.adb, %bb.nm ], [ %i.aft, %bb.ov ]
  resume { ptr, i32 } %common.resume.op, !dbg !53281

_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i: ; preds = %.noexc3.i.i, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %.noexc2.i.i, %bb.bf, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxTINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBJ_NtNtB12_5field5FieldEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit.i.i.i, %bb.ay, %.noexc.i.i, %bb.aw, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !53282, !noalias !53039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bh, ptr noundef nonnull align 16 dereferenceable(48) %i.bf, i64 48, i1 false), !dbg !53280
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bh, i64 48, !dbg !53280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.gg, ptr noundef nonnull align 16 dereferenceable(48) %i.be, i64 48, i1 false), !dbg !53280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !53279, !noalias !53039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !53279, !noalias !53039
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !53027

bb.bx:                                            ; preds = %bb.g
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !53283 ; 2 uses
  %i.gi = load <2 x ptr>, ptr %i.gh, align 8, !dbg !53283, !alias.scope !52952, !noalias !52961
  %i.gj = load ptr, ptr %i.gh, align 8, !dbg !53283, !alias.scope !52952, !noalias !52961, !nonnull !13, !noundef !13
  %i.gk = atomicrmw add ptr %i.gj, i64 1 monotonic, align 8, !dbg !53295, !noalias !52961
  %i.gl = icmp slt i64 %i.gk, 0, !dbg !53300
  br i1 %i.gl, label %bb.ca, label %bb.bz, !dbg !53300

bb.by:                                            ; preds = %bb.g
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !53302
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !53302
  %2 = load i128, ptr %i.gn, align 16, !dbg !53302, !alias.scope !52952, !noalias !52961, !noundef !13
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !53302
  %4 = load i128, ptr %3, align 16, !dbg !53302, !alias.scope !52952, !noalias !52961, !noundef !13
  %i.go = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !53307
  call fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.go, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.gm) #29, !dbg !53302
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 64, !dbg !53307
  store i128 %2, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !53307
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 80, !dbg !53307
  store i128 %4, ptr %.sroa.5.0..sroa_idx.i, align 16, !dbg !53307
  store i8 34, ptr %i.bh, align 16, !dbg !53307
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !53027

bb.bz:                                            ; preds = %bb.bx
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !53308
  store <2 x ptr> %i.gi, ptr %i.gp, align 8, !dbg !53308
  store i8 33, ptr %i.bh, align 16, !dbg !53308
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !53027

bb.ca:                                            ; preds = %bb.bx
  tail call void @llvm.trap(), !dbg !53309
  unreachable, !dbg !53309

_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %bb.by, %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.bh, i64 96, i1 false), !dbg !53310
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !53310
  store i64 -9223372036854775804, ptr %i.gq, align 16, !dbg !53310
  br label %bb.lm, !dbg !52951

bb.cb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9), !dbg !53311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53313), !dbg !53311
  %i.gr = load i8, ptr %1, align 16, !dbg !53316, !range !24045, !alias.scope !53313, !noalias !53322, !noundef !13 ; 3 uses
  %i.gs = icmp ne i8 %i.gr, 40, !dbg !53316
  tail call void @llvm.assume(i1 %i.gs), !dbg !53316
  %i.gt = add nsw i8 %i.gr, -39, !dbg !53316
  %i.gu = icmp samesign ugt i8 %i.gr, 38, !dbg !53316
  %narrow.i42 = select i1 %i.gu, i8 %i.gt, i8 1, !dbg !53316
  switch i8 %narrow.i42, label %bb.cc [
    i8 0, label %bb.cd
    i8 1, label %bb.ce
    i8 2, label %bb.cf
    i8 3, label %bb.cg
    i8 4, label %bb.ck
    i8 5, label %bb.cl
  ], !dbg !53316

bb.cc:                                            ; preds = %bb.cb
  unreachable, !dbg !53316

bb.cd:                                            ; preds = %bb.cb
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !53324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !53325, !noalias !53327
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bb, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.gv) #29, !dbg !53325, !noalias !53322, !inline_history !53328
  %.sroa.9.16..sroa_idx113 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !53329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx113, ptr noundef nonnull align 16 dereferenceable(48) %i.bb, i64 48, i1 false), !dbg !53329, !noalias !53313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !53330, !noalias !53327
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !53331

bb.ce:                                            ; preds = %bb.cb
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !53332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !53333, !noalias !53327
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.ba, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) #29, !dbg !53333, !noalias !53322, !inline_history !53328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !53335, !noalias !53327
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.az, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.gw)
          to label %bb.ci unwind label %bb.ch, !dbg !53335, !noalias !53322, !inline_history !53328

bb.cf:                                            ; preds = %bb.cb
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !53336
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !53337
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.ay, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.gx) #29, !dbg !53338, !inline_history !53328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !53340, !noalias !53327
  call fastcc void @_RNvXsC_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB5_16DataTypeSelectorNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gy), !dbg !53340, !noalias !53322, !inline_history !53328
  %.sroa.9.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 47, !dbg !53341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.48..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !53341
  %.sroa.16.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !53341
  %.sroa.16.48.copyload = load i64, ptr %.sroa.16.48..sroa_idx, align 16, !dbg !53341 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc = trunc i64 %.sroa.16.48.copyload to i8, !dbg !53341
  %.sroa.16.sroa.7.0.extract.shift = and i64 %.sroa.16.48.copyload, -256, !dbg !53342
  %.sroa.18.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24, !dbg !53341
  %.sroa.18.48.copyload = load i64, ptr %.sroa.18.48..sroa_idx, align 8, !dbg !53341
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 32, !dbg !53341
  %.sroa.19.48.copyload = load i8, ptr %.sroa.19.48..sroa_idx, align 16, !dbg !53341
  %.sroa.9.16..sroa_idx114 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !53341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.9.16..sroa_idx114, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false), !dbg !53341, !noalias !53313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !53343, !noalias !53327
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !53331

bb.cg:                                            ; preds = %bb.cb
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !53344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !53345, !noalias !53327
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.aw, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.gz) #29, !dbg !53345, !noalias !53322, !inline_history !53328
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !53347
  %i.hb = load i64, ptr %i.ha, align 16, !dbg !53347, !alias.scope !53313, !noalias !53322, !noundef !13 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !53348
  %i.hd = load i8, ptr %i.hc, align 16, !dbg !53348, !range !17353, !alias.scope !53313, !noalias !53322, !noundef !13
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !53349
  %i.hf = load i64, ptr %i.he, align 8, !dbg !53349, !alias.scope !53313, !noalias !53322, !noundef !13
  %.sroa.9.16..sroa_idx112 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !53350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx112, ptr noundef nonnull align 16 dereferenceable(48) %i.aw, i64 48, i1 false), !dbg !53350, !noalias !53313
  %.sroa.16.sroa.0.0.extract.trunc124 = trunc i64 %i.hb to i8, !dbg !53350
  %.sroa.16.sroa.7.0.extract.shift127 = and i64 %i.hb, -256, !dbg !53342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !53351, !noalias !53327
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !53331

bb.ch:                                            ; preds = %bb.ce
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.ba) #26
          to label %common.resume unwind label %bb.cj, !dbg !53352, !noalias !53322, !inline_history !53328

bb.ci:                                            ; preds = %bb.ce
  %.sroa.0.0.copyload109 = load i8, ptr %i.ba, align 16, !dbg !53353, !noalias !53313
  %.sroa.9.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1, !dbg !53353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.0..sroa_idx110, i64 47, i1 false), !dbg !53353, !noalias !53313
  %.sroa.9.48..sroa_idx115 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 47, !dbg !53353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.48..sroa_idx115, ptr noundef nonnull align 16 dereferenceable(16) %i.az, i64 16, i1 false), !dbg !53353, !noalias !53313
  %.sroa.16.48..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !53353
  %.sroa.16.48.copyload117 = load i64, ptr %.sroa.16.48..sroa_idx116, align 16, !dbg !53353, !noalias !53313 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc123 = trunc i64 %.sroa.16.48.copyload117 to i8, !dbg !53353
  %.sroa.16.sroa.7.0.extract.shift125 = and i64 %.sroa.16.48.copyload117, -256, !dbg !53342
  %.sroa.18.48..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.az, i64 24, !dbg !53353
  %.sroa.18.48.copyload119 = load i64, ptr %.sroa.18.48..sroa_idx118, align 8, !dbg !53353, !noalias !53313
  %.sroa.19.48..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.az, i64 32, !dbg !53353
  %.sroa.19.48.copyload121 = load i8, ptr %.sroa.19.48..sroa_idx120, align 16, !dbg !53353, !noalias !53313
  %.sroa.20.48..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.az, i64 33, !dbg !53353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.by, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.20.48..sroa_idx122, i64 15, i1 false), !dbg !53353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !53352, !noalias !53327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !53352, !noalias !53327
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !53331

bb.cj:                                            ; preds = %bb.ch
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !53316, !noalias !53322, !inline_history !53328
  unreachable, !dbg !53316

bb.ck:                                            ; preds = %bb.cb
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !53354
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !53355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !53356, !noalias !53327
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.av, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.hi) #29, !dbg !53356, !noalias !53322, !inline_history !53328
  %.val.i = load i8, ptr %i.hj, align 16, !dbg !53358, !range !17353, !alias.scope !53313, !noalias !53322, !noundef !13
  %.sroa.9.16..sroa_idx111 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !53359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx111, ptr noundef nonnull align 16 dereferenceable(48) %i.av, i64 48, i1 false), !dbg !53359, !noalias !53313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !53360, !noalias !53327
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !53331

bb.cl:                                            ; preds = %bb.cb
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !53361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !53362, !noalias !53327
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.au, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.hk) #29, !dbg !53362, !noalias !53322, !inline_history !53328
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !53364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %i.au, i64 48, i1 false), !dbg !53364, !noalias !53313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !53365, !noalias !53327
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !53331

_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.cd, %bb.cg, %bb.ci, %bb.cf, %bb.ck, %bb.cl
  %.sroa.16.sroa.7.sroa.0.0 = phi i64 [ 0, %bb.cd ], [ %.sroa.16.sroa.7.0.extract.shift125, %bb.ci ], [ %.sroa.16.sroa.7.0.extract.shift, %bb.cf ], [ %.sroa.16.sroa.7.0.extract.shift127, %bb.cg ], [ 0, %bb.ck ], [ 0, %bb.cl ], !dbg !53311
  %.sroa.16.sroa.0.0 = phi i8 [ undef, %bb.cd ], [ %.sroa.16.sroa.0.0.extract.trunc123, %bb.ci ], [ %.sroa.16.sroa.0.0.extract.trunc, %bb.cf ], [ %.sroa.16.sroa.0.0.extract.trunc124, %bb.cg ], [ %.val.i, %bb.ck ], [ undef, %bb.cl ], !dbg !53311
  %.sroa.19.0 = phi i8 [ undef, %bb.cd ], [ %.sroa.19.48.copyload121, %bb.ci ], [ %.sroa.19.48.copyload, %bb.cf ], [ %i.hd, %bb.cg ], [ undef, %bb.ck ], [ undef, %bb.cl ], !dbg !53311
  %.sroa.18.0 = phi i64 [ undef, %bb.cd ], [ %.sroa.18.48.copyload119, %bb.ci ], [ %.sroa.18.48.copyload, %bb.cf ], [ %i.hf, %bb.cg ], [ undef, %bb.ck ], [ undef, %bb.cl ], !dbg !53311
  %.sroa.0.0 = phi i8 [ 39, %bb.cd ], [ %.sroa.0.0.copyload109, %bb.ci ], [ 41, %bb.cf ], [ 42, %bb.cg ], [ 43, %bb.ck ], [ 44, %bb.cl ], !dbg !53316
  store i8 %.sroa.0.0, ptr %0, align 16, !dbg !53342
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !53342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9, i64 63, i1 false), !dbg !53342
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !53342
  %.sroa.16.sroa.0.0.insert.ext = zext i8 %.sroa.16.sroa.0.0 to i64, !dbg !53342
  %.sroa.16.sroa.0.0.insert.insert = or disjoint i64 %.sroa.16.sroa.7.sroa.0.0, %.sroa.16.sroa.0.0.insert.ext, !dbg !53342
  store i64 %.sroa.16.sroa.0.0.insert.insert, ptr %.sroa.16.0..sroa_idx, align 16, !dbg !53342
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !53342
  store i64 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 8, !dbg !53342
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !53342
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 16, !dbg !53342
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !53342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %i.by, i64 15, i1 false), !dbg !53342
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !53342
  store i64 -9223372036854775803, ptr %i.hl, align 16, !dbg !53342
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9), !dbg !53366
  br label %bb.lm, !dbg !52951

bb.cm:                                            ; preds = %bb.a
  %i.hm = load ptr, ptr %1, align 16, !dbg !53367, !nonnull !13, !noundef !13
  %i.hn = atomicrmw add ptr %i.hm, i64 1 monotonic, align 8, !dbg !53374
  %i.ho = icmp slt i64 %i.hn, 0, !dbg !53378
  br i1 %i.ho, label %bb.ly, label %bb.lz, !dbg !53378

bb.cn:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !53380
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !53382 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 16, !dbg !53382, !nonnull !13, !noundef !13
  %i.hr = atomicrmw add ptr %i.hq, i64 1 monotonic, align 8, !dbg !53387
  %i.hs = icmp slt i64 %i.hr, 0, !dbg !53391
  br i1 %i.hs, label %bb.md, label %bb.mc, !dbg !53391

bb.co:                                            ; preds = %bb.a
  %i.ht = load ptr, ptr %1, align 16, !dbg !53393, !nonnull !13, !noundef !13
  %i.hu = atomicrmw add ptr %i.ht, i64 1 monotonic, align 8, !dbg !53400
  %i.hv = icmp slt i64 %i.hu, 0, !dbg !53404
  br i1 %i.hv, label %bb.mi, label %bb.mh, !dbg !53404

bb.cp:                                            ; preds = %bb.a
  %i.hw = load ptr, ptr %1, align 16, !dbg !53406, !nonnull !13, !noundef !13
  %i.hx = atomicrmw add ptr %i.hw, i64 1 monotonic, align 8, !dbg !53413
  %i.hy = icmp slt i64 %i.hx, 0, !dbg !53417
  br i1 %i.hy, label %bb.mk, label %bb.mj, !dbg !53417

bb.cq:                                            ; preds = %bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !53419
end_hunk_4
