Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.02?download=true
inline.NumInlined: 1662
inline.NumDeleted: 899
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB1w_9FromPlist5parse0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_:bb.a
  %i.ak = icmp samesign ne i64 %i.aj, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !3185, !noundef !4
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.peel.i.i, label %bb.h

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.peel.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted156.i.i.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1.i.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !3185, !noundef !4
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.peel.i.i ], [ %i.bd, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.peel.i.i ], [ %i.ag, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.peel.i.i ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.loopexit41.split.us.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128
  br i1 %i.bg, label %.lr.ph.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 2048
  br i1 %i.bh, label %.lr.ph.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 65536
  %..i.us.i.peel.i.i = select i1 %i.bi, i64 3, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.us.i.peel.i.i = phi i64 [ 2, %bb.j ], [ %..i.us.i.peel.i.i, %bb.k ], [ 1, %bb.i ]
  %i.bj = add i64 %.sroa.01.0.i.us.i.peel.i.i, %.promoted156.i.i.i ; 16 uses
  store i64 %i.bj, ptr %i.i, align 8, !alias.scope !3186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3187)
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.bj, %.val1.i.i
  br i1 %.not.i.i.us.i.i.i, label %bb.m, label %.split.i.i.us.i.i.i

.split.i.i.us.i.i.i:                              ; preds = %bb.l
  %i.bl = icmp eq i64 %i.bj, %.val1.i.i
  br i1 %i.bl, label %bb.n, label %.split.us160.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !3183, !noalias !3188, !noundef !4
  %i.bo = icmp sgt i8 %i.bn, -65
  br i1 %i.bo, label %bb.n, label %.split.us160.i.i.i

bb.n:                                             ; preds = %bb.m, %.split.i.i.us.i.i.i, %.lr.ph.i.i.i
  %i.bp = icmp samesign eq i64 %i.bj, %.val1.i.i
  br i1 %i.bp, label %.split165.us.i.thread.i.i, label %bb.o

.split165.us.i.thread.i.i:                        ; preds = %bb.n
  store i8 0, ptr %i.m, align 8, !alias.scope !3189
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bj
  %i.br = load i8, ptr %i.bq, align 1, !noalias !3190, !noundef !4 ; 3 uses
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %.loopexit41.split.us.i.i.i, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.i.i: ; preds = %bb.o
  %i.bt = add nuw nsw i64 %i.bj, 1
  %i.bu = icmp samesign ne i64 %i.bt, %.val1.i.i
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp samesign ugt i8 %i.br, -33
  br i1 %i.bv, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.i.i, label %.loopexit41.split.us.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.i.i
  %i.bw = add nuw nsw i64 %i.bj, 2
  %i.bx = icmp samesign ne i64 %i.bw, %.val1.i.i
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = icmp samesign ugt i8 %i.br, -17
  br i1 %i.by, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.i.i, label %.loopexit41.split.us.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.i.i
  %i.bz = add nuw nsw i64 %i.bj, 3
  %i.ca = icmp samesign ne i64 %i.bz, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ca)
  br label %.loopexit41.split.us.i.i.i

.split.us160.i.i.i:                               ; preds = %bb.m, %.split.i.i.us.i.i.i, %bb.d, %.split.i.i.us.i.peel.i.i
  %.lcssa31.i.i = phi i64 [ %.promoted156.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted156.i.i.i, %bb.d ], [ %i.bj, %.split.i.i.us.i.i.i ], [ %i.bj, %bb.m ]
  %.lcssa28.i.i = phi i8 [ %.promoted205.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted205.i.i.i, %bb.d ], [ 1, %.split.i.i.us.i.i.i ], [ 1, %bb.m ]
  %i.cb = xor i8 %.lcssa28.i.i, 1
  store i8 %i.cb, ptr %i.m, align 8, !alias.scope !3189
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %.lcssa31.i.i, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24, !noalias !3188
  unreachable

.split165.us.i.i.i:                               ; preds = %bb.e
  %i.cc = xor i8 %.promoted205.i.i.i, 1
  store i8 %i.cc, ptr %i.m, align 8, !alias.scope !3189
  br i1 %i.n, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.p

