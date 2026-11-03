Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.04?download=true
inline.NumInlined: 521
inline.NumDeleted: 282
begin_hunk_0_@_RNvNvNvNtCs3v5ql5U6hxj_6fontir17propagate_anchors23rename_anchor_for_scale9swap_pair7replace:bb.a

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.i.peel.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = and i8 %i.y, 31
  %i.ac = zext nneg i8 %i.ab to i32               ; 3 uses
  %i.ad = add nuw nsw i64 %.promoted156.i.i, 1
  %i.ae = icmp samesign ne i64 %i.ad, %i.n
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = load i8, ptr %i.aa, align 1, !noalias !1270, !noundef !4
  %i.ag = shl nuw nsw i32 %i.ac, 6
  %i.ah = and i8 %i.af, 63
  %i.ai = zext nneg i8 %i.ah to i32               ; 2 uses
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = icmp samesign ugt i8 %i.y, -33
  br i1 %i.ak, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.i.peel.i, label %bb.g

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.i.peel.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.am = add nuw nsw i64 %.promoted156.i.i, 2
  %i.an = icmp samesign ne i64 %i.am, %i.n
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = load i8, ptr %i.al, align 1, !noalias !1270, !noundef !4
  %i.ap = shl nuw nsw i32 %i.ai, 6
  %i.aq = and i8 %i.ao, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar            ; 2 uses
  %i.at = shl nuw nsw i32 %i.ac, 12
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = icmp samesign ugt i8 %i.y, -17
  br i1 %i.av, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.i.peel.i, label %bb.g

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.i.peel.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ax = add nuw nsw i64 %.promoted156.i.i, 3
  %i.ay = icmp samesign ne i64 %i.ax, %i.n
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = load i8, ptr %i.aw, align 1, !noalias !1270, !noundef !4
  %i.ba = shl nuw nsw i32 %i.ac, 18
  %i.bb = and i32 %i.ba, 1835008
  %i.bc = shl nuw nsw i32 %i.as, 6
  %i.bd = and i8 %i.az, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.bb
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = zext nneg i8 %i.y to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.i.peel.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.i.peel.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.i.peel.i
  %.sroa.4.0.i.ph.i.us.i.peel.i = phi i32 [ %i.au, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.i.peel.i ], [ %i.bg, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.i.peel.i ], [ %i.aj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.i.peel.i ], [ %i.bh, %bb.f ] ; 4 uses
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bi)
  br i1 %i.q, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 128
  br i1 %i.bj, label %.lr.ph.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 2048
  br i1 %i.bk, label %.lr.ph.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 65536
  %..i.us.i.peel.i = select i1 %i.bl, i64 3, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.us.i.peel.i = phi i64 [ 2, %bb.i ], [ %..i.us.i.peel.i, %bb.j ], [ 1, %bb.h ]
  %i.bm = add i64 %.sroa.01.0.i.us.i.peel.i, %.promoted156.i.i ; 15 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.us.i.i = icmp ult i64 %i.bm, %i.n
  br i1 %.not.i.i.us.i.i, label %bb.l, label %.split.i.i.us.i.i

.split.i.i.us.i.i:                                ; preds = %bb.k
  %i.bo = icmp eq i64 %i.bm, %i.n
  br i1 %i.bo, label %bb.m, label %.split.us160.i.i

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bm
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !1268, !noalias !1271, !noundef !4
  %i.br = icmp sgt i8 %i.bq, -65
  br i1 %i.br, label %bb.m, label %.split.us160.i.i

bb.m:                                             ; preds = %bb.l, %.split.i.i.us.i.i, %.lr.ph.i.i
  %i.bs = icmp samesign eq i64 %i.bm, %i.n
  br i1 %i.bs, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bm
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !1272, !noundef !4 ; 3 uses
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.i.i: ; preds = %bb.n
  %i.bw = add nuw nsw i64 %i.bm, 1
  %i.bx = icmp samesign ne i64 %i.bw, %i.n
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = icmp samesign ugt i8 %i.bu, -33
  br i1 %i.by, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.i.i
  %i.bz = add nuw nsw i64 %i.bm, 2
  %i.ca = icmp samesign ne i64 %i.bz, %i.n
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign ugt i8 %i.bu, -17
  br i1 %i.cb, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.i.i
  %i.cc = add nuw nsw i64 %i.bm, 3
  %i.cd = icmp samesign ne i64 %i.cc, %i.n
  tail call void @llvm.assume(i1 %i.cd)
  br label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5

