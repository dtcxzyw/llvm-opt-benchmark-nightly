Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_more-8921806d79a3cb34.uu_more.c397001137a5b764-cgu.0?download=true
inline.NumInlined: 797
inline.NumDeleted: 452
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !1595, !noundef !6
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

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit16.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit14.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !1592
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !6 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !6 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 5 uses
  br i1 %i.by, label %bb.aa, label %bb.s

bb.l:                                             ; preds = %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit199

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.bk, align 1, !alias.scope !1593, !noalias !1596, !noundef !6
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.n, label %.loopexit199

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.bl, align 1, !noalias !1597, !noundef !6 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.p, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit12.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit12.i.i: ; preds = %bb.o
  %i.cn = and i8 %i.cl, 31
  %i.co = zext nneg i8 %i.cn to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cp = load i8, ptr %i.bn, align 1, !noalias !1597, !noundef !6
  %i.cq = shl nuw nsw i32 %i.co, 6
  %i.cr = and i8 %i.cp, 63
  %i.cs = zext nneg i8 %i.cr to i32               ; 2 uses
  %i.ct = or disjoint i32 %i.cq, %i.cs
  %i.cu = icmp samesign ugt i8 %i.cl, -33
  br i1 %i.cu, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit14.i.i, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cv = zext nneg i8 %i.cl to i32
  br label %.loopexit.loopexit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit12.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.cw = load i8, ptr %i.bq, align 1, !noalias !1597, !noundef !6
  %i.cx = shl nuw nsw i32 %i.cs, 6
  %i.cy = and i8 %i.cw, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz            ; 2 uses
  %i.db = shl nuw nsw i32 %i.co, 12
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = icmp samesign ugt i8 %i.cl, -17
  br i1 %i.dd, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit16.i.i, label %.loopexit.loopexit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit14.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.de = load i8, ptr %i.bt, align 1, !noalias !1597, !noundef !6
  %i.df = shl nuw nsw i32 %i.co, 18
  %i.dg = and i32 %i.df, 1835008
  %i.dh = shl nuw nsw i32 %i.da, 6
  %i.di = and i8 %i.de, 63
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dh, %i.dj
  %i.dl = or disjoint i32 %i.dk, %i.dg
  br label %.loopexit.loopexit

.loopexit199:                                     ; preds = %bb.m, %.split.i.i, %bb.c, %.split.i.i.peel
  %.lcssa195 = phi i8 [ %.promoted52, %.split.i.i.peel ], [ %.promoted52, %bb.c ], [ 1, %.split.i.i ], [ 1, %bb.m ]
  %.lcssa192 = phi i64 [ %.promoted, %.split.i.i.peel ], [ %.promoted, %bb.c ], [ %i.bh, %.split.i.i ], [ %i.bh, %bb.m ]
  %i.dm = xor i8 %.lcssa195, 1
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !1591
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa192, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #27, !noalias !1596
  unreachable

.loopexit.loopexit:                               ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit16.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit14.i.i, %bb.p, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.dc, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit14.i.i ], [ %i.dl, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit16.i.i ], [ %i.ct, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgN7rS7e43TA_7uu_more.exit12.i.i ], [ %i.cv, %bb.p ]
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dn)
  br label %.loopexit

