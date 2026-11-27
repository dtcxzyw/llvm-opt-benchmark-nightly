Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.06?download=true
inline.NumInlined: 7974
inline.NumDeleted: 2408
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt:bb.a
  %.idx537 = mul nuw nsw i64 %i.vl, 88
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 %.idx537
  %i.vn = icmp eq i64 %i.vl, 0
  br i1 %i.vn, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit, label %.lr.ph508

.lr.ph508:                                        ; preds = %bb.ee, %.lr.ph508
  %.sroa.0.0.i266506 = phi ptr [ %i.vo, %.lr.ph508 ], [ %i.vj, %bb.ee ] ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i266506, i64 88 ; 2 uses
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.0.0.i266506), !inline_history !43
  %i.vp = icmp eq ptr %i.vo, %i.vm
  br i1 %i.vp, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit, label %.lr.ph508

_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit: ; preds = %.lr.ph508, %bb.ee
  %i.vq = load i32, ptr %i.cz, align 8, !noundef !8 ; 2 uses
  %i.vr = or i32 %i.vq, 1073741824
  store i32 %i.vr, ptr %i.cz, align 8
  %i.vs = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vf) ; 3 uses
  %i.vt = load ptr, ptr %i.vf, align 8, !nonnull !8, !noundef !8
  %i.vu = load i64, ptr %i.vt, align 8, !noundef !8 ; 3 uses
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze5suite5suite(ptr noundef nonnull align 8 %i.vs, i64 noundef range(i64 0, 104811045873349726) %i.vu, ptr noundef nonnull align 8 dereferenceable(1144) %0), !inline_history !43
  %.idx538 = mul nuw nsw i64 %i.vu, 88
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 %.idx538
  %i.vw = icmp eq i64 %i.vu, 0
  br i1 %i.vw, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit268, label %.lr.ph510

.lr.ph510:                                        ; preds = %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit, %.lr.ph510
  %.sroa.0.0.i267509 = phi ptr [ %i.vx, %.lr.ph510 ], [ %i.vs, %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit ] ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i267509, i64 88 ; 2 uses
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.0.0.i267509), !inline_history !43
  %i.vy = icmp eq ptr %i.vx, %i.vv
  br i1 %i.vy, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit268, label %.lr.ph510

_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit268: ; preds = %.lr.ph510, %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit
  store i32 %i.vq, ptr %i.cz, align 8
  br label %.loopexit

bb.ef:                                            ; preds = %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.wb = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.wc = load i32, ptr %i.cz, align 8, !alias.scope !9135, !noundef !8 ; 2 uses
  %i.wd = or i32 %i.wc, 512
  store i32 %i.wd, ptr %i.cz, align 8, !alias.scope !9135
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.wb), !inline_history !0
  store i32 %i.wc, ptr %i.cz, align 8, !alias.scope !9135
  %i.we = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vz) ; 3 uses
  %i.wf = load ptr, ptr %i.vz, align 8, !nonnull !8, !noundef !8
  %i.wg = load i64, ptr %i.wf, align 8, !noundef !8 ; 3 uses
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze5suite5suite(ptr noundef nonnull align 8 %i.we, i64 noundef range(i64 0, 104811045873349726) %i.wg, ptr noundef nonnull align 8 dereferenceable(1144) %0), !inline_history !43
  %.idx535 = mul nuw nsw i64 %i.wg, 88
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 %.idx535
  %i.wi = icmp eq i64 %i.wg, 0
  br i1 %i.wi, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit270, label %.lr.ph503

.lr.ph503:                                        ; preds = %bb.ef, %.lr.ph503
  %.sroa.0.0.i269501 = phi ptr [ %i.wj, %.lr.ph503 ], [ %i.we, %bb.ef ] ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i269501, i64 88 ; 2 uses
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.0.0.i269501), !inline_history !43
  %i.wk = icmp eq ptr %i.wj, %i.wh
  br i1 %i.wk, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit270, label %.lr.ph503

_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit270: ; preds = %.lr.ph503, %bb.ef
  %i.wl = load i32, ptr %i.cz, align 8, !noundef !8 ; 2 uses
  %i.wm = or i32 %i.wl, 1073741824
  store i32 %i.wm, ptr %i.cz, align 8
  %i.wn = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.wa) ; 3 uses
  %i.wo = load ptr, ptr %i.wa, align 8, !nonnull !8, !noundef !8
  %i.wp = load i64, ptr %i.wo, align 8, !noundef !8 ; 3 uses
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze5suite5suite(ptr noundef nonnull align 8 %i.wn, i64 noundef range(i64 0, 104811045873349726) %i.wp, ptr noundef nonnull align 8 dereferenceable(1144) %0), !inline_history !43
  %.idx536 = mul nuw nsw i64 %i.wp, 88
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 %.idx536
  %i.wr = icmp eq i64 %i.wp, 0
  br i1 %i.wr, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit272, label %.lr.ph505

.lr.ph505:                                        ; preds = %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit270, %.lr.ph505
  %.sroa.0.0.i271504 = phi ptr [ %i.ws, %.lr.ph505 ], [ %i.wn, %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit270 ] ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i271504, i64 88 ; 2 uses
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.0.0.i271504), !inline_history !43
  %i.wt = icmp eq ptr %i.ws, %i.wq
  br i1 %i.wt, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit272, label %.lr.ph505

_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit272: ; preds = %.lr.ph505, %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit270
  store i32 %i.wl, ptr %i.cz, align 8
  br label %.loopexit

