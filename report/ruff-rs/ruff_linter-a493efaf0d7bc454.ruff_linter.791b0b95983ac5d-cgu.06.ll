Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.06?download=true
inline.NumInlined: 7974
inline.NumDeleted: 2408
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr:bb.a
  %i.nn = getelementptr inbounds nuw [20 x i8], ptr %i.nm, i64 %i.ni ; 2 uses
  store <4 x i32> %i.nf, ptr %i.nn, align 4
  %.sroa.7248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store i32 %i.ng, ptr %.sroa.7248.0..sroa_idx, align 4
  %i.no = add i64 %i.ni, 1
  store i64 %i.no, ptr %i.nh, align 8, !alias.scope !7480, !noalias !7481
  br label %.loopexit

.lr.ph368:                                        ; preds = %bb.bf, %.lr.ph368
  %i.np = phi ptr [ %i.nq, %.lr.ph368 ], [ %i.mq, %bb.bf ]
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.np)
  %i.nq = call noundef align 8 ptr @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_8find_map5checkRB1u_RNtNtB1y_9generated4ExprQNCNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB4q_7CheckerNtNtB1y_7visitor7Visitor10visit_exprs_0E0INtNtNtBb_3ops12control_flow11ControlFlowB3T_EEB4u_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s, ptr noalias noundef nonnull %i.mp) ; 2 uses
  %.not180 = icmp eq ptr %i.nq, null
  br i1 %.not180, label %._crit_edge369, label %.lr.ph368

._crit_edge369:                                   ; preds = %.lr.ph368, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bg

bb.bj:                                            ; preds = %bb.ax
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.lo)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.ax
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ns = load ptr, ptr %i.nr, align 8, !nonnull !5, !noundef !5
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.ns)
  br label %.loopexit

bb.bl:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.l, ptr noundef nonnull align 8 dereferenceable(144) %i.q, i64 144, i1 false)
  %i.nt = call fastcc noundef i8 @_RNCNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB7_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprs0_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.ah, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  switch i8 %i.nt, label %default.unreachable443 [
    i8 -1, label %bb.bn
    i8 0, label %bb.bo
    i8 1, label %bb.bp
    i8 2, label %bb.bq
    i8 3, label %bb.br
    i8 4, label %bb.bs
    i8 5, label %bb.bt
    i8 6, label %bb.bu
    i8 7, label %bb.bv
  ]

bb.bm:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.nu = load ptr, ptr %i.lw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nw = load i64, ptr %i.nv, align 8, !noundef !5 ; 2 uses
  %.idx379 = mul nuw nsw i64 %i.nw, 72
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.idx379
  %i.ny = icmp eq i64 %i.nw, 0
  br i1 %i.ny, label %._crit_edge362, label %.lr.ph361.preheader

.lr.ph361.preheader:                              ; preds = %bb.bn
  %.pre405 = load i32, ptr %i.ai, align 8, !alias.scope !7482 ; 2 uses
  %i.nz = and i32 %.pre405, -9
  br label %.lr.ph361

.lr.ph361:                                        ; preds = %.lr.ph361.preheader, %.lr.ph361
  %.sroa.0101.0359 = phi ptr [ %i.oa, %.lr.ph361 ], [ %i.nu, %.lr.ph361.preheader ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0101.0359, i64 72 ; 2 uses
  store i32 %i.nz, ptr %i.ai, align 8, !alias.scope !7482
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.0101.0359), !inline_history !7354
  store i32 %.pre405, ptr %i.ai, align 8, !alias.scope !7482
  %i.ob = icmp eq ptr %i.oa, %i.nx
  br i1 %i.ob, label %._crit_edge362, label %.lr.ph361

._crit_edge362:                                   ; preds = %.lr.ph361, %bb.bn
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.od = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.oc) ; 3 uses
  %i.oe = load ptr, ptr %i.oc, align 8, !nonnull !5, !noundef !5
  %i.of = load i64, ptr %i.oe, align 8, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.od) ]
  %.idx380 = mul nuw nsw i64 %i.of, 120
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 %.idx380
  %i.oh = icmp eq i64 %i.of, 0
  br i1 %i.oh, label %.loopexit, label %.lr.ph365.preheader

