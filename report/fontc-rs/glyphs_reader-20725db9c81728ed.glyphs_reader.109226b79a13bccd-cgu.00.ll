Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.00?download=true
inline.NumInlined: 2098
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4539)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us160

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !4536, !noalias !4540, !noundef !6
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us160

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !4541, !noundef !6 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !4541, !noundef !6
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !4541, !noundef !6
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !4541, !noundef !6
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

.loopexit41.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit41.split.us

.split.us160:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa322 = phi i64 [ %.promoted156, %.split.i.i.us.peel ], [ %.promoted156, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa319 = phi i8 [ %.promoted205, %.split.i.i.us.peel ], [ %.promoted205, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa319, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !4539
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa322, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @526) #37, !noalias !4540
  unreachable

.split165.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted205, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !4539
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit41.split.us:                             ; preds = %.loopexit41.split.us.loopexit, %bb.g
  %.lcssa324 = phi i64 [ %.promoted156, %bb.g ], [ %i.bg, %.loopexit41.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !4539
  br label %bb.s

default.unreachable260:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split165.us
  store i8 1, ptr %i.c, align 2, !alias.scope !4539
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !6 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !6 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !6 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !6 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !6 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !4539
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit41.split.us, %.split165.us
  %i.dt = phi i64 [ %.lcssa324, %.loopexit41.split.us ], [ %i.j, %.split165.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit

_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i20, %._crit_edge.i12, %.split.us.i10, %._crit_edge.i, %.loopexit42, %.loopexit43, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit42 ], [ 1, %.split.us.i10 ], [ 0, %bb.q ], [ 1, %.split.us.i20 ], [ 0, %.loopexit43 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i12 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !6, !noundef !6
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !6 ; 2 uses
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
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !4542, !noundef !6
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
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit

.loopexit43:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4546)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !4544 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !4544, !noundef !6
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !4544
  %.fr60.i = freeze i64 %i.eu                     ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !4544 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %.fr60.i
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !4544
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fk, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !4545, !noundef !6
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
  %i.fi = tail call i64 @llvm.umax.i64(i64 %.fr60.i, i64 %i.ey) ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.dq
  br i1 %i.fj, label %.lr.ph305, label %.preheader36.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gi, %bb.ad ], [ %i.gh, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !4544
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !4544
  %i.fk = add i64 %.sink71.i, %i.ds               ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.dm
  br i1 %i.fl, label %.lr.ph.split.i, label %._crit_edge.i

bb.aa:                                            ; preds = %.lr.ph305
  %i.fm = add nuw nsw i64 %.sroa.04.0.i304, 1     ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.dq
  br i1 %i.fn, label %.lr.ph305, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fo = icmp ult i64 %i.ey, %.fr60.i
  br i1 %i.fo, label %.lr.ph307, label %.split.us.i10

.lr.ph305:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i304 = phi i64 [ %i.fm, %bb.aa ], [ %i.fi, %bb.y ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i304
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !4546, !noundef !6
  %i.fr = add i64 %.sroa.04.0.i304, %i.fa         ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.dm
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !4545, !noundef !6
  %.not21.i = icmp eq i8 %i.fq, %i.fu
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fv = icmp ult i64 %i.ey, %i.fz
  br i1 %i.fv, label %.lr.ph307, label %.split.us.i10

.split.us.i10:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fw = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fw, ptr %i.dr, align 8, !alias.scope !4544
  store i64 0, ptr %i.dg, align 8, !alias.scope !4544
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fx, align 8, !alias.scope !4547
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fw, ptr %i.fy, align 8, !alias.scope !4547
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit

.lr.ph307:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i306 = phi i64 [ %i.fz, %.preheader36.i ], [ %.fr60.i, %.preheader36.i.preheader ]
  %i.fz = add i64 %.sroa.2.0.i306, -1             ; 6 uses
  %i.ga = icmp ult i64 %i.fz, %i.dq
  br i1 %i.ga, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph307
  %i.gb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !4546, !noundef !6
  %i.gd = add i64 %i.fz, %i.fa                    ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.dm
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !4545, !noundef !6
  %.not20.i = icmp eq i8 %i.gc, %i.gg
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph307
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #37, !noalias !4548
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gh = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph305
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gi = add i64 %.reass.reass, %.sroa.04.0.i304
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4552)
  %.promoted.i11 = load i64, ptr %i.dr, align 8, !alias.scope !4550 ; 2 uses
  %i.gj = add i64 %.promoted.i11, %i.ds           ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.dm
  br i1 %i.gk, label %.lr.ph.i14, label %._crit_edge.i12

.lr.ph.i14:                                       ; preds = %bb.ae
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !4550, !noundef !6
  %i.gn = load i64, ptr %i.df, align 8, !alias.scope !4550
  %.fr214 = freeze i64 %i.gn                      ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !4550
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
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !4551, !noundef !6
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
  br i1 %.first_iter.i15, label %.preheader.i18.us.preheader, label %.preheader.split.i20

.preheader.i18.us.preheader:                      ; preds = %.preheader.i18.preheader
  br i1 %.not34.i.us312, label %.split.us.i20, label %.lr.ph314

.preheader.i18.us:                                ; preds = %.lr.ph314
  %.not34.i.us = icmp eq i64 %i.ha, 0
  br i1 %.not34.i.us, label %.split.us.i20, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us
  %.sroa.2.0.us.i.us313 = phi i64 [ %i.ha, %.preheader.i18.us ], [ %.fr214, %.preheader.i18.us.preheader ]
  %i.ha = add i64 %.sroa.2.0.us.i.us313, -1       ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !4552, !noundef !6
  %i.hd = add i64 %i.ha, %i.gs                    ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.dm
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hd
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !4551, !noundef !6
  %.not20.us.i.us = icmp eq i8 %i.hc, %i.hg
  br i1 %.not20.us.i.us, label %.preheader.i18.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph314
  %i.hh = add i64 %i.gs, %i.gp
  br label %bb.ah

.preheader.split.i20:                             ; preds = %.preheader.i18.preheader
  br i1 %.not34.i.us312, label %.split.us.i20, label %.split32.us.i21

.lr.ph311:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i310 = phi i64 [ %i.gz, %.preheader35.i ], [ %.fr214, %.preheader35.i.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i310
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !4552, !noundef !6
  %i.hk = add i64 %.sroa.04.0.us.i310, %i.gs      ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.dm
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hk
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !4551, !noundef !6
  %.not21.us.i = icmp eq i8 %i.hj, %i.hn
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph311
  %.reass281.reass = add i64 %i.gs, %invariant.op358
  %i.ho = add i64 %.reass281.reass, %.sroa.04.0.us.i310
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.hp = add i64 %i.gs, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i17 = phi i64 [ %i.hp, %bb.ag ], [ %i.ho, %bb.af ], [ %i.hh, %.split.us ] ; 3 uses
  store i64 %.sink.i17, ptr %i.dr, align 8, !alias.scope !4550
  %i.hq = add i64 %.sink.i17, %i.ds               ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.dm
  br i1 %i.hr, label %.lr.ph.split.us.i, label %._crit_edge.i12

._crit_edge.i12:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !4550
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit

.split.us.i20:                                    ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us, %.preheader.split.i20
  %i.hs = add i64 %i.gs, %i.dq                    ; 2 uses
  store i64 %i.hs, ptr %i.dr, align 8, !alias.scope !4550
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gs, ptr %i.ht, align 8, !alias.scope !4553
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hs, ptr %i.hu, align 8, !alias.scope !4553
  br label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit

.split32.us.i21:                                  ; preds = %.preheader.split.i20
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gq, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #37, !noalias !4554
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtNtCs8hFumjqO1Bi_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs8hFumjqO1Bi_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noalias !4559, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNtNtNtCs8hFumjqO1Bi_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs8hFumjqO1Bi_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs1qcNTItuk7F_13glyphs_reader(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0)
  br label %_RNCNKNvNtNtNtCs8hFumjqO1Bi_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs1qcNTItuk7F_13glyphs_reader.exit

_RNCNKNvNtNtNtCs8hFumjqO1Bi_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noalias !4564, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1qcNTItuk7F_13glyphs_reader(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1qcNTItuk7F_13glyphs_reader.exit

_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtCs1qcNTItuk7F_13glyphs_reader4font15LOGGED_WARNINGS0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 5), (8, 56)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4567)
  %i.a = tail call { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @42), !noalias !4567 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i32 0, ptr %0, align 8, !alias.scope !4567
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.d, align 4, !alias.scope !4567
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @28, i64 32, i1 false)
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.b, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !4567
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.c, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !4567
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs1qcNTItuk7F_13glyphs_reader4font11RawInstanceNtB4_19GlyphsV2OrderedAxes18value_for_nth_axisB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.c, align 8
  switch i64 %2, label %.split [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @527, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 7, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val28 = load i64, ptr %i.d, align 8, !range !7, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val30 = load i64, ptr %i.e, align 8, !range !7, !noundef !6
  %spec.select22 = or i64 %.val30, %.val28
  %i.f = trunc nuw i64 %spec.select22 to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val32 = load i64, ptr %i.g, align 8, !range !7, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val34 = load i64, ptr %i.h, align 8, !range !7, !noundef !6
  %spec.select24 = or i64 %.val34, %.val32
  %i.i = trunc nuw i64 %spec.select24 to i1
  br i1 %i.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val36 = load i64, ptr %i.j, align 8, !range !7, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val38 = load i64, ptr %i.k, align 8, !range !7, !noundef !6
  %spec.select26 = or i64 %.val38, %.val36
  %i.l = trunc nuw i64 %spec.select26 to i1
  br i1 %i.l, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.m = trunc nuw i64 %.val28 to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val29 = load double, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val31 = load double, ptr %i.o, align 8
  %.sroa.3.0 = select i1 %i.m, double %.val29, double %.val31
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.h, %bb.g, %bb.e
  %.sroa.0.0 = phi double [ %.sroa.3.0, %bb.e ], [ 1.000000e+02, %bb.c ], [ %.sroa.34.0, %bb.g ], [ 1.000000e+02, %bb.b ], [ %.sroa.37.0, %bb.h ], [ 0.000000e+00, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.0.0, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.q = trunc nuw i64 %.val32 to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val33 = load double, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val35 = load double, ptr %i.s, align 8
  %.sroa.34.0 = select i1 %i.q, double %.val33, double %.val35
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %i.t = trunc nuw i64 %.val36 to i1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val37 = load double, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val39 = load double, ptr %i.v, align 8
  %.sroa.37.0 = select i1 %i.t, double %.val37, double %.val39
  br label %bb.f

bb.i:                                             ; preds = %.split, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterNtB4_19GlyphsV2OrderedAxes18value_for_nth_axisB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(544) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.c, align 8
  switch i64 %2, label %.split [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @527, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 7, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %.val25 = load i64, ptr %1, align 8, !range !7, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val27 = load i64, ptr %i.d, align 8, !range !7, !noundef !6
  %spec.select21 = or i64 %.val27, %.val25
  %i.e = trunc nuw i64 %spec.select21 to i1
  br i1 %i.e, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val29 = load i64, ptr %i.f, align 8, !range !7, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val31 = load i64, ptr %i.g, align 8, !range !7, !noundef !6
  %spec.select23 = or i64 %.val31, %.val29
  %i.h = trunc nuw i64 %spec.select23 to i1
  br i1 %i.h, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i8
!4353 = distinct !{!4353, !4348, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util4iterNtB3_8Searcher7advanceNCNvXs9_NtNtB7_4meta5regexNtB1f_15CapturesMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0ECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!4354 = distinct !{!4354, !4348, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util4iterNtB3_8Searcher7advanceNCNvXs9_NtNtB7_4meta5regexNtB1f_15CapturesMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0ECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4355 = distinct !{!4355, i1 true, !"_RNCNvXs9_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB7_15CapturesMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0Cs1qcNTItuk7F_13glyphs_reader"}
!4356 = distinct !{!4356, !4355, !"_RNCNvXs9_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB7_15CapturesMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0Cs1qcNTItuk7F_13glyphs_reader: argument 2"}
!4357 = distinct !{!4357, !4350, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util4iterNtB3_8Searcher11try_advanceNCNvXs9_NtNtB7_4meta5regexNtB1k_15CapturesMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0ECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!4358 = distinct !{!4358, !4350, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util4iterNtB3_8Searcher11try_advanceNCNvXs9_NtNtB7_4meta5regexNtB1k_15CapturesMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0ECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4359 = distinct !{!4359, !4355, !"_RNCNvXs9_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB7_15CapturesMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0Cs1qcNTItuk7F_13glyphs_reader: argument 1"}
!4360 = distinct !{!4360, !4355, !"_RNCNvXs9_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB7_15CapturesMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4361 = distinct !{!4361, i1 true, !"_RNvMs1_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_5Regex17search_slots_with"}
!4362 = distinct !{!4362, !4361, !"_RNvMs1_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_5Regex17search_slots_with: argument 1"}
!4363 = distinct !{!4363, !4361, !"_RNvMs1_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_5Regex17search_slots_with: argument 2"}
!4364 = distinct !{!4364, !4361, !"_RNvMs1_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_5Regex17search_slots_with: argument 0"}
!4365 = distinct !{!4365, i1 true, !"_RNvMs4_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible"}
!4366 = distinct !{!4366, !4365, !"_RNvMs4_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible: argument 1"}
!4367 = distinct !{!4367, !4365, !"_RNvMs4_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible: argument 0"}
!4368 = distinct !{null, null, null, null, null, null}
!4369 = distinct !{!4369, i1 true, !"_RNvMNtNtCs8hFumjqO1Bi_14regex_automata4util8capturesNtB2_8Captures9get_match"}
!4370 = distinct !{!4370, !4369, !"_RNvMNtNtCs8hFumjqO1Bi_14regex_automata4util8capturesNtB2_8Captures9get_match: argument 1"}
!4371 = distinct !{!4371, i1 true, !"_RNvMNtNtCs8hFumjqO1Bi_14regex_automata4util8capturesNtB2_8Captures9get_group"}
!4372 = distinct !{!4372, !4371, !"_RNvMNtNtCs8hFumjqO1Bi_14regex_automata4util8capturesNtB2_8Captures9get_group: argument 1"}
!4373 = distinct !{!4373, !4369, !"_RNvMNtNtCs8hFumjqO1Bi_14regex_automata4util8capturesNtB2_8Captures9get_match: argument 0"}
!4374 = distinct !{!4374, !4371, !"_RNvMNtNtCs8hFumjqO1Bi_14regex_automata4util8capturesNtB2_8Captures9get_group: argument 0"}
!4375 = distinct !{!4375, i1 true, !"_RINvMsb_NtNtCs8hFumjqO1Bi_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanECs1qcNTItuk7F_13glyphs_reader"}
!4376 = distinct !{!4376, !4375, !"_RINvMsb_NtNtCs8hFumjqO1Bi_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4377 = distinct !{!4377, i1 true, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECs1qcNTItuk7F_13glyphs_reader"}
!4378 = distinct !{!4378, !4377, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4379 = distinct !{!4379, i1 true, !"_RNvXsf_NtNtCs8hFumjqO1Bi_14regex_automata4util8capturesNtB5_8CapturesNtNtCsf3Ta7LF998c_4core5clone5Clone5clone"}
!4380 = distinct !{!4380, !4379, !"_RNvXsf_NtNtCs8hFumjqO1Bi_14regex_automata4util8capturesNtB5_8CapturesNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 1"}
!4381 = distinct !{!4381, !4379, !"_RNvXsf_NtNtCs8hFumjqO1Bi_14regex_automata4util8capturesNtB5_8CapturesNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 0"}
!4382 = distinct !{!4382, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8hFumjqO1Bi_14regex_automata4util8captures9GroupInfoECs1qcNTItuk7F_13glyphs_reader"}
!4383 = distinct !{!4383, !4382, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8hFumjqO1Bi_14regex_automata4util8captures9GroupInfoECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4384 = distinct !{!4384, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs8hFumjqO1Bi_14regex_automata4util8captures14GroupInfoInnerEECs1qcNTItuk7F_13glyphs_reader"}
!4385 = distinct !{!4385, !4384, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs8hFumjqO1Bi_14regex_automata4util8captures14GroupInfoInnerEECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4386 = distinct !{!4386, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs8hFumjqO1Bi_14regex_automata4util8captures14GroupInfoInnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader"}
!4387 = distinct !{!4387, !4386, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs8hFumjqO1Bi_14regex_automata4util8captures14GroupInfoInnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4388 = !{!4344}
!4389 = !{!4345, !4344}
!4390 = !{!4345}
!4391 = !{!4347}
!4392 = !{!4349}
!4393 = !{!4351}
!4394 = !{!4354, !4349, !4353, !4352, !4347, !4345, !4344}
!4395 = !{!4356}
!4396 = !{!4347, !4344}
!4397 = !{!4360, !4359, !4356, !4358, !4351, !4357, !4354, !4349, !4353}
!4398 = !{!4362}
!4399 = !{!4364, !4362, !4363, !4360, !4359, !4356, !4358, !4351, !4357, !4354, !4349, !4353, !4352, !4345}
!4400 = !{!4366}
!4401 = !{!4366, !4362, !4356, !4351, !4349, !4347, !4344}
!4402 = !{!4367, !4366, !4364, !4362, !4363, !4360, !4359, !4356, !4358, !4351, !4357, !4354, !4349, !4353, !4352, !4345}
!4403 = !{!4364, !4362, !4363, !4360, !4359, !4356, !4358, !4351, !4357, !4354, !4349, !4353, !4352, !4347, !4345}
!4404 = !{!4360, !4359, !4358, !4357, !4354, !4353, !4352, !4345}
!4405 = !{!4360, !4359, !4358, !4357, !4354, !4353}
!4406 = !{!4370}
!4407 = !{!4372}
!4408 = !{!4372, !4370, !4347, !4344}
!4409 = !{!4374, !4372, !4373, !4370, !4360, !4359, !4358, !4357, !4354, !4353, !4352, !4345}
!4410 = !{!4376, !4373, !4370, !4360, !4359, !4358, !4357, !4354, !4353, !4352, !4345}
!4411 = !{!4358, !4351, !4357, !4354, !4349, !4353, !4352, !4347, !4345, !4344}
!4412 = !{!4378}
!4413 = !{!4378, !4358, !4351, !4357, !4354, !4349, !4353, !4352, !4347, !4345, !4344}
!4414 = !{!4378, !4358, !4357, !4354, !4353, !4352, !4345}
!4415 = !{!4378, !4351, !4349, !4347, !4344}
!4416 = !{!4351, !4349, !4347, !4344}
!4417 = !{!4358, !4351, !4354, !4349, !4352, !4347, !4345, !4344}
!4418 = !{!4358, !4357, !4354, !4353, !4352, !4345}
!4419 = !{!4354, !4353, !4352, !4345}
!4420 = !{!4380}
!4421 = !{!4381, !4380, !4352, !4347, !4345, !4344}
!4422 = !{!4380, !4347, !4344}
!4423 = !{!4381, !4380, !4352, !4345}
!4424 = !{!4381, !4352, !4345}
!4425 = !{!4387, !4385, !4383, !4381, !4352, !4345}
!4426 = !{!4347, !4345, !4344}
!4427 = distinct !{!4427, i1 true, !"_RNvXsf_NtNtCskyJoVAqa4hV_5regex5regex6stringNtB5_7MatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next"}
!4428 = distinct !{!4428, !4427, !"_RNvXsf_NtNtCskyJoVAqa4hV_5regex5regex6stringNtB5_7MatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next: argument 1"}
!4429 = distinct !{!4429, i1 true, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util4iterNtB3_8Searcher7advanceNCNvXs6_NtNtB7_4meta5regexNtB1f_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0ECs1qcNTItuk7F_13glyphs_reader"}
!4430 = distinct !{!4430, !4429, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util4iterNtB3_8Searcher7advanceNCNvXs6_NtNtB7_4meta5regexNtB1f_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0ECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!4431 = distinct !{!4431, i1 true, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util4iterNtB3_8Searcher11try_advanceNCNvXs6_NtNtB7_4meta5regexNtB1k_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0ECs1qcNTItuk7F_13glyphs_reader"}
!4432 = distinct !{!4432, !4431, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util4iterNtB3_8Searcher11try_advanceNCNvXs6_NtNtB7_4meta5regexNtB1k_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0ECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!4433 = distinct !{!4433, !4427, !"_RNvXsf_NtNtCskyJoVAqa4hV_5regex5regex6stringNtB5_7MatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next: argument 0"}
!4434 = distinct !{!4434, !4429, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util4iterNtB3_8Searcher7advanceNCNvXs6_NtNtB7_4meta5regexNtB1f_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0ECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4435 = distinct !{!4435, i1 true, !"_RNCNvXs6_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0Cs1qcNTItuk7F_13glyphs_reader"}
!4436 = distinct !{!4436, !4435, !"_RNCNvXs6_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0Cs1qcNTItuk7F_13glyphs_reader: argument 1"}
!4437 = distinct !{!4437, !4431, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util4iterNtB3_8Searcher11try_advanceNCNvXs6_NtNtB7_4meta5regexNtB1k_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0ECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4438 = distinct !{!4438, !4435, !"_RNCNvXs6_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4439 = distinct !{!4439, i1 true, !"_RNvMs1_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_5Regex11search_with"}
!4440 = distinct !{!4440, !4439, !"_RNvMs1_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_5Regex11search_with: argument 2"}
!4441 = distinct !{!4441, !4439, !"_RNvMs1_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_5Regex11search_with: argument 1"}
!4442 = distinct !{!4442, !4439, !"_RNvMs1_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_5Regex11search_with: argument 0"}
!4443 = distinct !{!4443, i1 true, !"_RNvMs4_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible"}
!4444 = distinct !{!4444, !4443, !"_RNvMs4_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible: argument 1"}
!4445 = distinct !{!4445, !4443, !"_RNvMs4_NtNtCs8hFumjqO1Bi_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible: argument 0"}
!4446 = distinct !{null, null, null, null, null}
!4447 = distinct !{!4447, i1 true, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECs1qcNTItuk7F_13glyphs_reader"}
!4448 = distinct !{!4448, !4447, !"_RINvMNtNtCs8hFumjqO1Bi_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4449 = !{!4428}
!4450 = !{!4430}
!4451 = !{!4432}
!4452 = !{!4434, !4430, !4433, !4428}
!4453 = !{!4436}
!4454 = !{!4438, !4436, !4437, !4432, !4434, !4430}
!4455 = !{!4438, !4436, !4437, !4432, !4434, !4430, !4433, !4428}
!4456 = !{!4440}
!4457 = !{!4442, !4441, !4440, !4438, !4436, !4437, !4432, !4434, !4430, !4433, !4428}
!4458 = !{!4444}
!4459 = !{!4444, !4440, !4436, !4432, !4430, !4428}
!4460 = !{!4445, !4444, !4442, !4441, !4440, !4438, !4436, !4437, !4432, !4434, !4430, !4433, !4428}
!4461 = !{!4437, !4434, !4433}
!4462 = !{!4437, !4432, !4434, !4430, !4433, !4428}
!4463 = !{!4448}
!4464 = !{!4448, !4437, !4432, !4434, !4430, !4433, !4428}
!4465 = !{!4448, !4437, !4434, !4433}
!4466 = !{!4432, !4430, !4428}
!4467 = !{!4448, !4432, !4430, !4428}
!4468 = !{!4434, !4433}
!4469 = distinct !{!4469, i1 true, !"_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6as_str"}
!4470 = distinct !{!4470, !4469, !"_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6as_str: argument 0"}
!4471 = !{!4470}
!4472 = distinct !{!4472, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core3stre10split_oncecECs1qcNTItuk7F_13glyphs_reader"}
!4473 = distinct !{!4473, !4472, !"_RINvMNtCsf3Ta7LF998c_4core3stre10split_oncecECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4474 = distinct !{!4474, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!4475 = distinct !{!4475, !4474, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!4476 = distinct !{!4476, !4474, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!4477 = distinct !{!4477, !4472, !"_RINvMNtCsf3Ta7LF998c_4core3stre10split_oncecECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!4478 = distinct !{!4478, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!4479 = distinct !{!4479, !4478, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!4480 = !{!4476, !4475, !4473}
!4481 = !{!4479, !4477}
!4482 = !{!4476, !4475}
!4483 = !{!4477}
!4484 = distinct !{!4484, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains"}
!4485 = distinct !{!4485, !4484, !"_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains: argument 0"}
!4486 = distinct !{!4486, !4484, !"_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains: argument 1"}
!4487 = distinct !{!4487, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs1qcNTItuk7F_13glyphs_reader"}
!4488 = distinct !{!4488, !4487, !"_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!4489 = distinct !{!4489, !4487, !"_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4490 = distinct !{!4490, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader"}
!4491 = distinct !{!4491, !4490, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4492 = distinct !{!4492, i1 true, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains0Cs1qcNTItuk7F_13glyphs_reader"}
!4493 = distinct !{!4493, !4492, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4494 = distinct !{!4494, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs1qcNTItuk7F_13glyphs_reader"}
!4495 = distinct !{!4495, !4494, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4496 = distinct !{!4496, i1 true, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1qcNTItuk7F_13glyphs_reader"}
!4497 = distinct !{!4497, !4496, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4498 = distinct !{!4498, i1 true, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1qcNTItuk7F_13glyphs_reader"}
!4499 = distinct !{!4499, !4498, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4500 = distinct !{!4500, i1 true, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1qcNTItuk7F_13glyphs_reader"}
!4501 = distinct !{!4501, !4500, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4502 = !{!4485}
!4503 = !{!4486}
!4504 = !{!4493, !4491, !4489, !4488}
!4505 = !{!4485, !4486}
!4506 = !{!4495}
!4507 = !{!4497}
!4508 = !{!4499}
!4509 = !{!4501}
!4510 = distinct !{!4510, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!4511 = distinct !{!4511, !4510, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!4512 = distinct !{!4512, i1 true, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!4513 = distinct !{!4513, !4512, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!4514 = distinct !{!4514, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!4515 = distinct !{!4515, !4514, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!4516 = distinct !{!4516, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1qcNTItuk7F_13glyphs_reader"}
!4517 = distinct !{!4517, !4516, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4518 = distinct !{!4518, !4514, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!4519 = distinct !{!4519, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!4520 = distinct !{!4520, !4519, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!4521 = distinct !{!4521, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader"}
!4522 = distinct !{!4522, !4521, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4523 = distinct !{!4523, !4521, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!4524 = distinct !{!4524, !4521, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!4525 = distinct !{!4525, !4521, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 3"}
!4526 = distinct !{!4526, i1 true, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!4527 = distinct !{!4527, !4526, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!4528 = distinct !{!4528, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader"}
!4529 = distinct !{!4529, !4528, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4530 = distinct !{!4530, !4528, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!4531 = distinct !{!4531, !4528, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!4532 = distinct !{!4532, !4528, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader: argument 3"}
!4533 = distinct !{!4533, i1 true, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!4534 = distinct !{!4534, !4533, !"_RNvXsy_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!4535 = !{!4511}
!4536 = !{!4513}
!4537 = !{!4515, !4511}
!4538 = !{!4517, !4515, !4511}
!4539 = !{!4518}
!4540 = !{!4515, !4518}
!4541 = !{!4517, !4515, !4518}
!4542 = !{!4520}
!4543 = !{!4522}
!4544 = !{!4523}
!4545 = !{!4524}
!4546 = !{!4525}
!4547 = !{!4527, !4522}
!4548 = !{!4522, !4523, !4524, !4525}
!4549 = !{!4529}
!4550 = !{!4530}
!4551 = !{!4531}
!4552 = !{!4532}
!4553 = !{!4534, !4529}
!4554 = !{!4529, !4530, !4531, !4532}
!4555 = distinct !{!4555, i1 true, !"_RNCNKNvNtNtNtCs8hFumjqO1Bi_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs1qcNTItuk7F_13glyphs_reader"}
!4556 = distinct !{!4556, !4555, !"_RNCNKNvNtNtNtCs8hFumjqO1Bi_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4557 = distinct !{!4557, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StoragejzE11get_or_initNvNvNtNtNtCs8hFumjqO1Bi_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs1qcNTItuk7F_13glyphs_reader"}
!4558 = distinct !{!4558, !4557, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StoragejzE11get_or_initNvNvNtNtNtCs8hFumjqO1Bi_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4559 = !{!4558, !4556}
!4560 = distinct !{!4560, i1 true, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1qcNTItuk7F_13glyphs_reader"}
!4561 = distinct !{!4561, !4560, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4562 = distinct !{!4562, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1qcNTItuk7F_13glyphs_reader"}
!4563 = distinct !{!4563, !4562, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!4564 = !{!4563, !4561}
!4565 = distinct !{!4565, i1 true, !"_RNCNvNtCs1qcNTItuk7F_13glyphs_reader4font15LOGGED_WARNINGS0B5_"}
!4566 = distinct !{!4566, !4565, !"_RNCNvNtCs1qcNTItuk7F_13glyphs_reader4font15LOGGED_WARNINGS0B5_: argument 0"}
!4567 = !{!4566}
end_hunk_1