bb.eg:                                            ; preds = %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ww = load ptr, ptr %i.wv, align 8, !nonnull !8, !noundef !8
  %i.wx = load i32, ptr %i.cz, align 8, !alias.scope !9136, !noundef !8 ; 2 uses
  %i.wy = or i32 %i.wx, 512
  store i32 %i.wy, ptr %i.cz, align 8, !alias.scope !9136
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.ww), !inline_history !0
  store i32 %i.wx, ptr %i.cz, align 8, !alias.scope !9136
  %i.wz = call noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel11push_branch(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al) ; 0 uses
  %i.xa = call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing22is_type_checking_block(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  br i1 %i.xa, label %bb.he, label %bb.hd

bb.eh:                                            ; preds = %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xf = load i64, ptr %i.xe, align 8, !noundef !8 ; 2 uses
  %.idx529 = mul nuw nsw i64 %i.xf, 96
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 %.idx529
  %i.xh = icmp eq i64 %i.xf, 0
  br i1 %i.xh, label %._crit_edge487, label %.lr.ph486

bb.ei:                                            ; preds = %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.xl = call noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel11push_branch(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al)
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.xn = call noundef i8 @_RNvMs4_NtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB5_10Exceptions13from_try_stmt(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.xp = load i64, ptr %i.xo, align 8, !alias.scope !9137, !noundef !8 ; 3 uses
  %i.xq = load i64, ptr %i.xm, align 8, !range !15, !alias.scope !9137, !noundef !8
  %i.xr = icmp eq i64 %i.xp, %i.xq
  br i1 %i.xr, label %bb.ej, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding10ExceptionsE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

bb.ej:                                            ; preds = %bb.ei
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding10ExceptionsE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xm)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding10ExceptionsE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding10ExceptionsE8push_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.ei, %bb.ej
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.xt = load ptr, ptr %i.xs, align 8, !alias.scope !9137, !nonnull !8, !noundef !8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xp
  store i8 %i.xn, ptr %i.xu, align 1
  %i.xv = add i64 %i.xp, 1
  store i64 %i.xv, ptr %i.xo, align 8, !alias.scope !9137
  %i.xw = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.xi) ; 3 uses
  %i.xx = load ptr, ptr %i.xi, align 8, !nonnull !8, !noundef !8
  %i.xy = load i64, ptr %i.xx, align 8, !noundef !8 ; 3 uses
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze5suite5suite(ptr noundef nonnull align 8 %i.xw, i64 noundef range(i64 0, 104811045873349726) %i.xy, ptr noundef nonnull align 8 dereferenceable(1144) %0), !inline_history !43
  %.idx525 = mul nuw nsw i64 %i.xy, 88
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 %.idx525
  %i.ya = icmp eq i64 %i.xy, 0
  br i1 %i.ya, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit274, label %.lr.ph476

.lr.ph476:                                        ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding10ExceptionsE8push_mutCsEhZmuQNqkz_11ruff_linter.exit, %.lr.ph476
  %.sroa.0.0.i273475 = phi ptr [ %i.yb, %.lr.ph476 ], [ %i.xw, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding10ExceptionsE8push_mutCsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i273475, i64 88 ; 2 uses
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.0.0.i273475), !inline_history !43
  %i.yc = icmp eq ptr %i.yb, %i.xz
  br i1 %i.yc, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit274, label %.lr.ph476

_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit274: ; preds = %.lr.ph476, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding10ExceptionsE8push_mutCsEhZmuQNqkz_11ruff_linter.exit
  %i.yd = load i64, ptr %i.xo, align 8, !noundef !8 ; 2 uses
  %i.ye = icmp eq i64 %i.yd, 0
  br i1 %i.ye, label %bb.hj, label %bb.hi

bb.ek:                                            ; preds = %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit
  %i.yf = load i32, ptr %i.cz, align 8, !noundef !8 ; 3 uses
  %i.yg = or i32 %i.yf, 134217728
  %i.yh = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.yi = or i32 %i.yf, 134218240
  store i32 %i.yi, ptr %i.cz, align 8, !alias.scope !9138
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.yh), !inline_history !0
  store i32 %i.yg, ptr %i.cz, align 8, !alias.scope !9138
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8, !align !9, !noundef !8 ; 2 uses
  %.not161 = icmp eq ptr %i.yk, null
  br i1 %.not161, label %bb.hl, label %bb.hk

.lr.ph520:                                        ; preds = %bb.dz, %bb.en
  %.sroa.061.0518 = phi ptr [ %i.yl, %bb.en ], [ %i.ul, %bb.dz ] ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.061.0518, i64 88 ; 2 uses
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.061.0518)
  %i.ym = call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al, ptr noundef nonnull align 8 %.sroa.061.0518, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1079, i64 noundef 13)
  br i1 %i.ym, label %bb.em, label %bb.en

._crit_edge521:                                   ; preds = %bb.en, %bb.dz
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %.val188 = load ptr, ptr %i.yn, align 8, !nonnull !8, !align !9, !noundef !8
  %i.yo = getelementptr inbounds nuw i8, ptr %.val188, i64 40
  %i.yp = load ptr, ptr %i.yo, align 8, !nonnull !8, !align !9, !noundef !8
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 1135
  %.sroa.01.0.copyload.i275 = load i8, ptr %i.yq, align 1
  %i.yr = trunc nuw i8 %.sroa.01.0.copyload.i275 to i1
  br i1 %i.yr, label %bb.el, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14target_version.exit282

bb.el:                                            ; preds = %._crit_edge521
  %.sroa.5.0..sroa_idx.i278 = getelementptr inbounds nuw i8, ptr %0, i64 1137
  %.sroa.5.0.copyload.i279 = load i8, ptr %.sroa.5.0..sroa_idx.i278, align 1
  %.sroa.4.0..sroa_idx.i280 = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.sroa.4.0.copyload.i281 = load i8, ptr %.sroa.4.0..sroa_idx.i280, align 8
  br label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14target_version.exit282

