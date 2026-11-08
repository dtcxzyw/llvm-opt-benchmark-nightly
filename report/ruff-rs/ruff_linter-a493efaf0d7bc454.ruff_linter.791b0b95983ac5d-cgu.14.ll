Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.14?download=true
inline.NumInlined: 4475
inline.NumDeleted: 1583
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules31request_with_no_cert_validation31request_with_no_cert_validation:bb.a
  %i.gj = load ptr, ptr %.sroa.01.0.i.sroa.sel20, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 1
  %i.gl = xor i32 %i.gk, 1701602660
  %i.gm = getelementptr i8, ptr %i.gj, i64 4
  %i.gn = load i16, ptr %i.gm, align 1
  %i.go = zext i16 %i.gn to i32
  %i.gp = xor i32 %i.go, 25972
  %i.gq = or i32 %i.gl, %i.gp
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = zext i1 %i.gr to i32
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.w, label %.thread.i

.thread146.i:                                     ; preds = %bb.x
  %i.gu = load i32, ptr %i.ev, align 1
  %i.gv = xor i32 %i.gu, 1970365810
  %i.gw = getelementptr i8, ptr %i.ev, i64 3
  %i.gx = load i32, ptr %i.gw, align 1
  %i.gy = xor i32 %i.gx, 1953719669
  %i.gz = or i32 %i.gv, %i.gy
  %i.ha = icmp ne i32 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.w, label %.thread.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules31request_with_no_cert_validation31request_with_no_cert_validation0Bb_.exit: ; preds = %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not9, label %bb.ak, label %bb.ae

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ak

bb.ae:                                            ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules31request_with_no_cert_validation31request_with_no_cert_validation0Bb_.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.he = call noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8 %i.hd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @517, i64 noundef 6) ; 5 uses
  %.not10 = icmp eq ptr %i.he, null
  br i1 %.not10, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hf = load i32, ptr %i.he, align 8, !range !17, !noundef !11
  %i.hg = icmp eq i32 %i.hf, 22
  br i1 %i.hg, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hi = load i8, ptr %i.hh, align 8, !range !13, !noundef !11
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.hk = load i64, ptr %i.a, align 8, !range !14, !noundef !11
  %i.hl = trunc nuw i64 %i.hk to i1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !range !23, !noundef !11 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.hl, label %bb.ai, label %bb.aj, !prof !12

