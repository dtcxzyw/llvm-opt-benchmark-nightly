Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/wasm_ping.wasm_ping.ed1b1b47effc65e0-cgu.14?download=true
inline.NumInlined: 1104
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RNCNvCskm6LeB9lWb4_9wasm_ping4main0B3_:bb.a

bb.fg:                                            ; preds = %bb.ff
  %i.ma = load i8, ptr %i.ly, align 1, !noalias !1903, !noundef !10 ; 5 uses
  %i.mb = icmp sgt i8 %i.ma, -1
  br i1 %i.mb, label %bb.fh, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i: ; preds = %bb.fg
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.md = and i8 %i.ma, 31
  %i.me = zext nneg i8 %i.md to i32               ; 3 uses
  %i.mf = add nuw nsw i64 %.promoted157.i.i.i.i, 1
  %i.mg = icmp samesign ne i64 %i.mf, %i.lp
  call void @llvm.assume(i1 %i.mg)
  %i.mh = load i8, ptr %i.mc, align 1, !noalias !1903, !noundef !10
  %i.mi = shl nuw nsw i32 %i.me, 6
  %i.mj = and i8 %i.mh, 63
  %i.mk = zext nneg i8 %i.mj to i32               ; 2 uses
  %i.ml = or disjoint i32 %i.mi, %i.mk
  %i.mm = icmp samesign ugt i8 %i.ma, -33
  br i1 %i.mm, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i, label %bb.fi

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ly, i64 2
  %i.mo = add nuw nsw i64 %.promoted157.i.i.i.i, 2
  %i.mp = icmp samesign ne i64 %i.mo, %i.lp
  call void @llvm.assume(i1 %i.mp)
  %i.mq = load i8, ptr %i.mn, align 1, !noalias !1903, !noundef !10
  %i.mr = shl nuw nsw i32 %i.mk, 6
  %i.ms = and i8 %i.mq, 63
  %i.mt = zext nneg i8 %i.ms to i32
  %i.mu = or disjoint i32 %i.mr, %i.mt            ; 2 uses
  %i.mv = shl nuw nsw i32 %i.me, 12
  %i.mw = or disjoint i32 %i.mu, %i.mv
  %i.mx = icmp samesign ugt i8 %i.ma, -17
  br i1 %i.mx, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i, label %bb.fi

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.ly, i64 3
  %i.mz = add nuw nsw i64 %.promoted157.i.i.i.i, 3
  %i.na = icmp samesign ne i64 %i.mz, %i.lp
  call void @llvm.assume(i1 %i.na)
  %i.nb = load i8, ptr %i.my, align 1, !noalias !1903, !noundef !10
  %i.nc = shl nuw nsw i32 %i.me, 18
  %i.nd = and i32 %i.nc, 1835008
  %i.ne = shl nuw nsw i32 %i.mu, 6
  %i.nf = and i8 %i.nb, 63
  %i.ng = zext nneg i8 %i.nf to i32
  %i.nh = or disjoint i32 %i.ne, %i.ng
  %i.ni = or disjoint i32 %i.nh, %i.nd
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.nj = zext nneg i8 %i.ma to i32
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i.i = phi i32 [ %i.mw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i ], [ %i.ni, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i ], [ %i.ml, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i ], [ %i.nj, %bb.fh ] ; 4 uses
  %i.nk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.nk)
  br i1 %i.ls, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.nl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 128
  br i1 %i.nl, label %.lr.ph.i.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.nm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 2048
  br i1 %i.nm, label %.lr.ph.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.nn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 65536
  %..i.us.i.peel.i.i.i = select i1 %i.nn, i64 3, i64 4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fl, %bb.fk, %bb.fj
  %.sroa.01.0.i.us.i.peel.i.i.i = phi i64 [ 2, %bb.fk ], [ %..i.us.i.peel.i.i.i, %bb.fl ], [ 1, %bb.fj ]
  %i.no = add i64 %.sroa.01.0.i.us.i.peel.i.i.i, %.promoted157.i.i.i.i ; 11 uses
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.us.i.i.i.i = icmp ult i64 %i.no, %i.lp
  br i1 %.not.i.i.us.i.i.i.i, label %bb.fn, label %.split.i.i.us.i.i.i.i

.split.i.i.us.i.i.i.i:                            ; preds = %bb.fm
  %i.nq = icmp eq i64 %i.no, %i.lp
  br i1 %i.nq, label %bb.fo, label %.split.us161.i.i.i.i

bb.fn:                                            ; preds = %bb.fm
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.no
  %i.ns = load i8, ptr %i.nr, align 1, !alias.scope !1901, !noalias !1904, !noundef !10
  %i.nt = icmp sgt i8 %i.ns, -65
  br i1 %i.nt, label %bb.fo, label %.split.us161.i.i.i.i

