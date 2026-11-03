Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.08?download=true
inline.NumInlined: 16156
inline.NumDeleted: 5265
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41795)
  %i.s = load i64, ptr %i.b, align 8, !range !20, !alias.scope !41795, !noundef !21
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.t, label %bb.r, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.w = load i8, ptr %i.v, align 2, !range !26, !alias.scope !41796, !noundef !21
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %.promoted.i = load i64, ptr %i.u, align 8, !alias.scope !41795 ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !41796, !nonnull !21, !noundef !21 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !41796, !noundef !21 ; 14 uses
  %.promoted26.i = load i8, ptr %i.y, align 8, !alias.scope !41796 ; 2 uses
  %i.ad = trunc nuw i8 %.promoted26.i to i1
  %i.ae = icmp eq i64 %.promoted.i, 0
  br i1 %i.ae, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.ac
  br i1 %.not.i.i.i.peel, label %bb.j, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.i
  %i.af = icmp eq i64 %.promoted.i, %i.ac
  br i1 %i.af, label %bb.k, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !41797, !noalias !41798, !noundef !21
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %.split.i.i.i.peel, %.lr.ph.i5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i ; 4 uses
  %i.ak = icmp samesign eq i64 %.promoted.i, %i.ac
  br i1 %i.ak, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i8, ptr %i.aj, align 1, !noalias !41799, !noundef !21 ; 5 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.m, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel: ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = and i8 %i.al, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = add nuw nsw i64 %.promoted.i, 1
  %i.ar = icmp samesign ne i64 %i.aq, %i.ac
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i8, ptr %i.an, align 1, !noalias !41799, !noundef !21
  %i.at = shl nuw nsw i32 %i.ap, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ax, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.az = add nuw nsw i64 %.promoted.i, 2
  %i.ba = icmp samesign ne i64 %i.az, %i.ac
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.ay, align 1, !noalias !41799, !noundef !21
  %i.bc = shl nuw nsw i32 %i.av, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = shl nuw nsw i32 %i.ap, 12
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = icmp samesign ugt i8 %i.al, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.bk = add nuw nsw i64 %.promoted.i, 3
  %i.bl = icmp samesign ne i64 %i.bk, %i.ac
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i8, ptr %i.bj, align 1, !noalias !41799, !noundef !21
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

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.bh, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel ], [ %i.bt, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel ], [ %i.aw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel ], [ %i.bu, %bb.m ] ; 4 uses
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bv)
  br i1 %i.ad, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.o

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

bb.r:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !41795, !noundef !21 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !41795, !nonnull !21, !noundef !21 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !41795, !noundef !21 ; 14 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !41795, !nonnull !21, !noundef !21 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !41795, !noundef !21 ; 12 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cl = add nsw i64 %i.cj, -1                   ; 4 uses
  br i1 %i.cb, label %bb.x, label %bb.ai

bb.s:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.p ], [ %..i.i.peel, %bb.q ], [ 1, %bb.o ]
  %i.cm = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41800)
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
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !41797, !noalias !41801, !noundef !21
  %i.cr = icmp sgt i8 %i.cq, -65
  br i1 %i.cr, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u, %.split.i.i.i, %bb.s
  %i.cs = icmp samesign eq i64 %i.cm, %i.ac
  br i1 %i.cs, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !41802, !noundef !21 ; 3 uses
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i: ; preds = %bb.w
  %i.cw = add nuw nsw i64 %i.cm, 1
  %i.cx = icmp samesign ne i64 %i.cw, %i.ac
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ugt i8 %i.cu, -33
  br i1 %i.cy, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i
  %i.cz = add nuw nsw i64 %i.cm, 2
  %i.da = icmp samesign ne i64 %i.cz, %i.ac
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ugt i8 %i.cu, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i
  %i.dc = add nuw nsw i64 %i.cm, 3
  %i.dd = icmp samesign ne i64 %i.dc, %i.ac
  tail call void @llvm.assume(i1 %i.dd)
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.u, %.split.i.i.i, %bb.j, %.split.i.i.i.peel
  %.lcssa150 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.j ], [ %i.cm, %.split.i.i.i ], [ %i.cm, %bb.u ]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %.lcssa150, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @926) #41, !noalias !41801
  unreachable

