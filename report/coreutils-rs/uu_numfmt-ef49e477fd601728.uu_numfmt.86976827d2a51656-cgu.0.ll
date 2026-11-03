Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_numfmt-ef49e477fd601728.uu_numfmt.86976827d2a51656-cgu.0?download=true
inline.NumInlined: 1038
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !3010, !noundef !4
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

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
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
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !3007
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3006)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !4 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 5 uses
  br i1 %i.by, label %bb.aa, label %bb.s

bb.l:                                             ; preds = %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit199

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.bk, align 1, !alias.scope !3008, !noalias !3011, !noundef !4
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.n, label %.loopexit199

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.bl, align 1, !noalias !3012, !noundef !4 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.p, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i: ; preds = %bb.o
  %i.cn = and i8 %i.cl, 31
  %i.co = zext nneg i8 %i.cn to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cp = load i8, ptr %i.bn, align 1, !noalias !3012, !noundef !4
  %i.cq = shl nuw nsw i32 %i.co, 6
  %i.cr = and i8 %i.cp, 63
  %i.cs = zext nneg i8 %i.cr to i32               ; 2 uses
  %i.ct = or disjoint i32 %i.cq, %i.cs
  %i.cu = icmp samesign ugt i8 %i.cl, -33
  br i1 %i.cu, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cv = zext nneg i8 %i.cl to i32
  br label %.loopexit.loopexit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.cw = load i8, ptr %i.bq, align 1, !noalias !3012, !noundef !4
  %i.cx = shl nuw nsw i32 %i.cs, 6
  %i.cy = and i8 %i.cw, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz            ; 2 uses
  %i.db = shl nuw nsw i32 %i.co, 12
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = icmp samesign ugt i8 %i.cl, -17
  br i1 %i.dd, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i, label %.loopexit.loopexit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.de = load i8, ptr %i.bt, align 1, !noalias !3012, !noundef !4
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
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !3006
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa192, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #27, !noalias !3011
  unreachable

.loopexit.loopexit:                               ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i, %bb.p, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.dc, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i ], [ %i.dl, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i ], [ %i.ct, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i ], [ %i.cv, %bb.p ]
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dn)
  br label %.loopexit

