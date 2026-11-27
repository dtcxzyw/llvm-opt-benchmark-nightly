Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5635, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5635.0..sroa_idx636, i64 64, i1 false), !noalias !16469
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit

bb.r:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.gd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit248, %bb.dl, %bb.cx, %bb.bl, %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtB2m_4ExprEB3i_.exit, %bb.c
  ret void

bb.s:                                             ; preds = %bb.d
  store i32 %i.bq, ptr %i.bv, align 4
  store i32 %i.bs, ptr %.sroa.424.0..sroa_idx, align 8
  store i32 %.sroa.0.0.copyload, ptr %.sroa.525.0..sroa_idx, align 4
  store i32 23, ptr %0, align 8
  br label %bb.r

bb.t:                                             ; preds = %bb.d
  store i32 %.sroa.0.0.copyload, ptr %i.bv, align 4
  store i32 %i.bq, ptr %.sroa.424.0..sroa_idx, align 8
  store i32 %i.bs, ptr %.sroa.525.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  store i32 22, ptr %0, align 8
  br label %bb.r

bb.u:                                             ; preds = %bb.d
  store i32 %.sroa.0.0.copyload, ptr %i.bv, align 4
  store i32 %i.bq, ptr %.sroa.424.0..sroa_idx, align 8
  store i32 %i.bs, ptr %.sroa.525.0..sroa_idx, align 4
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.621.0..sroa_idx, align 8
  store i32 22, ptr %0, align 8
  br label %bb.r

.body205:                                         ; preds = %bb.ax, %.body262, %bb.v, %.body207
  %.sroa.0152.0 = phi i1 [ %.not193, %.body207 ], [ true, %bb.v ], [ true, %.body262 ], [ true, %bb.ax ]
  %.pn195.pn = phi { ptr, i32 } [ %.pn195, %.body207 ], [ %i.ev, %bb.v ], [ %eh.lpad-body263, %.body262 ], [ %.pn.i203.ph, %bb.ax ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.be, i64 23
  %i.et = load i8, ptr %i.es, align 1, !range !41, !noundef !17 ; 2 uses
  %i.eu = icmp ne i8 %i.et, -1
  %or.cond = and i1 %.sroa.0152.0, %i.eu
  br i1 %or.cond, label %bb.bp, label %common.resume

bb.v:                                             ; preds = %bb.ae
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body205

bb.w:                                             ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ex = load <2 x i32>, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ez = load i32, ptr %i.ey, align 8
  store i32 %i.ez, ptr %i.bf, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.037.0.copyload = load i64, ptr %i.fa, align 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.039.0.copyload = load i64, ptr %i.fb, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5343.0..sroa_idx, i8 0, i64 24, i1 false)
  store i64 %.sroa.037.0.copyload, ptr %i.bc, align 8
  %.sroa.0341.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  store i64 0, ptr %.sroa.0341.sroa.4.0..sroa_idx, align 8
  %.sroa.4342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store i64 %.sroa.039.0.copyload, ptr %.sroa.4342.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16470)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !16471
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16473), !noalias !16470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16474), !noalias !16470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16476), !noalias !16470
  %i.fd = inttoptr i64 %.sroa.037.0.copyload to ptr ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !16477, !noundef !17
  %i.ff = icmp eq i64 %i.fe, 0
  %i.fg = inttoptr i64 %.sroa.039.0.copyload to ptr ; 2 uses
  br i1 %i.ff, label %.thread460, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i

_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.w
  store i64 1, ptr %.sroa.0341.sroa.4.0..sroa_idx, align 8, !alias.scope !16478, !noalias !16470
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %.sroa.0.0.copyload2.i.i.i = load i32, ptr %i.fh, align 8, !noalias !16479 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.copyload2.i.i.i, -1
  br i1 %.not.i.i.i, label %.thread460, label %bb.x

bb.x:                                             ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %.sroa.7.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.411.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7.0..sroa_idx3.i.i.i, i64 68, i1 false), !noalias !16475
  store i32 %.sroa.0.0.copyload2.i.i.i, ptr %i.w, align 8, !noalias !16475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16480), !noalias !16470
  %i.fi = load i64, ptr %.sroa.5343.0..sroa_idx, align 8, !alias.scope !16481, !noalias !16470, !noundef !17 ; 3 uses
  %i.fj = load i64, ptr %i.fg, align 8, !noalias !16482, !noundef !17
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i