_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14target_version.exit282: ; preds = %._crit_edge521, %bb.el
  %.sroa.3.0.i276 = phi i8 [ %.sroa.5.0.copyload.i279, %bb.el ], [ 10, %._crit_edge521 ]
  %.sroa.0.0.i277 = phi i8 [ %.sroa.4.0.copyload.i281, %bb.el ], [ 3, %._crit_edge521 ]
  %i.ys = call noundef i8 @_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast10annotationNtB2_17AnnotationContext13from_function(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.yp, i8 noundef %.sroa.0.0.i277, i8 noundef %.sroa.3.0.i276) ; 2 uses
  %i.yt = call noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7helpers32is_singledispatch_implementation(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvXs1U_NtCskLngH8kgpZI_15ruff_python_ast5nodesRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB6_10ParametersENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ui)
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8
  %i.yu = icmp eq ptr %.sroa.14.0.copyload, null
  br label %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer

_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer: ; preds = %bb.eq, %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14target_version.exit282
  %.sroa.14.0.ph = phi i1 [ true, %bb.eq ], [ %i.yu, %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14target_version.exit282 ]
  %.sroa.12.0.ph = phi ptr [ null, %bb.eq ], [ %.sroa.12.0.copyload, %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14target_version.exit282 ]
  %.sroa.9.0353.ph = phi ptr [ %.sroa.9.0353.ph710, %bb.eq ], [ %.sroa.9.0.copyload, %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14target_version.exit282 ]
  %.sroa.6.0.ph = phi ptr [ %.sroa.6.0.ph711, %bb.eq ], [ %.sroa.6.0.copyload, %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14target_version.exit282 ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.0.ph712, %bb.eq ], [ %.sroa.0.0.copyload, %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14target_version.exit282 ]
  br label %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708

bb.em:                                            ; preds = %.lr.ph520
  %i.yv = load i32, ptr %i.cz, align 8, !noundef !8
  %i.yw = or i32 %i.yv, 268435456
  store i32 %i.yw, ptr %i.cz, align 8
  br label %bb.en

bb.en:                                            ; preds = %.lr.ph520, %bb.em
  %i.yx = icmp eq ptr %i.yl, %i.um
  br i1 %i.yx, label %._crit_edge521, label %.lr.ph520

.loopexit729:                                     ; preds = %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.peel.newph, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708
  %.sroa.12.0.lcssa = phi ptr [ %.sroa.12.0.ph709, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708 ], [ null, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.peel.newph ]
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph712, i64 80
  br label %bb.ga

bb.eo:                                            ; preds = %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.peel.newph
  br i1 %i.add, label %.loopexit731, label %.loopexit730

.loopexit730:                                     ; preds = %bb.eo, %bb.gb
  %.sroa.12.0.lcssa713 = phi ptr [ %.sroa.12.0.ph709, %bb.gb ], [ null, %bb.eo ]
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.6.0.ph711, i64 80
  br label %bb.ga

.loopexit731:                                     ; preds = %bb.eo, %bb.gc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0353.ph710), "nonnull"(ptr %.sroa.11.0.copyload) ]
  %i.za = icmp eq ptr %.sroa.9.0353.ph710, %.sroa.11.0.copyload
  br i1 %i.za, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.loopexit731
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.9.0353.ph710, i64 80
  br label %bb.ga

bb.eq:                                            ; preds = %.loopexit731
  br i1 %.sroa.14.0.ph, label %bb.er, label %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ze = load i64, ptr %i.zd, align 8, !noundef !8 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.zg = load i32, ptr %i.zf, align 8, !range !38, !noundef !8
  %i.zh = add i32 %i.zg, -1
  %i.zi = zext i32 %i.zh to i64                   ; 3 uses
  %i.zj = icmp ugt i64 %i.ze, %i.zi
  br i1 %i.zj, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.zk = load ptr, ptr %i.zc, align 8, !nonnull !8, !noundef !8
  %i.zl = getelementptr inbounds nuw [120 x i8], ptr %i.zk, i64 %i.zi
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 24
  %i.zn = load i8, ptr %i.zm, align 8, !range !37, !noundef !8
  %i.zo = icmp eq i8 %i.zn, 0                     ; 2 uses
  br i1 %i.zo, label %bb.eu, label %bb.ex

bb.et:                                            ; preds = %bb.er
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zi, i64 noundef %i.ze, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #35
  unreachable

