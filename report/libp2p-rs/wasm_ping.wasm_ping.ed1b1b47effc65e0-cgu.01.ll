Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/wasm_ping.wasm_ping.ed1b1b47effc65e0-cgu.01?download=true
inline.NumInlined: 1402
inline.NumDeleted: 731
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvCskm6LeB9lWb4_9wasm_ping4main0B3_:bb.a

bb.ff:                                            ; preds = %bb.fe
  %i.mb = load i8, ptr %i.lz, align 1, !noalias !2859, !noundef !11 ; 5 uses
  %i.mc = icmp sgt i8 %i.mb, -1
  br i1 %i.mc, label %bb.fg, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i: ; preds = %bb.ff
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.me = and i8 %i.mb, 31
  %i.mf = zext nneg i8 %i.me to i32               ; 3 uses
  %i.mg = add nuw nsw i64 %.promoted157.i.i.i.i, 1
  %i.mh = icmp samesign ne i64 %i.mg, %i.lq
  call void @llvm.assume(i1 %i.mh)
  %i.mi = load i8, ptr %i.md, align 1, !noalias !2859, !noundef !11
  %i.mj = shl nuw nsw i32 %i.mf, 6
  %i.mk = and i8 %i.mi, 63
  %i.ml = zext nneg i8 %i.mk to i32               ; 2 uses
  %i.mm = or disjoint i32 %i.mj, %i.ml
  %i.mn = icmp samesign ugt i8 %i.mb, -33
  br i1 %i.mn, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i, label %bb.fh

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lz, i64 2
  %i.mp = add nuw nsw i64 %.promoted157.i.i.i.i, 2
  %i.mq = icmp samesign ne i64 %i.mp, %i.lq
  call void @llvm.assume(i1 %i.mq)
  %i.mr = load i8, ptr %i.mo, align 1, !noalias !2859, !noundef !11
  %i.ms = shl nuw nsw i32 %i.ml, 6
  %i.mt = and i8 %i.mr, 63
  %i.mu = zext nneg i8 %i.mt to i32
  %i.mv = or disjoint i32 %i.ms, %i.mu            ; 2 uses
  %i.mw = shl nuw nsw i32 %i.mf, 12
  %i.mx = or disjoint i32 %i.mv, %i.mw
  %i.my = icmp samesign ugt i8 %i.mb, -17
  br i1 %i.my, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i, label %bb.fh

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lz, i64 3
  %i.na = add nuw nsw i64 %.promoted157.i.i.i.i, 3
  %i.nb = icmp samesign ne i64 %i.na, %i.lq
  call void @llvm.assume(i1 %i.nb)
  %i.nc = load i8, ptr %i.mz, align 1, !noalias !2859, !noundef !11
  %i.nd = shl nuw nsw i32 %i.mf, 18
  %i.ne = and i32 %i.nd, 1835008
  %i.nf = shl nuw nsw i32 %i.mv, 6
  %i.ng = and i8 %i.nc, 63
  %i.nh = zext nneg i8 %i.ng to i32
  %i.ni = or disjoint i32 %i.nf, %i.nh
  %i.nj = or disjoint i32 %i.ni, %i.ne
  br label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.nk = zext nneg i8 %i.mb to i32
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i.i = phi i32 [ %i.mx, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.peel.i.i.i ], [ %i.nj, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.peel.i.i.i ], [ %i.mm, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.peel.i.i.i ], [ %i.nk, %bb.fg ] ; 4 uses
  %i.nl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.nl)
  br i1 %i.lt, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.nm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 128
  br i1 %i.nm, label %.lr.ph.i.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.nn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 2048
  br i1 %i.nn, label %.lr.ph.i.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.no = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i, 65536
  %..i.us.i.peel.i.i.i = select i1 %i.no, i64 3, i64 4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fk, %bb.fj, %bb.fi
  %.sroa.01.0.i.us.i.peel.i.i.i = phi i64 [ 2, %bb.fj ], [ %..i.us.i.peel.i.i.i, %bb.fk ], [ 1, %bb.fi ]
  %i.np = add i64 %.sroa.01.0.i.us.i.peel.i.i.i, %.promoted157.i.i.i.i ; 11 uses
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.us.i.i.i.i = icmp ult i64 %i.np, %i.lq
  br i1 %.not.i.i.us.i.i.i.i, label %bb.fm, label %.split.i.i.us.i.i.i.i

.split.i.i.us.i.i.i.i:                            ; preds = %bb.fl
  %i.nr = icmp eq i64 %i.np, %i.lq
  br i1 %i.nr, label %bb.fn, label %.split.us161.i.i.i.i

bb.fm:                                            ; preds = %bb.fl
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.np
  %i.nt = load i8, ptr %i.ns, align 1, !alias.scope !2857, !noalias !2860, !noundef !11
  %i.nu = icmp sgt i8 %i.nt, -65
  br i1 %i.nu, label %bb.fn, label %.split.us161.i.i.i.i