.loopexit41.split.us.i.i.i:                       ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.i.i, %bb.o, %bb.h
  %.lcssa33.i.i = phi i64 [ %.promoted156.i.i.i, %bb.h ], [ %i.bj, %bb.o ], [ %i.bj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.i.i.i ], [ %i.bj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.i.i.i ], [ %i.bj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.i.i.i ] ; 2 uses
  store i8 0, ptr %i.m, align 8, !alias.scope !3189
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.p:                                             ; preds = %.split165.us.i.i.i
  store i8 1, ptr %i.j, align 2, !alias.scope !3189
  br label %bb.ak

bb.q:                                             ; preds = %bb.b
  %i.cd = load i64, ptr %i.i, align 8, !alias.scope !3181, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.cd, %.val1.i.i
  br i1 %.not.i.i.i, label %bb.s, label %bb.ak

bb.r:                                             ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !3181, !noundef !4 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !3181, !nonnull !4, !noundef !4 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !3181, !noundef !4 ; 16 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.cm = add nsw i64 %i.ck, -1                   ; 5 uses
  br i1 %i.cg, label %bb.ad, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load i8, ptr %i.cn, align 8, !alias.scope !3181, !noundef !4 ; 2 uses
  %i.cp = sub nuw i64 %.val1.i.i, %i.cd           ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cd ; 2 uses
  %i.cr = icmp samesign ult i64 %i.cp, 16
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef range(i64 0, -9223372036854775808) %i.cp), !noalias !3191 ; 2 uses
  %i.ct = extractvalue { i64, i64 } %i.cs, 0
  %i.cu = extractvalue { i64, i64 } %i.cs, 1
  %i.cv = trunc nuw i64 %i.ct to i1
  br i1 %i.cv, label %.loopexit42.i.i.i, label %.loopexit43.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %bb.u
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.cz, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.04.011.i.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !3192, !noalias !3191, !noundef !4
  %i.cy = icmp eq i8 %i.cx, %i.co
  br i1 %i.cy, label %.loopexit42.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cz = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i = icmp eq i64 %i.cz, %i.cp
  br i1 %exitcond.not.i7.i.i.i, label %.loopexit43.i.i.i, label %.lr.ph.i.i.i.i

.loopexit42.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.t
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.cu, %bb.t ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.da = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.cp
  tail call void @llvm.assume(i1 %i.da)
  %i.db = add i64 %.sroa.5.0.i.i.i.i, %i.cd       ; 2 uses
  %i.dc = add i64 %i.db, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.i, align 8, !alias.scope !3181
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.loopexit43.i.i.i:                                ; preds = %bb.u, %bb.t
  store i64 %.val1.i.i, ptr %i.i, align 8, !alias.scope !3181
  br label %bb.ak

bb.v:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3195)
  %.promoted.i.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !3196 ; 2 uses
  %i.dd = add i64 %.promoted.i.i.i.i, %i.cm       ; 2 uses
  %i.de = icmp ult i64 %i.dd, %.val1.i.i
  br i1 %i.de, label %.lr.ph.i8.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !3196, !noundef !4
  %i.dh = load i64, ptr %i.i, align 8, !alias.scope !3196
  %.fr60.i.i.i.i = freeze i64 %i.dh               ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !3196 ; 2 uses
  %i.dk = sub i64 %i.ck, %i.dj
  %invariant.op = sub i64 1, %.fr60.i.i.i.i
  br label %.lr.ph.split.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.y, %bb.v
  store i64 %.val1.i.i, ptr %i.cl, align 8, !alias.scope !3196
  br label %bb.ak