_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.x
  %i.fl = add i64 %i.fi, 1
  store i64 %i.fl, ptr %.sroa.5343.0..sroa_idx, align 8, !alias.scope !16481, !noalias !16470
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fn = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %i.fi ; 2 uses
  %.sroa.04.0.copyload5.i.i.i = load i64, ptr %i.fn, align 8, !noalias !16483 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %.sroa.04.0.copyload5.i.i.i, -1
  br i1 %.not1.i.i.i, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i, label %bb.y

_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i: ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %bb.x
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.w)
          to label %.thread460 unwind label %bb.ac, !noalias !16475, !inline_history !16179

bb.y:                                             ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %.sroa.76.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.sroa.6399.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !16484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6399.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.76.0..sroa_idx7.i.i.i, i64 64, i1 false), !noalias !16485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.w, i64 72, i1 false), !noalias !16485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16475
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4396)
  store i64 %.sroa.04.0.copyload5.i.i.i, ptr %i.v, align 8, !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16484
  invoke fastcc void @_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.t, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.v)
          to label %bb.ad unwind label %bb.z, !noalias !16484, !inline_history !16183

bb.z:                                             ; preds = %bb.y
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load i32, ptr %i.u, align 8, !range !43, !alias.scope !16487, !noalias !16484, !noundef !17
  %i.fq = icmp eq i32 %i.fp, -1
  br i1 %i.fq, label %bb.ax, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %bb.ax unwind label %bb.ab, !noalias !16484, !inline_history !16186

bb.ab:                                            ; preds = %bb.aa
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !16484, !inline_history !16183
  unreachable

.thread460:                                       ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16475
  br label %bb.ae

bb.ac:                                            ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ad:                                            ; preds = %bb.y
  %.sroa.4396.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4396, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %.sroa.4396.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !16488
  %.sroa.0395.0.copyload = load i32, ptr %i.t, align 8, !noalias !16488 ; 2 uses
  %.sroa.4396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.4396, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.4396.0..sroa_idx, i64 68, i1 false), !noalias !16488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !16484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(140) %.sroa.4396, i64 140, i1 false), !noalias !16489
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4396)
  %.not.i = icmp eq i32 %.sroa.0395.0.copyload, -1
  br i1 %.not.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.thread460, %bb.ad
  store i64 0, ptr %i.bd, align 8, !alias.scope !16470
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ft, align 8, !alias.scope !16470
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 0, ptr %i.fu, align 8, !alias.scope !16470
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !16471
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEIB1q_NtB20_7PatternEENCNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr0EEB3g_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2o_3zip3ZipINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtB14_9generated4ExprEIB3p_NtB3Z_7PatternEENCNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr0EE9from_iterB4O_.exit unwind label %bb.v, !noalias !16470, !inline_history !16187

bb.af:                                            ; preds = %bb.ai
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(144) %i.ah) #44
          to label %bb.ax unwind label %bb.aw, !noalias !16470, !inline_history !16187

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !16471
  store i32 %.sroa.0395.0.copyload, ptr %i.ah, align 8, !noalias !16471
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(140) %.sroa.7, i64 140, i1 false), !noalias !16471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16491), !noalias !16470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16492), !noalias !16470
  %.val.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !16493, !noalias !16470, !nonnull !17, !noundef !17
  %.val14.i.i.i = load i64, ptr %.sroa.0341.sroa.4.0..sroa_idx, align 8, !alias.scope !16493, !noalias !16470, !noundef !17
  %i.fw = load i64, ptr %.val.i.i.i, align 8, !noalias !16494, !noundef !17
  %i.fx = sub i64 %i.fw, %.val14.i.i.i
  %.val15.i.i.i = load ptr, ptr %.sroa.4342.0..sroa_idx, align 8, !alias.scope !16493, !noalias !16470, !nonnull !17, !noundef !17
  %.val16.i.i.i = load i64, ptr %.sroa.5343.0..sroa_idx, align 8, !alias.scope !16493, !noalias !16470, !noundef !17
  %i.fy = load i64, ptr %.val15.i.i.i, align 8, !noalias !16495, !noundef !17
  %i.fz = sub i64 %i.fy, %.val16.i.i.i
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.fz, i64 %i.fx) ; 2 uses
  %i.ga = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i.i.i, i64 1)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ga, i64 4) ; 3 uses
  %i.gb = mul i64 %.sroa.0.0.i, 144               ; 3 uses
  %or.cond.i.i = icmp ugt i64 %.sroa.0.0.i.i.i.i, 64051194700380386
  br i1 %or.cond.i.i, label %bb.ai, label %bb.ah, !prof !38

bb.ah:                                            ; preds = %bb.ag
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.aj, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.ah
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !16496
  %i.gd = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.gb, i64 noundef range(i64 1, 9) 8) #42, !noalias !16496 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.ag
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.ag ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.gb) #41
          to label %.noexc266 unwind label %bb.af, !noalias !16470

