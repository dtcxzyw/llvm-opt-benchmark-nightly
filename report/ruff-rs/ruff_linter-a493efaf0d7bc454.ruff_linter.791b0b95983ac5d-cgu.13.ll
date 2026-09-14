Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.13?download=true
inline.NumInlined: 4418
inline.NumDeleted: 1702
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit8implicit:bb.a
  br label %.backedge

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bq = load i32, ptr %i.at, align 4, !noundef !4
  call void @_RNvMNtCsf5BUmUrrPiN_17ruff_python_index26interpolated_string_rangesNtB2_24InterpolatedStringRanges9innermost(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, i32 noundef %i.bq)
  %i.br = load i32, ptr %i.p, align 4, !range !18, !noundef !4
  %i.bs = trunc nuw i32 %i.br to i1
  br i1 %i.bs, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.bt = load i32, ptr %i.at, align 4, !noundef !4
  call void @_RNvMNtCsf5BUmUrrPiN_17ruff_python_index26interpolated_string_rangesNtB2_24InterpolatedStringRanges9innermost(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, i32 noundef %i.bt)
  %i.bu = load i32, ptr %i.au, align 4, !noundef !4
  call void @_RNvMNtCsf5BUmUrrPiN_17ruff_python_index26interpolated_string_rangesNtB2_24InterpolatedStringRanges9innermost(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, i32 noundef %i.bu)
  %i.bv = load i32, ptr %i.o, align 4, !range !18, !noundef !4
  %i.bw = trunc nuw i32 %i.bv to i1
  %i.bx = load i32, ptr %i.n, align 4, !range !18
  %i.by = trunc nuw i32 %i.bx to i1
  %or.cond = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %or.cond, label %bb.o, label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.bz = load i32, ptr %i.ae, align 4, !noundef !4
  %i.ca = load i32, ptr %i.af, align 4, !noundef !4
  %i.cb = load i32, ptr %i.au, align 4, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.h

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.backedge

bb.o:                                             ; preds = %bb.l
  %i.ce = load i32, ptr %i.aa, align 4, !noundef !4
  %i.cf = load i32, ptr %i.ab, align 4, !noundef !4
  %i.cg = load i32, ptr %i.ac, align 4, !noundef !4
  %i.ch = load i32, ptr %i.ad, align 4, !noundef !4
  br label %bb.h

bb.p:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #37
  unreachable

bb.q:                                             ; preds = %bb.h
  %i.ci = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.cj = load i64, ptr %i.ai, align 8, !noundef !4
  %i.ck = call noundef zeroext i1 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges19contains_line_break(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef %i.cj, i32 noundef %.sroa.79.0, i32 noundef %.sroa.011.0)
  %.not22 = icmp ugt i32 %.sroa.06.0, %.sroa.6.0  ; 2 uses
  br i1 %i.ck, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br i1 %.not22, label %bb.t, label %bb.u, !prof !13

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br i1 %.not22, label %bb.bu, label %bb.bv, !prof !13

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #37
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtBa_5rules26flake8_implicit_str_concat5rules8implicit37SingleLineImplicitStringConcatenationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull align 8 %0, i32 noundef %.sroa.06.0, i32 noundef %.sroa.6.0)
  %i.cl = load i16, ptr %i.aj, align 8, !range !44, !noundef !4
  %.not20 = icmp eq i16 %i.cl, -1
  br i1 %.not20, label %bb.bp, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.cm = invoke { i16, i16 } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast5tokenNtB2_5Token12string_flags(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.at)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.v
  %i.cn = extractvalue { i16, i16 } %i.cm, 0
  %i.co = trunc i16 %i.cn to i1
  %i.cp = extractvalue { i16, i16 } %i.cm, 1
  %i.cq = and i16 %i.cp, 256
  %i.cr = icmp eq i16 %i.cq, 0
  %or.cond60 = select i1 %i.co, i1 %i.cr, i1 false
  br i1 %or.cond60, label %bb.w, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit.thread