bb.ai:                                            ; preds = %bb.ah
  %i.hp = load i64, ptr %i.ho, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.hn, i64 %i.hp) #41
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.hq = load ptr, ptr %i.ho, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.hr = icmp ule i64 %.sroa.4.0.i, %i.hn
  call void @llvm.assume(i1 %i.hr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hq, ptr nonnull align 1 %.sroa.0.0.i, i64 %.sroa.4.0.i, i1 false)
  store i64 %i.hn, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.hq, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.4.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.he, i64 104
  %i.ht = load i32, ptr %i.hs, align 8, !noundef !11
  %i.hu = getelementptr inbounds nuw i8, ptr %i.he, i64 108
  %i.hv = load i32, ptr %i.hu, align 4, !noundef !11
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.hx = load ptr, ptr %i.hw, align 8, !nonnull !11, !align !15, !noundef !11
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_bandit5rules31request_with_no_cert_validation27RequestWithNoCertValidationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %i.hx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i32 noundef %i.ht, i32 noundef %i.hv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ae, %bb.af, %bb.aj, %bb.ag, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules31request_with_no_cert_validation31request_with_no_cert_validation0Bb_.exit, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str24model_without_dunder_str(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !7674 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.d = load i32, ptr %i.c, align 4, !noundef !11
  %i.e = and i32 %i.d, 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noalias !7675, !align !15, !noundef !11 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !7675, !noundef !11
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = tail call { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !noalias !7675 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  %.not25.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not25.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit, label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %bb.d, %.backedge.i.i
  %.sroa.01.023.i.i = phi ptr [ %i.p, %.backedge.i.i ], [ %i.n, %bb.d ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.023.i.i, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.023.i.i, i64 84
  %i.r = load i8, ptr %i.q, align 4, !range !31, !noalias !7675, !noundef !11
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.e, label %.backedge.i.i

bb.e:                                             ; preds = %.lr.ph24.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.023.i.i, i64 63
  %i.u = load i8, ptr %i.t, align 1, !range !41, !alias.scope !7676, !noalias !7675, !noundef !11 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.023.i.i, i64 56
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !7676, !noalias !7675, !noundef !11
  %i.x = and i64 %i.w, 72057594037927935
  %i.y = icmp ult i8 %i.u, -48
  %i.z = zext i8 %i.u to i64
  %i.aa = add nsw i64 %i.z, -192
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 16)
  %.sroa.0.0.i.i.i.i = select i1 %i.y, i64 %spec.store.select.i.i.i.i, i64 %i.x
  %i.ab = icmp eq i64 %.sroa.0.0.i.i.i.i, 4
  br i1 %i.ab, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i.i, label %.backedge.i.i

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.023.i.i, i64 48 ; 2 uses
  %i.ad = icmp ugt i8 %i.u, -49
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !7676, !noalias !7675
  %.sroa.01.0.i.i.i.i = select i1 %i.ad, ptr %i.ae, ptr %i.ac
  %i.af = load i32, ptr %.sroa.01.0.i.i.i.i, align 1
  %i.ag = icmp ne i32 %i.af, 1635018061
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i, %bb.f, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i.i, %bb.e, %.lr.ph24.i.i
  %.not26.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not26.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit, label %.lr.ph24.i.i

bb.f:                                             ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01.023.i.i, i64 32
  %i.ak = tail call { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj), !noalias !7675 ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 3 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al), "nonnull"(ptr %i.am) ]
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %.backedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i
  %.sroa.03.022.i.i = phi ptr [ %i.ao, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i ], [ %i.al, %bb.f ] ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.022.i.i, i64 88 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.022.i.i, i64 84
  %i.aq = load i8, ptr %i.ap, align 4, !range !31, !noalias !7675, !noundef !11 ; 2 uses
  %i.ar = icmp samesign ugt i8 %i.aq, 1
  %i.as = zext nneg i8 %i.aq to i64
  %i.at = add nsw i64 %i.as, -1
  %i.au = select i1 %i.ar, i64 %i.at, i64 0
  switch i64 %i.au, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i [
    i64 5, label %bb.g
    i64 7, label %bb.l
  ]

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i: ; preds = %.backedge.i.i.i, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.i.i, %bb.o, %bb.n, %bb.m, %bb.l, %bb.g, %.lr.ph.i.i
  %i.av = icmp eq ptr %i.ao, %i.am
  br i1 %i.av, label %.backedge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.022.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !7675, !nonnull !11, !noundef !11 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.022.i.i, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noalias !7675, !noundef !11 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.az, 72
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.03.022.i.i, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !7675, !nonnull !11, !noundef !11 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.not.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.backedge.i.i.i
  %i.bd = phi ptr [ %i.be, %.backedge.i.i.i ], [ %i.ax, %bb.g ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72 ; 2 uses
  %i.bf = load i32, ptr %i.bd, align 8, !range !17, !noalias !7677, !noundef !11
  %i.bg = icmp eq i32 %i.bf, 28
  br i1 %i.bg, label %bb.i, label %.backedge.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 23
  %i.bi = load i8, ptr %i.bh, align 1, !range !41, !alias.scope !7678, !noalias !7677, !noundef !11 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !7678, !noalias !7677, !noundef !11
  %i.bl = and i64 %i.bk, 72057594037927935
  %i.bm = icmp ult i8 %i.bi, -48
  %i.bn = zext i8 %i.bi to i64
  %i.bo = add nsw i64 %i.bn, -192
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 16)
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.bm, i64 %spec.store.select.i.i.i.i.i.i, i64 %i.bl
  %i.bp = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, 8
  br i1 %i.bp, label %bb.j, label %.backedge.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp ugt i8 %i.bi, -49
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !7678, !noalias !7677
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.bq, ptr %i.bs, ptr %i.br
  %i.bt = load i64, ptr %.sroa.01.0.i.i.i.i.i.i, align 1
  %i.bu = icmp ne i64 %i.bt, 8386654075301880417
  %i.bv = zext i1 %i.bu to i32
  %.not.i.not.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.not.i.i.i.i, label %bb.k, label %.backedge.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bw = load i32, ptr %i.bc, align 8, !range !17, !noalias !7677, !noundef !11
  %i.bx = icmp eq i32 %i.bw, 22
  br i1 %i.bx, label %.split.i.i.i, label %.backedge.i.i.i