bb.fn:                                            ; preds = %bb.fm, %.split.i.i.us.i.i.i.i, %.lr.ph.i.i.i.i
  %i.nv = icmp samesign eq i64 %i.np, %i.lq
  br i1 %i.nv, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.nw = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.np
  %i.nx = load i8, ptr %i.nw, align 1, !noalias !2861, !noundef !11 ; 3 uses
  %i.ny = icmp sgt i8 %i.nx, -1
  br i1 %i.ny, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i: ; preds = %bb.fo
  %i.nz = add nuw nsw i64 %i.np, 1
  %i.oa = icmp samesign ne i64 %i.nz, %i.lq
  call void @llvm.assume(i1 %i.oa)
  %i.ob = icmp samesign ugt i8 %i.nx, -33
  br i1 %i.ob, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i
  %i.oc = add nuw nsw i64 %i.np, 2
  %i.od = icmp samesign ne i64 %i.oc, %i.lq
  call void @llvm.assume(i1 %i.od)
  %i.oe = icmp samesign ugt i8 %i.nx, -17
  br i1 %i.oe, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i
  %i.of = add nuw nsw i64 %i.np, 3
  %i.og = icmp samesign ne i64 %i.of, %i.lq
  call void @llvm.assume(i1 %i.og)
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

.split.us161.i.i.i.i:                             ; preds = %bb.fm, %.split.i.i.us.i.i.i.i, %bb.fd, %.split.i.i.us.i.peel.i.i.i
  %.lcssa37.i.i.i = phi i64 [ %.promoted157.i.i.i.i, %.split.i.i.us.i.peel.i.i.i ], [ %.promoted157.i.i.i.i, %bb.fd ], [ %i.np, %.split.i.i.us.i.i.i.i ], [ %i.np, %bb.fm ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lo, i64 noundef %i.lq, i64 noundef %.lcssa37.i.i.i, i64 noundef %i.lq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #28
          to label %.noexc92.i unwind label %bb.gj, !noalias !2837

.noexc92.i:                                       ; preds = %.split.us161.i.i.i.i
  unreachable

bb.fp:                                            ; preds = %.noexc91.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.oi = load i64, ptr %i.oh, align 8, !alias.scope !2856, !noalias !2855, !noundef !11 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ok = load i64, ptr %i.oj, align 8, !alias.scope !2856, !noalias !2855, !noundef !11 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ok, %i.oi
  br i1 %.not.i.i.i.i, label %bb.fr, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

bb.fq:                                            ; preds = %.noexc91.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.on = load i64, ptr %i.om, align 8, !alias.scope !2856, !noalias !2855, !noundef !11 ; 2 uses
  %i.oo = icmp eq i64 %i.on, -1
  %i.op = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.oq = load ptr, ptr %i.op, align 8, !alias.scope !2856, !noalias !2855, !nonnull !11, !noundef !11 ; 8 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.os = load i64, ptr %i.or, align 8, !alias.scope !2856, !noalias !2855, !noundef !11 ; 10 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.ou = load ptr, ptr %i.ot, align 8, !alias.scope !2856, !noalias !2855, !nonnull !11, !noundef !11 ; 5 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.ow = load i64, ptr %i.ov, align 8, !alias.scope !2856, !noalias !2855, !noundef !11 ; 13 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.oy = add nsw i64 %i.ow, -1                   ; 5 uses
  br i1 %i.oo, label %bb.gc, label %bb.fu

bb.fr:                                            ; preds = %bb.fp
  %i.oz = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.pa = load ptr, ptr %i.oz, align 8, !alias.scope !2856, !noalias !2855, !nonnull !11, !noundef !11
  %i.pb = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.pc = load i8, ptr %i.pb, align 8, !alias.scope !2856, !noalias !2855, !noundef !11 ; 2 uses
  %i.pd = sub nuw i64 %i.oi, %i.ok                ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.ok ; 2 uses
  %i.pf = icmp samesign ult i64 %i.pd, 16
  br i1 %i.pf, label %.lr.ph.i.i.i.i.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.pg = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.pc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pe, i64 noundef range(i64 0, -9223372036854775808) %i.pd)
          to label %.noexc93.i unwind label %bb.gj, !noalias !2837

.noexc93.i:                                       ; preds = %bb.fs
  %i.ph = extractvalue { i64, i64 } %i.pg, 0
  %i.pi = trunc nuw i64 %i.ph to i1
  br i1 %i.pi, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.fr, %bb.ft
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.pm, %bb.ft ], [ 0, %bb.fr ] ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 %.sroa.04.011.i.i.i.i.i
  %i.pk = load i8, ptr %i.pj, align 1, !alias.scope !2862, !noalias !2863, !noundef !11
  %i.pl = icmp eq i8 %i.pk, %i.pc
  br i1 %i.pl, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pm = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i.i = icmp eq i64 %i.pm, %i.pd
  br i1 %exitcond.not.i7.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i, label %.lr.ph.i.i.i.i.i