.split.us160.i.i:                                 ; preds = %bb.l, %.split.i.i.us.i.i, %bb.c, %.split.i.i.us.i.peel.i
  %.lcssa37.i = phi i64 [ %.promoted156.i.i, %.split.i.i.us.i.peel.i ], [ %.promoted156.i.i, %bb.c ], [ %i.bm, %.split.i.i.us.i.i ], [ %i.bm, %bb.l ]
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, i64 noundef %.lcssa37.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #25, !noalias !1271
  unreachable

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !1267, !noalias !1266, !noundef !4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1267, !noalias !1266, !noundef !4 ; 4 uses
  %.not.i.i = icmp ult i64 %i.ch, %i.cf
  br i1 %.not.i.i, label %bb.q, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread

bb.p:                                             ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !1267, !noalias !1266, !noundef !4 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !1267, !noalias !1266, !nonnull !4, !noundef !4 ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !1267, !noalias !1266, !noundef !4 ; 10 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !1267, !noalias !1266, !nonnull !4, !noundef !4 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !1267, !noalias !1266, !noundef !4 ; 14 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cv = add nsw i64 %i.ct, -1                   ; 5 uses
  br i1 %i.cl, label %bb.ab, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !1267, !noalias !1266, !nonnull !4, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cz = load i8, ptr %i.cy, align 8, !alias.scope !1267, !noalias !1266, !noundef !4 ; 2 uses
  %i.da = sub nuw i64 %i.cf, %i.ch                ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ch ; 2 uses
  %i.dc = icmp samesign ult i64 %i.da, 16
  br i1 %i.dc, label %.lr.ph.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.cz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef range(i64 0, -9223372036854775808) %i.da), !noalias !1273 ; 2 uses
  %i.de = extractvalue { i64, i64 } %i.dd, 0
  %i.df = extractvalue { i64, i64 } %i.dd, 1
  %i.dg = trunc nuw i64 %i.de to i1
  br i1 %i.dg, label %.loopexit42.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.s
  %.sroa.04.011.i.i.i = phi i64 [ %i.dk, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sroa.04.011.i.i.i
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !1274, !noalias !1273, !noundef !4
  %i.dj = icmp eq i8 %i.di, %i.cz
  br i1 %i.dj, label %.loopexit42.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.dk = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i7.i.i = icmp eq i64 %i.dk, %i.da
  br i1 %exitcond.not.i7.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread, label %.lr.ph.i.i.i

.loopexit42.i.i:                                  ; preds = %.lr.ph.i.i.i, %bb.r
  %.sroa.5.0.i.i.i = phi i64 [ %i.df, %bb.r ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.dl = icmp ult i64 %.sroa.5.0.i.i.i, %i.da
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = add i64 %.sroa.5.0.i.i.i, %i.ch
  br label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5

bb.t:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %.promoted.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !1278, !noalias !1266 ; 2 uses
  %i.dn = add i64 %.promoted.i.i.i, %i.cv         ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.cp
  br i1 %i.do, label %.lr.ph.i8.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread

.lr.ph.i8.i.i:                                    ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !1278, !noalias !1266, !noundef !4
  %i.dr = load i64, ptr %i.ci, align 8, !alias.scope !1278, !noalias !1266 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !1278, !noalias !1266 ; 2 uses
  %i.du = sub i64 %i.ct, %i.dt
  %invariant.op = sub i64 1, %i.dr
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.w, %.lr.ph.i8.i.i
  %.sink70.i.i22.i = phi i64 [ %.sink70.i.i.i, %bb.w ], [ %i.ck, %.lr.ph.i8.i.i ] ; 3 uses
  %.sink71.i.i19.i = phi i64 [ %.sink71.i.i.i, %bb.w ], [ %.promoted.i.i.i, %.lr.ph.i8.i.i ] ; 7 uses
  %i.dv = phi i64 [ %i.ef, %bb.w ], [ %i.dn, %.lr.ph.i8.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !1276, !noalias !1273, !noundef !4
  %i.dy = and i8 %i.dx, 63
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.dq
  %.not.i9.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i9.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ec = add i64 %.sink71.i.i19.i, %i.ct
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ed = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 %.sink70.i.i22.i) ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ct
  br i1 %i.ee, label %.lr.ph, label %.preheader36.i.i.i.preheader

bb.w:                                             ; preds = %bb.aa, %bb.z, %bb.u
  %.sink71.i.i.i = phi i64 [ %i.fa, %bb.aa ], [ %i.ez, %bb.z ], [ %i.ec, %bb.u ] ; 2 uses
  %.sink70.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.du, %bb.z ], [ 0, %bb.u ]
  %i.ef = add i64 %.sink71.i.i.i, %i.cv           ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.cp
  br i1 %i.eg, label %.lr.ph.split.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread

bb.x:                                             ; preds = %.lr.ph
  %i.eh = add nuw nsw i64 %.sroa.04.0.i.i.i97, 1  ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ct
  br i1 %i.ei, label %.lr.ph, label %.preheader36.i.i.i.preheader

.preheader36.i.i.i.preheader:                     ; preds = %bb.x, %bb.v
  %i.ej = icmp ult i64 %.sink70.i.i22.i, %i.dr
  br i1 %i.ej, label %.lr.ph99, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5

.lr.ph:                                           ; preds = %bb.v, %bb.x
  %.sroa.04.0.i.i.i97 = phi i64 [ %i.eh, %bb.x ], [ %i.ed, %bb.v ] ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.04.0.i.i.i97
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !1277, !noalias !1273, !noundef !4
  %i.em = add i64 %.sroa.04.0.i.i.i97, %.sink71.i.i19.i ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.cp
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !1276, !noalias !1273, !noundef !4
  %.not21.i.i.i = icmp eq i8 %i.el, %i.ep
  br i1 %.not21.i.i.i, label %bb.x, label %bb.aa

.preheader36.i.i.i:                               ; preds = %bb.y
  %i.eq = icmp ult i64 %.sink70.i.i22.i, %i.er
  br i1 %i.eq, label %.lr.ph99, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5

.lr.ph99:                                         ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %.sroa.2.0.i.i.i98 = phi i64 [ %i.er, %.preheader36.i.i.i ], [ %i.dr, %.preheader36.i.i.i.preheader ]
  %i.er = add i64 %.sroa.2.0.i.i.i98, -1          ; 6 uses
  %i.es = icmp ult i64 %i.er, %i.ct
  br i1 %i.es, label %bb.y, label %.split32.us.i.i.i

bb.y:                                             ; preds = %.lr.ph99
  %i.et = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !1277, !noalias !1273, !noundef !4
  %i.ev = add i64 %i.er, %.sink71.i.i19.i         ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.cp
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ev
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !1276, !noalias !1273, !noundef !4
  %.not20.i.i.i = icmp eq i8 %i.eu, %i.ey
  br i1 %.not20.i.i.i, label %.preheader36.i.i.i, label %bb.z

.split32.us.i.i.i:                                ; preds = %.lr.ph99
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.er, i64 noundef range(i64 0, -9223372036854775808) %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !1279
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ez = add i64 %.sink71.i.i19.i, %i.dt
  br label %bb.w

bb.aa:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i19.i, %invariant.op
  %i.fa = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i97
  br label %bb.w

bb.ab:                                            ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %.promoted.i11.i.i = load i64, ptr %i.cu, align 8, !alias.scope !1283, !noalias !1266 ; 3 uses
  %i.fb = add i64 %.promoted.i11.i.i, %i.cv       ; 3 uses
  %i.fc = icmp ult i64 %i.fb, %i.cp
  br i1 %i.fc, label %.lr.ph.i14.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread

.lr.ph.i14.i.i:                                   ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !1283, !noalias !1266, !noundef !4 ; 2 uses
  %i.ff = load i64, ptr %i.ci, align 8, !alias.scope !1283, !noalias !1266
  %.fr214.i.i = freeze i64 %i.ff                  ; 10 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !1283, !noalias !1266
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr214.i.i, i64 range(i64 0, -9223372036854775808) %i.ct) ; 2 uses
  %i.fi = add i64 %.fr214.i.i, -1                 ; 2 uses
  %.first_iter.i15.i.i = icmp ult i64 %i.fi, %i.ct
  %reass.sub98.i = sub i64 1, %.fr214.i.i         ; 2 uses
  br i1 %.first_iter.i15.i.i, label %.lr.ph.split.us.i.i.i.us.preheader, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i14.i.i
  %exitcond.not.i16.i.i101.not = icmp ult i64 %.fr214.i.i, %i.ct
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i.us.preheader:               ; preds = %.lr.ph.i14.i.i
  %exitcond.not.i16.i.i.us106.not = icmp ult i64 %.fr214.i.i, %i.ct
  %.not34.i.us.i.i.us109 = icmp eq i64 %.fr214.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us