bb.fo:                                            ; preds = %bb.fn, %.split.i.i.us.i.i.i.i, %.lr.ph.i.i.i.i
  %i.nu = icmp samesign eq i64 %i.no, %i.lp
  br i1 %i.nu, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.no
  %i.nw = load i8, ptr %i.nv, align 1, !noalias !1905, !noundef !10 ; 3 uses
  %i.nx = icmp sgt i8 %i.nw, -1
  br i1 %i.nx, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i: ; preds = %bb.fp
  %i.ny = add nuw nsw i64 %i.no, 1
  %i.nz = icmp samesign ne i64 %i.ny, %i.lp
  call void @llvm.assume(i1 %i.nz)
  %i.oa = icmp samesign ugt i8 %i.nw, -33
  br i1 %i.oa, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i
  %i.ob = add nuw nsw i64 %i.no, 2
  %i.oc = icmp samesign ne i64 %i.ob, %i.lp
  call void @llvm.assume(i1 %i.oc)
  %i.od = icmp samesign ugt i8 %i.nw, -17
  br i1 %i.od, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i
  %i.oe = add nuw nsw i64 %i.no, 3
  %i.of = icmp samesign ne i64 %i.oe, %i.lp
  call void @llvm.assume(i1 %i.of)
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

.split.us161.i.i.i.i:                             ; preds = %bb.fn, %.split.i.i.us.i.i.i.i, %bb.fe, %.split.i.i.us.i.peel.i.i.i
  %.lcssa37.i.i.i = phi i64 [ %.promoted157.i.i.i.i, %.split.i.i.us.i.peel.i.i.i ], [ %.promoted157.i.i.i.i, %bb.fe ], [ %i.no, %.split.i.i.us.i.i.i.i ], [ %i.no, %bb.fn ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ln, i64 noundef %i.lp, i64 noundef %.lcssa37.i.i.i, i64 noundef %i.lp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #24
          to label %.noexc92.i unwind label %bb.gk, !noalias !1881

.noexc92.i:                                       ; preds = %.split.us161.i.i.i.i
  unreachable

bb.fq:                                            ; preds = %.noexc91.i
  %i.og = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.oh = load i64, ptr %i.og, align 8, !alias.scope !1900, !noalias !1899, !noundef !10 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.oj = load i64, ptr %i.oi, align 8, !alias.scope !1900, !noalias !1899, !noundef !10 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.oj, %i.oh
  br i1 %.not.i.i.i.i, label %bb.fs, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

bb.fr:                                            ; preds = %.noexc91.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.om = load i64, ptr %i.ol, align 8, !alias.scope !1900, !noalias !1899, !noundef !10 ; 2 uses
  %i.on = icmp eq i64 %i.om, -1
  %i.oo = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.op = load ptr, ptr %i.oo, align 8, !alias.scope !1900, !noalias !1899, !nonnull !10, !noundef !10 ; 8 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.or = load i64, ptr %i.oq, align 8, !alias.scope !1900, !noalias !1899, !noundef !10 ; 10 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.ot = load ptr, ptr %i.os, align 8, !alias.scope !1900, !noalias !1899, !nonnull !10, !noundef !10 ; 5 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.ov = load i64, ptr %i.ou, align 8, !alias.scope !1900, !noalias !1899, !noundef !10 ; 13 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.ox = add nsw i64 %i.ov, -1                   ; 5 uses
  br i1 %i.on, label %bb.gd, label %bb.fv

bb.fs:                                            ; preds = %bb.fq
  %i.oy = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.oz = load ptr, ptr %i.oy, align 8, !alias.scope !1900, !noalias !1899, !nonnull !10, !noundef !10
  %i.pa = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.pb = load i8, ptr %i.pa, align 8, !alias.scope !1900, !noalias !1899, !noundef !10 ; 2 uses
  %i.pc = sub nuw i64 %i.oh, %i.oj                ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.oj ; 2 uses
  %i.pe = icmp samesign ult i64 %i.pc, 16
  br i1 %i.pe, label %.lr.ph.i.i.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.pf = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.pb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pd, i64 noundef range(i64 0, -9223372036854775808) %i.pc)
          to label %.noexc93.i unwind label %bb.gk, !noalias !1881

.noexc93.i:                                       ; preds = %bb.ft
  %i.pg = extractvalue { i64, i64 } %i.pf, 0
  %i.ph = trunc nuw i64 %i.pg to i1
  br i1 %i.ph, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.fs, %bb.fu
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.pl, %bb.fu ], [ 0, %bb.fs ] ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 %.sroa.04.011.i.i.i.i.i
  %i.pj = load i8, ptr %i.pi, align 1, !alias.scope !1906, !noalias !1907, !noundef !10
  %i.pk = icmp eq i8 %i.pj, %i.pb
  br i1 %i.pk, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %bb.fu