.noexc266:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.ah
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ah ], [ %i.gd, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.ah ], [ %.sroa.0.0.i, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ] ; 2 uses
  %i.gf = icmp ule i64 %.sroa.0.0.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.gf), !noalias !16470
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.10.0.i, ptr noundef nonnull align 8 dereferenceable(144) %i.ah, i64 144, i1 false)
  store i64 %.sroa.4.0.i, ptr %i.ai, align 8, !noalias !16471
  %.sroa.4.0..sroa_idx.i204 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx.i204, align 8, !noalias !16471
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !16471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !16471
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !16471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !noalias !16470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16498), !noalias !16470
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16500), !noalias !16501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16502), !noalias !16501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16504), !noalias !16501
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !16505, !noalias !16501, !noundef !17 ; 2 uses
  %i.gi = load ptr, ptr %i.ag, align 8, !alias.scope !16505, !noalias !16501, !nonnull !17, !noundef !17 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !16506, !noundef !17
  %i.gk = icmp eq i64 %i.gh, %i.gj
  br i1 %i.gk, label %.thread465, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299.lr.ph

_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299.lr.ph: ; preds = %bb.aj
  %.sroa.411.0..sroa_idx.i.i.i303 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %.sroa.6423.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4420.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4420, i64 68
  %.sroa.4420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.7384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  br label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299

_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299: ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.gn = phi ptr [ %.sroa.10.0.i, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299.lr.ph ], [ %i.hj, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit ]
  %i.go = phi i64 [ 1, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299.lr.ph ], [ %i.hl, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit ] ; 5 uses
  %i.gp = phi ptr [ %i.gi, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299.lr.ph ], [ %i.hn, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit ]
  %i.gq = phi i64 [ %i.gh, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299.lr.ph ], [ %i.hm, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16508), !noalias !16501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16509), !noalias !16501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16510), !noalias !16501
  %i.gr = add i64 %i.gq, 1
  store i64 %i.gr, ptr %i.gg, align 8, !alias.scope !16511, !noalias !16501
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gt = getelementptr inbounds nuw [72 x i8], ptr %i.gs, i64 %i.gq ; 2 uses
  %.sroa.0.0.copyload2.i.i.i300 = load i32, ptr %i.gt, align 8, !noalias !16512 ; 2 uses
  %.not.i.i.i301 = icmp eq i32 %.sroa.0.0.copyload2.i.i.i300, -1
  br i1 %.not.i.i.i301, label %.thread465, label %bb.ak

bb.ak:                                            ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299
  %.sroa.7.0..sroa_idx3.i.i.i302 = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.411.0..sroa_idx.i.i.i303, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7.0..sroa_idx3.i.i.i302, i64 68, i1 false), !noalias !16513
  store i32 %.sroa.0.0.copyload2.i.i.i300, ptr %i.l, align 8, !noalias !16513
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16514), !noalias !16501
  %i.gu = load i64, ptr %i.gm, align 8, !alias.scope !16515, !noalias !16501, !noundef !17 ; 3 uses
  %i.gv = load ptr, ptr %i.gl, align 8, !alias.scope !16515, !noalias !16501, !nonnull !17, !noundef !17 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !16516, !noundef !17
  %i.gx = icmp eq i64 %i.gu, %i.gw
  br i1 %i.gx, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i314, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i304

_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i304: ; preds = %bb.ak
  %i.gy = add i64 %i.gu, 1
  store i64 %i.gy, ptr %i.gm, align 8, !alias.scope !16515, !noalias !16501
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.ha = getelementptr inbounds nuw [72 x i8], ptr %i.gz, i64 %i.gu ; 2 uses
  %.sroa.04.0.copyload5.i.i.i305 = load i64, ptr %i.ha, align 8, !noalias !16517 ; 2 uses
  %.not1.i.i.i306 = icmp eq i64 %.sroa.04.0.copyload5.i.i.i305, -1
  br i1 %.not1.i.i.i306, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i314, label %bb.al

_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i314: ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i304, %bb.ak
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.l)
          to label %.thread465 unwind label %bb.ap, !noalias !16513, !inline_history !16233

bb.al:                                            ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i304
  %.sroa.76.0..sroa_idx7.i.i.i307 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6423.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.76.0..sroa_idx7.i.i.i307, i64 64, i1 false), !noalias !16519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !16519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16513
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4420)
  store i64 %.sroa.04.0.copyload5.i.i.i305, ptr %i.k, align 8, !noalias !16520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16518
  invoke fastcc void @_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.k)
          to label %bb.aq unwind label %bb.am, !noalias !16518, !inline_history !16237