bb.w:                                             ; preds = %.noexc
  %i.cs = invoke { i16, i16 } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast5tokenNtB2_5Token12string_flags(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.au)
          to label %.noexc23 unwind label %.loopexit ; 2 uses

.noexc23:                                         ; preds = %bb.w
  %i.ct = extractvalue { i16, i16 } %i.cs, 0
  %i.cu = trunc i16 %i.ct to i1
  %i.cv = extractvalue { i16, i16 } %i.cs, 1
  %i.cw = and i16 %i.cv, 256
  %i.cx = icmp eq i16 %i.cw, 0
  %or.cond63 = select i1 %i.cu, i1 %i.cx, i1 false
  br i1 %or.cond63, label %bb.x, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit.thread

bb.x:                                             ; preds = %.noexc23
  %i.cy = invoke { i16, i16 } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast5tokenNtB2_5Token12string_flags(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.at)
          to label %.noexc24 unwind label %.loopexit ; 2 uses

.noexc24:                                         ; preds = %bb.x
  %i.cz = extractvalue { i16, i16 } %i.cy, 0
  %i.da = extractvalue { i16, i16 } %i.cy, 1      ; 17 uses
  %i.db = trunc i16 %i.cz to i1
  br i1 %i.db, label %bb.y, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit.thread

bb.y:                                             ; preds = %.noexc24
  %i.dc = invoke { i16, i16 } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast5tokenNtB2_5Token12string_flags(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.au)
          to label %.noexc25 unwind label %.loopexit ; 2 uses

.noexc25:                                         ; preds = %bb.y
  %i.dd = extractvalue { i16, i16 } %i.dc, 0
  %i.de = extractvalue { i16, i16 } %i.dc, 1      ; 27 uses
  %i.df = trunc i16 %i.dd to i1
  br i1 %i.df, label %bb.z, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit.thread

bb.z:                                             ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6984
  %i.dg = and i16 %i.da, 16
  %.not.i33 = icmp eq i16 %i.dg, 0
  br i1 %.not.i33, label %bb.aa, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt1

_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt1: ; preds = %bb.z
  %i.dh = and i16 %i.da, 64
  %.not10.i34 = icmp eq i16 %i.dh, 0
  %i.di = and i16 %i.da, 128
  %.not11.i37 = icmp eq i16 %i.di, 0
  %..i38 = select i1 %.not11.i37, i8 2, i8 1
  %.sroa.14.0.i35.jt1 = select i1 %.not10.i34, i8 %..i38, i8 0 ; 3 uses
  store i8 1, ptr %i.i, align 1, !noalias !6984
  store i8 %.sroa.14.0.i35.jt1, ptr %i.ak, align 1, !noalias !6984
  %i.dj = and i16 %i.de, 16
  %.not.i.jt1.not = icmp eq i16 %i.dj, 0          ; 2 uses
  br i1 %.not.i.jt1.not, label %bb.ag, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.dk = and i16 %i.da, 32
  %.not1.i39 = icmp eq i16 %i.dk, 0
  br i1 %.not1.i39, label %bb.ab, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt2

_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt2: ; preds = %bb.aa
  %i.dl = and i16 %i.da, 64
  %.not8.i40 = icmp eq i16 %i.dl, 0
  %i.dm = and i16 %i.da, 128
  %.not9.i41 = icmp eq i16 %i.dm, 0
  %.12.i42 = select i1 %.not9.i41, i8 2, i8 1
  %.sroa.14.0.i35.jt2 = select i1 %.not8.i40, i8 %.12.i42, i8 0 ; 3 uses
  store i8 2, ptr %i.i, align 1, !noalias !6984
  store i8 %.sroa.14.0.i35.jt2, ptr %i.ak, align 1, !noalias !6984
  %i.dn = and i16 %i.de, 16
  %.not.i.jt2 = icmp ne i16 %i.dn, 0
  %i.do = and i16 %i.de, 32
  %.not1.i.jt2 = icmp eq i16 %i.do, 0
  %or.cond296 = or i1 %.not.i.jt2, %.not1.i.jt2
  br i1 %or.cond296, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt2

