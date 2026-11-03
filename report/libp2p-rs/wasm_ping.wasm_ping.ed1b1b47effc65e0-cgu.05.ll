Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/wasm_ping.wasm_ping.ed1b1b47effc65e0-cgu.05?download=true
inline.NumInlined: 1109
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvCskm6LeB9lWb4_9wasm_ping4main0B3_:bb.a

bb.fe:                                            ; preds = %bb.fd
  %i.mc = load i8, ptr %i.ma, align 1, !noalias !1838, !noundef !7 ; 5 uses
  %i.md = icmp sgt i8 %i.mc, -1
  br i1 %i.md, label %bb.ff, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i: ; preds = %bb.fe
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %i.mf = and i8 %i.mc, 31
  %i.mg = zext nneg i8 %i.mf to i32               ; 3 uses
  %i.mh = add nuw nsw i64 %.promoted157.i.i.i.i, 1
  %i.mi = icmp samesign ne i64 %i.mh, %i.lr
  call void @llvm.assume(i1 %i.mi)
  %i.mj = load i8, ptr %i.me, align 1, !noalias !1838, !noundef !7
  %i.mk = shl nuw nsw i32 %i.mg, 6
  %i.ml = and i8 %i.mj, 63
  %i.mm = zext nneg i8 %i.ml to i32               ; 2 uses
  %i.mn = or disjoint i32 %i.mk, %i.mm
  %i.mo = icmp samesign ugt i8 %i.mc, -33
  br i1 %i.mo, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i, label %bb.fg

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  %i.mq = add nuw nsw i64 %.promoted157.i.i.i.i, 2
  %i.mr = icmp samesign ne i64 %i.mq, %i.lr
  call void @llvm.assume(i1 %i.mr)
  %i.ms = load i8, ptr %i.mp, align 1, !noalias !1838, !noundef !7
  %i.mt = shl nuw nsw i32 %i.mm, 6
  %i.mu = and i8 %i.ms, 63
  %i.mv = zext nneg i8 %i.mu to i32
  %i.mw = or disjoint i32 %i.mt, %i.mv            ; 2 uses
  %i.mx = shl nuw nsw i32 %i.mg, 12
  %i.my = or disjoint i32 %i.mw, %i.mx
  %i.mz = icmp samesign ugt i8 %i.mc, -17
  br i1 %i.mz, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i, label %bb.fg

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.ma, i64 3
  %i.nb = add nuw nsw i64 %.promoted157.i.i.i.i, 3
  %i.nc = icmp samesign ne i64 %i.nb, %i.lr
  call void @llvm.assume(i1 %i.nc)
  %i.nd = load i8, ptr %i.na, align 1, !noalias !1838, !noundef !7
  %i.ne = shl nuw nsw i32 %i.mg, 18
  %i.nf = and i32 %i.ne, 1835008
  %i.ng = shl nuw nsw i32 %i.mw, 6
  %i.nh = and i8 %i.nd, 63
  %i.ni = zext nneg i8 %i.nh to i32
  %i.nj = or disjoint i32 %i.ng, %i.ni
  %i.nk = or disjoint i32 %i.nj, %i.nf
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.nl = zext nneg i8 %i.mc to i32
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i.i = phi i32 [ %i.my, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i ], [ %i.nk, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i ], [ %i.mn, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i ], [ %i.nl, %bb.ff ] ; 4 uses
  %i.nm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.nm)
  br i1 %i.lu, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.nn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 128
  br i1 %i.nn, label %.lr.ph.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.no = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 2048
  br i1 %i.no, label %.lr.ph.i.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.np = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 65536
  %..i.us.i.peel.i.i.i = select i1 %i.np, i64 3, i64 4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fj, %bb.fi, %bb.fh
  %.sroa.01.0.i.us.i.peel.i.i.i = phi i64 [ 2, %bb.fi ], [ %..i.us.i.peel.i.i.i, %bb.fj ], [ 1, %bb.fh ]
  %i.nq = add i64 %.sroa.01.0.i.us.i.peel.i.i.i, %.promoted157.i.i.i.i ; 11 uses
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.us.i.i.i.i = icmp ult i64 %i.nq, %i.lr
  br i1 %.not.i.i.us.i.i.i.i, label %bb.fl, label %.split.i.i.us.i.i.i.i

.split.i.i.us.i.i.i.i:                            ; preds = %bb.fk
  %i.ns = icmp eq i64 %i.nq, %i.lr
  br i1 %i.ns, label %bb.fm, label %.split.us161.i.i.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.nq
  %i.nu = load i8, ptr %i.nt, align 1, !alias.scope !1836, !noalias !1839, !noundef !7
  %i.nv = icmp sgt i8 %i.nu, -65
  br i1 %i.nv, label %bb.fm, label %.split.us161.i.i.i.i