.loopexit200:                                     ; preds = %bb.d
  %i.do = xor i8 %.promoted52, 1
  store i8 %i.do, ptr %i.g, align 8, !alias.scope !1591
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit200
  store i8 1, ptr %i.d, align 2, !alias.scope !1591
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more.exit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa194 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !1591
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !1591
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit200
  %i.dp = phi i64 [ %.lcssa194, %.loopexit ], [ %i.k, %.loopexit200 ], [ %i.k, %.critedge ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dp, ptr %i.dr, align 8
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more.exit

_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more.exit: ; preds = %bb.r, %bb.q, %.preheader, %.split.us.i12, %._crit_edge.i6, %.split.us.i, %._crit_edge.i
  %storemerge.i.sink = phi i64 [ 1, %.split.us.i12 ], [ 1, %.split.us.i ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i6 ], [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.s:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %.promoted.i = load i64, ptr %i.ch, align 8, !alias.scope !1599 ; 2 uses
  %i.ds = add i64 %.promoted.i, %i.ci             ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cc
  br i1 %i.dt, label %.lr.ph.i1, label %._crit_edge.i

.lr.ph.i1:                                        ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !1599, !noundef !6
  %i.dw = load i64, ptr %i.c, align 8, !alias.scope !1599 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !1599 ; 2 uses
  %i.dz = sub i64 %i.cg, %i.dy
  %invariant.op = sub i64 1, %i.dw
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.v, %bb.s
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !1599
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more.exit

.lr.ph.split.i:                                   ; preds = %bb.v, %.lr.ph.i1
  %i.ea = phi i64 [ %.sink.i4, %bb.v ], [ %i.bx, %.lr.ph.i1 ] ; 3 uses
  %i.eb = phi i64 [ %i.em, %bb.v ], [ %i.ds, %.lr.ph.i1 ]
  %i.ec = phi i64 [ %i.el, %bb.v ], [ %.promoted.i, %.lr.ph.i1 ] ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !1600, !noundef !6
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, %i.dv
  %.not.i2 = icmp eq i64 %i.ei, 0
  br i1 %.not.i2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i
  %i.ej = add i64 %i.ec, %i.cg                    ; 2 uses
  store i64 %i.ej, ptr %i.ch, align 8, !alias.scope !1599
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i
  %..i.i3 = tail call noundef i64 @llvm.umax.i64(i64 %i.ea, i64 %i.dw) ; 2 uses
  %i.ek = icmp ult i64 %..i.i3, %i.cg
  br i1 %i.ek, label %.lr.ph153, label %.preheader36.i.preheader

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.t
  %.sink.i4 = phi i64 [ 0, %bb.z ], [ %i.dz, %bb.y ], [ 0, %bb.t ] ; 2 uses
  %i.el = phi i64 [ %i.fk, %bb.z ], [ %i.fj, %bb.y ], [ %i.ej, %bb.t ] ; 2 uses
  store i64 %.sink.i4, ptr %i.bw, align 8, !alias.scope !1599
  %i.em = add i64 %i.el, %i.ci                    ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.cc
  br i1 %i.en, label %.lr.ph.split.i, label %._crit_edge.i

bb.w:                                             ; preds = %.lr.ph153
  %i.eo = add nuw nsw i64 %.sroa.04.0.i152, 1     ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.cg
  br i1 %i.ep, label %.lr.ph153, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.w, %bb.u
  %i.eq = icmp ult i64 %i.ea, %i.dw
  br i1 %i.eq, label %.lr.ph155.a, label %.split.us.i

.lr.ph153:                                        ; preds = %bb.u, %bb.w
  %.sroa.04.0.i152 = phi i64 [ %i.eo, %bb.w ], [ %..i.i3, %bb.u ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.i152
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !1601, !noundef !6
  %i.et = add i64 %.sroa.04.0.i152, %i.ec         ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.cc
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !1600, !noundef !6
  %.not21.i = icmp eq i8 %i.es, %i.ew
  br i1 %.not21.i, label %bb.w, label %bb.z

.preheader36.i:                                   ; preds = %bb.x
  %i.ex = icmp ult i64 %i.ea, %i.fb
  br i1 %i.ex, label %.lr.ph155.a, label %.split.us.i

.split.us.i:                                      ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.ey = add i64 %i.ec, %i.cg                    ; 2 uses
  store i64 %i.ey, ptr %i.ch, align 8, !alias.scope !1599
  store i64 0, ptr %i.bw, align 8, !alias.scope !1599
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ec, ptr %i.ez, align 8, !alias.scope !1602
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ey, ptr %i.fa, align 8, !alias.scope !1602
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more.exit

.lr.ph155.a:                                      ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i154 = phi i64 [ %i.fb, %.preheader36.i ], [ %i.dw, %.preheader36.i.preheader ]
  %i.fb = add i64 %.sroa.2.0.i154, -1             ; 6 uses
  %i.fc = icmp ult i64 %i.fb, %i.cg
  br i1 %i.fc, label %bb.x, label %.split32.us.i

bb.x:                                             ; preds = %.lr.ph155.a
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fb
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !1601, !noundef !6
  %i.ff = add i64 %i.fb, %i.ec                    ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.cc
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !1600, !noundef !6
  %.not20.i = icmp eq i8 %i.fe, %i.fi
  br i1 %.not20.i, label %.preheader36.i, label %bb.y

.split32.us.i:                                    ; preds = %.lr.ph155.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #27, !noalias !1603
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.fj = add i64 %i.ec, %i.dy
  br label %bb.v

bb.z:                                             ; preds = %.lr.ph153
  %.reass.reass = add i64 %i.ec, %invariant.op
  %i.fk = add i64 %.reass.reass, %.sroa.04.0.i152 ; 2 uses
  store i64 %i.fk, ptr %i.ch, align 8, !alias.scope !1599
  br label %bb.v

bb.aa:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  %.promoted.i5 = load i64, ptr %i.ch, align 8, !alias.scope !1605 ; 3 uses
  %i.fl = add i64 %.promoted.i5, %i.ci            ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %i.cc
  br i1 %i.fm, label %.lr.ph.i8, label %._crit_edge.i6

.lr.ph.i8:                                        ; preds = %bb.aa
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !1605, !noundef !6 ; 2 uses
  %i.fp = load i64, ptr %i.c, align 8, !alias.scope !1605
  %.fr63 = freeze i64 %i.fp                       ; 10 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !1605
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr63, i64 range(i64 0, -9223372036854775808) %i.cg) ; 2 uses
  %i.fs = add i64 %.fr63, -1                      ; 2 uses
  %.first_iter.i9 = icmp ult i64 %i.fs, %i.cg
  %i.ft = sub i64 1, %.fr63                       ; 2 uses
  br i1 %.first_iter.i9, label %.lr.ph.split.us.i.us.preheader, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i8
  %exitcond.not.i157.not = icmp ult i64 %.fr63, %i.cg
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i.us.preheader:                   ; preds = %.lr.ph.i8
  %exitcond.not.i.us162.not = icmp ult i64 %.fr63, %i.cg
  %.not34.i.us.us165 = icmp eq i64 %.fr63, 0
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.i.us.preheader, %bb.ad
  %i.fu = phi i64 [ %i.gv, %bb.ad ], [ %i.fl, %.lr.ph.split.us.i.us.preheader ]
  %i.fv = phi i64 [ %i.gu, %bb.ad ], [ %.promoted.i5, %.lr.ph.split.us.i.us.preheader ] ; 7 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fu
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !1606, !noundef !6
  %i.fy = and i8 %i.fx, 63
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = and i64 %i.ga, %i.fo
  %.not.us.i.us = icmp eq i64 %i.gb, 0
  br i1 %.not.us.i.us, label %bb.ac, label %.preheader35.i.us.preheader

.preheader35.i.us.preheader:                      ; preds = %.lr.ph.split.us.i.us
  br i1 %exitcond.not.i.us162.not, label %.lr.ph164, label %.preheader.i10.us.us.preheader

.preheader35.i.us:                                ; preds = %.lr.ph164
  %i.gc = add i64 %.sroa.04.0.us.i.us163, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.gc, %umax.i
  br i1 %exitcond.not.i.us, label %.preheader.i10.us.us.preheader, label %.lr.ph164

.preheader.i10.us.us.preheader:                   ; preds = %.preheader35.i.us, %.preheader35.i.us.preheader
  br i1 %.not34.i.us.us165, label %.split.us.i12, label %.lr.ph167

.lr.ph164:                                        ; preds = %.preheader35.i.us.preheader, %.preheader35.i.us
  %.sroa.04.0.us.i.us163 = phi i64 [ %i.gc, %.preheader35.i.us ], [ %.fr63, %.preheader35.i.us.preheader ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i.us163
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !1607, !noundef !6
  %i.gf = add i64 %.sroa.04.0.us.i.us163, %i.fv   ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.cc
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gf
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !1606, !noundef !6
  %.not21.us.i.us = icmp eq i8 %i.ge, %i.gi
  br i1 %.not21.us.i.us, label %.preheader35.i.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph164
  %i.gj = add i64 %i.ft, %i.fv
  %i.gk = add i64 %i.gj, %.sroa.04.0.us.i.us163
  br label %bb.ad

.preheader.i10.us.us:                             ; preds = %.lr.ph167
  %.not34.i.us.us = icmp eq i64 %i.gl, 0
  br i1 %.not34.i.us.us, label %.split.us.i12, label %.lr.ph167

.lr.ph167:                                        ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us
  %.sroa.2.0.us.i.us.us166 = phi i64 [ %i.gl, %.preheader.i10.us.us ], [ %.fr63, %.preheader.i10.us.us.preheader ]
  %i.gl = add i64 %.sroa.2.0.us.i.us.us166, -1    ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !1607, !noundef !6
  %i.go = add i64 %i.gl, %i.fv                    ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.cc
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !1606, !noundef !6
  %.not20.us.i.us.us = icmp eq i8 %i.gn, %i.gr
  br i1 %.not20.us.i.us.us, label %.preheader.i10.us.us, label %.split.us.us

.split.us.us:                                     ; preds = %.lr.ph167
  %i.gs = add i64 %i.fv, %i.fr
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.us.i.us
  %i.gt = add i64 %i.fv, %i.cg                    ; 2 uses
  store i64 %i.gt, ptr %i.ch, align 8, !alias.scope !1605
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us.us, %bb.ab
  %i.gu = phi i64 [ %i.gk, %bb.ab ], [ %i.gt, %bb.ac ], [ %i.gs, %.split.us.us ] ; 2 uses
  %i.gv = add i64 %i.gu, %i.ci                    ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.cc
  br i1 %i.gw, label %.lr.ph.split.us.i.us, label %._crit_edge.i6

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.ag
  %i.gx = phi i64 [ %i.hq, %bb.ag ], [ %i.fl, %.lr.ph.split.us.i.preheader ]
  %i.gy = phi i64 [ %i.hp, %bb.ag ], [ %.promoted.i5, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gx
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !1606, !noundef !6
  %i.hb = and i8 %i.ha, 63
  %i.hc = zext nneg i8 %i.hb to i64
  %i.hd = shl nuw i64 1, %i.hc
  %i.he = and i64 %i.hd, %i.fo
  %.not.us.i = icmp eq i64 %i.he, 0
  br i1 %.not.us.i, label %bb.af, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i157.not, label %.lr.ph159, label %.preheader.i10

.preheader35.i:                                   ; preds = %.lr.ph159
  %i.hf = add i64 %.sroa.04.0.us.i158, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hf, %umax.i
  br i1 %exitcond.not.i, label %.preheader.i10, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i158 = phi i64 [ %i.hf, %.preheader35.i ], [ %.fr63, %.preheader35.i.preheader ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i158
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !1607, !noundef !6
  %i.hi = add i64 %.sroa.04.0.us.i158, %i.gy      ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.cc
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.hi
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !1606, !noundef !6
  %.not21.us.i = icmp eq i8 %i.hh, %i.hl
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.ae

.preheader.i10:                                   ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.not34.i = icmp eq i64 %.fr63, 0
  br i1 %.not34.i, label %.split.us.i12, label %.split32.us.i11

.split32.us.i11:                                  ; preds = %.preheader.i10
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.fs, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #27, !noalias !1608
  unreachable

bb.ae:                                            ; preds = %.lr.ph159
  %i.hm = add i64 %i.ft, %i.gy
  %i.hn = add i64 %i.hm, %.sroa.04.0.us.i158
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %i.ho = add i64 %i.gy, %i.cg
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hp = phi i64 [ %i.hn, %bb.ae ], [ %i.ho, %bb.af ] ; 2 uses
  %i.hq = add i64 %i.hp, %i.ci                    ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.cc
  br i1 %i.hr, label %.lr.ph.split.us.i, label %._crit_edge.i6

._crit_edge.i6:                                   ; preds = %bb.ag, %bb.ad, %bb.aa
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !1605
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more.exit

.split.us.i12:                                    ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us, %.preheader.i10
  %.us-phi = phi i64 [ %i.gy, %.preheader.i10 ], [ %i.fv, %.preheader.i10.us.us ], [ %i.fv, %.preheader.i10.us.us.preheader ] ; 2 uses
  %i.hs = add i64 %.us-phi, %i.cg                 ; 2 uses
  store i64 %i.hs, ptr %i.ch, align 8, !alias.scope !1605
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi, ptr %i.ht, align 8, !alias.scope !1609
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hs, ptr %i.hu, align 8, !alias.scope !1609
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead10read_untilCsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) #26
  ret { i64, ptr } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead10skip_untilCsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %bb.n, %bb.a
  %.sroa.01.0.ph.i = phi i64 [ %i.bg, %bb.n ], [ 0, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgN7rS7e43TA_7uu_more.exit.i, %.outer.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  %i.l = load i64, ptr %i.c, align 8, !alias.scope !1631, !noundef !6 ; 2 uses
  %i.m = load i64, ptr %i.d, align 8, !alias.scope !1631, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.l, %i.m
  %.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1631 ; 3 uses
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1632
  %i.n = load i64, ptr %i.f, align 8, !alias.scope !1631, !noundef !6
  store ptr %.pre.i.i.i, ptr %i.b, align 8, !noalias !1632
  store i64 %i.n, ptr %i.g, align 8, !noalias !1632
  store i64 0, ptr %i.h, align 8, !noalias !1632
  %i.o = load i8, ptr %i.j, align 8, !range !13, !alias.scope !1631, !noundef !6
  store i8 %i.o, ptr %i.i, align 8, !noalias !1632
  %i.p = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #26, !noalias !1633 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !1631
  %i.q = load i64, ptr %i.h, align 8, !noalias !1632, !noundef !6 ; 2 uses
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !1631
  %i.r = load i8, ptr %i.i, align 8, !range !13, !noalias !1632, !noundef !6
  store i8 %i.r, ptr %i.j, align 8, !alias.scope !1631
  %.not3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not3.i.i.i, label %bb.d, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more.exit.thread.i

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more.exit.thread.i: ; preds = %bb.c
  %i.s = ptrtoint ptr %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1632
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1632
  br label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more.exit.i

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more.exit.i: ; preds = %bb.d, %bb.b
  %i.t = phi i64 [ %i.m, %bb.b ], [ %i.q, %bb.d ]
  %i.u = phi i64 [ %i.l, %bb.b ], [ 0, %bb.d ]    ; 2 uses
  %i.v = sub nuw i64 %i.t, %i.u                   ; 9 uses
  %i.w = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.w, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more.exit.i, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more.exit.thread.i
  %.sroa.8.020.i = phi i64 [ %i.s, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more.exit.thread.i ], [ %i.v, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more.exit.i ] ; 6 uses
  %i.x = inttoptr i64 %.sroa.8.020.i to ptr       ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = and i64 %.sroa.8.020.i, 3                ; 2 uses
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !11

default.unreachable:                              ; preds = %bb.o, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.z = lshr i64 %.sroa.8.020.i, 32
  %i.aa = trunc nuw i64 %i.z to i32
  %i.ab = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !6, !noundef !6
  %i.ae = call noundef i8 %i.ad(i32 noundef %i.aa) #26, !inline_history !1619
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = lshr i64 %.sroa.8.020.i, 32
  %i.ag = icmp ult i64 %.sroa.8.020.i, 188978561024
  %switch.idx.cast.i.i.i.i = trunc nuw nsw i64 %i.af to i8
  call void @llvm.assume(i1 %i.ag)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.h:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !15, !noundef !6
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.i:                                             ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %i.x, i64 31
  %i.ak = load i8, ptr %i.aj, align 8, !range !15, !noundef !6
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i8 [ %i.ae, %bb.f ], [ %switch.idx.cast.i.i.i.i, %bb.g ], [ %i.ai, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = icmp eq i8 %.sroa.0.0.i.i, 35
  br i1 %i.al, label %bb.o, label %_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_skip_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgN7rS7e43TA_7uu_more.exit

bb.j:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.u ; 2 uses
  %i.an = icmp samesign ult i64 %i.v, 16
  br i1 %i.an, label %.preheader.i.i, label %bb.k

.preheader.i.i:                                   ; preds = %bb.j
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.j
  %i.ao = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef range(i64 0, -9223372036854775808) %i.v) #26
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i

._crit_edge.i.i:                                  ; preds = %bb.l, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %i.v, %bb.l ]
  %.sroa.0.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ 1, %.lr.ph.i.i ], [ 0, %bb.l ]
  %i.ap = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i, 0
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 %.sroa.01.0.lcssa.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.l
  %.sroa.01.05.i.i = phi i64 [ %i.au, %bb.l ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.05.i.i
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !1634, !noundef !6
  %i.at = icmp eq i8 %i.as, %1
  br i1 %i.at, label %._crit_edge.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.au = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.v
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i: ; preds = %._crit_edge.i.i, %bb.k
  %.merged.i.i = phi { i64, i64 } [ %i.aq, %._crit_edge.i.i ], [ %i.ao, %bb.k ] ; 2 uses
  %i.av = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i
  %i.ax = extractvalue { i64, i64 } %.merged.i.i, 1
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  %i.az = load i64, ptr %i.c, align 8, !alias.scope !1635, !noundef !6
  %i.ba = add i64 %i.az, %i.ay
  %i.bb = load i64, ptr %i.d, align 8, !alias.scope !1635, !noundef !6
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ba)
  store i64 %..i.i.i, ptr %i.c, align 8, !alias.scope !1635
  %i.bc = add i64 %i.ay, %.sroa.01.0.ph.i
  br label %.loopexit.i

bb.n:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i
  %i.bd = load i64, ptr %i.c, align 8, !alias.scope !1636, !noundef !6
  %i.be = add i64 %i.bd, %i.v
  %i.bf = load i64, ptr %i.d, align 8, !alias.scope !1636, !noundef !6
  %..i.i14.i = call noundef i64 @llvm.umin.i64(i64 %i.bf, i64 %i.be)
  store i64 %..i.i14.i, ptr %i.c, align 8, !alias.scope !1636
  %i.bg = add i64 %i.v, %.sroa.01.0.ph.i          ; 2 uses
  %i.bh = icmp eq i64 %i.v, 0
  br i1 %i.bh, label %.loopexit.i, label %.outer.i

.loopexit.i:                                      ; preds = %bb.n, %bb.m
  %.sroa.01.1.i = phi i64 [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  %i.bi = inttoptr i64 %.sroa.01.1.i to ptr
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_skip_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgN7rS7e43TA_7uu_more.exit

bb.o:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1628
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgN7rS7e43TA_7uu_more.exit.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgN7rS7e43TA_7uu_more.exit.i
    i64 1, label %bb.q
  ], !prof !11

bb.p:                                             ; preds = %bb.o
  %i.bj = icmp ult i64 %.sroa.8.020.i, 188978561024
  call void @llvm.assume(i1 %i.bj)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgN7rS7e43TA_7uu_more.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr i8, ptr %i.x, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  store ptr %i.bk, ptr %i.k, align 8, !alias.scope !1637, !noalias !1628
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!1408 = distinct !{!1408, !1407, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more: argument 0"}
!1409 = !{!1396}
!1410 = !{!1402, !1401, !1399}
!1411 = !{!1402, !1399}
!1412 = !{!1399}
!1413 = !{!1404}
!1414 = !{!1406, !1404, !1399}
!1415 = !{!1404, !1399}
!1416 = !{!1408, !1399}
!1417 = distinct !{!1417, i1 true, !"_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl"}
!1418 = distinct !{!1418, !1417, !"_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl: argument 0"}
!1419 = distinct !{!1419, !1417, !"_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!1420 = !{!1418}
!1421 = !{!1419}
!1422 = distinct !{!1422, i1 true, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_refs0_0CsgN7rS7e43TA_7uu_more"}
!1423 = distinct !{!1423, !1422, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_refs0_0CsgN7rS7e43TA_7uu_more: argument 0"}
!1424 = distinct !{!1424, i1 true, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!1425 = distinct !{!1425, !1424, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!1426 = distinct !{!1426, i1 true, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_refs1_0CsgN7rS7e43TA_7uu_more"}
!1427 = distinct !{!1427, !1426, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_refs1_0CsgN7rS7e43TA_7uu_more: argument 0"}
!1428 = distinct !{!1428, i1 true, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsgN7rS7e43TA_7uu_more"}
!1429 = distinct !{!1429, !1428, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsgN7rS7e43TA_7uu_more: argument 1"}
!1430 = distinct !{!1430, !1428, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsgN7rS7e43TA_7uu_more: argument 0"}
!1431 = distinct !{!1431, i1 true, !"_RNCNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParsertENtB9_16TypedValueParser9parse_refs1_0s_0CsgN7rS7e43TA_7uu_more"}
!1432 = distinct !{!1432, !1431, !"_RNCNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParsertENtB9_16TypedValueParser9parse_refs1_0s_0CsgN7rS7e43TA_7uu_more: argument 0"}
!1433 = distinct !{!1433, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more"}
!1434 = distinct !{!1434, !1433, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more: argument 0"}
!1435 = distinct !{!1435, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more"}
!1436 = distinct !{!1436, !1435, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more: argument 0"}
!1437 = distinct !{!1437, i1 true, !"_RINvYTINtNtNtCs6JMX4GRUq9U_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsgN7rS7e43TA_7uu_more"}
!1438 = distinct !{!1438, !1437, !"_RINvYTINtNtNtCs6JMX4GRUq9U_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsgN7rS7e43TA_7uu_more: argument 0"}
!1439 = distinct !{!1439, i1 true, !"_RNvXsq_NtNtCs6JMX4GRUq9U_4core3ops5rangeTINtB5_5BoundxEBD_EINtB5_11RangeBoundsxE11start_boundCsgN7rS7e43TA_7uu_more"}
!1440 = distinct !{!1440, !1439, !"_RNvXsq_NtNtCs6JMX4GRUq9U_4core3ops5rangeTINtB5_5BoundxEBD_EINtB5_11RangeBoundsxE11start_boundCsgN7rS7e43TA_7uu_more: argument 0"}
!1441 = distinct !{!1441, i1 true, !"_RNvXs1e_NtNtCs6JMX4GRUq9U_4core3cmp5implsxNtB8_10PartialOrd2le"}
!1442 = distinct !{!1442, !1441, !"_RNvXs1e_NtNtCs6JMX4GRUq9U_4core3cmp5implsxNtB8_10PartialOrd2le: argument 0"}
!1443 = distinct !{!1443, i1 true, !"_RNvXs1e_NtNtCs6JMX4GRUq9U_4core3cmp5implsxNtB8_10PartialOrd2lt"}
!1444 = distinct !{!1444, !1443, !"_RNvXs1e_NtNtCs6JMX4GRUq9U_4core3cmp5implsxNtB8_10PartialOrd2lt: argument 0"}
!1445 = distinct !{!1445, i1 true, !"_RNvXsq_NtNtCs6JMX4GRUq9U_4core3ops5rangeTINtB5_5BoundxEBD_EINtB5_11RangeBoundsxE9end_boundCsgN7rS7e43TA_7uu_more"}
!1446 = distinct !{!1446, !1445, !"_RNvXsq_NtNtCs6JMX4GRUq9U_4core3ops5rangeTINtB5_5BoundxEBD_EINtB5_11RangeBoundsxE9end_boundCsgN7rS7e43TA_7uu_more: argument 0"}
!1447 = distinct !{!1447, i1 true, !"_RNvXs1e_NtNtCs6JMX4GRUq9U_4core3cmp5implsxNtB8_10PartialOrd2lt"}
!1448 = distinct !{!1448, !1447, !"_RNvXs1e_NtNtCs6JMX4GRUq9U_4core3cmp5implsxNtB8_10PartialOrd2lt: argument 1"}
!1449 = distinct !{!1449, i1 true, !"_RNvXs1e_NtNtCs6JMX4GRUq9U_4core3cmp5implsxNtB8_10PartialOrd2le"}
!1450 = distinct !{!1450, !1449, !"_RNvXs1e_NtNtCs6JMX4GRUq9U_4core3cmp5implsxNtB8_10PartialOrd2le: argument 1"}
!1451 = distinct !{!1451, i1 true, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_ref0CsgN7rS7e43TA_7uu_more"}
!1452 = distinct !{!1452, !1451, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_ref0CsgN7rS7e43TA_7uu_more: argument 1"}
!1453 = distinct !{!1453, !1451, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_ref0CsgN7rS7e43TA_7uu_more: argument 0"}
!1454 = distinct !{!1454, i1 true, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsgN7rS7e43TA_7uu_more"}
!1455 = distinct !{!1455, !1454, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsgN7rS7e43TA_7uu_more: argument 1"}
!1456 = distinct !{!1456, !1454, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsgN7rS7e43TA_7uu_more: argument 0"}
!1457 = distinct !{!1457, i1 true, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_refs_0CsgN7rS7e43TA_7uu_more"}
!1458 = distinct !{!1458, !1457, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_refs_0CsgN7rS7e43TA_7uu_more: argument 0"}
!1459 = distinct !{!1459, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more"}
!1460 = distinct !{!1460, !1459, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more: argument 0"}
!1461 = distinct !{!1461, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more"}
!1462 = distinct !{!1462, !1461, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more: argument 0"}
!1463 = distinct !{!1463, i1 true, !"_RNvMst_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsertE13format_boundsCsgN7rS7e43TA_7uu_more"}
!1464 = distinct !{!1464, !1463, !"_RNvMst_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsertE13format_boundsCsgN7rS7e43TA_7uu_more: argument 1"}
!1465 = distinct !{!1465, !1463, !"_RNvMst_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsertE13format_boundsCsgN7rS7e43TA_7uu_more: argument 0"}
!1466 = distinct !{!1466, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more"}
!1467 = distinct !{!1467, !1466, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more: argument 0"}
!1468 = distinct !{!1468, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more"}
!1469 = distinct !{!1469, !1468, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more: argument 0"}
!1470 = distinct !{!1470, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push"}
!1471 = distinct !{!1471, !1470, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push: argument 0"}
!1472 = distinct !{!1472, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more"}
!1473 = distinct !{!1473, !1472, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more: argument 0"}
!1474 = distinct !{!1474, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more"}
!1475 = distinct !{!1475, !1474, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more: argument 0"}
!1476 = distinct !{!1476, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more"}
!1477 = distinct !{!1477, !1476, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more: argument 0"}
!1478 = distinct !{!1478, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more"}
!1479 = distinct !{!1479, !1478, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more: argument 0"}
!1480 = distinct !{!1480, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more"}
!1481 = distinct !{!1481, !1480, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more: argument 0"}
!1482 = distinct !{!1482, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more"}
!1483 = distinct !{!1483, !1482, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more: argument 0"}
!1484 = distinct !{!1484, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more"}
!1485 = distinct !{!1485, !1484, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more: argument 0"}
!1486 = distinct !{!1486, i1 true, !"_RNvXs1M_NtCs7tKScEop1B6_5alloc6stringxNtB6_12SpecToString14spec_to_string"}
!1487 = distinct !{!1487, !1486, !"_RNvXs1M_NtCs7tKScEop1B6_5alloc6stringxNtB6_12SpecToString14spec_to_string: argument 0"}
!1488 = distinct !{!1488, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more"}
!1489 = distinct !{!1489, !1488, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more: argument 0"}
!1490 = distinct !{!1490, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more"}
!1491 = distinct !{!1491, !1490, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more: argument 0"}
!1492 = distinct !{!1492, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more"}
!1493 = distinct !{!1493, !1492, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more: argument 0"}
!1494 = distinct !{!1494, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more"}
!1495 = distinct !{!1495, !1494, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more: argument 0"}
!1496 = distinct !{!1496, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more"}
!1497 = distinct !{!1497, !1496, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more: argument 0"}
!1498 = distinct !{!1498, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more"}
!1499 = distinct !{!1499, !1498, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more: argument 0"}
!1500 = distinct !{!1500, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCs6JMX4GRUq9U_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsgN7rS7e43TA_7uu_more"}
!1501 = distinct !{!1501, !1500, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCs6JMX4GRUq9U_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsgN7rS7e43TA_7uu_more: argument 0"}
!1502 = distinct !{!1502, i1 true, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_refs2_0CsgN7rS7e43TA_7uu_more"}
!1503 = distinct !{!1503, !1502, !"_RNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsertENtB7_16TypedValueParser9parse_refs2_0CsgN7rS7e43TA_7uu_more: argument 0"}
!1504 = distinct !{!1504, i1 true, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsgN7rS7e43TA_7uu_more"}
!1505 = distinct !{!1505, !1504, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsgN7rS7e43TA_7uu_more: argument 1"}
!1506 = distinct !{!1506, !1504, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCsgNwXemyrBWj_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCsgN7rS7e43TA_7uu_more: argument 0"}
!1507 = distinct !{!1507, i1 true, !"_RNCNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParsertENtB9_16TypedValueParser9parse_refs2_0s_0CsgN7rS7e43TA_7uu_more"}
!1508 = distinct !{!1508, !1507, !"_RNCNCNvXsu_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserINtB9_20RangedI64ValueParsertENtB9_16TypedValueParser9parse_refs2_0s_0CsgN7rS7e43TA_7uu_more: argument 0"}
!1509 = distinct !{!1509, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more"}
!1510 = distinct !{!1510, !1509, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more: argument 0"}
!1511 = distinct !{!1511, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more"}
!1512 = distinct !{!1512, !1511, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more: argument 0"}
!1513 = !{!1423}
!1514 = !{!1425}
!1515 = !{!1430, !1429, !1427}
!1516 = !{!1430, !1427}
!1517 = !{!1427}
!1518 = !{!1432}
!1519 = !{!1434, !1432, !1427}
!1520 = !{!1432, !1427}
!1521 = !{!1436, !1427}
!1522 = !{!1440, !1438}
!1523 = !{!1442, !1438}
!1524 = !{!1444, !1438}
!1525 = !{!1446, !1438}
!1526 = !{!1448, !1438}
!1527 = !{!1450, !1438}
!1528 = !{!1456, !1455, !1453, !1452}
!1529 = !{!1456, !1453}
!1530 = !{!1458}
!1531 = !{!1460, !1458}
!1532 = !{!1462}
!1533 = !{!1464}
!1534 = !{!1465, !1464}
!1535 = !{!1467}
!1536 = !{!1469, !1467}
!1537 = !{!1467, !1465, !1464}
!1538 = !{!1471}
!1539 = !{!1473, !1471}
!1540 = !{!1477, !1475}
!1541 = !{!1471, !1465, !1464}
!1542 = !{!1475}
!1543 = !{!1475, !1465, !1464}
!1544 = !{!1479}
!1545 = !{!1479, !1465, !1464}
!1546 = !{!1481}
!1547 = !{!1483, !1481}
!1548 = !{!1481, !1465, !1464}
!1549 = !{!1485}
!1550 = !{!1485, !1465, !1464}
!1551 = !{!1487, !1465, !1464}
!1552 = !{!1489, !1487, !1465, !1464}
!1553 = !{!1491}
!1554 = !{!1491, !1487, !1465, !1464}
!1555 = !{!1493}
!1556 = !{!1495, !1493}
!1557 = !{!1493, !1465, !1464}
!1558 = !{!1497, !1465, !1464}
!1559 = !{!1499}
!1560 = !{!1501}
!1561 = !{!1506, !1505, !1503}
!1562 = !{!1506, !1503}
!1563 = !{!1503}
!1564 = !{!1508}
!1565 = !{!1510, !1508, !1503}
!1566 = !{!1508, !1503}
!1567 = !{!1512, !1503}
!1568 = distinct !{!1568, i1 true, !"_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!1569 = distinct !{!1569, !1568, !"_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!1570 = distinct !{!1570, i1 true, !"_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!1571 = distinct !{!1571, !1570, !"_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!1572 = distinct !{!1572, i1 true, !"_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1573 = distinct !{!1573, !1572, !"_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1574 = distinct !{!1574, !1568, !"_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!1575 = distinct !{!1575, i1 true, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgN7rS7e43TA_7uu_more"}
!1576 = distinct !{!1576, !1575, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgN7rS7e43TA_7uu_more: argument 0"}
!1577 = distinct !{!1577, i1 true, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more"}
!1578 = distinct !{!1578, !1577, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more: argument 0"}
!1579 = distinct !{!1579, !1577, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more: argument 1"}
!1580 = distinct !{!1580, !1577, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more: argument 2"}
!1581 = distinct !{!1581, !1577, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more: argument 3"}
!1582 = distinct !{!1582, i1 true, !"_RNvXsy_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!1583 = distinct !{!1583, !1582, !"_RNvXsy_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!1584 = distinct !{!1584, i1 true, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more"}
!1585 = distinct !{!1585, !1584, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more: argument 0"}
!1586 = distinct !{!1586, !1584, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more: argument 1"}
!1587 = distinct !{!1587, !1584, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more: argument 2"}
!1588 = distinct !{!1588, !1584, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgN7rS7e43TA_7uu_more: argument 3"}
!1589 = distinct !{!1589, i1 true, !"_RNvXsy_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!1590 = distinct !{!1590, !1589, !"_RNvXsy_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!1591 = !{!1569}
!1592 = !{!1571}
!1593 = !{!1573}
!1594 = !{!1574, !1571}
!1595 = !{!1576, !1574, !1571}
!1596 = !{!1574, !1569}
!1597 = !{!1576, !1574, !1569}
!1598 = !{!1578}
!1599 = !{!1579}
!1600 = !{!1580}
!1601 = !{!1581}
!1602 = !{!1583, !1578}
!1603 = !{!1578, !1579, !1580, !1581}
!1604 = !{!1585}
!1605 = !{!1586}
!1606 = !{!1587}
!1607 = !{!1588}
!1608 = !{!1585, !1586, !1587, !1588}
!1609 = !{!1590, !1585}
!1610 = distinct !{!1610, i1 true, !"_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_skip_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgN7rS7e43TA_7uu_more"}
!1611 = distinct !{!1611, !1610, !"_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_skip_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgN7rS7e43TA_7uu_more: argument 0"}
!1612 = distinct !{!1612, i1 true, !"_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more"}
!1613 = distinct !{!1613, !1612, !"_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more: argument 1"}
!1614 = distinct !{!1614, i1 true, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgN7rS7e43TA_7uu_more"}
!1615 = distinct !{!1615, !1614, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgN7rS7e43TA_7uu_more: argument 1"}
!1616 = distinct !{!1616, !1612, !"_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more: argument 0"}
!1617 = distinct !{!1617, !1614, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgN7rS7e43TA_7uu_more: argument 2"}
!1618 = distinct !{!1618, !1614, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgN7rS7e43TA_7uu_more: argument 0"}
!1619 = distinct !{null, null}
!1620 = distinct !{!1620, i1 true, !"_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr"}
!1621 = distinct !{!1621, !1620, !"_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr: argument 0"}
!1622 = distinct !{!1622, i1 true, !"_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead7consumeCsgN7rS7e43TA_7uu_more"}
!1623 = distinct !{!1623, !1622, !"_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead7consumeCsgN7rS7e43TA_7uu_more: argument 0"}
!1624 = distinct !{!1624, i1 true, !"_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead7consumeCsgN7rS7e43TA_7uu_more"}
!1625 = distinct !{!1625, !1624, !"_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead7consumeCsgN7rS7e43TA_7uu_more: argument 0"}
!1626 = distinct !{!1626, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgN7rS7e43TA_7uu_more"}
!1627 = distinct !{!1627, !1626, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgN7rS7e43TA_7uu_more: argument 0"}
!1628 = !{!1611}
!1629 = !{!1613}
!1630 = !{!1615}
!1631 = !{!1615, !1613, !1611}
!1632 = !{!1618, !1615, !1617, !1616, !1613, !1611}
!1633 = !{!1618, !1615, !1616}
!1634 = !{!1621}
!1635 = !{!1623, !1611}
!1636 = !{!1625, !1611}
!1637 = !{!1627}
!1638 = distinct !{!1638, i1 true, !"_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more"}
!1639 = distinct !{!1639, !1638, !"_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more: argument 1"}
!1640 = distinct !{!1640, i1 true, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgN7rS7e43TA_7uu_more"}
!1641 = distinct !{!1641, !1640, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgN7rS7e43TA_7uu_more: argument 1"}
!1642 = distinct !{!1642, !1638, !"_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgN7rS7e43TA_7uu_more: argument 0"}
!1643 = distinct !{!1643, !1640, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgN7rS7e43TA_7uu_more: argument 2"}
!1644 = distinct !{!1644, !1640, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgN7rS7e43TA_7uu_more: argument 0"}
!1645 = !{!1639}
!1646 = !{!1641}
!1647 = !{!1641, !1639}
!1648 = !{!1644, !1641, !1643, !1642, !1639}
!1649 = !{!1644, !1641, !1642}
!1650 = distinct !{!1650, i1 true, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB4_8buf_read7BufRead9read_line0ECsgN7rS7e43TA_7uu_more"}
!1651 = distinct !{!1651, !1650, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB4_8buf_read7BufRead9read_line0ECsgN7rS7e43TA_7uu_more: argument 0"}
!1652 = distinct !{!1652, !1650, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB4_8buf_read7BufRead9read_line0ECsgN7rS7e43TA_7uu_more: argument 1"}
!1653 = distinct !{!1653, i1 true, !"_RNCINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvYINtNtNtB6_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB6_8buf_read7BufRead9read_line0E0CsgN7rS7e43TA_7uu_more"}
!1654 = distinct !{!1654, !1653, !"_RNCINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvYINtNtNtB6_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB6_8buf_read7BufRead9read_line0E0CsgN7rS7e43TA_7uu_more: argument 0"}
!1655 = !{!1651}
!1656 = !{!1651, !1652}
!1657 = !{!1654, !1651}
!1658 = distinct !{!1658, i1 true, !"_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw"}
!1659 = distinct !{!1659, !1658, !"_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw: argument 0"}
!1660 = distinct !{!1660, i1 true, !"_RNvXNvNtCsfxi9wTnNW09_9crossterm7command18write_command_ansiINtB2_7AdapterQNtCsgN7rS7e43TA_7uu_more10OutputTypeENtNtCs6JMX4GRUq9U_4core3fmt5Write9write_strB1d_"}
!1661 = distinct !{!1661, !1660, !"_RNvXNvNtCsfxi9wTnNW09_9crossterm7command18write_command_ansiINtB2_7AdapterQNtCsgN7rS7e43TA_7uu_more10OutputTypeENtNtCs6JMX4GRUq9U_4core3fmt5Write9write_strB1d_: argument 0"}
!1662 = distinct !{!1662, !1660, !"_RNvXNvNtCsfxi9wTnNW09_9crossterm7command18write_command_ansiINtB2_7AdapterQNtCsgN7rS7e43TA_7uu_more10OutputTypeENtNtCs6JMX4GRUq9U_4core3fmt5Write9write_strB1d_: argument 1"}
!1663 = distinct !{!1663, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgN7rS7e43TA_7uu_more"}
!1664 = distinct !{!1664, !1663, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgN7rS7e43TA_7uu_more: argument 0"}
!1665 = !{!1659}
!1666 = !{!1661}
!1667 = !{!1661, !1662}
!1668 = !{!1664}
!1669 = distinct !{null}
!1670 = distinct !{!1670, i1 true, !"_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw"}
!1671 = distinct !{!1671, !1670, !"_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw: argument 0"}
!1672 = distinct !{!1672, i1 true, !"_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtCsgN7rS7e43TA_7uu_more10OutputTypeENtNtB8_3fmt5Write9write_strB19_"}
!1673 = distinct !{!1673, !1672, !"_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtCsgN7rS7e43TA_7uu_more10OutputTypeENtNtB8_3fmt5Write9write_strB19_: argument 0"}
!1674 = distinct !{!1674, !1672, !"_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtCsgN7rS7e43TA_7uu_more10OutputTypeENtNtB8_3fmt5Write9write_strB19_: argument 1"}
!1675 = distinct !{!1675, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgN7rS7e43TA_7uu_more"}
!1676 = distinct !{!1676, !1675, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgN7rS7e43TA_7uu_more: argument 0"}
!1677 = !{!1671}
!1678 = !{!1673}
!1679 = !{!1673, !1674}
!1680 = !{!1676}
!1681 = distinct !{null}
!1682 = distinct !{!1682, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgN7rS7e43TA_7uu_more"}
!1683 = distinct !{!1683, !1682, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgN7rS7e43TA_7uu_more: argument 0"}
!1684 = !{!1683}
!1685 = distinct !{null}
!1686 = distinct !{!1686, i1 true, !"_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_skip_untilNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECsgN7rS7e43TA_7uu_more"}
!1687 = distinct !{!1687, !1686, !"_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_skip_untilNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECsgN7rS7e43TA_7uu_more: argument 0"}
!1688 = distinct !{null, null}
!1689 = distinct !{!1689, i1 true, !"_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr"}
!1690 = distinct !{!1690, !1689, !"_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr: argument 0"}
!1691 = distinct !{!1691, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgN7rS7e43TA_7uu_more"}
!1692 = distinct !{!1692, !1691, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgN7rS7e43TA_7uu_more: argument 0"}
!1693 = !{!1687}
!1694 = !{!1690}
!1695 = !{!1692}
end_hunk_1