bb.ab:                                            ; preds = %bb.aa
  %i.dp = and i16 %i.da, 8
  %.not2.i43 = icmp eq i16 %i.dp, 0
  %i.dq = and i16 %i.da, 64
  %.not3.i44 = icmp eq i16 %i.dq, 0               ; 2 uses
  br i1 %.not2.i43, label %bb.ac, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt0

_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt0: ; preds = %bb.ab
  %i.dr = and i16 %i.da, 128
  %.not7.i45 = icmp eq i16 %i.dr, 0
  %.13.i46 = select i1 %.not7.i45, i8 2, i8 1
  %.sroa.14.0.i35.jt0 = select i1 %.not3.i44, i8 %.13.i46, i8 0 ; 3 uses
  store i8 0, ptr %i.i, align 1, !noalias !6984
  store i8 %.sroa.14.0.i35.jt0, ptr %i.ak, align 1, !noalias !6984
  %i.ds = and i16 %i.de, 16
  %.not.i.jt0 = icmp eq i16 %i.ds, 0
  %i.dt = and i16 %i.de, 32
  %.not1.i.jt0 = icmp eq i16 %i.dt, 0
  %or.cond293 = and i1 %.not.i.jt0, %.not1.i.jt0
  %or.cond293.not = xor i1 %or.cond293, true
  %i.du = and i16 %i.de, 8
  %.not2.i.jt0 = icmp eq i16 %i.du, 0
  %or.cond295 = select i1 %or.cond293.not, i1 true, i1 %.not2.i.jt0
  br i1 %or.cond295, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt0

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not3.i44, label %bb.ad, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt3

bb.ad:                                            ; preds = %bb.ac
  %i.dv = and i16 %i.da, 128
  %.not4.i47 = icmp eq i16 %i.dv, 0
  br i1 %.not4.i47, label %bb.ae, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt3

bb.ae:                                            ; preds = %bb.ad
  %i.dw = and i16 %i.da, 4
  %.not5.i48 = icmp eq i16 %i.dw, 0
  %.14.i49 = select i1 %.not5.i48, i8 2, i8 3
  br label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt3

_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt3: ; preds = %bb.ac, %bb.ae, %bb.ad
  %.sroa.14.0.i35.jt3 = phi i8 [ 1, %bb.ad ], [ %.14.i49, %bb.ae ], [ 0, %bb.ac ] ; 4 uses
  store i8 3, ptr %i.i, align 1, !noalias !6984
  store i8 %.sroa.14.0.i35.jt3, ptr %i.ak, align 1, !noalias !6984
  %i.dx = and i16 %i.de, 16
  %.not.i.jt3 = icmp eq i16 %i.dx, 0
  %i.dy = and i16 %i.de, 32
  %.not1.i.jt3 = icmp eq i16 %i.dy, 0
  %or.cond294 = and i1 %.not.i.jt3, %.not1.i.jt3
  br i1 %or.cond294, label %bb.ak, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.af:                                            ; preds = %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt1
  %i.dz = and i16 %i.de, 64
  %.not10.i.jt1 = icmp eq i16 %i.dz, 0
  br i1 %.not10.i.jt1, label %bb.ah, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1

bb.ag:                                            ; preds = %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt1
  %i.ea = and i16 %i.de, 32
  %.not1.i.jt1 = icmp eq i16 %i.ea, 0
  br i1 %.not1.i.jt1, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eb = and i16 %i.de, 128
  %.not11.i.jt1 = icmp eq i16 %i.eb, 0
  %..i.jt1 = select i1 %.not11.i.jt1, i8 2, i8 1
  br label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1

_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt2: ; preds = %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt2
  %i.ec = and i16 %i.de, 64
  %.not8.i.jt2 = icmp eq i16 %i.ec, 0
  %i.ed = and i16 %i.de, 128
  %.not9.i.jt2 = icmp eq i16 %i.ed, 0
  %.12.i.jt2 = select i1 %.not9.i.jt2, i8 2, i8 1
  %.sroa.14.0.i.jt2 = select i1 %.not8.i.jt2, i8 %.12.i.jt2, i8 0 ; 2 uses
  %i.ee = icmp ne i8 %.sroa.14.0.i35.jt2, 2       ; 2 uses
  %i.ef = icmp ne i8 %.sroa.14.0.i.jt2, 2         ; 2 uses
  %i.eg = xor i1 %i.ee, %i.ef
  br i1 %i.eg, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %.split.a