bb.fm:                                            ; preds = %bb.fl, %.split.i.i.us.i.i.i.i, %.lr.ph.i.i.i.i
  %i.nw = icmp samesign eq i64 %i.nq, %i.lr
  br i1 %i.nw, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.nq
  %i.ny = load i8, ptr %i.nx, align 1, !noalias !1840, !noundef !7 ; 3 uses
  %i.nz = icmp sgt i8 %i.ny, -1
  br i1 %i.nz, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i: ; preds = %bb.fn
  %i.oa = add nuw nsw i64 %i.nq, 1
  %i.ob = icmp samesign ne i64 %i.oa, %i.lr
  call void @llvm.assume(i1 %i.ob)
  %i.oc = icmp samesign ugt i8 %i.ny, -33
  br i1 %i.oc, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i
  %i.od = add nuw nsw i64 %i.nq, 2
  %i.oe = icmp samesign ne i64 %i.od, %i.lr
  call void @llvm.assume(i1 %i.oe)
  %i.of = icmp samesign ugt i8 %i.ny, -17
  br i1 %i.of, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i
  %i.og = add nuw nsw i64 %i.nq, 3
  %i.oh = icmp samesign ne i64 %i.og, %i.lr
  call void @llvm.assume(i1 %i.oh)
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

.split.us161.i.i.i.i:                             ; preds = %bb.fl, %.split.i.i.us.i.i.i.i, %bb.fc, %.split.i.i.us.i.peel.i.i.i
  %.lcssa37.i.i.i = phi i64 [ %.promoted157.i.i.i.i, %.split.i.i.us.i.peel.i.i.i ], [ %.promoted157.i.i.i.i, %bb.fc ], [ %i.nq, %.split.i.i.us.i.i.i.i ], [ %i.nq, %bb.fl ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lp, i64 noundef %i.lr, i64 noundef %.lcssa37.i.i.i, i64 noundef %i.lr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #28
          to label %.noexc92.i unwind label %bb.gi, !noalias !1814

.noexc92.i:                                       ; preds = %.split.us161.i.i.i.i
  unreachable

bb.fo:                                            ; preds = %.noexc91.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.oj = load i64, ptr %i.oi, align 8, !alias.scope !1835, !noalias !1834, !noundef !7 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ol = load i64, ptr %i.ok, align 8, !alias.scope !1835, !noalias !1834, !noundef !7 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ol, %i.oj
  br i1 %.not.i.i.i.i, label %bb.fq, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

bb.fp:                                            ; preds = %.noexc91.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !1835, !noalias !1834, !noundef !7 ; 2 uses
  %i.op = icmp eq i64 %i.oo, -1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.or = load ptr, ptr %i.oq, align 8, !alias.scope !1835, !noalias !1834, !nonnull !7, !noundef !7 ; 8 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.ot = load i64, ptr %i.os, align 8, !alias.scope !1835, !noalias !1834, !noundef !7 ; 10 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.ov = load ptr, ptr %i.ou, align 8, !alias.scope !1835, !noalias !1834, !nonnull !7, !noundef !7 ; 5 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.ox = load i64, ptr %i.ow, align 8, !alias.scope !1835, !noalias !1834, !noundef !7 ; 13 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.oz = add nsw i64 %i.ox, -1                   ; 5 uses
  br i1 %i.op, label %bb.gb, label %bb.ft

bb.fq:                                            ; preds = %bb.fo
  %i.pa = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.pb = load ptr, ptr %i.pa, align 8, !alias.scope !1835, !noalias !1834, !nonnull !7, !noundef !7
  %i.pc = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.pd = load i8, ptr %i.pc, align 8, !alias.scope !1835, !noalias !1834, !noundef !7 ; 2 uses
  %i.pe = sub nuw i64 %i.oj, %i.ol                ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ol ; 2 uses
  %i.pg = icmp samesign ult i64 %i.pe, 16
  br i1 %i.pg, label %.lr.ph.i.i.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ph = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.pd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pf, i64 noundef range(i64 0, -9223372036854775808) %i.pe)
          to label %.noexc93.i unwind label %bb.gi, !noalias !1814

.noexc93.i:                                       ; preds = %bb.fr
  %i.pi = extractvalue { i64, i64 } %i.ph, 0
  %i.pj = trunc nuw i64 %i.pi to i1
  br i1 %i.pj, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.fq, %bb.fs
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.pn, %bb.fs ], [ 0, %bb.fq ] ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.sroa.04.011.i.i.i.i.i
  %i.pl = load i8, ptr %i.pk, align 1, !alias.scope !1841, !noalias !1842, !noundef !7
  %i.pm = icmp eq i8 %i.pl, %i.pd
  br i1 %i.pm, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pn = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i.i = icmp eq i64 %i.pn, %i.pe
  br i1 %exitcond.not.i7.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i, label %.lr.ph.i.i.i.i.i