bb.fu:                                            ; preds = %bb.fq
  call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  call void @llvm.experimental.noalias.scope.decl(metadata !2866)
  %.promoted.i.i.i.i.i = load i64, ptr %i.ox, align 8, !alias.scope !2867, !noalias !2855 ; 2 uses
  %i.pn = add i64 %.promoted.i.i.i.i.i, %i.oy     ; 2 uses
  %i.po = icmp ult i64 %i.pn, %i.os
  br i1 %i.po, label %.lr.ph.i8.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.i8.i.i.i.i:                                ; preds = %bb.fu
  %i.pp = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.pq = load i64, ptr %i.pp, align 8, !alias.scope !2867, !noalias !2855, !noundef !11
  %i.pr = load i64, ptr %i.ol, align 8, !alias.scope !2867, !noalias !2855
  %.fr60.i.i.i.i.i = freeze i64 %i.pr             ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !2867, !noalias !2855 ; 2 uses
  %i.pu = sub i64 %i.ow, %i.pt
  %invariant.op = sub i64 1, %.fr60.i.i.i.i.i
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.fx, %.lr.ph.i8.i.i.i.i
  %.sink70.i.i22.i.i.i = phi i64 [ %.sink70.i.i.i.i.i, %bb.fx ], [ %i.on, %.lr.ph.i8.i.i.i.i ] ; 3 uses
  %.sink71.i.i19.i.i.i = phi i64 [ %.sink71.i.i.i.i.i, %bb.fx ], [ %.promoted.i.i.i.i.i, %.lr.ph.i8.i.i.i.i ] ; 5 uses
  %i.pv = phi i64 [ %i.qe, %bb.fx ], [ %i.pn, %.lr.ph.i8.i.i.i.i ]
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.pv
  %i.px = load i8, ptr %i.pw, align 1, !alias.scope !2865, !noalias !2863, !noundef !11
  %i.py = and i8 %i.px, 63
  %i.pz = zext nneg i8 %i.py to i64
  %i.qa = shl nuw i64 1, %i.pz
  %i.qb = and i64 %i.qa, %i.pq
  %.not.i9.i.i.i.i = icmp eq i64 %i.qb, 0
  br i1 %.not.i9.i.i.i.i, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %i.qc = add i64 %.sink71.i.i19.i.i.i, %i.ow
  br label %bb.fx

bb.fw:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %..i.i10.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i22.i.i.i, i64 %.fr60.i.i.i.i.i) ; 2 uses
  %i.qd = icmp ult i64 %..i.i10.i.i.i.i, %i.ow
  br i1 %i.qd, label %.lr.ph, label %.preheader36.i.i.i.i.i.preheader

bb.fx:                                            ; preds = %bb.gb, %bb.ga, %bb.fv
  %.sink71.i.i.i.i.i = phi i64 [ %i.qz, %bb.gb ], [ %i.qy, %bb.ga ], [ %i.qc, %bb.fv ] ; 2 uses
  %.sink70.i.i.i.i.i = phi i64 [ 0, %bb.gb ], [ %i.pu, %bb.ga ], [ 0, %bb.fv ]
  %i.qe = add i64 %.sink71.i.i.i.i.i, %i.oy       ; 2 uses
  %i.qf = icmp ult i64 %i.qe, %i.os
  br i1 %i.qf, label %.lr.ph.split.i.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

bb.fy:                                            ; preds = %.lr.ph
  %i.qg = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i539, 1 ; 2 uses
  %i.qh = icmp ult i64 %i.qg, %i.ow
  br i1 %i.qh, label %.lr.ph, label %.preheader36.i.i.i.i.i.preheader

.preheader36.i.i.i.i.i.preheader:                 ; preds = %bb.fy, %bb.fw
  %i.qi = icmp ult i64 %.sink70.i.i22.i.i.i, %.fr60.i.i.i.i.i
  br i1 %i.qi, label %.lr.ph541, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

.lr.ph:                                           ; preds = %bb.fw, %bb.fy
  %.sroa.04.0.i.i.i.i.i539 = phi i64 [ %i.qg, %bb.fy ], [ %..i.i10.i.i.i.i, %bb.fw ] ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.sroa.04.0.i.i.i.i.i539
  %i.qk = load i8, ptr %i.qj, align 1, !alias.scope !2866, !noalias !2863, !noundef !11
  %i.ql = add i64 %.sroa.04.0.i.i.i.i.i539, %.sink71.i.i19.i.i.i ; 2 uses
  %i.qm = icmp ult i64 %i.ql, %i.os
  call void @llvm.assume(i1 %i.qm)
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ql
  %i.qo = load i8, ptr %i.qn, align 1, !alias.scope !2865, !noalias !2863, !noundef !11
  %.not21.i.i.i.i.i = icmp eq i8 %i.qk, %i.qo
  br i1 %.not21.i.i.i.i.i, label %bb.fy, label %bb.gb

.preheader36.i.i.i.i.i:                           ; preds = %bb.fz
  %i.qp = icmp ult i64 %.sink70.i.i22.i.i.i, %i.qq
  br i1 %i.qp, label %.lr.ph541, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i