bb.eu:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i8 1, ptr %i.u, align 8
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel10push_scope(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i32 20, ptr %i.t, align 8
  %i.zp = call noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12push_binding(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noalias noundef nonnull readonly captures(address, read_provenance) @625, i64 noundef 9, i32 noundef 0, i32 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t, i16 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.zq = load i64, ptr %i.zd, align 8, !noundef !8 ; 2 uses
  %i.zr = load i32, ptr %i.zf, align 8, !range !38, !noundef !8
  %i.zs = add i32 %i.zr, -1
  %i.zt = zext i32 %i.zs to i64                   ; 3 uses
  %i.zu = icmp ugt i64 %i.zq, %i.zt
  br i1 %i.zu, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.zv = load ptr, ptr %i.zc, align 8, !nonnull !8, !noundef !8
  %i.zw = getelementptr inbounds nuw [120 x i8], ptr %i.zv, i64 %i.zt
  %i.zx = call noundef i32 @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic5scopeNtB2_5Scope3add(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.zw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @625, i64 noundef 9, i32 noundef %i.zp) ; 0 uses
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zt, i64 noundef %i.zq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @624) #35
  unreachable

bb.ex:                                            ; preds = %bb.es, %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 5, ptr %i.s, align 8
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel10push_scope(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.zz = load ptr, ptr %i.zy, align 8, !align !9, !noundef !8 ; 2 uses
  %.not168 = icmp eq ptr %i.zz, null
  br i1 %.not168, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB15_(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.zz)
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvXs1U_NtCskLngH8kgpZI_15ruff_python_ast5nodesRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB6_10ParametersENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ui)
  %.sroa.0316.0.copyload = load ptr, ptr %i.r, align 8
  %.sroa.5317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5317.0.copyload = load ptr, ptr %.sroa.5317.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6318.0.copyload = load ptr, ptr %.sroa.6318.0..sroa_idx, align 8
  %.sroa.8319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.8319.0.copyload = load ptr, ptr %.sroa.8319.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.9320.0.copyload = load ptr, ptr %.sroa.9320.0..sroa_idx, align 8
  %.sroa.11321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.11321.0.copyload = load ptr, ptr %.sroa.11321.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.12322.0.copyload = load ptr, ptr %.sroa.12322.0..sroa_idx, align 8
  %.sroa.14323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.14323.0.copyload = load ptr, ptr %.sroa.14323.0..sroa_idx, align 8
  %i.aaa = zext nneg i8 %i.ys to i64
  %switch.gep700 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.564, i64 %i.aaa
  br label %bb.fa

bb.fa:                                            ; preds = %.backedge707, %bb.ez
  %.sroa.14323.0 = phi ptr [ %.sroa.14323.0.copyload, %bb.ez ], [ %.sroa.14323.1416, %.backedge707 ] ; 4 uses
  %.sroa.12322.0 = phi ptr [ %.sroa.12322.0.copyload, %bb.ez ], [ %.sroa.12322.1418, %.backedge707 ] ; 4 uses
  %.sroa.9320.0 = phi ptr [ %.sroa.9320.0.copyload, %bb.ez ], [ %.sroa.9320.1420, %.backedge707 ] ; 8 uses
  %.sroa.6318.0 = phi ptr [ %.sroa.6318.0.copyload, %bb.ez ], [ %.sroa.6318.1422, %.backedge707 ] ; 8 uses
  %.sroa.0316.0 = phi ptr [ %.sroa.0316.0.copyload, %bb.ez ], [ %.sroa.0316.1424, %.backedge707 ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0316.0), "nonnull"(ptr %.sroa.5317.0.copyload) ]
  %i.aab = icmp eq ptr %.sroa.0316.0, %.sroa.5317.0.copyload
  br i1 %i.aab, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0316.0, i64 80
  br label %bb.fx

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6318.0), "nonnull"(ptr %.sroa.8319.0.copyload) ]
  %i.aad = icmp eq ptr %.sroa.6318.0, %.sroa.8319.0.copyload
  br i1 %i.aad, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.6318.0, i64 80
  br label %bb.fx

bb.fe:                                            ; preds = %bb.fc
  %.not.i288 = icmp eq ptr %.sroa.12322.0, null
  br i1 %.not.i288, label %bb.ff, label %bb.fy

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9320.0), "nonnull"(ptr %.sroa.11321.0.copyload) ]
  %i.aaf = icmp eq ptr %.sroa.9320.0, %.sroa.11321.0.copyload
  br i1 %i.aaf, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aag = getelementptr inbounds nuw i8, ptr %.sroa.9320.0, i64 80
  br label %bb.fx

bb.fh:                                            ; preds = %bb.ff
  %.not10.i289 = icmp eq ptr %.sroa.14323.0, null
  br i1 %.not10.i289, label %bb.fi, label %bb.fy

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aai = load ptr, ptr %i.aah, align 8, !align !9, !noundef !8 ; 2 uses
  %.not170 = icmp eq ptr %i.aai, null
  br i1 %.not170, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  br i1 %i.yt, label %.sink.split, label %switch.lookup

switch.lookup:                                    ; preds = %bb.fj
  %i.aaj = zext nneg i8 %i.ys to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.564, i64 %i.aaj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.fj
  %.sink678 = phi i32 [ 12, %bb.fj ], [ %switch.ext, %switch.lookup ]
  %i.aak = load i32, ptr %i.cz, align 8, !noundef !8 ; 2 uses
  %i.aal = or i32 %i.aak, %.sink678
  store i32 %i.aal, ptr %i.cz, align 8
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.aai)
  store i32 %i.aak, ptr %i.cz, align 8
  br label %bb.fk

bb.fk:                                            ; preds = %.sink.split, %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.aan = load i32, ptr %i.aam, align 4, !range !38, !noundef !8 ; 4 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val192 = load ptr, ptr %i.aao, align 8        ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val193 = load i64, ptr %i.aap, align 8        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9139)
  %i.aaq = add i32 %i.aan, -1
  %i.aar = zext i32 %i.aaq to i64                 ; 3 uses
  %i.aas = icmp ugt i64 %.val193, %i.aar
  br i1 %i.aas, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val192) ]
  %i.aat = getelementptr inbounds nuw [64 x i8], ptr %.val192, i64 %i.aar ; 2 uses
  %i.aau = load i64, ptr %i.aat, align 8, !range !29, !noalias !9139, !noundef !8
  %i.aav = icmp eq i64 %i.aau, 2
  br i1 %i.aav, label %bb.fn, label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aar, i64 noundef %.val193, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @654) #35, !noalias !9139
  unreachable

bb.fn:                                            ; preds = %bb.fl
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.aax = load i64, ptr %i.aaw, align 8, !range !44, !noalias !9139, !noundef !8
  %switch.i = icmp samesign ult i64 %i.aax, 2
  %i.aay = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %switch.i, label %bb.fq, label %bb.fp

bb.fo:                                            ; preds = %bb.fl
  store i64 2, ptr %i.q, align 8, !alias.scope !9139
  %i.aba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %1, ptr %i.aba, align 8, !alias.scope !9139
  %i.abb = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 %i.aan, ptr %i.abb, align 8, !alias.scope !9139
  br label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction18extract_definition.exit