bb.ai:                                            ; preds = %bb.ag
  %i.eh = and i16 %i.de, 64
  %.not8.i.jt1 = icmp eq i16 %i.eh, 0
  br i1 %.not8.i.jt1, label %bb.al, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1

bb.aj:                                            ; preds = %bb.ag
  %i.ei = and i16 %i.de, 8
  %.not2.i.jt1 = icmp eq i16 %i.ei, 0
  %i.ej = and i16 %i.de, 64
  %.not3.i.jt1 = icmp eq i16 %i.ej, 0             ; 2 uses
  br i1 %.not2.i.jt1, label %bb.an, label %bb.am

bb.ak:                                            ; preds = %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt3
  %i.ek = and i16 %i.de, 8
  %.not2.i.jt3 = icmp eq i16 %i.ek, 0
  %i.el = and i16 %i.de, 64
  %.not3.i.jt3 = icmp eq i16 %i.el, 0
  br i1 %.not2.i.jt3, label %bb.ao, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.al:                                            ; preds = %bb.ai
  %i.em = and i16 %i.de, 128
  %.not9.i.jt1 = icmp eq i16 %i.em, 0
  %.12.i.jt1 = select i1 %.not9.i.jt1, i8 2, i8 1
  br label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1

_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt0: ; preds = %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt0
  %i.en = and i16 %i.de, 128
  %.not4.i.jt0 = icmp eq i16 %i.en, 0
  %i.eo = and i16 %i.de, 64
  %.not3.i.jt0 = icmp eq i16 %i.eo, 0
  %.13.i.jt0 = select i1 %.not4.i.jt0, i8 2, i8 1
  %.sroa.14.0.i.jt0 = select i1 %.not3.i.jt0, i8 %.13.i.jt0, i8 0 ; 2 uses
  %i.ep = icmp ne i8 %.sroa.14.0.i35.jt0, 2       ; 2 uses
  %i.eq = icmp ne i8 %.sroa.14.0.i.jt0, 2         ; 2 uses
  %i.er = xor i1 %i.ep, %i.eq
  br i1 %i.er, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %.split55

bb.am:                                            ; preds = %bb.aj
  br i1 %.not3.i.jt1, label %bb.ap, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1

bb.an:                                            ; preds = %bb.aj
  br i1 %.not3.i.jt1, label %bb.aq, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1

bb.ao:                                            ; preds = %bb.ak
  br i1 %.not3.i.jt3, label %bb.ar, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt3

bb.ap:                                            ; preds = %bb.am
  %i.es = and i16 %i.de, 128
  %.not7.i.jt1 = icmp eq i16 %i.es, 0
  %.13.i.jt1 = select i1 %.not7.i.jt1, i8 2, i8 1
  br label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1

bb.aq:                                            ; preds = %bb.an
  %i.et = and i16 %i.de, 128
  %.not4.i.jt1 = icmp eq i16 %i.et, 0
  br i1 %.not4.i.jt1, label %bb.as, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1

bb.ar:                                            ; preds = %bb.ao
  %i.eu = and i16 %i.de, 128
  %.not4.i.jt3 = icmp eq i16 %i.eu, 0
  br i1 %.not4.i.jt3, label %bb.at, label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt3

bb.as:                                            ; preds = %bb.aq
  %i.ev = and i16 %i.de, 4
  %.not5.i.jt1 = icmp eq i16 %i.ev, 0
  %.14.i.jt1 = select i1 %.not5.i.jt1, i8 2, i8 3
  br label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1

bb.at:                                            ; preds = %bb.ar
  %i.ew = and i16 %i.de, 4
  %.not5.i.jt3 = icmp eq i16 %i.ew, 0
  %.14.i.jt3 = select i1 %.not5.i.jt3, i8 2, i8 3
  br label %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt3