bb.fu:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pl = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i.i = icmp eq i64 %i.pl, %i.pc
  br i1 %exitcond.not.i7.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i, label %.lr.ph.i.i.i.i.i

bb.fv:                                            ; preds = %bb.fr
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  %.promoted.i.i.i.i.i = load i64, ptr %i.ow, align 8, !alias.scope !1911, !noalias !1899 ; 2 uses
  %i.pm = add i64 %.promoted.i.i.i.i.i, %i.ox     ; 2 uses
  %i.pn = icmp ult i64 %i.pm, %i.or
  br i1 %i.pn, label %.lr.ph.i8.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.i8.i.i.i.i:                                ; preds = %bb.fv
  %i.po = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.pp = load i64, ptr %i.po, align 8, !alias.scope !1911, !noalias !1899, !noundef !10
  %i.pq = load i64, ptr %i.ok, align 8, !alias.scope !1911, !noalias !1899
  %.fr60.i.i.i.i.i = freeze i64 %i.pq             ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ps = load i64, ptr %i.pr, align 8, !alias.scope !1911, !noalias !1899 ; 2 uses
  %i.pt = sub i64 %i.ov, %i.ps
  %invariant.op = sub i64 1, %.fr60.i.i.i.i.i
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.fy, %.lr.ph.i8.i.i.i.i
  %.sink70.i.i22.i.i.i = phi i64 [ %.sink70.i.i.i.i.i, %bb.fy ], [ %i.om, %.lr.ph.i8.i.i.i.i ] ; 3 uses
  %.sink71.i.i19.i.i.i = phi i64 [ %.sink71.i.i.i.i.i, %bb.fy ], [ %.promoted.i.i.i.i.i, %.lr.ph.i8.i.i.i.i ] ; 5 uses
  %i.pu = phi i64 [ %i.qd, %bb.fy ], [ %i.pm, %.lr.ph.i8.i.i.i.i ]
  %i.pv = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !alias.scope !1909, !noalias !1907, !noundef !10
  %i.px = and i8 %i.pw, 63
  %i.py = zext nneg i8 %i.px to i64
  %i.pz = shl nuw i64 1, %i.py
  %i.qa = and i64 %i.pz, %i.pp
  %.not.i9.i.i.i.i = icmp eq i64 %i.qa, 0
  br i1 %.not.i9.i.i.i.i, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %i.qb = add i64 %.sink71.i.i19.i.i.i, %i.ov
  br label %bb.fy

bb.fx:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %..i.i10.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i22.i.i.i, i64 %.fr60.i.i.i.i.i) ; 2 uses
  %i.qc = icmp ult i64 %..i.i10.i.i.i.i, %i.ov
  br i1 %i.qc, label %.lr.ph, label %.preheader36.i.i.i.i.i.preheader

bb.fy:                                            ; preds = %bb.gc, %bb.gb, %bb.fw
  %.sink71.i.i.i.i.i = phi i64 [ %i.qy, %bb.gc ], [ %i.qx, %bb.gb ], [ %i.qb, %bb.fw ] ; 2 uses
  %.sink70.i.i.i.i.i = phi i64 [ 0, %bb.gc ], [ %i.pt, %bb.gb ], [ 0, %bb.fw ]
  %i.qd = add i64 %.sink71.i.i.i.i.i, %i.ox       ; 2 uses
  %i.qe = icmp ult i64 %i.qd, %i.or
  br i1 %i.qe, label %.lr.ph.split.i.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

bb.fz:                                            ; preds = %.lr.ph
  %i.qf = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i538, 1 ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %i.ov
  br i1 %i.qg, label %.lr.ph, label %.preheader36.i.i.i.i.i.preheader

.preheader36.i.i.i.i.i.preheader:                 ; preds = %bb.fz, %bb.fx
  %i.qh = icmp ult i64 %.sink70.i.i22.i.i.i, %.fr60.i.i.i.i.i
  br i1 %i.qh, label %.lr.ph540, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

.lr.ph:                                           ; preds = %bb.fx, %bb.fz
  %.sroa.04.0.i.i.i.i.i538 = phi i64 [ %i.qf, %bb.fz ], [ %..i.i10.i.i.i.i, %bb.fx ] ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.sroa.04.0.i.i.i.i.i538
  %i.qj = load i8, ptr %i.qi, align 1, !alias.scope !1910, !noalias !1907, !noundef !10
  %i.qk = add i64 %.sroa.04.0.i.i.i.i.i538, %.sink71.i.i19.i.i.i ; 2 uses
  %i.ql = icmp ult i64 %i.qk, %i.or
  call void @llvm.assume(i1 %i.ql)
  %i.qm = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.qk
  %i.qn = load i8, ptr %i.qm, align 1, !alias.scope !1909, !noalias !1907, !noundef !10
  %.not21.i.i.i.i.i = icmp eq i8 %i.qj, %i.qn
  br i1 %.not21.i.i.i.i.i, label %bb.fz, label %bb.gc