bb.fp:                                            ; preds = %bb.fn
  store i64 3, ptr %i.q, align 8, !alias.scope !9139
  store ptr %1, ptr %i.aay, align 8, !alias.scope !9139
  store i32 %i.aan, ptr %i.aaz, align 8, !alias.scope !9139
  br label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction18extract_definition.exit

bb.fq:                                            ; preds = %bb.fn
  store i64 4, ptr %i.q, align 8, !alias.scope !9139
  store ptr %1, ptr %i.aay, align 8, !alias.scope !9139
  store i32 %i.aan, ptr %i.aaz, align 8, !alias.scope !9139
  br label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction18extract_definition.exit

_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction18extract_definition.exit: ; preds = %bb.fo, %bb.fp, %bb.fq
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel15push_definition(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.abc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %1, ptr %i.abc, align 8
  store i8 2, ptr %i.p, align 8
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel10push_scope(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.abd = load i32, ptr %i.cz, align 8, !noundef !8
  %i.abe = and i32 %i.abd, -129                   ; 2 uses
  store i32 %i.abe, ptr %i.cz, align 8
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.abg = load <4 x i32>, ptr %i.zf, align 8
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.abi = load i64, ptr %i.abh, align 8, !alias.scope !9140, !noundef !8 ; 3 uses
  %i.abj = load i64, ptr %i.abf, align 8, !range !15, !alias.scope !9140, !noundef !8
  %i.abk = icmp eq i64 %i.abi, %i.abj
  br i1 %i.abk, label %bb.fr, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

bb.fr:                                            ; preds = %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction18extract_definition.exit
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abf), !noalias !9141
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotE8push_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction18extract_definition.exit, %bb.fr
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.abm = load ptr, ptr %i.abl, align 8, !alias.scope !9140, !nonnull !8, !noundef !8
  %i.abn = getelementptr inbounds nuw [20 x i8], ptr %i.abm, i64 %i.abi ; 2 uses
  store <4 x i32> %i.abg, ptr %i.abn, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  store i32 %i.abe, ptr %.sroa.7.0..sroa_idx, align 4
  %i.abo = add i64 %i.abi, 1
  store i64 %i.abo, ptr %i.abh, align 8, !alias.scope !9140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.abp = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.uh)
  %i.abq = load ptr, ptr %i.uh, align 8, !nonnull !8, !noundef !8
  %i.abr = load i64, ptr %i.abq, align 8, !noundef !8
  call void @_RNvMs0_NtCs7bpTdHNYxeX_20ruff_python_semantic7globalsNtB5_7Globals9from_body(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noundef nonnull align 8 %i.abp, i64 noundef %i.abr)
  %i.abs = load ptr, ptr %i.o, align 8, !noundef !8
  %.not171 = icmp eq ptr %i.abs, null
  br i1 %.not171, label %bb.ft, label %bb.fs

default.unreachable654:                           ; preds = %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14target_version.exit
  unreachable

