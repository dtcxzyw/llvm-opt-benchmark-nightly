Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvXs1i_NtNtCs3oUPovFnLWP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring:bb.a
  %i.al = icmp samesign ne i64 %i.ak, %.val1.i.i
  tail call void @llvm.assume(i1 %i.al)
  %i.am = load i8, ptr %i.aj, align 1, !noalias !6311, !noundef !15
  %i.an = shl nuw nsw i32 %i.ag, 6
  %i.ao = and i8 %i.am, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap            ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aa, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = icmp samesign ugt i8 %i.w, -17
  br i1 %i.at, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.peel.i.i, label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.peel.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.av = add nuw nsw i64 %.promoted157.i.i.i, 3
  %i.aw = icmp samesign ne i64 %i.av, %.val1.i.i
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i8, ptr %i.au, align 1, !noalias !6311, !noundef !15
  %i.ay = shl nuw nsw i32 %i.aa, 18
  %i.az = and i32 %i.ay, 1835008
  %i.ba = shl nuw nsw i32 %i.aq, 6
  %i.bb = and i8 %i.ax, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = or disjoint i32 %i.bd, %i.az
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = zext nneg i8 %i.w to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.as, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.peel.i.i ], [ %i.be, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.peel.i.i ], [ %i.ah, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.peel.i.i ], [ %i.bf, %bb.h ] ; 4 uses
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bg)
  br i1 %i.o, label %.loopexit42.split.us.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128
  br i1 %i.bh, label %.lr.ph.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 2048
  br i1 %i.bi, label %.lr.ph.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 65536
  %..i.us.i.peel.i.i = select i1 %i.bj, i64 3, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.us.i.peel.i.i = phi i64 [ 2, %bb.k ], [ %..i.us.i.peel.i.i, %bb.l ], [ 1, %bb.j ]
  %i.bk = add i64 %.sroa.01.0.i.us.i.peel.i.i, %.promoted157.i.i.i ; 16 uses
  store i64 %i.bk, ptr %i.j, align 8, !alias.scope !6312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6313)
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.bk, %.val1.i.i
  br i1 %.not.i.i.us.i.i.i, label %bb.n, label %.split.i.i.us.i.i.i

.split.i.i.us.i.i.i:                              ; preds = %bb.m
  %i.bm = icmp eq i64 %i.bk, %.val1.i.i
  br i1 %i.bm, label %bb.o, label %.split.us161.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bk
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !6309, !noalias !6314, !noundef !15
  %i.bp = icmp sgt i8 %i.bo, -65
  br i1 %i.bp, label %bb.o, label %.split.us161.i.i.i

bb.o:                                             ; preds = %bb.n, %.split.i.i.us.i.i.i, %.lr.ph.i.i.i
  %i.bq = icmp samesign eq i64 %i.bk, %.val1.i.i
  br i1 %i.bq, label %.split166.us.i.thread.i.i, label %bb.p

.split166.us.i.thread.i.i:                        ; preds = %bb.o
  store i8 0, ptr %i.n, align 8, !alias.scope !6315
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bk
  %i.bs = load i8, ptr %i.br, align 1, !noalias !6316, !noundef !15 ; 3 uses
  %i.bt = icmp sgt i8 %i.bs, -1
  br i1 %i.bt, label %.loopexit42.split.us.i.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.i.i: ; preds = %bb.p
  %i.bu = add nuw nsw i64 %i.bk, 1
  %i.bv = icmp samesign ne i64 %i.bu, %.val1.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ugt i8 %i.bs, -33
  br i1 %i.bw, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.i.i, label %.loopexit42.split.us.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.i.i
  %i.bx = add nuw nsw i64 %i.bk, 2
  %i.by = icmp samesign ne i64 %i.bx, %.val1.i.i
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = icmp samesign ugt i8 %i.bs, -17
  br i1 %i.bz, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.i.i, label %.loopexit42.split.us.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.i.i
  %i.ca = add nuw nsw i64 %i.bk, 3
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cb)
  br label %.loopexit42.split.us.i.i.i

