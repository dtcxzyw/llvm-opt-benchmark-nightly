Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.15?download=true
inline.NumInlined: 907
inline.NumDeleted: 496
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB5_10GotoTarget18from_covering_node:bb.a
  %i.pa = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %i.pb = load i32, ptr %i.pa, align 8, !noundef !13
  %i.pc = getelementptr inbounds nuw i8, ptr %i.lm, i64 44
  %i.pd = load i32, ptr %i.pc, align 4, !noundef !13
  %i.pe = icmp ule i32 %i.pb, %3
  %i.pf = icmp ule i32 %3, %i.pd
  %or.cond19 = and i1 %i.pe, %i.pf
  br i1 %or.cond19, label %bb.ff, label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  store i8 9, ptr %0, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lm, ptr %.sroa.4140.0..sroa_idx, align 8
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lm, ptr %.sroa.5141.0..sroa_idx, align 8
  br label %bb.as

bb.fe:                                            ; preds = %bb.fc
  store i8 -1, ptr %0, align 8
  br label %bb.bj

bb.ff:                                            ; preds = %bb.fc
  store i8 8, ptr %0, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lm, ptr %.sroa.4145.0..sroa_idx, align 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val10.le.i, ptr %.sroa.5146.0..sroa_idx, align 8
  br label %bb.as

bb.fg:                                            ; preds = %bb.cz
  %i.pg = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ph = icmp ult i64 %i.pg, 2
  br i1 %i.ph, label %bb.fh, label %bb.fq

bb.fh:                                            ; preds = %bb.fg
  %i.pi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_nodes_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.pi, label %bb.fi [
    i8 0, label %bb.fq
    i8 1, label %bb.fj
    i8 2, label %bb.fj
  ], !prof !24

bb.fi:                                            ; preds = %bb.fh
  %i.pj = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_nodes_10___CALLSITE)
          to label %bb.fk unwind label %bb.k      ; 2 uses

bb.fj:                                            ; preds = %bb.fh, %bb.fh, %bb.fk
  %.sroa.0220.0 = phi i8 [ %i.pj, %bb.fk ], [ %i.pi, %bb.fh ], [ %i.pi, %bb.fh ]
  %i.pk = load ptr, ptr @_RNvNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_nodes_10___CALLSITE, align 8, !nonnull !13, !align !17, !noundef !13
  %i.pl = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pk, i8 noundef %.sroa.0220.0)
          to label %bb.fl unwind label %bb.k

bb.fk:                                            ; preds = %bb.fi
  %i.pm = icmp eq i8 %i.pj, 0
  br i1 %i.pm, label %bb.fq, label %bb.fj

bb.fl:                                            ; preds = %bb.fj
  br i1 %i.pl, label %bb.fm, label %bb.fq

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.pn = load ptr, ptr @_RNvNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_nodes_10___CALLSITE, align 8, !nonnull !13, !align !17, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.po = invoke noundef i8 @_RNvMsal_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRef4kind(i64 noundef %i.lk, ptr noundef %i.lm)
          to label %bb.fn unwind label %bb.k

bb.fn:                                            ; preds = %bb.fm
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 48
  store i8 %i.po, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsdg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8NodeKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4333.0..sroa_idx, align 8
  store ptr @26, ptr %i.t, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.r, ptr %i.pq, align 8
  store ptr %i.t, ptr %i.u, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @22, ptr %i.pr, align 8
  store i64 1, ptr %i.v, align 8
  %.sroa.0222.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.0222.sroa.4.0..sroa_idx, align 8
  %.sroa.0222.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.0222.sroa.5.0..sroa_idx, align 8
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.pp, ptr %.sroa.4223.0..sroa_idx, align 8
  invoke fastcc void @_RNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_nodes4_0B9_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.v)
          to label %bb.fo unwind label %bb.k

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fw, %bb.fr, %bb.fq, %bb.fo
  store i8 -1, ptr %0, align 8
  br label %bb.bj

bb.fq:                                            ; preds = %bb.fk, %bb.fh, %bb.fg, %bb.fl
  %i.ps = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.pt = icmp eq i8 %i.ps, 0
  br i1 %i.pt, label %bb.fr, label %bb.fp