.preheader36.i.i.i.i.i:                           ; preds = %bb.ga
  %i.qo = icmp ult i64 %.sink70.i.i22.i.i.i, %i.qp
  br i1 %i.qo, label %.lr.ph540, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

.lr.ph540:                                        ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i539 = phi i64 [ %i.qp, %.preheader36.i.i.i.i.i ], [ %.fr60.i.i.i.i.i, %.preheader36.i.i.i.i.i.preheader ]
  %i.qp = add i64 %.sroa.2.0.i.i.i.i.i539, -1     ; 6 uses
  %i.qq = icmp ult i64 %i.qp, %i.ov
  br i1 %i.qq, label %bb.ga, label %.split32.us.i22.i.i.i.invoke.i

bb.ga:                                            ; preds = %.lr.ph540
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.qp
  %i.qs = load i8, ptr %i.qr, align 1, !alias.scope !1910, !noalias !1907, !noundef !10
  %i.qt = add i64 %i.qp, %.sink71.i.i19.i.i.i     ; 2 uses
  %i.qu = icmp ult i64 %i.qt, %i.or
  call void @llvm.assume(i1 %i.qu)
  %i.qv = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.qt
  %i.qw = load i8, ptr %i.qv, align 1, !alias.scope !1909, !noalias !1907, !noundef !10
  %.not20.i.i.i.i.i = icmp eq i8 %i.qs, %i.qw
  br i1 %.not20.i.i.i.i.i, label %.preheader36.i.i.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.qx = add i64 %.sink71.i.i19.i.i.i, %i.ps
  br label %bb.fy

bb.gc:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i19.i.i.i, %invariant.op
  %i.qy = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i538
  br label %bb.fy

bb.gd:                                            ; preds = %bb.fr
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  %.promoted.i12.i.i.i.i = load i64, ptr %i.ow, align 8, !alias.scope !1915, !noalias !1899 ; 3 uses
  %i.qz = add i64 %.promoted.i12.i.i.i.i, %i.ox   ; 3 uses
  %i.ra = icmp ult i64 %i.qz, %i.or
  br i1 %i.ra, label %.lr.ph.i15.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.i15.i.i.i.i:                               ; preds = %bb.gd
  %i.rb = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !1915, !noalias !1899, !noundef !10 ; 2 uses
  %i.rd = load i64, ptr %i.ok, align 8, !alias.scope !1915, !noalias !1899
  %.fr215.i.i.i.i = freeze i64 %i.rd              ; 10 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.rf = load i64, ptr %i.re, align 8, !alias.scope !1915, !noalias !1899
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr215.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ov) ; 2 uses
  %i.rg = add i64 %.fr215.i.i.i.i, -1             ; 2 uses
  %.first_iter.i16.i.i.i.i = icmp ult i64 %i.rg, %i.ov
  %reass.sub90.i.i.i = sub i64 1, %.fr215.i.i.i.i ; 2 uses
  br i1 %.first_iter.i16.i.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i15.i.i.i.i
  %exitcond.not.i17.i.i.i.i541.not = icmp ult i64 %.fr215.i.i.i.i, %i.ov
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.i.preheader:           ; preds = %.lr.ph.i15.i.i.i.i
  %exitcond.not.i17.i.i.us.i.i544.not = icmp ult i64 %.fr215.i.i.i.i, %i.ov
  %.not34.i.us.i.i.us.i.i547 = icmp eq i64 %.fr215.i.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i.i

.lr.ph.split.us.i.i.i.us.i.i:                     ; preds = %.lr.ph.split.us.i.i.i.us.i.i.preheader, %bb.gg
  %.sink.i18.i25.i.us.i.i = phi i64 [ %.sink.i18.i.i.us.i.i, %bb.gg ], [ %.promoted.i12.i.i.i.i, %.lr.ph.split.us.i.i.i.us.i.i.preheader ] ; 5 uses
  %i.rh = phi i64 [ %i.sf, %bb.gg ], [ %i.qz, %.lr.ph.split.us.i.i.i.us.i.i.preheader ]
  %i.ri = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !alias.scope !1913, !noalias !1907, !noundef !10
  %i.rk = and i8 %i.rj, 63
  %i.rl = zext nneg i8 %i.rk to i64
  %i.rm = shl nuw i64 1, %i.rl
  %i.rn = and i64 %i.rm, %i.rc
  %.not.us.i.i.i.us.i.i = icmp eq i64 %i.rn, 0
  br i1 %.not.us.i.i.i.us.i.i, label %bb.gf, label %.preheader35.i.i.i.us.i.i.preheader

.preheader35.i.i.i.us.i.i.preheader:              ; preds = %.lr.ph.split.us.i.i.i.us.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i544.not, label %.lr.ph546, label %.preheader.i19.us.i.i.us.i.i.preheader