bb.am:                                            ; preds = %bb.al
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load i32, ptr %i.j, align 8, !range !43, !alias.scope !16521, !noalias !16518, !noundef !17
  %i.hd = icmp eq i32 %i.hc, -1
  br i1 %i.hd, label %.body317, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.body317 unwind label %bb.ao, !noalias !16518, !inline_history !16240

bb.ao:                                            ; preds = %bb.an
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !16518, !inline_history !16237
  unreachable

.thread465:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299, %bb.aj, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16513
  br label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1R_3zip3ZipINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtBJ_9generated4ExprEIB2S_NtB3s_7PatternEENCNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr0EEB4g_.exit.i

.body317:                                         ; preds = %bb.ap, %bb.an, %bb.am, %bb.as
  %.pn.i.i = phi { ptr, i32 } [ %i.hq, %bb.as ], [ %i.hf, %bb.ap ], [ %i.hb, %bb.an ], [ %i.hb, %bb.am ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEIB1q_NtB20_7PatternEENCNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr0EEB3g_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ag) #44
          to label %.body262 unwind label %bb.au, !noalias !16501, !inline_history !16241

bb.ap:                                            ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.thread.i.i.i314
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body317

bb.aq:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %.sroa.4420.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !16522
  %.sroa.0419.0.copyload = load i32, ptr %i.i, align 8, !noalias !16522 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.4420, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.4420.0..sroa_idx, i64 68, i1 false), !noalias !16522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %.sroa.7384, ptr noundef nonnull align 4 dereferenceable(140) %.sroa.4420, i64 140, i1 false), !noalias !16523
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4420)
  %.not.i.i = icmp eq i32 %.sroa.0419.0.copyload, -1
  br i1 %.not.i.i, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1R_3zip3ZipINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtBJ_9generated4ExprEIB2S_NtB3s_7PatternEENCNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr0EEB4g_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !16524
  store i32 %.sroa.0419.0.copyload, ptr %i.x, align 8, !noalias !16524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %.sroa.7384.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(140) %.sroa.7384, i64 140, i1 false), !noalias !16524
  %i.hg = icmp samesign ult i64 %i.go, 64051194700380388
  tail call void @llvm.assume(i1 %i.hg), !noalias !16470
  %i.hh = load i64, ptr %i.ai, align 8, !range !28, !alias.scope !16525, !noalias !16470, !noundef !17
  %i.hi = icmp eq i64 %i.go, %i.hh
  br i1 %i.hi, label %bb.at, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit_crit_edge, %bb.ar
  %i.hj = phi ptr [ %.pre665, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit_crit_edge ], [ %i.gn, %bb.ar ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [144 x i8], ptr %i.hj, i64 %i.go
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.hk, ptr noundef nonnull align 8 dereferenceable(144) %i.x, i64 144, i1 false)
  %i.hl = add nuw nsw i64 %i.go, 1                ; 2 uses
  store i64 %i.hl, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !16525, !noalias !16470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16524
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7384)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16527), !noalias !16501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16528), !noalias !16501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16530), !noalias !16501
  %i.hm = load i64, ptr %i.gg, align 8, !alias.scope !16531, !noalias !16501, !noundef !17 ; 2 uses
  %i.hn = load ptr, ptr %i.ag, align 8, !alias.scope !16531, !noalias !16501, !nonnull !17, !noundef !17 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !noalias !16532, !noundef !17
  %i.hp = icmp eq i64 %i.hm, %i.ho
  br i1 %i.hp, label %.thread465, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i299

bb.as:                                            ; preds = %bb.at
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(144) %i.x) #44
          to label %.body317 unwind label %bb.au, !noalias !16501, !inline_history !16241

bb.at:                                            ; preds = %bb.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16534), !noalias !16501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16535), !noalias !16501
  %.val15.i.i.i296 = load ptr, ptr %i.gl, align 8, !alias.scope !16536, !noalias !16501, !nonnull !17, !noundef !17
  %i.hr = load i64, ptr %.val15.i.i.i296, align 8, !noalias !16537, !noundef !17
  %.val16.i.i.i297 = load i64, ptr %i.gm, align 8, !alias.scope !16536, !noalias !16501, !noundef !17
end_hunk_0
begin_hunk_1_@_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr:bb.a
  br label %bb.az