.lr.ph.split.i.i.i.i:                             ; preds = %bb.y, %.lr.ph.i8.i.i.i
  %i.dl = phi i64 [ %.sink70.i.i.i.i, %bb.y ], [ %i.cf, %.lr.ph.i8.i.i.i ] ; 3 uses
  %i.dm = phi i64 [ %i.dx, %bb.y ], [ %i.dd, %.lr.ph.i8.i.i.i ]
  %i.dn = phi i64 [ %.sink71.i.i.i.i, %bb.y ], [ %.promoted.i.i.i.i, %.lr.ph.i8.i.i.i ] ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dm
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !3194, !noalias !3191, !noundef !4
  %i.dq = and i8 %i.dp, 63
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.dg
  %.not.i9.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i9.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.du = add i64 %i.dn, %i.ck
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.dv = tail call i64 @llvm.umax.i64(i64 %.fr60.i.i.i.i, i64 %i.dl) ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.ck
  br i1 %i.dw, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

bb.y:                                             ; preds = %bb.ac, %bb.ab, %bb.w
  %.sink71.i.i.i.i = phi i64 [ %i.et, %bb.ac ], [ %i.es, %bb.ab ], [ %i.du, %bb.w ] ; 3 uses
  %.sink70.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %i.dk, %bb.ab ], [ 0, %bb.w ] ; 2 uses
  store i64 %.sink71.i.i.i.i, ptr %i.cl, align 8, !alias.scope !3196
  store i64 %.sink70.i.i.i.i, ptr %i.ce, align 8, !alias.scope !3196
  %i.dx = add i64 %.sink71.i.i.i.i, %i.cm         ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %.val1.i.i
  br i1 %i.dy, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

bb.z:                                             ; preds = %.lr.ph
  %i.dz = add nuw nsw i64 %.sroa.04.0.i.i.i.i81, 1 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.ck
  br i1 %i.ea, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

.preheader36.i.i.i.i.preheader:                   ; preds = %bb.z, %bb.x
  %i.eb = icmp ult i64 %i.dl, %.fr60.i.i.i.i
  br i1 %i.eb, label %.lr.ph83, label %.split.us.i10.i.i.i

.lr.ph:                                           ; preds = %bb.x, %bb.z
  %.sroa.04.0.i.i.i.i81 = phi i64 [ %i.dz, %bb.z ], [ %i.dv, %bb.x ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.04.0.i.i.i.i81
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !3195, !noalias !3191, !noundef !4
  %i.ee = add i64 %.sroa.04.0.i.i.i.i81, %i.dn    ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ee
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !3194, !noalias !3191, !noundef !4
  %.not21.i.i.i.i = icmp eq i8 %i.ed, %i.eh
  br i1 %.not21.i.i.i.i, label %bb.z, label %bb.ac

.preheader36.i.i.i.i:                             ; preds = %bb.aa
  %i.ei = icmp ult i64 %i.dl, %i.ek
  br i1 %i.ei, label %.lr.ph83, label %.split.us.i10.i.i.i

.split.us.i10.i.i.i:                              ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %i.ej = add i64 %i.dn, %i.ck                    ; 2 uses
  store i64 %i.ej, ptr %i.cl, align 8, !alias.scope !3196
  store i64 0, ptr %i.ce, align 8, !alias.scope !3196
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph83:                                         ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i82 = phi i64 [ %i.ek, %.preheader36.i.i.i.i ], [ %.fr60.i.i.i.i, %.preheader36.i.i.i.i.preheader ]
  %i.ek = add i64 %.sroa.2.0.i.i.i.i82, -1        ; 6 uses
  %i.el = icmp ult i64 %i.ek, %i.ck
  br i1 %i.el, label %bb.aa, label %.split32.us.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph83
  %i.em = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ek
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !3195, !noalias !3191, !noundef !4
  %i.eo = add i64 %i.ek, %i.dn                    ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !3194, !noalias !3191, !noundef !4
  %.not20.i.i.i.i = icmp eq i8 %i.en, %i.er
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.ab

.split32.us.i.i.i.i:                              ; preds = %.lr.ph83
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef range(i64 0, -9223372036854775808) %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24, !noalias !3197
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.es = add i64 %i.dn, %i.dj
  br label %bb.y

bb.ac:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.dn, %invariant.op
  %i.et = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i81
  br label %bb.y

bb.ad:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3200)
  %.promoted.i11.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !3201 ; 3 uses
  %i.eu = add i64 %.promoted.i11.i.i.i, %i.cm     ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %.val1.i.i
  br i1 %i.ev, label %.lr.ph.i14.i.i.i, label %._crit_edge.i12.i.i.i