.lr.ph541:                                        ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i540 = phi i64 [ %i.qq, %.preheader36.i.i.i.i.i ], [ %.fr60.i.i.i.i.i, %.preheader36.i.i.i.i.i.preheader ]
  %i.qq = add i64 %.sroa.2.0.i.i.i.i.i540, -1     ; 6 uses
  %i.qr = icmp ult i64 %i.qq, %i.ow
  br i1 %i.qr, label %bb.fz, label %.split32.us.i22.i.i.i.invoke.i

bb.fz:                                            ; preds = %.lr.ph541
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.qq
  %i.qt = load i8, ptr %i.qs, align 1, !alias.scope !2866, !noalias !2863, !noundef !11
  %i.qu = add i64 %i.qq, %.sink71.i.i19.i.i.i     ; 2 uses
  %i.qv = icmp ult i64 %i.qu, %i.os
  call void @llvm.assume(i1 %i.qv)
  %i.qw = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.qu
  %i.qx = load i8, ptr %i.qw, align 1, !alias.scope !2865, !noalias !2863, !noundef !11
  %.not20.i.i.i.i.i = icmp eq i8 %i.qt, %i.qx
  br i1 %.not20.i.i.i.i.i, label %.preheader36.i.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.qy = add i64 %.sink71.i.i19.i.i.i, %i.pt
  br label %bb.fx

bb.gb:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i19.i.i.i, %invariant.op
  %i.qz = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i539
  br label %bb.fx

bb.gc:                                            ; preds = %bb.fq
  call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  call void @llvm.experimental.noalias.scope.decl(metadata !2870)
  %.promoted.i12.i.i.i.i = load i64, ptr %i.ox, align 8, !alias.scope !2871, !noalias !2855 ; 3 uses
  %i.ra = add i64 %.promoted.i12.i.i.i.i, %i.oy   ; 3 uses
  %i.rb = icmp ult i64 %i.ra, %i.os
  br i1 %i.rb, label %.lr.ph.i15.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.i15.i.i.i.i:                               ; preds = %bb.gc
  %i.rc = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.rd = load i64, ptr %i.rc, align 8, !alias.scope !2871, !noalias !2855, !noundef !11 ; 2 uses
  %i.re = load i64, ptr %i.ol, align 8, !alias.scope !2871, !noalias !2855
  %.fr215.i.i.i.i = freeze i64 %i.re              ; 10 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.rg = load i64, ptr %i.rf, align 8, !alias.scope !2871, !noalias !2855
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr215.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ow) ; 2 uses
  %i.rh = add i64 %.fr215.i.i.i.i, -1             ; 2 uses
  %.first_iter.i16.i.i.i.i = icmp ult i64 %i.rh, %i.ow
  %reass.sub90.i.i.i = sub i64 1, %.fr215.i.i.i.i ; 2 uses
  br i1 %.first_iter.i16.i.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i15.i.i.i.i
  %exitcond.not.i17.i.i.i.i542.not = icmp ult i64 %.fr215.i.i.i.i, %i.ow
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.i.preheader:           ; preds = %.lr.ph.i15.i.i.i.i
  %exitcond.not.i17.i.i.us.i.i545.not = icmp ult i64 %.fr215.i.i.i.i, %i.ow
  %.not34.i.us.i.i.us.i.i548 = icmp eq i64 %.fr215.i.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i.i

.lr.ph.split.us.i.i.i.us.i.i:                     ; preds = %.lr.ph.split.us.i.i.i.us.i.i.preheader, %bb.gf
  %.sink.i18.i25.i.us.i.i = phi i64 [ %.sink.i18.i.i.us.i.i, %bb.gf ], [ %.promoted.i12.i.i.i.i, %.lr.ph.split.us.i.i.i.us.i.i.preheader ] ; 5 uses
  %i.ri = phi i64 [ %i.sg, %bb.gf ], [ %i.ra, %.lr.ph.split.us.i.i.i.us.i.i.preheader ]
  %i.rj = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !alias.scope !2869, !noalias !2863, !noundef !11
  %i.rl = and i8 %i.rk, 63
  %i.rm = zext nneg i8 %i.rl to i64
  %i.rn = shl nuw i64 1, %i.rm
  %i.ro = and i64 %i.rn, %i.rd
  %.not.us.i.i.i.us.i.i = icmp eq i64 %i.ro, 0
  br i1 %.not.us.i.i.i.us.i.i, label %bb.ge, label %.preheader35.i.i.i.us.i.i.preheader

.preheader35.i.i.i.us.i.i.preheader:              ; preds = %.lr.ph.split.us.i.i.i.us.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i545.not, label %.lr.ph547, label %.preheader.i19.us.i.i.us.i.i.preheader

.preheader35.i.i.i.us.i.i:                        ; preds = %.lr.ph547
  %i.rp = add i64 %.sroa.04.0.us.i.i.i.us.i.i546, 1 ; 2 uses
  %exitcond.not.i17.i.i.us.i.i = icmp eq i64 %i.rp, %umax.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i, label %.preheader.i19.us.i.i.us.i.i.preheader, label %.lr.ph547