.lr.ph365.preheader:                              ; preds = %._crit_edge362
  %.pre406 = load i32, ptr %i.ai, align 8, !alias.scope !7483 ; 2 uses
  %i.oi = and i32 %.pre406, -9
  br label %.lr.ph365

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %.lr.ph365
  %.sroa.0104.0363 = phi ptr [ %i.oj, %.lr.ph365 ], [ %i.od, %.lr.ph365.preheader ] ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0104.0363, i64 120 ; 2 uses
  store i32 %i.oi, ptr %i.ai, align 8, !alias.scope !7483
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.0104.0363), !inline_history !7354
  store i32 %.pre406, ptr %i.ai, align 8, !alias.scope !7483
  %i.ok = icmp eq ptr %i.oj, %i.og
  br i1 %i.ok, label %.loopexit, label %.lr.ph365

bb.bo:                                            ; preds = %bb.bl
  %i.ol = load ptr, ptr %i.lw, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.on = load i64, ptr %i.om, align 8, !noundef !5 ; 2 uses
  %.idx177 = mul nuw nsw i64 %i.on, 72
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 %.idx177 ; 2 uses
  %i.op = icmp eq i64 %i.on, 0
  br i1 %i.op, label %bb.bx, label %bb.bw

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments17iter_source_order(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noundef nonnull align 8 %i.lw)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.oq = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p), !noalias !7484 ; 2 uses
  %i.or = extractvalue { i64, ptr } %i.oq, 0      ; 2 uses
  %.not.i352 = icmp eq i64 %i.or, 2
  br i1 %.not.i352, label %._crit_edge355, label %.lr.ph354

.lr.ph354:                                        ; preds = %bb.bp
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %bb.by

bb.bq:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments17iter_source_order(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noundef nonnull align 8 %i.lw)
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  store i64 0, ptr %.sroa.229.0..sroa_idx, align 8
  %i.ot = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.o), !noalias !7485 ; 2 uses
  %i.ou = extractvalue { i64, ptr } %i.ot, 0      ; 2 uses
  %.not.i208348 = icmp eq i64 %i.ou, 2
  br i1 %.not.i208348, label %._crit_edge351, label %.lr.ph350

bb.br:                                            ; preds = %bb.bl
  %i.ov = load ptr, ptr %i.lw, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ox = load i64, ptr %i.ow, align 8, !noundef !5 ; 2 uses
  %.idx169 = mul nuw nsw i64 %i.ox, 72
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 %.idx169 ; 2 uses
  %i.oz = icmp eq i64 %i.ox, 0
  br i1 %i.oz, label %bb.cr, label %bb.cq

bb.bs:                                            ; preds = %bb.bl
  %i.pa = load ptr, ptr %i.lw, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pc = load i64, ptr %i.pb, align 8, !noundef !5 ; 2 uses
  %.idx165 = mul nuw nsw i64 %i.pc, 72
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 %.idx165 ; 2 uses
  %i.pe = icmp eq i64 %i.pc, 0
  br i1 %i.pe, label %bb.da, label %bb.cz

bb.bt:                                            ; preds = %bb.bl
  %i.pf = load ptr, ptr %i.lw, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ph = load i64, ptr %i.pg, align 8, !noundef !5 ; 2 uses
  %.idx163 = mul nuw nsw i64 %i.ph, 72
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.idx163 ; 2 uses
  %i.pj = icmp eq i64 %i.ph, 0
  br i1 %i.pj, label %bb.dr, label %bb.dq

bb.bu:                                            ; preds = %bb.bl
  %i.pk = load ptr, ptr %i.lw, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pm = load i64, ptr %i.pl, align 8, !noundef !5 ; 3 uses
  %.idx161 = mul nuw nsw i64 %i.pm, 72
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 %.idx161
  %i.po = icmp eq i64 %i.pm, 0
  br i1 %i.po, label %bb.dx, label %bb.dw

bb.bv:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments17iter_source_order(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull align 8 %i.lw)
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  store i64 0, ptr %.sroa.246.0..sroa_idx, align 8
  %i.pp = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n), !noalias !7486 ; 2 uses
  %i.pq = extractvalue { i64, ptr } %i.pp, 0      ; 2 uses
  %.not.i214305 = icmp eq i64 %i.pq, 2
  br i1 %.not.i214305, label %._crit_edge, label %.lr.ph306