bb.ft:                                            ; preds = %bb.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  %.promoted.i.i.i.i.i = load i64, ptr %i.oy, align 8, !alias.scope !1846, !noalias !1834 ; 2 uses
  %i.po = add i64 %.promoted.i.i.i.i.i, %i.oz     ; 2 uses
  %i.pp = icmp ult i64 %i.po, %i.ot
  br i1 %i.pp, label %.lr.ph.i8.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.i8.i.i.i.i:                                ; preds = %bb.ft
  %i.pq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.pr = load i64, ptr %i.pq, align 8, !alias.scope !1846, !noalias !1834, !noundef !7
  %i.ps = load i64, ptr %i.om, align 8, !alias.scope !1846, !noalias !1834 ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.pu = load i64, ptr %i.pt, align 8, !alias.scope !1846, !noalias !1834 ; 2 uses
  %i.pv = sub i64 %i.ox, %i.pu
  %invariant.op = sub i64 1, %i.ps
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.fw, %.lr.ph.i8.i.i.i.i
  %.sink70.i.i22.i.i.i = phi i64 [ %.sink70.i.i.i.i.i, %bb.fw ], [ %i.oo, %.lr.ph.i8.i.i.i.i ] ; 3 uses
  %.sink71.i.i19.i.i.i = phi i64 [ %.sink71.i.i.i.i.i, %bb.fw ], [ %.promoted.i.i.i.i.i, %.lr.ph.i8.i.i.i.i ] ; 5 uses
  %i.pw = phi i64 [ %i.qf, %bb.fw ], [ %i.po, %.lr.ph.i8.i.i.i.i ]
  %i.px = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !alias.scope !1844, !noalias !1842, !noundef !7
  %i.pz = and i8 %i.py, 63
  %i.qa = zext nneg i8 %i.pz to i64
  %i.qb = shl nuw i64 1, %i.qa
  %i.qc = and i64 %i.qb, %i.pr
  %.not.i9.i.i.i.i = icmp eq i64 %i.qc, 0
  br i1 %.not.i9.i.i.i.i, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %i.qd = add i64 %.sink71.i.i19.i.i.i, %i.ox
  br label %bb.fw

bb.fv:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %..i.i10.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i22.i.i.i, i64 %i.ps) ; 2 uses
  %i.qe = icmp ult i64 %..i.i10.i.i.i.i, %i.ox
  br i1 %i.qe, label %.lr.ph, label %.preheader36.i.i.i.i.i.preheader

bb.fw:                                            ; preds = %bb.ga, %bb.fz, %bb.fu
  %.sink71.i.i.i.i.i = phi i64 [ %i.ra, %bb.ga ], [ %i.qz, %bb.fz ], [ %i.qd, %bb.fu ] ; 2 uses
  %.sink70.i.i.i.i.i = phi i64 [ 0, %bb.ga ], [ %i.pv, %bb.fz ], [ 0, %bb.fu ]
  %i.qf = add i64 %.sink71.i.i.i.i.i, %i.oz       ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %i.ot
  br i1 %i.qg, label %.lr.ph.split.i.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

bb.fx:                                            ; preds = %.lr.ph
  %i.qh = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i537, 1 ; 2 uses
  %i.qi = icmp ult i64 %i.qh, %i.ox
  br i1 %i.qi, label %.lr.ph, label %.preheader36.i.i.i.i.i.preheader

.preheader36.i.i.i.i.i.preheader:                 ; preds = %bb.fx, %bb.fv
  %i.qj = icmp ult i64 %.sink70.i.i22.i.i.i, %i.ps
  br i1 %i.qj, label %.lr.ph539, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

.lr.ph:                                           ; preds = %bb.fv, %bb.fx
  %.sroa.04.0.i.i.i.i.i537 = phi i64 [ %i.qh, %bb.fx ], [ %..i.i10.i.i.i.i, %bb.fv ] ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ov, i64 %.sroa.04.0.i.i.i.i.i537
  %i.ql = load i8, ptr %i.qk, align 1, !alias.scope !1845, !noalias !1842, !noundef !7
  %i.qm = add i64 %.sroa.04.0.i.i.i.i.i537, %.sink71.i.i19.i.i.i ; 2 uses
  %i.qn = icmp ult i64 %i.qm, %i.ot
  call void @llvm.assume(i1 %i.qn)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.qm
  %i.qp = load i8, ptr %i.qo, align 1, !alias.scope !1844, !noalias !1842, !noundef !7
  %.not21.i.i.i.i.i = icmp eq i8 %i.ql, %i.qp
  br i1 %.not21.i.i.i.i.i, label %bb.fx, label %bb.ga