bb.fs:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotE8push_mutCsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel11set_globals(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ft

bb.ft:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotE8push_mutCsEhZmuQNqkz_11ruff_linter.exit, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.abt = load i32, ptr %i.zf, align 8, !range !38, !noundef !8 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.abw = load i64, ptr %i.abv, align 8, !alias.scope !9142, !noundef !8 ; 3 uses
  %i.abx = load i64, ptr %i.abu, align 8, !range !15, !alias.scope !9142, !noundef !8
  %i.aby = icmp eq i64 %i.abw, %i.abx
  br i1 %i.aby, label %bb.fu, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

bb.fu:                                            ; preds = %bb.ft
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abu)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8push_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.ft, %bb.fu
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.aca = load ptr, ptr %i.abz, align 8, !alias.scope !9142, !nonnull !8, !noundef !8
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %i.abw
  store i32 %i.abt, ptr %i.acb, align 4
  %i.acc = add i64 %i.abw, 1
  store i64 %i.acc, ptr %i.abv, align 8, !alias.scope !9142
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9pop_scope(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel14pop_definition(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9pop_scope(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al)
  br i1 %i.zo, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fw, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8push_mutCsEhZmuQNqkz_11ruff_linter.exit
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.acf = load i8, ptr %i.ace, align 1, !range !16, !alias.scope !9143, !noundef !8 ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ach = load i64, ptr %i.acg, align 8, !alias.scope !9143, !noundef !8
  %i.aci = and i64 %i.ach, 72057594037927935
  %i.acj = icmp ult i8 %i.acf, -48
  %i.ack = zext i8 %i.acf to i64
  %i.acl = add nsw i64 %i.ack, -192
  %spec.store.select.i292 = call i64 @llvm.umin.i64(i64 %i.acl, i64 16)
  %.sroa.0.0.i293 = select i1 %i.acj, i64 %spec.store.select.i292, i64 %i.aci
  %i.acm = icmp ugt i8 %i.acf, -49
  %i.acn = load ptr, ptr %i.acd, align 8, !alias.scope !9143
  %.sroa.01.0.i294 = select i1 %i.acm, ptr %i.acn, ptr %i.acd
  %i.aco = call { i32, i32 } @_RNvXs0_NtCskLngH8kgpZI_15ruff_python_ast10identifierNtNtB7_9generated4StmtNtB5_10Identifier10identifier(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.acp = extractvalue { i32, i32 } %i.aco, 0
  %i.acq = extractvalue { i32, i32 } %i.aco, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.acr = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.abt, ptr %i.acr, align 4
  store i32 11, ptr %i.m, align 8
  call fastcc void @_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker11add_binding(ptr noalias noundef align 8 dereferenceable(1144) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i294, i64 noundef %.sroa.0.0.i293, i32 noundef %i.acp, i32 noundef %i.acq, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, i16 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.loopexit

bb.fw:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8push_mutCsEhZmuQNqkz_11ruff_linter.exit
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9pop_scope(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al)
  br label %bb.fv

.loopexit:                                        ; preds = %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit315, %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit303, %bb.hl, %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit310, %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit306, %bb.ha, %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker31visit_deferred_type_alias_value.exit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8push_mutCsEhZmuQNqkz_11ruff_linter.exit298, %bb.fv, %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit272, %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit268, %bb.dy
  %i.acs = call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12at_top_level(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  br i1 %i.acs, label %bb.hp, label %bb.hm

bb.fx:                                            ; preds = %bb.fb, %bb.fg, %bb.fd
  %.sroa.12322.1.ph = phi ptr [ %.sroa.12322.0, %bb.fb ], [ %.sroa.12322.0, %bb.fd ], [ null, %bb.fg ]
  %.sroa.9320.1.ph = phi ptr [ %.sroa.9320.0, %bb.fb ], [ %.sroa.9320.0, %bb.fd ], [ %i.aag, %bb.fg ]
  %.sroa.6318.1.ph = phi ptr [ %.sroa.6318.0, %bb.fb ], [ %i.aae, %bb.fd ], [ %.sroa.6318.0, %bb.fg ]
  %.sroa.0316.1.ph = phi ptr [ %i.aac, %bb.fb ], [ %.sroa.0316.0, %bb.fd ], [ %.sroa.0316.0, %bb.fg ]
  %.sroa.7.0.i286.ph = phi ptr [ %.sroa.0316.0, %bb.fb ], [ %.sroa.6318.0, %bb.fd ], [ %.sroa.9320.0, %bb.fg ]
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i286.ph, i64 16
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fe, %bb.fh, %bb.fx
  %or.cond.not = phi i1 [ %i.yt, %bb.fx ], [ false, %bb.fh ], [ false, %bb.fe ]
  %.sroa.0316.1424 = phi ptr [ %.sroa.0316.1.ph, %bb.fx ], [ %.sroa.0316.0, %bb.fh ], [ %.sroa.0316.0, %bb.fe ]
  %.sroa.6318.1422 = phi ptr [ %.sroa.6318.1.ph, %bb.fx ], [ %.sroa.6318.0, %bb.fh ], [ %.sroa.6318.0, %bb.fe ]
  %.sroa.9320.1420 = phi ptr [ %.sroa.9320.1.ph, %bb.fx ], [ %.sroa.9320.0, %bb.fh ], [ %.sroa.9320.0, %bb.fe ]
  %.sroa.12322.1418 = phi ptr [ %.sroa.12322.1.ph, %bb.fx ], [ null, %bb.fh ], [ null, %bb.fe ]
  %.sroa.14323.1416 = phi ptr [ %.sroa.14323.0, %bb.fx ], [ null, %bb.fh ], [ %.sroa.14323.0, %bb.fe ]
  %.sroa.0113.0 = phi ptr [ %i.act, %bb.fx ], [ %.sroa.14323.0, %bb.fh ], [ %.sroa.12322.0, %bb.fe ]
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.0113.0, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8, !align !9, !noundef !8 ; 2 uses
  %.not172 = icmp eq ptr %i.acv, null
  br i1 %.not172, label %.backedge707, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  br i1 %or.cond.not, label %.sink.split679, label %switch.lookup699

switch.lookup699:                                 ; preds = %bb.fz
  %switch.load701 = load i8, ptr %switch.gep700, align 1
  %switch.ext702 = zext i8 %switch.load701 to i32
  br label %.sink.split679

.sink.split679:                                   ; preds = %switch.lookup699, %bb.fz
  %.sink682 = phi i32 [ %switch.ext702, %switch.lookup699 ], [ 12, %bb.fz ]
  %i.acw = load i32, ptr %i.cz, align 8, !noundef !8 ; 2 uses
  %i.acx = or i32 %i.acw, %.sink682
  store i32 %i.acx, ptr %i.cz, align 8
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.acv)
  store i32 %i.acw, ptr %i.cz, align 8
  br label %.backedge707

.backedge707:                                     ; preds = %.sink.split679, %bb.fy
  br label %bb.fa

bb.ga:                                            ; preds = %.loopexit729, %bb.ep, %.loopexit730
  %.sroa.12.1.ph = phi ptr [ %.sroa.12.0.lcssa, %.loopexit729 ], [ %.sroa.12.0.lcssa713, %.loopexit730 ], [ null, %bb.ep ]
  %.sroa.9.1.ph = phi ptr [ %.sroa.9.0353.ph710, %.loopexit729 ], [ %.sroa.9.0353.ph710, %.loopexit730 ], [ %i.zb, %bb.ep ]
  %.sroa.6.1.ph = phi ptr [ %.sroa.6.0.ph711, %.loopexit729 ], [ %i.yz, %.loopexit730 ], [ %.sroa.6.0.ph711, %bb.ep ]
  %.sroa.0.1.ph = phi ptr [ %i.yy, %.loopexit729 ], [ %.sroa.0.0.ph712, %.loopexit730 ], [ %.sroa.0.0.ph712, %bb.ep ]
  %.sroa.7.0.i.ph = phi ptr [ %.sroa.0.0.ph712, %.loopexit729 ], [ %.sroa.6.0.ph711, %.loopexit730 ], [ %.sroa.9.0353.ph710, %bb.ep ]
  %i.acy = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.ph, i64 8
  %i.acz = load ptr, ptr %i.acy, align 8, !align !9, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.acz, null
  br i1 %.not, label %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.backedge, label %bb.gd

_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.backedge: ; preds = %bb.ga, %bb.gd
  br label %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708

_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708: ; preds = %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.backedge, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer
  %.sroa.12.0.ph709 = phi ptr [ %.sroa.12.0.ph, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer ], [ %.sroa.12.1.ph, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.backedge ] ; 3 uses
  %.sroa.9.0353.ph710 = phi ptr [ %.sroa.9.0353.ph, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer ], [ %.sroa.9.1.ph, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.backedge ] ; 7 uses
  %.sroa.6.0.ph711 = phi ptr [ %.sroa.6.0.ph, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer ], [ %.sroa.6.1.ph, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.backedge ] ; 8 uses
  %.sroa.0.0.ph712 = phi ptr [ %.sroa.0.0.ph, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer ], [ %.sroa.0.1.ph, %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.backedge ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph712), "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ada = icmp eq ptr %.sroa.0.0.ph712, %.sroa.5.0.copyload
  br i1 %i.ada, label %bb.gb, label %.loopexit729

bb.gb:                                            ; preds = %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.ph711), "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.adb = icmp eq ptr %.sroa.6.0.ph711, %.sroa.8.0.copyload
  br i1 %i.adb, label %bb.gc, label %.loopexit730

bb.gc:                                            ; preds = %bb.gb
  %.not.i284.peel = icmp eq ptr %.sroa.12.0.ph709, null
  br i1 %.not.i284.peel, label %.loopexit731, label %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.peel.newph

_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.peel.newph: ; preds = %bb.gc
  %i.adc = icmp eq ptr %.sroa.0.0.ph712, %.sroa.5.0.copyload
  %i.add = icmp eq ptr %.sroa.6.0.ph711, %.sroa.8.0.copyload
  br i1 %i.adc, label %bb.eo, label %.loopexit729

bb.gd:                                            ; preds = %bb.ga
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.acz)
  br label %_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread400.outer708.backedge

.lr.ph513:                                        ; preds = %bb.ea, %.lr.ph513
  %.sroa.081.0511 = phi ptr [ %i.ade, %.lr.ph513 ], [ %i.ur, %bb.ea ] ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.081.0511, i64 88 ; 2 uses
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.081.0511)
  %i.adf = icmp eq ptr %i.ade, %i.us
  br i1 %i.adf, label %._crit_edge514, label %.lr.ph513

._crit_edge514:                                   ; preds = %.lr.ph513, %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 5, ptr %i.l, align 8
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel10push_scope(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adh = load ptr, ptr %i.adg, align 8, !align !9, !noundef !8 ; 2 uses
  %.not164 = icmp eq ptr %i.adh, null
  br i1 %.not164, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %._crit_edge514
  call void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB15_(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.adh)
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %._crit_edge514
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adj = load ptr, ptr %i.adi, align 8, !align !9, !noundef !8 ; 2 uses
  %.not165 = icmp eq ptr %i.adj, null
  br i1 %.not165, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.adk = load i32, ptr %i.cz, align 8, !noundef !8
  %i.adl = or i32 %i.adk, 4194304
  store i32 %i.adl, ptr %i.cz, align 8
  call void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor14walk_argumentsNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB13_(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.adj)
  %i.adm = load i32, ptr %i.cz, align 8, !noundef !8
  %i.adn = and i32 %i.adm, -4194305
  store i32 %i.adn, ptr %i.cz, align 8
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.adp = load i32, ptr %i.ado, align 4, !range !38, !noundef !8 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val190 = load ptr, ptr %i.adq, align 8        ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val191 = load i64, ptr %i.adr, align 8        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9144)
  %i.ads = add i32 %i.adp, -1
  %i.adt = zext i32 %i.ads to i64                 ; 3 uses
  %i.adu = icmp ugt i64 %.val191, %i.adt
  br i1 %i.adu, label %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction18extract_definition.exit295, label %bb.gi

_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction18extract_definition.exit295: ; preds = %bb.gh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val190) ]
  %i.adv = getelementptr inbounds nuw [64 x i8], ptr %.val190, i64 %i.adt
  %i.adw = load i64, ptr %i.adv, align 8, !range !29, !noalias !9144, !noundef !8
  %i.adx = icmp eq i64 %i.adw, 2
  %i.ady = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.adz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %. = zext i1 %i.adx to i64
  store i64 %., ptr %i.k, align 8, !alias.scope !9144
  store ptr %1, ptr %i.ady, align 8, !alias.scope !9144
  store i32 %i.adp, ptr %i.adz, align 8, !alias.scope !9144
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel15push_definition(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aea = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.aea, align 8
  store i8 0, ptr %i.j, align 8
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel10push_scope(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.aeb = load i32, ptr %i.cz, align 8, !noundef !8
  %i.aec = and i32 %i.aeb, -129
  store i32 %i.aec, ptr %i.cz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aed = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.uo)
  %i.aee = load ptr, ptr %i.uo, align 8, !nonnull !8, !noundef !8
  %i.aef = load i64, ptr %i.aee, align 8, !noundef !8
  call void @_RNvMs0_NtCs7bpTdHNYxeX_20ruff_python_semantic7globalsNtB5_7Globals9from_body(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.aed, i64 noundef %i.aef)
  %i.aeg = load ptr, ptr %i.i, align 8, !noundef !8
  %.not166 = icmp eq ptr %i.aeg, null
  br i1 %.not166, label %bb.gk, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.adt, i64 noundef %.val191, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @653) #35, !noalias !9144
  unreachable