.preheader.i19.us.i.i.us.i.i.preheader:           ; preds = %.preheader35.i.i.i.us.i.i, %.preheader35.i.i.i.us.i.i.preheader
  br i1 %.not34.i.us.i.i.us.i.i548, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %.lr.ph550

.lr.ph547:                                        ; preds = %.preheader35.i.i.i.us.i.i.preheader, %.preheader35.i.i.i.us.i.i
  %.sroa.04.0.us.i.i.i.us.i.i546 = phi i64 [ %i.rp, %.preheader35.i.i.i.us.i.i ], [ %.fr215.i.i.i.i, %.preheader35.i.i.i.us.i.i.preheader ] ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.sroa.04.0.us.i.i.i.us.i.i546
  %i.rr = load i8, ptr %i.rq, align 1, !alias.scope !2870, !noalias !2863, !noundef !11
  %i.rs = add i64 %.sroa.04.0.us.i.i.i.us.i.i546, %.sink.i18.i25.i.us.i.i ; 2 uses
  %i.rt = icmp ult i64 %i.rs, %i.os
  call void @llvm.assume(i1 %i.rt)
  %i.ru = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.rs
  %i.rv = load i8, ptr %i.ru, align 1, !alias.scope !2869, !noalias !2863, !noundef !11
  %.not21.us.i.i.i.us.i.i = icmp eq i8 %i.rr, %i.rv
  br i1 %.not21.us.i.i.i.us.i.i, label %.preheader35.i.i.i.us.i.i, label %bb.gd

bb.gd:                                            ; preds = %.lr.ph547
  %.reass282.i.reass.i.us.i.i = add i64 %.sink.i18.i25.i.us.i.i, %reass.sub90.i.i.i
  %i.rw = add i64 %.reass282.i.reass.i.us.i.i, %.sroa.04.0.us.i.i.i.us.i.i546
  br label %bb.gf

.preheader.i19.us.i.i.us.i.i:                     ; preds = %.lr.ph550
  %.not34.i.us.i.i.us.i.i = icmp eq i64 %i.rx, 0
  br i1 %.not34.i.us.i.i.us.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %.lr.ph550

.lr.ph550:                                        ; preds = %.preheader.i19.us.i.i.us.i.i.preheader, %.preheader.i19.us.i.i.us.i.i
  %.sroa.2.0.us.i.us.i.i.us.i.i549 = phi i64 [ %i.rx, %.preheader.i19.us.i.i.us.i.i ], [ %.fr215.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.preheader ]
  %i.rx = add i64 %.sroa.2.0.us.i.us.i.i.us.i.i549, -1 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !alias.scope !2870, !noalias !2863, !noundef !11
  %i.sa = add i64 %i.rx, %.sink.i18.i25.i.us.i.i  ; 2 uses
  %i.sb = icmp ult i64 %i.sa, %i.os
  call void @llvm.assume(i1 %i.sb)
  %i.sc = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.sa
  %i.sd = load i8, ptr %i.sc, align 1, !alias.scope !2869, !noalias !2863, !noundef !11
  %.not20.us.i.us.i.i.us.i.i = icmp eq i8 %i.rz, %i.sd
  br i1 %.not20.us.i.us.i.i.us.i.i, label %.preheader.i19.us.i.i.us.i.i, label %.split.us.i.i.us.i.i

.split.us.i.i.us.i.i:                             ; preds = %.lr.ph550
  %i.se = add i64 %.sink.i18.i25.i.us.i.i, %i.rg
  br label %bb.gf

