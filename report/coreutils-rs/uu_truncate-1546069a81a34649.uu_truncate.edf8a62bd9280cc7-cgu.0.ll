Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_truncate-1546069a81a34649.uu_truncate.edf8a62bd9280cc7-cgu.0?download=true
inline.NumInlined: 415
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCskqImE9wpq17_11uu_truncate8truncate:bb.a
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  %i.ky = add nuw nsw i64 %.sroa.0.0.i.i87, 2
  %i.kz = icmp samesign ne i64 %i.ky, %.sroa.02.1.i.i
  call void @llvm.assume(i1 %i.kz)
  %i.la = load i8, ptr %i.kx, align 1, !alias.scope !704, !noalias !712, !noundef !4
  %i.lb = shl nuw nsw i32 %i.kt, 6
  %i.lc = and i8 %i.la, 63
  %i.ld = zext nneg i8 %i.lc to i32
  %i.le = or disjoint i32 %i.lb, %i.ld            ; 2 uses
  %i.lf = shl nuw nsw i32 %i.kn, 12
  %i.lg = or disjoint i32 %i.le, %i.lf
  %i.lh = icmp samesign ugt i8 %i.kj, -17
  br i1 %i.lh, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i, label %bb.bf

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.kg, i64 3
  %i.lj = add nuw nsw i64 %.sroa.0.0.i.i87, 3
  %i.lk = icmp samesign ne i64 %i.lj, %.sroa.02.1.i.i
  call void @llvm.assume(i1 %i.lk)
  %i.ll = load i8, ptr %i.li, align 1, !alias.scope !704, !noalias !712, !noundef !4
  %i.lm = shl nuw nsw i32 %i.kn, 18
  %i.ln = and i32 %i.lm, 1835008
  %i.lo = shl nuw nsw i32 %i.le, 6
  %i.lp = and i8 %i.ll, 63
  %i.lq = zext nneg i8 %i.lp to i32
  %i.lr = or disjoint i32 %i.lo, %i.lq
  %i.ls = or disjoint i32 %i.lr, %i.ln
  br label %bb.bf

bb.bf:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i, %bb.be, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i
  %.sroa.4.0.i36.ph.i = phi i32 [ %i.lg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i ], [ %i.ls, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i ], [ %i.ku, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i ], [ %i.kw, %bb.be ] ; 12 uses
  %i.lt = icmp samesign ult i32 %.sroa.4.0.i36.ph.i, 1114112
  call void @llvm.assume(i1 %i.lt)
  switch i32 %.sroa.4.0.i36.ph.i, label %bb.bl [
    i32 43, label %bb.bh
    i32 45, label %bb.bh
  ]

_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskqImE9wpq17_11uu_truncate.exit.thread.i: ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskqImE9wpq17_11uu_truncate.exit.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskqImE9wpq17_11uu_truncate.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !713
  %i.lu = call noundef dereferenceable_or_null(2) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef range(i64 1, 9) 1) #22, !noalias !713 ; 3 uses
  %i.lv = icmp eq ptr %i.lu, null
  br i1 %i.lv, label %bb.bg, label %_RNvCskqImE9wpq17_11uu_truncate19parse_mode_and_size.exit.thread475

bb.bg:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskqImE9wpq17_11uu_truncate.exit.thread.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #24, !noalias !703
  unreachable

_RNvCskqImE9wpq17_11uu_truncate19parse_mode_and_size.exit.thread475: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskqImE9wpq17_11uu_truncate.exit.thread.i
  store i16 10023, ptr %i.lu, align 1, !noalias !703
  store i64 1, ptr %i.bu, align 8, !alias.scope !703, !noalias !704
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !703, !noalias !704
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.lu, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !703, !noalias !704
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 2, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !703, !noalias !704
  br label %.sink.split