_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1: ; preds = %bb.af, %bb.ah, %bb.ai, %bb.al, %bb.am, %bb.ap, %bb.an, %bb.aq, %bb.as
  %.sroa.14.0.i.jt1 = phi i8 [ 0, %bb.an ], [ 1, %bb.aq ], [ %.14.i.jt1, %bb.as ], [ 0, %bb.am ], [ %.13.i.jt1, %bb.ap ], [ 0, %bb.ai ], [ %.12.i.jt1, %bb.al ], [ 0, %bb.af ], [ %..i.jt1, %bb.ah ] ; 2 uses
  br i1 %.not.i.jt1.not, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.au

bb.au:                                            ; preds = %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1
  %i.ex = icmp ne i8 %.sroa.14.0.i35.jt1, 2       ; 2 uses
  %i.ey = icmp ne i8 %.sroa.14.0.i.jt1, 2         ; 2 uses
  %i.ez = xor i1 %i.ex, %i.ey
  br i1 %i.ez, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt3: ; preds = %bb.at, %bb.ar, %bb.ao
  %.sroa.14.0.i.jt3 = phi i8 [ 0, %bb.ao ], [ 1, %bb.ar ], [ %.14.i.jt3, %bb.at ] ; 3 uses
  %4 = add nsw i8 %.sroa.14.0.i35.jt3, -2
  %.inv.i = icmp samesign ult i8 %.sroa.14.0.i35.jt3, 2
  %narrow.i = select i1 %.inv.i, i8 2, i8 %4      ; 2 uses
  %5 = add nsw i8 %.sroa.14.0.i.jt3, -2
  %.inv12.i = icmp samesign ult i8 %.sroa.14.0.i.jt3, 2
  %narrow11.i = select i1 %.inv12.i, i8 2, i8 %5
  %6 = icmp eq i8 %narrow.i, %narrow11.i
  br i1 %6, label %.split54, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

.split55:                                         ; preds = %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt0
  %i.fa = icmp ne i8 %.sroa.14.0.i35.jt0, %.sroa.14.0.i.jt0
  %i.fb = and i1 %i.eq, %i.fa
  %spec.select.i.not = and i1 %i.ep, %i.fb
  br i1 %spec.select.i.not, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.av

.split.a:                                         ; preds = %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt2
  %i.fc = icmp ne i8 %.sroa.14.0.i35.jt2, %.sroa.14.0.i.jt2
  %i.fd = and i1 %i.ef, %i.fc
  %spec.select14.i.not.a = and i1 %i.ee, %i.fd
  br i1 %spec.select14.i.not.a, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.av

.split54:                                         ; preds = %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt3
  %i.fe = icmp ne i8 %narrow.i, 2
  %7 = icmp eq i8 %.sroa.14.0.i35.jt3, %.sroa.14.0.i.jt3
  %spec.select15.i = select i1 %i.fe, i1 true, i1 %7
  br i1 %spec.select15.i, label %bb.av, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.au
  %8 = icmp ne i8 %.sroa.14.0.i35.jt1, %.sroa.14.0.i.jt1
  %i.ff = and i1 %i.ey, %8
  %spec.select13.i.not = and i1 %i.ex, %i.ff
  br i1 %spec.select13.i.not, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.av

bb.av:                                            ; preds = %.split55, %.split54, %.split.a, %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.fg = xor i16 %i.de, %i.da
  %i.fh = and i16 %i.fg, 3
  %or.cond89.i = icmp eq i16 %i.fh, 0
  br i1 %or.cond89.i, label %bb.aw, label %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.fi = and i16 %i.da, 2
  %.val74.i = load ptr, ptr %2, align 8, !noalias !6984, !nonnull !4, !noundef !4
  %.val75.i = load i64, ptr %i.ai, align 8, !noalias !6984, !noundef !4
  %i.fj = invoke fastcc { ptr, i64 } @_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_(ptr nonnull %.val74.i, i64 %.val75.i, i32 noundef %.sroa.06.0, i32 noundef %.sroa.79.0)
          to label %.noexc26 unwind label %.loopexit ; 2 uses

