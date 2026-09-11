Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RNvXsE_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableStmtINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4StmtE4from:bb.a
  %i.ds = icmp ugt i64 %i.dq, 72057594037927935
  %.not.i.i.i = icmp ugt i64 %i.dr, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.ds, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.o, label %bb.n, !prof !61

bb.n:                                             ; preds = %bb.m
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemE7reserveBH_.exit.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.n
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !14153
  %i.du = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.dr, i64 noundef range(i64 1, 17) 8) #62, !noalias !14153 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.o, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemE7reserveBH_.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.m
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.m ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.dr) #61, !noalias !14152
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemE7reserveBH_.exit.i.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.n
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.n ], [ %i.du, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.n ], [ %i.dq, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %i.dw = icmp samesign ule i64 %i.dq, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.dw)
  store i64 %.sroa.4.0.i.i, ptr %i.l, align 8, !noalias !14152
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.10.0.i.i, ptr %i.dx, align 8, !noalias !14152
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14155)
  %i.dz = icmp eq i64 %i.dq, 0
  br i1 %i.dz, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemE7reserveBH_.exit.i.i.i
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.r:                                             ; preds = %bb.v, %bb.p
  %.val15.i.i.i.i.i.i = phi i64 [ 0, %bb.p ], [ %i.eh, %bb.v ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [96 x i8], ptr %i.do, i64 %.val15.i.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14156
  invoke void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4ExprE4from(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.k, ptr noundef nonnull align 8 %i.eb)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q, !noalias !14157

.noexc.i.i.i.i.i.i:                               ; preds = %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !14156, !align !54, !noundef !46 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14156
  invoke void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4ExprE4from(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.j, ptr noundef nonnull align 8 %i.ed)
          to label %_RNvXsy_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtB7_9generated4ExprEE4from.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.t, !noalias !14156, !inline_history !112

bb.t:                                             ; preds = %bb.s
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.k) #59
          to label %.body.i unwind label %bb.u, !noalias !14156

_RNvXsy_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtB7_9generated4ExprEE4from.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !14156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !14158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14156
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !14156
  unreachable

bb.v:                                             ; preds = %_RNvXsy_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtB7_9generated4ExprEE4from.exit.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, %_RNvXsy_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtB7_9generated4ExprEE4from.exit.i.i.i.i.i.i.i.i.i.i ], [ -2, %.noexc.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.02.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i64 128, i1 false), !noalias !14158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14156
  %i.eg = getelementptr inbounds nuw [256 x i8], ptr %.sroa.10.0.i.i, i64 %.val15.i.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.eg, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.02.i.i.i.i.i.i.i, i64 128, i1 false), !noalias !14159
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 128
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !14159
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !14158
  %i.eh = add nuw nsw i64 %.val15.i.i.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.ei = icmp eq i64 %i.eh, %i.dq
  br i1 %i.ei, label %.loopexit, label %bb.r

.body.i:                                          ; preds = %bb.t, %bb.q
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ea, %bb.q ], [ %i.ee, %bb.t ]
  store i64 %.val15.i.i.i.i.i.i, ptr %i.dy, align 8, !alias.scope !14160, !noalias !14161
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #59
          to label %common.resume unwind label %bb.w, !noalias !14152

bb.w:                                             ; preds = %.body.i
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !14152
  unreachable

bb.x:                                             ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14162)
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !14162, !noalias !14163, !nonnull !46, !noundef !46
  call void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4ExprE4from(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.ad, ptr noundef nonnull align 8 %i.el), !noalias !14162, !inline_history !112
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !46, !noundef !46 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !46 ; 5 uses
  %i.eq = getelementptr inbounds nuw [104 x i8], ptr %i.en, i64 %i.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14164
  %i.er = mul i64 %i.ep, 328                      ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.ep, 28120036697727975
  br i1 %or.cond.i.i, label %bb.z, label %bb.y, !prof !61

bb.y:                                             ; preds = %bb.x
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.noexc178, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.y
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !14165
  %i.et = call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.er, i64 noundef range(i64 1, 17) 8) #62, !noalias !14165 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.z, label %.noexc178

bb.z:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.x
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.x ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.er) #61
          to label %.noexc180 unwind label %bb.dy

.noexc180:                                        ; preds = %bb.z
  unreachable

.noexc178:                                        ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.y
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.y ], [ %i.et, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.y ], [ %i.ep, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ] ; 2 uses
  %i.ev = icmp samesign ule i64 %i.ep, %.sroa.4.0.i
  call void @llvm.assume(i1 %i.ev)
  store i64 %.sroa.4.0.i, ptr %i.i, align 8, !noalias !14164
  %i.ew = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.10.0.i, ptr %i.ew, align 8, !noalias !14164
  %i.ex = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %i.ex, align 8, !noalias !14164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14166
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.10.0.i, ptr %i.ey, align 8, !noalias !14166
  store ptr %i.ex, ptr %i.c, align 8, !noalias !14166
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.ez, align 8, !noalias !14166
  invoke fastcc void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseENvYRB1h_INtNtBc_7convert4IntoNtNtB1l_10comparable19ComparableMatchCaseE4intoENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4c_3VecB2A_E14extend_trustedB3_E0EB1l_(ptr noundef nonnull %i.en, ptr noundef nonnull %i.eq, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.dz unwind label %bb.aa, !inline_history !14020

bb.aa:                                            ; preds = %.noexc178
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #59
          to label %.body unwind label %bb.ab, !noalias !14164, !inline_history !14021

bb.ab:                                            ; preds = %bb.aa
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !14164, !inline_history !14021
  unreachable

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !align !54, !noundef !46 ; 2 uses
  %.not75 = icmp eq ptr %i.fd, null
  br i1 %.not75, label %bb.eb, label %bb.ea

bb.ad:                                            ; preds = %bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.045)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.val110 = load ptr, ptr %i.fe, align 8, !nonnull !46, !noundef !46 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val110, i64 16 ; 2 uses
  %i.fi = load i64, ptr %.val110, align 8, !noundef !46
  %i.fj = getelementptr inbounds nuw [88 x i8], ptr %i.fh, i64 %i.fi
  call fastcc void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableStmtEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterNtNtB16_9generated4StmtENvYRB3N_INtNtB2H_7convert4IntoB12_E4intoEE9from_iterB16_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull %i.fh, ptr noundef %i.fj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !nonnull !46, !noundef !46 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !46 ; 5 uses
  %i.fo = getelementptr inbounds nuw [64 x i8], ptr %i.fl, i64 %i.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14167
  %i.fp = mul nuw nsw i64 %i.fn, 48               ; 2 uses
  %.not.i.i186 = icmp ugt i64 %i.fn, 192153584101141162
  br i1 %.not.i.i186, label %bb.af, label %bb.ae, !prof !61