bb.bh:                                            ; preds = %bb.bf, %bb.bf
  %i.lw = zext i8 %i.kj to i64
  %i.lx = getelementptr inbounds nuw i8, ptr @51, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !noalias !714, !noundef !4
  %i.lz = zext i8 %i.ly to i64                    ; 6 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.lz ; 4 uses
  %.not28.i.i = icmp uge i64 %i.kf, %i.lz
  call void @llvm.assume(i1 %.not28.i.i)
  %i.mb = add nuw nsw i64 %.sroa.0.0.i.i87, %i.lz
  %.not.i = icmp samesign eq i64 %i.mb, %.sroa.02.1.i.i
  br i1 %.not.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mc = load i8, ptr %i.ma, align 1, !alias.scope !704, !noalias !715, !noundef !4 ; 5 uses
  %i.md = icmp sgt i8 %i.mc, -1
  br i1 %i.md, label %bb.bj, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i38.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i38.i: ; preds = %bb.bi
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %i.mf = and i8 %i.mc, 31
  %i.mg = zext nneg i8 %i.mf to i32               ; 3 uses
  %i.mh = add nuw nsw i64 %.sroa.0.0.i.i87, 1
  %i.mi = add nuw nsw i64 %i.mh, %i.lz
  %i.mj = icmp samesign ne i64 %i.mi, %.sroa.02.1.i.i
  call void @llvm.assume(i1 %i.mj)
  %i.mk = load i8, ptr %i.me, align 1, !alias.scope !704, !noalias !715, !noundef !4
  %i.ml = shl nuw nsw i32 %i.mg, 6
  %i.mm = and i8 %i.mk, 63
  %i.mn = zext nneg i8 %i.mm to i32               ; 2 uses
  %i.mo = or disjoint i32 %i.ml, %i.mn
  %i.mp = icmp samesign ugt i8 %i.mc, -33
  br i1 %i.mp, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i41.i, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mq = zext nneg i8 %i.mc to i32
  br label %bb.bk

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i41.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i38.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  %i.ms = add nuw nsw i64 %.sroa.0.0.i.i87, 2
  %i.mt = add nuw nsw i64 %i.ms, %i.lz
  %i.mu = icmp samesign ne i64 %i.mt, %.sroa.02.1.i.i
  call void @llvm.assume(i1 %i.mu)
  %i.mv = load i8, ptr %i.mr, align 1, !alias.scope !704, !noalias !715, !noundef !4
  %i.mw = shl nuw nsw i32 %i.mn, 6
  %i.mx = and i8 %i.mv, 63
  %i.my = zext nneg i8 %i.mx to i32
  %i.mz = or disjoint i32 %i.mw, %i.my            ; 2 uses
  %i.na = shl nuw nsw i32 %i.mg, 12
  %i.nb = or disjoint i32 %i.mz, %i.na
  %i.nc = icmp samesign ugt i8 %i.mc, -17
  br i1 %i.nc, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i42.i, label %bb.bk

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i42.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i41.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ma, i64 3
  %i.ne = add nuw nsw i64 %.sroa.0.0.i.i87, 3
  %i.nf = add nuw nsw i64 %i.ne, %i.lz
  %i.ng = icmp samesign ne i64 %i.nf, %.sroa.02.1.i.i
  call void @llvm.assume(i1 %i.ng)
  %i.nh = load i8, ptr %i.nd, align 1, !alias.scope !704, !noalias !715, !noundef !4
  %i.ni = shl nuw nsw i32 %i.mg, 18
  %i.nj = and i32 %i.ni, 1835008
  %i.nk = shl nuw nsw i32 %i.mz, 6
  %i.nl = and i8 %i.nh, 63
  %i.nm = zext nneg i8 %i.nl to i32
  %i.nn = or disjoint i32 %i.nk, %i.nm
  %i.no = or disjoint i32 %i.nn, %i.nj
  br label %bb.bk

bb.bk:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i42.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i41.i, %bb.bj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i38.i, %bb.bh
  %spec.select.i = phi i32 [ %i.mq, %bb.bj ], [ %i.mo, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i38.i ], [ %i.no, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i42.i ], [ %i.nb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i41.i ], [ %.sroa.4.0.i36.ph.i, %bb.bh ]
  %i.np = add nsw i32 %spec.select.i, -48
  %or.cond.i = icmp ult i32 %i.np, 10
  br i1 %or.cond.i, label %.thread69.i, label %_RNvCskqImE9wpq17_11uu_truncate19parse_mode_and_size.exit.thread

_RNvCskqImE9wpq17_11uu_truncate19parse_mode_and_size.exit.thread: ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !705
  store ptr %i.ax, ptr %i.aw, align 8, !noalias !705
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCskqImE9wpq17_11uu_truncate, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.4.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i88, ptr noundef nonnull @26, ptr noundef nonnull %i.aw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !705
  store i64 1, ptr %i.bu, align 8, !alias.scope !703, !noalias !704
  br label %.sink.split