bb.fr:                                            ; preds = %bb.fq
  %i.pu = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.pv = icmp ult i64 %i.pu, 6
  call void @llvm.assume(i1 %i.pv)
  %i.pw = icmp samesign ugt i64 %i.pu, 3
  br i1 %i.pw, label %bb.fs, label %bb.fp

bb.fs:                                            ; preds = %bb.fr
  %i.px = load ptr, ptr @_RNvNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_nodes_10___CALLSITE, align 8, !nonnull !13, !align !17, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 32
  %i.pz = load ptr, ptr %i.py, align 8, !nonnull !13, !noundef !13
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 40
  %i.qb = load i64, ptr %i.qa, align 8, !noundef !13
  store i64 4, ptr %i.q, align 8
  %.sroa.3338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.pz, ptr %.sroa.3338.0..sroa_idx, align 8
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.qb, ptr %.sroa.5339.0..sroa_idx, align 8
  %i.qc = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.ft unwind label %bb.k      ; 2 uses

bb.ft:                                            ; preds = %bb.fs
  %i.qd = extractvalue { ptr, ptr } %i.qc, 0      ; 2 uses
  %i.qe = extractvalue { ptr, ptr } %i.qc, 1      ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %i.qg = load ptr, ptr %i.qf, align 8, !invariant.load !13, !nonnull !13
  %i.qh = invoke noundef zeroext i1 %i.qg(ptr noundef %i.qd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %bb.fu unwind label %bb.k

bb.fu:                                            ; preds = %bb.ft
  br i1 %i.qh, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.qi = load ptr, ptr @_RNvNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_nodes_10___CALLSITE, align 8, !nonnull !13, !align !17, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.qj = invoke noundef i8 @_RNvMsal_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRef4kind(i64 noundef %i.lk, ptr noundef %i.lm)
          to label %bb.fx unwind label %bb.k

bb.fw:                                            ; preds = %bb.fu, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.fp

bb.fx:                                            ; preds = %bb.fv
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 48
  store i8 %i.qj, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.4343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsdg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8NodeKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4343.0..sroa_idx, align 8
  store ptr @26, ptr %i.n, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.l, ptr %i.ql, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @22, ptr %i.qm, align 8
  store i64 1, ptr %i.p, align 8
  %.sroa.4345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %.sroa.4345.0..sroa_idx, align 8
  %.sroa.5346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 1, ptr %.sroa.5346.0..sroa_idx, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.qk, ptr %i.qn, align 8
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.px, ptr noundef nonnull %i.qd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qe, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %bb.fy unwind label %bb.k

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.fw

bb.fz:                                            ; preds = %bb.cy, %bb.bj
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ModExpressionEECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(96) %i.ac)
          to label %.thread598 unwind label %bb.gh

bb.ga:                                            ; preds = %bb.ba, %bb.bb
  %.sroa.4.1.i474 = phi ptr [ %i.hk, %bb.bb ], [ undef, %bb.ba ]
  %.sroa.0.1.i475 = phi i64 [ %i.hi, %bb.bb ], [ -1, %bb.ba ]
  %i.qo = icmp ult i64 %i.am, 94
  call void @llvm.assume(i1 %i.qo)
  br label %bb.gb

bb.gb:                                            ; preds = %.backedge, %bb.ga
  %.sroa.0558.0 = phi i64 [ %.sroa.0.1.i475, %bb.ga ], [ %.sroa.0558.1615, %.backedge ] ; 2 uses
  %.sroa.8.0563 = phi i64 [ %i.am, %bb.ga ], [ %.sroa.8.1, %.backedge ] ; 2 uses
  %switch = icmp ugt i64 %.sroa.0558.0, -3
  br i1 %switch, label %.fold.split, label %.thread611

.fold.split:                                      ; preds = %bb.gb
  br label %.thread611

.thread611:                                       ; preds = %bb.gb, %.fold.split
  %.sroa.0558.1615 = phi i64 [ -1, %bb.gb ], [ -2, %.fold.split ]
  %.sroa.8.1 = phi i64 [ %.sroa.8.0563, %bb.gb ], [ -1, %.fold.split ]
  %.pn5.i = phi i64 [ %.sroa.0558.0, %bb.gb ], [ %.sroa.8.0563, %.fold.split ]
  %.pn3.i = phi ptr [ %.sroa.4.1.i474, %bb.gb ], [ %i.an, %.fold.split ] ; 3 uses
  switch i64 %.pn5.i, label %.backedge [
    i64 -1, label %.thread617
    i64 43, label %bb.gi
  ]

