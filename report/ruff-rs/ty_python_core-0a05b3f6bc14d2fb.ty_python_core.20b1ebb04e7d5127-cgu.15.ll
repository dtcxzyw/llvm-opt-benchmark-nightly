Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.15?download=true
inline.NumInlined: 867
inline.NumDeleted: 354
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10visit_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_:bb.a
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.wr = load ptr, ptr %i.wq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ws = load i32, ptr %i.wr, align 8, !range !7, !noundef !5
  %i.wt = icmp eq i32 %i.ws, 27
  br i1 %i.wt, label %bb.de, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i

bb.de:                                            ; preds = %bb.dd
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !259
  %i.wv = getelementptr i8, ptr %2, i64 866
  %.val.i.i72.i = load i8, ptr %i.wv, align 2, !noalias !259, !noundef !5
  %i.ww = getelementptr i8, ptr %2, i64 867
  %.val1.i.i73.i = load i8, ptr %i.ww, align 1, !noalias !259, !noundef !5
  store i8 18, ptr %i.s, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.wy = load <2 x i32>, ptr %i.wu, align 8
  store <2 x i32> %i.wy, ptr %i.wx, align 8, !noalias !259
  %i.wz = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i8 %.val.i.i72.i, ptr %i.wz, align 8, !noalias !259
  %i.xa = getelementptr inbounds nuw i8, ptr %i.s, i64 41
  store i8 %.val1.i.i73.i, ptr %i.xa, align 1, !noalias !259
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !259
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i

bb.df:                                            ; preds = %bb.dc
  %i.xb = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !260
  %i.xc = getelementptr i8, ptr %2, i64 866
  %.val.i75.i = load i8, ptr %i.xc, align 2, !noalias !260, !noundef !5
  %i.xd = getelementptr i8, ptr %2, i64 867
  %.val1.i76.i = load i8, ptr %i.xd, align 1, !noalias !260, !noundef !5
  store i8 11, ptr %i.r, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.xf = load <2 x i32>, ptr %i.xb, align 8
  store <2 x i32> %i.xf, ptr %i.xe, align 8, !noalias !260
  %i.xg = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i8 %.val.i75.i, ptr %i.xg, align 8, !noalias !260
  %i.xh = getelementptr inbounds nuw i8, ptr %i.r, i64 41
  store i8 %.val1.i76.i, ptr %i.xh, align 1, !noalias !260
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.r), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !260
  br label %bb.dd

bb.dg:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit59.i
  call fastcc void @_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker28await_outside_async_functionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEB1V_(ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %1, i8 noundef 1)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i

bb.dh:                                            ; preds = %bb.cl
  tail call fastcc void @_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker28await_outside_async_functionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEB1V_(ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %1, i8 noundef 2)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i

bb.di:                                            ; preds = %bb.dk, %.lr.ph42.i
  %.sroa.011.041.i = phi ptr [ %i.um, %.lr.ph42.i ], [ %i.xj, %bb.dk ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  store ptr %2, ptr %i.uq, align 8
  invoke fastcc void @_RNvMsb_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_19MatchPatternVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderE13visit_patternB1q_(ptr noalias noundef align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 %.sroa.011.041.i)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.xi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.aw)
          to label %common.resume.i unwind label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.xj = getelementptr inbounds nuw i8, ptr %.sroa.011.041.i, i64 104 ; 2 uses
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.xk = icmp eq ptr %i.xj, %i.uo
  br i1 %i.xk, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i, label %bb.di

bb.dl:                                            ; preds = %bb.en, %bb.dj
  %i.xl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume.i:                                  ; preds = %bb.ex, %bb.en, %bb.ea, %bb.dj
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.ea ], [ %i.xi, %bb.dj ], [ %i.adr, %bb.en ], [ %lpad.phi31.i, %bb.ex ]
  resume { ptr, i32 } %common.resume.op.i

bb.dm:                                            ; preds = %bb.cq
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xn = load <2 x i32>, ptr %i.xm, align 8
  %i.xo = tail call noundef i8 @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext19lazy_import_context(ptr noundef nonnull align 8 %2) ; 2 uses
  %.not.i77.not.i = icmp eq i8 %i.xo, -1
  br i1 %.not.i77.not.i, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !261
  %i.xp = getelementptr i8, ptr %2, i64 866
  %.val.i.i78.i = load i8, ptr %i.xp, align 2, !noalias !261, !noundef !5
  %i.xq = getelementptr i8, ptr %2, i64 867
  %.val1.i.i79.i = load i8, ptr %i.xq, align 1, !noalias !261, !noundef !5
  store i8 0, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx.i80.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.xo, ptr %.sroa.4.0..sroa_idx.i80.i, align 1
  %.sroa.5.0..sroa_idx.i81.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 0, ptr %.sroa.5.0..sroa_idx.i81.i, align 2
  %i.xr = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store <2 x i32> %i.xn, ptr %i.xr, align 8, !noalias !261
  %i.xs = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i8 %.val.i.i78.i, ptr %i.xs, align 8, !noalias !261
  %i.xt = getelementptr inbounds nuw i8, ptr %i.q, i64 41
  store i8 %.val1.i.i79.i, ptr %i.xt, align 1, !noalias !261
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q), !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !261
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i

bb.do:                                            ; preds = %bb.dt, %bb.ds, %._crit_edge54.i
  %i.xu = phi i8 [ %.pre.i, %._crit_edge54.i ], [ %i.za, %bb.dt ], [ %i.za, %bb.ds ] ; 4 uses
  %.not35.i = icmp eq i8 %i.xu, -1
  br i1 %.not35.i, label %.thread.i, label %bb.dv

bb.dp:                                            ; preds = %bb.cr
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.xw = load <2 x i32>, ptr %i.xv, align 8
  %i.xx = tail call noundef i8 @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext19lazy_import_context(ptr noundef nonnull align 8 %2) ; 2 uses
  %.not.i82.not.i = icmp eq i8 %i.xx, -1
  br i1 %.not.i82.not.i, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker25check_lazy_import_contextNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1S_.exit87.i, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker25check_lazy_import_contextNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1S_.exit87.thread.i

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker25check_lazy_import_contextNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1S_.exit87.thread.i: ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !262
  %i.xy = getelementptr i8, ptr %2, i64 866
  %.val.i.i83.i = load i8, ptr %i.xy, align 2, !noalias !262, !noundef !5
  %i.xz = getelementptr i8, ptr %2, i64 867
  %.val1.i.i84.i = load i8, ptr %i.xz, align 1, !noalias !262, !noundef !5
  store i8 0, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx.i85.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.xx, ptr %.sroa.4.0..sroa_idx.i85.i, align 1
  %.sroa.5.0..sroa_idx.i86.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i8 1, ptr %.sroa.5.0..sroa_idx.i86.i, align 2
  %i.ya = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store <2 x i32> %i.xw, ptr %i.ya, align 8, !noalias !262
  %i.yb = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i8 %.val.i.i83.i, ptr %i.yb, align 8, !noalias !262
  %i.yc = getelementptr inbounds nuw i8, ptr %i.p, i64 41
  store i8 %.val1.i.i84.i, ptr %i.yc, align 1, !noalias !262
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.p), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !262
  br label %.thread.i

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker25check_lazy_import_contextNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1S_.exit87.i: ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.yg = load i64, ptr %i.yf, align 8, !noundef !5
  %i.yh = getelementptr inbounds nuw [80 x i8], ptr %i.ye, i64 %i.yg
  store ptr %i.ye, ptr %i.az, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.yh, ptr %i.yi, align 8
  %i.yj = call fastcc noundef zeroext i1 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB2t_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderE0EB42_(ptr noalias noundef align 8 dereferenceable(16) %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br i1 %i.yj, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker25check_lazy_import_contextNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1S_.exit87.i
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.yl = load i8, ptr %i.yk, align 1, !range !14, !noundef !5 ; 4 uses
  %.not.i = icmp eq i8 %i.yl, -1
  br i1 %.not.i, label %.thread.i, label %bb.ds

bb.dr:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker25check_lazy_import_contextNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1S_.exit87.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !263
  %i.ym = getelementptr i8, ptr %2, i64 866
  %.val.i88.i = load i8, ptr %i.ym, align 2, !noalias !263, !noundef !5
  %i.yn = getelementptr i8, ptr %2, i64 867
  %.val1.i89.i = load i8, ptr %i.yn, align 1, !noalias !263, !noundef !5
  store i8 1, ptr %i.o, align 8
  %i.yo = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.yp = load <2 x i32>, ptr %i.xv, align 8
  store <2 x i32> %i.yp, ptr %i.yo, align 8, !noalias !263
  %i.yq = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i8 %.val.i88.i, ptr %i.yq, align 8, !noalias !263
  %i.yr = getelementptr inbounds nuw i8, ptr %i.o, i64 41
  store i8 %.val1.i89.i, ptr %i.yr, align 1, !noalias !263
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.o), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !263
  br label %.thread.i