bb.bl:                                            ; preds = %bb.bf
  %i.nq = icmp samesign ult i32 %.sroa.4.0.i36.ph.i, 128
  br i1 %i.nq, label %.thread69.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !705
  store i32 0, ptr %i.as, align 4, !noalias !705
  %i.nr = icmp samesign ult i32 %.sroa.4.0.i36.ph.i, 2048
  %i.ns = trunc i32 %.sroa.4.0.i36.ph.i to i8
  %i.nt = and i8 %i.ns, 63
  %i.nu = or disjoint i8 %i.nt, -128              ; 3 uses
  %i.nv = lshr i32 %.sroa.4.0.i36.ph.i, 6
  %i.nw = trunc i32 %i.nv to i8                   ; 2 uses
  %i.nx = and i8 %i.nw, 63
  %i.ny = or disjoint i8 %i.nx, -128              ; 2 uses
  %i.nz = lshr i32 %.sroa.4.0.i36.ph.i, 12
  %i.oa = trunc i32 %i.nz to i8                   ; 2 uses
  %i.ob = and i8 %i.oa, 63
  %i.oc = or disjoint i8 %i.ob, -128
  %i.od = lshr i32 %.sroa.4.0.i36.ph.i, 18
  %i.oe = trunc nuw nsw i32 %i.od to i8
  %i.of = or disjoint i8 %i.oe, -16
  br i1 %i.nr, label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i, label %bb.bn

_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i: ; preds = %bb.bm
  %i.og = or disjoint i8 %i.nw, -64
  store i8 %i.og, ptr %i.as, align 4, !alias.scope !716, !noalias !705
  %i.oh = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %i.nu, ptr %i.oh, align 1, !alias.scope !716, !noalias !705
  br label %.lr.ph.split.us.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.oi = icmp samesign ult i32 %.sroa.4.0.i36.ph.i, 65536
  br i1 %i.oi, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.oj = or disjoint i8 %i.oa, -32
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ok = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  store i8 %i.nu, ptr %i.ok, align 1, !alias.scope !716, !noalias !705
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit.i.i.i: ; preds = %bb.bp, %bb.bo
  %.sink20.i.i.i = phi i8 [ %i.oj, %bb.bo ], [ %i.of, %bb.bp ] ; 5 uses
  %.sink19.i.i.i = phi i8 [ %i.ny, %bb.bo ], [ %i.oc, %bb.bp ]
  %.sink.i.i.i = phi i8 [ %i.nu, %bb.bo ], [ %i.ny, %bb.bp ]
  %.sroa.0.05.i.i.i.i = phi i64 [ 3, %bb.bo ], [ 4, %bb.bp ] ; 9 uses
  store i8 %.sink20.i.i.i, ptr %i.as, align 4, !alias.scope !716, !noalias !705
  %i.ol = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %.sink19.i.i.i, ptr %i.ol, align 1, !alias.scope !716, !noalias !705
  %i.om = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 %.sink.i.i.i, ptr %i.om, align 2, !alias.scope !716, !noalias !705
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %6 = getelementptr i8, ptr %i.as, i64 %.sroa.0.05.i.i.i.i
  %i.on = getelementptr i8, ptr %6, i64 -1
  %i.oo = load i8, ptr %i.on, align 1, !alias.scope !718, !noalias !719, !noundef !4
  %.not.i.not.i.i.i.i.i.i = icmp eq i8 %i.oo, %.sink20.i.i.i
  br i1 %.not.i.not.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.1, label %.lr.ph.split.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.1: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit.i.i.i
  %7 = getelementptr i8, ptr %i.as, i64 %.sroa.0.05.i.i.i.i
  %i.op = getelementptr i8, ptr %7, i64 -2
  %i.oq = load i8, ptr %i.op, align 1, !alias.scope !718, !noalias !719, !noundef !4
  %.not.i.not.i.i.i.i.i.i.1 = icmp eq i8 %i.oq, %.sink20.i.i.i
  br i1 %.not.i.not.i.i.i.i.i.i.1, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.2, label %.lr.ph.split.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.2: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.1
  %i.or = add nsw i64 %.sroa.0.05.i.i.i.i, -3     ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !alias.scope !718, !noalias !719, !noundef !4
  %.not.i.not.i.i.i.i.i.i.2 = icmp eq i8 %i.ot, %.sink20.i.i.i
  br i1 %.not.i.not.i.i.i.i.i.i.2, label %.preheader.split.i.i.i.i.i.2, label %.lr.ph.split.us.i.i.i.i.i.i