.preheader36.i.i.i.i.i:                           ; preds = %bb.fy
  %i.qq = icmp ult i64 %.sink70.i.i22.i.i.i, %i.qr
  br i1 %i.qq, label %.lr.ph539, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

.lr.ph539:                                        ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i538 = phi i64 [ %i.qr, %.preheader36.i.i.i.i.i ], [ %i.ps, %.preheader36.i.i.i.i.i.preheader ]
  %i.qr = add i64 %.sroa.2.0.i.i.i.i.i538, -1     ; 6 uses
  %i.qs = icmp ult i64 %i.qr, %i.ox
  br i1 %i.qs, label %bb.fy, label %.split32.us.i20.i.i.i.invoke.i

bb.fy:                                            ; preds = %.lr.ph539
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.qr
  %i.qu = load i8, ptr %i.qt, align 1, !alias.scope !1845, !noalias !1842, !noundef !7
  %i.qv = add i64 %i.qr, %.sink71.i.i19.i.i.i     ; 2 uses
  %i.qw = icmp ult i64 %i.qv, %i.ot
  call void @llvm.assume(i1 %i.qw)
  %i.qx = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.qv
  %i.qy = load i8, ptr %i.qx, align 1, !alias.scope !1844, !noalias !1842, !noundef !7
  %.not20.i.i.i.i.i = icmp eq i8 %i.qu, %i.qy
  br i1 %.not20.i.i.i.i.i, label %.preheader36.i.i.i.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.qz = add i64 %.sink71.i.i19.i.i.i, %i.pu
  br label %bb.fw

bb.ga:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i19.i.i.i, %invariant.op
  %i.ra = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i537
  br label %bb.fw

bb.gb:                                            ; preds = %bb.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  %.promoted.i12.i.i.i.i = load i64, ptr %i.oy, align 8, !alias.scope !1850, !noalias !1834 ; 3 uses
  %i.rb = add i64 %.promoted.i12.i.i.i.i, %i.oz   ; 3 uses
  %i.rc = icmp ult i64 %i.rb, %i.ot
  br i1 %i.rc, label %.lr.ph.i15.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.i15.i.i.i.i:                               ; preds = %bb.gb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.re = load i64, ptr %i.rd, align 8, !alias.scope !1850, !noalias !1834, !noundef !7 ; 2 uses
  %i.rf = load i64, ptr %i.om, align 8, !alias.scope !1850, !noalias !1834
  %.fr215.i.i.i.i = freeze i64 %i.rf              ; 10 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.rh = load i64, ptr %i.rg, align 8, !alias.scope !1850, !noalias !1834
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr215.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ox) ; 2 uses
  %i.ri = add i64 %.fr215.i.i.i.i, -1             ; 2 uses
  %.first_iter.i16.i.i.i.i = icmp ult i64 %i.ri, %i.ox
  %reass.sub90.i.i.i = sub i64 1, %.fr215.i.i.i.i ; 2 uses
  br i1 %.first_iter.i16.i.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i15.i.i.i.i
  %exitcond.not.i17.i.i.i.i540.not = icmp ult i64 %.fr215.i.i.i.i, %i.ox
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.i.preheader:           ; preds = %.lr.ph.i15.i.i.i.i
  %exitcond.not.i17.i.i.us.i.i543.not = icmp ult i64 %.fr215.i.i.i.i, %i.ox
  %.not34.i.us.i.i.us.i.i546 = icmp eq i64 %.fr215.i.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i.i

.lr.ph.split.us.i.i.i.us.i.i:                     ; preds = %.lr.ph.split.us.i.i.i.us.i.i.preheader, %bb.ge
  %.sink.i18.i25.i.us.i.i = phi i64 [ %.sink.i18.i.i.us.i.i, %bb.ge ], [ %.promoted.i12.i.i.i.i, %.lr.ph.split.us.i.i.i.us.i.i.preheader ] ; 5 uses
  %i.rj = phi i64 [ %i.sh, %bb.ge ], [ %i.rb, %.lr.ph.split.us.i.i.i.us.i.i.preheader ]
  %i.rk = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !alias.scope !1848, !noalias !1842, !noundef !7
  %i.rm = and i8 %i.rl, 63
  %i.rn = zext nneg i8 %i.rm to i64
  %i.ro = shl nuw i64 1, %i.rn
  %i.rp = and i64 %i.ro, %i.re
  %.not.us.i.i.i.us.i.i = icmp eq i64 %i.rp, 0
  br i1 %.not.us.i.i.i.us.i.i, label %bb.gd, label %.preheader35.i.i.i.us.i.i.preheader

.preheader35.i.i.i.us.i.i.preheader:              ; preds = %.lr.ph.split.us.i.i.i.us.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i543.not, label %.lr.ph545, label %.preheader.i19.us.i.i.us.i.i.preheader