bb.ds:                                            ; preds = %bb.dq
  %i.ys = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.yt = load i64, ptr %i.ys, align 8, !alias.scope !264, !noundef !5 ; 2 uses
  %i.yu = and i64 %i.yt, 72057594037927935
  %i.yv = icmp ult i8 %i.yl, -48
  %i.yw = zext i8 %i.yl to i64
  %i.yx = add nsw i64 %i.yw, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.yx, i64 16)
  %.sroa.0.0.i.i = select i1 %i.yv, i64 %spec.store.select.i.i, i64 %i.yu
  %i.yy = icmp eq i64 %.sroa.0.0.i.i, 10
  %i.yz = lshr i64 %i.yt, 56
  %i.za = trunc nuw i64 %i.yz to i8               ; 2 uses
  br i1 %i.yy, label %bb.dt, label %bb.do

bb.dt:                                            ; preds = %bb.ds
  %i.zb = icmp ugt i8 %i.yl, -49
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !alias.scope !264
  %.sroa.01.0.i.i = select i1 %i.zb, ptr %i.zd, ptr %i.zc ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i) ]
  %i.ze = load i64, ptr %.sroa.01.0.i.i, align 1
  %i.zf = xor i64 %i.ze, 7310034288222035807
  %i.zg = getelementptr i8, ptr %.sroa.01.0.i.i, i64 8
  %i.zh = load i16, ptr %i.zg, align 1
  %i.zi = zext i16 %i.zh to i64
  %i.zj = xor i64 %i.zi, 24415
  %i.zk = or i64 %i.zf, %i.zj
  %i.zl = icmp ne i64 %i.zk, 0
  %i.zm = zext i1 %i.zl to i32
  %i.zn = icmp eq i32 %i.zm, 0
  br i1 %i.zn, label %bb.du, label %bb.do

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !265
  %i.zo = getelementptr i8, ptr %2, i64 866
  %.val.i90.i = load i8, ptr %i.zo, align 2, !noalias !265, !noundef !5
  %i.zp = getelementptr i8, ptr %2, i64 867
  %.val1.i91.i = load i8, ptr %i.zp, align 1, !noalias !265, !noundef !5
  store i8 2, ptr %i.n, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.zr = load <2 x i32>, ptr %i.xv, align 8
  store <2 x i32> %i.zr, ptr %i.zq, align 8, !noalias !265
  %i.zs = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i8 %.val.i90.i, ptr %i.zs, align 8, !noalias !265
  %i.zt = getelementptr inbounds nuw i8, ptr %i.n, i64 41
  store i8 %.val1.i91.i, ptr %i.zt, align 1, !noalias !265
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.n), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !265
  br label %.thread.i

bb.dv:                                            ; preds = %bb.do
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.zv = load i64, ptr %i.zu, align 8, !alias.scope !266, !noundef !5
  %i.zw = and i64 %i.zv, 72057594037927935
  %i.zx = icmp ult i8 %i.xu, -48
  %i.zy = zext i8 %i.xu to i64
  %i.zz = add nsw i64 %i.zy, -192
  %spec.store.select.i92.i = tail call i64 @llvm.umin.i64(i64 %i.zz, i64 16)
  %.sroa.0.0.i93.i = select i1 %i.zx, i64 %spec.store.select.i92.i, i64 %i.zw
  %i.aaa = icmp eq i64 %.sroa.0.0.i93.i, 10
  br i1 %i.aaa, label %bb.dw, label %.thread.i

bb.dw:                                            ; preds = %bb.dv
  %i.aab = icmp ugt i8 %i.xu, -49
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !266
  %.sroa.01.0.i94.i = select i1 %i.aab, ptr %i.aad, ptr %i.aac ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i94.i) ]
  %i.aae = load i64, ptr %.sroa.01.0.i94.i, align 1
  %i.aaf = xor i64 %i.aae, 7310034288222035807
  %i.aag = getelementptr i8, ptr %.sroa.01.0.i94.i, i64 8
  %i.aah = load i16, ptr %i.aag, align 1
  %i.aai = zext i16 %i.aah to i64
  %i.aaj = xor i64 %i.aai, 24415
  %i.aak = or i64 %i.aaf, %i.aaj
  %i.aal = icmp ne i64 %i.aak, 0
  %i.aam = zext i1 %i.aal to i32
  %i.aan = icmp eq i32 %i.aam, 0
  br i1 %i.aan, label %bb.dx, label %.thread.i

bb.dx:                                            ; preds = %bb.dw
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aar = load i64, ptr %i.aaq, align 8, !noundef !5 ; 2 uses
  %.idx43.i = mul nuw nsw i64 %i.aar, 80
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 %.idx43.i
  %i.aat = icmp eq i64 %i.aar, 0
  br i1 %i.aat, label %._crit_edge.i, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.dx
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aau = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0..sroa_idx.i98.i = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %.sroa.5.0..sroa_idx.i99.i = getelementptr inbounds nuw i8, ptr %i.l, i64 22
  %i.aav = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.44.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.44.i, i64 7
  %i.aaw = getelementptr i8, ptr %2, i64 866
  %i.aax = getelementptr i8, ptr %2, i64 867
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.aay = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.aba = getelementptr inbounds nuw i8, ptr %i.k, i64 41
  br label %bb.dy

bb.dy:                                            ; preds = %bb.ee, %.lr.ph37.i
  %.sroa.04.036.i = phi ptr [ %i.aap, %.lr.ph37.i ], [ %i.abb, %bb.ee ] ; 6 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.sroa.04.036.i, i64 80 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.04.036.i, i64 48 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.sroa.04.036.i, i64 63
  %i.abe = load i8, ptr %i.abd, align 1, !range !11, !alias.scope !267, !noundef !5 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.04.036.i, i64 56
  %i.abg = load i64, ptr %i.abf, align 8, !alias.scope !267, !noundef !5
  %i.abh = and i64 %i.abg, 72057594037927935
  %i.abi = icmp ult i8 %i.abe, -48
  %i.abj = zext i8 %i.abe to i64
  %i.abk = add nsw i64 %i.abj, -192
  %spec.store.select.i95.i = call i64 @llvm.umin.i64(i64 %i.abk, i64 16)
  %.sroa.0.0.i96.i = select i1 %i.abi, i64 %spec.store.select.i95.i, i64 %i.abh
  %i.abl = icmp ugt i8 %i.abe, -49
  %i.abm = load ptr, ptr %i.abc, align 8, !alias.scope !267
  %.sroa.01.0.i97.i = select i1 %i.abl, ptr %i.abm, ptr %i.abc
  %i.abn = call noundef zeroext i1 @_RNvNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors23is_known_future_feature(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i97.i, i64 noundef %.sroa.0.0.i96.i)
  br i1 %i.abn, label %bb.ee, label %bb.dz