.split.us161.i.i.i:                               ; preds = %bb.n, %.split.i.i.us.i.i.i, %bb.e, %.split.i.i.us.i.peel.i.i
  %.lcssa31.i.i = phi i64 [ %.promoted157.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted157.i.i.i, %bb.e ], [ %i.bk, %.split.i.i.us.i.i.i ], [ %i.bk, %bb.n ]
  %.lcssa28.i.i = phi i8 [ %.promoted206.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted206.i.i.i, %bb.e ], [ 1, %.split.i.i.us.i.i.i ], [ 1, %bb.n ]
  %i.cc = xor i8 %.lcssa28.i.i, 1
  store i8 %i.cc, ptr %i.n, align 8, !alias.scope !6315
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %.lcssa31.i.i, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #41, !noalias !6314
  unreachable

.split166.us.i.i.i:                               ; preds = %bb.f
  %i.cd = xor i8 %.promoted206.i.i.i, 1
  store i8 %i.cd, ptr %i.n, align 8, !alias.scope !6315
  br i1 %i.o, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.q

.loopexit42.split.us.i.i.i:                       ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.i.i, %bb.p, %bb.i
  %.lcssa33.i.i = phi i64 [ %.promoted157.i.i.i, %bb.i ], [ %i.bk, %bb.p ], [ %i.bk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.i.i ] ; 2 uses
  store i8 0, ptr %i.n, align 8, !alias.scope !6315
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.q:                                             ; preds = %.split166.us.i.i.i
  store i8 1, ptr %i.k, align 2, !alias.scope !6315
  br label %bb.al

bb.r:                                             ; preds = %bb.c
  %i.ce = load i64, ptr %i.j, align 8, !alias.scope !6307, !noundef !15 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.ce, %.val1.i.i
  br i1 %.not.i.i.i, label %bb.t, label %bb.al

bb.s:                                             ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !6307, !noundef !15 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !6307, !nonnull !15, !noundef !15 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !6307, !noundef !15 ; 16 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.cn = add nsw i64 %i.cl, -1                   ; 5 uses
  br i1 %i.ch, label %bb.ae, label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load i8, ptr %i.co, align 8, !alias.scope !6307, !noundef !15 ; 2 uses
  %i.cq = sub nuw i64 %.val1.i.i, %i.ce           ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ce ; 2 uses
  %i.cs = icmp samesign ult i64 %i.cq, 16
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef range(i64 0, -9223372036854775808) %i.cq), !noalias !6317 ; 2 uses
  %i.cu = extractvalue { i64, i64 } %i.ct, 0
  %i.cv = extractvalue { i64, i64 } %i.ct, 1
  %i.cw = trunc nuw i64 %i.cu to i1
  br i1 %i.cw, label %.loopexit43.i.i.i, label %.loopexit44.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.v
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.da, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.04.011.i.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !6318, !noalias !6317, !noundef !15
  %i.cz = icmp eq i8 %i.cy, %i.cp
  br i1 %i.cz, label %.loopexit43.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.da = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i = icmp eq i64 %i.da, %i.cq
  br i1 %exitcond.not.i7.i.i.i, label %.loopexit44.i.i.i, label %.lr.ph.i.i.i.i

.loopexit43.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.u
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.cv, %bb.u ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.db = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.cq
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = add i64 %.sroa.5.0.i.i.i.i, %i.ce       ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dd, ptr %i.j, align 8, !alias.scope !6307
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.loopexit44.i.i.i:                                ; preds = %bb.v, %bb.u
  store i64 %.val1.i.i, ptr %i.j, align 8, !alias.scope !6307
  br label %bb.al