bb.x:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41805)
  %.promoted.i17 = load i64, ptr %i.ck, align 8, !alias.scope !41803 ; 2 uses
  %i.de = add i64 %.promoted.i17, %i.cl           ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.cf
  br i1 %i.df, label %.lr.ph.i20, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i20:                                       ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !41803, !noundef !21
  %i.di = load i64, ptr %i.u, align 8, !alias.scope !41803 ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !41803
  %umax49.i23 = tail call i64 @llvm.umax.i64(i64 %i.di, i64 range(i64 0, -9223372036854775808) %i.cj)
  %i.dl = add i64 %i.di, -1
  %.first_iter = icmp ult i64 %i.dl, %i.cj
  %exitcond.not.i25278.not = icmp ult i64 %i.di, %i.cj
  %invariant.op364 = sub i64 1, %i.di
  %.not281 = icmp eq i64 %i.di, 0
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i20
  %i.dm = phi i64 [ %.promoted.i17, %.lr.ph.i20 ], [ %i.dw, %bb.aa ] ; 6 uses
  %i.dn = phi i64 [ %i.de, %.lr.ph.i20 ], [ %i.dx, %bb.aa ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !41804, !noundef !21
  %i.dq = and i8 %i.dp, 63
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.dh
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.z, label %.preheader96.preheader

.preheader96.preheader:                           ; preds = %bb.y
  br i1 %exitcond.not.i25278.not, label %.lr.ph280, label %.preheader.preheader

bb.z:                                             ; preds = %bb.y
  %i.dv = add i64 %i.dm, %i.cj
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ah, %bb.ae, %bb.z
  %i.dw = phi i64 [ %i.em, %bb.ah ], [ %i.dv, %bb.z ], [ %i.eg, %bb.ae ] ; 2 uses
  %i.dx = add i64 %i.dw, %i.cl                    ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cf
  br i1 %i.dy, label %bb.y, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.preheader96:                                     ; preds = %bb.af
  %i.dz = add nuw i64 %.sroa.02.0.i24279, 1       ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %i.dz, %umax49.i23
  br i1 %exitcond.not.i25, label %.preheader.preheader, label %.lr.ph280

.preheader.preheader:                             ; preds = %.preheader96, %.preheader96.preheader
  br i1 %.not281, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph283

.lr.ph280:                                        ; preds = %.preheader96.preheader, %.preheader96
  %.sroa.02.0.i24279 = phi i64 [ %i.dz, %.preheader96 ], [ %i.di, %.preheader96.preheader ] ; 4 uses
  %4 = add i64 %.sroa.02.0.i24279, %i.dm          ; 2 uses
  %5 = icmp ult i64 %4, %i.cf
  br i1 %5, label %bb.af, label %bb.ag

.preheader:                                       ; preds = %bb.ac
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph283

.lr.ph283:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i28282 = phi i64 [ %6, %.preheader ], [ %i.di, %.preheader.preheader ]
  %6 = add i64 %.sroa.2.0.i28282, -1              ; 5 uses
  br i1 %.first_iter, label %bb.ab, label %7

bb.ab:                                            ; preds = %.lr.ph283
  %i.ea = add i64 %6, %i.dm                       ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.cf
  br i1 %i.eb, label %bb.ac, label %bb.ad

7:                                                ; preds = %.lr.ph283
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %6, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #41, !noalias !41806
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ch, i64 %6
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !41805, !noundef !21
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ea
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !41804, !noundef !21
  %.not.i29 = icmp eq i8 %i.ed, %i.ef
  br i1 %.not.i29, label %.preheader, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !41806
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.eg = add i64 %i.dm, %i.dk
  br label %bb.aa

bb.af:                                            ; preds = %.lr.ph280
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.02.0.i24279
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !41805, !noundef !21
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cd, i64 %4
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !41804, !noundef !21
  %.not21.i27 = icmp eq i8 %i.ei, %i.ek
  br i1 %.not21.i27, label %.preheader96, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph280
  %i.el = add i64 %i.dm, %i.di
  %umax.i26 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.cf, i64 %i.el)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax.i26, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #41, !noalias !41806
  unreachable

bb.ah:                                            ; preds = %bb.af
  %.reass235.reass = add i64 %i.dm, %invariant.op364
  %i.em = add i64 %.reass235.reass, %.sroa.02.0.i24279
  br label %bb.aa

