Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_date-ac0c92fbc921ed0d.uu_date.d513130b1b5cc1ea-cgu.0?download=true
inline.NumInlined: 1460
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMNtCs6JMX4GRUq9U_4core3stre4findReECsiibOIv6tv3q_7uu_date:bb.a

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.f = load i8, ptr %i.e, align 2, !range !7, !alias.scope !53, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !52 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !53, !nonnull !6, !noundef !6 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !53, !noundef !6 ; 16 uses
  %.promoted52.i = load i8, ptr %i.h, align 8, !alias.scope !53 ; 2 uses
  %i.m = trunc nuw i8 %.promoted52.i to i1
  %i.n = icmp eq i64 %.promoted.i, 0
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.l
  br i1 %.not.i.i.i.peel, label %bb.c, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.b
  %i.o = icmp eq i64 %.promoted.i, %i.l
  br i1 %i.o, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.promoted.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !54, !noalias !55, !noundef !6
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split.i.i.i.peel, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.promoted.i ; 4 uses
  %i.t = icmp samesign eq i64 %.promoted.i, %i.l
  br i1 %i.t, label %.loopexit69, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.s, align 1, !noalias !56, !noundef !6 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.f, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.peel

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.peel: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = and i8 %i.u, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = add nuw nsw i64 %.promoted.i, 1
  %i.aa = icmp samesign ne i64 %i.z, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.w, align 1, !noalias !56, !noundef !6
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.u, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.peel
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ai = add nuw nsw i64 %.promoted.i, 2
  %i.aj = icmp samesign ne i64 %i.ai, %i.l
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.ah, align 1, !noalias !56, !noundef !6
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.u, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.peel
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.at = add nuw nsw i64 %.promoted.i, 3
  %i.au = icmp samesign ne i64 %i.at, %i.l
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i8, ptr %i.as, align 1, !noalias !56, !noundef !6
  %i.aw = shl nuw nsw i32 %i.y, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ao, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = zext nneg i8 %i.u to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.peel ], [ %i.bc, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.peel ], [ %i.af, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.peel ], [ %i.bd, %bb.f ] ; 4 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.be)
  br i1 %i.m, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bf, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bg, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bh, i64 3, i64 4
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !52, !noundef !6 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !52, !nonnull !6, !noundef !6 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !52, !noundef !6 ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !52, !nonnull !6, !noundef !6 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !52, !noundef !6 ; 14 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.bu = add nsw i64 %i.bs, -1                   ; 5 uses
  br i1 %i.bk, label %bb.y, label %bb.q

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.i ], [ %..i.i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bv = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp ult i64 %i.bv, %i.l
  br i1 %.not.i.i.i, label %bb.n, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.m
  %i.bx = icmp eq i64 %i.bv, %i.l
  br i1 %i.bx, label %bb.o, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bv
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !54, !noalias !58, !noundef !6
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n, %.split.i.i.i, %bb.l
  %i.cb = icmp samesign eq i64 %i.bv, %i.l
  br i1 %i.cb, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bv
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !59, !noundef !6 ; 3 uses
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i: ; preds = %bb.p
  %i.cf = add nuw nsw i64 %i.bv, 1
  %i.cg = icmp samesign ne i64 %i.cf, %i.l
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp samesign ugt i8 %i.cd, -33
  br i1 %i.ch, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i
  %i.ci = add nuw nsw i64 %i.bv, 2
  %i.cj = icmp samesign ne i64 %i.ci, %i.l
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ugt i8 %i.cd, -17
  br i1 %i.ck, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i
  %i.cl = add nuw nsw i64 %i.bv, 3
  %i.cm = icmp samesign ne i64 %i.cl, %i.l
  tail call void @llvm.assume(i1 %i.cm)
  br label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.n, %.split.i.i.i, %bb.c, %.split.i.i.i.peel
  %.lcssa65 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.c ], [ %i.bv, %.split.i.i.i ], [ %i.bv, %bb.n ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %.lcssa65, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #34, !noalias !58
  unreachable

.loopexit69:                                      ; preds = %bb.d
  %.mask = and i8 %.promoted52.i, 1
  %spec.select104 = zext nneg i8 %.mask to i64
  br label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.q:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %.promoted.i.i = load i64, ptr %i.bt, align 8, !alias.scope !63 ; 2 uses
  %i.cn = add i64 %.promoted.i.i, %i.bu           ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.bo
  br i1 %i.co, label %.lr.ph.i1.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i1.i:                                      ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !63, !noundef !6
  %i.cr = load i64, ptr %i.d, align 8, !alias.scope !63
  %.fr60.i.i = freeze i64 %i.cr                   ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !63 ; 2 uses
  %i.cu = sub i64 %i.bs, %i.ct
  %invariant.op = sub i64 1, %.fr60.i.i
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.t, %.lr.ph.i1.i
  %.sink.i4.i30 = phi i64 [ %.sink.i4.i, %bb.t ], [ %i.bj, %.lr.ph.i1.i ] ; 3 uses
  %i.cv = phi i64 [ %i.dg, %bb.t ], [ %i.cn, %.lr.ph.i1.i ]
  %i.cw = phi i64 [ %i.df, %bb.t ], [ %.promoted.i.i, %.lr.ph.i1.i ] ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cv
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !61, !noalias !64, !noundef !6
  %i.cz = and i8 %i.cy, 63
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.db, %i.cq
  %.not.i2.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i2.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.split.i.i
  %i.dd = add i64 %i.cw, %i.bs
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.i.i
  %..i.i3.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink.i4.i30, i64 %.fr60.i.i) ; 2 uses
  %i.de = icmp ult i64 %..i.i3.i, %i.bs
  br i1 %i.de, label %.lr.ph, label %.preheader36.i.i.preheader