bb.bw:                                            ; preds = %bb.bo
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ol, i64 72
  %i.ps = load i32, ptr %i.ai, align 8, !alias.scope !7487, !noundef !5 ; 2 uses
  %i.pt = or i32 %i.ps, 512
  store i32 %i.pt, ptr %i.ai, align 8, !alias.scope !7487
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.ol), !inline_history !0
  store i32 %i.ps, ptr %i.ai, align 8, !alias.scope !7487
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bo, %bb.bw
  %.sroa.014.0 = phi ptr [ %i.pr, %bb.bw ], [ %i.ol, %bb.bo ] ; 2 uses
  %i.pu = icmp eq ptr %.sroa.014.0, %i.oo
  br i1 %i.pu, label %.loopexit, label %.lr.ph358

.lr.ph358:                                        ; preds = %bb.bx, %.lr.ph358
  %.sroa.014.1356 = phi ptr [ %i.pv, %.lr.ph358 ], [ %.sroa.014.0, %bb.bx ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.014.1356, i64 72 ; 2 uses
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.014.1356)
  %i.pw = icmp eq ptr %i.pv, %i.oo
  br i1 %i.pw, label %.loopexit, label %.lr.ph358

bb.by:                                            ; preds = %.lr.ph354, %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit
  %i.px = phi i64 [ %i.or, %.lr.ph354 ], [ %i.qk, %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit ]
  %i.py = phi { i64, ptr } [ %i.oq, %.lr.ph354 ], [ %i.qj, %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit ]
  %i.pz = extractvalue { i64, ptr } %i.py, 1      ; 8 uses
  %i.qa = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7488, !noalias !7484, !noundef !5 ; 2 uses
  %i.qb = add i64 %i.qa, 1
  store i64 %i.qb, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7488, !noalias !7484
  %2 = icmp ne i64 %i.qa, 0
  %3 = trunc nuw i64 %i.px to i1                  ; 2 uses
  %or.cond186 = select i1 %2, i1 true, i1 %3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pz) ]
  br i1 %or.cond186, label %bb.bz, label %bb.ca

._crit_edge355:                                   ; preds = %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit

bb.bz:                                            ; preds = %bb.by
  br i1 %3, label %bb.cd, label %bb.ce

bb.ca:                                            ; preds = %bb.by
  %i.qc = load i32, ptr %i.ai, align 8, !alias.scope !7489, !noundef !5 ; 2 uses
  %i.qd = or i32 %i.qc, 8
  store i32 %i.qd, ptr %i.ai, align 8, !alias.scope !7489
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.pz), !inline_history !7368
  store i32 %i.qc, ptr %i.ai, align 8, !alias.scope !7489
  %i.qe = load i8, ptr %i.ab, align 2, !range !14, !alias.scope !7490, !noundef !5
  %i.qf = icmp eq i8 %i.qe, 1
  br i1 %i.qf, label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val.i = load ptr, ptr %i.os, align 8, !alias.scope !7490, !nonnull !5, !align !6, !noundef !5
  %i.qg = getelementptr inbounds nuw i8, ptr %.val.i, i64 128
  %i.qh = load i64, ptr %i.qg, align 8, !alias.scope !7491, !noundef !5
  %i.qi = and i64 %i.qh, 274877906944
  %.not = icmp eq i64 %i.qi, 0
  br i1 %.not, label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules18runtime_cast_value18runtime_cast_value(ptr noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.pz), !inline_history !7492
  br label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit

_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit: ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.cg, %bb.ch, %bb.cd, %bb.ce
  %i.qj = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p), !noalias !7484 ; 2 uses
  %i.qk = extractvalue { i64, ptr } %i.qj, 0      ; 2 uses
  %.not.i = icmp eq i64 %i.qk, 2
  br i1 %.not.i, label %._crit_edge355, label %bb.by

bb.cd:                                            ; preds = %bb.bz
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pz, i64 95
  %i.qm = load i8, ptr %i.ql, align 1, !range !24, !noundef !5
  %.not176 = icmp eq i8 %i.qm, -1
  br i1 %.not176, label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit, label %bb.cf

bb.ce:                                            ; preds = %bb.bz
  %i.qn = load i32, ptr %i.ai, align 8, !alias.scope !7493, !noundef !5 ; 2 uses
  %i.qo = and i32 %i.qn, -9
  store i32 %i.qo, ptr %i.ai, align 8, !alias.scope !7493
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.pz), !inline_history !7354
  store i32 %i.qn, ptr %i.ai, align 8, !alias.scope !7493
  br label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit

bb.cf:                                            ; preds = %bb.cd
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pz, i64 80
  %i.qq = call fastcc noundef zeroext i1 @_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qp, ptr nonnull @1073, i64 3)
  br i1 %i.qq, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qr = load i32, ptr %i.ai, align 8, !alias.scope !7494, !noundef !5 ; 2 uses
  %i.qs = and i32 %i.qr, -9
  store i32 %i.qs, ptr %i.ai, align 8, !alias.scope !7494
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.pz), !inline_history !7354
  store i32 %i.qr, ptr %i.ai, align 8, !alias.scope !7494
  br label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit

bb.ch:                                            ; preds = %bb.cf
  call fastcc void @_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument(ptr noalias noundef align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.pz)
  br label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker24visit_cast_type_argument.exit

.lr.ph350:                                        ; preds = %bb.bq, %bb.ck
  %i.qt = phi i64 [ %i.rd, %bb.ck ], [ %i.ou, %bb.bq ]
  %i.qu = phi { i64, ptr } [ %i.rc, %bb.ck ], [ %i.ot, %bb.bq ]
  %i.qv = extractvalue { i64, ptr } %i.qu, 1      ; 4 uses
  %i.qw = load i64, ptr %.sroa.229.0..sroa_idx, align 8, !alias.scope !7495, !noalias !7485, !noundef !5 ; 2 uses
  %i.qx = add i64 %i.qw, 1
  store i64 %i.qx, ptr %.sroa.229.0..sroa_idx, align 8, !alias.scope !7495, !noalias !7485
  %i.qy = icmp ne i64 %i.qw, 1
  %i.qz = trunc nuw i64 %i.qt to i1               ; 2 uses
  %or.cond187 = select i1 %i.qy, i1 true, i1 %i.qz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qv) ]
  br i1 %or.cond187, label %bb.ci, label %bb.cj

._crit_edge351:                                   ; preds = %bb.ck, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.loopexit

bb.ci:                                            ; preds = %.lr.ph350
  br i1 %i.qz, label %bb.cl, label %bb.cm

bb.cj:                                            ; preds = %.lr.ph350
  %i.ra = load i32, ptr %i.ai, align 8, !alias.scope !7496, !noundef !5 ; 2 uses
  %i.rb = or i32 %i.ra, 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cj, %bb.cm, %bb.cp, %bb.co
  %.sink460 = phi i32 [ %i.rl, %bb.co ], [ %i.rm, %bb.cp ], [ %i.rh, %bb.cm ], [ %i.rb, %bb.cj ]
  %.sink = phi i32 [ %i.rk, %bb.co ], [ %i.rk, %bb.cp ], [ %i.rg, %bb.cm ], [ %i.ra, %bb.cj ]
  store i32 %.sink460, ptr %i.ai, align 8
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.qv)
  store i32 %.sink, ptr %i.ai, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split, %bb.cl
  %i.rc = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.o), !noalias !7485 ; 2 uses
  %i.rd = extractvalue { i64, ptr } %i.rc, 0      ; 2 uses
  %.not.i208 = icmp eq i64 %i.rd, 2
  br i1 %.not.i208, label %._crit_edge351, label %.lr.ph350

bb.cl:                                            ; preds = %bb.ci
  %i.re = getelementptr inbounds nuw i8, ptr %i.qv, i64 95
  %i.rf = load i8, ptr %i.re, align 1, !range !24, !noundef !5
  %.not174 = icmp eq i8 %i.rf, -1
  br i1 %.not174, label %bb.ck, label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  %i.rg = load i32, ptr %i.ai, align 8, !alias.scope !7497, !noundef !5 ; 2 uses
  %i.rh = and i32 %i.rg, -9
  br label %.sink.split

bb.cn:                                            ; preds = %bb.cl
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qv, i64 80
  %i.rj = call fastcc noundef zeroext i1 @_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ri, ptr nonnull @1074, i64 2)
  %i.rk = load i32, ptr %i.ai, align 8, !noundef !5 ; 4 uses
  br i1 %i.rj, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rl = and i32 %i.rk, -9
  br label %.sink.split

bb.cp:                                            ; preds = %bb.cn
  %i.rm = or i32 %i.rk, 8
  br label %.sink.split