.preheader35.i.i.i.us.i.i:                        ; preds = %.lr.ph545
  %i.rq = add i64 %.sroa.04.0.us.i.i.i.us.i.i544, 1 ; 2 uses
  %exitcond.not.i17.i.i.us.i.i = icmp eq i64 %i.rq, %umax.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i, label %.preheader.i19.us.i.i.us.i.i.preheader, label %.lr.ph545

.preheader.i19.us.i.i.us.i.i.preheader:           ; preds = %.preheader35.i.i.i.us.i.i, %.preheader35.i.i.i.us.i.i.preheader
  br i1 %.not34.i.us.i.i.us.i.i546, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %.lr.ph548

.lr.ph545:                                        ; preds = %.preheader35.i.i.i.us.i.i.preheader, %.preheader35.i.i.i.us.i.i
  %.sroa.04.0.us.i.i.i.us.i.i544 = phi i64 [ %i.rq, %.preheader35.i.i.i.us.i.i ], [ %.fr215.i.i.i.i, %.preheader35.i.i.i.us.i.i.preheader ] ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ov, i64 %.sroa.04.0.us.i.i.i.us.i.i544
  %i.rs = load i8, ptr %i.rr, align 1, !alias.scope !1849, !noalias !1842, !noundef !7
  %i.rt = add i64 %.sroa.04.0.us.i.i.i.us.i.i544, %.sink.i18.i25.i.us.i.i ; 2 uses
  %i.ru = icmp ult i64 %i.rt, %i.ot
  call void @llvm.assume(i1 %i.ru)
  %i.rv = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.rt
  %i.rw = load i8, ptr %i.rv, align 1, !alias.scope !1848, !noalias !1842, !noundef !7
  %.not21.us.i.i.i.us.i.i = icmp eq i8 %i.rs, %i.rw
  br i1 %.not21.us.i.i.i.us.i.i, label %.preheader35.i.i.i.us.i.i, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph545
  %.reass282.i.reass.i.us.i.i = add i64 %.sink.i18.i25.i.us.i.i, %reass.sub90.i.i.i
  %i.rx = add i64 %.reass282.i.reass.i.us.i.i, %.sroa.04.0.us.i.i.i.us.i.i544
  br label %bb.ge

.preheader.i19.us.i.i.us.i.i:                     ; preds = %.lr.ph548
  %.not34.i.us.i.i.us.i.i = icmp eq i64 %i.ry, 0
  br i1 %.not34.i.us.i.i.us.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %.lr.ph548

.lr.ph548:                                        ; preds = %.preheader.i19.us.i.i.us.i.i.preheader, %.preheader.i19.us.i.i.us.i.i
  %.sroa.2.0.us.i.us.i.i.us.i.i547 = phi i64 [ %i.ry, %.preheader.i19.us.i.i.us.i.i ], [ %.fr215.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.preheader ]
  %i.ry = add i64 %.sroa.2.0.us.i.us.i.i.us.i.i547, -1 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !alias.scope !1849, !noalias !1842, !noundef !7
  %i.sb = add i64 %i.ry, %.sink.i18.i25.i.us.i.i  ; 2 uses
  %i.sc = icmp ult i64 %i.sb, %i.ot
  call void @llvm.assume(i1 %i.sc)
  %i.sd = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.sb
  %i.se = load i8, ptr %i.sd, align 1, !alias.scope !1848, !noalias !1842, !noundef !7
  %.not20.us.i.us.i.i.us.i.i = icmp eq i8 %i.sa, %i.se
  br i1 %.not20.us.i.us.i.i.us.i.i, label %.preheader.i19.us.i.i.us.i.i, label %.split.us.i.i.us.i.i

.split.us.i.i.us.i.i:                             ; preds = %.lr.ph548
  %i.sf = add i64 %.sink.i18.i25.i.us.i.i, %i.rh
  br label %bb.ge