._crit_edge.i:                                    ; preds = %bb.ee, %bb.dx
  %i.abo = trunc nuw i8 %.val to i1
  br i1 %i.abo, label %bb.ef, label %.thread.i

bb.dz:                                            ; preds = %bb.dy
  %i.abp = getelementptr inbounds nuw i8, ptr %.sroa.04.036.i, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.44.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !268
  store i64 0, ptr %i.m, align 8, !noalias !268
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !268
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !268
  store i32 1610612768, ptr %i.aau, align 8, !noalias !268
  store i16 0, ptr %.sroa.4.0..sroa_idx.i98.i, align 4, !noalias !268
  store i16 0, ptr %.sroa.5.0..sroa_idx.i99.i, align 2, !noalias !268
  store ptr %i.m, ptr %i.l, align 8, !noalias !268
  store ptr @21, ptr %i.aav, align 8, !noalias !268
  %i.abq = invoke noundef zeroext i1 @_RNvXs2i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.abp, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.eb unwind label %.loopexit.i, !noalias !268

.loopexit.i:                                      ; preds = %bb.dz
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit.split-lp.i:                             ; preds = %bb.ec
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ea:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #26
          to label %common.resume.i unwind label %bb.ed, !noalias !268

bb.eb:                                            ; preds = %bb.dz
  br i1 %i.abq, label %bb.ec, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCs2O29vuvTAEJ_14ty_python_core.exit.i, !prof !16

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #25
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i, !noalias !268

.noexc.i.i:                                       ; preds = %bb.ec
  unreachable

bb.ed:                                            ; preds = %bb.ea
  %i.abr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !268
  unreachable

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.44.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.abs = getelementptr inbounds nuw i8, ptr %.sroa.04.036.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !269
  %.val.i100.i = load i8, ptr %i.aaw, align 2, !noalias !269, !noundef !5
  %.val1.i101.i = load i8, ptr %i.aax, align 1, !noalias !269, !noundef !5
  store i8 31, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.44.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.44.i, i64 31, i1 false)
  %i.abt = load <2 x i32>, ptr %i.abs, align 8
  store <2 x i32> %i.abt, ptr %i.aay, align 8, !noalias !269
  store i8 %.val.i100.i, ptr %i.aaz, align 8, !noalias !269
  store i8 %.val1.i101.i, ptr %i.aba, align 1, !noalias !269
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.k), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44.i)
  br label %bb.ee

bb.ee:                                            ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.dy
  %i.abu = icmp eq ptr %i.abb, %i.aas
  br i1 %i.abu, label %._crit_edge.i, label %bb.dy

bb.ef:                                            ; preds = %._crit_edge.i
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !270
  %i.abw = getelementptr i8, ptr %2, i64 866
  %.val.i102.i = load i8, ptr %i.abw, align 2, !noalias !270, !noundef !5
  %i.abx = getelementptr i8, ptr %2, i64 867
  %.val1.i103.i = load i8, ptr %i.abx, align 1, !noalias !270, !noundef !5
  store i8 3, ptr %i.j, align 8
  %i.aby = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.abz = load <2 x i32>, ptr %i.abv, align 8
  store <2 x i32> %i.abz, ptr %i.aby, align 8, !noalias !270
  %i.aca = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 %.val.i102.i, ptr %i.aca, align 8, !noalias !270
  %i.acb = getelementptr inbounds nuw i8, ptr %i.j, i64 41
  store i8 %.val1.i103.i, ptr %i.acb, align 1, !noalias !270
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.j), !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !270
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ef, %._crit_edge.i, %bb.dw, %bb.dv, %bb.du, %bb.dr, %bb.dq, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker25check_lazy_import_contextNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1S_.exit87.thread.i, %bb.do
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acd = load ptr, ptr %i.acc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acf = load i64, ptr %i.ace, align 8, !noundef !5 ; 2 uses
  %.idx44.i = mul nuw nsw i64 %i.acf, 80
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 %.idx44.i
  %i.ach = icmp eq i64 %i.acf, 0
  br i1 %i.ach, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.thread.i
  %i.aci = getelementptr i8, ptr %2, i64 16
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ej, %.lr.ph40.i
  %.sroa.06.038.i = phi ptr [ %i.acd, %.lr.ph40.i ], [ %i.acj, %bb.ej ] ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.06.038.i, i64 80 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.06.038.i, i64 63
  %i.acl = load i8, ptr %i.ack, align 1, !range !11, !alias.scope !271, !noundef !5 ; 3 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.sroa.06.038.i, i64 56
  %i.acn = load i64, ptr %i.acm, align 8, !alias.scope !271, !noundef !5
  %i.aco = and i64 %i.acn, 72057594037927935
  %i.acp = icmp ult i8 %i.acl, -48
  %i.acq = zext i8 %i.acl to i64
  %i.acr = add nsw i64 %i.acq, -192
  %spec.store.select.i104.i = call i64 @llvm.umin.i64(i64 %i.acr, i64 16)
  %.sroa.0.0.i105.i = select i1 %i.acp, i64 %spec.store.select.i104.i, i64 %i.aco
  %i.acs = icmp eq i64 %.sroa.0.0.i105.i, 1
  br i1 %i.acs, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.act = icmp ugt i8 %i.acl, -49
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.06.038.i, i64 48 ; 2 uses
  %i.acv = load ptr, ptr %i.acu, align 8, !alias.scope !271
  %.sroa.01.0.i106.i = select i1 %i.act, ptr %i.acv, ptr %i.acu
  %lhsc.i = load i8, ptr %.sroa.01.0.i106.i, align 1
  %i.acw = icmp eq i8 %lhsc.i, 42
  br i1 %i.acw, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %.val45.i = load i64, ptr %i.aci, align 8, !noundef !5 ; 2 uses
  %i.acx = icmp ult i64 %.val45.i, 50127021939428130
  call void @llvm.assume(i1 %i.acx)
  %i.acy = icmp eq i64 %.val45.i, 1
  br i1 %i.acy, label %bb.ej, label %bb.ek

end_hunk_0
begin_hunk_1_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10visit_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_:bb.a
.noexc.i119.i:                                    ; preds = %bb.ez
  unreachable

bb.fa:                                            ; preds = %bb.ex
  %i.aev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !275
  unreachable

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCs2O29vuvTAEJ_14ty_python_core.exit120.i: ; preds = %bb.ey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.411.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !276
  %.val.i121.i = load i8, ptr %i.vf, align 2, !noalias !276, !noundef !5
  %.val1.i122.i = load i8, ptr %i.vg, align 1, !noalias !276, !noundef !5
  store i8 34, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.411.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.411.i, i64 31, i1 false)
  %i.aew = load <2 x i32>, ptr %.sroa.014.035.i, align 8
  store <2 x i32> %i.aew, ptr %i.vh, align 8, !noalias !276
  store i8 %.val.i121.i, ptr %i.vi, align 8, !noalias !276
  store i8 %.val1.i122.i, ptr %i.vj, align 1, !noalias !276
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f), !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.411.i)
  br label %bb.fb

bb.fb:                                            ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCs2O29vuvTAEJ_14ty_python_core.exit120.i, %bb.ev
  %i.aex = icmp eq ptr %i.aeh, %i.vb
  br i1 %i.aex, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i, label %bb.ev