bb.t:                                             ; preds = %bb.x, %bb.w, %bb.r
  %.sink.i4.i = phi i64 [ 0, %bb.x ], [ %i.cu, %bb.w ], [ 0, %bb.r ]
  %i.df = phi i64 [ %i.eb, %bb.x ], [ %i.ea, %bb.w ], [ %i.dd, %bb.r ] ; 2 uses
  %i.dg = add i64 %i.df, %i.bu                    ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.bo
  br i1 %i.dh, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.u:                                             ; preds = %.lr.ph
  %i.di = add nuw nsw i64 %.sroa.04.0.i.i16, 1    ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.bs
  br i1 %i.dj, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.u, %bb.s
  %i.dk = icmp ult i64 %.sink.i4.i30, %.fr60.i.i
  br i1 %i.dk, label %.lr.ph18, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph:                                           ; preds = %bb.s, %bb.u
  %.sroa.04.0.i.i16 = phi i64 [ %i.di, %bb.u ], [ %..i.i3.i, %bb.s ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.04.0.i.i16
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !62, !noalias !64, !noundef !6
  %i.dn = add i64 %.sroa.04.0.i.i16, %i.cw        ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.bo
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dn
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !61, !noalias !64, !noundef !6
  %.not21.i.i = icmp eq i8 %i.dm, %i.dq
  br i1 %.not21.i.i, label %bb.u, label %bb.x

.preheader36.i.i:                                 ; preds = %bb.v
  %i.dr = icmp ult i64 %.sink.i4.i30, %i.ds
  br i1 %i.dr, label %.lr.ph18, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph18:                                         ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i17 = phi i64 [ %i.ds, %.preheader36.i.i ], [ %.fr60.i.i, %.preheader36.i.i.preheader ]
  %i.ds = add i64 %.sroa.2.0.i.i17, -1            ; 6 uses
  %i.dt = icmp ult i64 %i.ds, %i.bs
  br i1 %i.dt, label %bb.v, label %.split32.us.i.i

bb.v:                                             ; preds = %.lr.ph18
  %i.du = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !62, !noalias !64, !noundef !6
  %i.dw = add i64 %i.ds, %i.cw                    ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.bo
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dw
  %i.dz = load i8, ptr %i.dy, align 1, !alias.scope !61, !noalias !64, !noundef !6
  %.not20.i.i = icmp eq i8 %i.dv, %i.dz
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.w

.split32.us.i.i:                                  ; preds = %.lr.ph18
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef range(i64 0, -9223372036854775808) %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #34, !noalias !65
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ea = add i64 %i.cw, %i.ct
  br label %bb.t

bb.x:                                             ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.cw, %invariant.op
  %i.eb = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i16
  br label %bb.t

bb.y:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %.promoted.i5.i = load i64, ptr %i.bt, align 8, !alias.scope !69 ; 3 uses
  %i.ec = add i64 %.promoted.i5.i, %i.bu          ; 3 uses
  %i.ed = icmp ult i64 %i.ec, %i.bo
  br i1 %i.ed, label %.lr.ph.i8.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i8.i:                                      ; preds = %bb.y
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !69, !noundef !6 ; 2 uses
  %i.eg = load i64, ptr %i.d, align 8, !alias.scope !69
  %.fr63.i = freeze i64 %i.eg                     ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !69
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i, i64 range(i64 0, -9223372036854775808) %i.bs) ; 2 uses
  %i.ej = add i64 %.fr63.i, -1                    ; 2 uses
  %.first_iter.i9.i = icmp ult i64 %i.ej, %i.bs
  %i.ek = sub i64 1, %.fr63.i                     ; 2 uses
  br i1 %.first_iter.i9.i, label %.lr.ph.split.us.i.us.i.preheader, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i8.i
  %exitcond.not.i.i20.not = icmp ult i64 %.fr63.i, %i.bs
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.us.i.preheader:                 ; preds = %.lr.ph.i8.i
  %exitcond.not.i.us.i25.not = icmp ult i64 %.fr63.i, %i.bs
  %.not34.i.us.us.i28 = icmp eq i64 %.fr63.i, 0
  br label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i.us.i.preheader, %bb.ab
  %i.el = phi i64 [ %i.fm, %bb.ab ], [ %i.ec, %.lr.ph.split.us.i.us.i.preheader ]
  %i.em = phi i64 [ %i.fl, %bb.ab ], [ %.promoted.i5.i, %.lr.ph.split.us.i.us.i.preheader ] ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !67, !noalias !64, !noundef !6
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.er, %i.ef
  %.not.us.i.us.i = icmp eq i64 %i.es, 0
  br i1 %.not.us.i.us.i, label %bb.aa, label %.preheader35.i.us.i.preheader