bb.ge:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i.i
  %i.sf = add i64 %.sink.i18.i25.i.us.i.i, %i.ow
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %.split.us.i.i.us.i.i, %bb.gd
  %.sink.i18.i.i.us.i.i = phi i64 [ %i.sf, %bb.ge ], [ %i.rw, %bb.gd ], [ %i.se, %.split.us.i.i.us.i.i ] ; 2 uses
  %i.sg = add i64 %.sink.i18.i.i.us.i.i, %i.oy    ; 2 uses
  %i.sh = icmp ult i64 %i.sg, %i.os
  br i1 %i.sh, label %.lr.ph.split.us.i.i.i.us.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %bb.gi
  %.sink.i18.i25.i.i.i = phi i64 [ %.sink.i18.i.i.i.i, %bb.gi ], [ %.promoted.i12.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 3 uses
  %i.si = phi i64 [ %i.sy, %bb.gi ], [ %i.ra, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.sj = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.si
  %i.sk = load i8, ptr %i.sj, align 1, !alias.scope !2869, !noalias !2863, !noundef !11
  %i.sl = and i8 %i.sk, 63
  %i.sm = zext nneg i8 %i.sl to i64
  %i.sn = shl nuw i64 1, %i.sm
  %i.so = and i64 %i.sn, %i.rd
  %.not.us.i.i.i.i.i = icmp eq i64 %i.so, 0
  br i1 %.not.us.i.i.i.i.i, label %bb.gh, label %.preheader35.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.split.us.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i542.not, label %.lr.ph544, label %.preheader.split.i21.i.i.i.i

.preheader35.i.i.i.i.i:                           ; preds = %.lr.ph544
  %i.sp = add i64 %.sroa.04.0.us.i.i.i.i.i543, 1  ; 2 uses
  %exitcond.not.i17.i.i.i.i = icmp eq i64 %i.sp, %umax.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i, label %.preheader.split.i21.i.i.i.i, label %.lr.ph544

.preheader.split.i21.i.i.i.i:                     ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i64 %.fr215.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i, label %.split32.us.i22.i.i.i.invoke.i

.lr.ph544:                                        ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i543 = phi i64 [ %i.sp, %.preheader35.i.i.i.i.i ], [ %.fr215.i.i.i.i, %.preheader35.i.i.i.i.i.preheader ] ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.sroa.04.0.us.i.i.i.i.i543
  %i.sr = load i8, ptr %i.sq, align 1, !alias.scope !2870, !noalias !2863, !noundef !11
  %i.ss = add i64 %.sroa.04.0.us.i.i.i.i.i543, %.sink.i18.i25.i.i.i ; 2 uses
  %i.st = icmp ult i64 %i.ss, %i.os
  call void @llvm.assume(i1 %i.st)
  %i.su = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ss
  %i.sv = load i8, ptr %i.su, align 1, !alias.scope !2869, !noalias !2863, !noundef !11
  %.not21.us.i.i.i.i.i = icmp eq i8 %i.sr, %i.sv
  br i1 %.not21.us.i.i.i.i.i, label %.preheader35.i.i.i.i.i, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph544
  %.reass282.i.reass.i.i.i = add i64 %.sink.i18.i25.i.i.i, %reass.sub90.i.i.i
  %i.sw = add i64 %.reass282.i.reass.i.i.i, %.sroa.04.0.us.i.i.i.i.i543
  br label %bb.gi

bb.gh:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.sx = add i64 %.sink.i18.i25.i.i.i, %i.ow
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.sink.i18.i.i.i.i = phi i64 [ %i.sx, %bb.gh ], [ %i.sw, %bb.gg ] ; 2 uses
  %i.sy = add i64 %.sink.i18.i.i.i.i, %i.oy       ; 2 uses
  %i.sz = icmp ult i64 %i.sy, %i.os
  br i1 %i.sz, label %.lr.ph.split.us.i.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i

.split32.us.i22.i.i.i.invoke.i:                   ; preds = %.lr.ph541, %.preheader.split.i21.i.i.i.i
  %2 = phi i64 [ %i.rh, %.preheader.split.i21.i.i.i.i ], [ %i.qq, %.lr.ph541 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %i.ow, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #28
          to label %.split32.us.i22.i.i.i.cont.i unwind label %bb.gj, !noalias !2837

.split32.us.i22.i.i.i.cont.i:                     ; preds = %.split32.us.i22.i.i.i.invoke.i
  unreachable

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i: ; preds = %bb.fx, %bb.gi, %bb.gf, %bb.ft, %bb.gc, %bb.fu, %.noexc93.i, %bb.fp, %.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2855
  br label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i: ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i, %.preheader.i19.us.i.i.us.i.i.preheader, %.preheader.i19.us.i.i.us.i.i, %.lr.ph.i.i.i.i.i, %bb.fo, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit16.i.i.us.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit14.i.i.us.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping.exit12.i.i.us.i.i.i.i, %.noexc93.i, %.preheader.split.i21.i.i.i.i, %bb.fn, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2855
  br label %bb.gm

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i: ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2855
  br i1 %i.lt, label %bb.gm, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i

bb.gj:                                            ; preds = %.split32.us.i22.i.i.i.invoke.i, %bb.fs, %.split.us161.i.i.i.i, %bb.fb
  %i.ta = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #30
          to label %.body96.i unwind label %bb.ek, !noalias !2837

_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.fa
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(38) @68, ptr noundef nonnull readonly dereferenceable(38) %.sroa.3160.0.copyload.i, i64 38), !noalias !2837
  %i.tb = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.tb, label %bb.gm, label %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i

_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread.i, %bb.fa
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i unwind label %bb.gk, !noalias !2837

bb.gk:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i
  %i.tc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body96.i unwind label %bb.gl, !noalias !2837

bb.gl:                                            ; preds = %bb.gk
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !2837
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.thread.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.gp, !noalias !2837

bb.gm:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsReECskm6LeB9lWb4_9wasm_ping.exit.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.thread204.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i unwind label %bb.gn, !noalias !2837

bb.gn:                                            ; preds = %bb.gm
  %i.te = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body96.i unwind label %bb.go, !noalias !2837

bb.go:                                            ; preds = %bb.gn
  %i.tf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !2837
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i: ; preds = %bb.gm
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit104.i unwind label %bb.gp, !noalias !2837

.body96.i:                                        ; preds = %bb.gp, %bb.gn, %bb.gk, %bb.gj
  %.pn34.i = phi { ptr, i32 } [ %i.ta, %bb.gj ], [ %i.tc, %bb.gk ], [ %i.tg, %bb.gp ], [ %i.te, %bb.gn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2836
  br label %bb.gz

bb.gp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %.body96.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2836
  br label %.thread268.i

.thread268.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.dz
  %i.th = phi ptr [ %i.kv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.io, %bb.dz ]
  %i.ti = phi ptr [ %i.kw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.ip, %bb.dz ]
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  store ptr %i.tj, ptr %i.tk, align 8, !noalias !2836
  %.sroa.11158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  store i8 0, ptr %.sroa.11158.0..sroa_idx.i, align 8, !noalias !2836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2836
  br label %bb.ep

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit104.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2836
  br label %bb.gq

bb.gq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit104.i, %bb.ex
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  invoke void @_RNvMs3_NtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilitiesNtB5_19DesiredCapabilities6chrome(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.tl)
          to label %bb.gs unwind label %bb.gr, !noalias !2837

.body134.i:                                       ; preds = %bb.kp, %bb.kl, %bb.kk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.gr
  %i.tm = phi ptr [ %i.ue, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.ue, %bb.kp ], [ %i.tp, %bb.gr ], [ %i.tz, %bb.kl ], [ %i.tz, %bb.kk ]
  %i.tn = phi ptr [ %i.uf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.uf, %bb.kp ], [ %i.tq, %bb.gr ], [ %i.ua, %bb.kl ], [ %i.ua, %bb.kk ]
  %.pn65.i = phi { ptr, i32 } [ %.pn62.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %.pn62.pn.i, %bb.kp ], [ %i.tr, %bb.gr ], [ %i.acz, %bb.kl ], [ %i.acy, %bb.kk ]
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i8 0, ptr %i.to, align 8, !noalias !2836
  br label %bb.gz

bb.gr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilities12CapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i.i, %bb.gq
  %i.tp = phi ptr [ %i.tz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilities12CapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ %i.kv, %bb.gq ]
  %i.tq = phi ptr [ %i.ua, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities19desiredcapabilities12CapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ %i.kw, %bb.gq ]
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %.body134.i

bb.gs:                                            ; preds = %bb.gq
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  store i8 1, ptr %i.ts, align 8, !noalias !2836
  %i.tt = invoke noundef align 8 ptr @_RNvYNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesNtNtB6_8chromium24ChromiumLikeCapabilities12set_headlessCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tl)
          to label %bb.gt unwind label %bb.ia, !noalias !2837 ; 2 uses

bb.gt:                                            ; preds = %bb.gs
  %.not36.i = icmp eq ptr %i.tt, null
  br i1 %.not36.i, label %bb.gu, label %.invoke.i

bb.gu:                                            ; preds = %bb.gt
  %i.tu = invoke noundef align 8 ptr @_RNvYNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesNtNtB6_8chromium24ChromiumLikeCapabilities25set_disable_dev_shm_usageCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tl)
          to label %bb.gv unwind label %bb.ia, !noalias !2837 ; 2 uses

bb.gv:                                            ; preds = %bb.gu
  %.not37.i = icmp eq ptr %i.tu, null
  br i1 %.not37.i, label %bb.gw, label %.invoke.i

bb.gw:                                            ; preds = %bb.gv
  %i.tv = invoke noundef align 8 ptr @_RNvYNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesNtNtB6_8chromium24ChromiumLikeCapabilities14set_no_sandboxCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tl)
          to label %bb.gx unwind label %bb.ia, !noalias !2837 ; 2 uses