.body207:                                         ; preds = %bb.bg, %bb.bf, %bb.bh, %bb.bc, %bb.bm
  %.pn195 = phi { ptr, i32 } [ %i.jh, %bb.bm ], [ %i.im, %bb.bc ], [ %i.is, %bb.bh ], [ %i.is, %bb.bf ], [ %i.is, %bb.bg ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #44
          to label %.body205 unwind label %bb.bi

bb.bf:                                            ; preds = %bb.ay
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16542)
  call void @llvm.experimental.noalias.scope.decl(metadata !16543)
  call void @llvm.experimental.noalias.scope.decl(metadata !16544)
  call void @llvm.experimental.noalias.scope.decl(metadata !16545)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bb, i64 23
  %i.iv = load i8, ptr %i.iu, align 1, !range !18, !alias.scope !16546, !noundef !17
  %i.iw = and i8 %i.iv, -2
  %switch.i.i.i.i = icmp eq i8 %i.iw, -48
  br i1 %switch.i.i.i.i, label %bb.bg, label %.body207

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !16547)
  %.pn.i.i.i.i.i = load ptr, ptr %i.it, align 8, !alias.scope !16548, !nonnull !17, !noundef !17
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i, i64 -8
  %i.ix = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i, i64 -1 release, align 8, !noalias !16548
  %i.iy = icmp eq i64 %i.ix, 1
  br i1 %i.iy, label %bb.bh, label %.body207, !prof !16

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.it)
          to label %.body207 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.ef, %bb.eb, %bb.do, %bb.da, %bb.br, %bb.bh, %.thread527, %bb.gg, %bb.gf, %.thread539, %bb.dd, %bb.dc, %.body217, %.body332, %.body207
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.bj:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !16549)
  call void @llvm.experimental.noalias.scope.decl(metadata !16550)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %.val10.i.i = load ptr, ptr %i.ja, align 8, !alias.scope !16551, !nonnull !17, !noundef !17 ; 2 uses
  %i.jb = mul nuw i64 %i.ie, 144                  ; 2 uses
  %i.jc = icmp eq i64 %i.id, 0
  br i1 %i.jc, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i, label %bb.bk

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.bj
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i, i64 noundef %i.jb, i64 noundef range(i64 1, 9) 8) #42, !noalias !16551
  br label %.thread

.thread:                                          ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i, %bb.bk
  %storemerge.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i ], [ %i.je, %bb.bk ]
  store ptr %storemerge.i.i, ptr %i.ja, align 8, !alias.scope !16551
  store i64 %i.id, ptr %i.bd, align 8, !alias.scope !16551
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jd = mul nuw i64 %i.id, 144                  ; 2 uses
  %i.je = call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i, i64 noundef %i.jb, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 1, 0) %i.jd) #42, !noalias !16551 ; 2 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.bn, label %.thread

bb.bl:                                            ; preds = %.thread, %bb.az
  %.sroa.058.0.copyload = load i32, ptr %i.bf, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.ex, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.058.0.copyload, ptr %.sroa.656.0..sroa_idx, align 8
  store i32 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.r

bb.bm:                                            ; preds = %bb.bn
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body207

bb.bn:                                            ; preds = %bb.bk
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.jd) #41
          to label %bb.bo unwind label %bb.bm

bb.bo:                                            ; preds = %bb.ek, %bb.bn
  unreachable

bb.bp:                                            ; preds = %.body205
  call void @llvm.experimental.noalias.scope.decl(metadata !16552)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16553)
  call void @llvm.experimental.noalias.scope.decl(metadata !16554)
  call void @llvm.experimental.noalias.scope.decl(metadata !16555)
  call void @llvm.experimental.noalias.scope.decl(metadata !16556)
  %i.jj = and i8 %i.et, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.jj, -48
  br i1 %switch.i.i.i.i.i, label %bb.bq, label %common.resume

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !16557)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.ji, align 8, !alias.scope !16558, !nonnull !17, !noundef !17
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.jk = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !16558
  %i.jl = icmp eq i64 %i.jk, 1
  br i1 %i.jl, label %bb.br, label %common.resume, !prof !16

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ji)
          to label %common.resume unwind label %bb.bi

bb.bs:                                            ; preds = %.body332
  br i1 %.sroa.0149.1, label %bb.cz, label %bb.cy

.thread474:                                       ; preds = %bb.m
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bt:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr %i.dk, ptr %i.aw, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.jo = load <2 x i32>, ptr %i.jn, align 8
  %i.jp = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.az)
          to label %bb.bv unwind label %bb.bu