bb.ai:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41809)
  %.promoted.i11 = load i64, ptr %i.ck, align 8, !alias.scope !41807 ; 2 uses
  %i.en = add i64 %.promoted.i11, %i.cl           ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.cf
  br i1 %i.eo, label %.lr.ph.i14, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !41807, !noundef !21
  %i.er = load i64, ptr %i.u, align 8, !alias.scope !41807 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !41807 ; 2 uses
  %i.eu = sub i64 %i.cj, %i.et
  %invariant.op = sub i64 1, %i.er
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i, %.lr.ph.i14
  %i.ev = phi i64 [ %.promoted.i11, %.lr.ph.i14 ], [ %.ph71.i, %.sink.split.i ] ; 6 uses
  %i.ew = phi i64 [ %i.ca, %.lr.ph.i14 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.ex = phi i64 [ %i.en, %.lr.ph.i14 ], [ %i.fg, %.sink.split.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !41808, !noundef !21
  %i.fa = and i8 %i.ez, 63
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = shl nuw i64 1, %i.fb
  %i.fd = and i64 %i.fc, %i.eq
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ff = add i64 %i.ev, %i.cj
  br label %.sink.split.i

bb.al:                                            ; preds = %bb.aj
  %.sroa.0.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.ew, i64 %i.er) ; 4 uses
  %umax49.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.cj)
  %exitcond.not.i15273.not = icmp ult i64 %.sroa.0.0.i.i, %i.cj
  br i1 %exitcond.not.i15273.not, label %.lr.ph275, label %.preheader35.preheader

.sink.split.i:                                    ; preds = %bb.au, %bb.ar, %bb.ak
  %.sink.i = phi i64 [ %i.eu, %bb.ar ], [ 0, %bb.au ], [ 0, %bb.ak ]
  %.ph71.i = phi i64 [ %i.fv, %bb.ar ], [ %i.gb, %bb.au ], [ %i.ff, %bb.ak ] ; 2 uses
  %i.fg = add i64 %.ph71.i, %i.cl                 ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.cf
  br i1 %i.fh, label %bb.aj, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.am:                                            ; preds = %bb.as
  %i.fi = add nuw i64 %.sroa.02.0.i274, 1         ; 2 uses
  %exitcond.not.i15 = icmp eq i64 %i.fi, %umax49.i
  br i1 %exitcond.not.i15, label %.preheader35.preheader, label %.lr.ph275

.preheader35.preheader:                           ; preds = %bb.am, %bb.al
  %i.fj = icmp ult i64 %i.ew, %i.er
  br i1 %i.fj, label %.lr.ph277, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph275:                                        ; preds = %bb.al, %bb.am
  %.sroa.02.0.i274 = phi i64 [ %i.fi, %bb.am ], [ %.sroa.0.0.i.i, %bb.al ] ; 4 uses
  %i.fk = add i64 %.sroa.02.0.i274, %i.ev         ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.cf
  br i1 %i.fl, label %bb.as, label %bb.at

.preheader35:                                     ; preds = %bb.ap
  %i.fm = icmp ult i64 %i.ew, %i.fn
  br i1 %i.fm, label %.lr.ph277, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph277:                                        ; preds = %.preheader35.preheader, %.preheader35
  %.sroa.2.0.i276 = phi i64 [ %i.fn, %.preheader35 ], [ %i.er, %.preheader35.preheader ]
  %i.fn = add i64 %.sroa.2.0.i276, -1             ; 6 uses
  %i.fo = icmp ult i64 %i.fn, %i.cj
  br i1 %i.fo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph277
  %i.fp = add i64 %i.fn, %i.ev                    ; 3 uses
  %i.fq = icmp ult i64 %i.fp, %i.cf
  br i1 %i.fq, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %.lr.ph277
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fn, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #41, !noalias !41810
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.fn
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !41809, !noundef !21
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fp
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !41808, !noundef !21
  %.not.i16 = icmp eq i8 %i.fs, %i.fu
  br i1 %.not.i16, label %.preheader35, label %bb.ar

bb.aq:                                            ; preds = %bb.an
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !41810
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.fv = add i64 %i.ev, %i.et
  br label %.sink.split.i

bb.as:                                            ; preds = %.lr.ph275
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.02.0.i274
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !41809, !noundef !21
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fk
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !41808, !noundef !21
  %.not21.i = icmp eq i8 %i.fx, %i.fz
  br i1 %.not21.i, label %bb.am, label %bb.au

bb.at:                                            ; preds = %.lr.ph275
  %i.ga = add i64 %i.ev, %.sroa.0.0.i.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.cf, i64 %i.ga)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #41, !noalias !41810
  unreachable