bb.gx:                                            ; preds = %bb.gw
  %.not38.i = icmp eq ptr %i.tv, null
  br i1 %.not38.i, label %.thread269.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.gx, %bb.gv, %bb.gt
  %i.tw = phi ptr [ %i.tu, %bb.gv ], [ %i.tt, %bb.gt ], [ %i.tv, %bb.gx ]
  %i.tx = invoke noundef nonnull ptr @_RNvXs_NtCscK5W4trzgIe_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs2oEMpbzoU1t_10thirtyfour5error14WebDriverErrorE4fromCskm6LeB9lWb4_9wasm_ping(ptr noalias noundef nonnull align 8 %i.tw)
          to label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.ia, !noalias !2837

.thread269.i:                                     ; preds = %bb.gx
  store i8 0, ptr %i.ts, align 8, !noalias !2836
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ky, ptr noundef nonnull align 8 dereferenceable(72) %i.tl, i64 72, i1 false), !noalias !2836
  %.sroa.8168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 816
  store ptr @69, ptr %.sroa.8168.0..sroa_idx.i, align 8, !noalias !2836
  %.sroa.9169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i64 22, ptr %.sroa.9169.0..sroa_idx.i, align 8, !noalias !2836
  %.sroa.11171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  store i8 0, ptr %.sroa.11171.0..sroa_idx.i, align 8, !noalias !2836
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 744
  br label %bb.hb

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.hv, %bb.ki, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i, %.invoke.i
  %i.tz = phi ptr [ %i.acc, %bb.ki ], [ %i.kv, %.invoke.i ], [ %i.acc, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i ], [ %i.vh, %bb.hv ] ; 4 uses
  %i.ua = phi ptr [ %i.acd, %bb.ki ], [ %i.kw, %.invoke.i ], [ %i.acd, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i ], [ %i.vi, %bb.hv ] ; 4 uses
  %.sroa.10187.2.i = phi ptr [ %i.aci, %bb.ki ], [ %i.tx, %.invoke.i ], [ %i.aci, %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB1r_5error14WebDriverErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit131.i ], [ %i.wq, %bb.hv ]
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.uc = load i8, ptr %i.ub, align 8, !range !13, !noalias !2836, !noundef !11
  %i.ud = trunc nuw i8 %i.uc to i1
  br i1 %i.ud, label %bb.kj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %.body111.i, %bb.ia, %bb.hz, %bb.hy
  %i.ue = phi ptr [ %i.wj, %.body111.i ], [ %i.wu, %bb.hy ], [ %i.wu, %bb.hz ], [ %i.xa, %bb.ia ] ; 2 uses
  %i.uf = phi ptr [ %i.wk, %.body111.i ], [ %i.wv, %bb.hy ], [ %i.wv, %bb.hz ], [ %i.xb, %bb.ia ] ; 2 uses
  %.pn62.pn.i = phi { ptr, i32 } [ %eh.lpad-body112.i, %.body111.i ], [ %.pn54.i, %bb.hy ], [ %.pn54.i, %bb.hz ], [ %i.xc, %bb.ia ] ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.uh = load i8, ptr %i.ug, align 8, !range !13, !noalias !2836, !noundef !11
  %i.ui = trunc nuw i8 %i.uh to i1
  br i1 %i.ui, label %bb.kp, label %.body134.i