.body332:                                         ; preds = %bb.cs, %.body.i326, %bb.ca, %bb.bu, %.body217
  %.sroa.0148.1 = phi i1 [ false, %.body217 ], [ true, %bb.ca ], [ true, %bb.bu ], [ true, %.body.i326 ], [ true, %bb.cs ] ; 2 uses
  %.sroa.0149.1 = phi i1 [ false, %.body217 ], [ false, %bb.ca ], [ %.sroa.0149.2, %bb.bu ], [ false, %.body.i326 ], [ false, %bb.cs ]
  %.pn190 = phi { ptr, i32 } [ %i.me, %.body217 ], [ %i.ke, %bb.ca ], [ %i.jq, %bb.bu ], [ %eh.lpad-body.i327, %.body.i326 ], [ %.pn.i.i321.ph, %bb.cs ] ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(8) %i.aw) #44
          to label %bb.bs unwind label %bb.bi

bb.bu:                                            ; preds = %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %.noexc213, %bb.bt
  %.sroa.0149.2 = phi i1 [ false, %.noexc213 ], [ true, %bb.bt ], [ false, %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ]
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body332

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.076.0.copyload = load i64, ptr %i.jr, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !16559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16560
  store i64 %.sroa.076.0.copyload, ptr %i.s, align 8, !alias.scope !16561, !noalias !16562
  %.sroa.4369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4369.0..sroa_idx, align 8, !alias.scope !16561, !noalias !16562
  call void @llvm.experimental.noalias.scope.decl(metadata !16563)
  call void @llvm.experimental.noalias.scope.decl(metadata !16564)
  call void @llvm.experimental.noalias.scope.decl(metadata !16565), !noalias !16566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16567
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7426)
  call void @llvm.experimental.noalias.scope.decl(metadata !16568), !noalias !16566
  call void @llvm.experimental.noalias.scope.decl(metadata !16569), !noalias !16570
  %i.js = inttoptr i64 %.sroa.076.0.copyload to ptr ; 4 uses
  %i.jt = load i64, ptr %i.js, align 8, !noalias !16571, !noundef !17
  %i.ju = icmp eq i64 %i.jt, 0
  br i1 %i.ju, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit.i.thread, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i

_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %bb.bv
  store i64 1, ptr %.sroa.4369.0..sroa_idx, align 8, !alias.scope !16572, !noalias !16570
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %.sroa.0438.0.copyload = load i64, ptr %i.jv, align 8, !noalias !16573 ; 2 uses
  %.not.i2.i = icmp eq i64 %.sroa.0438.0.copyload, -1
  br i1 %.not.i2.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit.i.thread, label %bb.bw

bb.bw:                                            ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %.sroa.6440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %.sroa.4445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4445.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6440.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16574
  store i64 %.sroa.0438.0.copyload, ptr %i.c, align 8, !noalias !16575
  invoke fastcc void @_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.c)
          to label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit.i unwind label %bb.bx, !noalias !16576, !inline_history !16324

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit.i: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16574
  %.sroa.0424.0.copyload = load i32, ptr %i.d, align 8, !noalias !16577 ; 2 uses
  %.sroa.7426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7426, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7426.0..sroa_idx, i64 68, i1 false), !noalias !16577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16574
  %.not.i.i322 = icmp eq i32 %.sroa.0424.0.copyload, -1
  br i1 %.not.i.i322, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit.i.thread, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.by:                                            ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16567
  store i32 %.sroa.0424.0.copyload, ptr %i.g, align 8, !noalias !16567
  %.sroa.7426.0..sroa_idx427 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7426.0..sroa_idx427, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7426, i64 68, i1 false), !noalias !16567
  %i.jx = load i64, ptr %i.js, align 8, !noalias !16578, !noundef !17
  %i.jy = add i64 %i.jx, -1                       ; 2 uses
  %i.jz = call i64 @llvm.uadd.sat.i64(i64 %i.jy, i64 1)
  %.sroa.0.0.i.i324 = call noundef i64 @llvm.umax.i64(i64 %i.jz, i64 4) ; 3 uses
  %i.ka = mul i64 %.sroa.0.0.i.i324, 72           ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.jy, 128102389400760774
  br i1 %or.cond.i.i.i, label %bb.ce, label %bb.cd, !prof !38

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit.i.thread: ; preds = %bb.bv, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit.i
  store i64 0, ptr %i.af, align 8, !alias.scope !16579, !noalias !16566
  %i.kb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.kb, align 8, !alias.scope !16579, !noalias !16566
  %i.kc = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %i.kc, align 8, !alias.scope !16579, !noalias !16566
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7426)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16567
  %i.kd = icmp eq i64 %.sroa.076.0.copyload, ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64)
  br i1 %i.kd, label %.noexc213, label %bb.bz, !prof !32