.lr.ph.split.us.i.i.i.us:                         ; preds = %.lr.ph.split.us.i.i.i.us.preheader, %bb.ae
  %.sink.i17.i25.i.us = phi i64 [ %.sink.i17.i.i.us, %bb.ae ], [ %.promoted.i11.i.i, %.lr.ph.split.us.i.i.i.us.preheader ] ; 7 uses
  %i.fj = phi i64 [ %i.gh, %bb.ae ], [ %i.fb, %.lr.ph.split.us.i.i.i.us.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !1281, !noalias !1273, !noundef !4
  %i.fm = and i8 %i.fl, 63
  %i.fn = zext nneg i8 %i.fm to i64
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = and i64 %i.fo, %i.fe
  %.not.us.i.i.i.us = icmp eq i64 %i.fp, 0
  br i1 %.not.us.i.i.i.us, label %bb.ad, label %.preheader35.i.i.i.us.preheader

.preheader35.i.i.i.us.preheader:                  ; preds = %.lr.ph.split.us.i.i.i.us
  br i1 %exitcond.not.i16.i.i.us106.not, label %.lr.ph108, label %.preheader.i18.us.i.i.us.preheader

.preheader35.i.i.i.us:                            ; preds = %.lr.ph108
  %i.fq = add i64 %.sroa.04.0.us.i.i.i.us107, 1   ; 2 uses
  %exitcond.not.i16.i.i.us = icmp eq i64 %i.fq, %umax.i.i.i
  br i1 %exitcond.not.i16.i.i.us, label %.preheader.i18.us.i.i.us.preheader, label %.lr.ph108

.preheader.i18.us.i.i.us.preheader:               ; preds = %.preheader35.i.i.i.us, %.preheader35.i.i.i.us.preheader
  br i1 %.not34.i.us.i.i.us109, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5, label %.lr.ph111

.lr.ph108:                                        ; preds = %.preheader35.i.i.i.us.preheader, %.preheader35.i.i.i.us
  %.sroa.04.0.us.i.i.i.us107 = phi i64 [ %i.fq, %.preheader35.i.i.i.us ], [ %.fr214.i.i, %.preheader35.i.i.i.us.preheader ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.04.0.us.i.i.i.us107
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !1282, !noalias !1273, !noundef !4
  %i.ft = add i64 %.sroa.04.0.us.i.i.i.us107, %.sink.i17.i25.i.us ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.cp
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !1281, !noalias !1273, !noundef !4
  %.not21.us.i.i.i.us = icmp eq i8 %i.fs, %i.fw
  br i1 %.not21.us.i.i.i.us, label %.preheader35.i.i.i.us, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph108
  %.reass281.i.reass.i.us = add i64 %reass.sub98.i, %.sink.i17.i25.i.us
  %i.fx = add i64 %.reass281.i.reass.i.us, %.sroa.04.0.us.i.i.i.us107
  br label %bb.ae

.preheader.i18.us.i.i.us:                         ; preds = %.lr.ph111
  %.not34.i.us.i.i.us = icmp eq i64 %i.fy, 0
  br i1 %.not34.i.us.i.i.us, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5, label %.lr.ph111

.lr.ph111:                                        ; preds = %.preheader.i18.us.i.i.us.preheader, %.preheader.i18.us.i.i.us
  %.sroa.2.0.us.i.us.i.i.us110 = phi i64 [ %i.fy, %.preheader.i18.us.i.i.us ], [ %.fr214.i.i, %.preheader.i18.us.i.i.us.preheader ]
  %i.fy = add i64 %.sroa.2.0.us.i.us.i.i.us110, -1 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !1282, !noalias !1273, !noundef !4
  %i.gb = add i64 %i.fy, %.sink.i17.i25.i.us      ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.cp
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.gb
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !1281, !noalias !1273, !noundef !4
  %.not20.us.i.us.i.i.us = icmp eq i8 %i.ga, %i.ge
  br i1 %.not20.us.i.us.i.i.us, label %.preheader.i18.us.i.i.us, label %.split.us.i.i.us

.split.us.i.i.us:                                 ; preds = %.lr.ph111
  %i.gf = add i64 %.sink.i17.i25.i.us, %i.fh
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i.i.i.us
  %i.gg = add i64 %.sink.i17.i25.i.us, %i.ct
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.split.us.i.i.us, %bb.ac
  %.sink.i17.i.i.us = phi i64 [ %i.gg, %bb.ad ], [ %i.fx, %bb.ac ], [ %i.gf, %.split.us.i.i.us ] ; 2 uses
  %i.gh = add i64 %.sink.i17.i.i.us, %i.cv        ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.cp
  br i1 %i.gi, label %.lr.ph.split.us.i.i.i.us, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.preheader, %bb.ah
  %.sink.i17.i25.i = phi i64 [ %.sink.i17.i.i, %bb.ah ], [ %.promoted.i11.i.i, %.lr.ph.split.us.i.i.i.preheader ] ; 4 uses
  %i.gj = phi i64 [ %i.gz, %bb.ah ], [ %i.fb, %.lr.ph.split.us.i.i.i.preheader ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !1281, !noalias !1273, !noundef !4
  %i.gm = and i8 %i.gl, 63
  %i.gn = zext nneg i8 %i.gm to i64
  %i.go = shl nuw i64 1, %i.gn
  %i.gp = and i64 %i.go, %i.fe
  %.not.us.i.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not.us.i.i.i, label %bb.ag, label %.preheader35.i.i.i.preheader

.preheader35.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
  br i1 %exitcond.not.i16.i.i101.not, label %.lr.ph103, label %.preheader.i18.i.i

.preheader35.i.i.i:                               ; preds = %.lr.ph103
  %i.gq = add i64 %.sroa.04.0.us.i.i.i102, 1      ; 2 uses
  %exitcond.not.i16.i.i = icmp eq i64 %i.gq, %umax.i.i.i
  br i1 %exitcond.not.i16.i.i, label %.preheader.i18.i.i, label %.lr.ph103

.lr.ph103:                                        ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.sroa.04.0.us.i.i.i102 = phi i64 [ %i.gq, %.preheader35.i.i.i ], [ %.fr214.i.i, %.preheader35.i.i.i.preheader ] ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.04.0.us.i.i.i102
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !1282, !noalias !1273, !noundef !4
  %i.gt = add i64 %.sroa.04.0.us.i.i.i102, %.sink.i17.i25.i ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.cp
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.gt
  %i.gw = load i8, ptr %i.gv, align 1, !alias.scope !1281, !noalias !1273, !noundef !4
  %.not21.us.i.i.i = icmp eq i8 %i.gs, %i.gw
  br i1 %.not21.us.i.i.i, label %.preheader35.i.i.i, label %bb.af

.preheader.i18.i.i:                               ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.not34.i.i.i = icmp eq i64 %.fr214.i.i, 0
  br i1 %.not34.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5, label %.split32.us.i19.i.i

.split32.us.i19.i.i:                              ; preds = %.preheader.i18.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fi, i64 noundef range(i64 0, -9223372036854775808) %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !1284
  unreachable

bb.af:                                            ; preds = %.lr.ph103
  %.reass281.i.reass.i = add i64 %reass.sub98.i, %.sink.i17.i25.i
  %i.gx = add i64 %.reass281.i.reass.i, %.sroa.04.0.us.i.i.i102
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.gy = add i64 %.sink.i17.i25.i, %i.ct
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i17.i.i = phi i64 [ %i.gy, %bb.ag ], [ %i.gx, %bb.af ] ; 2 uses
  %i.gz = add i64 %.sink.i17.i.i, %i.cv           ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.cp
  br i1 %i.ha, label %.lr.ph.split.us.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread

_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread: ; preds = %bb.w, %bb.ah, %bb.ae, %bb.s, %.preheader.i.i, %bb.o, %bb.r, %bb.t, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1266
  br label %bb.be

_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5: ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i, %.preheader.i18.us.i.i.us.preheader, %.preheader.i18.us.i.i.us, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.i.i, %bb.n, %bb.g, %bb.m, %.preheader.i18.i.i, %.loopexit42.i.i
  %.ph = phi i64 [ %i.dm, %.loopexit42.i.i ], [ %.sink71.i.i19.i, %.preheader36.i.i.i ], [ %.sink.i17.i25.i, %.preheader.i18.i.i ], [ %i.n, %bb.m ], [ %.promoted156.i.i, %bb.g ], [ %i.bm, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit12.i.i.us.i.i ], [ %i.bm, %bb.n ], [ %i.bm, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit16.i.i.us.i.i ], [ %i.bm, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3v5ql5U6hxj_6fontir.exit14.i.i.us.i.i ], [ %.sink.i17.i25.i.us, %.preheader.i18.us.i.i.us.preheader ], [ %.sink.i17.i25.i.us, %.preheader.i18.us.i.i.us ], [ %.sink71.i.i19.i, %.preheader36.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1266
  br label %bb.ai

_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1266
  br i1 %i.q, label %bb.ai, label %bb.be

bb.ai:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit
  %i.hb = phi i64 [ %.ph, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread5 ], [ %i.n, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit ] ; 2 uses
  %i.hc = add i64 %i.hb, %2
  %i.hd = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = tail call { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs3v5ql5U6hxj_6fontir(i64 noundef %i.hb, i64 noundef %i.hc, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60), !noalias !1285 ; 2 uses
  %i.hf = extractvalue { i64, i64 } %i.he, 0      ; 7 uses
  %i.hg = extractvalue { i64, i64 } %i.he, 1      ; 7 uses
  %i.hh = icmp eq i64 %i.hf, 0
  br i1 %i.hh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i = icmp ult i64 %i.hf, %i.f
  br i1 %.not.i, label %bb.al, label %.split.i

bb.ak:                                            ; preds = %bb.al, %.split.i, %bb.ai
  %i.hi = icmp eq i64 %i.hg, 0
  br i1 %i.hi, label %bb.ao, label %bb.an

.split.i:                                         ; preds = %bb.aj
  %i.hj = icmp eq i64 %i.hf, %i.f
  br i1 %i.hj, label %bb.ak, label %bb.am, !prof !17

bb.al:                                            ; preds = %bb.aj
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hf
  %i.hl = load i8, ptr %i.hk, align 1, !noalias !1285, !noundef !4
  %i.hm = icmp sgt i8 %i.hl, -65
  br i1 %i.hm, label %bb.ak, label %bb.am, !prof !17

bb.am:                                            ; preds = %bb.al, %.split.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #25, !noalias !1285
  unreachable

bb.an:                                            ; preds = %bb.ak
  %.not33.i = icmp ult i64 %i.hg, %i.f
  br i1 %.not33.i, label %bb.ap, label %.split1.i

bb.ao:                                            ; preds = %bb.ap, %.split1.i, %bb.ak
  %i.hn = icmp samesign ult i64 %i.hf, %i.hg
  br i1 %i.hn, label %bb.ar, label %bb.bd

.split1.i:                                        ; preds = %bb.an
  %i.ho = icmp eq i64 %i.hg, %i.f
  br i1 %i.ho, label %bb.ao, label %bb.aq, !prof !17

bb.ap:                                            ; preds = %bb.an
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hg
  %i.hq = load i8, ptr %i.hp, align 1, !noalias !1285, !noundef !4
  %i.hr = icmp sgt i8 %i.hq, -65
  br i1 %i.hr, label %bb.ao, label %bb.aq, !prof !17

bb.aq:                                            ; preds = %bb.ap, %.split1.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #25, !noalias !1285
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.hs = sub nuw nsw i64 %i.hg, %i.hf            ; 2 uses
  %i.ht = icmp samesign ugt i64 %4, %i.hs
  br i1 %i.ht, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.bd, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1285
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 %4
  call void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.hf, i64 noundef %i.hg), !noalias !1286
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %i.hv, align 8, !alias.scope !1287, !noalias !1285
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.hu, ptr %i.hw, align 8, !alias.scope !1287, !noalias !1285
  invoke void @_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceNtNtNtCsf3Ta7LF998c_4core3str4iter5BytesENtNtNtBX_3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainhEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #22
  resume { ptr, i32 } %i.hx

bb.au:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.hy = load ptr, ptr %i.a, align 8, !alias.scope !1290, !noalias !1285, !nonnull !4, !noundef !4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !1290, !noalias !1285, !nonnull !4, !noundef !4
  %i.ib = icmp eq ptr %i.ia, %i.hy
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.id = load i64, ptr %i.ic, align 8, !alias.scope !1290, !noalias !1285, !noundef !4 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.id, 0        ; 2 uses
  br i1 %i.ib, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCsgCecv3eZDcN_5alloc6stringNtB3_6String13replace_rangeINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECs3v5ql5U6hxj_6fontir.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !1290, !noalias !1285, !nonnull !4, !noundef !4 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !1291, !noundef !4 ; 4 uses
  %i.ii = icmp sgt i64 %i.ih, -1
  call void @llvm.assume(i1 %i.ii)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !1290, !noalias !1285, !noundef !4 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.ik, %i.ih
  br i1 %.not3.i.i.i.i.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %i.il = add i64 %i.ih, %i.id
  store i64 %i.il, ptr %i.ig, align 8, !noalias !1291
  br label %_RINvMNtCsgCecv3eZDcN_5alloc6stringNtB3_6String13replace_rangeINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECs3v5ql5U6hxj_6fontir.exit

bb.ay:                                            ; preds = %bb.aw
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !noalias !1291, !nonnull !4, !noundef !4 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ik
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ih
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ip, ptr nonnull align 1 %i.io, i64 %i.id, i1 false), !noalias !1291
  br label %bb.ax

bb.az:                                            ; preds = %bb.au
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCsgCecv3eZDcN_5alloc6stringNtB3_6String13replace_rangeINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECs3v5ql5U6hxj_6fontir.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !1290, !noalias !1285, !nonnull !4, !noundef !4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !noalias !1291, !noundef !4 ; 4 uses
  %i.iu = icmp sgt i64 %i.it, -1
  call void @llvm.assume(i1 %i.iu)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !1290, !noalias !1285, !noundef !4 ; 2 uses
  %.not3.i.i9.i.i.i.i = icmp eq i64 %i.iw, %i.it
  br i1 %.not3.i.i9.i.i.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %i.ix = add i64 %i.it, %i.id
  store i64 %i.ix, ptr %i.is, align 8, !noalias !1291
  br label %_RINvMNtCsgCecv3eZDcN_5alloc6stringNtB3_6String13replace_rangeINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECs3v5ql5U6hxj_6fontir.exit

bb.bc:                                            ; preds = %bb.ba
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !1291, !nonnull !4, !noundef !4 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iw
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.it
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.jb, ptr nonnull align 1 %i.ja, i64 %i.id, i1 false), !noalias !1291
  br label %bb.bb

bb.bd:                                            ; preds = %bb.ar, %bb.ao
  %.sroa.427.0.i = phi i64 [ 0, %bb.ao ], [ %i.hs, %bb.ar ]
  %i.jc = sub nsw i64 %4, %.sroa.427.0.i
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.jc), !noalias !1286
  br label %bb.as

_RINvMNtCsgCecv3eZDcN_5alloc6stringNtB3_6String13replace_rangeINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.av, %bb.ax, %bb.az, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1285
  br label %bb.be

bb.be:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit, %_RINvMNtCsgCecv3eZDcN_5alloc6stringNtB3_6String13replace_rangeINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECs3v5ql5U6hxj_6fontir.exit
  %i.jd = phi i1 [ false, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit.thread ], [ false, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECs3v5ql5U6hxj_6fontir.exit ], [ true, %_RINvMNtCsgCecv3eZDcN_5alloc6stringNtB3_6String13replace_rangeINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECs3v5ql5U6hxj_6fontir.exit ]
  ret i1 %i.jd
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsgCecv3eZDcN_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNvMst_B1N_B1L_19has_nonidentity_2x2E0INtB7_5FnMutTuB1K_EE8call_mutB1P_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMst_NtCs3v5ql5U6hxj_6fontir2irNtB5_9Component19has_nonidentity_2x2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNCNvNtCs3v5ql5U6hxj_6fontir5glyph31glyph_has_non_export_components0E0INtB7_5FnMutTuB1K_EE8call_mutB2B_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 {
end_hunk_0
