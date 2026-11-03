Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.10?download=true
inline.NumInlined: 917
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  %i.s = load i64, ptr %i.b, align 8, !range !16, !alias.scope !1731, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.t, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_contains.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.w = load i8, ptr %i.v, align 2, !range !24, !alias.scope !1732, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.u, align 8, !alias.scope !1731 ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1732, !nonnull !5, !noundef !5 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1732, !noundef !5 ; 14 uses
  %.promoted52.i = load i8, ptr %i.y, align 8, !alias.scope !1732 ; 2 uses
  %i.ad = trunc nuw i8 %.promoted52.i to i1
  %i.ae = icmp eq i64 %.promoted.i, 0
  br i1 %i.ae, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.ac
  br i1 %.not.i.i.i.peel, label %bb.j, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.i
  %i.af = icmp eq i64 %.promoted.i, %i.ac
  br i1 %i.af, label %bb.k, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !1733, !noalias !1734, !noundef !5
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %.split.i.i.i.peel, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i ; 4 uses
  %i.ak = icmp samesign eq i64 %.promoted.i, %i.ac
  br i1 %i.ak, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i8, ptr %i.aj, align 1, !noalias !1735, !noundef !5 ; 5 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.m, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.peel

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.peel: ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = and i8 %i.al, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = add nuw nsw i64 %.promoted.i, 1
  %i.ar = icmp samesign ne i64 %i.aq, %i.ac
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i8, ptr %i.an, align 1, !noalias !1735, !noundef !5
  %i.at = shl nuw nsw i32 %i.ap, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ax, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.peel
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.az = add nuw nsw i64 %.promoted.i, 2
  %i.ba = icmp samesign ne i64 %i.az, %i.ac
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.ay, align 1, !noalias !1735, !noundef !5
  %i.bc = shl nuw nsw i32 %i.av, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = shl nuw nsw i32 %i.ap, 12
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = icmp samesign ugt i8 %i.al, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.peel
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.bk = add nuw nsw i64 %.promoted.i, 3
  %i.bl = icmp samesign ne i64 %i.bk, %i.ac
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i8, ptr %i.bj, align 1, !noalias !1735, !noundef !5
  %i.bn = shl nuw nsw i32 %i.ap, 18
  %i.bo = and i32 %i.bn, 1835008
  %i.bp = shl nuw nsw i32 %i.bf, 6
  %i.bq = and i8 %i.bm, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = or disjoint i32 %i.bs, %i.bo
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = zext nneg i8 %i.al to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.peel, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.peel, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.bh, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.peel ], [ %i.bt, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.peel ], [ %i.aw, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.peel ], [ %i.bu, %bb.m ] ; 4 uses
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bv)
  br i1 %i.ad, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bw, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bx, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.by, i64 3, i64 4
  br label %bb.s

bb.r:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_contains.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !1731, !noundef !5 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !1731, !nonnull !5, !noundef !5 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !1731, !noundef !5 ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !1731, !nonnull !5, !noundef !5 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !1731, !noundef !5 ; 14 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cl = add nsw i64 %i.cj, -1                   ; 5 uses
  br i1 %i.cb, label %bb.af, label %bb.x