bb.gj:                                            ; preds = %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction18extract_definition.exit295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel11set_globals(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.gk

bb.gk:                                            ; preds = %_RNvNtNtCsEhZmuQNqkz_11ruff_linter10docstrings10extraction18extract_definition.exit295, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i8 1, ptr %i.db, align 1
  %i.aeh = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.uo) ; 3 uses
  %i.aei = load ptr, ptr %i.uo, align 8, !nonnull !8, !noundef !8
  %i.aej = load i64, ptr %i.aei, align 8, !noundef !8 ; 3 uses
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze5suite5suite(ptr noundef nonnull align 8 %i.aeh, i64 noundef range(i64 0, 104811045873349726) %i.aej, ptr noundef nonnull align 8 dereferenceable(1144) %0), !inline_history !43
  %.idx539 = mul nuw nsw i64 %i.aej, 88
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %.idx539
  %i.ael = icmp eq i64 %i.aej, 0
  br i1 %i.ael, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit297, label %.lr.ph517

.lr.ph517:                                        ; preds = %bb.gk, %.lr.ph517
  %.sroa.0.0.i296515 = phi ptr [ %i.aem, %.lr.ph517 ], [ %i.aeh, %bb.gk ] ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i296515, i64 88 ; 2 uses
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.0.0.i296515), !inline_history !43
  %i.aen = icmp eq ptr %i.aem, %i.aek
  br i1 %i.aen, label %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit297, label %.lr.ph517