.backedge:                                        ; preds = %.thread611, %bb.gi
  br label %bb.gb

.thread617:                                       ; preds = %.thread611
  %i.qp = invoke { i64, ptr } @_RNvMs6j_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRef11as_expr_ref(i64 noundef %i.am, ptr noundef %i.an)
          to label %bb.gc unwind label %bb.k      ; 2 uses

bb.gc:                                            ; preds = %.thread617
  %i.qq = extractvalue { i64, ptr } %i.qp, 0      ; 2 uses
  %.not404 = icmp eq i64 %i.qq, -1
  br i1 %.not404, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.qr = extractvalue { i64, ptr } %i.qp, 1
  store i8 0, ptr %0, align 8
  %.sroa.4359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.qq, ptr %.sroa.4359.0..sroa_idx, align 8
  %.sroa.5360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qr, ptr %.sroa.5360.0..sroa_idx, align 8
  br label %bb.cy

bb.ge:                                            ; preds = %bb.gc
  store i8 -1, ptr %0, align 8
  br label %bb.cy

.thread598:                                       ; preds = %bb.fz
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %.val422 = load ptr, ptr %i.qs, align 8, !alias.scope !45, !align !17, !noundef !13 ; 4 uses
  %i.qt = icmp eq ptr %.val422, null
  br i1 %i.qt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ModExpressionENtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model13SemanticModelEEECskEUeM34gmJU_6ty_ide.exit, label %bb.gf

bb.gf:                                            ; preds = %.thread598
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(72) %.val422) #32
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECskEUeM34gmJU_6ty_ide.exit.i.i539 unwind label %bb.gg, !noalias !1614, !inline_history !34

bb.gg:                                            ; preds = %bb.gf
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECskEUeM34gmJU_6ty_ide.exit.i.i539: ; preds = %bb.gf
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val422, i64 noundef 72, i64 noundef 8) #33, !noalias !1614, !inline_history !35
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ModExpressionENtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model13SemanticModelEEECskEUeM34gmJU_6ty_ide.exit

bb.gh:                                            ; preds = %bb.fz
  %i.qv = landingpad { ptr, i32 }
          cleanup
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %.val421 = load ptr, ptr %i.qw, align 8, !alias.scope !45, !align !17, !noundef !13
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model13SemanticModelECskEUeM34gmJU_6ty_ide(ptr %.val421) #29
          to label %common.resume unwind label %bb.ck

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ModExpressionENtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model13SemanticModelEEECskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.bj, %bb.cy, %bb.cs, %.thread598, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECskEUeM34gmJU_6ty_ide.exit.i.i539, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECskEUeM34gmJU_6ty_ide.exit.i.i.i.i, %bb.av, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

bb.gi:                                            ; preds = %.thread611
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn3.i) ]
  %i.qx = load ptr, ptr %.pn3.i, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 8, !range !32, !noundef !13
  %i.qz = icmp eq i32 %i.qy, 28
  br i1 %i.qz, label %bb.gj, label %.backedge

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens9at_offset(ptr noalias noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i32 noundef %3)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.gj
  %i.ra = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.rb = load i8, ptr %i.ra, align 2, !range !48, !noalias !1615, !noundef !13 ; 3 uses
  %i.rc = add nsw i8 %i.rb, -107
  %i.rd = icmp samesign ugt i8 %i.rb, 106
  %narrow.i = select i1 %i.rd, i8 %i.rc, i8 2     ; 2 uses
  switch i8 %narrow.i, label %bb.gk [
    i8 0, label %bb.gp
    i8 1, label %bb.gl
    i8 2, label %bb.gm
  ]

bb.gk:                                            ; preds = %.noexc
  unreachable

bb.gl:                                            ; preds = %.noexc
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1615 ; 2 uses
  %i.re = and i8 %.sroa.5.0.copyload.i, -2
  %switch.i = icmp eq i8 %i.re, 20
  br i1 %switch.i, label %bb.gn, label %bb.gp