bb.bz:                                            ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit.i.thread
  invoke void @_RINvNvXsI_CsaSrGj5dYoxL_8thin_vecINtB8_8IntoIterpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.s)
          to label %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i unwind label %bb.ca, !noalias !16580, !inline_history !16329

bb.ca:                                            ; preds = %bb.bz
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.body332 unwind label %bb.cb, !noalias !16580, !inline_history !16329

_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.bz
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc213 unwind label %bb.bu, !noalias !16580, !inline_history !16329

bb.cb:                                            ; preds = %bb.ca
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !16580, !inline_history !16329
  unreachable

bb.cc:                                            ; preds = %bb.ce
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.g) #44
          to label %bb.cs unwind label %bb.cr, !noalias !16581, !inline_history !16330

bb.cd:                                            ; preds = %bb.by
  %i.kh = icmp eq i64 %i.ka, 0
  br i1 %i.kh, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsb6FLkjZuKG_18ruff_python_parser.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.cd
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !16582, !inline_history !16329
  %i.ki = call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ka, i64 noundef range(i64 1, 9) 8) #42, !noalias !16582, !inline_history !16329 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.ce, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.ce:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.by
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.by ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ka) #41
          to label %.noexc.i330 unwind label %bb.cc, !noalias !16581, !inline_history !16329

.noexc.i330:                                      ; preds = %bb.ce
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.cd
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.cd ], [ %i.ki, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 3 uses
  %.sroa.4.0.i.i325 = phi i64 [ 0, %bb.cd ], [ %.sroa.0.0.i.i324, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %i.kk = icmp ule i64 %.sroa.0.0.i.i324, %.sroa.4.0.i.i325
  call void @llvm.assume(i1 %i.kk), !noalias !16570
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  store i64 %.sroa.4.0.i.i325, ptr %i.h, align 8, !noalias !16567
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !16567
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !16567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16567
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7426)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !16580
  call void @llvm.experimental.noalias.scope.decl(metadata !16583), !noalias !16566
  call void @llvm.experimental.noalias.scope.decl(metadata !16584), !noalias !16566
  call void @llvm.experimental.noalias.scope.decl(metadata !16585), !noalias !16570
  call void @llvm.experimental.noalias.scope.decl(metadata !16586), !noalias !16570
  %i.kl = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7433)
  call void @llvm.experimental.noalias.scope.decl(metadata !16587)
  call void @llvm.experimental.noalias.scope.decl(metadata !16588), !noalias !16589
  %i.km = load i64, ptr %i.kl, align 8, !alias.scope !16590, !noalias !16589, !noundef !17 ; 2 uses
  %i.kn = load ptr, ptr %i.f, align 8, !alias.scope !16590, !noalias !16589, !nonnull !17, !noundef !17 ; 3 uses
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !16591, !noundef !17
  %i.kp = icmp eq i64 %i.km, %i.ko
  br i1 %i.kp, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBH_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB3t_.exit.i.i, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.lr.ph

_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.lr.ph: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.sroa.4453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7433.0..sroa_idx434 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.7433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.kq = phi ptr [ %.sroa.10.0.i.i, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.lr.ph ], [ %i.lb, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit ]
  %i.kr = phi i64 [ 1, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.lr.ph ], [ %i.ld, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit ] ; 5 uses
  %i.ks = phi ptr [ %i.kn, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.lr.ph ], [ %i.lf, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit ] ; 2 uses
  %i.kt = phi i64 [ %i.km, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.lr.ph ], [ %i.le, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16592)
  call void @llvm.experimental.noalias.scope.decl(metadata !16593), !noalias !16589
  %i.ku = add i64 %i.kt, 1
  store i64 %i.ku, ptr %i.kl, align 8, !alias.scope !16594, !noalias !16589
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.kw = getelementptr inbounds nuw [72 x i8], ptr %i.kv, i64 %i.kt ; 2 uses
  %.sroa.0446.0.copyload = load i64, ptr %i.kw, align 8, !noalias !16595 ; 2 uses
  %.not.i338 = icmp eq i64 %.sroa.0446.0.copyload, -1
  br i1 %.not.i338, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBH_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB3t_.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.sroa.6448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4453.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6448.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16596
  store i64 %.sroa.0446.0.copyload, ptr %i.a, align 8, !noalias !16597
  invoke fastcc void @_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.a)
          to label %bb.ci unwind label %bb.ch, !noalias !16598, !inline_history !16353