.noexc26:                                         ; preds = %bb.aw
  %i.fk = extractvalue { ptr, i64 } %i.fj, 0      ; 2 uses
  %i.fl = extractvalue { ptr, i64 } %i.fj, 1      ; 3 uses
  %.val72.i = load ptr, ptr %2, align 8, !noalias !6984, !nonnull !4, !noundef !4
  %.val73.i = load i64, ptr %i.ai, align 8, !noalias !6984, !noundef !4
  %i.fm = invoke fastcc { ptr, i64 } @_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_(ptr nonnull %.val72.i, i64 %.val73.i, i32 noundef %.sroa.011.0, i32 noundef %.sroa.6.0)
          to label %.noexc27 unwind label %.loopexit ; 2 uses

.noexc27:                                         ; preds = %.noexc26
  %i.fn = extractvalue { ptr, i64 } %i.fm, 0      ; 2 uses
  %i.fo = extractvalue { ptr, i64 } %i.fm, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6984
  %.not.i.i.i = icmp eq i16 %i.fi, 0              ; 3 uses
  %.not.i2.i.i = trunc i16 %i.da to i1            ; 2 uses
  %..i.i = select i1 %.not.i2.i.i, ptr @514, ptr @513
  %.1.i.i = select i1 %.not.i2.i.i, ptr @512, ptr @511
  %.sroa.5.0.i.i = select i1 %.not.i.i.i, i64 1, i64 3
  %.sroa.0.0.i.i = select i1 %.not.i.i.i, ptr %..i.i, ptr %.1.i.i
  store ptr %.sroa.0.0.i.i, ptr %i.h, align 8, !noalias !6984
  store i64 %.sroa.5.0.i.i, ptr %i.al, align 8, !noalias !6984
  %i.fp = call noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14AnyStringFlagsNtB4_11StringFlags10opener_lenCsEhZmuQNqkz_11ruff_linter(i16 noundef %i.da) ; 3 uses
  %i.fq = and i16 %i.da, 256
  %.not.i.i = icmp eq i16 %i.fq, 0
  %..i.i.i = select i1 %.not.i.i.i, i32 1, i32 3
  %.sroa.0.0.i80.i = select i1 %.not.i.i, i32 %..i.i.i, i32 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6984
  %i.fr = invoke fastcc noundef i32 @_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len(i64 noundef %i.fl)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %.noexc27
  %i.fs = sub i32 %i.fr, %.sroa.0.0.i80.i         ; 2 uses
  %.not64.i = icmp ugt i32 %i.fp, %i.fs
  br i1 %.not64.i, label %bb.ax, label %bb.ay, !prof !13

bb.ax:                                            ; preds = %.noexc28
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #37
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %.noexc28
  %i.ft = zext nneg i32 %i.fp to i64              ; 4 uses
  %i.fu = zext i32 %i.fs to i64                   ; 2 uses
  %i.fv = call fastcc { ptr, i64 } @_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get(i64 noundef %i.ft, i64 noundef %i.fu, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fk, i64 noundef %i.fl), !noalias !6984 ; 2 uses
  %i.fw = extractvalue { ptr, i64 } %i.fv, 0      ; 2 uses
  %.not65.i = icmp eq ptr %i.fw, null
  br i1 %.not65.i, label %bb.ba, label %bb.az, !prof !13

bb.az:                                            ; preds = %bb.ay
  %i.fx = extractvalue { ptr, i64 } %i.fv, 1
  store ptr %i.fw, ptr %i.am, align 8, !noalias !6984
  store i64 %i.fx, ptr %i.an, align 8, !noalias !6984
  store i64 -1, ptr %i.g, align 8, !noalias !6984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6984
  %i.fy = invoke fastcc noundef i32 @_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len(i64 noundef %i.fo)
          to label %bb.bc unwind label %.loopexit67, !noalias !6984

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fk, i64 noundef %i.fl, i64 noundef %i.ft, i64 noundef %i.fu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #37
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %.loopexit67, %.loopexit.split-lp68, %.thread.i
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread.i ], [ %lpad.loopexit69, %.loopexit67 ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp68 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.g) #38
          to label %.body unwind label %bb.bo, !noalias !6984