bb.gd:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i.i
  %i.sg = add i64 %.sink.i18.i25.i.us.i.i, %i.ox
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.split.us.i.i.us.i.i, %bb.gc
  %.sink.i18.i.i.us.i.i = phi i64 [ %i.sg, %bb.gd ], [ %i.rx, %bb.gc ], [ %i.sf, %.split.us.i.i.us.i.i ] ; 2 uses
  %i.sh = add i64 %.sink.i18.i.i.us.i.i, %i.oz    ; 2 uses
  %i.si = icmp ult i64 %i.sh, %i.ot
  br i1 %i.si, label %.lr.ph.split.us.i.i.i.us.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %bb.gh
  %.sink.i18.i25.i.i.i = phi i64 [ %.sink.i18.i.i.i.i, %bb.gh ], [ %.promoted.i12.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 3 uses
  %i.sj = phi i64 [ %i.sz, %bb.gh ], [ %i.rb, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.sk = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.sj
  %i.sl = load i8, ptr %i.sk, align 1, !alias.scope !1848, !noalias !1842, !noundef !7
  %i.sm = and i8 %i.sl, 63
  %i.sn = zext nneg i8 %i.sm to i64
  %i.so = shl nuw i64 1, %i.sn
  %i.sp = and i64 %i.so, %i.re
  %.not.us.i.i.i.i.i = icmp eq i64 %i.sp, 0
  br i1 %.not.us.i.i.i.i.i, label %bb.gg, label %.preheader35.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.split.us.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i540.not, label %.lr.ph542, label %.preheader.i19.i.i.i.i

.preheader35.i.i.i.i.i:                           ; preds = %.lr.ph542
  %i.sq = add i64 %.sroa.04.0.us.i.i.i.i.i541, 1  ; 2 uses
  %exitcond.not.i17.i.i.i.i = icmp eq i64 %i.sq, %umax.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i, label %.preheader.i19.i.i.i.i, label %.lr.ph542

.lr.ph542:                                        ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i541 = phi i64 [ %i.sq, %.preheader35.i.i.i.i.i ], [ %.fr215.i.i.i.i, %.preheader35.i.i.i.i.i.preheader ] ; 4 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ov, i64 %.sroa.04.0.us.i.i.i.i.i541
  %i.ss = load i8, ptr %i.sr, align 1, !alias.scope !1849, !noalias !1842, !noundef !7
  %i.st = add i64 %.sroa.04.0.us.i.i.i.i.i541, %.sink.i18.i25.i.i.i ; 2 uses
  %i.su = icmp ult i64 %i.st, %i.ot
  call void @llvm.assume(i1 %i.su)
  %i.sv = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.st
  %i.sw = load i8, ptr %i.sv, align 1, !alias.scope !1848, !noalias !1842, !noundef !7
  %.not21.us.i.i.i.i.i = icmp eq i8 %i.ss, %i.sw
  br i1 %.not21.us.i.i.i.i.i, label %.preheader35.i.i.i.i.i, label %bb.gf

.preheader.i19.i.i.i.i:                           ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i64 %.fr215.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %.split32.us.i20.i.i.i.invoke.i

.split32.us.i20.i.i.i.invoke.i:                   ; preds = %.lr.ph539, %.preheader.i19.i.i.i.i
  %2 = phi i64 [ %i.ri, %.preheader.i19.i.i.i.i ], [ %i.qr, %.lr.ph539 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %i.ox, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.split32.us.i20.i.i.i.cont.i unwind label %bb.gi, !noalias !1814

.split32.us.i20.i.i.i.cont.i:                     ; preds = %.split32.us.i20.i.i.i.invoke.i
  unreachable

bb.gf:                                            ; preds = %.lr.ph542
  %.reass282.i.reass.i.i.i = add i64 %.sink.i18.i25.i.i.i, %reass.sub90.i.i.i
  %i.sx = add i64 %.reass282.i.reass.i.i.i, %.sroa.04.0.us.i.i.i.i.i541
  br label %bb.gh

bb.gg:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.sy = add i64 %.sink.i18.i25.i.i.i, %i.ox
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.sink.i18.i.i.i.i = phi i64 [ %i.sy, %bb.gg ], [ %i.sx, %bb.gf ] ; 2 uses
  %i.sz = add i64 %.sink.i18.i.i.i.i, %i.oz       ; 2 uses
  %i.ta = icmp ult i64 %i.sz, %i.ot
  br i1 %i.ta, label %.lr.ph.split.us.i.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i: ; preds = %bb.fw, %bb.gh, %bb.ge, %bb.fs, %bb.gb, %bb.ft, %.noexc93.i, %bb.fo, %.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1834
  br label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i: ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.preheader, %.preheader.i19.us.i.i.us.i.i, %.lr.ph.i.i.i.i.i, %bb.fn, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i, %.noexc93.i, %.preheader.i19.i.i.i.i, %bb.fm, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1834
  br label %bb.gl

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i: ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1834
  br i1 %i.lu, label %bb.gl, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i

bb.gi:                                            ; preds = %.split32.us.i20.i.i.i.invoke.i, %bb.fr, %.split.us161.i.i.i.i, %bb.fa
  %i.tb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #33
          to label %.body96.i unwind label %bb.ej, !noalias !1814

_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.ez
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(38) @60, ptr noundef nonnull readonly dereferenceable(38) %.sroa.3160.0.copyload.i, i64 38), !noalias !1814
  %i.tc = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.tc, label %bb.gl, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i

_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i, %bb.ez
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i unwind label %bb.gj, !noalias !1814

bb.gj:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i
  %i.td = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body96.i unwind label %bb.gk, !noalias !1814

bb.gk:                                            ; preds = %bb.gj
  %i.te = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !1814
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.go, !noalias !1814

bb.gl:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i unwind label %bb.gm, !noalias !1814

bb.gm:                                            ; preds = %bb.gl
  %i.tf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body96.i unwind label %bb.gn, !noalias !1814

bb.gn:                                            ; preds = %bb.gm
  %i.tg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !1814
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i: ; preds = %bb.gl
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit104.i unwind label %bb.go, !noalias !1814

.body96.i:                                        ; preds = %bb.go, %bb.gm, %bb.gj, %bb.gi
  %.pn34.i = phi { ptr, i32 } [ %i.tb, %bb.gi ], [ %i.td, %bb.gj ], [ %i.th, %bb.go ], [ %i.tf, %bb.gm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1813
  br label %bb.gy

bb.go:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %.body96.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1813
  br label %.thread268.i

.thread268.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.dy
  %i.ti = phi ptr [ %i.kx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.ip, %bb.dy ]
  %i.tj = phi ptr [ %i.ky, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.iq, %bb.dy ]
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  store ptr %i.tk, ptr %i.tl, align 8, !noalias !1813
  %.sroa.11158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  store i8 0, ptr %.sroa.11158.0..sroa_idx.i, align 8, !noalias !1813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1813
  br label %bb.eo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit104.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1813
  br label %bb.gp

bb.gp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit104.i, %bb.ew
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  invoke void @_RNvMs3_NtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilitiesNtB5_19DesiredCapabilities6chrome(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.tm)
          to label %bb.gr unwind label %bb.gq, !noalias !1814

.body134.i:                                       ; preds = %bb.kp, %bb.kl, %bb.kk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.gq
  %i.tn = phi ptr [ %i.uf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.uf, %bb.kp ], [ %i.tq, %bb.gq ], [ %i.ua, %bb.kl ], [ %i.ua, %bb.kk ]
  %i.to = phi ptr [ %i.ug, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.ug, %bb.kp ], [ %i.tr, %bb.gq ], [ %i.ub, %bb.kl ], [ %i.ub, %bb.kk ]
  %.pn65.i = phi { ptr, i32 } [ %.pn62.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %.pn62.pn.i, %bb.kp ], [ %i.ts, %bb.gq ], [ %i.acz, %bb.kl ], [ %i.acy, %bb.kk ]
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i8 0, ptr %i.tp, align 8, !noalias !1813
  br label %bb.gy

bb.gq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilities12CapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i.i, %bb.gp
  %i.tq = phi ptr [ %i.ua, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilities12CapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ %i.kx, %bb.gp ]
  %i.tr = phi ptr [ %i.ub, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilities12CapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ %i.ky, %bb.gp ]
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %.body134.i

bb.gr:                                            ; preds = %bb.gp
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  store i8 1, ptr %i.tt, align 8, !noalias !1813
  %i.tu = invoke noundef align 8 ptr @_RNvYNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesNtNtB6_8chromium24ChromiumLikeCapabilities12set_headlessCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tm)
          to label %bb.gs unwind label %bb.ia, !noalias !1814 ; 2 uses

bb.gs:                                            ; preds = %bb.gr
  %.not36.i = icmp eq ptr %i.tu, null
  br i1 %.not36.i, label %bb.gt, label %.invoke.i

bb.gt:                                            ; preds = %bb.gs
  %i.tv = invoke noundef align 8 ptr @_RNvYNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesNtNtB6_8chromium24ChromiumLikeCapabilities25set_disable_dev_shm_usageCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tm)
          to label %bb.gu unwind label %bb.ia, !noalias !1814 ; 2 uses

bb.gu:                                            ; preds = %bb.gt
  %.not37.i = icmp eq ptr %i.tv, null
  br i1 %.not37.i, label %bb.gv, label %.invoke.i

bb.gv:                                            ; preds = %bb.gu
  %i.tw = invoke noundef align 8 ptr @_RNvYNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesNtNtB6_8chromium24ChromiumLikeCapabilities14set_no_sandboxCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tm)
          to label %bb.gw unwind label %bb.ia, !noalias !1814 ; 2 uses