bb.gm:                                            ; preds = %.noexc
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.56.0.copyload.i = load i8, ptr %.sroa.56.0..sroa_idx.i, align 2, !noalias !1615 ; 2 uses
  switch i8 %i.rb, label %bb.gp [
    i8 20, label %bb.gn
    i8 21, label %bb.go
  ]

bb.gn:                                            ; preds = %bb.gl, %bb.go, %bb.gm
  %.sroa.56.0.copyload.sink.i = phi i8 [ %.sroa.56.0.copyload.i, %bb.gm ], [ 20, %bb.go ], [ %.sroa.5.0.copyload.i, %bb.gl ]
  %i.rf = icmp ne i8 %.sroa.56.0.copyload.sink.i, -1
  %i.rg = zext i1 %i.rf to i8
  br label %bb.gp

bb.go:                                            ; preds = %bb.gm
  %i.rh = icmp eq i8 %.sroa.56.0.copyload.i, 20
  br i1 %i.rh, label %bb.gn, label %bb.gp

bb.gp:                                            ; preds = %bb.gn, %bb.go, %bb.gm, %bb.gl, %.noexc
  %.sroa.3561.0 = phi i8 [ %i.rg, %bb.gn ], [ 0, %bb.go ], [ 0, %bb.gm ], [ 0, %bb.gl ], [ %narrow.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store i8 21, ptr %0, align 8
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.3561.0, ptr %.sroa.4284.0..sroa_idx, align 1
  %.sroa.5286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn3.i, ptr %.sroa.5286.0..sroa_idx, align 8
  %.sroa.6287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 28, ptr %.sroa.6287.0..sroa_idx, align 8
  %.sroa.7288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ri, ptr %.sroa.7288.0..sroa_idx, align 8
  br label %bb.as

bb.gq:                                            ; preds = %bb.j
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ModExpressionEECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(96) %i.ac) #29
          to label %bb.gr unwind label %bb.ck

bb.gr:                                            ; preds = %bb.gq
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %.val = load ptr, ptr %i.rj, align 8, !alias.scope !45, !align !17, !noundef !13
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model13SemanticModelECskEUeM34gmJU_6ty_ide(ptr %.val) #29
          to label %common.resume unwind label %bb.ck
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB5_10GotoTarget22expression_definitions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i8, ptr %1, align 8, !range !30, !noundef !13
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.d
    i8 21, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sink = phi i64 [ 16, %bb.c ], [ 8, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !43, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !13 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %i.e, label %_RNvNtCskEUeM34gmJU_6ty_ide4goto26definitions_for_expression.exit.thread [
    i64 25, label %bb.e
    i64 28, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support25definitions_for_attribute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %i.g)
  br label %_RNvNtCskEUeM34gmJU_6ty_ide4goto26definitions_for_expression.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !range !23, !alias.scope !1621, !noalias !1622, !noundef !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1621, !noalias !1622, !noundef !13
  %i.l = and i64 %i.k, 72057594037927935
  %i.m = icmp ult i8 %i.i, -48
  %i.n = zext i8 %i.i to i64
  %i.o = add nsw i64 %i.n, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 16)
  %.sroa.0.0.i.i = select i1 %i.m, i64 %spec.store.select.i.i, i64 %i.l
  %i.p = icmp ugt i8 %i.i, -49
  %i.q = load ptr, ptr %i.g, align 8, !alias.scope !1621, !noalias !1622
  %.sroa.01.0.i.i = select i1 %i.p, ptr %i.q, ptr %i.g
  %i.r = tail call { i64, ptr } @_RNvXs6i_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromNtB6_7ExprRefE4from(i64 noundef 28, ptr noundef nonnull %i.g), !noalias !1622 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i, i64 noundef %.sroa.0.0.i.i, i64 noundef %i.s, ptr noundef %i.t, i1 noundef zeroext %3)
  br label %_RNvNtCskEUeM34gmJU_6ty_ide4goto26definitions_for_expression.exit

_RNvNtCskEUeM34gmJU_6ty_ide4goto26definitions_for_expression.exit: ; preds = %bb.e, %bb.f
  %.pr = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %_RNvNtCskEUeM34gmJU_6ty_ide4goto26definitions_for_expression.exit.thread, label %bb.g

end_hunk_0