.preheader35.i.i.i.us.i.i:                        ; preds = %.lr.ph546
  %i.ro = add i64 %.sroa.04.0.us.i.i.i.us.i.i545, 1 ; 2 uses
  %exitcond.not.i17.i.i.us.i.i = icmp eq i64 %i.ro, %umax.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i, label %.preheader.i19.us.i.i.us.i.i.preheader, label %.lr.ph546

.preheader.i19.us.i.i.us.i.i.preheader:           ; preds = %.preheader35.i.i.i.us.i.i, %.preheader35.i.i.i.us.i.i.preheader
  br i1 %.not34.i.us.i.i.us.i.i547, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %.lr.ph549

.lr.ph546:                                        ; preds = %.preheader35.i.i.i.us.i.i.preheader, %.preheader35.i.i.i.us.i.i
  %.sroa.04.0.us.i.i.i.us.i.i545 = phi i64 [ %i.ro, %.preheader35.i.i.i.us.i.i ], [ %.fr215.i.i.i.i, %.preheader35.i.i.i.us.i.i.preheader ] ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.sroa.04.0.us.i.i.i.us.i.i545
  %i.rq = load i8, ptr %i.rp, align 1, !alias.scope !1914, !noalias !1907, !noundef !10
  %i.rr = add i64 %.sroa.04.0.us.i.i.i.us.i.i545, %.sink.i18.i25.i.us.i.i ; 2 uses
  %i.rs = icmp ult i64 %i.rr, %i.or
  call void @llvm.assume(i1 %i.rs)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.rr
  %i.ru = load i8, ptr %i.rt, align 1, !alias.scope !1913, !noalias !1907, !noundef !10
  %.not21.us.i.i.i.us.i.i = icmp eq i8 %i.rq, %i.ru
  br i1 %.not21.us.i.i.i.us.i.i, label %.preheader35.i.i.i.us.i.i, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph546
  %.reass282.i.reass.i.us.i.i = add i64 %.sink.i18.i25.i.us.i.i, %reass.sub90.i.i.i
  %i.rv = add i64 %.reass282.i.reass.i.us.i.i, %.sroa.04.0.us.i.i.i.us.i.i545
  br label %bb.gg

.preheader.i19.us.i.i.us.i.i:                     ; preds = %.lr.ph549
  %.not34.i.us.i.i.us.i.i = icmp eq i64 %i.rw, 0
  br i1 %.not34.i.us.i.i.us.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %.lr.ph549

.lr.ph549:                                        ; preds = %.preheader.i19.us.i.i.us.i.i.preheader, %.preheader.i19.us.i.i.us.i.i
  %.sroa.2.0.us.i.us.i.i.us.i.i548 = phi i64 [ %i.rw, %.preheader.i19.us.i.i.us.i.i ], [ %.fr215.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.preheader ]
  %i.rw = add i64 %.sroa.2.0.us.i.us.i.i.us.i.i548, -1 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !alias.scope !1914, !noalias !1907, !noundef !10
  %i.rz = add i64 %i.rw, %.sink.i18.i25.i.us.i.i  ; 2 uses
  %i.sa = icmp ult i64 %i.rz, %i.or
  call void @llvm.assume(i1 %i.sa)
  %i.sb = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.rz
  %i.sc = load i8, ptr %i.sb, align 1, !alias.scope !1913, !noalias !1907, !noundef !10
  %.not20.us.i.us.i.i.us.i.i = icmp eq i8 %i.ry, %i.sc
  br i1 %.not20.us.i.us.i.i.us.i.i, label %.preheader.i19.us.i.i.us.i.i, label %.split.us.i.i.us.i.i

.split.us.i.i.us.i.i:                             ; preds = %.lr.ph549
  %i.sd = add i64 %.sink.i18.i25.i.us.i.i, %i.rf
  br label %bb.gg