bb.s:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.p ], [ %..i.i.peel, %bb.q ], [ 1, %bb.o ]
  %i.cm = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp ult i64 %i.cm, %i.ac
  br i1 %.not.i.i.i, label %bb.u, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.t
  %i.co = icmp eq i64 %i.cm, %i.ac
  br i1 %i.co, label %bb.v, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !1733, !noalias !1737, !noundef !5
  %i.cr = icmp sgt i8 %i.cq, -65
  br i1 %i.cr, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u, %.split.i.i.i, %bb.s
  %i.cs = icmp samesign eq i64 %i.cm, %i.ac
  br i1 %i.cs, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !1738, !noundef !5 ; 3 uses
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i: ; preds = %bb.w
  %i.cw = add nuw nsw i64 %i.cm, 1
  %i.cx = icmp samesign ne i64 %i.cw, %i.ac
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ugt i8 %i.cu, -33
  br i1 %i.cy, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i
  %i.cz = add nuw nsw i64 %i.cm, 2
  %i.da = icmp samesign ne i64 %i.cz, %i.ac
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ugt i8 %i.cu, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i
  %i.dc = add nuw nsw i64 %i.cm, 3
  %i.dd = icmp samesign ne i64 %i.dc, %i.ac
  tail call void @llvm.assume(i1 %i.dd)
  br label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.u, %.split.i.i.i, %bb.j, %.split.i.i.i.peel
  %.lcssa82 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.j ], [ %i.cm, %.split.i.i.i ], [ %i.cm, %bb.u ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %.lcssa82, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #32, !noalias !1737
  unreachable

bb.x:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %.promoted.i.i = load i64, ptr %i.ck, align 8, !alias.scope !1742 ; 2 uses
  %i.de = add i64 %.promoted.i.i, %i.cl           ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.cf
  br i1 %i.df, label %.lr.ph.i1.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i1.i:                                      ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !1742, !noundef !5
  %i.di = load i64, ptr %i.u, align 8, !alias.scope !1742
  %.fr60.i.i = freeze i64 %i.di                   ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !1742 ; 2 uses
  %i.dl = sub i64 %i.cj, %i.dk
  %invariant.op = sub i64 1, %.fr60.i.i
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.aa, %.lr.ph.i1.i
  %.sink70.i.i46 = phi i64 [ %.sink70.i.i, %bb.aa ], [ %i.ca, %.lr.ph.i1.i ] ; 3 uses
  %.sink71.i.i43 = phi i64 [ %.sink71.i.i, %bb.aa ], [ %.promoted.i.i, %.lr.ph.i1.i ] ; 5 uses
  %i.dm = phi i64 [ %i.dv, %bb.aa ], [ %i.de, %.lr.ph.i1.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !1740, !noalias !1743, !noundef !5
  %i.dp = and i8 %i.do, 63
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = and i64 %i.dr, %i.dh
  %.not.i2.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i2.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i.i
  %i.dt = add i64 %.sink71.i.i43, %i.cj
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.split.i.i
  %..i.i3.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i46, i64 %.fr60.i.i) ; 2 uses
  %i.du = icmp ult i64 %..i.i3.i, %i.cj
  br i1 %i.du, label %.lr.ph155, label %.preheader36.i.i.preheader

bb.aa:                                            ; preds = %bb.ae, %bb.ad, %bb.y
  %.sink71.i.i = phi i64 [ %i.eq, %bb.ae ], [ %i.ep, %bb.ad ], [ %i.dt, %bb.y ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.ae ], [ %i.dl, %bb.ad ], [ 0, %bb.y ]
  %i.dv = add i64 %.sink71.i.i, %i.cl             ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.cf
  br i1 %i.dw, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.ab:                                            ; preds = %.lr.ph155
  %i.dx = add nuw nsw i64 %.sroa.04.0.i.i154, 1   ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cj
  br i1 %i.dy, label %.lr.ph155, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.ab, %bb.z
  %i.dz = icmp ult i64 %.sink70.i.i46, %.fr60.i.i
  br i1 %i.dz, label %.lr.ph157, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph155:                                        ; preds = %bb.z, %bb.ab
  %.sroa.04.0.i.i154 = phi i64 [ %i.dx, %bb.ab ], [ %..i.i3.i, %bb.z ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.0.i.i154
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !1741, !noalias !1743, !noundef !5
  %i.ec = add i64 %.sroa.04.0.i.i154, %.sink71.i.i43 ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.cf
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ec
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !1740, !noalias !1743, !noundef !5
  %.not21.i.i = icmp eq i8 %i.eb, %i.ef
  br i1 %.not21.i.i, label %bb.ab, label %bb.ae

.preheader36.i.i:                                 ; preds = %bb.ac
  %i.eg = icmp ult i64 %.sink70.i.i46, %i.eh
  br i1 %i.eg, label %.lr.ph157, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph157:                                        ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i156 = phi i64 [ %i.eh, %.preheader36.i.i ], [ %.fr60.i.i, %.preheader36.i.i.preheader ]
  %i.eh = add i64 %.sroa.2.0.i.i156, -1           ; 6 uses
  %i.ei = icmp ult i64 %i.eh, %i.cj
  br i1 %i.ei, label %bb.ac, label %.split32.us.i.i

bb.ac:                                            ; preds = %.lr.ph157
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !1741, !noalias !1743, !noundef !5
  %i.el = add i64 %i.eh, %.sink71.i.i43           ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cf
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !1740, !noalias !1743, !noundef !5
  %.not20.i.i = icmp eq i8 %i.ek, %i.eo
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.ad

.split32.us.i.i:                                  ; preds = %.lr.ph157
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #32, !noalias !1744
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.ep = add i64 %.sink71.i.i43, %i.dk
  br label %bb.aa

bb.ae:                                            ; preds = %.lr.ph155
  %.reass.i.reass.reass = add i64 %.sink71.i.i43, %invariant.op
  %i.eq = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i154
  br label %bb.aa

bb.af:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  %.promoted.i4.i = load i64, ptr %i.ck, align 8, !alias.scope !1748 ; 3 uses
  %i.er = add i64 %.promoted.i4.i, %i.cl          ; 3 uses
  %i.es = icmp ult i64 %i.er, %i.cf
  br i1 %i.es, label %.lr.ph.i7.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i7.i:                                      ; preds = %bb.af
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !1748, !noundef !5 ; 2 uses
  %i.ev = load i64, ptr %i.u, align 8, !alias.scope !1748
  %.fr63.i = freeze i64 %i.ev                     ; 10 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1748
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i, i64 range(i64 0, -9223372036854775808) %i.cj) ; 2 uses
  %i.ey = add i64 %.fr63.i, -1                    ; 2 uses
  %.first_iter.i8.i = icmp ult i64 %i.ey, %i.cj
  %i.ez = sub i64 1, %.fr63.i                     ; 2 uses
  br i1 %.first_iter.i8.i, label %.lr.ph.split.us.i.us.i.preheader, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i7.i
  %exitcond.not.i.i3158.not = icmp ult i64 %.fr63.i, %i.cj
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.us.i.preheader:                 ; preds = %.lr.ph.i7.i
  %exitcond.not.i.us.i161.not = icmp ult i64 %.fr63.i, %i.cj
  %.not34.i.us.us.i164 = icmp eq i64 %.fr63.i, 0
  br label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i.us.i.preheader, %bb.ai
  %.sink.i9.us.i51 = phi i64 [ %.sink.i9.us.i, %bb.ai ], [ %.promoted.i4.i, %.lr.ph.split.us.i.us.i.preheader ] ; 5 uses
  %i.fa = phi i64 [ %i.fz, %bb.ai ], [ %i.er, %.lr.ph.split.us.i.us.i.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !1746, !noalias !1743, !noundef !5
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.eu
  %.not.us.i.us.i = icmp eq i64 %i.fg, 0
  br i1 %.not.us.i.us.i, label %bb.ah, label %.preheader35.i.us.i.preheader

.preheader35.i.us.i.preheader:                    ; preds = %.lr.ph.split.us.i.us.i
  br i1 %exitcond.not.i.us.i161.not, label %.lr.ph163, label %.preheader.i10.us.us.i.preheader

.preheader35.i.us.i:                              ; preds = %.lr.ph163
  %i.fh = add i64 %.sroa.04.0.us.i.us.i162, 1     ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.fh, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %.preheader.i10.us.us.i.preheader, label %.lr.ph163

.preheader.i10.us.us.i.preheader:                 ; preds = %.preheader35.i.us.i, %.preheader35.i.us.i.preheader
  br i1 %.not34.i.us.us.i164, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph166

.lr.ph163:                                        ; preds = %.preheader35.i.us.i.preheader, %.preheader35.i.us.i
  %.sroa.04.0.us.i.us.i162 = phi i64 [ %i.fh, %.preheader35.i.us.i ], [ %.fr63.i, %.preheader35.i.us.i.preheader ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.0.us.i.us.i162
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !1747, !noalias !1743, !noundef !5
  %i.fk = add i64 %.sroa.04.0.us.i.us.i162, %.sink.i9.us.i51 ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.cf
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fk
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !1746, !noalias !1743, !noundef !5
  %.not21.us.i.us.i = icmp eq i8 %i.fj, %i.fn
  br i1 %.not21.us.i.us.i, label %.preheader35.i.us.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph163
  %i.fo = add i64 %.sink.i9.us.i51, %i.ez
  %i.fp = add i64 %i.fo, %.sroa.04.0.us.i.us.i162
  br label %bb.ai

.preheader.i10.us.us.i:                           ; preds = %.lr.ph166
  %.not34.i.us.us.i = icmp eq i64 %i.fq, 0
  br i1 %.not34.i.us.us.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph166

.lr.ph166:                                        ; preds = %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i
  %.sroa.2.0.us.i.us.us.i165 = phi i64 [ %i.fq, %.preheader.i10.us.us.i ], [ %.fr63.i, %.preheader.i10.us.us.i.preheader ]
  %i.fq = add i64 %.sroa.2.0.us.i.us.us.i165, -1  ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !1747, !noalias !1743, !noundef !5
  %i.ft = add i64 %i.fq, %.sink.i9.us.i51         ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.cf
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !1746, !noalias !1743, !noundef !5
  %.not20.us.i.us.us.i = icmp eq i8 %i.fs, %i.fw
  br i1 %.not20.us.i.us.us.i, label %.preheader.i10.us.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.lr.ph166
  %i.fx = add i64 %.sink.i9.us.i51, %i.ex
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.split.us.i.us.i
  %i.fy = add i64 %.sink.i9.us.i51, %i.cj
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.split.us.us.i, %bb.ag
  %.sink.i9.us.i = phi i64 [ %i.fy, %bb.ah ], [ %i.fp, %bb.ag ], [ %i.fx, %.split.us.us.i ] ; 2 uses
  %i.fz = add i64 %.sink.i9.us.i, %i.cl           ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.cf
  br i1 %i.ga, label %.lr.ph.split.us.i.us.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.al
  %.sink.i9.i49 = phi i64 [ %.sink.i9.i, %bb.al ], [ %.promoted.i4.i, %.lr.ph.split.us.i.i.preheader ] ; 3 uses
  %i.gb = phi i64 [ %i.gs, %bb.al ], [ %i.er, %.lr.ph.split.us.i.i.preheader ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !1746, !noalias !1743, !noundef !5
  %i.ge = and i8 %i.gd, 63
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = and i64 %i.gg, %i.eu
  %.not.us.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.us.i.i, label %bb.ak, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i.i3158.not, label %.lr.ph160, label %.preheader.split.i13.i

.preheader35.i.i:                                 ; preds = %.lr.ph160
  %i.gi = add i64 %.sroa.04.0.us.i.i159, 1        ; 2 uses
  %exitcond.not.i.i3 = icmp eq i64 %i.gi, %umax.i.i
  br i1 %exitcond.not.i.i3, label %.preheader.split.i13.i, label %.lr.ph160

.preheader.split.i13.i:                           ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.not34.i.i = icmp eq i64 %.fr63.i, 0
  br i1 %.not34.i.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.split32.us.i14.i

.lr.ph160:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i159 = phi i64 [ %i.gi, %.preheader35.i.i ], [ %.fr63.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.0.us.i.i159
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !1747, !noalias !1743, !noundef !5
  %i.gl = add i64 %.sroa.04.0.us.i.i159, %.sink.i9.i49 ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.cf
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.gl
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !1746, !noalias !1743, !noundef !5
  %.not21.us.i.i = icmp eq i8 %i.gk, %i.go
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph160
  %i.gp = add i64 %.sink.i9.i49, %i.ez
  %i.gq = add i64 %i.gp, %.sroa.04.0.us.i.i159
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph.split.us.i.i
  %i.gr = add i64 %.sink.i9.i49, %i.cj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink.i9.i = phi i64 [ %i.gr, %bb.ak ], [ %i.gq, %bb.aj ] ; 2 uses
  %i.gs = add i64 %.sink.i9.i, %i.cl              ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.cf
  br i1 %i.gt, label %.lr.ph.split.us.i.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.split32.us.i14.i:                                ; preds = %.preheader.split.i13.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #32, !noalias !1749
  unreachable

_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %bb.aa, %.preheader36.i.i.preheader, %.preheader36.i.i, %bb.al, %bb.ai, %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i, %bb.w, %bb.k, %.preheader.split.i13.i, %bb.af, %bb.x, %bb.n, %bb.v, %.preheader.i
  %storemerge.i.sink.i = phi i8 [ 0, %bb.af ], [ 0, %bb.x ], [ 1, %bb.n ], [ 0, %bb.ai ], [ 0, %.preheader.i ], [ 1, %bb.v ], [ 1, %.preheader.split.i13.i ], [ 0, %bb.al ], [ %.promoted52.i, %bb.k ], [ 1, %.preheader.i10.us.us.i ], [ 1, %.preheader36.i.i ], [ 1, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i ], [ 1, %bb.w ], [ 1, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i ], [ 1, %.preheader.i10.us.us.i.preheader ], [ 0, %bb.aa ], [ 1, %.preheader36.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_contains.exit.thread

bb.am:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  %i.gu = load i8, ptr %0, align 1, !alias.scope !1750, !noundef !5 ; 3 uses
  %i.gv = add nsw i64 %1, -1                      ; 2 uses
  %i.gw = icmp eq i64 %1, 2
  br i1 %i.gw, label %.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.am
  %i.gx = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  br label %bb.ao

bb.an:                                            ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csa5QsYiPB8Gl_5image.exit.i.i
  %i.gy = icmp ult i64 %i.gx, %i.ha
  br i1 %i.gy, label %bb.ao, label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_contains.exit

bb.ao:                                            ; preds = %.lr.ph, %bb.an
  %i.gz = phi i64 [ %1, %.lr.ph ], [ %i.ha, %bb.an ]
  %i.ha = add nsw i64 %i.gz, -1                   ; 6 uses
  %i.hb = icmp ult i64 %i.ha, %1
  br i1 %i.hb, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csa5QsYiPB8Gl_5image.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ha, i64 noundef range(i64 2, 33) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #32, !noalias !1752
  unreachable

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.ao
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !1750, !noalias !1753, !noundef !5 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.hd, %i.gu
  br i1 %.not.i.not.i.i, label %bb.an, label %bb.aq

bb.aq:                                            ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csa5QsYiPB8Gl_5image.exit.i.i
  %i.he = add nuw nsw i64 %1, 15
  %i.hf = icmp ult i64 %3, %i.he
  br i1 %i.hf, label %.lr.ph.split.us.i.i7, label %bb.ar

.thread.i:                                        ; preds = %bb.am
  %i.hg = icmp ult i64 %3, 17
  br i1 %i.hg, label %.lr.ph.split.us.i.i7, label %.thread92.i

.thread92.i:                                      ; preds = %.thread.i
  %i.hh = insertelement <16 x i8> poison, i8 %i.gu, i64 0
  %i.hi = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !1750
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hj = insertelement <16 x i8> poison, i8 %i.gu, i64 0
  %i.hk = shufflevector <16 x i8> %i.hj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.as

.lr.ph.split.us.i.i7:                             ; preds = %bb.aq, %.thread.i
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !1754, !noalias !1755
  %i.hl = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.hl, label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csa5QsYiPB8Gl_5image.exit.backedge.us.i.i

.split.us.i.i8:                                   ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csa5QsYiPB8Gl_5image.exit.backedge.us.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.hm, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !1754, !noalias !1755
  %i.hn = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.hn, label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csa5QsYiPB8Gl_5image.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csa5QsYiPB8Gl_5image.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i7, %.split.us.i.i8
  %.pn.i = phi ptr [ %i.hm, %.split.us.i.i8 ], [ %2, %.lr.ph.split.us.i.i7 ]
  %.in.i = phi i64 [ %i.ho, %.split.us.i.i8 ], [ %3, %.lr.ph.split.us.i.i7 ]
  %i.ho = add i64 %.in.i, -1                      ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.ho
  br i1 %.not27.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i8

bb.as:                                            ; preds = %bb.ar, %.thread92.i
  %i.hp = phi i8 [ %.pre.i, %.thread92.i ], [ %i.hd, %bb.ar ]
  %i.hq = phi <16 x i8> [ %i.hi, %.thread92.i ], [ %i.hk, %bb.ar ] ; 6 uses
  %storemerge9194.i = phi i64 [ 1, %.thread92.i ], [ %i.ha, %bb.ar ] ; 6 uses
  %i.hr = insertelement <16 x i8> poison, i8 %i.hp, i64 0
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1754
  store ptr %2, ptr %i.a, align 8, !noalias !1754
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.hu, align 8, !noalias !1754
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ht, ptr %i.hv, align 8, !noalias !1754
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.gv, ptr %i.hw, align 8, !noalias !1754
  %i.hx = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.hx, %3
  br i1 %.not.i, label %.lr.ph.i5, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.aw, %bb.as
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.as ], [ %.sroa.014.2.3.i, %bb.aw ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.as ], [ %i.jt, %bb.aw ] ; 2 uses
  %i.hy = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.hz = add i64 %.sroa.06.0.lcssa.i, %i.hy
  %i.ia = icmp uge i64 %i.hz, %3
  %i.ib = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3104.i = select i1 %i.ia, i1 true, i1 %i.ib
  br i1 %or.cond3104.i, label %._crit_edge.i, label %.lr.ph106.i

.lr.ph.i5:                                        ; preds = %bb.as, %bb.aw
  %.sroa.06.0102.i = phi i64 [ %i.jt, %bb.aw ], [ 0, %bb.as ] ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0102.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ic, align 1, !alias.scope !1751, !noalias !1756
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.id, align 1, !alias.scope !1751, !noalias !1756
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.hq
  %i.if = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.hs
  %i.ig = and <16 x i1> %i.ie, %i.if
  %i.ih = bitcast <16 x i1> %i.ig to i16          ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ii, align 1, !alias.scope !1751, !noalias !1756
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.ij, align 1, !alias.scope !1751, !noalias !1756
  %i.ik = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.hq
  %i.il = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.hs
  %i.im = and <16 x i1> %i.ik, %i.il
  %i.in = bitcast <16 x i1> %i.im to i16          ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.io, align 1, !alias.scope !1751, !noalias !1756
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.ip, align 1, !alias.scope !1751, !noalias !1756
  %i.iq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.hq
  %i.ir = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.hs
  %i.is = and <16 x i1> %i.iq, %i.ir
  %i.it = bitcast <16 x i1> %i.is to i16          ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ic, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.iu, align 1, !alias.scope !1751, !noalias !1756
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.iv, align 1, !alias.scope !1751, !noalias !1756
  %i.iw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.hq
  %i.ix = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.hs
  %i.iy = and <16 x i1> %i.iw, %i.ix
  %i.iz = bitcast <16 x i1> %i.iy to i16          ; 2 uses
  %i.ja = icmp eq i16 %i.ih, 0
  br i1 %i.ja, label %.preheader95.1.i, label %bb.ax

.preheader95.1.i:                                 ; preds = %bb.ax, %.lr.ph.i5
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i5 ], [ %i.jy, %bb.ax ] ; 3 uses
  %i.jb = icmp eq i16 %i.in, 0
  br i1 %i.jb, label %.preheader95.2.i, label %bb.at

bb.at:                                            ; preds = %.preheader95.1.i
  %i.jc = or disjoint i64 %.sroa.06.0102.i, 16
  %i.jd = trunc nuw i8 %.sroa.014.2.i to i1
  %i.je = call fastcc noundef zeroext i1 @_RNCNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_containss0_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jc, i16 noundef %i.in, i1 noundef zeroext %i.jd) #27
  %i.jf = zext i1 %i.je to i8
  %i.jg = or i8 %.sroa.014.2.i, %i.jf
  br label %.preheader95.2.i

.preheader95.2.i:                                 ; preds = %bb.at, %.preheader95.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader95.1.i ], [ %i.jg, %bb.at ] ; 3 uses
  %i.jh = icmp eq i16 %i.it, 0
  br i1 %i.jh, label %.preheader95.3.i, label %bb.au

bb.au:                                            ; preds = %.preheader95.2.i
  %i.ji = or disjoint i64 %.sroa.06.0102.i, 32
  %i.jj = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.jk = call fastcc noundef zeroext i1 @_RNCNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_containss0_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ji, i16 noundef %i.it, i1 noundef zeroext %i.jj) #27
  %i.jl = zext i1 %i.jk to i8
  %i.jm = or i8 %.sroa.014.2.1.i, %i.jl
  br label %.preheader95.3.i

.preheader95.3.i:                                 ; preds = %bb.au, %.preheader95.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader95.2.i ], [ %i.jm, %bb.au ] ; 3 uses
  %i.jn = icmp eq i16 %i.iz, 0
  br i1 %i.jn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.preheader95.3.i
  %i.jo = or disjoint i64 %.sroa.06.0102.i, 48
  %i.jp = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.jq = call fastcc noundef zeroext i1 @_RNCNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_containss0_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jo, i16 noundef %i.iz, i1 noundef zeroext %i.jp) #27
  %i.jr = zext i1 %i.jq to i8
  %i.js = or i8 %.sroa.014.2.2.i, %i.jr
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.preheader95.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader95.3.i ], [ %i.js, %bb.av ] ; 2 uses
  %i.jt = add i64 %.sroa.06.0102.i, 64            ; 3 uses
  %i.ju = add i64 %i.jt, %i.hx
  %i.jv = icmp uge i64 %i.ju, %3
  %i.jw = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.jv, i1 true, i1 %i.jw
  br i1 %or.cond.i, label %.preheader.i4, label %.lr.ph.i5

bb.ax:                                            ; preds = %.lr.ph.i5
  %i.jx = call fastcc noundef zeroext i1 @_RNCNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_containss0_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i, i16 noundef %i.ih, i1 noundef zeroext false) #27
  %i.jy = zext i1 %i.jx to i8
  br label %.preheader95.1.i

._crit_edge.i:                                    ; preds = %bb.ay, %.preheader.i4
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i4 ], [ %.sroa.014.4.i, %bb.ay ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ib, %.preheader.i4 ], [ %i.ks, %bb.ay ]
  %i.jz = sub nuw i64 %3, %i.gv
  %i.ka = add i64 %i.jz, -16                      ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ka ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.kb, align 1, !alias.scope !1751, !noalias !1757
end_hunk_0