.preheader.split.i.i.i.i.i.2:                     ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.2
  %.not.i.i.i.i.i.2 = icmp eq i64 %i.or, 0
  br i1 %.not.i.i.i.i.i.2, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.3

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.3: ; preds = %.preheader.split.i.i.i.i.i.2
  %i.ou = getelementptr i8, ptr %i.as, i64 %.sroa.0.05.i.i.i.i
  %i.ov = getelementptr i8, ptr %i.ou, i64 -4
  %i.ow = load i8, ptr %i.ov, align 1, !alias.scope !718, !noalias !719, !noundef !4
  %.not.i.not.i.i.i.i.i.i.3 = icmp eq i8 %i.ow, %.sink20.i.i.i
  br i1 %.not.i.not.i.i.i.i.i.i.3, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit.i.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.1, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.2, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.3, %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i
  %.sroa.0.05.i2.i.i.i = phi i64 [ 2, %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i ], [ %.sroa.0.05.i.i.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.3 ], [ %.sroa.0.05.i.i.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.2 ], [ %.sroa.0.05.i.i.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.1 ], [ %.sroa.0.05.i.i.i.i, %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit.i.i.i ] ; 3 uses
  %bcmp.i.i.us22.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) @24, ptr noundef nonnull readonly dereferenceable(1) %i.as, i64 range(i64 2, 5) %.sroa.0.05.i2.i.i.i), !noalias !720
  %i.ox = icmp eq i32 %bcmp.i.i.us22.i.i.i.i.i.i, 0
  br i1 %i.ox, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.sink.split.i, label %.split.us.i.i.i.i.i.i

.split.us.i.i.i.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskqImE9wpq17_11uu_truncate.exit.backedge.us.i.i.i.i.i.i
  %i.oy = phi i64 [ %i.pb, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskqImE9wpq17_11uu_truncate.exit.backedge.us.i.i.i.i.i.i ], [ 5, %.lr.ph.split.us.i.i.i.i.i.i ]
  %i.oz = phi ptr [ %i.pc, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskqImE9wpq17_11uu_truncate.exit.backedge.us.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @24, i64 1), %.lr.ph.split.us.i.i.i.i.i.i ] ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.oz, ptr noundef nonnull readonly dereferenceable(1) %i.as, i64 range(i64 2, 5) %.sroa.0.05.i2.i.i.i), !noalias !720
  %i.pa = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i, 0
  br i1 %i.pa, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.sink.split.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskqImE9wpq17_11uu_truncate.exit.backedge.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskqImE9wpq17_11uu_truncate.exit.backedge.us.i.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i
  %i.pb = add nsw i64 %i.oy, -1                   ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 1
  %.not27.i.i.not.i.not.i.not.i.i = icmp samesign ugt i64 %.sroa.0.05.i2.i.i.i, %i.pb
  br i1 %.not27.i.i.not.i.not.i.not.i.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread81.i, label %.split.us.i.i.i.i.i.i

_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread81.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskqImE9wpq17_11uu_truncate.exit.backedge.us.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !705
  br label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread74.i

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskqImE9wpq17_11uu_truncate.exit.i.i.i.i.i.i.3, %.preheader.split.i.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !721
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef range(i64 1, 5) %.sroa.0.05.i.i.i.i) #22, !noalias !703
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.pd = load i64, ptr %i.ar, align 8, !range !12, !alias.scope !722, !noalias !723, !noundef !4
  %i.pe = trunc nuw i64 %i.pd to i1
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  br i1 %i.pe, label %bb.bz, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ar, i64 26
  %i.ph = load i8, ptr %i.pg, align 2, !range !696, !alias.scope !724, !noalias !725, !noundef !4
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %.promoted.i.i.i.i.i = load i64, ptr %i.pf, align 8, !alias.scope !722, !noalias !723 ; 12 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.pl = load ptr, ptr %i.pk, align 8, !alias.scope !724, !noalias !725, !nonnull !4, !noundef !4 ; 5 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.pn = load i64, ptr %i.pm, align 8, !alias.scope !724, !noalias !725, !noundef !4 ; 14 uses
  %.promoted52.i.i.i.i.i = load i8, ptr %i.pj, align 8, !alias.scope !724, !noalias !725
  %i.po = trunc nuw i8 %.promoted52.i.i.i.i.i to i1 ; 2 uses
  %i.pp = icmp eq i64 %.promoted.i.i.i.i.i, 0
  br i1 %i.pp, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.pn
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.br, label %.split.i.i.i.peel.i.i.i.i