bb.ae:                                            ; preds = %bb.ad
  %i.fq = icmp eq i64 %i.fn, 0
  br i1 %i.fq, label %.noexc184, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i188

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i188: ; preds = %bb.ae
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !14168
  %i.fr = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.fp, i64 noundef range(i64 1, 17) 8) #62, !noalias !14168 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.af, label %.noexc184

bb.af:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i188, %bb.ad
  %.sroa.10.0.ph.i191 = phi i64 [ %i.fp, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i188 ], [ undef, %bb.ad ]
  %.sroa.4.0.ph.i192 = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i188 ], [ 0, %bb.ad ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i192, i64 %.sroa.10.0.ph.i191) #61
          to label %.noexc193 unwind label %bb.en

.noexc193:                                        ; preds = %bb.af
  unreachable

.noexc184:                                        ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i188, %bb.ae
  %.sroa.10.0.i189 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ae ], [ %i.fr, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i188 ] ; 2 uses
  store i64 %i.fn, ptr %i.h, align 8, !noalias !14167
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.10.0.i189, ptr %i.ft, align 8, !noalias !14167
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.fu, align 8, !noalias !14167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14169
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.10.0.i189, ptr %i.fv, align 8, !noalias !14169
  store ptr %i.fu, ptr %i.b, align 8, !noalias !14169
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.fw, align 8, !noalias !14169
  invoke fastcc void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENvYRB1h_INtNtBc_7convert4IntoNtNtB1l_10comparable23ComparableExceptHandlerE4intoENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4p_3VecB2J_E14extend_trustedB3_E0EB1l_(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fo, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.eq unwind label %bb.ag, !inline_history !14030

bb.ag:                                            ; preds = %.noexc184
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #59
          to label %.body125 unwind label %bb.ah, !noalias !14167, !inline_history !14031

bb.ah:                                            ; preds = %bb.ag
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !14167, !inline_history !14031
  unreachable

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14170)
  %i.fz = load ptr, ptr %1, align 8, !alias.scope !14170, !noalias !14171, !nonnull !46, !noundef !46
  call void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4ExprE4from(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.x, ptr noundef nonnull align 8 %i.fz), !noalias !14170, !inline_history !112
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !align !54, !noundef !46 ; 2 uses
  %.not72 = icmp eq ptr %i.gb, null
  br i1 %.not72, label %bb.ev, label %bb.eu

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.056)
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !nonnull !46, !noundef !46 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !noundef !46
  %i.gg = getelementptr inbounds nuw [80 x i8], ptr %i.gd, i64 %i.gf
  call fastcc void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableAliasEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2I_5slice4iter4IterNtNtB16_5nodes5AliasENvYRB3O_INtNtB2I_7convert4IntoB12_E4intoEE9from_iterB16_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %.sroa.056, ptr noundef nonnull %i.gd, ptr noundef %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.gi = load i8, ptr %i.gh, align 4, !range !51, !noundef !46
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.056, i64 24, i1 false)
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.gi, ptr %.sroa.457.0..sroa_idx, align 8
  store i64 -9223372036854775757, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.056)
  br label %bb.bj

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059)
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.gl = load i8, ptr %i.gk, align 1, !range !48, !noundef !46 ; 4 uses
  %.not = icmp eq i8 %i.gl, -1
  br i1 %.not, label %bb.ey, label %bb.ex

bb.al:                                            ; preds = %bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !nonnull !46, !noundef !46
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !noundef !46 ; 5 uses
  %i.gq = shl nuw nsw i64 %i.gp, 4                ; 2 uses
  %i.gr = icmp eq i64 %i.gp, 0
  br i1 %i.gr, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1I_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENvMs2d_B2Q_B2O_6as_strEE9from_iterB2S_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i127

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i127: ; preds = %bb.al
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !14172
  %i.gs = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.gq, i64 noundef range(i64 1, 17) 8) #62, !noalias !14172 ; 3 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.am, label %.preheader.i.i.i

bb.am:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i127
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.gq) #61, !noalias !14173
  unreachable

.preheader.i.i.i:                                 ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i127, %.preheader.i.i.i
  %i.gu = phi i64 [ %i.hj, %.preheader.i.i.i ], [ 0, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i127 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.gn, i64 %i.gu ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 23
  %i.gy = load i8, ptr %i.gx, align 1, !range !69, !alias.scope !14174, !noalias !14175, !noundef !46 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !14174, !noalias !14175, !noundef !46
  %i.hb = and i64 %i.ha, 72057594037927935
  %i.hc = icmp ult i8 %i.gy, -48
  %i.hd = zext i8 %i.gy to i64
  %i.he = add nsw i64 %i.hd, -192
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.he, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i128 = select i1 %i.hc, i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 %i.hb
  %i.hf = icmp ugt i8 %i.gy, -49
  %i.hg = load ptr, ptr %i.gw, align 8, !alias.scope !14174, !noalias !14175
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.hf, ptr %i.hg, ptr %i.gw
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gu ; 2 uses
  store ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, ptr %i.hh, align 8, !noalias !14176
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i128, ptr %i.hi, align 8, !noalias !14177
  %i.hj = add nuw i64 %i.gu, 1                    ; 2 uses
  %i.hk = icmp eq i64 %i.hj, %i.gp
  br i1 %i.hk, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1I_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENvMs2d_B2Q_B2O_6as_strEE9from_iterB2S_.exit, label %.preheader.i.i.i

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1I_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENvMs2d_B2Q_B2O_6as_strEE9from_iterB2S_.exit: ; preds = %.preheader.i.i.i, %bb.al
  %.sroa.10.0.i11.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.al ], [ %i.gs, %.preheader.i.i.i ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gp, ptr %i.hl, align 8
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i11.i, ptr %.sroa.4215.0..sroa_idx, align 8
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.gp, ptr %.sroa.5216.0..sroa_idx, align 8
  store i64 -9223372036854775755, ptr %0, align 8
  br label %bb.bj

bb.an:                                            ; preds = %bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !nonnull !46, !noundef !46
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !46 ; 5 uses
  %i.hq = shl nuw nsw i64 %i.hp, 4                ; 2 uses
  %i.hr = icmp eq i64 %i.hp, 0
  br i1 %i.hr, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1I_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENvMs2d_B2Q_B2O_6as_strEE9from_iterB2S_.exit140, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i129

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i129: ; preds = %bb.an
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !14178
  %i.hs = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.hq, i64 noundef range(i64 1, 17) 8) #62, !noalias !14178 ; 3 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.ao, label %.preheader.i.i.i131