bb.w:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6321)
  %.promoted.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !6322 ; 2 uses
  %i.de = add i64 %.promoted.i.i.i.i, %i.cn       ; 2 uses
  %i.df = icmp ult i64 %i.de, %.val1.i.i
  br i1 %i.df, label %.lr.ph.i8.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !6322, !noundef !15
  %i.di = load i64, ptr %i.j, align 8, !alias.scope !6322 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !6322 ; 2 uses
  %i.dl = sub i64 %i.cl, %i.dk
  %invariant.op = sub i64 1, %i.di
  br label %.lr.ph.split.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.z, %bb.w
  store i64 %.val1.i.i, ptr %i.cm, align 8, !alias.scope !6322
  br label %bb.al

.lr.ph.split.i.i.i.i:                             ; preds = %bb.z, %.lr.ph.i8.i.i.i
  %i.dm = phi i64 [ %.sink70.i.i.i.i, %bb.z ], [ %i.cg, %.lr.ph.i8.i.i.i ] ; 3 uses
  %i.dn = phi i64 [ %i.dx, %bb.z ], [ %i.de, %.lr.ph.i8.i.i.i ]
  %i.do = phi i64 [ %.sink71.i.i.i.i, %bb.z ], [ %.promoted.i.i.i.i, %.lr.ph.i8.i.i.i ] ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dn
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !6320, !noalias !6317, !noundef !15
  %i.dr = and i8 %i.dq, 63
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = and i64 %i.dt, %i.dh
  %.not.i9.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i9.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.dv = add i64 %i.do, %i.cl
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i.i.i.i
  %..i.i10.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.dm, i64 %i.di) ; 2 uses
  %i.dw = icmp ult i64 %..i.i10.i.i.i, %i.cl
  br i1 %i.dw, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i.i.i.i = phi i64 [ %i.et, %bb.ad ], [ %i.es, %bb.ac ], [ %i.dv, %bb.x ] ; 3 uses
  %.sink70.i.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.dl, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i.i.i.i, ptr %i.cm, align 8, !alias.scope !6322
  store i64 %.sink70.i.i.i.i, ptr %i.cf, align 8, !alias.scope !6322
  %i.dx = add i64 %.sink71.i.i.i.i, %i.cn         ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %.val1.i.i
  br i1 %i.dy, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph
  %i.dz = add nuw nsw i64 %.sroa.04.0.i.i.i.i77, 1 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.cl
  br i1 %i.ea, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

.preheader36.i.i.i.i.preheader:                   ; preds = %bb.aa, %bb.y
  %i.eb = icmp ult i64 %i.dm, %i.di
  br i1 %i.eb, label %.lr.ph79, label %.split.us.i11.i.i.i