bb.gw:                                            ; preds = %bb.gv
  %.not38.i = icmp eq ptr %i.tw, null
  br i1 %.not38.i, label %.thread269.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.gw, %bb.gu, %bb.gs
  %i.tx = phi ptr [ %i.tv, %bb.gu ], [ %i.tu, %bb.gs ], [ %i.tw, %bb.gw ]
  %i.ty = invoke noundef nonnull ptr @_RNvXs_NtCscK5W4trzgIe_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs2oEMpbzoU1t_10thirtyfour5error14WebDriverErrorE4fromCskm6LeB9lWb4_9wasm_ping(ptr noalias noundef nonnull align 8 %i.tx)
          to label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.ia, !noalias !1814

.thread269.i:                                     ; preds = %bb.gw
  store i8 0, ptr %i.tt, align 8, !noalias !1813
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.la, ptr noundef nonnull align 8 dereferenceable(72) %i.tm, i64 72, i1 false), !noalias !1813
  %.sroa.8168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 816
  store ptr @61, ptr %.sroa.8168.0..sroa_idx.i, align 8, !noalias !1813
  %.sroa.9169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i64 22, ptr %.sroa.9169.0..sroa_idx.i, align 8, !noalias !1813
  %.sroa.11171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  store i8 0, ptr %.sroa.11171.0..sroa_idx.i, align 8, !noalias !1813
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 744
  br label %bb.ha

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.hv, %bb.ki, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i, %.invoke.i
  %i.ua = phi ptr [ %i.acc, %bb.ki ], [ %i.kx, %.invoke.i ], [ %i.acc, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i ], [ %i.vi, %bb.hv ] ; 4 uses
  %i.ub = phi ptr [ %i.acd, %bb.ki ], [ %i.ky, %.invoke.i ], [ %i.acd, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i ], [ %i.vj, %bb.hv ] ; 4 uses
  %.sroa.10187.2.i = phi ptr [ %i.aci, %bb.ki ], [ %i.ty, %.invoke.i ], [ %i.aci, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i ], [ %i.wq, %bb.hv ]
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.ud = load i8, ptr %i.uc, align 8, !range !15, !noalias !1813, !noundef !7
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %bb.kj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %.body111.i, %bb.ia, %bb.hz, %bb.hy
  %i.uf = phi ptr [ %i.wj, %.body111.i ], [ %i.wu, %bb.hy ], [ %i.wu, %bb.hz ], [ %i.xa, %bb.ia ] ; 2 uses
  %i.ug = phi ptr [ %i.wk, %.body111.i ], [ %i.wv, %bb.hy ], [ %i.wv, %bb.hz ], [ %i.xb, %bb.ia ] ; 2 uses
  %.pn62.pn.i = phi { ptr, i32 } [ %eh.lpad-body112.i, %.body111.i ], [ %.pn54.i, %bb.hy ], [ %.pn54.i, %bb.hz ], [ %i.xc, %bb.ia ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ui = load i8, ptr %i.uh, align 8, !range !15, !noalias !1813, !noundef !7
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %bb.kp, label %.body134.i

bb.gx:                                            ; preds = %bb.ex
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit90.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.ex
  %i.ul = phi ptr [ %i.ua, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.kx, %bb.ex ] ; 2 uses
  %i.um = phi ptr [ %i.ub, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.ky, %bb.ex ] ; 2 uses
  %.sroa.10187.3.i = phi ptr [ %.sroa.10187.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.lh, %bb.ex ]
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 528
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio2io4util5lines5LinesINtNtBG_10buf_reader9BufReaderNtNtBK_7process11ChildStdoutEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(136) %i.un)
          to label %bb.eb unwind label %bb.kg, !noalias !1814