.lr.ph.i14.i.i.i:                                 ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !3201, !noundef !4 ; 2 uses
  %i.ey = load i64, ptr %i.i, align 8, !alias.scope !3201
  %.fr214.i.i.i = freeze i64 %i.ey                ; 10 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !3201
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr214.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ck) ; 2 uses
  %i.fb = add i64 %.fr214.i.i.i, -1               ; 2 uses
  %.first_iter.i15.i.i.i = icmp ult i64 %i.fb, %i.ck
  %reass.sub79.i.i = sub i64 1, %.fr214.i.i.i     ; 2 uses
  br i1 %.first_iter.i15.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.preheader, label %.lr.ph.split.us.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %.lr.ph.i14.i.i.i
  %exitcond.not.i16.i.i.i85.not = icmp ult i64 %.fr214.i.i.i, %i.ck
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.preheader:             ; preds = %.lr.ph.i14.i.i.i
  %exitcond.not.i16.i.i.us.i90.not = icmp ult i64 %.fr214.i.i.i, %i.ck
  %.not34.i.us.i.i.us.i93 = icmp eq i64 %.fr214.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i

.lr.ph.split.us.i.i.i.us.i:                       ; preds = %.lr.ph.split.us.i.i.i.us.i.preheader, %bb.ag
  %i.fc = phi i64 [ %i.gb, %bb.ag ], [ %i.eu, %.lr.ph.split.us.i.i.i.us.i.preheader ]
  %i.fd = phi i64 [ %.sink.i17.i.i.us.i, %bb.ag ], [ %.promoted.i11.i.i.i, %.lr.ph.split.us.i.i.i.us.i.preheader ] ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fc
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !3199, !noalias !3191, !noundef !4
  %i.fg = and i8 %i.ff, 63
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fi, %i.ex
  %.not.us.i.i.i.us.i = icmp eq i64 %i.fj, 0
  br i1 %.not.us.i.i.i.us.i, label %bb.af, label %.preheader35.i.i.i.us.i.preheader

.preheader35.i.i.i.us.i.preheader:                ; preds = %.lr.ph.split.us.i.i.i.us.i
  br i1 %exitcond.not.i16.i.i.us.i90.not, label %.lr.ph92, label %.preheader.i18.us.i.i.us.i.preheader

.preheader35.i.i.i.us.i:                          ; preds = %.lr.ph92
  %i.fk = add i64 %.sroa.04.0.us.i.i.i.us.i91, 1  ; 2 uses
  %exitcond.not.i16.i.i.us.i = icmp eq i64 %i.fk, %umax.i.i.i.i
  br i1 %exitcond.not.i16.i.i.us.i, label %.preheader.i18.us.i.i.us.i.preheader, label %.lr.ph92

.preheader.i18.us.i.i.us.i.preheader:             ; preds = %.preheader35.i.i.i.us.i, %.preheader35.i.i.i.us.i.preheader
  br i1 %.not34.i.us.i.i.us.i93, label %.split.us.i20.i.i.i, label %.lr.ph95