.lr.ph:                                           ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i.i.i.i77 = phi i64 [ %i.dz, %bb.aa ], [ %..i.i10.i.i.i, %bb.y ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.i.i.i.i77
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !6321, !noalias !6317, !noundef !15
  %i.ee = add i64 %.sroa.04.0.i.i.i.i77, %i.do    ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ee
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !6320, !noalias !6317, !noundef !15
  %.not21.i.i.i.i = icmp eq i8 %i.ed, %i.eh
  br i1 %.not21.i.i.i.i, label %bb.aa, label %bb.ad

.preheader36.i.i.i.i:                             ; preds = %bb.ab
  %i.ei = icmp ult i64 %i.dm, %i.ek
  br i1 %i.ei, label %.lr.ph79, label %.split.us.i11.i.i.i

.split.us.i11.i.i.i:                              ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %i.ej = add i64 %i.do, %i.cl                    ; 2 uses
  store i64 %i.ej, ptr %i.cm, align 8, !alias.scope !6322
  store i64 0, ptr %i.cf, align 8, !alias.scope !6322
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph79:                                         ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i78 = phi i64 [ %i.ek, %.preheader36.i.i.i.i ], [ %i.di, %.preheader36.i.i.i.i.preheader ]
  %i.ek = add i64 %.sroa.2.0.i.i.i.i78, -1        ; 6 uses
  %i.el = icmp ult i64 %i.ek, %i.cl
  br i1 %i.el, label %bb.ab, label %.split32.us.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph79
  %i.em = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ek
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !6321, !noalias !6317, !noundef !15
  %i.eo = add i64 %i.ek, %i.do                    ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !6320, !noalias !6317, !noundef !15
  %.not20.i.i.i.i = icmp eq i8 %i.en, %i.er
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.ac

.split32.us.i.i.i.i:                              ; preds = %.lr.ph79
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef range(i64 0, -9223372036854775808) %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #41, !noalias !6323
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.es = add i64 %i.do, %i.dk
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.do, %invariant.op
  %i.et = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i77
  br label %bb.z

bb.ae:                                            ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6326)
  %.promoted.i12.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !6327 ; 3 uses
  %i.eu = add i64 %.promoted.i12.i.i.i, %i.cn     ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %.val1.i.i
  br i1 %i.ev, label %.lr.ph.i15.i.i.i, label %._crit_edge.i13.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %bb.ae
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !6327, !noundef !15 ; 2 uses
  %i.ey = load i64, ptr %i.j, align 8, !alias.scope !6327
  %.fr215.i.i.i = freeze i64 %i.ey                ; 10 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !6327
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i.i.i, i64 range(i64 0, -9223372036854775808) %i.cl) ; 2 uses
  %i.fb = add i64 %.fr215.i.i.i, -1               ; 2 uses
  %.first_iter.i16.i.i.i = icmp ult i64 %i.fb, %i.cl
  %reass.sub79.i.i = sub i64 1, %.fr215.i.i.i     ; 2 uses
  br i1 %.first_iter.i16.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.preheader, label %.lr.ph.split.us.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %.lr.ph.i15.i.i.i
  %exitcond.not.i17.i.i.i81.not = icmp ult i64 %.fr215.i.i.i, %i.cl
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.preheader:             ; preds = %.lr.ph.i15.i.i.i
  %exitcond.not.i17.i.i.us.i86.not = icmp ult i64 %.fr215.i.i.i, %i.cl
  %.not34.i.us.i.i.us.i89 = icmp eq i64 %.fr215.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i

.lr.ph.split.us.i.i.i.us.i:                       ; preds = %.lr.ph.split.us.i.i.i.us.i.preheader, %bb.ah
  %i.fc = phi i64 [ %i.gb, %bb.ah ], [ %i.eu, %.lr.ph.split.us.i.i.i.us.i.preheader ]
  %i.fd = phi i64 [ %.sink.i18.i.i.us.i, %bb.ah ], [ %.promoted.i12.i.i.i, %.lr.ph.split.us.i.i.i.us.i.preheader ] ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fc
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !6325, !noalias !6317, !noundef !15
  %i.fg = and i8 %i.ff, 63
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fi, %i.ex
  %.not.us.i.i.i.us.i = icmp eq i64 %i.fj, 0
  br i1 %.not.us.i.i.i.us.i, label %bb.ag, label %.preheader35.i.i.i.us.i.preheader

.preheader35.i.i.i.us.i.preheader:                ; preds = %.lr.ph.split.us.i.i.i.us.i
  br i1 %exitcond.not.i17.i.i.us.i86.not, label %.lr.ph88, label %.preheader.i19.us.i.i.us.i.preheader

.preheader35.i.i.i.us.i:                          ; preds = %.lr.ph88
  %i.fk = add i64 %.sroa.04.0.us.i.i.i.us.i87, 1  ; 2 uses
  %exitcond.not.i17.i.i.us.i = icmp eq i64 %i.fk, %umax.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i, label %.preheader.i19.us.i.i.us.i.preheader, label %.lr.ph88

.preheader.i19.us.i.i.us.i.preheader:             ; preds = %.preheader35.i.i.i.us.i, %.preheader35.i.i.i.us.i.preheader
  br i1 %.not34.i.us.i.i.us.i89, label %.split.us.i21.i.i.i, label %.lr.ph91