bb.au:                                            ; preds = %bb.as
  %.reass.reass = add i64 %i.ev, %invariant.op
  %i.gb = add i64 %.reass.reass, %.sroa.02.0.i274
  br label %.sink.split.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.sink.split.i, %.preheader35.preheader, %.preheader35, %bb.aa, %.preheader.preheader, %.preheader, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i, %bb.w, %bb.k, %bb.ai, %bb.x, %bb.n, %bb.v, %.preheader.i4
  %.sroa.0.031 = phi i8 [ 1, %.preheader ], [ 0, %bb.x ], [ 0, %.preheader.i4 ], [ 1, %bb.v ], [ 1, %.preheader.preheader ], [ 1, %bb.n ], [ 1, %.preheader35 ], [ 0, %bb.ai ], [ %.promoted26.i, %bb.k ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i ], [ 1, %bb.w ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i ], [ 0, %bb.aa ], [ 0, %.sink.split.i ], [ 1, %.preheader35.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.av:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41812)
  %i.gc = load i8, ptr %0, align 1, !alias.scope !41811, !noundef !21 ; 3 uses
  %i.gd = add nsw i64 %1, -1                      ; 2 uses
  %i.ge = icmp eq i64 %1, 2
  br i1 %i.ge, label %.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.av
  %i.gf = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  br label %bb.ax

bb.aw:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gg = icmp ult i64 %i.gf, %i.gi
  br i1 %i.gg, label %bb.ax, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

bb.ax:                                            ; preds = %.lr.ph, %bb.aw
  %i.gh = phi i64 [ %1, %.lr.ph ], [ %i.gi, %bb.aw ]
  %i.gi = add nsw i64 %i.gh, -1                   ; 6 uses
  %i.gj = icmp ult i64 %i.gi, %1
  br i1 %i.gj, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gi, i64 noundef range(i64 2, 33) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #41, !noalias !41813
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ax
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %i.gi
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !41811, !noalias !41814, !noundef !21 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.gl, %i.gc
  br i1 %.not.i.not.i.i, label %bb.aw, label %bb.az

bb.az:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gm = add nuw nsw i64 %1, 15
  %i.gn = icmp ult i64 %3, %i.gm
  br i1 %i.gn, label %.lr.ph.split.us.i.i, label %bb.ba

.thread.i:                                        ; preds = %bb.av
  %i.go = icmp ult i64 %3, 17
  br i1 %i.go, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.gp = insertelement <16 x i8> poison, i8 %i.gc, i64 0
  %i.gq = shufflevector <16 x i8> %i.gp, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !41811
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gr = insertelement <16 x i8> poison, i8 %i.gc, i64 0
  %i.gs = shufflevector <16 x i8> %i.gr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bb

.lr.ph.split.us.i.i:                              ; preds = %bb.az, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !41815, !noalias !41816
  %i.gt = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.gt, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.gu, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !41815, !noalias !41816
  %i.gv = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.gv, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.gu, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.in.i = phi i64 [ %i.gw, %.split.us.i.i ], [ %3, %.lr.ph.split.us.i.i ]
  %i.gw = add i64 %.in.i, -1                      ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.gw
  br i1 %.not28.i.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.bb:                                            ; preds = %bb.ba, %.thread93.i
  %i.gx = phi i8 [ %.pre.i, %.thread93.i ], [ %i.gl, %bb.ba ]
  %i.gy = phi <16 x i8> [ %i.gq, %.thread93.i ], [ %i.gs, %bb.ba ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %i.gi, %bb.ba ] ; 6 uses
  %i.gz = insertelement <16 x i8> poison, i8 %i.gx, i64 0
  %i.ha = shufflevector <16 x i8> %i.gz, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41815
  store ptr %2, ptr %i.a, align 8, !noalias !41815
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.hc, align 8, !noalias !41815
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.hb, ptr %i.hd, align 8, !noalias !41815
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.gd, ptr %i.he, align 8, !noalias !41815
  %i.hf = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i7 = icmp ult i64 %i.hf, %3
  br i1 %.not.i7, label %.lr.ph.i10, label %.preheader.i8

.preheader.i8:                                    ; preds = %bb.bf, %bb.bb
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.bb ], [ %.sroa.014.2.3.i, %bb.bf ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.bb ], [ %i.jb, %bb.bf ] ; 2 uses
  %i.hg = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.hh = add i64 %.sroa.06.0.lcssa.i, %i.hg
  %i.hi = icmp uge i64 %i.hh, %3
  %i.hj = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.hi, i1 true, i1 %i.hj
  br i1 %or.cond3105.i, label %._crit_edge.i9, label %.lr.ph107.i