bb.gf:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i.i
  %i.se = add i64 %.sink.i18.i25.i.us.i.i, %i.ov
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %.split.us.i.i.us.i.i, %bb.ge
  %.sink.i18.i.i.us.i.i = phi i64 [ %i.se, %bb.gf ], [ %i.rv, %bb.ge ], [ %i.sd, %.split.us.i.i.us.i.i ] ; 2 uses
  %i.sf = add i64 %.sink.i18.i.i.us.i.i, %i.ox    ; 2 uses
  %i.sg = icmp ult i64 %i.sf, %i.or
  br i1 %i.sg, label %.lr.ph.split.us.i.i.i.us.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %bb.gj
  %.sink.i18.i25.i.i.i = phi i64 [ %.sink.i18.i.i.i.i, %bb.gj ], [ %.promoted.i12.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 3 uses
  %i.sh = phi i64 [ %i.sx, %bb.gj ], [ %i.qz, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.si = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !alias.scope !1913, !noalias !1907, !noundef !10
  %i.sk = and i8 %i.sj, 63
  %i.sl = zext nneg i8 %i.sk to i64
  %i.sm = shl nuw i64 1, %i.sl
  %i.sn = and i64 %i.sm, %i.rc
  %.not.us.i.i.i.i.i = icmp eq i64 %i.sn, 0
  br i1 %.not.us.i.i.i.i.i, label %bb.gi, label %.preheader35.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.split.us.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i541.not, label %.lr.ph543, label %.preheader.split.i21.i.i.i.i

.preheader35.i.i.i.i.i:                           ; preds = %.lr.ph543
  %i.so = add i64 %.sroa.04.0.us.i.i.i.i.i542, 1  ; 2 uses
  %exitcond.not.i17.i.i.i.i = icmp eq i64 %i.so, %umax.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i, label %.preheader.split.i21.i.i.i.i, label %.lr.ph543

.preheader.split.i21.i.i.i.i:                     ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i64 %.fr215.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %.split32.us.i22.i.i.i.invoke.i

.lr.ph543:                                        ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i542 = phi i64 [ %i.so, %.preheader35.i.i.i.i.i ], [ %.fr215.i.i.i.i, %.preheader35.i.i.i.i.i.preheader ] ; 4 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.sroa.04.0.us.i.i.i.i.i542
  %i.sq = load i8, ptr %i.sp, align 1, !alias.scope !1914, !noalias !1907, !noundef !10
  %i.sr = add i64 %.sroa.04.0.us.i.i.i.i.i542, %.sink.i18.i25.i.i.i ; 2 uses
  %i.ss = icmp ult i64 %i.sr, %i.or
  call void @llvm.assume(i1 %i.ss)
  %i.st = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.sr
  %i.su = load i8, ptr %i.st, align 1, !alias.scope !1913, !noalias !1907, !noundef !10
  %.not21.us.i.i.i.i.i = icmp eq i8 %i.sq, %i.su
  br i1 %.not21.us.i.i.i.i.i, label %.preheader35.i.i.i.i.i, label %bb.gh

bb.gh:                                            ; preds = %.lr.ph543
  %.reass282.i.reass.i.i.i = add i64 %.sink.i18.i25.i.i.i, %reass.sub90.i.i.i
  %i.sv = add i64 %.reass282.i.reass.i.i.i, %.sroa.04.0.us.i.i.i.i.i542
  br label %bb.gj

bb.gi:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.sw = add i64 %.sink.i18.i25.i.i.i, %i.ov
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.sink.i18.i.i.i.i = phi i64 [ %i.sw, %bb.gi ], [ %i.sv, %bb.gh ] ; 2 uses
  %i.sx = add i64 %.sink.i18.i.i.i.i, %i.ox       ; 2 uses
  %i.sy = icmp ult i64 %i.sx, %i.or
  br i1 %i.sy, label %.lr.ph.split.us.i.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.split32.us.i22.i.i.i.invoke.i:                   ; preds = %.lr.ph540, %.preheader.split.i21.i.i.i.i
  %2 = phi i64 [ %i.rg, %.preheader.split.i21.i.i.i.i ], [ %i.qp, %.lr.ph540 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %i.ov, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #24
          to label %.split32.us.i22.i.i.i.cont.i unwind label %bb.gk, !noalias !1881

.split32.us.i22.i.i.i.cont.i:                     ; preds = %.split32.us.i22.i.i.i.invoke.i
  unreachable

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i: ; preds = %bb.fy, %bb.gj, %bb.gg, %bb.fu, %bb.gd, %bb.fv, %.noexc93.i, %bb.fq, %.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1899
  br label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i: ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.preheader, %.preheader.i19.us.i.i.us.i.i, %.lr.ph.i.i.i.i.i, %bb.fp, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i, %.noexc93.i, %.preheader.split.i21.i.i.i.i, %bb.fo, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1899
  br label %bb.gn

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i: ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1899
  br i1 %i.ls, label %bb.gn, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i

bb.gk:                                            ; preds = %.split32.us.i22.i.i.i.invoke.i, %bb.ft, %.split.us161.i.i.i.i, %bb.fc
  %i.sz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #25
          to label %.body96.i unwind label %bb.el, !noalias !1881

_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.fb
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(38) @65, ptr noundef nonnull readonly dereferenceable(38) %.sroa.3160.0.copyload.i, i64 38), !noalias !1881
  %i.ta = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ta, label %bb.gn, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i

_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i, %bb.fb
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i unwind label %bb.gl, !noalias !1881

bb.gl:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i
  %i.tb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body96.i unwind label %bb.gm, !noalias !1881

bb.gm:                                            ; preds = %bb.gl
  %i.tc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1881
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.gq, !noalias !1881

bb.gn:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i unwind label %bb.go, !noalias !1881

bb.go:                                            ; preds = %bb.gn
  %i.td = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body96.i unwind label %bb.gp, !noalias !1881

bb.gp:                                            ; preds = %bb.go
  %i.te = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1881
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i: ; preds = %bb.gn
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit104.i unwind label %bb.gq, !noalias !1881

.body96.i:                                        ; preds = %bb.gq, %bb.go, %bb.gl, %bb.gk
  %.pn34.i = phi { ptr, i32 } [ %i.sz, %bb.gk ], [ %i.tb, %bb.gl ], [ %i.tf, %bb.gq ], [ %i.td, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1880
  br label %bb.ha

bb.gq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %.body96.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1880
  br label %.thread268.i

.thread268.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.ea
  %i.tg = phi ptr [ %i.ku, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.in, %bb.ea ]
  %i.th = phi ptr [ %i.kv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.io, %bb.ea ]
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  store ptr %i.ti, ptr %i.tj, align 8, !noalias !1880
  %.sroa.11158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  store i8 0, ptr %.sroa.11158.0..sroa_idx.i, align 8, !noalias !1880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1880
  br label %bb.eq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit104.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1880
  br label %bb.gr

bb.gr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit104.i, %bb.ey
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  invoke void @_RNvMs3_NtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilitiesNtB5_19DesiredCapabilities6chrome(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.tk)
          to label %bb.gt unwind label %bb.gs, !noalias !1881

.body134.i:                                       ; preds = %bb.kr, %bb.kn, %bb.km, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.gs
  %i.tl = phi ptr [ %i.ud, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.ud, %bb.kr ], [ %i.to, %bb.gs ], [ %i.ty, %bb.kn ], [ %i.ty, %bb.km ]
  %i.tm = phi ptr [ %i.ue, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.ue, %bb.kr ], [ %i.tp, %bb.gs ], [ %i.tz, %bb.kn ], [ %i.tz, %bb.km ]
  %.pn65.i = phi { ptr, i32 } [ %.pn62.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %.pn62.pn.i, %bb.kr ], [ %i.tq, %bb.gs ], [ %i.acx, %bb.kn ], [ %i.acw, %bb.km ]
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i8 0, ptr %i.tn, align 8, !noalias !1880
  br label %bb.ha

bb.gs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilities12CapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i.i, %bb.gr
  %i.to = phi ptr [ %i.ty, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilities12CapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ %i.ku, %bb.gr ]
  %i.tp = phi ptr [ %i.tz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilities12CapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ %i.kv, %bb.gr ]
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %.body134.i

bb.gt:                                            ; preds = %bb.gr
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  store i8 1, ptr %i.tr, align 8, !noalias !1880
  %i.ts = invoke noundef align 8 ptr @_RNvYNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesNtNtB6_8chromium24ChromiumLikeCapabilities12set_headlessCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tk)
          to label %bb.gu unwind label %bb.ic, !noalias !1881 ; 2 uses

bb.gu:                                            ; preds = %bb.gt
  %.not36.i = icmp eq ptr %i.ts, null
  br i1 %.not36.i, label %bb.gv, label %.invoke.i

bb.gv:                                            ; preds = %bb.gu
  %i.tt = invoke noundef align 8 ptr @_RNvYNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesNtNtB6_8chromium24ChromiumLikeCapabilities25set_disable_dev_shm_usageCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tk)
          to label %bb.gw unwind label %bb.ic, !noalias !1881 ; 2 uses

bb.gw:                                            ; preds = %bb.gv
  %.not37.i = icmp eq ptr %i.tt, null
  br i1 %.not37.i, label %bb.gx, label %.invoke.i

bb.gx:                                            ; preds = %bb.gw
  %i.tu = invoke noundef align 8 ptr @_RNvYNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesNtNtB6_8chromium24ChromiumLikeCapabilities14set_no_sandboxCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tk)
          to label %bb.gy unwind label %bb.ic, !noalias !1881 ; 2 uses