.loopexit200:                                     ; preds = %bb.d
  %i.do = xor i8 %.promoted52, 1
  store i8 %i.do, ptr %i.g, align 8, !alias.scope !3006
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit200
  store i8 1, ptr %i.d, align 2, !alias.scope !3006
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt.exit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa194 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !3006
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !3006
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit200
  %i.dp = phi i64 [ %.lcssa194, %.loopexit ], [ %i.k, %.loopexit200 ], [ %i.k, %.critedge ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dp, ptr %i.dr, align 8
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt.exit

_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt.exit: ; preds = %bb.r, %bb.q, %.preheader, %.split.us.i12, %._crit_edge.i6, %.split.us.i, %._crit_edge.i
  %storemerge.i.sink = phi i64 [ 1, %.split.us.i12 ], [ 1, %.split.us.i ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i6 ], [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.s:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  %.promoted.i = load i64, ptr %i.ch, align 8, !alias.scope !3014 ; 2 uses
  %i.ds = add i64 %.promoted.i, %i.ci             ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cc
  br i1 %i.dt, label %.lr.ph.i1, label %._crit_edge.i

.lr.ph.i1:                                        ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !3014, !noundef !4
  %i.dw = load i64, ptr %i.c, align 8, !alias.scope !3014
  %.fr60.i = freeze i64 %i.dw                     ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !3014 ; 2 uses
  %i.dz = sub i64 %i.cg, %i.dy
  %invariant.op = sub i64 1, %.fr60.i
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.v, %bb.s
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !3014
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt.exit

.lr.ph.split.i:                                   ; preds = %bb.v, %.lr.ph.i1
  %i.ea = phi i64 [ %.sink.i4, %bb.v ], [ %i.bx, %.lr.ph.i1 ] ; 3 uses
  %i.eb = phi i64 [ %i.em, %bb.v ], [ %i.ds, %.lr.ph.i1 ]
  %i.ec = phi i64 [ %i.el, %bb.v ], [ %.promoted.i, %.lr.ph.i1 ] ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !3015, !noundef !4
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, %i.dv
  %.not.i2 = icmp eq i64 %i.ei, 0
  br i1 %.not.i2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i
  %i.ej = add i64 %i.ec, %i.cg                    ; 2 uses
  store i64 %i.ej, ptr %i.ch, align 8, !alias.scope !3014
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i
  %..i.i3 = tail call noundef i64 @llvm.umax.i64(i64 %i.ea, i64 %.fr60.i) ; 2 uses
  %i.ek = icmp ult i64 %..i.i3, %i.cg
  br i1 %i.ek, label %.lr.ph153, label %.preheader36.i.preheader

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.t
  %.sink.i4 = phi i64 [ 0, %bb.z ], [ %i.dz, %bb.y ], [ 0, %bb.t ] ; 2 uses
  %i.el = phi i64 [ %i.fk, %bb.z ], [ %i.fj, %bb.y ], [ %i.ej, %bb.t ] ; 2 uses
  store i64 %.sink.i4, ptr %i.bw, align 8, !alias.scope !3014
  %i.em = add i64 %i.el, %i.ci                    ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.cc
  br i1 %i.en, label %.lr.ph.split.i, label %._crit_edge.i

bb.w:                                             ; preds = %.lr.ph153
  %i.eo = add nuw nsw i64 %.sroa.04.0.i152, 1     ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.cg
  br i1 %i.ep, label %.lr.ph153, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.w, %bb.u
  %i.eq = icmp ult i64 %i.ea, %.fr60.i
  br i1 %i.eq, label %.lr.ph155.a, label %.split.us.i

.lr.ph153:                                        ; preds = %bb.u, %bb.w
  %.sroa.04.0.i152 = phi i64 [ %i.eo, %bb.w ], [ %..i.i3, %bb.u ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.i152
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !3016, !noundef !4
  %i.et = add i64 %.sroa.04.0.i152, %i.ec         ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.cc
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !3015, !noundef !4
  %.not21.i = icmp eq i8 %i.es, %i.ew
  br i1 %.not21.i, label %bb.w, label %bb.z

.preheader36.i:                                   ; preds = %bb.x
  %i.ex = icmp ult i64 %i.ea, %i.fb
  br i1 %i.ex, label %.lr.ph155.a, label %.split.us.i

.split.us.i:                                      ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.ey = add i64 %i.ec, %i.cg                    ; 2 uses
  store i64 %i.ey, ptr %i.ch, align 8, !alias.scope !3014
  store i64 0, ptr %i.bw, align 8, !alias.scope !3014
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ec, ptr %i.ez, align 8, !alias.scope !3017
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ey, ptr %i.fa, align 8, !alias.scope !3017
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt.exit

.lr.ph155.a:                                      ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i154 = phi i64 [ %i.fb, %.preheader36.i ], [ %.fr60.i, %.preheader36.i.preheader ]
  %i.fb = add i64 %.sroa.2.0.i154, -1             ; 6 uses
  %i.fc = icmp ult i64 %i.fb, %i.cg
  br i1 %i.fc, label %bb.x, label %.split32.us.i

bb.x:                                             ; preds = %.lr.ph155.a
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fb
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !3016, !noundef !4
  %i.ff = add i64 %i.fb, %i.ec                    ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.cc
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !3015, !noundef !4
  %.not20.i = icmp eq i8 %i.fe, %i.fi
  br i1 %.not20.i, label %.preheader36.i, label %bb.y

.split32.us.i:                                    ; preds = %.lr.ph155.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27, !noalias !3018
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.fj = add i64 %i.ec, %i.dy
  br label %bb.v

bb.z:                                             ; preds = %.lr.ph153
  %.reass.reass = add i64 %i.ec, %invariant.op
  %i.fk = add i64 %.reass.reass, %.sroa.04.0.i152 ; 2 uses
  store i64 %i.fk, ptr %i.ch, align 8, !alias.scope !3014
  br label %bb.v

bb.aa:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  %.promoted.i5 = load i64, ptr %i.ch, align 8, !alias.scope !3020 ; 3 uses
  %i.fl = add i64 %.promoted.i5, %i.ci            ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %i.cc
  br i1 %i.fm, label %.lr.ph.i8, label %._crit_edge.i6

.lr.ph.i8:                                        ; preds = %bb.aa
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !3020, !noundef !4 ; 2 uses
  %i.fp = load i64, ptr %i.c, align 8, !alias.scope !3020
  %.fr63 = freeze i64 %i.fp                       ; 10 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !3020
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
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !3021, !noundef !4
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
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !3022, !noundef !4
  %i.gf = add i64 %.sroa.04.0.us.i.us163, %i.fv   ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.cc
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gf
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !3021, !noundef !4
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
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !3022, !noundef !4
  %i.go = add i64 %i.gl, %i.fv                    ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.cc
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !3021, !noundef !4
  %.not20.us.i.us.us = icmp eq i8 %i.gn, %i.gr
  br i1 %.not20.us.i.us.us, label %.preheader.i10.us.us, label %.split.us.us

.split.us.us:                                     ; preds = %.lr.ph167
  %i.gs = add i64 %i.fv, %i.fr
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.us.i.us
  %i.gt = add i64 %i.fv, %i.cg                    ; 2 uses
  store i64 %i.gt, ptr %i.ch, align 8, !alias.scope !3020
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
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !3021, !noundef !4
  %i.hb = and i8 %i.ha, 63
  %i.hc = zext nneg i8 %i.hb to i64
  %i.hd = shl nuw i64 1, %i.hc
  %i.he = and i64 %i.hd, %i.fo
  %.not.us.i = icmp eq i64 %i.he, 0
  br i1 %.not.us.i, label %bb.af, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i157.not, label %.lr.ph159, label %.preheader.split.i13

.preheader35.i:                                   ; preds = %.lr.ph159
  %i.hf = add i64 %.sroa.04.0.us.i158, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hf, %umax.i
  br i1 %exitcond.not.i, label %.preheader.split.i13, label %.lr.ph159

.preheader.split.i13:                             ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.not34.i = icmp eq i64 %.fr63, 0
  br i1 %.not34.i, label %.split.us.i12, label %.split32.us.i14

.lr.ph159:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i158 = phi i64 [ %i.hf, %.preheader35.i ], [ %.fr63, %.preheader35.i.preheader ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i158
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !3022, !noundef !4
  %i.hi = add i64 %.sroa.04.0.us.i158, %i.gy      ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.cc
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.hi
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !3021, !noundef !4
  %.not21.us.i = icmp eq i8 %i.hh, %i.hl
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.ae

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
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !3020
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt.exit

.split.us.i12:                                    ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us, %.preheader.split.i13
  %.us-phi = phi i64 [ %i.gy, %.preheader.split.i13 ], [ %i.fv, %.preheader.i10.us.us ], [ %i.fv, %.preheader.i10.us.us.preheader ] ; 2 uses
  %i.hs = add i64 %.us-phi, %i.cg                 ; 2 uses
  store i64 %i.hs, ptr %i.ch, align 8, !alias.scope !3020
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi, ptr %i.ht, align 8, !alias.scope !3023
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hs, ptr %i.hu, align 8, !alias.scope !3023
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt.exit

.split32.us.i14:                                  ; preds = %.preheader.split.i13
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.fs, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27, !noalias !3024
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQNtNtCs7tKScEop1B6_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsbyqtxyC5WYI_9uu_numfmt.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @169, ptr noundef nonnull %1, ptr noundef nonnull %2) #26, !inline_history !3025
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtCsh036I4OHgIr_6uucore8features6rangesNtB4_5Range9from_list(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7decimal25locale_grouping_separator() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i128, i1 } @llvm.umul.with.overflow.i128(i128, i128) #18

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i128, i1 } @llvm.smul.with.overflow.i128(i128, i128) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i128, i1 } @llvm.ssub.with.overflow.i128(i128, i128) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i128, i1 } @llvm.sadd.with.overflow.i128(i128, i128) #18

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7decimal24locale_decimal_separator() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #18

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_8LowerExp3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCs6JMX4GRUq9U_4core3fmt3numnNtB6_7Display3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1
end_hunk_0
begin_hunk_1_@llvm.ctpop.i32
!2823 = distinct !{!2823, i1 true, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt"}
!2824 = distinct !{!2824, !2823, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2825 = distinct !{!2825, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push"}
!2826 = distinct !{!2826, !2825, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push: argument 0"}
!2827 = distinct !{!2827, i1 true, !"_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl"}
!2828 = distinct !{!2828, !2827, !"_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!2829 = distinct !{!2829, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt"}
!2830 = distinct !{!2830, !2829, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2831 = distinct !{!2831, !2898}
!2832 = distinct !{!2832, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt"}
!2833 = distinct !{!2833, !2832, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2834 = distinct !{!2834, i1 true, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt"}
!2835 = distinct !{!2835, !2834, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2836 = distinct !{!2836, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt"}
!2837 = distinct !{!2837, !2836, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2838 = distinct !{!2838, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt"}
!2839 = distinct !{!2839, !2838, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2840 = distinct !{!2840, i1 true, !"_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt"}
!2841 = distinct !{!2841, !2840, !"_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt: argument 1"}
!2842 = distinct !{!2842, !2840, !"_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2843 = distinct !{!2843, i1 true, !"_RNCNvMs3_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsbyqtxyC5WYI_9uu_numfmt"}
!2844 = distinct !{!2844, !2843, !"_RNCNvMs3_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2845 = distinct !{!2845, i1 true, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!2846 = distinct !{!2846, !2845, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!2847 = distinct !{!2847, i1 true, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt"}
!2848 = distinct !{!2848, !2847, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2849 = distinct !{!2849, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push"}
!2850 = distinct !{!2850, !2849, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push: argument 0"}
!2851 = distinct !{!2851, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt"}
!2852 = distinct !{!2852, !2851, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2853 = distinct !{!2853, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push"}
!2854 = distinct !{!2854, !2853, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push: argument 0"}
!2855 = distinct !{!2855, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt"}
!2856 = distinct !{!2856, !2855, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2857 = distinct !{!2857, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt"}
!2858 = distinct !{!2858, !2857, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2859 = distinct !{!2859, i1 true, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!2860 = distinct !{!2860, !2859, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!2861 = distinct !{!2861, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt"}
!2862 = distinct !{!2862, !2861, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2863 = distinct !{!2863, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push"}
!2864 = distinct !{!2864, !2863, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push: argument 0:It1"}
!2865 = distinct !{!2865, i1 true, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!2866 = distinct !{!2866, !2865, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!2867 = distinct !{!2867, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt"}
!2868 = distinct !{!2868, !2867, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2869 = distinct !{!2869, !2898}
!2870 = !{!2692}
!2871 = !{!2701, !2699, !2697, !2695, !2694}
!2872 = !{!2703}
!2873 = !{!2705, !2703}
!2874 = !{!2707}
!2875 = !{!2709}
!2876 = !{!2711, !2709}
!2877 = !{!2711, !2713}
!2878 = !{!2713}
!2879 = !{!2722, !2720, !2718, !2716, !2715}
!2880 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1}
!2881 = !{!2724, !2707}
!2882 = !{!2726}
!2883 = !{!2728}
!2884 = !{!2730}
!2885 = !{!2732}
!2886 = !{!2734}
!2887 = !{!2736}
!2888 = !{!2738}
!2889 = !{!2740}
!2890 = !{!2742}
!2891 = !{!2744}
!2892 = !{!2744, !2742}
!2893 = !{!2746}
!2894 = !{!2746, !2742}
!2895 = !{!2755, !2753, !2751, !2749, !2748}
!2896 = !{!2757}
!2897 = !{!2759, !2757}
!2898 = !{!"llvm.loop.peeled.count", i32 1}
!2899 = !{!2769, !2767, !2765, !2763, !2762}
!2900 = !{!2771}
!2901 = !{!2773}
!2902 = !{!2775}
!2903 = !{!2777}
!2904 = !{!2786, !2784, !2782, !2780, !2779}
!2905 = !{!2788}
!2906 = !{!2759, !2788}
!2907 = !{!2790}
!2908 = !{!2792}
!2909 = !{!2794}
!2910 = !{!2796}
!2911 = !{!2805, !2803, !2801, !2799, !2798}
!2912 = !{!2807}
!2913 = !{!2809, !2807}
!2914 = !{!2811}
!2915 = !{!2813}
!2916 = !{!2815}
!2917 = !{!2824, !2822, !2820, !2818, !2817}
!2918 = !{!2826}
!2919 = !{!2809, !2826}
!2920 = !{!2828}
!2921 = !{!2830}
!2922 = !{!2833}
!2923 = !{!2835}
!2924 = !{!2837}
!2925 = !{!2839}
!2926 = !{!2848, !2846, !2844, !2842, !2841}
!2927 = !{!2850}
!2928 = !{!2852, !2850}
!2929 = !{!2854}
!2930 = !{!2856, !2854}
!2931 = !{!2858}
!2932 = !{!2860}
!2933 = !{!2862}
!2934 = !{!2852, !2864}
!2935 = !{!2864}
!2936 = !{!2866}
!2937 = !{!2868}
!2938 = distinct !{!2938, i1 true, !"_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt"}
!2939 = distinct !{!2939, !2938, !"_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2940 = distinct !{!2940, !2938, !"_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt: argument 1"}
!2941 = distinct !{!2941, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt"}
!2942 = distinct !{!2942, !2941, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2943 = distinct !{!2943, i1 true, !"_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone"}
!2944 = distinct !{!2944, !2943, !"_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone: argument 1"}
!2945 = distinct !{!2945, !2943, !"_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone: argument 0"}
!2946 = distinct !{!2946, i1 true, !"_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt"}
!2947 = distinct !{!2947, !2946, !"_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt: argument 1"}
!2948 = distinct !{!2948, i1 true, !"_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbyqtxyC5WYI_9uu_numfmt"}
!2949 = distinct !{!2949, !2948, !"_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2950 = distinct !{!2950, !2946, !"_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2951 = distinct !{!2951, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt"}
!2952 = distinct !{!2952, !2951, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2953 = !{!2939}
!2954 = !{!2940}
!2955 = !{!2942, !2939, !2940}
!2956 = !{!2939, !2940}
!2957 = !{!2944}
!2958 = !{!2944, !2940}
!2959 = !{!2945, !2939}
!2960 = !{!2945, !2944, !2939, !2940}
!2961 = !{!2947}
!2962 = !{!2952, !2950, !2947, !2949, !2945, !2939}
!2963 = !{!2950, !2947, !2949, !2945, !2939}
!2964 = !{!2949, !2945, !2939}
!2965 = distinct !{!2965, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtB4_6string6StringEE3newCsbyqtxyC5WYI_9uu_numfmt"}
!2966 = distinct !{!2966, !2965, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtB4_6string6StringEE3newCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2967 = !{!2966}
!2968 = distinct !{!2968, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser20PossibleValuesParserE3newCsbyqtxyC5WYI_9uu_numfmt"}
!2969 = distinct !{!2969, !2968, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser20PossibleValuesParserE3newCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2970 = !{!2969}
!2971 = distinct !{!2971, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtB4_6string6StringEE3newCsbyqtxyC5WYI_9uu_numfmt"}
!2972 = distinct !{!2972, !2971, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtB4_6string6StringEE3newCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2973 = !{!2972}
!2974 = distinct !{!2974, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtB4_6string6StringEE3newCsbyqtxyC5WYI_9uu_numfmt"}
!2975 = distinct !{!2975, !2974, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtB4_6string6StringEE3newCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2976 = !{!2975}
!2977 = distinct !{!2977, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserE3newCsbyqtxyC5WYI_9uu_numfmt"}
!2978 = distinct !{!2978, !2977, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserE3newCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2979 = !{!2978}
!2980 = distinct !{!2980, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtB4_6string6StringEE3newCsbyqtxyC5WYI_9uu_numfmt"}
!2981 = distinct !{!2981, !2980, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtB4_6string6StringEE3newCsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2982 = !{!2981}
!2983 = distinct !{!2983, i1 true, !"_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!2984 = distinct !{!2984, !2983, !"_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!2985 = distinct !{!2985, i1 true, !"_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!2986 = distinct !{!2986, !2985, !"_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!2987 = distinct !{!2987, i1 true, !"_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!2988 = distinct !{!2988, !2987, !"_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!2989 = distinct !{!2989, !2983, !"_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!2990 = distinct !{!2990, i1 true, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt"}
!2991 = distinct !{!2991, !2990, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2992 = distinct !{!2992, i1 true, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt"}
!2993 = distinct !{!2993, !2992, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!2994 = distinct !{!2994, !2992, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt: argument 1"}
!2995 = distinct !{!2995, !2992, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt: argument 2"}
!2996 = distinct !{!2996, !2992, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt: argument 3"}
!2997 = distinct !{!2997, i1 true, !"_RNvXsy_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!2998 = distinct !{!2998, !2997, !"_RNvXsy_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!2999 = distinct !{!2999, i1 true, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt"}
!3000 = distinct !{!3000, !2999, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt: argument 0"}
!3001 = distinct !{!3001, !2999, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt: argument 1"}
!3002 = distinct !{!3002, !2999, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt: argument 2"}
!3003 = distinct !{!3003, !2999, !"_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbyqtxyC5WYI_9uu_numfmt: argument 3"}
!3004 = distinct !{!3004, i1 true, !"_RNvXsy_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!3005 = distinct !{!3005, !3004, !"_RNvXsy_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!3006 = !{!2984}
!3007 = !{!2986}
!3008 = !{!2988}
!3009 = !{!2989, !2986}
!3010 = !{!2991, !2989, !2986}
!3011 = !{!2989, !2984}
!3012 = !{!2991, !2989, !2984}
!3013 = !{!2993}
!3014 = !{!2994}
!3015 = !{!2995}
!3016 = !{!2996}
!3017 = !{!2998, !2993}
!3018 = !{!2993, !2994, !2995, !2996}
!3019 = !{!3000}
!3020 = !{!3001}
!3021 = !{!3002}
!3022 = !{!3003}
!3023 = !{!3005, !3000}
!3024 = !{!3000, !3001, !3002, !3003}
!3025 = distinct !{null}
end_hunk_1