bb.cq:                                            ; preds = %bb.br
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ov, i64 72
  %i.ro = load i32, ptr %i.ai, align 8, !alias.scope !7498, !noundef !5 ; 2 uses
  %i.rp = and i32 %i.ro, -9
  store i32 %i.rp, ptr %i.ai, align 8, !alias.scope !7498
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %i.ov), !inline_history !7354
  store i32 %i.ro, ptr %i.ai, align 8, !alias.scope !7498
  br label %bb.cr

bb.cr:                                            ; preds = %bb.br, %bb.cq
  %.sroa.037.0 = phi ptr [ %i.rn, %bb.cq ], [ %i.ov, %bb.br ] ; 2 uses
  %i.rq = icmp eq ptr %.sroa.037.0, %i.oy
  br i1 %i.rq, label %._crit_edge344, label %.lr.ph343.preheader

.lr.ph343.preheader:                              ; preds = %bb.cr
  %.pre404 = load i32, ptr %i.ai, align 8, !alias.scope !7499 ; 2 uses
  %i.rr = or i32 %.pre404, 8
  br label %.lr.ph343

.lr.ph343:                                        ; preds = %.lr.ph343.preheader, %.lr.ph343
  %.sroa.037.1341 = phi ptr [ %i.rs, %.lr.ph343 ], [ %.sroa.037.0, %.lr.ph343.preheader ] ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.037.1341, i64 72 ; 2 uses
  store i32 %i.rr, ptr %i.ai, align 8, !alias.scope !7499
  call void @_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 %.sroa.037.1341), !inline_history !1
  store i32 %.pre404, ptr %i.ai, align 8, !alias.scope !7499
  %i.rt = icmp eq ptr %i.rs, %i.oy
  br i1 %i.rt, label %._crit_edge344, label %.lr.ph343

._crit_edge344:                                   ; preds = %.lr.ph343, %bb.cr
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.rv = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ru) ; 3 uses
  %i.rw = load ptr, ptr %i.ru, align 8, !nonnull !5, !noundef !5
  %i.rx = load i64, ptr %i.rw, align 8, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rv) ]
  %.idx378 = mul nuw nsw i64 %i.rx, 120
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 %.idx378
  %i.rz = icmp eq i64 %i.rx, 0
  br i1 %i.rz, label %.loopexit, label %.lr.ph347

.lr.ph347:                                        ; preds = %._crit_edge344, %bb.cy
  %.sroa.043.0345 = phi ptr [ %i.sa, %bb.cy ], [ %i.rv, %._crit_edge344 ] ; 5 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.043.0345, i64 120 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.043.0345, i64 95
  %i.sc = load i8, ptr %i.sb, align 1, !range !24, !noundef !5 ; 4 uses
  %.not170 = icmp eq i8 %i.sc, -1
  br i1 %.not170, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph347
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.043.0345, i64 80 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.043.0345, i64 88
  %i.sf = load i64, ptr %i.se, align 8, !alias.scope !7500, !noundef !5
  %i.sg = and i64 %i.sf, 72057594037927935
  %i.sh = icmp ult i8 %i.sc, -48
  %i.si = zext i8 %i.sc to i64
  %i.sj = add nsw i64 %i.si, -192
  %spec.store.select.i211 = call i64 @llvm.umin.i64(i64 %i.sj, i64 16)
  %.sroa.0.0.i212 = select i1 %i.sh, i64 %spec.store.select.i211, i64 %i.sg
  %i.sk = icmp ugt i8 %i.sc, -49
  %i.sl = load ptr, ptr %i.sd, align 8, !alias.scope !7500
  %.sroa.01.0.i213 = select i1 %i.sk, ptr %i.sl, ptr %i.sd ; 4 uses
  switch i64 %.sroa.0.0.i212, label %bb.cw [
    i64 5, label %bb.cu
    i64 7, label %bb.cv
  ]

bb.ct:                                            ; preds = %.lr.ph347
  %i.sm = load i32, ptr %i.ai, align 8, !alias.scope !7501, !noundef !5 ; 2 uses
  %i.sn = and i32 %i.sm, -9
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cs
  %i.so = load i32, ptr %.sroa.01.0.i213, align 1
  %i.sp = xor i32 %i.so, 1853189986
  %i.sq = getelementptr i8, ptr %.sroa.01.0.i213, i64 4
  %i.sr = load i8, ptr %i.sq, align 1
  %i.ss = zext i8 %i.sr to i32
  %i.st = xor i32 %i.ss, 100
  %i.su = or i32 %i.sp, %i.st
end_hunk_0