bb.ao:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i129
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.hq) #61, !noalias !14179
  unreachable

.preheader.i.i.i131:                              ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i129, %.preheader.i.i.i131
  %i.hu = phi i64 [ %i.ij, %.preheader.i.i.i131 ], [ 0, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i129 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.hu ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 23
  %i.hy = load i8, ptr %i.hx, align 1, !range !69, !alias.scope !14180, !noalias !14181, !noundef !46 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.ia = load i64, ptr %i.hz, align 8, !alias.scope !14180, !noalias !14181, !noundef !46
  %i.ib = and i64 %i.ia, 72057594037927935
  %i.ic = icmp ult i8 %i.hy, -48
  %i.id = zext i8 %i.hy to i64
  %i.ie = add nsw i64 %i.id, -192
  %spec.store.select.i.i.i.i.i.i.i.i.i.i132 = tail call i64 @llvm.umin.i64(i64 %i.ie, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i133 = select i1 %i.ic, i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i132, i64 %i.ib
  %i.if = icmp ugt i8 %i.hy, -49
  %i.ig = load ptr, ptr %i.hw, align 8, !alias.scope !14180, !noalias !14181
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i134 = select i1 %i.if, ptr %i.ig, ptr %i.hw
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %i.hu ; 2 uses
  store ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i.i134, ptr %i.ih, align 8, !noalias !14182
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i133, ptr %i.ii, align 8, !noalias !14183
  %i.ij = add nuw i64 %i.hu, 1                    ; 2 uses
  %i.ik = icmp eq i64 %i.ij, %i.hp
  br i1 %i.ik, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1I_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENvMs2d_B2Q_B2O_6as_strEE9from_iterB2S_.exit140, label %.preheader.i.i.i131

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1I_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENvMs2d_B2Q_B2O_6as_strEE9from_iterB2S_.exit140: ; preds = %.preheader.i.i.i131, %bb.an
  %.sroa.10.0.i11.i136 = phi ptr [ inttoptr (i64 8 to ptr), %bb.an ], [ %i.hs, %.preheader.i.i.i131 ]
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hp, ptr %i.il, align 8
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i11.i136, ptr %.sroa.4221.0..sroa_idx, align 8
  %.sroa.5222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.hp, ptr %.sroa.5222.0..sroa_idx, align 8
  store i64 -9223372036854775754, ptr %0, align 8
  br label %bb.bj

bb.ap:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.im = load ptr, ptr %1, align 8, !alias.scope !14184, !noalias !14185, !nonnull !46, !noundef !46
  call void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4ExprE4from(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.w, ptr noundef nonnull align 8 %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_RNvYNCNvNtCskLngH8kgpZI_15ruff_python_ast3str14PREFIX_MATCHER0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceB8_:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.r, i64 936 ; 6 uses
  store i32 %i.br, ptr %i.bu, align 8, !alias.scope !18693, !noalias !18698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !18700
  invoke void @_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA11alloc_state(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(440) %i.ai, i64 noundef 0)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.s:                                             ; preds = %bb.r
  %i.bv = load i32, ptr %i.n, align 8, !range !18701, !noalias !18700, !noundef !46 ; 2 uses
  %.not102.i.i.i.i = icmp eq i32 %i.bv, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !noalias !18700 ; 2 uses
  br i1 %.not102.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.570.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.33.i.i.sroa.0.0.copyload72.i = load ptr, ptr %.sroa.570.0..sroa_idx.i.i.i.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.17.0..sroa.570.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.by = load <2 x i8>, ptr %.sroa.33.i.i.sroa.17.0..sroa.570.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.21.0..sroa.570.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload78 = load i48, ptr %.sroa.33.i.i.sroa.21.0..sroa.570.0..sroa_idx.i.i.i.sroa_idx.i, align 2, !noalias !18702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !18700
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !18700
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 940 ; 2 uses
  store i32 %i.bx, ptr %i.bz, align 4, !alias.scope !18693, !noalias !18698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !18700
  invoke void @_RNvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_8Compiler27init_unanchored_start_state(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.v:                                             ; preds = %bb.u
  %i.ca = load i32, ptr %i.m, align 8, !range !18701, !noalias !18700, !noundef !46 ; 2 uses
  %.not103.i.i.i.i = icmp eq i32 %i.ca, -1
  br i1 %.not103.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.29.8..sroa_idx25.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.29.8.copyload26.i.i.i = load i32, ptr %.sroa.29.8..sroa_idx25.i.i.i, align 4, !noalias !18702
  %.sroa.33.8..sroa_idx37.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.33.i.i.sroa.0.0.copyload73.i = load ptr, ptr %.sroa.33.8..sroa_idx37.i.i.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.17.0..sroa.33.8..sroa_idx37.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cb = load <2 x i8>, ptr %.sroa.33.i.i.sroa.17.0..sroa.33.8..sroa_idx37.i.i.sroa_idx.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.21.0..sroa.33.8..sroa_idx37.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload79 = load i48, ptr %.sroa.33.i.i.sroa.21.0..sroa.33.8..sroa_idx37.i.i.sroa_idx.i, align 2, !noalias !18702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !18700
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !18700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !18700
  invoke void @_RNvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_8Compiler19add_dead_state_loop(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 16 dereferenceable(960) %i.r)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18696

bb.y:                                             ; preds = %bb.x
  %i.cc = load i32, ptr %i.l, align 8, !range !18701, !noalias !18700, !noundef !46 ; 2 uses
  %.not104.i.i.i.i = icmp eq i32 %i.cc, -1
  br i1 %.not104.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.29.8..sroa_idx27.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.29.8.copyload28.i.i.i = load i32, ptr %.sroa.29.8..sroa_idx27.i.i.i, align 4, !noalias !18702
  %.sroa.33.8..sroa_idx38.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.33.i.i.sroa.0.0.copyload74.i = load ptr, ptr %.sroa.33.8..sroa_idx38.i.i.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.17.0..sroa.33.8..sroa_idx38.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cd = load <2 x i8>, ptr %.sroa.33.i.i.sroa.17.0..sroa.33.8..sroa_idx38.i.i.sroa_idx.i, align 8, !noalias !18702
  %.sroa.33.i.i.sroa.21.0..sroa.33.8..sroa_idx38.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  %.sroa.33.i.i.sroa.21.i.sroa.0.0.copyload80 = load i48, ptr %.sroa.33.i.i.sroa.21.0..sroa.33.8..sroa_idx38.i.i.sroa_idx.i, align 2, !noalias !18702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !18700
  br label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler7compileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1i_IB1i_IB1i_IB1i_INtNtNtB1q_5slice4iter4IterReEB2t_EB2t_EB2t_EB2t_EB2t_ERB2U_ECskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !18700
  call void @llvm.experimental.noalias.scope.decl(metadata !18703)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 912 ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 920 ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 624 ; 11 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 608 ; 12 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 616 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 952 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 528 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 520 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 480 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 656 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.ab

bb.ab:                                            ; preds = %.backedge.i, %bb.aa
  %.sroa.27.0.i = phi i64 [ 0, %bb.aa ], [ %i.hp, %.backedge.i ] ; 14 uses
  %.sroa.24.0.i.idx = phi i64 [ 0, %bb.aa ], [ %.sroa.24.1330.i.idx, %.backedge.i ] ; 7 uses
  %.sroa.21.0.i.idx = phi i64 [ 0, %bb.aa ], [ %.sroa.21.1333.i.idx, %.backedge.i ] ; 7 uses
  %.sroa.18.0.i.idx = phi i64 [ 0, %bb.aa ], [ %.sroa.18.1336.i.idx, %.backedge.i ] ; 7 uses
  %.sroa.15.0.i.idx = phi i64 [ 0, %bb.aa ], [ %.sroa.15.1339.i.idx, %.backedge.i ] ; 7 uses
  %.sroa.12.0.i.idx = phi i64 [ 0, %bb.aa ], [ %.sroa.12.1342.i.idx, %.backedge.i ] ; 8 uses
  %.sroa.9.0.i = phi ptr [ @115, %bb.aa ], [ %.sroa.9.2345.i, %.backedge.i ] ; 8 uses
  %.sroa.0156.0.i = phi i64 [ 1, %bb.aa ], [ %.sroa.0156.2348.i, %.backedge.i ] ; 3 uses
  %.sroa.12.0.i.ptr = getelementptr inbounds nuw i8, ptr @136, i64 %.sroa.12.0.i.idx
  switch i64 %.sroa.0156.0.i, label %bb.ac [
    i64 -2, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i
    i64 -1, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i
    i64 2, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.preheader.i
    i64 0, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  ]

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i: ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab
  %.sroa.9.1.ph.i = phi ptr [ null, %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i, %bb.ab ] ; 3 uses
  %i.cp = icmp eq i64 %.sroa.15.0.i.idx, 320
  br i1 %i.cp, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.preheader.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18704
  store i64 %.sroa.27.0.i, ptr %i.f, align 8, !noalias !18704
  %exitcond.jt0.i890 = icmp eq i64 %.sroa.27.0.i, 2147483647
  br i1 %exitcond.jt0.i890, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %.lr.ph894

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18704
  %i.cq = icmp eq i64 %.sroa.15.0370.i.add893, 320
  br i1 %i.cq, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.preheader.i, label %.lr.ph

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18704
  %i.cr = icmp eq i64 %.sroa.18.0365.i.add907, 480
  br i1 %i.cr, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i, label %.lr.ph327

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i: ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18704
  %i.cs = icmp eq i64 %.sroa.21.0360.i.add922, 320
  br i1 %i.cs, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i, label %.lr.ph334

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i: ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18704
  %i.ct = icmp eq i64 %.sroa.24.0355.i.add937, 320
  br i1 %i.ct, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i._crit_edge, label %.lr.ph341

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.9.0.i, null
  %i.cu = icmp eq ptr %.sroa.9.0.i, getelementptr inbounds nuw (i8, ptr @115, i64 480)
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 16
  %or.cond = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.cu
  br i1 %or.cond, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae

select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.ac
  %i.cw = icmp eq i64 %.sroa.12.0.i.idx, 320
  br i1 %i.cw, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %bb.ad

bb.ad:                                            ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.12.0.i.add = add nuw nsw i64 %.sroa.12.0.i.idx, 16
  br label %bb.ae

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.preheader.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %bb.ab
  %.sroa.15.0369.ph.i.idx = phi i64 [ %.sroa.15.0.i.idx, %bb.ab ], [ 320, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ 320, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.27.0353.ph.i = phi i64 [ %.sroa.27.0.i, %bb.ab ], [ %.sroa.27.0.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ %i.de, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.9.3.ph.i = phi ptr [ %.sroa.9.0.i, %bb.ab ], [ %.sroa.9.1.ph.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ %.sroa.9.1.ph.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cx = icmp eq i64 %.sroa.18.0.i.idx, 480
  br i1 %i.cx, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i, label %.lr.ph327.preheader

.lr.ph327.preheader:                              ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18704
  store i64 %.sroa.27.0353.ph.i, ptr %i.f, align 8, !noalias !18704
  %exitcond.jt2.i904 = icmp eq i64 %.sroa.27.0353.ph.i, 2147483647
  br i1 %exitcond.jt2.i904, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %.lr.ph908

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.preheader.i, %bb.ab
  %.sroa.15.0368.ph.i.idx = phi i64 [ %.sroa.15.0.i.idx, %bb.ab ], [ %.sroa.15.0369.ph.i.idx, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.preheader.i ], [ %.sroa.15.0369.ph.i.idx, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.18.0364.ph.i.idx = phi i64 [ %.sroa.18.0.i.idx, %bb.ab ], [ 480, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.preheader.i ], [ 480, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.27.0352.ph.i = phi i64 [ %.sroa.27.0.i, %bb.ab ], [ %.sroa.27.0353.ph.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.preheader.i ], [ %i.di, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.9.4.ph.i = phi ptr [ %.sroa.9.0.i, %bb.ab ], [ %.sroa.9.3.ph.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.preheader.i ], [ %.sroa.9.3.ph.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cy = icmp eq i64 %.sroa.21.0.i.idx, 320
  br i1 %i.cy, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i, label %.lr.ph334.preheader

.lr.ph334.preheader:                              ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18704
  store i64 %.sroa.27.0352.ph.i, ptr %i.f, align 8, !noalias !18704
  %exitcond.jt18446744073709551615.i919 = icmp eq i64 %.sroa.27.0352.ph.i, 2147483647
  br i1 %exitcond.jt18446744073709551615.i919, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %.lr.ph923

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i, %bb.ab
  %.sroa.15.0367.ph.i.idx = phi i64 [ %.sroa.15.0.i.idx, %bb.ab ], [ %.sroa.15.0368.ph.i.idx, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i ], [ %.sroa.15.0368.ph.i.idx, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i ]
  %.sroa.18.0363.ph.i.idx = phi i64 [ %.sroa.18.0.i.idx, %bb.ab ], [ %.sroa.18.0364.ph.i.idx, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i ], [ %.sroa.18.0364.ph.i.idx, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i ]
  %.sroa.21.0359.ph.i.idx = phi i64 [ %.sroa.21.0.i.idx, %bb.ab ], [ 320, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i ], [ 320, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i ]
  %.sroa.27.0351.ph.i = phi i64 [ %.sroa.27.0.i, %bb.ab ], [ %.sroa.27.0352.ph.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i ], [ %i.dm, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.9.5.ph.i = phi ptr [ %.sroa.9.0.i, %bb.ab ], [ %.sroa.9.4.ph.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.preheader.i ], [ %.sroa.9.4.ph.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i ]
  %i.cz = icmp eq i64 %.sroa.24.0.i.idx, 320
  br i1 %i.cz, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i._crit_edge, label %.lr.ph341.preheader

.lr.ph341.preheader:                              ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18704
  store i64 %.sroa.27.0351.ph.i, ptr %i.f, align 8, !noalias !18704
  %exitcond.jt18446744073709551614.i934 = icmp eq i64 %.sroa.27.0351.ph.i, 2147483647
  br i1 %exitcond.jt18446744073709551614.i934, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %.lr.ph938

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sroa.12.1.i.idx = phi i64 [ %.sroa.12.0.i.idx, %bb.ac ], [ %.sroa.12.0.i.add, %bb.ad ] ; 2 uses
  %.sroa.9.2.i = phi ptr [ %i.cv, %bb.ac ], [ null, %bb.ad ] ; 2 uses
  %.sroa.0.0.i1.i.ph.i.i = phi ptr [ %.sroa.9.0.i, %bb.ac ], [ %.sroa.12.0.i.ptr, %bb.ad ] ; 2 uses
  %i.da = add nuw nsw i64 %.sroa.27.0.i, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18704
  store i64 %.sroa.27.0.i, ptr %i.f, align 8, !noalias !18704
  %exitcond.i = icmp eq i64 %.sroa.27.0.i, 2147483647
  br i1 %exitcond.i, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %bb.af

.lr.ph:                                           ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBe_5slice4iter4IterReEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18704
  store i64 %i.de, ptr %i.f, align 8, !noalias !18704
  %exitcond.jt0.i = icmp eq i64 %i.de, 2147483647
  br i1 %exitcond.jt0.i, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %.lr.ph894

.lr.ph327:                                        ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_INtNtNtBe_5slice4iter4IterReEB11_EB11_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18704
  store i64 %i.di, ptr %i.f, align 8, !noalias !18704
  %exitcond.jt2.i = icmp eq i64 %i.di, 2147483647
  br i1 %exitcond.jt2.i, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %.lr.ph908

.lr.ph334:                                        ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_INtNtNtBe_5slice4iter4IterReEB15_EB15_EB15_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18704
  store i64 %i.dm, ptr %i.f, align 8, !noalias !18704
  %exitcond.jt18446744073709551615.i = icmp eq i64 %i.dm, 2147483647
  br i1 %exitcond.jt18446744073709551615.i, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %.lr.ph923

.lr.ph341:                                        ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB6_IB6_IB6_INtNtNtBe_5slice4iter4IterReEB19_EB19_EB19_EB19_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18704
  store i64 %i.dq, ptr %i.f, align 8, !noalias !18704
  %exitcond.jt18446744073709551614.i = icmp eq i64 %i.dq, 2147483647
  br i1 %exitcond.jt18446744073709551614.i, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %.lr.ph938

bb.af:                                            ; preds = %bb.ae
  %i.db = trunc nuw nsw i64 %.sroa.27.0.i to i32  ; 3 uses
  %.val.i.i = load ptr, ptr %.sroa.0.0.i1.i.ph.i.i, align 8, !noalias !18705, !nonnull !46, !noundef !46 ; 3 uses
  %i.dc = getelementptr i8, ptr %.sroa.0.0.i1.i.ph.i.i, i64 8
  %.val1.i.i = load i64, ptr %i.dc, align 8, !noalias !18705, !noundef !46 ; 8 uses
  %i.dd = icmp ugt i64 %.val1.i.i, 2147483646
  br i1 %i.dd, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %bb.ag

.lr.ph894:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.15.0370.i.idx319892 = phi i64 [ %.sroa.15.0370.i.add893, %.lr.ph ], [ %.sroa.15.0.i.idx, %.lr.ph.preheader ] ; 2 uses
  %.sroa.27.0354.i320891 = phi i64 [ %i.de, %.lr.ph ], [ %.sroa.27.0.i, %.lr.ph.preheader ] ; 5 uses
  %.sroa.15.0370.i.add893 = add nuw nsw i64 %.sroa.15.0370.i.idx319892, 16 ; 3 uses
  %i.de = add nuw nsw i64 %.sroa.27.0354.i320891, 1 ; 6 uses
  %.sroa.15.0370.i.ptr321 = getelementptr inbounds nuw i8, ptr @157, i64 %.sroa.15.0370.i.idx319892 ; 2 uses
  %i.df = trunc nuw nsw i64 %.sroa.27.0354.i320891 to i32 ; 3 uses
  %.val.i.jt0.i = load ptr, ptr %.sroa.15.0370.i.ptr321, align 8, !noalias !18705, !nonnull !46, !noundef !46 ; 3 uses
  %i.dg = getelementptr i8, ptr %.sroa.15.0370.i.ptr321, i64 8
  %.val1.i.jt0.i = load i64, ptr %i.dg, align 8, !noalias !18705, !noundef !46 ; 8 uses
  %i.dh = icmp ugt i64 %.val1.i.jt0.i, 2147483646
  br i1 %i.dh, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %bb.ah

.lr.ph908:                                        ; preds = %.lr.ph327.preheader, %.lr.ph327
  %.sroa.18.0365.i.idx324906 = phi i64 [ %.sroa.18.0365.i.add907, %.lr.ph327 ], [ %.sroa.18.0.i.idx, %.lr.ph327.preheader ] ; 2 uses
  %.sroa.27.0353.i325905 = phi i64 [ %i.di, %.lr.ph327 ], [ %.sroa.27.0353.ph.i, %.lr.ph327.preheader ] ; 5 uses
  %.sroa.18.0365.i.add907 = add nuw nsw i64 %.sroa.18.0365.i.idx324906, 16 ; 3 uses
  %i.di = add nuw nsw i64 %.sroa.27.0353.i325905, 1 ; 6 uses
  %.sroa.18.0365.i.ptr326 = getelementptr inbounds nuw i8, ptr @188, i64 %.sroa.18.0365.i.idx324906 ; 2 uses
  %i.dj = trunc nuw nsw i64 %.sroa.27.0353.i325905 to i32 ; 3 uses
  %.val.i.jt2.i = load ptr, ptr %.sroa.18.0365.i.ptr326, align 8, !noalias !18705, !nonnull !46, !noundef !46 ; 3 uses
  %i.dk = getelementptr i8, ptr %.sroa.18.0365.i.ptr326, i64 8
  %.val1.i.jt2.i = load i64, ptr %i.dk, align 8, !noalias !18705, !noundef !46 ; 8 uses
  %i.dl = icmp ugt i64 %.val1.i.jt2.i, 2147483646
  br i1 %i.dl, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %bb.ai

.lr.ph923:                                        ; preds = %.lr.ph334.preheader, %.lr.ph334
  %.sroa.21.0360.i.idx331921 = phi i64 [ %.sroa.21.0360.i.add922, %.lr.ph334 ], [ %.sroa.21.0.i.idx, %.lr.ph334.preheader ] ; 2 uses
  %.sroa.27.0352.i332920 = phi i64 [ %i.dm, %.lr.ph334 ], [ %.sroa.27.0352.ph.i, %.lr.ph334.preheader ] ; 5 uses
  %.sroa.21.0360.i.add922 = add nuw nsw i64 %.sroa.21.0360.i.idx331921, 16 ; 3 uses
  %i.dm = add nuw nsw i64 %.sroa.27.0352.i332920, 1 ; 6 uses
  %.sroa.21.0360.i.ptr333 = getelementptr inbounds nuw i8, ptr @209, i64 %.sroa.21.0360.i.idx331921 ; 2 uses
  %i.dn = trunc nuw nsw i64 %.sroa.27.0352.i332920 to i32 ; 3 uses
  %.val.i.jt18446744073709551615.i = load ptr, ptr %.sroa.21.0360.i.ptr333, align 8, !noalias !18705, !nonnull !46, !noundef !46 ; 3 uses
  %i.do = getelementptr i8, ptr %.sroa.21.0360.i.ptr333, i64 8
  %.val1.i.jt18446744073709551615.i = load i64, ptr %i.do, align 8, !noalias !18705, !noundef !46 ; 8 uses
  %i.dp = icmp ugt i64 %.val1.i.jt18446744073709551615.i, 2147483646
  br i1 %i.dp, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %bb.aj

.lr.ph938:                                        ; preds = %.lr.ph341.preheader, %.lr.ph341
  %.sroa.24.0355.i.idx338936 = phi i64 [ %.sroa.24.0355.i.add937, %.lr.ph341 ], [ %.sroa.24.0.i.idx, %.lr.ph341.preheader ] ; 2 uses
  %.sroa.27.0351.i339935 = phi i64 [ %i.dq, %.lr.ph341 ], [ %.sroa.27.0351.ph.i, %.lr.ph341.preheader ] ; 5 uses
  %.sroa.24.0355.i.add937 = add nuw nsw i64 %.sroa.24.0355.i.idx338936, 16 ; 3 uses
  %i.dq = add nuw nsw i64 %.sroa.27.0351.i339935, 1 ; 5 uses
  %.sroa.24.0355.i.ptr340 = getelementptr inbounds nuw i8, ptr @230, i64 %.sroa.24.0355.i.idx338936 ; 2 uses
  %i.dr = trunc nuw nsw i64 %.sroa.27.0351.i339935 to i32 ; 3 uses
  %.val.i.jt18446744073709551614.i = load ptr, ptr %.sroa.24.0355.i.ptr340, align 8, !noalias !18705, !nonnull !46, !noundef !46 ; 3 uses
  %i.ds = getelementptr i8, ptr %.sroa.24.0355.i.ptr340, i64 8
  %.val1.i.jt18446744073709551614.i = load i64, ptr %i.ds, align 8, !noalias !18705, !noundef !46 ; 8 uses
  %i.dt = icmp ugt i64 %.val1.i.jt18446744073709551614.i, 2147483646
  br i1 %i.dt, label %_RINvMs8_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1m_IB1m_IB1m_IB1m_INtNtNtB1u_5slice4iter4IterReEB2x_EB2x_EB2x_EB2x_EB2x_ERB2Y_ECskLngH8kgpZI_15ruff_python_ast.exit.thread99, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.du = trunc nuw nsw i64 %.val1.i.i to i32
  %i.dv = load i64, ptr %i.ce, align 16, !alias.scope !18703, !noalias !18705, !noundef !46
  %.sroa.0.0.i146.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %i.dv)
  store i64 %.sroa.0.0.i146.i, ptr %i.ce, align 16, !alias.scope !18703, !noalias !18705
  %i.dw = load i64, ptr %i.cf, align 8, !alias.scope !18703, !noalias !18705, !noundef !46
  %.sroa.0.0.i147.i = call noundef i64 @llvm.umax.i64(i64 %.val1.i.i, i64 %i.dw)
  store i64 %.sroa.0.0.i147.i, ptr %i.cf, align 8, !alias.scope !18703, !noalias !18705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18704
  %i.dx = load i64, ptr %i.cg, align 16, !alias.scope !18703, !noalias !18705, !noundef !46 ; 3 uses
  store i64 %i.dx, ptr %i.e, align 8, !noalias !18704
  %i.dy = icmp ult i64 %i.dx, 2305843009213693952
  call void @llvm.assume(i1 %i.dy), !noalias !18706
  %i.dz = icmp eq i64 %.sroa.27.0.i, %i.dx
  br i1 %i.dz, label %bb.al, label %.loopexit376.i, !prof !53

bb.ah:                                            ; preds = %.lr.ph894
  %i.ea = trunc nuw nsw i64 %.val1.i.jt0.i to i32
  %i.eb = load i64, ptr %i.ce, align 16, !alias.scope !18703, !noalias !18705, !noundef !46
  %.sroa.0.0.i146.jt0.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.jt0.i, i64 %i.eb)
  store i64 %.sroa.0.0.i146.jt0.i, ptr %i.ce, align 16, !alias.scope !18703, !noalias !18705
  %i.ec = load i64, ptr %i.cf, align 8, !alias.scope !18703, !noalias !18705, !noundef !46
  %.sroa.0.0.i147.jt0.i = call noundef i64 @llvm.umax.i64(i64 %.val1.i.jt0.i, i64 %i.ec)
  store i64 %.sroa.0.0.i147.jt0.i, ptr %i.cf, align 8, !alias.scope !18703, !noalias !18705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18704
  %i.ed = load i64, ptr %i.cg, align 16, !alias.scope !18703, !noalias !18705, !noundef !46 ; 3 uses
  store i64 %i.ed, ptr %i.e, align 8, !noalias !18704
  %i.ee = icmp ult i64 %i.ed, 2305843009213693952
  call void @llvm.assume(i1 %i.ee), !noalias !18706
  %i.ef = icmp eq i64 %.sroa.27.0354.i320891, %i.ed
  br i1 %i.ef, label %bb.am, label %.loopexit376.i, !prof !53

bb.ai:                                            ; preds = %.lr.ph908
  %i.eg = trunc nuw nsw i64 %.val1.i.jt2.i to i32
  %i.eh = load i64, ptr %i.ce, align 16, !alias.scope !18703, !noalias !18705, !noundef !46
  %.sroa.0.0.i146.jt2.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.jt2.i, i64 %i.eh)
  store i64 %.sroa.0.0.i146.jt2.i, ptr %i.ce, align 16, !alias.scope !18703, !noalias !18705
  %i.ei = load i64, ptr %i.cf, align 8, !alias.scope !18703, !noalias !18705, !noundef !46
  %.sroa.0.0.i147.jt2.i = call noundef i64 @llvm.umax.i64(i64 %.val1.i.jt2.i, i64 %i.ei)
  store i64 %.sroa.0.0.i147.jt2.i, ptr %i.cf, align 8, !alias.scope !18703, !noalias !18705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18704
  %i.ej = load i64, ptr %i.cg, align 16, !alias.scope !18703, !noalias !18705, !noundef !46 ; 3 uses
  store i64 %i.ej, ptr %i.e, align 8, !noalias !18704
  %i.ek = icmp ult i64 %i.ej, 2305843009213693952
  call void @llvm.assume(i1 %i.ek), !noalias !18706
  %i.el = icmp eq i64 %.sroa.27.0353.i325905, %i.ej
  br i1 %i.el, label %bb.an, label %.loopexit376.i, !prof !53

bb.aj:                                            ; preds = %.lr.ph923
  %i.em = trunc nuw nsw i64 %.val1.i.jt18446744073709551615.i to i32
  %i.en = load i64, ptr %i.ce, align 16, !alias.scope !18703, !noalias !18705, !noundef !46
  %.sroa.0.0.i146.jt18446744073709551615.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.jt18446744073709551615.i, i64 %i.en)
  store i64 %.sroa.0.0.i146.jt18446744073709551615.i, ptr %i.ce, align 16, !alias.scope !18703, !noalias !18705
  %i.eo = load i64, ptr %i.cf, align 8, !alias.scope !18703, !noalias !18705, !noundef !46
  %.sroa.0.0.i147.jt18446744073709551615.i = call noundef i64 @llvm.umax.i64(i64 %.val1.i.jt18446744073709551615.i, i64 %i.eo)
  store i64 %.sroa.0.0.i147.jt18446744073709551615.i, ptr %i.cf, align 8, !alias.scope !18703, !noalias !18705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18704
  %i.ep = load i64, ptr %i.cg, align 16, !alias.scope !18703, !noalias !18705, !noundef !46 ; 3 uses
  store i64 %i.ep, ptr %i.e, align 8, !noalias !18704
  %i.eq = icmp ult i64 %i.ep, 2305843009213693952
  call void @llvm.assume(i1 %i.eq), !noalias !18706
  %i.er = icmp eq i64 %.sroa.27.0352.i332920, %i.ep
  br i1 %i.er, label %bb.ao, label %.loopexit376.i, !prof !53

bb.ak:                                            ; preds = %.lr.ph938
  %i.es = trunc nuw nsw i64 %.val1.i.jt18446744073709551614.i to i32
  %i.et = load i64, ptr %i.ce, align 16, !alias.scope !18703, !noalias !18705, !noundef !46
  %.sroa.0.0.i146.jt18446744073709551614.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.jt18446744073709551614.i, i64 %i.et)
  store i64 %.sroa.0.0.i146.jt18446744073709551614.i, ptr %i.ce, align 16, !alias.scope !18703, !noalias !18705
  %i.eu = load i64, ptr %i.cf, align 8, !alias.scope !18703, !noalias !18705, !noundef !46
  %.sroa.0.0.i147.jt18446744073709551614.i = call noundef i64 @llvm.umax.i64(i64 %.val1.i.jt18446744073709551614.i, i64 %i.eu)
  store i64 %.sroa.0.0.i147.jt18446744073709551614.i, ptr %i.cf, align 8, !alias.scope !18703, !noalias !18705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18704
  %i.ev = load i64, ptr %i.cg, align 16, !alias.scope !18703, !noalias !18705, !noundef !46 ; 3 uses
  store i64 %i.ev, ptr %i.e, align 8, !noalias !18704
  %i.ew = icmp ult i64 %i.ev, 2305843009213693952
  call void @llvm.assume(i1 %i.ew), !noalias !18706
  %i.ex = icmp eq i64 %.sroa.27.0351.i339935, %i.ev
  br i1 %i.ex, label %bb.ap, label %.loopexit376.i, !prof !53

.loopexit376.i:                                   ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef nonnull @34, ptr nonnull inttoptr (i64 95 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #61
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %.loopexit376.i
  unreachable

bb.al:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18704
  %i.ey = load i64, ptr %i.ch, align 16, !range !52, !alias.scope !18707, !noalias !18705, !noundef !46
  %i.ez = icmp eq i64 %.sroa.27.0.i, %i.ey
  br i1 %i.ez, label %bb.aq, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.i

bb.am:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18704
  %i.fa = load i64, ptr %i.ch, align 16, !range !52, !alias.scope !18707, !noalias !18705, !noundef !46
  %i.fb = icmp eq i64 %.sroa.27.0354.i320891, %i.fa
  br i1 %i.fb, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt0.i

bb.an:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18704
  %i.fc = load i64, ptr %i.ch, align 16, !range !52, !alias.scope !18707, !noalias !18705, !noundef !46
  %i.fd = icmp eq i64 %.sroa.27.0353.i325905, %i.fc
  br i1 %i.fd, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt2.i

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18704
  %i.fe = load i64, ptr %i.ch, align 16, !range !52, !alias.scope !18707, !noalias !18705, !noundef !46
  %i.ff = icmp eq i64 %.sroa.27.0352.i332920, %i.fe
  br i1 %i.ff, label %bb.at, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt18446744073709551615.i

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18704
  %i.fg = load i64, ptr %i.ch, align 16, !range !52, !alias.scope !18707, !noalias !18705, !noundef !46
  %i.fh = icmp eq i64 %.sroa.27.0351.i339935, %i.fg
  br i1 %i.fh, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt18446744073709551614.i

bb.aq:                                            ; preds = %bb.al
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ar:                                            ; preds = %bb.am
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt0.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.as:                                            ; preds = %bb.an
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt2.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.at:                                            ; preds = %bb.ao
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt18446744073709551615.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.au:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt18446744073709551614.i unwind label %.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.i: ; preds = %bb.aq, %bb.al
  %i.fi = load ptr, ptr %i.ci, align 8, !alias.scope !18707, !noalias !18705, !nonnull !46, !noundef !46
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.sroa.27.0.i
  store i32 %i.du, ptr %i.fj, align 4, !noalias !18705
  store i64 %i.da, ptr %i.cg, align 16, !alias.scope !18707, !noalias !18705
  %i.fk = load ptr, ptr %i.cj, align 8, !alias.scope !18703, !noalias !18705, !nonnull !46, !align !54, !noundef !46
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 9
  %i.fm = load i8, ptr %i.fl, align 1, !range !51, !noalias !18705, !noundef !46
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.av, label %.noexc42

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt0.i: ; preds = %bb.ar, %bb.am
  %i.fo = load ptr, ptr %i.ci, align 8, !alias.scope !18707, !noalias !18705, !nonnull !46, !noundef !46
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.sroa.27.0354.i320891
  store i32 %i.ea, ptr %i.fp, align 4, !noalias !18705
  store i64 %i.de, ptr %i.cg, align 16, !alias.scope !18707, !noalias !18705
  %i.fq = load ptr, ptr %i.cj, align 8, !alias.scope !18703, !noalias !18705, !nonnull !46, !align !54, !noundef !46
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 9
  %i.fs = load i8, ptr %i.fr, align 1, !range !51, !noalias !18705, !noundef !46
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.aw, label %.noexc43

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt2.i: ; preds = %bb.as, %bb.an
  %i.fu = load ptr, ptr %i.ci, align 8, !alias.scope !18707, !noalias !18705, !nonnull !46, !noundef !46
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.sroa.27.0353.i325905
  store i32 %i.eg, ptr %i.fv, align 4, !noalias !18705
  store i64 %i.di, ptr %i.cg, align 16, !alias.scope !18707, !noalias !18705
  %i.fw = load ptr, ptr %i.cj, align 8, !alias.scope !18703, !noalias !18705, !nonnull !46, !align !54, !noundef !46
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 9
  %i.fy = load i8, ptr %i.fx, align 1, !range !51, !noalias !18705, !noundef !46
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.ax, label %.noexc44

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt18446744073709551615.i: ; preds = %bb.at, %bb.ao
  %i.ga = load ptr, ptr %i.ci, align 8, !alias.scope !18707, !noalias !18705, !nonnull !46, !noundef !46
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.sroa.27.0352.i332920
  store i32 %i.em, ptr %i.gb, align 4, !noalias !18705
  store i64 %i.dm, ptr %i.cg, align 16, !alias.scope !18707, !noalias !18705
  %i.gc = load ptr, ptr %i.cj, align 8, !alias.scope !18703, !noalias !18705, !nonnull !46, !align !54, !noundef !46
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 9
  %i.ge = load i8, ptr %i.gd, align 1, !range !51, !noalias !18705, !noundef !46
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.ay, label %.noexc45

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexE8push_mutCskLngH8kgpZI_15ruff_python_ast.exit.jt18446744073709551614.i: ; preds = %bb.au, %bb.ap
  %i.gg = load ptr, ptr %i.ci, align 8, !alias.scope !18707, !noalias !18705, !nonnull !46, !noundef !46
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.sroa.27.0351.i339935
  store i32 %i.es, ptr %i.gh, align 4, !noalias !18705
  store i64 %i.dq, ptr %i.cg, align 16, !alias.scope !18707, !noalias !18705
  %i.gi = load ptr, ptr %i.cj, align 8, !alias.scope !18703, !noalias !18705, !nonnull !46, !align !54, !noundef !46
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 9
  %i.gk = load i8, ptr %i.gj, align 1, !range !51, !noalias !18705, !noundef !46
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.az, label %.noexc46

end_hunk_1