bb.gy:                                            ; preds = %bb.gx
  %.not38.i = icmp eq ptr %i.tu, null
  br i1 %.not38.i, label %.thread269.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.gy, %bb.gw, %bb.gu
  %i.tv = phi ptr [ %i.tt, %bb.gw ], [ %i.ts, %bb.gu ], [ %i.tu, %bb.gy ]
  %i.tw = invoke noundef nonnull ptr @_RNvXs_NtCscK5W4trzgIe_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs2oEMpbzoU1t_10thirtyfour5error14WebDriverErrorE4fromCskm6LeB9lWb4_9wasm_ping(ptr noalias noundef nonnull align 8 %i.tv)
          to label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.ic, !noalias !1881

.thread269.i:                                     ; preds = %bb.gy
  store i8 0, ptr %i.tr, align 8, !noalias !1880
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kx, ptr noundef nonnull align 8 dereferenceable(72) %i.tk, i64 72, i1 false), !noalias !1880
  %.sroa.8168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 816
  store ptr @66, ptr %.sroa.8168.0..sroa_idx.i, align 8, !noalias !1880
  %.sroa.9169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i64 22, ptr %.sroa.9169.0..sroa_idx.i, align 8, !noalias !1880
  %.sroa.11171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  store i8 0, ptr %.sroa.11171.0..sroa_idx.i, align 8, !noalias !1880
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 744
  br label %bb.hc

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.hx, %bb.kk, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i, %.invoke.i
  %i.ty = phi ptr [ %i.aca, %bb.kk ], [ %i.ku, %.invoke.i ], [ %i.aca, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i ], [ %i.vg, %bb.hx ] ; 4 uses
  %i.tz = phi ptr [ %i.acb, %bb.kk ], [ %i.kv, %.invoke.i ], [ %i.acb, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i ], [ %i.vh, %bb.hx ] ; 4 uses
  %.sroa.10187.2.i = phi ptr [ %i.acg, %bb.kk ], [ %i.tw, %.invoke.i ], [ %i.acg, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i ], [ %i.wo, %bb.hx ]
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 8, !range !13, !noalias !1880, !noundef !10
  %i.uc = trunc nuw i8 %i.ub to i1
  br i1 %i.uc, label %bb.kl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %.body111.i, %bb.ic, %bb.ib, %bb.ia
  %i.ud = phi ptr [ %i.wh, %.body111.i ], [ %i.ws, %bb.ia ], [ %i.ws, %bb.ib ], [ %i.wy, %bb.ic ] ; 2 uses
  %i.ue = phi ptr [ %i.wi, %.body111.i ], [ %i.wt, %bb.ia ], [ %i.wt, %bb.ib ], [ %i.wz, %bb.ic ] ; 2 uses
  %.pn62.pn.i = phi { ptr, i32 } [ %eh.lpad-body112.i, %.body111.i ], [ %.pn54.i, %bb.ia ], [ %.pn54.i, %bb.ib ], [ %i.xa, %bb.ic ] ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ug = load i8, ptr %i.uf, align 8, !range !13, !noalias !1880, !noundef !10
  %i.uh = trunc nuw i8 %i.ug to i1
  br i1 %i.uh, label %bb.kr, label %.body134.i