.split.i.i.i.peel.i.i.i.i:                        ; preds = %bb.bq
  %i.pq = icmp eq i64 %.promoted.i.i.i.i.i, %i.pn
  br i1 %i.pq, label %bb.bs, label %.loopexit.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.promoted.i.i.i.i.i
  %i.ps = load i8, ptr %i.pr, align 1, !alias.scope !726, !noalias !727, !noundef !4
  %i.pt = icmp sgt i8 %i.ps, -65
  br i1 %i.pt, label %bb.bs, label %.loopexit.i.i.i.i

bb.bs:                                            ; preds = %bb.br, %.split.i.i.i.peel.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.promoted.i.i.i.i.i ; 4 uses
  %i.pv = icmp samesign eq i64 %.promoted.i.i.i.i.i, %i.pn
  br i1 %i.pv, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pw = load i8, ptr %i.pu, align 1, !noalias !728, !noundef !4 ; 5 uses
  %i.px = icmp sgt i8 %i.pw, -1
  br i1 %i.px, label %bb.bu, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.bt
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  %i.pz = and i8 %i.pw, 31
  %i.qa = zext nneg i8 %i.pz to i32               ; 3 uses
  %i.qb = add nuw nsw i64 %.promoted.i.i.i.i.i, 1
  %i.qc = icmp samesign ne i64 %i.qb, %i.pn
  call void @llvm.assume(i1 %i.qc)
  %i.qd = load i8, ptr %i.py, align 1, !noalias !728, !noundef !4
  %i.qe = shl nuw nsw i32 %i.qa, 6
  %i.qf = and i8 %i.qd, 63
  %i.qg = zext nneg i8 %i.qf to i32               ; 2 uses
  %i.qh = or disjoint i32 %i.qe, %i.qg
  %i.qi = icmp samesign ugt i8 %i.pw, -33
  br i1 %i.qi, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.peel.i.i.i.i, label %bb.bv

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.peel.i.i.i.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pu, i64 2
  %i.qk = add nuw nsw i64 %.promoted.i.i.i.i.i, 2
  %i.ql = icmp samesign ne i64 %i.qk, %i.pn
  call void @llvm.assume(i1 %i.ql)
  %i.qm = load i8, ptr %i.qj, align 1, !noalias !728, !noundef !4
  %i.qn = shl nuw nsw i32 %i.qg, 6
  %i.qo = and i8 %i.qm, 63
  %i.qp = zext nneg i8 %i.qo to i32
  %i.qq = or disjoint i32 %i.qn, %i.qp            ; 2 uses
  %i.qr = shl nuw nsw i32 %i.qa, 12
  %i.qs = or disjoint i32 %i.qq, %i.qr
  %i.qt = icmp samesign ugt i8 %i.pw, -17
  br i1 %i.qt, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.peel.i.i.i.i, label %bb.bv

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.peel.i.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pu, i64 3
  %i.qv = add nuw nsw i64 %.promoted.i.i.i.i.i, 3
  %i.qw = icmp samesign ne i64 %i.qv, %i.pn
  call void @llvm.assume(i1 %i.qw)
  %i.qx = load i8, ptr %i.qu, align 1, !noalias !728, !noundef !4
  %i.qy = shl nuw nsw i32 %i.qa, 18
  %i.qz = and i32 %i.qy, 1835008
  %i.ra = shl nuw nsw i32 %i.qq, 6
  %i.rb = and i8 %i.qx, 63
  %i.rc = zext nneg i8 %i.rb to i32
  %i.rd = or disjoint i32 %i.ra, %i.rc
  %i.re = or disjoint i32 %i.rd, %i.qz
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.rf = zext nneg i8 %i.pw to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.qs, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.peel.i.i.i.i ], [ %i.re, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.peel.i.i.i.i ], [ %i.qh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.peel.i.i.i.i ], [ %i.rf, %bb.bu ] ; 4 uses
  %i.rg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.rg)
  br i1 %i.po, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.rh, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ri = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.ri, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.rj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.rj, i64 3, i64 4
  br label %bb.ca