bb.gy:                                            ; preds = %bb.ey
  %i.uj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTNtNtCsc13h7DQFCSE_5tokio7process5ChildNtNtCs2oEMpbzoU1t_10thirtyfour10web_driver9WebDriverENtCscK5W4trzgIe_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualCskm6LeB9lWb4_9wasm_ping.exit90.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.ey
  %i.uk = phi ptr [ %i.tz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.kv, %bb.ey ] ; 2 uses
  %i.ul = phi ptr [ %i.ua, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.kw, %bb.ey ] ; 2 uses
  %.sroa.10187.3.i = phi ptr [ %.sroa.10187.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2oEMpbzoU1t_10thirtyfour6common12capabilities6chrome18ChromeCapabilitiesECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %i.lg, %bb.ey ]
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 528
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio2io4util5lines5LinesINtNtBG_10buf_reader9BufReaderNtNtBK_7process11ChildStdoutEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(136) %i.um)
          to label %bb.ec unwind label %bb.kg, !noalias !2837

bb.gz:                                            ; preds = %bb.gy, %.body134.i, %.body96.i, %.body.i
  %i.un = phi ptr [ %i.tm, %.body134.i ], [ %i.kv, %bb.gy ], [ %i.kv, %.body96.i ], [ %i.lc, %.body.i ]
  %i.uo = phi ptr [ %i.tn, %.body134.i ], [ %i.kw, %bb.gy ], [ %i.kw, %.body96.i ], [ %i.ld, %.body.i ]
  %.pn67.pn.i = phi { ptr, i32 } [ %.pn65.i, %.body134.i ], [ %i.uj, %bb.gy ], [ %.pn34.i, %.body96.i ], [ %eh.lpad-body.i, %.body.i ]
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 528
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio2io4util5lines5LinesINtNtBG_10buf_reader9BufReaderNtNtBK_7process11ChildStdoutEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(136) %i.up) #30
          to label %bb.ea unwind label %bb.ek, !noalias !2837

bb.ha:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2836
  %.phi.trans.insert224.i = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
  %.pre225.i = load i8, ptr %.phi.trans.insert224.i, align 8, !range !22, !noalias !2872
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  switch i8 %.pre225.i, label %default.unreachable496 [
    i8 0, label %._crit_edge422
    i8 1, label %bb.hg
    i8 2, label %bb.hh
    i8 3, label %bb.hc
  ]

._crit_edge422:                                   ; preds = %bb.ha
  %.phi.trans.insert423 = getelementptr inbounds nuw i8, ptr %0, i64 816
  %.pre424 = load ptr, ptr %.phi.trans.insert423, align 8, !noalias !2872
  %.phi.trans.insert425 = getelementptr inbounds nuw i8, ptr %0, i64 824
  %.pre426 = load i64, ptr %.phi.trans.insert425, align 8, !noalias !2872
  br label %bb.hb

end_hunk_0