bb.gz:                                            ; preds = %bb.ez
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit90.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.ez
  %i.uj = phi ptr [ %i.ty, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.ku, %bb.ez ] ; 2 uses
  %i.uk = phi ptr [ %i.tz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.kv, %bb.ez ] ; 2 uses
  %.sroa.10187.3.i = phi ptr [ %.sroa.10187.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.lf, %bb.ez ]
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 528
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio2io4util5lines5LinesINtNtBG_10buf_reader9BufReaderNtNtBK_7process11ChildStdoutEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(136) %i.ul)
          to label %bb.ed unwind label %bb.ki, !noalias !1881

bb.ha:                                            ; preds = %bb.gz, %.body134.i, %.body96.i, %.body.i
  %i.um = phi ptr [ %i.tl, %.body134.i ], [ %i.ku, %bb.gz ], [ %i.ku, %.body96.i ], [ %i.lb, %.body.i ]
  %i.un = phi ptr [ %i.tm, %.body134.i ], [ %i.kv, %bb.gz ], [ %i.kv, %.body96.i ], [ %i.lc, %.body.i ]
  %.pn67.pn.i = phi { ptr, i32 } [ %.pn65.i, %.body134.i ], [ %i.ui, %bb.gz ], [ %.pn34.i, %.body96.i ], [ %eh.lpad-body.i, %.body.i ]
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 528
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio2io4util5lines5LinesINtNtBG_10buf_reader9BufReaderNtNtBK_7process11ChildStdoutEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(136) %i.uo) #25
          to label %bb.eb unwind label %bb.el, !noalias !1881

bb.hb:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1880
  %.phi.trans.insert224.i = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
  %.pre225.i = load i8, ptr %.phi.trans.insert224.i, align 8, !range !30, !noalias !1916
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  switch i8 %.pre225.i, label %default.unreachable495 [
    i8 0, label %._crit_edge421
    i8 1, label %bb.hh
    i8 2, label %bb.hi
    i8 3, label %bb.hd
  ]

._crit_edge421:                                   ; preds = %bb.hb
  %.phi.trans.insert422 = getelementptr inbounds nuw i8, ptr %0, i64 816
  %.pre423 = load ptr, ptr %.phi.trans.insert422, align 8, !noalias !1916
  %.phi.trans.insert424 = getelementptr inbounds nuw i8, ptr %0, i64 824
  %.pre425 = load i64, ptr %.phi.trans.insert424, align 8, !noalias !1916
  br label %bb.hc

end_hunk_0