.lr.ph92:                                         ; preds = %.preheader35.i.i.i.us.i.preheader, %.preheader35.i.i.i.us.i
  %.sroa.04.0.us.i.i.i.us.i91 = phi i64 [ %i.fk, %.preheader35.i.i.i.us.i ], [ %.fr214.i.i.i, %.preheader35.i.i.i.us.i.preheader ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.04.0.us.i.i.i.us.i91
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !3200, !noalias !3191, !noundef !4
  %i.fn = add i64 %.sroa.04.0.us.i.i.i.us.i91, %i.fd ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %.val1.i.i
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fn
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !3199, !noalias !3191, !noundef !4
  %.not21.us.i.i.i.us.i = icmp eq i8 %i.fm, %i.fq
  br i1 %.not21.us.i.i.i.us.i, label %.preheader35.i.i.i.us.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph92
  %.reass281.i.reass.i.us.i = add i64 %i.fd, %reass.sub79.i.i
  %i.fr = add i64 %.reass281.i.reass.i.us.i, %.sroa.04.0.us.i.i.i.us.i91
  br label %bb.ag

.preheader.i18.us.i.i.us.i:                       ; preds = %.lr.ph95
  %.not34.i.us.i.i.us.i = icmp eq i64 %i.fs, 0
  br i1 %.not34.i.us.i.i.us.i, label %.split.us.i20.i.i.i, label %.lr.ph95

.lr.ph95:                                         ; preds = %.preheader.i18.us.i.i.us.i.preheader, %.preheader.i18.us.i.i.us.i
  %.sroa.2.0.us.i.us.i.i.us.i94 = phi i64 [ %i.fs, %.preheader.i18.us.i.i.us.i ], [ %.fr214.i.i.i, %.preheader.i18.us.i.i.us.i.preheader ]
  %i.fs = add i64 %.sroa.2.0.us.i.us.i.i.us.i94, -1 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !3200, !noalias !3191, !noundef !4
  %i.fv = add i64 %i.fs, %i.fd                    ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %.val1.i.i
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !3199, !noalias !3191, !noundef !4
  %.not20.us.i.us.i.i.us.i = icmp eq i8 %i.fu, %i.fy
  br i1 %.not20.us.i.us.i.i.us.i, label %.preheader.i18.us.i.i.us.i, label %.split.us.i.i.us.i

.split.us.i.i.us.i:                               ; preds = %.lr.ph95
  %i.fz = add i64 %i.fd, %i.fa
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i
  %i.ga = add i64 %i.fd, %i.ck
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.split.us.i.i.us.i, %bb.ae
  %.sink.i17.i.i.us.i = phi i64 [ %i.ga, %bb.af ], [ %i.fr, %bb.ae ], [ %i.fz, %.split.us.i.i.us.i ] ; 3 uses
  store i64 %.sink.i17.i.i.us.i, ptr %i.cl, align 8, !alias.scope !3201
  %i.gb = add i64 %.sink.i17.i.i.us.i, %i.cm      ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %.val1.i.i
  br i1 %i.gc, label %.lr.ph.split.us.i.i.i.us.i, label %._crit_edge.i12.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.aj
  %i.gd = phi i64 [ %i.gu, %bb.aj ], [ %i.eu, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.ge = phi i64 [ %.sink.i17.i.i.i, %bb.aj ], [ %.promoted.i11.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !3199, !noalias !3191, !noundef !4
  %i.gh = and i8 %i.gg, 63
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gj, %i.ex
  %.not.us.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.us.i.i.i.i, label %bb.ai, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i16.i.i.i85.not, label %.lr.ph87, label %.preheader.split.i20.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph87
  %i.gl = add i64 %.sroa.04.0.us.i.i.i.i86, 1     ; 2 uses
  %exitcond.not.i16.i.i.i = icmp eq i64 %i.gl, %umax.i.i.i.i
  br i1 %exitcond.not.i16.i.i.i, label %.preheader.split.i20.i.i.i, label %.lr.ph87

.preheader.split.i20.i.i.i:                       ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.not34.i.i.i.i = icmp eq i64 %.fr214.i.i.i, 0
  br i1 %.not34.i.i.i.i, label %.split.us.i20.i.i.i, label %.split32.us.i21.i.i.i

.lr.ph87:                                         ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i86 = phi i64 [ %i.gl, %.preheader35.i.i.i.i ], [ %.fr214.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.04.0.us.i.i.i.i86
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !3200, !noalias !3191, !noundef !4
  %i.go = add i64 %.sroa.04.0.us.i.i.i.i86, %i.ge ; 2 uses
  %i.gp = icmp ult i64 %i.go, %.val1.i.i
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !3199, !noalias !3191, !noundef !4
  %.not21.us.i.i.i.i = icmp eq i8 %i.gn, %i.gr
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph87
  %.reass281.i.reass.i.i = add i64 %i.ge, %reass.sub79.i.i
  %i.gs = add i64 %.reass281.i.reass.i.i, %.sroa.04.0.us.i.i.i.i86
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gt = add i64 %i.ge, %i.ck
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink.i17.i.i.i = phi i64 [ %i.gt, %bb.ai ], [ %i.gs, %bb.ah ] ; 3 uses
  store i64 %.sink.i17.i.i.i, ptr %i.cl, align 8, !alias.scope !3201
  %i.gu = add i64 %.sink.i17.i.i.i, %i.cm         ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %.val1.i.i
  br i1 %i.gv, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i12.i.i.i

._crit_edge.i12.i.i.i:                            ; preds = %bb.aj, %bb.ag, %bb.ad
  store i64 %.val1.i.i, ptr %i.cl, align 8, !alias.scope !3201
  br label %bb.ak

.split.us.i20.i.i.i:                              ; preds = %.preheader.i18.us.i.i.us.i.preheader, %.preheader.i18.us.i.i.us.i, %.preheader.split.i20.i.i.i
  %i.gw = phi i64 [ %i.ge, %.preheader.split.i20.i.i.i ], [ %i.fd, %.preheader.i18.us.i.i.us.i ], [ %i.fd, %.preheader.i18.us.i.i.us.i.preheader ] ; 2 uses
  %i.gx = add i64 %i.gw, %i.ck                    ; 2 uses
  store i64 %i.gx, ptr %i.cl, align 8, !alias.scope !3201
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.split32.us.i21.i.i.i:                            ; preds = %.preheader.split.i20.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24, !noalias !3202
  unreachable

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %.split.us.i20.i.i.i, %.split.us.i10.i.i.i, %.loopexit42.i.i.i, %.loopexit41.split.us.i.i.i, %.split165.us.i.i.i, %.split165.us.i.thread.i.i
  %.sroa.9.0.i.i = phi i64 [ %.val1.i.i, %.split165.us.i.i.i ], [ %i.ej, %.split.us.i10.i.i.i ], [ %.lcssa33.i.i, %.loopexit41.split.us.i.i.i ], [ %i.dc, %.loopexit42.i.i.i ], [ %i.gx, %.split.us.i20.i.i.i ], [ %.val1.i.i, %.split165.us.i.thread.i.i ]
  %.sroa.4.03.i.i = phi i64 [ %.val1.i.i, %.split165.us.i.i.i ], [ %i.dn, %.split.us.i10.i.i.i ], [ %.lcssa33.i.i, %.loopexit41.split.us.i.i.i ], [ %i.db, %.loopexit42.i.i.i ], [ %i.gw, %.split.us.i20.i.i.i ], [ %.val1.i.i, %.split165.us.i.thread.i.i ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !3179, !noundef !4 ; 2 uses
  %i.ha = sub nuw i64 %.sroa.4.03.i.i, %i.gz
  store i64 %.sroa.9.0.i.i, ptr %i.gy, align 8, !alias.scope !3179
  br label %bb.an

bb.ak:                                            ; preds = %._crit_edge.i12.i.i.i, %._crit_edge.i.i.i.i, %.loopexit43.i.i.i, %bb.q, %bb.p, %.preheader.i.i.i
  store i8 1, ptr %i.c, align 1, !alias.scope !3203
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hc = load i8, ptr %i.hb, align 8, !range !25, !alias.scope !3203, !noundef !4
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %._crit_edge.i.i.i, label %bb.al

._crit_edge.i.i.i:                                ; preds = %bb.ak
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3203
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i, align 8, !alias.scope !3203
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !3203, !noundef !4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !3203, !noundef !4 ; 2 uses
  %.not.i2.i.i = icmp eq i64 %i.hf, %i.hh
  br i1 %.not.i2.i.i, label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i.i
  %i.hi = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.hf, %bb.al ]
  %i.hj = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hh, %bb.al ] ; 2 uses
  %i.hk = sub nuw i64 %i.hi, %i.hj
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.hk, %bb.am ], [ %i.ha, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ]
  %.pn = phi i64 [ %i.hj, %bb.am ], [ %i.gz, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3204
  call void @_RNvXs2_NtNtCsf3Ta7LF998c_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i, i64 noundef %.sroa.4.1.i.i) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !3205)
  %i.hl = load i8, ptr %i.b, align 8, !range !25, !alias.scope !3205, !noalias !3204, !noundef !4
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.ao, label %_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_.exit, !prof !6

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3206
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !range !25, !alias.scope !3205, !noalias !3204, !noundef !4
  store i8 %i.ho, ptr %i.a, align 1, !noalias !3206
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24, !noalias !3205
  unreachable

_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_.exit: ; preds = %bb.an
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hq = load double, ptr %i.hp, align 8, !alias.scope !3205, !noalias !3204, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3204
  br label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread

_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread: ; preds = %bb.al, %bb.a, %_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_.exit
  %.sroa.3.0 = phi double [ %i.hq, %_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_.exit ], [ undef, %bb.a ], [ undef, %bb.al ]
  %.sroa.0.0 = phi i64 [ 1, %_RNCNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB7_9FromPlist5parse0B9_.exit ], [ 0, %bb.a ], [ 0, %bb.al ]
  %i.hr = insertvalue { i64, double } poison, i64 %.sroa.0.0, 0
  %i.hs = insertvalue { i64, double } %i.hr, double %.sroa.3.0, 1
  ret { i64, double } %i.hs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcEINvMCs9NoVXegZYB5_8smol_strNtB1r_7SmolStr3newReEENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !25, !alias.scope !3220, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3220, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !3220, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3221)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3222, !noundef !4 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.h, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !3222 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i.i.i
  %or.cond27.i.i.i = or i1 %.not.i.i.i, %i.i
  br i1 %or.cond27.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !3222, !noundef !4 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.pre.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !3222 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i
  %i.q = phi i64 [ %i.ae, %bb.e ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  %i.r = sub nuw i64 %i.h, %i.q                   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.q ; 2 uses
  %i.t = icmp samesign ult i64 %i.r, 16
  br i1 %i.t, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.h, %i.q
  br i1 %.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.u = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !3223 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %.loopexit.i.i.i, label %.loopexit15.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.04.011.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !3224, !noalias !3223, !noundef !4
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.r
  br i1 %exitcond.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ac = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.r
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i64 %i.q, 1
  %i.ae = add i64 %i.ad, %.sroa.5.0.i.i.i.i       ; 7 uses
  store i64 %i.ae, ptr %i.f, align 8, !alias.scope !3222
  %.not11.i.i.i = icmp ult i64 %i.ae, %i.m
  %.not12.i.i.i = icmp ugt i64 %i.ae, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i:                                ; preds = %bb.c, %.preheader.i.i.i.i, %bb.d
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !3222
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i
  %i.af = icmp ult i64 %i.h, %i.ae
  br i1 %i.af, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i, label %.lr.ph.split.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.ag = sub nuw i64 %i.ae, %i.m                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ag
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.j, i64 %i.m), !noalias !3225
  %i.ai = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ai, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.e

_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.f
  %i.aj = load i64, ptr %1, align 8, !alias.scope !3220, !noundef !4 ; 2 uses
  %i.ak = sub nuw i64 %i.ag, %i.aj
  store i64 %i.ae, ptr %1, align 8, !alias.scope !3220
  br label %select.unfold

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i: ; preds = %bb.e, %.loopexit15.i.i.i, %bb.b
  store i8 1, ptr %i.a, align 1, !alias.scope !3226
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load i8, ptr %i.al, align 8, !range !25, !alias.scope !3226, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !3226 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3226 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.an, i1 true, i1 %.not.i3.i.i
  %i.ao = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.g

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.ak, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.ao, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i ]
  %.pn = phi i64 [ %i.aj, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  tail call void @_RNvMsB_Cs9NoVXegZYB5_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i, i64 noundef %.sroa.4.1.i.i)
  br label %bb.h

bb.g:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCs1qcNTItuk7F_13glyphs_reader.exit.i.i
  store i8 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %select.unfold
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCNCNvNtCs1qcNTItuk7F_13glyphs_reader9glyphdata15parse_glyph_xmls4_00ENtNtNtB9_6traits8iterator8Iterator4nextB1v_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
end_hunk_0