bb.bz:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.rl = load i64, ptr %i.rk, align 8, !alias.scope !722, !noalias !723, !noundef !4 ; 2 uses
  %i.rm = icmp eq i64 %i.rl, -1
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.ro = load ptr, ptr %i.rn, align 8, !alias.scope !722, !noalias !723, !nonnull !4, !noundef !4 ; 8 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.rq = load i64, ptr %i.rp, align 8, !alias.scope !722, !noalias !723, !noundef !4 ; 10 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.rs = load ptr, ptr %i.rr, align 8, !alias.scope !722, !noalias !723, !nonnull !4, !noundef !4 ; 5 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.ru = load i64, ptr %i.rt, align 8, !alias.scope !722, !noalias !723, !noundef !4 ; 14 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 2 uses
  %i.rw = add nsw i64 %i.ru, -1                   ; 5 uses
  br i1 %i.rm, label %bb.cn, label %bb.cf

bb.ca:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.bx ], [ %..i.i.peel.i.i.i.i, %bb.by ], [ 1, %bb.bw ]
  %i.rx = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.promoted.i.i.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.ry = icmp eq i64 %i.rx, 0
  br i1 %i.ry, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.rx, %i.pn
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cc, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.cb
  %i.rz = icmp eq i64 %i.rx, %i.pn
  br i1 %i.rz, label %bb.cd, label %.loopexit.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.sa = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.rx
  %i.sb = load i8, ptr %i.sa, align 1, !alias.scope !726, !noalias !730, !noundef !4
  %i.sc = icmp sgt i8 %i.sb, -65
  br i1 %i.sc, label %bb.cd, label %.loopexit.i.i.i.i

bb.cd:                                            ; preds = %bb.cc, %.split.i.i.i.i.i.i.i, %bb.ca
  %i.sd = icmp samesign eq i64 %i.rx, %i.pn
  br i1 %i.sd, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.se = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.rx
  %i.sf = load i8, ptr %i.se, align 1, !noalias !731, !noundef !4 ; 3 uses
  %i.sg = icmp sgt i8 %i.sf, -1
  br i1 %i.sg, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.i.i.i44.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.i.i.i44.i: ; preds = %bb.ce
  %i.sh = add nuw nsw i64 %i.rx, 1
  %i.si = icmp samesign ne i64 %i.sh, %i.pn
  call void @llvm.assume(i1 %i.si)
  %i.sj = icmp samesign ugt i8 %i.sf, -33
  br i1 %i.sj, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.i.i.i46.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.i.i.i46.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.i.i.i44.i
  %i.sk = add nuw nsw i64 %i.rx, 2
  %i.sl = icmp samesign ne i64 %i.sk, %i.pn
  call void @llvm.assume(i1 %i.sl)
  %i.sm = icmp samesign ugt i8 %i.sf, -17
  br i1 %i.sm, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.i.i.i47.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.i.i.i47.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.i.i.i46.i
  %i.sn = add nuw nsw i64 %i.rx, 3
  %i.so = icmp samesign ne i64 %i.sn, %i.pn
  call void @llvm.assume(i1 %i.so)
  br label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i

.loopexit.i.i.i.i:                                ; preds = %bb.cc, %.split.i.i.i.i.i.i.i, %bb.br, %.split.i.i.i.peel.i.i.i.i
  %.lcssa67.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %.split.i.i.i.peel.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.br ], [ %i.rx, %.split.i.i.i.i.i.i.i ], [ %i.rx, %bb.cc ]
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pl, i64 noundef %i.pn, i64 noundef %.lcssa67.i.i.i.i, i64 noundef %i.pn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #23, !noalias !730
  unreachable

bb.cf:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.rv, align 8, !alias.scope !735, !noalias !736 ; 2 uses
  %i.sp = add i64 %.promoted.i.i.i.i.i.i, %i.rw   ; 2 uses
  %i.sq = icmp ult i64 %i.sp, %i.rq
  br i1 %i.sq, label %.lr.ph.i1.i.i.i.i.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i

.lr.ph.i1.i.i.i.i.i:                              ; preds = %bb.cf
end_hunk_0