bb.fc:                                            ; preds = %bb.ct
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !277
  %i.aez = getelementptr i8, ptr %2, i64 866
  %.val.i123.i = load i8, ptr %i.aez, align 2, !noalias !277, !noundef !5
  %i.afa = getelementptr i8, ptr %2, i64 867
  %.val1.i124.i = load i8, ptr %i.afa, align 1, !noalias !277, !noundef !5
  store i8 24, ptr %i.e, align 8
  %i.afb = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.afc = load <2 x i32>, ptr %i.aey, align 8
  store <2 x i32> %i.afc, ptr %i.afb, align 8, !noalias !277
  %i.afd = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 %.val.i123.i, ptr %i.afd, align 8, !noalias !277
  %i.afe = getelementptr inbounds nuw i8, ptr %i.e, i64 41
  store i8 %.val1.i124.i, ptr %i.afe, align 1, !noalias !277
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e), !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !277
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i

bb.fd:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !278
  %i.aff = getelementptr i8, ptr %2, i64 866
  %.val.i128.i = load i8, ptr %i.aff, align 2, !noalias !278, !noundef !5
  %i.afg = getelementptr i8, ptr %2, i64 867
  %.val1.i129.i = load i8, ptr %i.afg, align 1, !noalias !278, !noundef !5
  store i8 32, ptr %i.d, align 8
  %i.afh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.afi = load <2 x i32>, ptr %1, align 8
  store <2 x i32> %i.afi, ptr %i.afh, align 8, !noalias !278
  %i.afj = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 %.val.i128.i, ptr %i.afj, align 8, !noalias !278
  %i.afk = getelementptr inbounds nuw i8, ptr %i.d, i64 41
  store i8 %.val1.i129.i, ptr %i.afk, align 1, !noalias !278
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !278
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i

bb.fe:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !279
  %i.afl = getelementptr i8, ptr %2, i64 866
  %.val.i130.i = load i8, ptr %i.afl, align 2, !noalias !279, !noundef !5
  %i.afm = getelementptr i8, ptr %2, i64 867
  %.val1.i131.i = load i8, ptr %i.afm, align 1, !noalias !279, !noundef !5
  store i8 33, ptr %i.c, align 8
  %i.afn = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.afo = load <2 x i32>, ptr %1, align 8
  store <2 x i32> %i.afo, ptr %i.afn, align 8, !noalias !279
  %i.afp = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 %.val.i130.i, ptr %i.afp, align 8, !noalias !279
  %i.afq = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  store i8 %.val1.i131.i, ptr %i.afq, align 1, !noalias !279
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c), !noalias !279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !279
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit: ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1I_.exit.i, %bb.ao, %bb.aq, %bb.az, %bb.bo, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor14walk_argumentsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2k_.exit.i.i, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit49.i.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.afr = load i8, ptr %i.bb, align 4, !range !12, !noundef !5 ; 3 uses
  %i.afs = icmp samesign ugt i8 %i.afr, 1
  %i.aft = zext nneg i8 %i.afr to i64
  %i.afu = add nsw i64 %i.aft, -1
  %i.afv = select i1 %i.afs, i64 %i.afu, i64 0
  switch i64 %i.afv, label %.sink.split [
    i64 0, label %bb.ff
    i64 17, label %bb.fg
    i64 20, label %bb.fh
  ]

bb.ff:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit
  %i.afw = trunc nuw i8 %i.afr to i1
  br i1 %i.afw, label %bb.fi, label %.sink.split

bb.fg:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.afy = load i8, ptr %i.afx, align 8, !range !4, !noundef !5
  %i.afz = trunc nuw i8 %i.afy to i1
  br i1 %i.afz, label %.sink.split, label %bb.fl

bb.fh:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.agb = load i8, ptr %i.aga, align 1, !range !4, !noundef !5
  %i.agc = trunc nuw i8 %i.agb to i1
  br i1 %i.agc, label %.sink.split, label %bb.fo

bb.fi:                                            ; preds = %bb.ff
  %i.agd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i32 0, ptr %i.ba, align 4
  %i.age = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 2 uses
  store i8 0, ptr %i.age, align 4
  %i.agf = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.agd) ; 2 uses
  %i.agg = load ptr, ptr %i.agd, align 8, !nonnull !5, !noundef !5
  %i.agh = load i64, ptr %i.agg, align 8, !noundef !5 ; 2 uses
  %.idx.i5 = mul nuw nsw i64 %i.agh, 88
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agf, i64 %.idx.i5
  %i.agj = icmp eq i64 %i.agh, 0
  br i1 %i.agj, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorECs2O29vuvTAEJ_14ty_python_core.exit.thread, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %bb.fi, %.lr.ph.i6
  %.sroa.0.02.i = phi ptr [ %i.agk, %.lr.ph.i6 ], [ %i.agf, %bb.fi ] ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 88 ; 2 uses
  call void @_RNvXsa_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt(ptr noalias noundef nonnull align 4 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 %.sroa.0.02.i)
  %i.agl = icmp eq ptr %i.agk, %i.agi
  br i1 %i.agl, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorECs2O29vuvTAEJ_14ty_python_core.exit, label %.lr.ph.i6

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %.lr.ph.i6
  %.pre = load i8, ptr %i.age, align 4, !range !4
  %.pre24 = load i32, ptr %i.ba, align 4, !range !280
  %i.agm = trunc nuw i8 %.pre to i1
  %i.agn = trunc nuw i32 %.pre24 to i1
  %i.ago = select i1 %i.agm, i1 %i.agn, i1 false
  br i1 %i.ago, label %bb.fj, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorECs2O29vuvTAEJ_14ty_python_core.exit.thread

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorECs2O29vuvTAEJ_14ty_python_core.exit.thread: ; preds = %bb.fi, %bb.fj, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorECs2O29vuvTAEJ_14ty_python_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %.sink.split

bb.fj:                                            ; preds = %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorECs2O29vuvTAEJ_14ty_python_core.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !281
  %i.agp = getelementptr i8, ptr %2, i64 866
  %.val.i8 = load i8, ptr %i.agp, align 2, !noalias !281, !noundef !5
  %i.agq = getelementptr i8, ptr %2, i64 867
  %.val1.i = load i8, ptr %i.agq, align 1, !noalias !281, !noundef !5
  store i8 38, ptr %i.b, align 8
  %i.agr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ags = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 4
  store <2 x i32> %i.ags, ptr %i.agr, align 8, !noalias !281
  %i.agt = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 %.val.i8, ptr %i.agt, align 8, !noalias !281
  %i.agu = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  store i8 %.val1.i, ptr %i.agu, align 1, !noalias !281
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !281
  br label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorECs2O29vuvTAEJ_14ty_python_core.exit.thread

.sink.split:                                      ; preds = %bb.ff, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors13ReturnVisitorECs2O29vuvTAEJ_14ty_python_core.exit.thread, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit, %bb.fo, %bb.fh, %bb.fg, %bb.fm, %bb.fl, %bb.fn
  store i8 1, ptr %0, align 1
  br label %bb.fk

bb.fk:                                            ; preds = %.sink.split, %bb.fn, %bb.fo
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.agv, align 1
  ret void

bb.fl:                                            ; preds = %bb.fg
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.agx = load i8, ptr %i.agw, align 1, !range !14, !noundef !5 ; 4 uses
  %.not = icmp eq i8 %i.agx, -1
  br i1 %.not, label %.sink.split, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.agy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.agz = load i64, ptr %i.agy, align 8, !alias.scope !282, !noundef !5
  %i.aha = and i64 %i.agz, 72057594037927935
  %i.ahb = icmp ult i8 %i.agx, -48
  %i.ahc = zext i8 %i.agx to i64
  %i.ahd = add nsw i64 %i.ahc, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.ahd, i64 16)
  %.sroa.0.0.i = select i1 %i.ahb, i64 %spec.store.select.i, i64 %i.aha
  %i.ahe = icmp eq i64 %.sroa.0.0.i, 10
  br i1 %i.ahe, label %bb.fn, label %.sink.split

