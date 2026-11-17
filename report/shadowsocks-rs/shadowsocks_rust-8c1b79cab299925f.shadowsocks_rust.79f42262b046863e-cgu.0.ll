Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_RINvMs1_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_13AccessControl14load_from_fileRNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %.sroa.4.0.i = phi ptr [ %i.jw, %bb.ah ], [ %i.ku, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit16.i.i.i.i.i.i ], [ %i.kk, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit14.i.i.i.i.i.i ], [ %i.kb, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit12.i.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.ki, %bb.ah ], [ %i.lc, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit16.i.i.i.i.i.i ], [ %i.kr, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit14.i.i.i.i.i.i ], [ %i.kg, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit12.i.i.i.i.i.i ] ; 8 uses
  %i.ld = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ld)
  %i.le = ptrtoint ptr %.sroa.4.0.i to i64        ; 2 uses
  %i.lf = sub i64 %i.le, %i.jv
  %i.lg = add i64 %i.lf, %i.jt                    ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %bb.aj [
    i32 32, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
    i32 13, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
    i32 12, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
    i32 11, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
    i32 10, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
    i32 9, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.lh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 133
  br i1 %i.lh, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.li = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i, 8
  switch i32 %i.li, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i [
    i32 0, label %bb.an
    i32 22, label %bb.al
    i32 32, label %bb.ao
    i32 48, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.lj = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 5760
  %i.lk = zext i1 %i.lj to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ll = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 12288
  %i.lm = zext i1 %i.ll to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

bb.an:                                            ; preds = %bb.ak
  %i.ln = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !803, !noundef !14
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.lr = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !noalias !803, !noundef !14
  %i.lv = lshr i8 %i.lu, 1
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.lm, %bb.am ], [ %i.lq, %bb.an ], [ %i.lk, %bb.al ], [ %i.lv, %bb.ao ]
  %i.lw = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.lw, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  %i.lx = icmp eq ptr %.sroa.4.0.i, %i.jr
  br i1 %i.lx, label %_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.ithread-pre-split

_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %bb.ak, %bb.aj
  %i.ly = icmp eq ptr %.sroa.4.0.i, %i.jr
  br i1 %i.ly, label %_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.az
  %i.lz = phi ptr [ %i.nj, %bb.az ], [ %i.jr, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 5 uses
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 -1 ; 3 uses
  %i.mb = load i8, ptr %i.ma, align 1, !alias.scope !801, !noalias !804, !noundef !14 ; 3 uses
  %i.mc = icmp sgt i8 %i.mb, -1
  br i1 %i.mc, label %bb.ap, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i: ; preds = %.lr.ph.i.i4.i
  %i.md = icmp ne ptr %.sroa.4.0.i, %i.ma
  call void @llvm.assume(i1 %i.md)
  %i.me = getelementptr inbounds i8, ptr %i.lz, i64 -2 ; 3 uses
  %i.mf = load i8, ptr %i.me, align 1, !alias.scope !801, !noalias !804, !noundef !14 ; 3 uses
  %i.mg = and i8 %i.mf, 31
  %i.mh = zext nneg i8 %i.mg to i32
  %i.mi = icmp slt i8 %i.mf, -64
  br i1 %i.mi, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit19.i.i.i.i.i.i, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i4.i
  %i.mj = zext nneg i8 %i.mb to i32
  br label %bb.as

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit19.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i
  %i.mk = icmp ne ptr %.sroa.4.0.i, %i.me
  call void @llvm.assume(i1 %i.mk)
  %i.ml = getelementptr inbounds i8, ptr %i.lz, i64 -3 ; 3 uses
  %i.mm = load i8, ptr %i.ml, align 1, !alias.scope !801, !noalias !804, !noundef !14 ; 3 uses
  %i.mn = and i8 %i.mm, 15
  %i.mo = zext nneg i8 %i.mn to i32
  %i.mp = icmp slt i8 %i.mm, -64
  br i1 %i.mp, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit21.i.i.i.i.i.i, label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i
  %i.mq = phi ptr [ %i.ne, %bb.ar ], [ %i.me, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i = phi i32 [ %i.ni, %bb.ar ], [ %i.mh, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i ]
  %i.mr = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i, 6
  %i.ms = and i8 %i.mb, 63
  %i.mt = zext nneg i8 %i.ms to i32
  %i.mu = or disjoint i32 %i.mr, %i.mt
  br label %bb.as

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit21.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit19.i.i.i.i.i.i
  %i.mv = icmp ne ptr %.sroa.4.0.i, %i.ml
  call void @llvm.assume(i1 %i.mv)
  %i.mw = getelementptr inbounds i8, ptr %i.lz, i64 -4 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 1, !alias.scope !801, !noalias !804, !noundef !14
  %i.my = and i8 %i.mx, 7
  %i.mz = zext nneg i8 %i.my to i32
  %i.na = shl nuw nsw i32 %i.mz, 6
  %i.nb = and i8 %i.mm, 63
  %i.nc = zext nneg i8 %i.nb to i32
  %i.nd = or disjoint i32 %i.na, %i.nc
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit21.i.i.i.i.i.i, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit19.i.i.i.i.i.i
  %i.ne = phi ptr [ %i.mw, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit21.i.i.i.i.i.i ], [ %i.ml, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit19.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i = phi i32 [ %i.nd, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit21.i.i.i.i.i.i ], [ %i.mo, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit19.i.i.i.i.i.i ]
  %i.nf = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i, 6
  %i.ng = and i8 %i.mf, 63
  %i.nh = zext nneg i8 %i.ng to i32
  %i.ni = or disjoint i32 %i.nf, %i.nh
  br label %bb.aq

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %i.nj = phi ptr [ %i.ma, %bb.ap ], [ %i.mq, %bb.aq ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i = phi i32 [ %i.mj, %bb.ap ], [ %i.mu, %bb.aq ] ; 8 uses
  %i.nk = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.nk)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i, label %bb.at [
    i32 32, label %bb.az
    i32 13, label %bb.az
    i32 12, label %bb.az
    i32 11, label %bb.az
    i32 10, label %bb.az
    i32 9, label %bb.az
  ]

bb.at:                                            ; preds = %bb.as
  %i.nl = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 133
  br i1 %i.nl, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nm = lshr i32 %.sroa.4.1.i.ph.i.i.i.i.i, 8
  switch i32 %i.nm, label %bb.ba [
    i32 0, label %bb.ax
    i32 22, label %bb.av
    i32 32, label %bb.ay
    i32 48, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.nn = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 5760
  %i.no = zext i1 %i.nn to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i6.i

bb.aw:                                            ; preds = %bb.au
  %i.np = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 12288
  %i.nq = zext i1 %i.np to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i6.i

bb.ax:                                            ; preds = %bb.au
  %i.nr = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !noalias !805, !noundef !14
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i6.i

bb.ay:                                            ; preds = %bb.au
  %i.nv = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !noalias !805, !noundef !14
  %i.nz = lshr i8 %i.ny, 1
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i6.i

_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i6.i: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %.sroa.0.0.i.i.i.i.i.i.i7.i = phi i8 [ %i.nq, %bb.aw ], [ %i.nu, %bb.ax ], [ %i.no, %bb.av ], [ %i.nz, %bb.ay ]
  %i.oa = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7.i to i1
  br i1 %i.oa, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i6.i, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as
  %i.ob = icmp eq ptr %.sroa.4.0.i, %i.nj
  br i1 %i.ob, label %_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i4.i

bb.ba:                                            ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i6.i, %bb.au, %bb.at
  %i.oc = ptrtoint ptr %i.lz to i64
  %i.od = sub i64 %i.lg, %i.le
  %i.oe = add i64 %i.od, %i.oc
  br label %_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %bb.az, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.ba
  %.sroa.0.042.i = phi i64 [ %i.jt, %bb.ba ], [ %i.jt, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.jt, %bb.az ], [ 0, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ] ; 5 uses
  %.sroa.02.1.i = phi i64 [ %i.oe, %bb.ba ], [ %i.lg, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.lg, %bb.az ], [ 0, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ] ; 8 uses
  %i.of = sub nuw i64 %.sroa.02.1.i, %.sroa.0.042.i ; 11 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.9239.1, i64 %.sroa.0.042.i ; 41 uses
  store ptr %i.og, ptr %i.ay, align 8
  store i64 %i.of, ptr %i.cv, align 8
  %i.oh = icmp samesign ult i64 %i.of, 64
  br i1 %i.oh, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.oi = and i64 %i.of, 9223372036854775744
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oi ; 3 uses
  %i.ok = and i64 %i.of, 63                       ; 2 uses
  br label %.lr.ph.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.oj
  br i1 %i.om, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bc, %bb.bb
  %.sroa.01.028.i.i = phi ptr [ %i.ol, %bb.bc ], [ %i.og, %bb.bb ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !806, !noalias !807
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.on, align 1, !alias.scope !806, !noalias !808
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.oo, align 1, !alias.scope !806, !noalias !809
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.op, align 1, !alias.scope !806, !noalias !810
  %i.oq = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.or = or <2 x i64> %i.oq, %.sroa.0.0.copyload.i10.i.i
  %i.os = or <2 x i64> %i.or, %.sroa.0.0.copyload.i11.i.i
  %i.ot = bitcast <2 x i64> %i.os to <16 x i8>
  %i.ou = icmp slt <16 x i8> %i.ot, zeroinitializer
  %i.ov = bitcast <16 x i1> %i.ou to i16
  %i.ow = icmp eq i16 %i.ov, 0
  br i1 %i.ow, label %bb.bc, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.bc
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ok
  %i.oy = icmp samesign eq i64 %i.ok, 0
  br i1 %i.oy, label %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

bb.bd:                                            ; preds = %.lr.ph
  %i.oz = getelementptr inbounds nuw i8, ptr %i.pb, i64 1 ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.ox
  br i1 %i.pa, label %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.bd
  %i.pb = phi ptr [ %i.oz, %bb.bd ], [ %i.oj, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i152 = load i8, ptr %i.pb, align 1, !alias.scope !806, !noalias !811, !noundef !14
  %i.pc = icmp sgt i8 %.val.i.i.i152, -1
  br i1 %i.pc, label %bb.bd, label %.loopexit

bb.be:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.pd = and i64 %i.of, 56                       ; 8 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.pd ; 7 uses
  %i.pf = and i64 %i.of, 7                        ; 7 uses
  %i.pg = icmp samesign eq i64 %i.pd, 0
  br i1 %i.pg, label %._crit_edge.i, label %.lr.ph.i

2:                                                ; preds = %.lr.ph.i
  %3 = icmp samesign eq i64 %i.pd, 8
  br i1 %3, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %.sroa.03.0.copyload.i.1 = load i64, ptr %4, align 1, !alias.scope !812
  %5 = and i64 %.sroa.03.0.copyload.i.1, -9187201950435737472
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %.lr.ph.i.1
  %8 = icmp samesign eq i64 %i.pd, 16
  br i1 %8, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %7
  %9 = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %.sroa.03.0.copyload.i.2 = load i64, ptr %9, align 1, !alias.scope !812
  %10 = and i64 %.sroa.03.0.copyload.i.2, -9187201950435737472
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %.lr.ph.i.2
  %13 = icmp samesign eq i64 %i.pd, 24
  br i1 %13, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %.sroa.03.0.copyload.i.3 = load i64, ptr %14, align 1, !alias.scope !812
  %15 = and i64 %.sroa.03.0.copyload.i.3, -9187201950435737472
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %.lr.ph.i.3
  %18 = icmp samesign eq i64 %i.pd, 32
  br i1 %18, label %._crit_edge.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %17
  %19 = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %.sroa.03.0.copyload.i.4 = load i64, ptr %19, align 1, !alias.scope !812
  %20 = and i64 %.sroa.03.0.copyload.i.4, -9187201950435737472
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %.lr.ph.i.4
  %23 = icmp samesign eq i64 %i.pd, 40
  br i1 %23, label %._crit_edge.i, label %bb.bf

bb.bf:                                            ; preds = %22
  %i.ph = getelementptr inbounds nuw i8, ptr %i.og, i64 40
  %.sroa.03.0.copyload.i.5 = load i64, ptr %i.ph, align 1, !alias.scope !812
  %24 = and i64 %.sroa.03.0.copyload.i.5, -9187201950435737472
  %i.pi = icmp eq i64 %24, 0
  br i1 %i.pi, label %25, label %.loopexit

25:                                               ; preds = %bb.bf
  %26 = icmp samesign eq i64 %i.pd, 48
  br i1 %26, label %._crit_edge.i, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %25
  %27 = getelementptr inbounds nuw i8, ptr %i.og, i64 48
  %.sroa.03.0.copyload.i.a = load i64, ptr %27, align 1, !alias.scope !812
  %i.pj = and i64 %.sroa.03.0.copyload.i.a, -9187201950435737472
  %i.pk = icmp eq i64 %i.pj, 0
  br i1 %i.pk, label %._crit_edge.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.be
  %.sroa.03.0.copyload.i = load i64, ptr %i.og, align 1, !alias.scope !812
  %28 = and i64 %.sroa.03.0.copyload.i, -9187201950435737472
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %2, label %.loopexit

._crit_edge.i:                                    ; preds = %2, %7, %12, %17, %22, %25, %.lr.ph.i.a, %bb.be
  %i.pl = icmp samesign eq i64 %i.pf, 0
  br i1 %i.pl, label %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph608

bb.bg:                                            ; preds = %.lr.ph608
  %i.pm = icmp samesign eq i64 %i.pf, 1
  br i1 %i.pm, label %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph608.1

.lr.ph608.1:                                      ; preds = %bb.bg
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %.val.i.i153.1 = load i8, ptr %i.pn, align 1, !alias.scope !812, !noalias !813, !noundef !14
  %i.po = icmp sgt i8 %.val.i.i153.1, -1
  br i1 %i.po, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %.lr.ph608.1
  %i.pp = icmp samesign eq i64 %i.pf, 2
  br i1 %i.pp, label %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph608.2

.lr.ph608.2:                                      ; preds = %bb.bh
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %.val.i.i153.2 = load i8, ptr %i.pq, align 1, !alias.scope !812, !noalias !813, !noundef !14
  %i.pr = icmp sgt i8 %.val.i.i153.2, -1
  br i1 %i.pr, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %.lr.ph608.2
  %i.ps = icmp samesign eq i64 %i.pf, 3
  br i1 %i.ps, label %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph608.3

.lr.ph608.3:                                      ; preds = %bb.bi
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pe, i64 3
  %.val.i.i153.3 = load i8, ptr %i.pt, align 1, !alias.scope !812, !noalias !813, !noundef !14
  %i.pu = icmp sgt i8 %.val.i.i153.3, -1
  br i1 %i.pu, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %.lr.ph608.3
  %i.pv = icmp samesign eq i64 %i.pf, 4
  br i1 %i.pv, label %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph608.4

.lr.ph608.4:                                      ; preds = %bb.bj
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %.val.i.i153.4 = load i8, ptr %i.pw, align 1, !alias.scope !812, !noalias !813, !noundef !14
  %i.px = icmp sgt i8 %.val.i.i153.4, -1
  br i1 %i.px, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %.lr.ph608.4
  %i.py = icmp samesign eq i64 %i.pf, 5
  br i1 %i.py, label %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph608.5

.lr.ph608.5:                                      ; preds = %bb.bk
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pe, i64 5
  %.val.i.i153.5 = load i8, ptr %i.pz, align 1, !alias.scope !812, !noalias !813, !noundef !14
  %i.qa = icmp sgt i8 %.val.i.i153.5, -1
  br i1 %i.qa, label %bb.bl, label %.loopexit

bb.bl:                                            ; preds = %.lr.ph608.5
  %i.qb = icmp samesign eq i64 %i.pf, 6
  br i1 %i.qb, label %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph608.6

.lr.ph608.6:                                      ; preds = %bb.bl
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pe, i64 6
  %.val.i.i153.6 = load i8, ptr %i.qc, align 1, !alias.scope !812, !noalias !813, !noundef !14
  %i.qd = icmp sgt i8 %.val.i.i153.6, -1
  br i1 %i.qd, label %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit, label %.loopexit

.lr.ph608:                                        ; preds = %._crit_edge.i
  %.val.i.i153 = load i8, ptr %i.pe, align 1, !alias.scope !812, !noalias !813, !noundef !14
  %i.qe = icmp sgt i8 %.val.i.i153, -1
  br i1 %i.qe, label %bb.bg, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %bb.bf, %.lr.ph.i.a, %.lr.ph608, %.lr.ph608.1, %.lr.ph608.2, %.lr.ph608.3, %.lr.ph608.4, %.lr.ph608.5, %.lr.ph608.6
  %i.qf = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.qg = icmp ult i64 %i.qf, 6
  call void @llvm.assume(i1 %i.qg)
  %i.qh = icmp samesign ugt i64 %i.qf, 1
  br i1 %i.qh, label %bb.bm, label %bb.bn

_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %bb.bd, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %.lr.ph608.6, %._crit_edge.i.i, %._crit_edge.i
  %.not.i155 = icmp samesign ult i64 %i.of, 2
  br i1 %.not.i155, label %bb.bp, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit158

_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit158: ; preds = %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit
  %i.qi = load i16, ptr %i.og, align 1
  %i.qj = icmp ne i16 31868, %i.qi
  %i.qk = zext i1 %i.qj to i32
  %i.ql = icmp eq i32 %i.qk, 0
  br i1 %i.ql, label %bb.bq, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit170

bb.bm:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store ptr %i.ay, ptr %i.ax, align 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.489.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !814
  store i64 2, ptr %i.cw, align 8, !noalias !814
  store ptr @36, ptr %.sroa.422.0..sroa_idx.i159, align 8, !noalias !814
  store i64 24, ptr %.sroa.523.0..sroa_idx.i160, align 8, !noalias !814
  store ptr @52, ptr %i.cx, align 8, !noalias !814
  store ptr %i.ax, ptr %i.cy, align 8, !noalias !814
  store i64 0, ptr %i.o, align 8, !noalias !814
  store ptr @36, ptr %.sroa.428.0..sroa_idx.i161, align 8, !noalias !814
  store i64 24, ptr %.sroa.529.0..sroa_idx.i162, align 8, !noalias !814
  store i64 0, ptr %i.cz, align 8, !noalias !814
  store ptr @34, ptr %.sroa.434.0..sroa_idx.i163, align 8, !noalias !814
  store i64 41, ptr %.sroa.535.0..sroa_idx.i164, align 8, !noalias !814
  store i32 1, ptr %i.da, align 8, !noalias !814
  store i32 385, ptr %i.db, align 4, !noalias !814
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o) #30, !noalias !814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.bn

bb.bn:                                            ; preds = %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules13add_tree_rule.exit, %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules12add_set_rule.exit, %bb.bm, %.loopexit, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.af
  %i.qm = icmp eq i64 %.sroa.0238.1, 0
  br i1 %i.qm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.backedge, label %bb.bo

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.backedge: ; preds = %bb.bn, %bb.bo
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9239.1) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9239.1, i64 noundef %.sroa.0238.1, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !815
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.backedge

bb.bp:                                            ; preds = %_RNvNvNtNtCsf3Ta7LF998c_4core5slice5ascii8is_ascii7runtime.exit
  %.not.i167 = icmp eq i64 %.sroa.02.1.i, %.sroa.0.042.i
  br i1 %.not.i167, label %.thread264, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit170

_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit170: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit158, %bb.bp
  %rhsc267 = load i8, ptr %i.og, align 1
  %i.qn = icmp eq i8 %rhsc267, 124
  br i1 %i.qn, label %bb.bt, label %bb.bs

bb.bq:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit158
  %i.qo = add nsw i64 %i.of, -2                   ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.og, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.qp, ptr %i.n, align 8, !noalias !816
  store i64 %i.qo, ptr %i.dc, align 8, !noalias !816
  %i.qq = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !816 ; 2 uses
  %i.qr = icmp ult i64 %i.qq, 6
  call void @llvm.assume(i1 %i.qr)
  %i.qs = icmp samesign ugt i64 %i.qq, 4
  br i1 %i.qs, label %bb.br, label %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules13add_tree_rule.exit

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !816
  store ptr %i.n, ptr %i.m, align 8, !noalias !816
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !817
  store i64 5, ptr %i.dd, align 8, !noalias !817
  store ptr @36, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !817
  store i64 24, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !817
  store ptr @294, ptr %i.de, align 8, !noalias !817
  store ptr %i.m, ptr %i.df, align 8, !noalias !817
  store i64 0, ptr %i.l, align 8, !noalias !817
  store ptr @36, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !817
  store i64 24, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !817
  store i64 0, ptr %i.dg, align 8, !noalias !817
  store ptr @34, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !817
  store i64 41, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !817
  store i32 1, ptr %i.dh, align 8, !noalias !817
  store i32 244, ptr %i.di, align 4, !noalias !817
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l) #30, !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !816
  %.pre.i171 = load ptr, ptr %i.n, align 8, !noalias !816
  %.pre3.i = load i64, ptr %i.dc, align 8, !noalias !816
  br label %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules13add_tree_rule.exit

_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules13add_tree_rule.exit: ; preds = %bb.bq, %bb.br
  %i.qt = phi i64 [ %i.qo, %bb.bq ], [ %.pre3.i, %bb.br ]
  %i.qu = phi ptr [ %i.qp, %bb.bq ], [ %.pre.i171, %bb.br ]
  %i.qv = call noundef ptr @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules19add_tree_rule_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %.sroa.027.0.ph, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qu, i64 noundef %i.qt) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not139 = icmp eq ptr %i.qv, null
  br i1 %.not139, label %bb.bn, label %bb.dn

bb.bs:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit170
  switch i64 %i.of, label %.thread264 [
    i64 12, label %bb.bv
    i64 11, label %bb.ca
    i64 20, label %bb.cb
    i64 21, label %bb.cf
    i64 13, label %bb.cl
  ]

bb.bt:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit170
  %i.qw = add i64 %i.of, -1                       ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.og, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.qx, ptr %i.k, align 8, !noalias !819
  store i64 %i.qw, ptr %i.dj, align 8, !noalias !819
  %i.qy = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !819 ; 2 uses
  %i.qz = icmp ult i64 %i.qy, 6
  call void @llvm.assume(i1 %i.qz)
  %i.ra = icmp samesign ugt i64 %i.qy, 4
  br i1 %i.ra, label %bb.bu, label %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules12add_set_rule.exit

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !819
  store ptr %i.k, ptr %i.j, align 8, !noalias !819
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i172, align 8, !noalias !819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !820
  store i64 5, ptr %i.dk, align 8, !noalias !820
  store ptr @36, ptr %.sroa.422.0..sroa_idx.i.i173, align 8, !noalias !820
  store i64 24, ptr %.sroa.523.0..sroa_idx.i.i174, align 8, !noalias !820
  store ptr @293, ptr %i.dl, align 8, !noalias !820
  store ptr %i.j, ptr %i.dm, align 8, !noalias !820
  store i64 0, ptr %i.i, align 8, !noalias !820
  store ptr @36, ptr %.sroa.428.0..sroa_idx.i.i175, align 8, !noalias !820
  store i64 24, ptr %.sroa.529.0..sroa_idx.i.i176, align 8, !noalias !820
  store i64 0, ptr %i.dn, align 8, !noalias !820
  store ptr @34, ptr %.sroa.434.0..sroa_idx.i.i177, align 8, !noalias !820
  store i64 41, ptr %.sroa.535.0..sroa_idx.i.i178, align 8, !noalias !820
  store i32 1, ptr %i.do, align 8, !noalias !820
  store i32 233, ptr %i.dp, align 4, !noalias !820
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i) #30, !noalias !821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !819
  %.pre.i179 = load ptr, ptr %i.k, align 8, !noalias !819
  %.pre3.i180 = load i64, ptr %i.dj, align 8, !noalias !819
  br label %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules12add_set_rule.exit

_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules12add_set_rule.exit: ; preds = %bb.bt, %bb.bu
  %i.rb = phi i64 [ %i.qw, %bb.bt ], [ %.pre3.i180, %bb.bu ]
  %i.rc = phi ptr [ %i.qx, %bb.bt ], [ %.pre.i179, %bb.bu ]
  %i.rd = call noundef ptr @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules18add_set_rule_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %.sroa.027.0.ph, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rc, i64 noundef %i.rb) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not138 = icmp eq ptr %i.rd, null
  br i1 %.not138, label %bb.bn, label %bb.dn

bb.bv:                                            ; preds = %bb.bs
  %i.re = load i64, ptr %i.og, align 1
  %i.rf = xor i64 %i.re, 6878231818129470043
  %i.rg = getelementptr i8, ptr %i.og, i64 8
  %i.rh = load i32, ptr %i.rg, align 1
  %i.ri = zext i32 %i.rh to i64
  %i.rj = xor i64 %i.ri, 1567386721
  %i.rk = or i64 %i.rf, %i.rj
  %i.rl = icmp ne i64 %i.rk, 0
  %i.rm = zext i1 %i.rl to i32
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bx, %bb.bv
  store i8 1, ptr %i.bg, align 1
  %i.ro = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.rp = icmp ult i64 %i.ro, 6
  call void @llvm.assume(i1 %i.rp)
  %i.rq = icmp samesign ugt i64 %i.ro, 4
  br i1 %i.rq, label %bb.dm, label %bb.dd

bb.bx:                                            ; preds = %bb.bv
  %i.rr = load i64, ptr %i.og, align 1
  %i.rs = xor i64 %i.rr, 6877967918260904539
  %i.rt = getelementptr i8, ptr %i.og, i64 8
  %i.ru = load i32, ptr %i.rt, align 1
  %i.rv = zext i32 %i.ru to i64
  %i.rw = xor i64 %i.rv, 1567386721
  %i.rx = or i64 %i.rs, %i.rw
  %i.ry = icmp ne i64 %i.rx, 0
  %i.rz = zext i1 %i.ry to i32
  %i.sa = icmp eq i32 %i.rz, 0
  br i1 %i.sa, label %bb.bw, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sb = load i64, ptr %i.og, align 1
  %i.sc = xor i64 %i.sb, 6878246111663055195
  %i.sd = getelementptr i8, ptr %i.og, i64 8
  %i.se = load i32, ptr %i.sd, align 1
  %i.sf = zext i32 %i.se to i64
end_hunk_0