.loopexit67:                                      ; preds = %bb.az, %bb.bi, %bb.bk
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp68:                             ; preds = %bb.bd, %bb.bh
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bc:                                            ; preds = %bb.az
  %i.fz = sub i32 %i.fy, %.sroa.0.0.i80.i         ; 2 uses
  %.not66.i = icmp ugt i32 %i.fp, %i.fz
  br i1 %.not66.i, label %bb.bd, label %bb.bf, !prof !13

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #37
          to label %bb.be unwind label %.loopexit.split-lp68, !noalias !6984

bb.be:                                            ; preds = %bb.bh, %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %i.gb = call fastcc { ptr, i64 } @_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get(i64 noundef %i.ft, i64 noundef %i.ga, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fn, i64 noundef %i.fo), !noalias !6984 ; 2 uses
  %i.gc = extractvalue { ptr, i64 } %i.gb, 0      ; 3 uses
  %.not67.i = icmp eq ptr %i.gc, null
  br i1 %.not67.i, label %bb.bh, label %bb.bg, !prof !13

bb.bg:                                            ; preds = %bb.bf
  %i.gd = extractvalue { ptr, i64 } %i.gb, 1      ; 2 uses
  store ptr %i.gc, ptr %i.f, align 8, !noalias !6984
  store i64 %i.gd, ptr %i.ao, align 8, !noalias !6984
  %i.ge = and i16 %i.da, 192
  %i.gf = icmp ne i16 %i.ge, 0
  %i.gg = icmp samesign eq i64 %i.gd, 0
  %or.cond70.i = select i1 %i.gf, i1 true, i1 %i.gg
  br i1 %or.cond70.i, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fn, i64 noundef %i.fo, i64 noundef %i.ft, i64 noundef %i.ga, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #37
          to label %bb.be unwind label %.loopexit.split-lp68, !noalias !6984

bb.bi:                                            ; preds = %bb.bk, %bb.bj, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6984
  store ptr %i.i, ptr %i.d, align 8, !noalias !6984
  store ptr @_RNvXs7_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !6984
  store ptr %i.h, ptr %i.ap, align 8, !noalias !6984
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !6984
  store ptr %i.g, ptr %i.aq, align 8, !noalias !6984
  store ptr @_RNvXsb_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !6984
  store ptr %i.f, ptr %i.ar, align 8, !noalias !6984
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !6984
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @181, ptr noundef nonnull %i.d)
          to label %bb.bl unwind label %.loopexit67, !noalias !6984

bb.bj:                                            ; preds = %bb.bg
  %i.gh = load i8, ptr %i.gc, align 1, !noalias !6984, !noundef !4
  %i.gi = and i8 %i.gh, -8
  %or.cond.i = icmp eq i8 %i.gi, 48
  br i1 %or.cond.i, label %bb.bk, label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  invoke fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit22normalize_ending_octal(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.bi unwind label %.loopexit67, !noalias !6984

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !6984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6984
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %.sroa.06.0, i32 noundef %.sroa.6.0)
          to label %bb.bm unwind label %.thread.i, !noalias !6984

.thread.i:                                        ; preds = %bb.bm, %bb.bl
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6984
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bn unwind label %.thread.i, !noalias !6984

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6984
  %.sroa.0.0.copyload51 = load i64, ptr %i.c, align 8, !noalias !6985 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx52, i64 32, i1 false), !noalias !6985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6984
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit unwind label %.loopexit

bb.bo:                                            ; preds = %bb.bb
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !6984
  unreachable

_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.ak, %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt3, %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt2, %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit50.jt0, %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt1, %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt2, %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt3, %bb.au, %_RNvXs1i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_14AnyStringFlagsNtB6_11StringFlags6prefix.exit.jt0, %.split55, %.split54, %.split.a, %bb.av, %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6984
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit.thread