bb.gy:                                            ; preds = %bb.gx, %.body134.i, %.body96.i, %.body.i
  %i.uo = phi ptr [ %i.tn, %.body134.i ], [ %i.kx, %bb.gx ], [ %i.kx, %.body96.i ], [ %i.ld, %.body.i ]
  %i.up = phi ptr [ %i.to, %.body134.i ], [ %i.ky, %bb.gx ], [ %i.ky, %.body96.i ], [ %i.le, %.body.i ]
  %.pn67.pn.i = phi { ptr, i32 } [ %.pn65.i, %.body134.i ], [ %i.uk, %bb.gx ], [ %.pn34.i, %.body96.i ], [ %eh.lpad-body.i, %.body.i ]
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 528
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio2io4util5lines5LinesINtNtBG_10buf_reader9BufReaderNtNtBK_7process11ChildStdoutEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(136) %i.uq) #33
          to label %bb.dz unwind label %bb.ej, !noalias !1814

bb.gz:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1813
  %.phi.trans.insert224.i = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
  %.pre225.i = load i8, ptr %.phi.trans.insert224.i, align 8, !range !28, !noalias !1851
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  switch i8 %.pre225.i, label %default.unreachable494 [
    i8 0, label %._crit_edge419
    i8 1, label %bb.hf
    i8 2, label %bb.hg
    i8 3, label %bb.hb
  ]

._crit_edge419:                                   ; preds = %bb.gz
  %.phi.trans.insert420 = getelementptr inbounds nuw i8, ptr %0, i64 816
  %.pre421 = load ptr, ptr %.phi.trans.insert420, align 8, !noalias !1851
  %.phi.trans.insert422 = getelementptr inbounds nuw i8, ptr %0, i64 824
  %.pre423 = load i64, ptr %.phi.trans.insert422, align 8, !noalias !1851
  br label %bb.ha

end_hunk_0
