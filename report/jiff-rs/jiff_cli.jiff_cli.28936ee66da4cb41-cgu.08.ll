Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.08?download=true
inline.NumInlined: 129
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_:bb.a
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted157.i.i, 1
  %i.z = icmp samesign ne i64 %i.y, %i.i
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !288, !noundef !6
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted157.i.i, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.i
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !288, !noundef !6
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted157.i.i, 3
  %i.at = icmp samesign ne i64 %i.as, %i.i
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !288, !noundef !6
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i
  %.sroa.4.0.i.ph.i.us.i.peel.i = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i ], [ %i.bb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 128
  br i1 %i.be, label %.lr.ph.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 2048
  br i1 %i.bf, label %.lr.ph.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 65536
  %..i.us.i.peel.i = select i1 %i.bg, i64 3, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.us.i.peel.i = phi i64 [ 2, %bb.i ], [ %..i.us.i.peel.i, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.us.i.peel.i, %.promoted157.i.i ; 15 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.us.i.i = icmp ult i64 %i.bh, %i.i
  br i1 %.not.i.i.us.i.i, label %bb.l, label %.split.i.i.us.i.i

.split.i.i.us.i.i:                                ; preds = %bb.k
  %i.bj = icmp eq i64 %i.bh, %i.i
  br i1 %i.bj, label %bb.m, label %.split.us161.i.i

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !286, !noalias !289, !noundef !6
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %bb.m, label %.split.us161.i.i

bb.m:                                             ; preds = %bb.l, %.split.i.i.us.i.i, %.lr.ph.i.i
  %i.bn = icmp samesign eq i64 %i.bh, %i.i
  br i1 %i.bn, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bh
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !290, !noundef !6 ; 3 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i: ; preds = %bb.n
  %i.br = add nuw nsw i64 %i.bh, 1
  %i.bs = icmp samesign ne i64 %i.br, %i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp samesign ugt i8 %i.bp, -33
  br i1 %i.bt, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i
  %i.bu = add nuw nsw i64 %i.bh, 2
  %i.bv = icmp samesign ne i64 %i.bu, %i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ugt i8 %i.bp, -17
  br i1 %i.bw, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i
  %i.bx = add nuw nsw i64 %i.bh, 3
  %i.by = icmp samesign ne i64 %i.bx, %i.i
  tail call void @llvm.assume(i1 %i.by)
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

.split.us161.i.i:                                 ; preds = %bb.l, %.split.i.i.us.i.i, %bb.c, %.split.i.i.us.i.peel.i
  %.lcssa40.i = phi i64 [ %.promoted157.i.i, %.split.i.i.us.i.peel.i ], [ %.promoted157.i.i, %bb.c ], [ %i.bh, %.split.i.i.us.i.i ], [ %i.bh, %bb.l ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef %.lcssa40.i, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28, !noalias !289
  unreachable

.split166.us.i.i:                                 ; preds = %bb.d
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 4 uses
  %.not.i.i = icmp ult i64 %i.cc, %i.ca
  br i1 %.not.i.i, label %bb.q, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

bb.p:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !283, !noalias !281, !nonnull !6, !noundef !6 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !283, !noalias !281, !nonnull !6, !noundef !6 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 16 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.cq = add nsw i64 %i.co, -1                   ; 5 uses
  br i1 %i.cg, label %bb.ab, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !283, !noalias !281, !nonnull !6, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cu = load i8, ptr %i.ct, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 2 uses
  %i.cv = sub nuw i64 %i.ca, %i.cc                ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cc ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cv, 16
  br i1 %i.cx, label %.lr.ph.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef range(i64 0, -9223372036854775808) %i.cv), !noalias !291 ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cy, 0
  %i.da = extractvalue { i64, i64 } %i.cy, 1
  %i.db = trunc nuw i64 %i.cz to i1
  br i1 %i.db, label %.loopexit43.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.s
  %.sroa.04.011.i.i.i = phi i64 [ %i.df, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.04.011.i.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !292, !noalias !291, !noundef !6
  %i.de = icmp eq i8 %i.dd, %i.cu
  br i1 %i.de, label %.loopexit43.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.df = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i7.i.i = icmp eq i64 %i.df, %i.cv
  br i1 %exitcond.not.i7.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, label %.lr.ph.i.i.i

.loopexit43.i.i:                                  ; preds = %.lr.ph.i.i.i, %bb.r
  %.sroa.5.0.i.i.i = phi i64 [ %i.da, %bb.r ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.dg = icmp ult i64 %.sroa.5.0.i.i.i, %i.cv
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = add nuw i64 %i.cc, 1
  %i.di = add i64 %i.dh, %.sroa.5.0.i.i.i
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

bb.t:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %.promoted.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !296, !noalias !281 ; 2 uses
  %i.dj = add i64 %.promoted.i.i.i, %i.cq         ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.ck
  br i1 %i.dk, label %.lr.ph.i8.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i8.i.i:                                    ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !296, !noalias !281, !noundef !6
  %i.dn = load i64, ptr %i.cd, align 8, !alias.scope !296, !noalias !281 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !296, !noalias !281 ; 2 uses
  %i.dq = sub i64 %i.co, %i.dp
  %invariant.op = sub i64 1, %i.dn
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.w, %.lr.ph.i8.i.i
  %.sink70.i.i25.i = phi i64 [ %.sink70.i.i.i, %bb.w ], [ %i.cf, %.lr.ph.i8.i.i ] ; 3 uses
  %.sink71.i.i22.i = phi i64 [ %.sink71.i.i.i, %bb.w ], [ %.promoted.i.i.i, %.lr.ph.i8.i.i ] ; 6 uses
  %i.dr = phi i64 [ %i.ea, %bb.w ], [ %i.dj, %.lr.ph.i8.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !294, !noalias !291, !noundef !6
  %i.du = and i8 %i.dt, 63
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.dm
  %.not.i9.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i9.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i.i.i
  %i.dy = add i64 %.sink71.i.i22.i, %i.co
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.split.i.i.i
  %..i.i10.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i25.i, i64 %i.dn) ; 2 uses
  %i.dz = icmp ult i64 %..i.i10.i.i, %i.co
  br i1 %i.dz, label %.lr.ph, label %.preheader36.i.i.i.preheader

bb.w:                                             ; preds = %bb.aa, %bb.z, %bb.u
  %.sink71.i.i.i = phi i64 [ %i.ew, %bb.aa ], [ %i.ev, %bb.z ], [ %i.dy, %bb.u ] ; 2 uses
  %.sink70.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.dq, %bb.z ], [ 0, %bb.u ]
  %i.ea = add i64 %.sink71.i.i.i, %i.cq           ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.ck
  br i1 %i.eb, label %.lr.ph.split.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

bb.x:                                             ; preds = %.lr.ph
  %i.ec = add nuw nsw i64 %.sroa.04.0.i.i.i84, 1  ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.co
  br i1 %i.ed, label %.lr.ph, label %.preheader36.i.i.i.preheader

.preheader36.i.i.i.preheader:                     ; preds = %bb.x, %bb.v
  %i.ee = icmp ult i64 %.sink70.i.i25.i, %i.dn
  br i1 %i.ee, label %.lr.ph86, label %.split.us.i11.i.i

.lr.ph:                                           ; preds = %bb.v, %bb.x
  %.sroa.04.0.i.i.i84 = phi i64 [ %i.ec, %bb.x ], [ %..i.i10.i.i, %bb.v ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.i.i.i84
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !295, !noalias !291, !noundef !6
  %i.eh = add i64 %.sroa.04.0.i.i.i84, %.sink71.i.i22.i ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ck
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !294, !noalias !291, !noundef !6
  %.not21.i.i.i = icmp eq i8 %i.eg, %i.ek
  br i1 %.not21.i.i.i, label %bb.x, label %bb.aa

.preheader36.i.i.i:                               ; preds = %bb.y
  %i.el = icmp ult i64 %.sink70.i.i25.i, %i.en
  br i1 %i.el, label %.lr.ph86, label %.split.us.i11.i.i

.split.us.i11.i.i:                                ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %i.em = add i64 %.sink71.i.i22.i, %i.co
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

.lr.ph86:                                         ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %.sroa.2.0.i.i.i85 = phi i64 [ %i.en, %.preheader36.i.i.i ], [ %i.dn, %.preheader36.i.i.i.preheader ]
  %i.en = add i64 %.sroa.2.0.i.i.i85, -1          ; 6 uses
  %i.eo = icmp ult i64 %i.en, %i.co
  br i1 %i.eo, label %bb.y, label %.split32.us.i.i.i

bb.y:                                             ; preds = %.lr.ph86
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !295, !noalias !291, !noundef !6
  %i.er = add i64 %i.en, %.sink71.i.i22.i         ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.ck
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !294, !noalias !291, !noundef !6
  %.not20.i.i.i = icmp eq i8 %i.eq, %i.eu
  br i1 %.not20.i.i.i, label %.preheader36.i.i.i, label %bb.z

.split32.us.i.i.i:                                ; preds = %.lr.ph86
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.en, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !297
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ev = add i64 %.sink71.i.i22.i, %i.dp
  br label %bb.w

bb.aa:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i22.i, %invariant.op
  %i.ew = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i84
  br label %bb.w

bb.ab:                                            ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %.promoted.i12.i.i = load i64, ptr %i.cp, align 8, !alias.scope !301, !noalias !281 ; 3 uses
  %i.ex = add i64 %.promoted.i12.i.i, %i.cq       ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.ck
  br i1 %i.ey, label %.lr.ph.i15.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i15.i.i:                                   ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !301, !noalias !281, !noundef !6 ; 2 uses
  %i.fb = load i64, ptr %i.cd, align 8, !alias.scope !301, !noalias !281
  %.fr215.i.i = freeze i64 %i.fb                  ; 10 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !301, !noalias !281
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i.i, i64 range(i64 0, -9223372036854775808) %i.co) ; 2 uses
  %i.fe = add i64 %.fr215.i.i, -1                 ; 2 uses
  %.first_iter.i16.i.i = icmp ult i64 %i.fe, %i.co
  %reass.sub95.i = sub i64 1, %.fr215.i.i         ; 2 uses
  br i1 %.first_iter.i16.i.i, label %.lr.ph.split.us.i.i.i.us.preheader, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i15.i.i
  %exitcond.not.i17.i.i88.not = icmp ult i64 %.fr215.i.i, %i.co
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i.us.preheader:               ; preds = %.lr.ph.i15.i.i
  %exitcond.not.i17.i.i.us93.not = icmp ult i64 %.fr215.i.i, %i.co
  %.not34.i.us.i.i.us96 = icmp eq i64 %.fr215.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us

.lr.ph.split.us.i.i.i.us:                         ; preds = %.lr.ph.split.us.i.i.i.us.preheader, %bb.ae
  %.sink.i18.i28.i.us = phi i64 [ %.sink.i18.i.i.us, %bb.ae ], [ %.promoted.i12.i.i, %.lr.ph.split.us.i.i.i.us.preheader ] ; 7 uses
  %i.ff = phi i64 [ %i.gd, %bb.ae ], [ %i.ex, %.lr.ph.split.us.i.i.i.us.preheader ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !299, !noalias !291, !noundef !6
  %i.fi = and i8 %i.fh, 63
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = and i64 %i.fk, %i.fa
  %.not.us.i.i.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.us.i.i.i.us, label %bb.ad, label %.preheader35.i.i.i.us.preheader

.preheader35.i.i.i.us.preheader:                  ; preds = %.lr.ph.split.us.i.i.i.us
  br i1 %exitcond.not.i17.i.i.us93.not, label %.lr.ph95, label %.preheader.i19.us.i.i.us.preheader

.preheader35.i.i.i.us:                            ; preds = %.lr.ph95
  %i.fm = add i64 %.sroa.04.0.us.i.i.i.us94, 1    ; 2 uses
  %exitcond.not.i17.i.i.us = icmp eq i64 %i.fm, %umax.i.i.i
  br i1 %exitcond.not.i17.i.i.us, label %.preheader.i19.us.i.i.us.preheader, label %.lr.ph95

.preheader.i19.us.i.i.us.preheader:               ; preds = %.preheader35.i.i.i.us, %.preheader35.i.i.i.us.preheader
  br i1 %.not34.i.us.i.i.us96, label %.split.us.i21.i.i, label %.lr.ph98

.lr.ph95:                                         ; preds = %.preheader35.i.i.i.us.preheader, %.preheader35.i.i.i.us
  %.sroa.04.0.us.i.i.i.us94 = phi i64 [ %i.fm, %.preheader35.i.i.i.us ], [ %.fr215.i.i, %.preheader35.i.i.i.us.preheader ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.us.i.i.i.us94
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !300, !noalias !291, !noundef !6
  %i.fp = add i64 %.sroa.04.0.us.i.i.i.us94, %.sink.i18.i28.i.us ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.ck
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !299, !noalias !291, !noundef !6
  %.not21.us.i.i.i.us = icmp eq i8 %i.fo, %i.fs
  br i1 %.not21.us.i.i.i.us, label %.preheader35.i.i.i.us, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph95
  %.reass282.i.reass.i.us = add i64 %reass.sub95.i, %.sink.i18.i28.i.us
  %i.ft = add i64 %.reass282.i.reass.i.us, %.sroa.04.0.us.i.i.i.us94
  br label %bb.ae

.preheader.i19.us.i.i.us:                         ; preds = %.lr.ph98
  %.not34.i.us.i.i.us = icmp eq i64 %i.fu, 0
  br i1 %.not34.i.us.i.i.us, label %.split.us.i21.i.i, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader.i19.us.i.i.us.preheader, %.preheader.i19.us.i.i.us
  %.sroa.2.0.us.i.us.i.i.us97 = phi i64 [ %i.fu, %.preheader.i19.us.i.i.us ], [ %.fr215.i.i, %.preheader.i19.us.i.i.us.preheader ]
  %i.fu = add i64 %.sroa.2.0.us.i.us.i.i.us97, -1 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !300, !noalias !291, !noundef !6
  %i.fx = add i64 %i.fu, %.sink.i18.i28.i.us      ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ck
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !299, !noalias !291, !noundef !6
  %.not20.us.i.us.i.i.us = icmp eq i8 %i.fw, %i.ga
  br i1 %.not20.us.i.us.i.i.us, label %.preheader.i19.us.i.i.us, label %.split.us.i.i.us

.split.us.i.i.us:                                 ; preds = %.lr.ph98
  %i.gb = add i64 %.sink.i18.i28.i.us, %i.fd
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i.i.i.us
  %i.gc = add i64 %.sink.i18.i28.i.us, %i.co
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.split.us.i.i.us, %bb.ac
  %.sink.i18.i.i.us = phi i64 [ %i.gc, %bb.ad ], [ %i.ft, %bb.ac ], [ %i.gb, %.split.us.i.i.us ] ; 2 uses
  %i.gd = add i64 %.sink.i18.i.i.us, %i.cq        ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.ck
  br i1 %i.ge, label %.lr.ph.split.us.i.i.i.us, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.preheader, %bb.ah
  %.sink.i18.i28.i = phi i64 [ %.sink.i18.i.i, %bb.ah ], [ %.promoted.i12.i.i, %.lr.ph.split.us.i.i.i.preheader ] ; 4 uses
  %i.gf = phi i64 [ %i.gv, %bb.ah ], [ %i.ex, %.lr.ph.split.us.i.i.i.preheader ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !299, !noalias !291, !noundef !6
  %i.gi = and i8 %i.gh, 63
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = and i64 %i.gk, %i.fa
  %.not.us.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.us.i.i.i, label %bb.ag, label %.preheader35.i.i.i.preheader

.preheader35.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
  br i1 %exitcond.not.i17.i.i88.not, label %.lr.ph90, label %.preheader.i19.i.i

.preheader35.i.i.i:                               ; preds = %.lr.ph90
  %i.gm = add i64 %.sroa.04.0.us.i.i.i89, 1       ; 2 uses
  %exitcond.not.i17.i.i = icmp eq i64 %i.gm, %umax.i.i.i
  br i1 %exitcond.not.i17.i.i, label %.preheader.i19.i.i, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.sroa.04.0.us.i.i.i89 = phi i64 [ %i.gm, %.preheader35.i.i.i ], [ %.fr215.i.i, %.preheader35.i.i.i.preheader ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.us.i.i.i89
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !300, !noalias !291, !noundef !6
  %i.gp = add i64 %.sroa.04.0.us.i.i.i89, %.sink.i18.i28.i ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.ck
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !299, !noalias !291, !noundef !6
  %.not21.us.i.i.i = icmp eq i8 %i.go, %i.gs
  br i1 %.not21.us.i.i.i, label %.preheader35.i.i.i, label %bb.af

.preheader.i19.i.i:                               ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.not34.i.i.i = icmp eq i64 %.fr215.i.i, 0
  br i1 %.not34.i.i.i, label %.split.us.i21.i.i, label %.split32.us.i20.i.i

.split32.us.i20.i.i:                              ; preds = %.preheader.i19.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !302
  unreachable

bb.af:                                            ; preds = %.lr.ph90
  %.reass282.i.reass.i = add i64 %reass.sub95.i, %.sink.i18.i28.i
  %i.gt = add i64 %.reass282.i.reass.i, %.sroa.04.0.us.i.i.i89
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.gu = add i64 %.sink.i18.i28.i, %i.co
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i18.i.i = phi i64 [ %i.gu, %bb.ag ], [ %i.gt, %bb.af ] ; 2 uses
  %i.gv = add i64 %.sink.i18.i.i, %i.cq           ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.ck
  br i1 %i.gw, label %.lr.ph.split.us.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.split.us.i21.i.i:                                ; preds = %.preheader.i19.us.i.i.us.preheader, %.preheader.i19.us.i.i.us, %.preheader.i19.i.i
  %.sink.i18.i28.i16 = phi i64 [ %.sink.i18.i28.i, %.preheader.i19.i.i ], [ %.sink.i18.i28.i.us, %.preheader.i19.us.i.i.us ], [ %.sink.i18.i28.i.us, %.preheader.i19.us.i.i.us.preheader ]
  %i.gx = add i64 %.sink.i18.i28.i16, %i.co
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread: ; preds = %bb.w, %bb.ah, %bb.ae, %bb.s, %.preheader.i.i, %.split166.us.i.i, %bb.o, %bb.r, %bb.t, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !281
  br label %bb.ai

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i, %bb.n, %.split.us.i21.i.i, %.split.us.i11.i.i, %.loopexit43.i.i, %.split166.us.i.i, %bb.m, %bb.g
  %.sroa.10.0.i.ph.pn = phi i64 [ %i.i, %.split166.us.i.i ], [ %i.gx, %.split.us.i21.i.i ], [ %.promoted157.i.i, %bb.g ], [ %i.i, %bb.m ], [ %i.di, %.loopexit43.i.i ], [ %i.em, %.split.us.i11.i.i ], [ %i.bh, %bb.n ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !281
  %i.gy = sub nuw i64 %.8.val, %.sroa.10.0.i.ph.pn
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.10.0.i.ph.pn
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6
  %.sroa.3.0 = phi i64 [ %i.gy, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6 ], [ %.8.val, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread ]
  %.sroa.0.0 = phi ptr [ %i.gz, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6 ], [ %.0.val, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread ]
  %i.ha = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.hb = insertvalue { ptr, i64 } %i.ha, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.hb
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !11
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !11
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
end_hunk_0