.lr.ph88:                                         ; preds = %.preheader35.i.i.i.us.i.preheader, %.preheader35.i.i.i.us.i
  %.sroa.04.0.us.i.i.i.us.i87 = phi i64 [ %i.fk, %.preheader35.i.i.i.us.i ], [ %.fr215.i.i.i, %.preheader35.i.i.i.us.i.preheader ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.us.i.i.i.us.i87
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !6326, !noalias !6317, !noundef !15
  %i.fn = add i64 %.sroa.04.0.us.i.i.i.us.i87, %i.fd ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %.val1.i.i
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fn
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !6325, !noalias !6317, !noundef !15
  %.not21.us.i.i.i.us.i = icmp eq i8 %i.fm, %i.fq
  br i1 %.not21.us.i.i.i.us.i, label %.preheader35.i.i.i.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph88
  %.reass282.i.reass.i.us.i = add i64 %i.fd, %reass.sub79.i.i
  %i.fr = add i64 %.reass282.i.reass.i.us.i, %.sroa.04.0.us.i.i.i.us.i87
  br label %bb.ah

.preheader.i19.us.i.i.us.i:                       ; preds = %.lr.ph91
  %.not34.i.us.i.i.us.i = icmp eq i64 %i.fs, 0
  br i1 %.not34.i.us.i.i.us.i, label %.split.us.i21.i.i.i, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader.i19.us.i.i.us.i.preheader, %.preheader.i19.us.i.i.us.i
  %.sroa.2.0.us.i.us.i.i.us.i90 = phi i64 [ %i.fs, %.preheader.i19.us.i.i.us.i ], [ %.fr215.i.i.i, %.preheader.i19.us.i.i.us.i.preheader ]
  %i.fs = add i64 %.sroa.2.0.us.i.us.i.i.us.i90, -1 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !6326, !noalias !6317, !noundef !15
  %i.fv = add i64 %i.fs, %i.fd                    ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %.val1.i.i
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !6325, !noalias !6317, !noundef !15
  %.not20.us.i.us.i.i.us.i = icmp eq i8 %i.fu, %i.fy
  br i1 %.not20.us.i.us.i.i.us.i, label %.preheader.i19.us.i.i.us.i, label %.split.us.i.i.us.i

.split.us.i.i.us.i:                               ; preds = %.lr.ph91
  %i.fz = add i64 %i.fd, %i.fa
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i
  %i.ga = add i64 %i.fd, %i.cl
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split.us.i.i.us.i, %bb.af
  %.sink.i18.i.i.us.i = phi i64 [ %i.ga, %bb.ag ], [ %i.fr, %bb.af ], [ %i.fz, %.split.us.i.i.us.i ] ; 3 uses
  store i64 %.sink.i18.i.i.us.i, ptr %i.cm, align 8, !alias.scope !6327
  %i.gb = add i64 %.sink.i18.i.i.us.i, %i.cn      ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %.val1.i.i
  br i1 %i.gc, label %.lr.ph.split.us.i.i.i.us.i, label %._crit_edge.i13.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.ak
  %i.gd = phi i64 [ %i.gu, %bb.ak ], [ %i.eu, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.ge = phi i64 [ %.sink.i18.i.i.i, %bb.ak ], [ %.promoted.i12.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !6325, !noalias !6317, !noundef !15
  %i.gh = and i8 %i.gg, 63
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gj, %i.ex
  %.not.us.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.us.i.i.i.i, label %bb.aj, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i81.not, label %.lr.ph83, label %.preheader.i19.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph83
  %i.gl = add i64 %.sroa.04.0.us.i.i.i.i82, 1     ; 2 uses
  %exitcond.not.i17.i.i.i = icmp eq i64 %i.gl, %umax.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i, label %.preheader.i19.i.i.i, label %.lr.ph83

.lr.ph83:                                         ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i82 = phi i64 [ %i.gl, %.preheader35.i.i.i.i ], [ %.fr215.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.us.i.i.i.i82
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !6326, !noalias !6317, !noundef !15
  %i.go = add i64 %.sroa.04.0.us.i.i.i.i82, %i.ge ; 2 uses
  %i.gp = icmp ult i64 %i.go, %.val1.i.i
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !6325, !noalias !6317, !noundef !15
  %.not21.us.i.i.i.i = icmp eq i8 %i.gn, %i.gr
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.ai

.preheader.i19.i.i.i:                             ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.not34.i.i.i.i = icmp eq i64 %.fr215.i.i.i, 0
  br i1 %.not34.i.i.i.i, label %.split.us.i21.i.i.i, label %.split32.us.i20.i.i.i

.split32.us.i20.i.i.i:                            ; preds = %.preheader.i19.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #41, !noalias !6328
  unreachable

bb.ai:                                            ; preds = %.lr.ph83
  %.reass282.i.reass.i.i = add i64 %i.ge, %reass.sub79.i.i
  %i.gs = add i64 %.reass282.i.reass.i.i, %.sroa.04.0.us.i.i.i.i82
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gt = add i64 %i.ge, %i.cl
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink.i18.i.i.i = phi i64 [ %i.gt, %bb.aj ], [ %i.gs, %bb.ai ] ; 3 uses
  store i64 %.sink.i18.i.i.i, ptr %i.cm, align 8, !alias.scope !6327
  %i.gu = add i64 %.sink.i18.i.i.i, %i.cn         ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %.val1.i.i
  br i1 %i.gv, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i13.i.i.i

._crit_edge.i13.i.i.i:                            ; preds = %bb.ak, %bb.ah, %bb.ae
  store i64 %.val1.i.i, ptr %i.cm, align 8, !alias.scope !6327
  br label %bb.al

.split.us.i21.i.i.i:                              ; preds = %.preheader.i19.us.i.i.us.i.preheader, %.preheader.i19.us.i.i.us.i, %.preheader.i19.i.i.i
  %i.gw = phi i64 [ %i.ge, %.preheader.i19.i.i.i ], [ %i.fd, %.preheader.i19.us.i.i.us.i ], [ %i.fd, %.preheader.i19.us.i.i.us.i.preheader ] ; 2 uses
  %i.gx = add i64 %i.gw, %i.cl                    ; 2 uses
  store i64 %i.gx, ptr %i.cm, align 8, !alias.scope !6327
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %.split.us.i21.i.i.i, %.split.us.i11.i.i.i, %.loopexit43.i.i.i, %.loopexit42.split.us.i.i.i, %.split166.us.i.i.i, %.split166.us.i.thread.i.i
  %.sroa.9.0.i.i = phi i64 [ %.val1.i.i, %.split166.us.i.i.i ], [ %i.ej, %.split.us.i11.i.i.i ], [ %.lcssa33.i.i, %.loopexit42.split.us.i.i.i ], [ %i.dd, %.loopexit43.i.i.i ], [ %i.gx, %.split.us.i21.i.i.i ], [ %.val1.i.i, %.split166.us.i.thread.i.i ]
  %.sroa.4.03.i.i = phi i64 [ %.val1.i.i, %.split166.us.i.i.i ], [ %i.do, %.split.us.i11.i.i.i ], [ %.lcssa33.i.i, %.loopexit42.split.us.i.i.i ], [ %i.dc, %.loopexit43.i.i.i ], [ %i.gw, %.split.us.i21.i.i.i ], [ %.val1.i.i, %.split166.us.i.thread.i.i ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !6305, !noundef !15 ; 2 uses
  %i.ha = sub nuw i64 %.sroa.4.03.i.i, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gz
  store i64 %.sroa.9.0.i.i, ptr %i.gy, align 8, !alias.scope !6305
  br label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit

bb.al:                                            ; preds = %._crit_edge.i13.i.i.i, %._crit_edge.i.i.i.i, %.loopexit44.i.i.i, %bb.r, %bb.q, %.preheader.i.i.i
  store i8 1, ptr %i.d, align 1, !alias.scope !6329
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hd = load i8, ptr %i.hc, align 8, !range !34, !alias.scope !6329, !noundef !15
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %._crit_edge.i.i.i, label %bb.am

._crit_edge.i.i.i:                                ; preds = %bb.al
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !6329
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i, align 8, !alias.scope !6329
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !6329, !noundef !15 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !6329, !noundef !15 ; 2 uses
  %.not.i2.i.i = icmp eq i64 %i.hg, %i.hi
  br i1 %.not.i2.i.i, label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit, label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i.i.i
  %i.hj = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.hg, %bb.am ]
  %i.hk = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hi, %bb.am ] ; 2 uses
  %i.hl = sub nuw i64 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.hk
  br label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit

bb.ao:                                            ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !6303
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !range !34, !alias.scope !6330, !noundef !15
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 1, ptr %i.hn, align 1, !alias.scope !6330
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hr = load i8, ptr %i.hq, align 8, !range !34, !alias.scope !6330, !noundef !15
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %._crit_edge.i.i, label %bb.aq

._crit_edge.i.i:                                  ; preds = %bb.ap
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !6330
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i = load i64, ptr %.phi.trans.insert2.i.i, align 8, !alias.scope !6330
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !6330, !noundef !15 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !6330, !noundef !15 ; 2 uses
  %.not.i.i = icmp eq i64 %i.hu, %i.hw
  br i1 %.not.i.i, label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i
  %i.hx = phi i64 [ %.pre3.i.i, %._crit_edge.i.i ], [ %i.hu, %bb.aq ]
  %i.hy = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.hw, %bb.aq ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i1.i = load ptr, ptr %i.hz, align 8, !alias.scope !6330, !nonnull !15, !noundef !15
  %i.ia = sub nuw i64 %i.hx, %i.hy
  %i.ib = getelementptr inbounds nuw i8, ptr %.val.i1.i, i64 %i.hy
  br label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit

_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.a, %bb.b, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.ar
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ undef, %bb.am ], [ undef, %bb.b ], [ %i.ha, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], [ %i.hl, %bb.an ], [ %i.ia, %bb.ar ], [ undef, %bb.aq ], [ undef, %bb.ao ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %bb.am ], [ null, %bb.b ], [ %i.hb, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], [ %i.hm, %bb.an ], [ %i.ib, %bb.ar ], [ null, %bb.aq ], [ null, %bb.ao ]
  %i.ic = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.id = insertvalue { ptr, i64 } %i.ic, i64 %.sroa.4.0.i, 1
  ret { ptr, i64 } %i.id
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs5yxAJGbRKSL_4ring6digestNtB5_6DigestNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring6digest9AlgorithmNtB6_5Debug3fmtBA_, ptr %.sroa.44.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @296, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.g, label %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 89
  %i.j = load i8, ptr %i.i, align 1, !range !44, !noundef !15
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.02.i = phi ptr [ %i.l, %bb.b ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6333
  store ptr %.sroa.01.02.i, ptr %i.b, align 8, !noalias !6333, !captures !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6333
  store ptr %i.b, ptr %i.a, align 8, !noalias !6333
  store ptr @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs5yxAJGbRKSL_4ring, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !6333
  %i.n = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @177, ptr noundef nonnull %i.a)
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6333
  br label %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.02.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6333
  %.not3.i = icmp eq ptr %i.o, %i.m
  br i1 %.not3.i, label %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit, label %bb.c

_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit: ; preds = %bb.e, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ false, %bb.e ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9PublicKeyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 9)
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 9, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !6338)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6339)
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6340, !noundef !15 ; 3 uses
  %i.f = icmp ult i64 %i.e, 98
  br i1 %i.f, label %_RNvXs1_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef 97, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #41, !noalias !6340
  unreachable

_RNvXs1_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.h, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @178)
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs2_NtNtCs5yxAJGbRKSL_4ring2io6writerINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_6WriterE4from(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 8 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %i.b, align 8, !noundef !15
  %.not = icmp eq i64 %i.f, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #42
          to label %bb.h unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
