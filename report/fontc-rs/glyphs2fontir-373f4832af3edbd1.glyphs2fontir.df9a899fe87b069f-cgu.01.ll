Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.01?download=true
inline.NumInlined: 1219
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2943)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us160

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !2940, !noalias !2944, !noundef !5
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us160

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !2945, !noundef !5 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit12.i.i.us

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !2945, !noundef !5
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit14.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !2945, !noundef !5
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit16.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !2945, !noundef !5
  %i.cq = shl nuw nsw i32 %i.ca, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cl, 6
  %i.ct = and i8 %i.cp, 63
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr
  br label %.loopexit41.split.us.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cx = zext nneg i8 %i.bx to i32
  br label %.loopexit41.split.us.loopexit

.loopexit41.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit16.i.i.us, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit14.i.i.us, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit41.split.us

.split.us160:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa322 = phi i64 [ %.promoted156, %.split.i.i.us.peel ], [ %.promoted156, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa319 = phi i8 [ %.promoted205, %.split.i.i.us.peel ], [ %.promoted205, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa319, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !2943
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa322, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #29, !noalias !2944
  unreachable

.split165.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted205, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !2943
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit41.split.us:                             ; preds = %.loopexit41.split.us.loopexit, %bb.g
  %.lcssa324 = phi i64 [ %.promoted156, %bb.g ], [ %i.bg, %.loopexit41.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !2943
  br label %bb.s

default.unreachable260:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split165.us
  store i8 1, ptr %i.c, align 2, !alias.scope !2943
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !5 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !5 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !5 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !2943
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit41.split.us, %.split165.us
  %i.dt = phi i64 [ %.lcssa324, %.loopexit41.split.us ], [ %i.j, %.split165.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir.exit

_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i20, %._crit_edge.i12, %.split.us.i10, %._crit_edge.i, %.loopexit42, %.loopexit43, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit42 ], [ 1, %.split.us.i10 ], [ 0, %bb.q ], [ 1, %.split.us.i20 ], [ 0, %.loopexit43 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i12 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !5 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de                ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16
  br i1 %i.ec, label %.lr.ph.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  %i.eg = trunc nuw i64 %i.ee to i1
  br i1 %i.eg, label %.loopexit42, label %.loopexit43

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !2946, !noundef !5
  %i.ej = icmp eq i8 %i.ei, %i.dz
  br i1 %i.ej, label %.loopexit42, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1      ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea
  br i1 %exitcond.not.i7, label %.loopexit43, label %.lr.ph.i

.loopexit42:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea
  tail call void @llvm.assume(i1 %i.el)
  %i.em = add i64 %.sroa.5.0.i, %i.de             ; 2 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.en, ptr %i.ep, align 8
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir.exit

.loopexit43:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !2948 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !2948, !noundef !5
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !2948 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !2948 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %i.eu
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !2948
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fk, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !2949, !noundef !5
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.et
  %.not.i9 = icmp eq i64 %i.fg, 0
  br i1 %.not.i9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i
  %i.fi = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.ey) ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.dq
  br i1 %i.fj, label %.lr.ph305, label %.preheader36.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gi, %bb.ad ], [ %i.gh, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !2948
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !2948
  %i.fk = add i64 %.sink71.i, %i.ds               ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.dm
  br i1 %i.fl, label %.lr.ph.split.i, label %._crit_edge.i

bb.aa:                                            ; preds = %.lr.ph305
  %i.fm = add nuw nsw i64 %.sroa.04.0.i304, 1     ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.dq
  br i1 %i.fn, label %.lr.ph305, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fo = icmp ult i64 %i.ey, %i.eu
  br i1 %i.fo, label %.lr.ph307, label %.split.us.i10

.lr.ph305:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i304 = phi i64 [ %i.fm, %bb.aa ], [ %i.fi, %bb.y ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i304
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !2950, !noundef !5
  %i.fr = add i64 %.sroa.04.0.i304, %i.fa         ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.dm
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !2949, !noundef !5
  %.not21.i = icmp eq i8 %i.fq, %i.fu
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fv = icmp ult i64 %i.ey, %i.fz
  br i1 %i.fv, label %.lr.ph307, label %.split.us.i10

.split.us.i10:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fw = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fw, ptr %i.dr, align 8, !alias.scope !2948
  store i64 0, ptr %i.dg, align 8, !alias.scope !2948
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fx, align 8, !alias.scope !2951
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fw, ptr %i.fy, align 8, !alias.scope !2951
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir.exit

.lr.ph307:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i306 = phi i64 [ %i.fz, %.preheader36.i ], [ %i.eu, %.preheader36.i.preheader ]
  %i.fz = add i64 %.sroa.2.0.i306, -1             ; 6 uses
  %i.ga = icmp ult i64 %i.fz, %i.dq
  br i1 %i.ga, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph307
  %i.gb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !2950, !noundef !5
  %i.gd = add i64 %i.fz, %i.fa                    ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.dm
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !2949, !noundef !5
  %.not20.i = icmp eq i8 %i.gc, %i.gg
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph307
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29, !noalias !2952
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gh = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph305
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gi = add i64 %.reass.reass, %.sroa.04.0.i304
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2956)
  %.promoted.i11 = load i64, ptr %i.dr, align 8, !alias.scope !2954 ; 2 uses
  %i.gj = add i64 %.promoted.i11, %i.ds           ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.dm
  br i1 %i.gk, label %.lr.ph.i14, label %._crit_edge.i12

.lr.ph.i14:                                       ; preds = %bb.ae
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !2954, !noundef !5
  %i.gn = load i64, ptr %i.df, align 8, !alias.scope !2954
  %.fr214 = freeze i64 %i.gn                      ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !2954
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr214, i64 range(i64 0, -9223372036854775808) %i.dq)
  %i.gq = add i64 %.fr214, -1                     ; 2 uses
  %.first_iter.i15 = icmp ult i64 %i.gq, %i.dq
  %exitcond.not.i16309.not = icmp ult i64 %.fr214, %i.dq
  %invariant.op358 = sub i64 1, %.fr214
  %.not34.i.us312 = icmp eq i64 %.fr214, 0        ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i14
  %i.gr = phi i64 [ %i.hq, %bb.ah ], [ %i.gj, %.lr.ph.i14 ]
  %i.gs = phi i64 [ %.sink.i17, %bb.ah ], [ %.promoted.i11, %.lr.ph.i14 ] ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gr
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !2955, !noundef !5
  %i.gv = and i8 %i.gu, 63
  %i.gw = zext nneg i8 %i.gv to i64
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gm
  %.not.us.i = icmp eq i64 %i.gy, 0
  br i1 %.not.us.i, label %bb.ag, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i16309.not, label %.lr.ph311, label %.preheader.i18.preheader

.preheader35.i:                                   ; preds = %.lr.ph311
  %i.gz = add i64 %.sroa.04.0.us.i310, 1          ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %i.gz, %umax.i
  br i1 %exitcond.not.i16, label %.preheader.i18.preheader, label %.lr.ph311

.preheader.i18.preheader:                         ; preds = %.preheader35.i, %.preheader35.i.preheader
  br i1 %.first_iter.i15, label %.preheader.i18.us.preheader, label %.preheader.i18

.preheader.i18.us.preheader:                      ; preds = %.preheader.i18.preheader
  br i1 %.not34.i.us312, label %.split.us.i20, label %.lr.ph314

.preheader.i18.us:                                ; preds = %.lr.ph314
  %.not34.i.us = icmp eq i64 %i.ha, 0
  br i1 %.not34.i.us, label %.split.us.i20, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us
  %.sroa.2.0.us.i.us313 = phi i64 [ %i.ha, %.preheader.i18.us ], [ %.fr214, %.preheader.i18.us.preheader ]
  %i.ha = add i64 %.sroa.2.0.us.i.us313, -1       ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !2956, !noundef !5
  %i.hd = add i64 %i.ha, %i.gs                    ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.dm
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hd
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !2955, !noundef !5
  %.not20.us.i.us = icmp eq i8 %i.hc, %i.hg
  br i1 %.not20.us.i.us, label %.preheader.i18.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph314
  %i.hh = add i64 %i.gs, %i.gp
  br label %bb.ah

.lr.ph311:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i310 = phi i64 [ %i.gz, %.preheader35.i ], [ %.fr214, %.preheader35.i.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i310
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !2956, !noundef !5
  %i.hk = add i64 %.sroa.04.0.us.i310, %i.gs      ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.dm
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hk
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !2955, !noundef !5
  %.not21.us.i = icmp eq i8 %i.hj, %i.hn
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af

.preheader.i18:                                   ; preds = %.preheader.i18.preheader
  br i1 %.not34.i.us312, label %.split.us.i20, label %.split32.us.i19

.split32.us.i19:                                  ; preds = %.preheader.i18
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gq, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29, !noalias !2957
  unreachable

bb.af:                                            ; preds = %.lr.ph311
  %.reass281.reass = add i64 %i.gs, %invariant.op358
  %i.ho = add i64 %.reass281.reass, %.sroa.04.0.us.i310
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.hp = add i64 %i.gs, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i17 = phi i64 [ %i.hp, %bb.ag ], [ %i.ho, %bb.af ], [ %i.hh, %.split.us ] ; 3 uses
  store i64 %.sink.i17, ptr %i.dr, align 8, !alias.scope !2954
  %i.hq = add i64 %.sink.i17, %i.ds               ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.dm
  br i1 %i.hr, label %.lr.ph.split.us.i, label %._crit_edge.i12

._crit_edge.i12:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !2954
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir.exit

.split.us.i20:                                    ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us, %.preheader.i18
  %i.hs = add i64 %i.gs, %i.dq                    ; 2 uses
  store i64 %i.hs, ptr %i.dr, align 8, !alias.scope !2954
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gs, ptr %i.ht, align 8, !alias.scope !2958
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hs, ptr %i.hu, align 8, !alias.scope !2958
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noalias !2963, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsjceHdiZFn9b_13glyphs2fontir.exit

_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs6CpVowoi7NE_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsjceHdiZFn9b_13glyphs2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @196, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source11FeatureWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1K_6WorkIdNtNtB1M_5error5ErrorE11read_accessB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source11FeatureWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1K_6WorkIdNtNtB1M_5error5ErrorE12write_accessB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !2966
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !2966
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !alias.scope !2966
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.d, align 8
  store i64 3, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEECsjceHdiZFn9b_13glyphs2fontir.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEECsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source11FeatureWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1K_6WorkIdNtNtB1M_5error5ErrorE14also_completesB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source15ColorGlyphsWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1O_6WorkIdNtNtB1Q_5error5ErrorE14also_completesB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1P_6WorkIdNtNtB1R_5error5ErrorE14also_completesB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source16GlobalMetricWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1P_6WorkIdNtNtB1R_5error5ErrorE12write_accessB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !2969
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !2969
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !alias.scope !2969
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  store i64 3, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEECsjceHdiZFn9b_13glyphs2fontir.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEECsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source16GlobalMetricWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1P_6WorkIdNtNtB1R_5error5ErrorE14also_completesB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1R_6WorkIdNtNtB1T_5error5ErrorE11read_accessB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1R_6WorkIdNtNtB1T_5error5ErrorE12write_accessB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2980
  %i.f = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 1505) 64, i64 noundef range(i64 1, 9) 8) #30, !noalias !2980 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #31, !noalias !2980
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 3, ptr %i.f, align 8, !noalias !2980
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 5, ptr %i.h, align 8, !noalias !2980
  store i64 2, ptr %i.e, align 8, !alias.scope !2980
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.i, align 8, !alias.scope !2980
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 2, ptr %i.j, align 8, !alias.scope !2980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !alias.scope !2981
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE8grow_oneCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.d, !noalias !2982

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #28
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@llvm.abs.i64
!2757 = distinct !{!2757, !2756, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1P_6WorkIdNtNtB1R_5error5ErrorENtNtCsf3Ta7LF998c_4core6marker4SendEL_EE8push_mutCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2758 = distinct !{!2758, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtB7_3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir"}
!2759 = distinct !{!2759, !2758, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtB7_3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir: argument 1:h.rot"}
!2760 = !{!2737}
!2761 = !{!2739}
!2762 = !{!2741}
!2763 = !{!2743}
!2764 = !{!2745}
!2765 = !{!2747}
!2766 = !{!2749}
!2767 = !{!2749, !2747, !2745}
!2768 = !{!2751}
!2769 = !{!2753}
!2770 = !{!2753, !2751, !2749, !2747, !2745}
!2771 = !{!2755}
!2772 = !{!2757}
!2773 = !{!2759}
!2774 = distinct !{!2774, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsjceHdiZFn9b_13glyphs2fontir6source11FeatureWorkE3newBI_"}
!2775 = distinct !{!2775, !2774, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsjceHdiZFn9b_13glyphs2fontir6source11FeatureWorkE3newBI_: argument 0"}
!2776 = !{!2775}
!2777 = distinct !{!2777, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir6source15ColorGlyphsWorkEBF_"}
!2778 = distinct !{!2778, !2777, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir6source15ColorGlyphsWorkEBF_: argument 0"}
!2779 = distinct !{!2779, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEEB1d_"}
!2780 = distinct !{!2780, !2779, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEEB1d_: argument 0"}
!2781 = distinct !{!2781, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!2782 = distinct !{!2782, !2781, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!2783 = !{!2782, !2780, !2778}
!2784 = distinct !{!2784, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir6source16ColorPaletteWorkEBF_"}
!2785 = distinct !{!2785, !2784, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir6source16ColorPaletteWorkEBF_: argument 0"}
!2786 = distinct !{!2786, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEEB1d_"}
!2787 = distinct !{!2787, !2786, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEEB1d_: argument 0"}
!2788 = distinct !{!2788, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!2789 = distinct !{!2789, !2788, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!2790 = !{!2789, !2787, !2785}
!2791 = distinct !{!2791, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir6source16GlobalMetricWorkEBF_"}
!2792 = distinct !{!2792, !2791, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir6source16GlobalMetricWorkEBF_: argument 0"}
!2793 = distinct !{!2793, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEEB1d_"}
!2794 = distinct !{!2794, !2793, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEEB1d_: argument 0"}
!2795 = distinct !{!2795, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!2796 = distinct !{!2796, !2795, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!2797 = !{!2796, !2794, !2792}
!2798 = distinct !{!2798, i1 true, !"_RNvXsd_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_14GlyphsIrSourceNtNtCsf3Ta7LF998c_4core5clone5Clone5clone"}
!2799 = distinct !{!2799, !2798, !"_RNvXsd_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_14GlyphsIrSourceNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 1"}
!2800 = distinct !{!2800, !2798, !"_RNvXsd_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_14GlyphsIrSourceNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 0"}
!2801 = distinct !{!2801, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsjceHdiZFn9b_13glyphs2fontir6source18StaticMetadataWorkE3newBI_"}
!2802 = distinct !{!2802, !2801, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsjceHdiZFn9b_13glyphs2fontir6source18StaticMetadataWorkE3newBI_: argument 0"}
!2803 = !{!2799}
!2804 = !{!2800, !2799}
!2805 = !{!2802}
!2806 = distinct !{!2806, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsjceHdiZFn9b_13glyphs2fontir6source19KerningInstanceWorkE3newBI_"}
!2807 = distinct !{!2807, !2806, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsjceHdiZFn9b_13glyphs2fontir6source19KerningInstanceWorkE3newBI_: argument 0"}
!2808 = !{!2807}
!2809 = distinct !{!2809, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir6source20KerningLocationsWorkEBF_"}
!2810 = distinct !{!2810, !2809, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir6source20KerningLocationsWorkEBF_: argument 0"}
!2811 = distinct !{!2811, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEEB1d_"}
!2812 = distinct !{!2812, !2811, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEEB1d_: argument 0"}
!2813 = distinct !{!2813, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!2814 = distinct !{!2814, !2813, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!2815 = !{!2814, !2812, !2810}
!2816 = distinct !{!2816, i1 true, !"_RNCNvXs_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB6_14GlyphsIrSourceNtNtCs3v5ql5U6hxj_6fontir6source6Source3new0B8_"}
!2817 = distinct !{!2817, !2816, !"_RNCNvXs_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB6_14GlyphsIrSourceNtNtCs3v5ql5U6hxj_6fontir6source6Source3new0B8_: argument 1"}
!2818 = distinct !{!2818, !2816, !"_RNCNvXs_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB6_14GlyphsIrSourceNtNtCs3v5ql5U6hxj_6fontir6source6Source3new0B8_: argument 0"}
!2819 = distinct !{!2819, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEE3newB14_"}
!2820 = distinct !{!2820, !2819, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEE3newB14_: argument 0"}
!2821 = distinct !{!2821, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEEB1d_"}
!2822 = distinct !{!2822, !2821, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoEEB1d_: argument 0"}
!2823 = distinct !{!2823, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!2824 = distinct !{!2824, !2823, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsjceHdiZFn9b_13glyphs2fontir4toir8FontInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!2825 = !{!2818, !2817}
!2826 = !{!2818}
!2827 = !{!2820}
!2828 = !{!2824, !2822}
!2829 = distinct !{!2829, i1 true, !"_RNvMs1_NtCsbeZck1VjBmm_8indexmap3mapINtB5_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs3v5ql5U6hxj_6fontir2ir5PaintE24with_capacity_and_hasherCsjceHdiZFn9b_13glyphs2fontir"}
!2830 = distinct !{!2830, !2829, !"_RNvMs1_NtCsbeZck1VjBmm_8indexmap3mapINtB5_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs3v5ql5U6hxj_6fontir2ir5PaintE24with_capacity_and_hasherCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2831 = distinct !{!2831, i1 true, !"_RNvMs_NtCsbeZck1VjBmm_8indexmap5innerINtB4_4CoreNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs3v5ql5U6hxj_6fontir2ir5PaintE13with_capacityCsjceHdiZFn9b_13glyphs2fontir"}
!2832 = distinct !{!2832, !2831, !"_RNvMs_NtCsbeZck1VjBmm_8indexmap5innerINtB4_4CoreNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs3v5ql5U6hxj_6fontir2ir5PaintE13with_capacityCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2833 = distinct !{!2833, i1 true, !"_RNvMsR_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_4Font15default_palette"}
!2834 = distinct !{!2834, !2833, !"_RNvMsR_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_4Font15default_palette: argument 0"}
!2835 = distinct !{!2835, i1 true, !"_RNvMsa_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_15ColorGlyphsWork9get_glyph"}
!2836 = distinct !{!2836, !2835, !"_RNvMsa_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_15ColorGlyphsWork9get_glyph: argument 0"}
!2837 = distinct !{!2837, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECsjceHdiZFn9b_13glyphs2fontir"}
!2838 = distinct !{!2838, !2837, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2839 = distinct !{!2839, i1 true, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!2840 = distinct !{!2840, !2839, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!2841 = distinct !{!2841, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECsjceHdiZFn9b_13glyphs2fontir"}
!2842 = distinct !{!2842, !2841, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2843 = distinct !{!2843, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECsjceHdiZFn9b_13glyphs2fontir"}
!2844 = distinct !{!2844, !2843, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2845 = distinct !{!2845, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECsjceHdiZFn9b_13glyphs2fontir"}
!2846 = distinct !{!2846, !2845, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2847 = distinct !{!2847, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECsjceHdiZFn9b_13glyphs2fontir"}
!2848 = distinct !{!2848, !2847, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2849 = distinct !{!2849, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECsjceHdiZFn9b_13glyphs2fontir"}
!2850 = distinct !{!2850, !2849, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2851 = distinct !{!2851, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!2852 = distinct !{!2852, !2851, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2853 = distinct !{!2853, i1 true, !"_RNvMsa_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_15ColorGlyphsWork9get_glyph"}
!2854 = distinct !{!2854, !2853, !"_RNvMsa_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_15ColorGlyphsWork9get_glyph: argument 0"}
!2855 = distinct !{!2855, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE3newCsjceHdiZFn9b_13glyphs2fontir"}
!2856 = distinct !{!2856, !2855, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE3newCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2857 = distinct !{!2857, i1 true, !"_RNvMsa_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_15ColorGlyphsWork9get_glyph"}
!2858 = distinct !{!2858, !2857, !"_RNvMsa_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_15ColorGlyphsWork9get_glyph: argument 0"}
!2859 = distinct !{!2859, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5PaintEE3newCsjceHdiZFn9b_13glyphs2fontir"}
!2860 = distinct !{!2860, !2859, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5PaintEE3newCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2861 = distinct !{!2861, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE3newCsjceHdiZFn9b_13glyphs2fontir"}
!2862 = distinct !{!2862, !2861, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE3newCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2863 = distinct !{!2863, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir2ir5PaintE8push_mutCsjceHdiZFn9b_13glyphs2fontir"}
!2864 = distinct !{!2864, !2863, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir2ir5PaintE8push_mutCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2865 = distinct !{!2865, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE3newCsjceHdiZFn9b_13glyphs2fontir"}
!2866 = distinct !{!2866, !2865, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphE3newCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2867 = distinct !{!2867, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECsjceHdiZFn9b_13glyphs2fontir"}
!2868 = distinct !{!2868, !2867, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2869 = distinct !{!2869, i1 true, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!2870 = distinct !{!2870, !2869, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!2871 = distinct !{!2871, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECsjceHdiZFn9b_13glyphs2fontir"}
!2872 = distinct !{!2872, !2871, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2873 = distinct !{!2873, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECsjceHdiZFn9b_13glyphs2fontir"}
!2874 = distinct !{!2874, !2873, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2875 = distinct !{!2875, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECsjceHdiZFn9b_13glyphs2fontir"}
!2876 = distinct !{!2876, !2875, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2877 = distinct !{!2877, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECsjceHdiZFn9b_13glyphs2fontir"}
!2878 = distinct !{!2878, !2877, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2879 = distinct !{!2879, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECsjceHdiZFn9b_13glyphs2fontir"}
!2880 = distinct !{!2880, !2879, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2881 = distinct !{!2881, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!2882 = distinct !{!2882, !2881, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2883 = !{!2832, !2830}
!2884 = !{!2834}
!2885 = !{!2836}
!2886 = !{!2838}
!2887 = !{!2840, !2838}
!2888 = !{!2842}
!2889 = !{!2844}
!2890 = !{!2846}
!2891 = !{!2848}
!2892 = !{!2850}
!2893 = !{!2852}
!2894 = !{!2852, !2850, !2848, !2846, !2844, !2842, !2838}
!2895 = !{!2852, !2850, !2848, !2846, !2844, !2842}
!2896 = !{!2854}
!2897 = !{!2856}
!2898 = !{!2858}
!2899 = !{!2860}
!2900 = !{!2862}
!2901 = !{!2864}
!2902 = !{!2866}
!2903 = !{i64 -1, i64 5}
!2904 = !{!2868}
!2905 = !{!2870, !2868}
!2906 = !{!2872}
!2907 = !{!2874}
!2908 = !{!2876}
!2909 = !{!2878}
!2910 = !{!2880}
!2911 = !{!2882}
!2912 = !{!2882, !2880, !2878, !2876, !2874, !2872, !2868}
!2913 = !{!2882, !2880, !2878, !2876, !2874, !2872}
!2914 = distinct !{!2914, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!2915 = distinct !{!2915, !2914, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!2916 = distinct !{!2916, i1 true, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!2917 = distinct !{!2917, !2916, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!2918 = distinct !{!2918, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!2919 = distinct !{!2919, !2918, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!2920 = distinct !{!2920, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsjceHdiZFn9b_13glyphs2fontir"}
!2921 = distinct !{!2921, !2920, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2922 = distinct !{!2922, !2918, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!2923 = distinct !{!2923, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!2924 = distinct !{!2924, !2923, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!2925 = distinct !{!2925, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir"}
!2926 = distinct !{!2926, !2925, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2927 = distinct !{!2927, !2925, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!2928 = distinct !{!2928, !2925, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!2929 = distinct !{!2929, !2925, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir: argument 3"}
!2930 = distinct !{!2930, i1 true, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!2931 = distinct !{!2931, !2930, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!2932 = distinct !{!2932, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir"}
!2933 = distinct !{!2933, !2932, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2934 = distinct !{!2934, !2932, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!2935 = distinct !{!2935, !2932, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!2936 = distinct !{!2936, !2932, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjceHdiZFn9b_13glyphs2fontir: argument 3"}
!2937 = distinct !{!2937, i1 true, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!2938 = distinct !{!2938, !2937, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!2939 = !{!2915}
!2940 = !{!2917}
!2941 = !{!2919, !2915}
!2942 = !{!2921, !2919, !2915}
!2943 = !{!2922}
!2944 = !{!2919, !2922}
!2945 = !{!2921, !2919, !2922}
!2946 = !{!2924}
!2947 = !{!2926}
!2948 = !{!2927}
!2949 = !{!2928}
!2950 = !{!2929}
!2951 = !{!2931, !2926}
!2952 = !{!2926, !2927, !2928, !2929}
!2953 = !{!2933}
!2954 = !{!2934}
!2955 = !{!2935}
!2956 = !{!2936}
!2957 = !{!2933, !2934, !2935, !2936}
!2958 = !{!2938, !2933}
!2959 = distinct !{!2959, i1 true, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsjceHdiZFn9b_13glyphs2fontir"}
!2960 = distinct !{!2960, !2959, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2961 = distinct !{!2961, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsjceHdiZFn9b_13glyphs2fontir"}
!2962 = distinct !{!2962, !2961, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2963 = !{!2962, !2960}
!2964 = distinct !{!2964, i1 true, !"_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source11FeatureWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1K_6WorkIdNtNtB1M_5error5ErrorE14also_completesB6_"}
!2965 = distinct !{!2965, !2964, !"_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source11FeatureWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1K_6WorkIdNtNtB1M_5error5ErrorE14also_completesB6_: argument 0"}
!2966 = !{!2965}
!2967 = distinct !{!2967, i1 true, !"_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source16GlobalMetricWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1P_6WorkIdNtNtB1R_5error5ErrorE14also_completesB6_"}
!2968 = distinct !{!2968, !2967, !"_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source16GlobalMetricWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1P_6WorkIdNtNtB1R_5error5ErrorE14also_completesB6_: argument 0"}
!2969 = !{!2968}
!2970 = distinct !{!2970, i1 true, !"_RNvXs1_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1X_6WorkIdNtNtB1Z_5error5ErrorE14also_completes"}
!2971 = distinct !{!2971, !2970, !"_RNvXs1_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1X_6WorkIdNtNtB1Z_5error5ErrorE14also_completes: argument 0"}
!2972 = distinct !{!2972, i1 true, !"_RNvXs1_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1X_6WorkIdNtNtB1Z_5error5ErrorE2id"}
!2973 = distinct !{!2973, !2972, !"_RNvXs1_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1X_6WorkIdNtNtB1Z_5error5ErrorE2id: argument 0"}
!2974 = distinct !{!2974, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE8push_mutCsjceHdiZFn9b_13glyphs2fontir"}
!2975 = distinct !{!2975, !2974, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE8push_mutCsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!2976 = distinct !{!2976, !2974, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE8push_mutCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!2977 = distinct !{!2977, i1 true, !"_RINvXs7_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB6_7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2U_8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB20_ENCNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source18StaticMetadataWorkINtB17_4WorkNtB22_7ContextB20_NtNtB24_5error5ErrorE12write_access0EEB5w_"}
!2978 = distinct !{!2978, !2977, !"_RINvXs7_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB6_7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2U_8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB20_ENCNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source18StaticMetadataWorkINtB17_4WorkNtB22_7ContextB20_NtNtB24_5error5ErrorE12write_access0EEB5w_: argument 1"}
!2979 = distinct !{!2979, !2977, !"_RINvXs7_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB6_7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2U_8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB20_ENCNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source18StaticMetadataWorkINtB17_4WorkNtB22_7ContextB20_NtNtB24_5error5ErrorE12write_access0EEB5w_: argument 0"}
!2980 = !{!2971}
!2981 = !{!2973}
!2982 = !{!2975}
!2983 = !{!2976}
!2984 = !{!2979, !2978}
!2985 = !{!2979}
!2986 = distinct !{!2986, i1 true, !"_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1S_6WorkIdNtNtB1U_5error5ErrorE14also_completesB6_"}
!2987 = distinct !{!2987, !2986, !"_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1S_6WorkIdNtNtB1U_5error5ErrorE14also_completesB6_: argument 0"}
!2988 = distinct !{!2988, i1 true, !"_RNvXs6_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1Y_6WorkIdNtNtB20_5error5ErrorE2id"}
!2989 = distinct !{!2989, !2988, !"_RNvXs6_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB5_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1Y_6WorkIdNtNtB20_5error5ErrorE2id: argument 0"}
!2990 = !{!2987}
!2991 = !{!2989}
!2992 = distinct !{!2992, i1 true, !"_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source20KerningLocationsWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1T_6WorkIdNtNtB1V_5error5ErrorE14also_completesB6_"}
!2993 = distinct !{!2993, !2992, !"_RNvYNtNtCsjceHdiZFn9b_13glyphs2fontir6source20KerningLocationsWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1T_6WorkIdNtNtB1V_5error5ErrorE14also_completesB6_: argument 0"}
!2994 = !{!2993}
end_hunk_1