.split.i.i.i:                                     ; preds = %bb.k
  %i.by = load i8, ptr %2, align 8, !range !13, !noalias !7677, !noundef !11
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit.thread, label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.split.i.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  %.not6.i.i.i = icmp eq ptr %i.be, %i.ba
  br i1 %.not6.i.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i, label %bb.h

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ca = load ptr, ptr %.sroa.03.022.i.i, align 8, !noalias !7675, !nonnull !11, !noundef !11 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.022.i.i, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !7675, !align !15, !noundef !11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  %i.cd = load i32, ptr %i.ca, align 8, !range !17, !noalias !7675, !noundef !11
  %i.ce = icmp eq i32 %i.cd, 28
  br i1 %i.ce, label %bb.m, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 23
  %i.cg = load i8, ptr %i.cf, align 1, !range !41, !alias.scope !7679, !noalias !7675, !noundef !11 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !7679, !noalias !7675, !noundef !11
  %i.cj = and i64 %i.ci, 72057594037927935
  %i.ck = icmp ult i8 %i.cg, -48
  %i.cl = zext i8 %i.cg to i64
  %i.cm = add nsw i64 %i.cl, -192
  %spec.store.select.i.i9.i.i = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 16)
  %.sroa.0.0.i.i10.i.i = select i1 %i.ck, i64 %spec.store.select.i.i9.i.i, i64 %i.cj
  %i.cn = icmp eq i64 %.sroa.0.0.i.i10.i.i, 8
  br i1 %i.cn, label %bb.n, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.co = icmp ugt i8 %i.cg, -49
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !7679, !noalias !7675
  %.sroa.01.0.i.i11.i.i = select i1 %i.co, ptr %i.cq, ptr %i.cp
  %i.cr = load i64, ptr %.sroa.01.0.i.i11.i.i, align 1
  %i.cs = icmp ne i64 %i.cr, 8386654075301880417  ; 2 uses
  %i.ct = zext i1 %i.cs to i32                    ; 0 uses
  %or.cond.i.i.i = or i1 %.not.i.i, %i.cs
  br i1 %or.cond.i.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = load i32, ptr %i.cc, align 8, !range !17, !noalias !7675, !noundef !11
  %i.cv = icmp eq i32 %i.cu, 22
  br i1 %i.cv, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.i.i: ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !range !13, !noalias !7675, !noundef !11
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit.thread, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.thread.i.i

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit: ; preds = %.backedge.i.i, %bb.d
  %i.cz = tail call noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django7helpers8is_model(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.b)
  br i1 %i.cz, label %bb.p, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit.thread

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit.thread: ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str27is_abstract_true_assignment.exit.i.i, %.split.i.i.i, %bb.c, %bb.b, %bb.p, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit, %bb.a, %bb.q
  ret void

bb.p:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit
  %i.da = tail call noundef zeroext i1 @_RINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze5class15any_super_classNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str17has_dunder_method0EB1n_(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.b)
  br i1 %i.da, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dc = load i32, ptr %i.db, align 8, !noundef !11
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !noundef !11
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !11, !align !15, !noundef !11
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_django5rules24model_without_dunder_str27DjangoModelWithoutDunderStrEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %i.dg, i32 noundef %i.dc, i32 noundef %i.de)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules24model_without_dunder_str21is_non_abstract_model.exit.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules26mutable_contextvar_default26mutable_contextvar_default(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !7682 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.g = load i32, ptr %i.f, align 4, !noundef !11
  %i.h = and i32 %i.g, 524288
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = tail call noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8 %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @518, i64 noundef 7) ; 7 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameEECsEhZmuQNqkz_11ruff_linter.exit
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !align !15, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !11, !align !15, !noundef !11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 416
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  %i.s = load i64, ptr %i.r, align 8, !noundef !11
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.s
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules26mutable_contextvar_default26mutable_contextvar_defaults_0EE9from_iterB4d_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.q, ptr noundef nonnull %i.t)
  %i.u = invoke noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing15is_mutable_expr(ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.e)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.y, %bb.ad, %switch.lookup, %bb.q, %bb.j, %bb.h, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aa, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.bz, %bb.aa ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d) #42
          to label %common.resume unwind label %bb.af

bb.f:                                             ; preds = %bb.d
  br i1 %i.u, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.k, align 8, !range !17, !noundef !11
  %i.x = icmp eq i32 %i.w, 16
  br i1 %i.x, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !11, !noundef !11
  %i.aa = invoke noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing15is_mutable_func(ptr noundef nonnull align 8 %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.e)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  br i1 %i.aa, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.y, align 8, !nonnull !11, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !11, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !11
  %i.ag = invoke noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing17is_immutable_func(ptr noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ad, i64 noundef %i.af)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !range !17, !noundef !11
  %i.aj = icmp eq i32 %i.ai, 26
  br i1 %i.aj, label %bb.p, label %bb.q

bb.m:                                             ; preds = %bb.i, %bb.k, %bb.g, %bb.ae, %bb.ac
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
end_hunk_0