.preheader35.i.us.i.preheader:                    ; preds = %.lr.ph.split.us.i.us.i
  br i1 %exitcond.not.i.us.i25.not, label %.lr.ph27, label %.preheader.i10.us.us.i.preheader

.preheader35.i.us.i:                              ; preds = %.lr.ph27
  %i.et = add i64 %.sroa.04.0.us.i.us.i26, 1      ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.et, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %.preheader.i10.us.us.i.preheader, label %.lr.ph27

.preheader.i10.us.us.i.preheader:                 ; preds = %.preheader35.i.us.i, %.preheader35.i.us.i.preheader
  br i1 %.not34.i.us.us.i28, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph30

.lr.ph27:                                         ; preds = %.preheader35.i.us.i.preheader, %.preheader35.i.us.i
  %.sroa.04.0.us.i.us.i26 = phi i64 [ %i.et, %.preheader35.i.us.i ], [ %.fr63.i, %.preheader35.i.us.i.preheader ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.04.0.us.i.us.i26
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !68, !noalias !64, !noundef !6
  %i.ew = add i64 %.sroa.04.0.us.i.us.i26, %i.em  ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.bo
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ew
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !67, !noalias !64, !noundef !6
  %.not21.us.i.us.i = icmp eq i8 %i.ev, %i.ez
  br i1 %.not21.us.i.us.i, label %.preheader35.i.us.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph27
  %i.fa = add i64 %i.em, %i.ek
  %i.fb = add i64 %i.fa, %.sroa.04.0.us.i.us.i26
  br label %bb.ab

.preheader.i10.us.us.i:                           ; preds = %.lr.ph30
  %.not34.i.us.us.i = icmp eq i64 %i.fc, 0
  br i1 %.not34.i.us.us.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i
  %.sroa.2.0.us.i.us.us.i29 = phi i64 [ %i.fc, %.preheader.i10.us.us.i ], [ %.fr63.i, %.preheader.i10.us.us.i.preheader ]
  %i.fc = add i64 %.sroa.2.0.us.i.us.us.i29, -1   ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !68, !noalias !64, !noundef !6
  %i.ff = add i64 %i.fc, %i.em                    ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.bo
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !67, !noalias !64, !noundef !6
  %.not20.us.i.us.us.i = icmp eq i8 %i.fe, %i.fi
  br i1 %.not20.us.i.us.us.i, label %.preheader.i10.us.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.lr.ph30
  %i.fj = add i64 %i.em, %i.ei
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.us.i.us.i
  %i.fk = add i64 %i.em, %i.bs
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split.us.us.i, %bb.z
  %i.fl = phi i64 [ %i.fb, %bb.z ], [ %i.fk, %bb.aa ], [ %i.fj, %.split.us.us.i ] ; 2 uses
  %i.fm = add i64 %i.fl, %i.bu                    ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.bo
  br i1 %i.fn, label %.lr.ph.split.us.i.us.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.ae
  %i.fo = phi i64 [ %i.gh, %bb.ae ], [ %i.ec, %.lr.ph.split.us.i.i.preheader ]
  %i.fp = phi i64 [ %i.gg, %bb.ae ], [ %.promoted.i5.i, %.lr.ph.split.us.i.i.preheader ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.fo
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !67, !noalias !64, !noundef !6
  %i.fs = and i8 %i.fr, 63
  %i.ft = zext nneg i8 %i.fs to i64
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = and i64 %i.fu, %i.ef
  %.not.us.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.us.i.i, label %bb.ad, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i.i20.not, label %.lr.ph22, label %.preheader.split.i13.i

.preheader35.i.i:                                 ; preds = %.lr.ph22
  %i.fw = add i64 %.sroa.04.0.us.i.i21, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fw, %umax.i.i
  br i1 %exitcond.not.i.i, label %.preheader.split.i13.i, label %.lr.ph22

.preheader.split.i13.i:                           ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.not34.i.i = icmp eq i64 %.fr63.i, 0
  br i1 %.not34.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.split32.us.i14.i

.lr.ph22:                                         ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i21 = phi i64 [ %i.fw, %.preheader35.i.i ], [ %.fr63.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.04.0.us.i.i21
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !68, !noalias !64, !noundef !6
  %i.fz = add i64 %.sroa.04.0.us.i.i21, %i.fp     ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.bo
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !67, !noalias !64, !noundef !6
  %.not21.us.i.i = icmp eq i8 %i.fy, %i.gc
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph22
  %i.gd = add i64 %i.fp, %i.ek
  %i.ge = add i64 %i.gd, %.sroa.04.0.us.i.i21
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i.i
  %i.gf = add i64 %i.fp, %i.bs
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gg = phi i64 [ %i.ge, %bb.ac ], [ %i.gf, %bb.ad ] ; 2 uses
  %i.gh = add i64 %i.gg, %i.bu                    ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.bo
  br i1 %i.gi, label %.lr.ph.split.us.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.split32.us.i14.i:                                ; preds = %.preheader.split.i13.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ej, i64 noundef range(i64 0, -9223372036854775808) %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #34, !noalias !70
  unreachable

_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %bb.t, %.preheader36.i.i.preheader, %.preheader36.i.i, %bb.ae, %bb.ab, %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i, %bb.p, %.loopexit69, %.preheader.split.i13.i, %bb.y, %bb.q, %bb.g, %bb.o, %.preheader.i
  %.sroa.4.0 = phi i64 [ %i.em, %bb.ab ], [ undef, %bb.y ], [ undef, %bb.ae ], [ undef, %bb.q ], [ undef, %.preheader.i ], [ %i.l, %bb.o ], [ %i.fp, %.preheader.split.i13.i ], [ %i.l, %.loopexit69 ], [ %.promoted.i, %bb.g ], [ %i.em, %.preheader.i10.us.us.i ], [ %i.cw, %.preheader36.i.i ], [ %i.bv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i ], [ %i.bv, %bb.p ], [ %i.bv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i ], [ %i.bv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i ], [ %i.em, %.preheader.i10.us.us.i.preheader ], [ %i.cw, %.preheader36.i.i.preheader ], [ %i.cw, %bb.t ]
  %storemerge.i.sink.i = phi i64 [ 0, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.ae ], [ 0, %bb.q ], [ 0, %.preheader.i ], [ 1, %bb.o ], [ 1, %.preheader.split.i13.i ], [ %spec.select104, %.loopexit69 ], [ 1, %bb.g ], [ 1, %.preheader.i10.us.us.i ], [ 1, %.preheader36.i.i ], [ 1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i ], [ 1, %bb.p ], [ 1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i ], [ 1, %.preheader.i10.us.us.i.preheader ], [ 0, %bb.t ], [ 1, %.preheader36.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gj = insertvalue { i64, i64 } poison, i64 %storemerge.i.sink.i, 0
  %i.gk = insertvalue { i64, i64 } %i.gj, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.gk
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !6
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !noundef !6
  %i.e = tail call fastcc noundef ptr @_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2, ptr noundef %i.d) #35
  store ptr %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.f, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtB4_6result6ResultNtNtNtNtBM_3fmt7strtime7printer4ItemNtBK_5ErrorEINtBK_12ErrorContextB1x_B27_E7contextNtNtNtBK_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.g = load i8, ptr %2, align 8, !range !77, !alias.scope !78, !noundef !6
  %i.h = icmp eq i8 %i.g, 30
  br i1 %i.h, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtB4_6result6ResultNtNtNtNtBM_3fmt7strtime7printer4ItemNtBK_5ErrorEINtBK_12ErrorContextB1x_B27_E7contextNtNtNtBK_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.i, align 8, !alias.scope !78, !noundef !6 ; 2 uses
  %i.j = icmp eq i64 %.val1.i.i, 0
  br i1 %i.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtB4_6result6ResultNtNtNtNtBM_3fmt7strtime7printer4ItemNtBK_5ErrorEINtBK_12ErrorContextB1x_B27_E7contextNtNtNtBK_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !78, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #33, !noalias !78
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtB4_6result6ResultNtNtNtNtBM_3fmt7strtime7printer4ItemNtBK_5ErrorEINtBK_12ErrorContextB1x_B27_E7contextNtNtNtBK_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtB4_6result6ResultNtNtNtNtBM_3fmt7strtime7printer4ItemNtBK_5ErrorEINtBK_12ErrorContextB1x_B27_E7contextNtNtNtBK_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 5, 10) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !107, !nonnull !6, !noundef !6
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !107, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !108, !noalias !109 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.g, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.024.i.i  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !112, !nonnull !6, !noundef !6
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !112, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !113, !noalias !114 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !6 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.025.i.i, %i.k  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.w = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %0, align 8, !range !9, !alias.scope !115, !noundef !6
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #36, !noalias !116
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !115
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph ; 7 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.d
  br i1 %i.ad, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsiibOIv6tv3q_7uu_date.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !116
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsiibOIv6tv3q_7uu_date.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.e, %bb.f
  store i64 -1, ptr %i.ac, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %1, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %2, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ah = add nuw nsw i64 %i.d, 1
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !115
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #33
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #34
  unreachable

bb.j:                                             ; preds = %bb.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsiibOIv6tv3q_7uu_date.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 5, 10) %2, double noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !145, !nonnull !6, !noundef !6
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !145, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !146, !noalias !147 ; 2 uses
  %i.g = sext i32 %i.f to i64
end_hunk_0