bb.fn:                                            ; preds = %bb.fm
  %i.ahf = icmp ugt i8 %i.agx, -49
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ahh = load ptr, ptr %i.ahg, align 8, !alias.scope !282
  %.sroa.01.0.i = select i1 %i.ahf, ptr %i.ahh, ptr %i.ahg ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i) ]
  %i.ahi = load i64, ptr %.sroa.01.0.i, align 1
  %i.ahj = xor i64 %i.ahi, 7310034288222035807
  %i.ahk = getelementptr i8, ptr %.sroa.01.0.i, i64 8
  %i.ahl = load i16, ptr %i.ahk, align 1
  %i.ahm = zext i16 %i.ahl to i64
  %i.ahn = xor i64 %i.ahm, 24415
  %i.aho = or i64 %i.ahj, %i.ahn
  %i.ahp = icmp ne i64 %i.aho, 0
  %i.ahq = zext i1 %i.ahp to i32
  %i.ahr = icmp eq i32 %i.ahq, 0
  br i1 %i.ahr, label %bb.fk, label %.sink.split

bb.fo:                                            ; preds = %bb.fh
  %i.ahs = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.aht = load i32, ptr %i.ahs, align 8, !range !7, !noundef !5
  %i.ahu = icmp eq i32 %i.aht, 19
  br i1 %i.ahu, label %bb.fk, label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker21check_class_body_exprNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1O_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.idx.i = mul nuw nsw i64 %i.g, 184
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.5.013.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.5.013.i, i64 -184 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.5.013.i, i64 -8
  %i.o = load i32, ptr %i.n, align 8, !range !9, !noundef !5
  %i.p = add i32 %i.o, -1
  %i.q = zext i32 %i.p to i64                     ; 3 uses
  %i.r = icmp ugt i64 %i.k, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %i.q
  %i.u = load i32, ptr %i.t, align 4, !range !10, !noundef !5
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit
    i32 1, label %bb.f
    i32 2, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit
    i32 3, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit
    i32 4, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit
    i32 5, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit
    i32 6, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit
    i32 7, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit
    i32 8, label %bb.e
    i32 9, label %bb.e
    i32 10, label %bb.e
    i32 11, label %bb.e
  ]

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #25
  unreachable

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.v = icmp eq ptr %i.e, %i.m
  br i1 %i.v, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit, label %bb.b

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  invoke void @_RNvXs8_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_31ClassBodyNamedExpressionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 %0)
          to label %bb.g unwind label %bb.l

_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit: ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.e, %bb.a, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2O29vuvTAEJ_14ty_python_core.exit
  ret void

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.53.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx, align 8 ; 3 uses
  %i.w = icmp ult i64 %.sroa.53.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.w)
  %.idx = shl nuw nsw i64 %.sroa.53.0.copyload, 3
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 %.idx
  %i.y = icmp sgt i64 %.sroa.01.0.copyload, -1
  call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.42.0.copyload, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.42.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.01.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.x, ptr %.sroa.6.0..sroa_idx, align 8
  %i.z = icmp eq i64 %.sroa.53.0.copyload, 0
  br i1 %i.z, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2O29vuvTAEJ_14ty_python_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %1, i64 866
  %i.ab = getelementptr i8, ptr %1, i64 867
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.thread unwind label %bb.k

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %i.ag = phi ptr [ %.sroa.42.0.copyload, %.lr.ph ], [ %i.ak, %bb.j ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !289, !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !291
  %.val.i = load i8, ptr %i.aa, align 2, !noalias !291, !noundef !5
  %.val1.i = load i8, ptr %i.ab, align 1, !noalias !291, !noundef !5
  store i8 5, ptr %i.a, align 8
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !noalias !292
  store <2 x i32> %i.ai, ptr %i.ac, align 8, !noalias !291
  store i8 %.val.i, ptr %i.ad, align 8, !noalias !291
  store i8 %.val1.i, ptr %i.ae, align 1, !noalias !291
  invoke void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.j unwind label %bb.h

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.j, %bb.g
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext27in_class_body_comprehension.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  %i.aj = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !293, !noalias !290, !nonnull !5, !noundef !5
  %i.ak = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !293, !noalias !290, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.aj
  br i1 %i.al, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2O29vuvTAEJ_14ty_python_core.exit, label %bb.i

bb.k:                                             ; preds = %bb.h, %bb.l
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread:                                          ; preds = %bb.h, %bb.l
  %.pn19 = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.an, %bb.l ]
  resume { ptr, i32 } %.pn19