bb.bp:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.backedge

.loopexit:                                        ; preds = %bb.bq, %bb.v, %bb.w, %bb.x, %bb.y, %bb.aw, %.noexc26, %.noexc27, %bb.bn
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ax, %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bb
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.bb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.k) #38
          to label %bb.bt unwind label %bb.bs

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6984
  %.not21 = icmp eq i64 %.sroa.0.0.copyload51, -1
  br i1 %.not21, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.0.0.copyload51, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, i64 32, i1 false)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.j)
          to label %bb.br unwind label %.loopexit

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit.thread

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit.thread: ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules26flake8_implicit_str_concat5rules8implicit19concatenate_strings.exit, %_RNvXsL_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_15AnyStringPrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, %.noexc24, %.noexc23, %.noexc25, %.noexc, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.backedge

bb.bs:                                            ; preds = %.body
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bt:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

bb.bu:                                            ; preds = %bb.s
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #37
  unreachable

bb.bv:                                            ; preds = %bb.s
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtBa_5rules26flake8_implicit_str_concat5rules8implicit36MultiLineImplicitStringConcatenationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull align 8 %0, i32 noundef %.sroa.06.0, i32 noundef %.sroa.6.0)
  %i.gl = load i16, ptr %i.as, align 8, !range !44, !alias.scope !6986, !noundef !4
  %i.gm = icmp eq i16 %i.gl, -1
  br i1 %i.gm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB13_.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB13_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB13_.exit: ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules22redundant_bool_literal22redundant_bool_literal(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.j = load i32, ptr %i.i, align 4, !noundef !4
  %i.k = and i32 %i.j, 114688
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  call fastcc void @_RINvNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing16traverse_literal5innerNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules22redundant_bool_literal22redundant_bool_literal0EB1x_(ptr noalias noundef align 8 dereferenceable(8) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.h, ptr noundef nonnull align 8 %1, ptr noundef align 8 null)
  %i.o = load i8, ptr %i.g, align 1, !noundef !4  ; 2 uses
  %i.p = and i8 %i.o, 3
  %i.q = icmp eq i8 %i.p, 3
  br i1 %i.q, label %switch.lookup, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  ret void

switch.lookup:                                    ; preds = %bb.c
  %i.r = and i8 %i.o, 4
  %i.s = icmp ne i8 %i.r, 0                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.t = load i32, ptr %1, align 8, !range !16, !noundef !4 ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.u
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.v = zext nneg i32 %i.t to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.810, i64 %i.v
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext13 = zext i8 %switch.load12 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext13
  %.sroa.0.0.i = load i32, ptr %i.w, align 4, !noundef !4
  %.sroa.34.0.i = load i32, ptr %i.x, align 4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !6, !noundef !4
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules22redundant_bool_literal20RedundantBoolLiteralEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull align 8 %i.z, i1 noundef zeroext %i.s, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.34.0.i)
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %switch.lookup
  %i.aa = invoke noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19has_builtin_binding(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 4)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.p, %bb.i, %switch.lookup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.sink.split

bb.g:                                             ; preds = %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.ap, %bb.m ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.e) #38
          to label %bb.s unwind label %bb.q

bb.h:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  br i1 %i.aa, label %bb.j, label %bb.f

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.a, align 8, !range !8, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !12, !noundef !4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.l, label %switch.lookup14, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.ag, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #37
          to label %bb.r unwind label %bb.h

switch.lookup14:                                  ; preds = %bb.k
  %i.ai = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = icmp samesign ugt i64 %i.af, 3
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 1819242338, ptr %i.ai, align 1
  store i64 %i.af, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 4, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ak = load i32, ptr %1, align 8, !range !16, !noundef !4 ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %switch.gep15 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.al
  %switch.load16 = load i8, ptr %switch.gep15, align 1
  %switch.ext17 = zext i8 %switch.load16 to i64
  %i.am = zext nneg i32 %i.ak to i64
  %switch.gep18 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.810, i64 %i.am
end_hunk_0