bb.cg:                                            ; preds = %bb.ck, %bb.ch
  %.pn.i.i.i = phi { ptr, i32 } [ %i.li, %bb.ck ], [ %i.kx, %bb.ch ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB2G_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #44
          to label %.body.i326 unwind label %bb.cm, !noalias !16589, !inline_history !16354

bb.ch:                                            ; preds = %bb.cf
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16596
  %.sroa.0431.0.copyload432 = load i32, ptr %i.b, align 8, !noalias !16599 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7433, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7433.0..sroa_idx434, i64 68, i1 false), !noalias !16599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16596
  %.not.i.i.i328 = icmp eq i32 %.sroa.0431.0.copyload432, -1
  br i1 %.not.i.i.i328, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBH_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB3t_.exit.i.i.loopexit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16600
  store i32 %.sroa.0431.0.copyload432, ptr %i.e, align 8, !noalias !16600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7433.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7433, i64 68, i1 false), !noalias !16600
  %i.ky = icmp samesign ult i64 %i.kr, 128102389400760776
  call void @llvm.assume(i1 %i.ky), !noalias !16570
  %i.kz = load i64, ptr %i.h, align 8, !range !28, !alias.scope !16601, !noalias !16581, !noundef !17
  %i.la = icmp eq i64 %i.kr, %i.kz
  br i1 %i.la, label %bb.cl, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit_crit_edge, %bb.cj
  %i.lb = phi ptr [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit_crit_edge ], [ %i.kq, %bb.cj ] ; 2 uses
  %i.lc = getelementptr inbounds nuw [72 x i8], ptr %i.lb, i64 %i.kr
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lc, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.ld = add nuw nsw i64 %i.kr, 1                ; 2 uses
  store i64 %i.ld, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !16601, !noalias !16581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7433)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7433)
  call void @llvm.experimental.noalias.scope.decl(metadata !16602)
  call void @llvm.experimental.noalias.scope.decl(metadata !16603), !noalias !16589
  %i.le = load i64, ptr %i.kl, align 8, !alias.scope !16604, !noalias !16589, !noundef !17 ; 2 uses
  %i.lf = load ptr, ptr %i.f, align 8, !alias.scope !16604, !noalias !16589, !nonnull !17, !noundef !17 ; 3 uses
  %i.lg = load i64, ptr %i.lf, align 8, !noalias !16605, !noundef !17
  %i.lh = icmp eq i64 %i.le, %i.lg
  br i1 %i.lh, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBH_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB3t_.exit.i.i, label %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.ck:                                            ; preds = %bb.cl
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.e) #44
          to label %bb.cg unwind label %bb.cm, !noalias !16589, !inline_history !16354

bb.cl:                                            ; preds = %bb.cj
  %.val.i.i.i329 = load ptr, ptr %i.f, align 8, !alias.scope !16606, !noalias !16581, !nonnull !17, !noundef !17
  %i.lj = load i64, ptr %.val.i.i.i329, align 8, !noalias !16607, !noundef !17
  %.val4.i.i.i = load i64, ptr %i.kl, align 8, !alias.scope !16606, !noalias !16581, !noundef !17
  %i.lk = sub i64 %i.lj, %.val4.i.i.i
  %i.ll = call i64 @llvm.uadd.sat.i64(i64 %i.lk, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.kr, i64 noundef %i.ll, i64 noundef 8, i64 noundef 72)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit_crit_edge unwind label %bb.ck, !noalias !16581

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit_crit_edge: ; preds = %bb.cl
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !16601, !noalias !16581
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit

bb.cm:                                            ; preds = %bb.ck, %bb.cg
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !16589, !inline_history !16354
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBH_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB3t_.exit.i.i.loopexit: ; preds = %bb.ci
  %.pre664 = load ptr, ptr %i.f, align 8, !alias.scope !16608, !noalias !16589
  br label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBH_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB3t_.exit.i.i

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBH_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB3t_.exit.i.i: ; preds = %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsb6FLkjZuKG_18ruff_python_parser.exit.i, %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBH_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB3t_.exit.i.i.loopexit
  %i.ln = phi ptr [ %.pre664, %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBH_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB3t_.exit.i.i.loopexit ], [ %i.kn, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %i.lf, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reserveCsb6FLkjZuKG_18ruff_python_parser.exit ], [ %i.ks, %_RNvXsE_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7433)
  %i.lo = icmp eq ptr %i.ln, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.lo, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBS_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEE11spec_extendB3H_.exit.i, label %bb.cn, !prof !32

bb.cn:                                            ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtBH_7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB3t_.exit.i.i
  invoke void @_RINvNvXsI_CsaSrGj5dYoxL_8thin_vecINtB8_8IntoIterpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.f)
          to label %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.co, !noalias !16589

end_hunk_1