bb.l:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #26
          to label %.thread unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker22yield_outside_functionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1P_(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = tail call noundef zeroext i1 @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext17in_function_scope(ptr noundef nonnull align 8 %0)
  br i1 %i.b, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext24in_yield_allowed_context.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %2, 2
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.e = icmp ult i64 %.val, 50127021939428130
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %.val, 1
  br i1 %i.f, label %bb.n, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext24in_yield_allowed_context.exit.thread, label %.lr.ph.i
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs2O29vuvTAEJ_14ty_python_core7builder21loop_bindings_visitorNtB2_19LoopBindingsVisitor21add_place_from_target:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !771, !noalias !772, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.s = add i64 %i.k, 1
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !771, !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.h:                                             ; preds = %tailrecurse
  %i.t = getelementptr inbounds nuw i8, ptr %.tr6, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.tr6, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %.idx16 = mul nuw nsw i64 %i.w, 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx16
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph15

bb.i:                                             ; preds = %tailrecurse
  %i.z = getelementptr inbounds nuw i8, ptr %.tr6, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr6, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ac, 72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %.loopexit, label %.lr.ph

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !773, !noalias !774, !noundef !5 ; 3 uses
  %i.ah = load i64, ptr %0, align 8, !range !19, !alias.scope !773, !noalias !774, !noundef !5
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprE8push_mutBI_.exit5

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprE8push_mutBI_.exit5 unwind label %bb.l, !noalias !774

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #26
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprE8push_mutBI_.exit5: ; preds = %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !773, !noalias !774, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.ao = add i64 %i.ag, 1
  store i64 %i.ao, ptr %i.af, align 8, !alias.scope !773, !noalias !774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.lr.ph15:                                         ; preds = %bb.h, %.lr.ph15
  %.sroa.02.014 = phi ptr [ %i.ap, %.lr.ph15 ], [ %i.u, %bb.h ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 72 ; 2 uses
  tail call fastcc void @_RNvMNtNtCs2O29vuvTAEJ_14ty_python_core7builder21loop_bindings_visitorNtB2_19LoopBindingsVisitor21add_place_from_target(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %.sroa.02.014)
  %i.aq = icmp eq ptr %i.ap, %i.x
  br i1 %i.aq, label %.loopexit, label %.lr.ph15

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.sroa.0.013 = phi ptr [ %i.ar, %.lr.ph ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 72 ; 2 uses
  tail call fastcc void @_RNvMNtNtCs2O29vuvTAEJ_14ty_python_core7builder21loop_bindings_visitorNtB2_19LoopBindingsVisitor21add_place_from_target(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %.sroa.0.013)
  %i.as = icmp eq ptr %i.ar, %i.ad
  br i1 %i.as, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4lsb0INtB6_8BitSliceyE13sp_first_zeroCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.09.0.copyload = load ptr, ptr %i.c, align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.012.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.614.0.copyload = load i64, ptr %.sroa.614.0..sroa_idx, align 8 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.09.0.copyload, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i8, ptr %i.k, align 8, !noundef !5
  %.val = load i64, ptr %i.h, align 8, !noundef !5
  %i.m = xor i64 %i.j, -1
  %i.n = or i64 %.val, %i.m                       ; 2 uses
  %i.o = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization8has_zeroyECs2O29vuvTAEJ_14ty_python_core(i64 noundef %i.n, i64 noundef %i.j)
  br i1 %i.o, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = xor i64 %i.n, -1
  %i.q = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.p, i1 false)
  %i.r = zext i8 %i.l to i64
  %i.s = sub nsw i64 %i.q, %i.r
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.711.0.copyload = load i8, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.09.0.copyload.val = load i64, ptr %.sroa.09.0.copyload, align 8, !noundef !5
  %i.t = xor i64 %.sroa.6.0.copyload, -1
  %i.u = or i64 %.sroa.09.0.copyload.val, %i.t    ; 2 uses
  %i.v = xor i64 %i.u, -1
  %i.w = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.v, i1 false)
  %i.x = zext i8 %.sroa.711.0.copyload to i64
  %i.y = sub nsw i64 %i.w, %i.x                   ; 2 uses
  %i.z = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization8has_zeroyECs2O29vuvTAEJ_14ty_python_core(i64 noundef %i.u, i64 noundef %.sroa.6.0.copyload)
  br i1 %i.z, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0 = phi i64 [ %i.y, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.ab = icmp eq i64 %i.e, 0
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 8 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.01.127 = phi i64 [ %i.ag, %bb.g ], [ %.sroa.01.0, %bb.f ]
  %.sroa.021.026 = phi ptr [ %i.ac, %bb.g ], [ %i.b, %bb.f ] ; 2 uses
  %.sroa.021.0.val = load i64, ptr %.sroa.021.026, align 8, !noundef !5 ; 2 uses
  %i.ae = xor i64 %.sroa.021.0.val, -1
  %i.af = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ae, i1 false)
  %i.ag = add i64 %i.af, %.sroa.01.127            ; 3 uses
  %i.ah = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization8has_zeroyECs2O29vuvTAEJ_14ty_python_core(i64 noundef %.sroa.021.0.val, i64 noundef -1)
  br i1 %i.ah, label %.loopexit, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.sroa.01.1.lcssa = phi i64 [ %.sroa.01.0, %bb.f ], [ %i.ag, %bb.g ]
  %.not24 = icmp eq ptr %.sroa.012.0.copyload, null
  br i1 %.not24, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %.sroa.012.0.copyload.val = load i64, ptr %.sroa.012.0.copyload, align 8, !noundef !5
  %i.ai = xor i64 %.sroa.614.0.copyload, -1
  %i.aj = or i64 %.sroa.012.0.copyload.val, %i.ai ; 2 uses
  %i.ak = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization8has_zeroyECs2O29vuvTAEJ_14ty_python_core(i64 noundef %i.aj, i64 noundef %.sroa.614.0.copyload)
  br i1 %i.ak, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.al = xor i64 %i.aj, -1
  %i.am = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.al, i1 false)
  %i.an = add i64 %i.am, %.sroa.01.1.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.e, %bb.i, %bb.c, %bb.h, %._crit_edge
  %.sroa.7.3 = phi i64 [ undef, %bb.c ], [ undef, %._crit_edge ], [ undef, %bb.h ], [ %i.s, %bb.d ], [ %i.y, %bb.e ], [ %i.an, %bb.i ], [ %i.ag, %.lr.ph ]
  %.sroa.0.3 = phi i64 [ 0, %bb.c ], [ 0, %._crit_edge ], [ 0, %bb.h ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.i ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = insertvalue { i64, i64 } poison, i64 %.sroa.0.3, 0
  %i.ap = insertvalue { i64, i64 } %i.ao, i64 %.sroa.7.3, 1
  ret { i64, i64 } %i.ap
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4lsb0INtB6_8BitSliceyE5sp_eqCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.unshifted = xor i64 %3, %1
  %i.c = icmp ult i64 %.unshifted, 8
  br i1 %i.c, label %.preheader, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2O29vuvTAEJ_14ty_python_core.exit

.preheader:                                       ; preds = %bb.a, %bb.c
  %i.d = phi i64 [ %33, %bb.c ], [ %3, %bb.a ]    ; 3 uses
  %i.e = phi ptr [ %32, %bb.c ], [ %2, %bb.a ]    ; 2 uses
  %i.f = phi ptr [ %i.ai, %bb.c ], [ %0, %bb.a ]  ; 2 uses
  %i.g = phi i64 [ %i.ab, %bb.c ], [ %1, %bb.a ]  ; 3 uses
  %i.h = lshr i64 %i.g, 3                         ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %.sroa.0.0.i.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 1, 2305843009213693952) %i.h, i64 64) ; 2 uses
  %i.j = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.k = and i64 %i.j, -8
  %i.l = getelementptr i8, ptr %i.f, i64 %i.k
  %i.m = sub i64 0, %i.j
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = shl i64 %i.j, 3
  %i.p = and i64 %i.o, 56                         ; 2 uses
  %i.q = and i64 %i.g, 7                          ; 2 uses
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = add nuw nsw i64 %i.r, %.sroa.0.0.i.i.i.i.i ; 3 uses
  %i.t = lshr i64 %i.s, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !797
  store i64 %i.t, ptr %i.b, align 8, !noalias !797
  %i.u = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull readonly %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !798 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !797
  %i.v = lshr i64 %i.d, 3                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = and i64 %i.s, 7
  %i.y = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 3  ; 2 uses
  %i.z = sub i64 %i.g, %i.y
  %i.aa = and i64 %i.z, -8
  %i.ab = or disjoint i64 %i.x, %i.aa
  %i.ac = lshr i64 %i.s, 3
  %i.ad = and i64 %i.ac, 7
  %i.ae = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = and i64 %i.ae, -8
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = or disjoint i64 %i.y, %i.q
  %i.ak = lshr exact i64 %i.p, 3
  %4 = ptrtoint ptr %i.n to i64                   ; 2 uses
  %5 = sub i64 %i.ak, %4
  %6 = getelementptr i8, ptr %i.n, i64 %5
  %7 = and i64 %4, -8
  %8 = getelementptr i8, ptr %6, i64 %7           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %8) ]
  %.sroa.0.0.i.i17.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 1, 2305843009213693952) %i.v, i64 64) ; 2 uses
  %i.al = ptrtoint ptr %i.e to i64                ; 3 uses
  %9 = and i64 %i.al, -8
  %10 = getelementptr i8, ptr %i.e, i64 %9
  %i.am = sub i64 0, %i.al
  %i.an = getelementptr i8, ptr %10, i64 %i.am    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %11 = shl i64 %i.al, 3
  %12 = and i64 %11, 56                           ; 2 uses
  %13 = and i64 %i.d, 7                           ; 2 uses
  %14 = or disjoint i64 %12, %13
  %15 = add nuw nsw i64 %14, %.sroa.0.0.i.i17.i.i.i ; 3 uses
  %16 = lshr i64 %15, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !799
  store i64 %16, ptr %i.a, align 8, !noalias !799
  %17 = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull readonly %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !800 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !799
  %18 = ptrtoint ptr %i.an to i64                 ; 2 uses
  %i.ao = and i64 %18, -8
  %19 = lshr exact i64 %12, 3
  %20 = shl nuw nsw i64 %.sroa.0.0.i.i17.i.i.i, 3 ; 2 uses
  %21 = sub i64 %19, %18
  %22 = getelementptr i8, ptr %i.an, i64 %21
  %i.ap = getelementptr i8, ptr %22, i64 %i.ao    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = or disjoint i64 %20, %13
  %23 = ptrtoint ptr %17 to i64                   ; 2 uses
  %24 = and i64 %23, -8
  %25 = lshr i64 %15, 3
  %26 = and i64 %25, 7
  %27 = and i64 %15, 7
  %28 = sub i64 %i.d, %20
  %29 = and i64 %28, -8
  %30 = sub i64 %26, %23
  %31 = getelementptr i8, ptr %17, i64 %30
  %32 = getelementptr i8, ptr %31, i64 %24        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %32) ]
  %33 = or disjoint i64 %27, %29
  %i.ar = call fastcc noundef i64 @_RINvXNtCsb80QtQtK5z0_6bitvec5fieldINtNtB5_5slice8BitSliceyENtB3_8BitField7load_lejECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %i.aj), !noalias !801
  %i.as = call fastcc noundef i64 @_RINvXNtCsb80QtQtK5z0_6bitvec5fieldINtNtB5_5slice8BitSliceyENtB3_8BitField7load_lejECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.aq), !noalias !801
  %.not.i = icmp eq i64 %i.ar, %i.as
  br i1 %.not.i, label %.preheader, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2O29vuvTAEJ_14ty_python_core.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %.preheader ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E13sp_first_zeroCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.09.0.copyload = load ptr, ptr %i.c, align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.012.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.614.0.copyload = load i64, ptr %.sroa.614.0..sroa_idx, align 8 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.09.0.copyload, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i8, ptr %i.k, align 8, !noundef !5
  %.val = load i64, ptr %i.h, align 8, !noundef !5
  %i.m = xor i64 %i.j, -1
  %i.n = or i64 %.val, %i.m                       ; 2 uses
  %i.o = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization8has_zeroyECs2O29vuvTAEJ_14ty_python_core(i64 noundef %i.n, i64 noundef %i.j)
  br i1 %i.o, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = xor i64 %i.n, -1
  %i.q = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = zext i8 %i.l to i64
  %i.s = sub nsw i64 %i.q, %i.r
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.711.0.copyload = load i8, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.09.0.copyload.val = load i64, ptr %.sroa.09.0.copyload, align 8, !noundef !5
  %i.t = xor i64 %.sroa.6.0.copyload, -1
  %i.u = or i64 %.sroa.09.0.copyload.val, %i.t    ; 2 uses
  %i.v = xor i64 %i.u, -1
  %i.w = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 false)
  %i.x = zext i8 %.sroa.711.0.copyload to i64
  %i.y = sub nsw i64 %i.w, %i.x                   ; 2 uses
  %i.z = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization8has_zeroyECs2O29vuvTAEJ_14ty_python_core(i64 noundef %i.u, i64 noundef %.sroa.6.0.copyload)
  br i1 %i.z, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0 = phi i64 [ %i.y, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.ab = icmp eq i64 %i.e, 0
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 8 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.01.127 = phi i64 [ %i.ag, %bb.g ], [ %.sroa.01.0, %bb.f ]
  %.sroa.021.026 = phi ptr [ %i.ac, %bb.g ], [ %i.b, %bb.f ] ; 2 uses
  %.sroa.021.0.val = load i64, ptr %.sroa.021.026, align 8, !noundef !5 ; 2 uses
  %i.ae = xor i64 %.sroa.021.0.val, -1
  %i.af = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 false)
  %i.ag = add i64 %i.af, %.sroa.01.127            ; 3 uses
  %i.ah = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization8has_zeroyECs2O29vuvTAEJ_14ty_python_core(i64 noundef %.sroa.021.0.val, i64 noundef -1)
  br i1 %i.ah, label %.loopexit, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.sroa.01.1.lcssa = phi i64 [ %.sroa.01.0, %bb.f ], [ %i.ag, %bb.g ]
  %.not24 = icmp eq ptr %.sroa.012.0.copyload, null
  br i1 %.not24, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %.sroa.012.0.copyload.val = load i64, ptr %.sroa.012.0.copyload, align 8, !noundef !5
  %i.ai = xor i64 %.sroa.614.0.copyload, -1
  %i.aj = or i64 %.sroa.012.0.copyload.val, %i.ai ; 2 uses
  %i.ak = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization8has_zeroyECs2O29vuvTAEJ_14ty_python_core(i64 noundef %i.aj, i64 noundef %.sroa.614.0.copyload)
  br i1 %i.ak, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.al = xor i64 %i.aj, -1
  %i.am = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 false)
  %i.an = add i64 %i.am, %.sroa.01.1.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.e, %bb.i, %bb.c, %bb.h, %._crit_edge
  %.sroa.7.3 = phi i64 [ undef, %bb.c ], [ undef, %._crit_edge ], [ undef, %bb.h ], [ %i.s, %bb.d ], [ %i.y, %bb.e ], [ %i.an, %bb.i ], [ %i.ag, %.lr.ph ]
  %.sroa.0.3 = phi i64 [ 0, %bb.c ], [ 0, %._crit_edge ], [ 0, %bb.h ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.i ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = insertvalue { i64, i64 } poison, i64 %.sroa.0.3, 0
  %i.ap = insertvalue { i64, i64 } %i.ao, i64 %.sroa.7.3, 1
  ret { i64, i64 } %i.ap
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E5sp_eqCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.unshifted = xor i64 %3, %1
  %i.c = icmp ult i64 %.unshifted, 8
  br i1 %i.c, label %.preheader, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2O29vuvTAEJ_14ty_python_core.exit

.preheader:                                       ; preds = %bb.a, %bb.c
  %i.d = phi i64 [ %33, %bb.c ], [ %3, %bb.a ]    ; 3 uses
  %i.e = phi ptr [ %32, %bb.c ], [ %2, %bb.a ]    ; 2 uses
  %i.f = phi ptr [ %i.ai, %bb.c ], [ %0, %bb.a ]  ; 2 uses
  %i.g = phi i64 [ %i.ab, %bb.c ], [ %1, %bb.a ]  ; 3 uses
  %i.h = lshr i64 %i.g, 3                         ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %.sroa.0.0.i.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 1, 2305843009213693952) %i.h, i64 64) ; 2 uses
  %i.j = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.k = and i64 %i.j, -8
  %i.l = getelementptr i8, ptr %i.f, i64 %i.k
  %i.m = sub i64 0, %i.j
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = shl i64 %i.j, 3
  %i.p = and i64 %i.o, 56                         ; 2 uses
  %i.q = and i64 %i.g, 7                          ; 2 uses
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = add nuw nsw i64 %i.r, %.sroa.0.0.i.i.i.i.i ; 3 uses
  %i.t = lshr i64 %i.s, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !824
  store i64 %i.t, ptr %i.b, align 8, !noalias !824
  %i.u = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull readonly %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !825 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !824
  %i.v = lshr i64 %i.d, 3                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = and i64 %i.s, 7
  %i.y = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 3  ; 2 uses
  %i.z = sub i64 %i.g, %i.y
  %i.aa = and i64 %i.z, -8
  %i.ab = or disjoint i64 %i.x, %i.aa
  %i.ac = lshr i64 %i.s, 3
  %i.ad = and i64 %i.ac, 7
  %i.ae = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = and i64 %i.ae, -8
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = or disjoint i64 %i.y, %i.q
  %i.ak = lshr exact i64 %i.p, 3
  %4 = ptrtoint ptr %i.n to i64                   ; 2 uses
  %5 = sub i64 %i.ak, %4
  %6 = getelementptr i8, ptr %i.n, i64 %5
  %7 = and i64 %4, -8
  %8 = getelementptr i8, ptr %6, i64 %7           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %8) ]
  %.sroa.0.0.i.i17.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 1, 2305843009213693952) %i.v, i64 64) ; 2 uses
  %i.al = ptrtoint ptr %i.e to i64                ; 3 uses
  %9 = and i64 %i.al, -8
  %10 = getelementptr i8, ptr %i.e, i64 %9
  %i.am = sub i64 0, %i.al
  %i.an = getelementptr i8, ptr %10, i64 %i.am    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %11 = shl i64 %i.al, 3
  %12 = and i64 %11, 56                           ; 2 uses
  %13 = and i64 %i.d, 7                           ; 2 uses
  %14 = or disjoint i64 %12, %13
  %15 = add nuw nsw i64 %14, %.sroa.0.0.i.i17.i.i.i ; 3 uses
  %16 = lshr i64 %15, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !826
  store i64 %16, ptr %i.a, align 8, !noalias !826
  %17 = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull readonly %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !827 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !826
  %18 = ptrtoint ptr %i.an to i64                 ; 2 uses
  %i.ao = and i64 %18, -8
  %19 = lshr exact i64 %12, 3
  %20 = shl nuw nsw i64 %.sroa.0.0.i.i17.i.i.i, 3 ; 2 uses
  %21 = sub i64 %19, %18
  %22 = getelementptr i8, ptr %i.an, i64 %21
  %i.ap = getelementptr i8, ptr %22, i64 %i.ao    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = or disjoint i64 %20, %13
  %23 = ptrtoint ptr %17 to i64                   ; 2 uses
  %24 = and i64 %23, -8
  %25 = lshr i64 %15, 3
  %26 = and i64 %25, 7
  %27 = and i64 %15, 7
  %28 = sub i64 %i.d, %20
  %29 = and i64 %28, -8
  %30 = sub i64 %26, %23
  %31 = getelementptr i8, ptr %17, i64 %30
  %32 = getelementptr i8, ptr %31, i64 %24        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %32) ]
  %33 = or disjoint i64 %27, %29
  %i.ar = call fastcc noundef i64 @_RINvXs_NtCsb80QtQtK5z0_6bitvec5fieldINtNtB7_5slice8BitSliceyNtNtB7_5order4Msb0ENtB5_8BitField7load_bejECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %i.aj), !noalias !828
  %i.as = call fastcc noundef i64 @_RINvXs_NtCsb80QtQtK5z0_6bitvec5fieldINtNtB7_5slice8BitSliceyNtNtB7_5order4Msb0ENtB5_8BitField7load_bejECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.aq), !noalias !828
  %.not.i = icmp eq i64 %i.ar, %i.as
  br i1 %.not.i, label %.preheader, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2O29vuvTAEJ_14ty_python_core.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %.preheader ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_19MatchPatternVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderE13visit_patternB1q_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 11 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [96 x i8], align 8                ; 10 uses
  %i.h = alloca [40 x i8], align 8                ; 12 uses
  %i.i = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.479 = alloca [23 x i8], align 1          ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [144 x i8], align 16              ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = load i64, ptr %1, align 8, !range !22, !noundef !5 ; 3 uses
  %i.n = icmp ne i64 %i.m, -9223372036854775804
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.m, -9223372036854775808
  %i.p = icmp slt i64 %i.m, 0
  %i.q = select i1 %i.p, i64 %i.o, i64 4
  switch i64 %i.q, label %bb.b [
    i64 0, label %.loopexit
    i64 1, label %.loopexit
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 6, label %bb.g
    i64 7, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %bb.k, %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECs2O29vuvTAEJ_14ty_python_core.exit70, %bb.aw, %bb.av, %bb.at, %._crit_edge205, %bb.r, %bb.f, %bb.a, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %.idx150 = mul nuw nsw i64 %i.u, 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx150
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 41
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = tail call { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0      ; 3 uses
  %i.af = extractvalue { ptr, ptr } %i.ad, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %._crit_edge145, label %.lr.ph144

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = tail call { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah) ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 3 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %._crit_edge, label %.lr.ph141

bb.f:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.an = load i8, ptr %i.am, align 1, !range !14, !noundef !5
  %.not35 = icmp eq i8 %i.an, -1
  br i1 %.not35, label %.loopexit, label %bb.at

bb.g:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !align !8, !noundef !5 ; 2 uses
  %.not33 = icmp eq ptr %i.ap, null
  br i1 %.not33, label %bb.av, label %bb.au

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr null, ptr %i.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i64, ptr %i.as, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.at, 72
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %.loopexit118, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  br label %bb.ax

bb.i:                                             ; preds = %.lr.ph149, %bb.k
  %.sroa.0.0147 = phi i1 [ false, %.lr.ph149 ], [ %.sroa.0.1, %bb.k ] ; 2 uses
  %.sroa.01.0146 = phi ptr [ %i.s, %.lr.ph149 ], [ %i.ay, %bb.k ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.01.0146, i64 72 ; 2 uses
  %i.az = load i64, ptr %.sroa.01.0146, align 8, !range !22, !noundef !5 ; 2 uses
  %i.ba = icmp ne i64 %i.az, -9223372036854775804
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.az, -9223372036854775803 ; 2 uses
  %brmerge.not = select i1 %i.bb, i1 %.sroa.0.0147, i1 false
  %.sroa.0.0.mux = select i1 %i.bb, i1 true, i1 %.sroa.0.0147
  br i1 %brmerge.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.x, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.0146, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !865
  %i.be = getelementptr i8, ptr %i.bc, i64 866
  %.val.i = load i8, ptr %i.be, align 2, !noalias !865, !noundef !5
  %i.bf = getelementptr i8, ptr %i.bc, i64 867
  %.val1.i = load i8, ptr %i.bf, align 1, !noalias !865, !noundef !5
  store i8 9, ptr %i.d, align 8
  %i.bg = load <2 x i32>, ptr %i.bd, align 8
  store <2 x i32> %i.bg, ptr %i.y, align 8, !noalias !865
  store i8 %.val.i, ptr %i.z, align 8, !noalias !865
  store i8 %.val1.i, ptr %i.aa, align 1, !noalias !865
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !865
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.0.1 = phi i1 [ %.sroa.0.0.mux, %bb.i ], [ true, %bb.j ]
  call fastcc void @_RNvMsb_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_19MatchPatternVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderE13visit_patternB1q_(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %.sroa.01.0146)
  %i.bh = icmp eq ptr %i.ay, %i.v
  br i1 %i.bh, label %.loopexit, label %bb.i

.lr.ph144:                                        ; preds = %bb.d, %.lr.ph144
  %.sroa.04.0142 = phi ptr [ %i.bi, %.lr.ph144 ], [ %i.ae, %bb.d ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.0142, i64 72 ; 2 uses
  tail call fastcc void @_RNvMsb_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_19MatchPatternVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderE13visit_patternB1q_(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %.sroa.04.0142)
  %i.bj = icmp eq ptr %i.bi, %i.af
  br i1 %i.bj, label %._crit_edge145, label %.lr.ph144

._crit_edge145:                                   ; preds = %.lr.ph144, %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 55
  %i.bl = load i8, ptr %i.bk, align 1, !range !14, !noundef !5
  %.not36 = icmp eq i8 %i.bl, -1
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge145
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call fastcc void @_RNvMsb_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_19MatchPatternVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderE6insertB1q_(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %i.bm)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  %i.bn = invoke noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8data_rawCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.o unwind label %.loopexit.split-lp ; 3 uses

.loopexit102:                                     ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMsb_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB2y_19MatchPatternVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderE13visit_pattern0EB3U_.exit, %bb.s, %switch.lookup, %.thread178, %bb.ag
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.m, %.thread, %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit102
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit102 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskLngH8kgpZI_15ruff_python_ast10comparable12HashableExpruEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCskLngH8kgpZI_15ruff_python_ast10comparable12HashableExprNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECs2O29vuvTAEJ_14ty_python_core.exit unwind label %bb.aj

bb.o:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %i.bq = getelementptr inbounds nuw [72 x i8], ptr %i.bn, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_2