_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit297: ; preds = %.lr.ph517, %bb.gk
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aep = load i32, ptr %i.aeo, align 8, !range !38, !noundef !8 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.aes = load i64, ptr %i.aer, align 8, !alias.scope !9145, !noundef !8 ; 3 uses
  %i.aet = load i64, ptr %i.aeq, align 8, !range !15, !alias.scope !9145, !noundef !8
  %i.aeu = icmp eq i64 %i.aes, %i.aet
  br i1 %i.aeu, label %bb.gl, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8push_mutCsEhZmuQNqkz_11ruff_linter.exit298

bb.gl:                                            ; preds = %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit297
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aeq)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8push_mutCsEhZmuQNqkz_11ruff_linter.exit298

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope7ScopeIdE8push_mutCsEhZmuQNqkz_11ruff_linter.exit298: ; preds = %_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body.exit297, %bb.gl
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.aew = load ptr, ptr %i.aev, align 8, !alias.scope !9145, !nonnull !8, !noundef !8
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aew, i64 %i.aes
  store i32 %i.aep, ptr %i.aex, align 4
  %i.aey = add i64 %i.aes, 1
  store i64 %i.aey, ptr %i.aer, align 8, !alias.scope !9145
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9pop_scope(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel14pop_definition(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9pop_scope(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al)
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.afb = load i8, ptr %i.afa, align 1, !range !16, !alias.scope !9146, !noundef !8 ; 3 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.afd = load i64, ptr %i.afc, align 8, !alias.scope !9146, !noundef !8
  %i.afe = and i64 %i.afd, 72057594037927935
  %i.aff = icmp ult i8 %i.afb, -48
  %i.afg = zext i8 %i.afb to i64
  %i.afh = add nsw i64 %i.afg, -192
  %spec.store.select.i299 = call i64 @llvm.umin.i64(i64 %i.afh, i64 16)
  %.sroa.0.0.i300 = select i1 %i.aff, i64 %spec.store.select.i299, i64 %i.afe
  %i.afi = icmp ugt i8 %i.afb, -49
  %i.afj = load ptr, ptr %i.aez, align 8, !alias.scope !9146
  %.sroa.01.0.i301 = select i1 %i.afi, ptr %i.afj, ptr %i.aez
  %i.afk = call { i32, i32 } @_RNvXs0_NtCskLngH8kgpZI_15ruff_python_ast10identifierNtNtB7_9generated4StmtNtB5_10Identifier10identifier(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.afl = extractvalue { i32, i32 } %i.afk, 0
  %i.afm = extractvalue { i32, i32 } %i.afk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.afn = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.aep, ptr %i.afn, align 4
  store i32 10, ptr %i.g, align 8
  call fastcc void @_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker11add_binding(ptr noalias noundef align 8 dereferenceable(1144) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i301, i64 noundef %.sroa.0.0.i300, i32 noundef %i.afl, i32 noundef %i.afm, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, i16 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit

bb.gm:                                            ; preds = %bb.eb
  call void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB15_(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.uv)
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.eb
  %i.afo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afp = load ptr, ptr %i.afo, align 8, !nonnull !8, !noundef !8
  %i.afq = load i32, ptr %i.cz, align 8, !alias.scope !9147, !noundef !8 ; 2 uses
  %i.afr = or i32 %i.afq, 67108864                ; 2 uses
  store i32 %i.afr, ptr %i.cz, align 8, !alias.scope !9147
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.afu = load <4 x i32>, ptr %i.aft, align 8, !alias.scope !9147
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.afw = load i64, ptr %i.afv, align 8, !alias.scope !9148, !noundef !8 ; 3 uses
  %i.afx = load i64, ptr %i.afs, align 8, !range !15, !alias.scope !9148, !noundef !8
  %i.afy = icmp eq i64 %i.afw, %i.afx
  br i1 %i.afy, label %bb.go, label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker31visit_deferred_type_alias_value.exit

bb.go:                                            ; preds = %bb.gn
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afs), !noalias !9149
  br label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker31visit_deferred_type_alias_value.exit

_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker31visit_deferred_type_alias_value.exit: ; preds = %bb.gn, %bb.go
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aga = load ptr, ptr %i.afz, align 8, !alias.scope !9148, !nonnull !8, !noundef !8
  %i.agb = getelementptr inbounds nuw [32 x i8], ptr %i.aga, i64 %i.afw ; 3 uses
  store ptr %i.afp, ptr %i.agb, align 8
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  store <4 x i32> %i.afu, ptr %.sroa.4.0..sroa_idx1.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agb, i64 24
end_hunk_0