.lr.ph.i10:                                       ; preds = %bb.bb, %bb.bf
  %.sroa.06.0103.i = phi i64 [ %i.jb, %bb.bf ], [ 0, %bb.bb ] ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.hk, align 1, !alias.scope !41812, !noalias !41817
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.hl, align 1, !alias.scope !41812, !noalias !41817
  %i.hm = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.gy
  %i.hn = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.ha
  %i.ho = and <16 x i1> %i.hm, %i.hn
  %i.hp = bitcast <16 x i1> %i.ho to i16          ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.hq, align 1, !alias.scope !41812, !noalias !41817
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.hr, align 1, !alias.scope !41812, !noalias !41817
  %i.hs = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.gy
  %i.ht = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.ha
  %i.hu = and <16 x i1> %i.hs, %i.ht
  %i.hv = bitcast <16 x i1> %i.hu to i16          ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.hw, align 1, !alias.scope !41812, !noalias !41817
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.hx, align 1, !alias.scope !41812, !noalias !41817
  %i.hy = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.gy
  %i.hz = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.ha
  %i.ia = and <16 x i1> %i.hy, %i.hz
  %i.ib = bitcast <16 x i1> %i.ia to i16          ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.ic, align 1, !alias.scope !41812, !noalias !41817
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.id, align 1, !alias.scope !41812, !noalias !41817
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.gy
  %i.if = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.ha
  %i.ig = and <16 x i1> %i.ie, %i.if
  %i.ih = bitcast <16 x i1> %i.ig to i16          ; 2 uses
  %i.ii = icmp eq i16 %i.hp, 0
  br i1 %i.ii, label %.preheader96.1.i, label %bb.bg

.preheader96.1.i:                                 ; preds = %bb.bg, %.lr.ph.i10
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i10 ], [ %i.jg, %bb.bg ] ; 3 uses
  %i.ij = icmp eq i16 %i.hv, 0
  br i1 %i.ij, label %.preheader96.2.i, label %bb.bc

bb.bc:                                            ; preds = %.preheader96.1.i
  %i.ik = or disjoint i64 %.sroa.06.0103.i, 16
  %i.il = trunc nuw i8 %.sroa.014.2.i to i1
  %i.im = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ik, i16 noundef %i.hv, i1 noundef zeroext %i.il) #43
  %i.in = zext i1 %i.im to i8
  %i.io = or i8 %.sroa.014.2.i, %i.in
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.bc, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.io, %bb.bc ] ; 3 uses
  %i.ip = icmp eq i16 %i.ib, 0
  br i1 %i.ip, label %.preheader96.3.i, label %bb.bd

bb.bd:                                            ; preds = %.preheader96.2.i
  %i.iq = or disjoint i64 %.sroa.06.0103.i, 32
  %i.ir = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.is = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.iq, i16 noundef %i.ib, i1 noundef zeroext %i.ir) #43
  %i.it = zext i1 %i.is to i8
  %i.iu = or i8 %.sroa.014.2.1.i, %i.it
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.bd, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.iu, %bb.bd ] ; 3 uses
  %i.iv = icmp eq i16 %i.ih, 0
  br i1 %i.iv, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.preheader96.3.i
  %i.iw = or disjoint i64 %.sroa.06.0103.i, 48
  %i.ix = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.iy = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.iw, i16 noundef %i.ih, i1 noundef zeroext %i.ix) #43
  %i.iz = zext i1 %i.iy to i8
  %i.ja = or i8 %.sroa.014.2.2.i, %i.iz
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.ja, %bb.be ] ; 2 uses
  %i.jb = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.jc = add i64 %i.jb, %i.hf
  %i.jd = icmp uge i64 %i.jc, %3
  %i.je = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.jd, i1 true, i1 %i.je
  br i1 %or.cond.i, label %.preheader.i8, label %.lr.ph.i10

bb.bg:                                            ; preds = %.lr.ph.i10
  %i.jf = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.hp, i1 noundef zeroext false) #43
  %i.jg = zext i1 %i.jf to i8
  br label %.preheader96.1.i

._crit_edge.i9:                                   ; preds = %bb.bh, %.preheader.i8
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i8 ], [ %.sroa.014.4.i, %bb.bh ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.hj, %.preheader.i8 ], [ %i.ka, %bb.bh ]
  %i.jh = sub nuw i64 %3, %i.gd
  %i.ji = add i64 %i.jh, -16                      ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ji ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.jj, align 1, !alias.scope !41812, !noalias !41818
end_hunk_0
