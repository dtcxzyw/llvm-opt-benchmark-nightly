Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2009
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 30
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.promoted157.i.i ; 4 uses
  %i.cw = icmp samesign eq i64 %.promoted157.i.i, %i.cm
  br i1 %i.cw, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = load i8, ptr %i.cv, align 1, !noalias !2855, !noundef !11 ; 5 uses
  %i.cy = icmp sgt i8 %i.cx, -1
  br i1 %i.cy, label %bb.o, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.peel.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.peel.i: ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.da = and i8 %i.cx, 31
  %i.db = zext nneg i8 %i.da to i32               ; 3 uses
  %i.dc = add nuw nsw i64 %.promoted157.i.i, 1
  %i.dd = icmp samesign ne i64 %i.dc, %i.cm
  call void @llvm.assume(i1 %i.dd)
  %i.de = load i8, ptr %i.cz, align 1, !noalias !2855, !noundef !11
  %i.df = shl nuw nsw i32 %i.db, 6
  %i.dg = and i8 %i.de, 63
  %i.dh = zext nneg i8 %i.dg to i32               ; 2 uses
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = icmp samesign ugt i8 %i.cx, -33
  br i1 %i.dj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.peel.i, label %bb.p

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.peel.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.dl = add nuw nsw i64 %.promoted157.i.i, 2
  %i.dm = icmp samesign ne i64 %i.dl, %i.cm
  call void @llvm.assume(i1 %i.dm)
  %i.dn = load i8, ptr %i.dk, align 1, !noalias !2855, !noundef !11
  %i.do = shl nuw nsw i32 %i.dh, 6
  %i.dp = and i8 %i.dn, 63
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.do, %i.dq            ; 2 uses
  %i.ds = shl nuw nsw i32 %i.db, 12
  %i.dt = or disjoint i32 %i.dr, %i.ds
  %i.du = icmp samesign ugt i8 %i.cx, -17
  br i1 %i.du, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.peel.i, label %bb.p

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.peel.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.dw = add nuw nsw i64 %.promoted157.i.i, 3
  %i.dx = icmp samesign ne i64 %i.dw, %i.cm
  call void @llvm.assume(i1 %i.dx)
  %i.dy = load i8, ptr %i.dv, align 1, !noalias !2855, !noundef !11
  %i.dz = shl nuw nsw i32 %i.db, 18
  %i.ea = and i32 %i.dz, 1835008
  %i.eb = shl nuw nsw i32 %i.dr, 6
  %i.ec = and i8 %i.dy, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = or disjoint i32 %i.eb, %i.ed
  %i.ef = or disjoint i32 %i.ee, %i.ea
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eg = zext nneg i8 %i.cx to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.peel.i
  %.sroa.4.0.i.ph.i.us.i.peel.i = phi i32 [ %i.dt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.peel.i ], [ %i.ef, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.peel.i ], [ %i.di, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.peel.i ], [ %i.eg, %bb.o ] ; 4 uses
  %i.eh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.eh)
  br i1 %i.cp, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ei = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 128
  br i1 %i.ei, label %.lr.ph.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 2048
  br i1 %i.ej, label %.lr.ph.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 65536
  %..i.us.i.peel.i = select i1 %i.ek, i64 3, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01.0.i.us.i.peel.i = phi i64 [ 2, %bb.r ], [ %..i.us.i.peel.i, %bb.s ], [ 1, %bb.q ]
  %i.el = add i64 %.sroa.01.0.i.us.i.peel.i, %.promoted157.i.i ; 11 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.us.i.i = icmp ult i64 %i.el, %i.cm
  br i1 %.not.i.i.us.i.i, label %bb.u, label %.split.i.i.us.i.i

.split.i.i.us.i.i:                                ; preds = %bb.t
  %i.en = icmp eq i64 %i.el, %i.cm
  br i1 %i.en, label %bb.v, label %.split.us161.i.i

bb.u:                                             ; preds = %bb.t
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.el
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !2853, !noalias !2856, !noundef !11
  %i.eq = icmp sgt i8 %i.ep, -65
  br i1 %i.eq, label %bb.v, label %.split.us161.i.i

bb.v:                                             ; preds = %bb.u, %.split.i.i.us.i.i, %.lr.ph.i.i
  %i.er = icmp samesign eq i64 %i.el, %i.cm
  br i1 %i.er, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.el
  %i.et = load i8, ptr %i.es, align 1, !noalias !2857, !noundef !11 ; 3 uses
  %i.eu = icmp sgt i8 %i.et, -1
  br i1 %i.eu, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.i: ; preds = %bb.w
  %i.ev = add nuw nsw i64 %i.el, 1
  %i.ew = icmp samesign ne i64 %i.ev, %i.cm
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp samesign ugt i8 %i.et, -33
  br i1 %i.ex, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.i
  %i.ey = add nuw nsw i64 %i.el, 2
  %i.ez = icmp samesign ne i64 %i.ey, %i.cm
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp samesign ugt i8 %i.et, -17
  br i1 %i.fa, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.i
  %i.fb = add nuw nsw i64 %i.el, 3
  %i.fc = icmp samesign ne i64 %i.fb, %i.cm
  call void @llvm.assume(i1 %i.fc)
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i

.split.us161.i.i:                                 ; preds = %bb.u, %.split.i.i.us.i.i, %bb.l, %.split.i.i.us.i.peel.i
  %.lcssa53.i = phi i64 [ %.promoted157.i.i, %.split.i.i.us.i.peel.i ], [ %.promoted157.i.i, %bb.l ], [ %i.el, %.split.i.i.us.i.i ], [ %i.el, %bb.u ]
  call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.cm, i64 noundef %.lcssa53.i, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @868) #54, !noalias !2856
  unreachable

default.unreachable:                              ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i
  unreachable

bb.x:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !2852, !noalias !2851, !noundef !11 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !2852, !noalias !2851, !noundef !11 ; 3 uses
  %.not.i4.i = icmp ult i64 %i.fg, %i.fe
  br i1 %.not.i4.i, label %bb.z, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.y:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !2852, !noalias !2851, !noundef !11 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, -1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !2852, !noalias !2851, !nonnull !11, !noundef !11 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !2852, !noalias !2851, !noundef !11 ; 8 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !2852, !noalias !2851, !nonnull !11, !noundef !11 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !2852, !noalias !2851, !noundef !11 ; 12 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.fu = add nsw i64 %i.fs, -1                   ; 4 uses
  br i1 %i.fk, label %bb.ak, label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !2852, !noalias !2851, !nonnull !11, !noundef !11
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fy = load i8, ptr %i.fx, align 8, !alias.scope !2852, !noalias !2851, !noundef !11 ; 2 uses
  %i.fz = sub nuw i64 %i.fe, %i.fg                ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fg ; 2 uses
  %i.gb = icmp samesign ult i64 %i.fz, 16
  br i1 %i.gb, label %.lr.ph.i.i6.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.fy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef range(i64 0, -9223372036854775808) %i.fz), !noalias !2858
  %i.gd = extractvalue { i64, i64 } %i.gc, 0
  %i.ge = trunc nuw i64 %i.gd to i1
  br i1 %i.ge, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph.i.i6.i:                                    ; preds = %bb.z, %bb.ab
  %.sroa.04.011.i.i7.i = phi i64 [ %i.gi, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.sroa.04.011.i.i7.i
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !2859, !noalias !2858, !noundef !11
  %i.gh = icmp eq i8 %i.gg, %i.fy
  br i1 %i.gh, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i6.i
  %i.gi = add nuw nsw i64 %.sroa.04.011.i.i7.i, 1 ; 2 uses
  %exitcond.not.i7.i.i = icmp eq i64 %i.gi, %i.fz
  br i1 %exitcond.not.i7.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph.i.i6.i

bb.ac:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !2860)
  call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  call void @llvm.experimental.noalias.scope.decl(metadata !2862)
  %.promoted.i.i.i = load i64, ptr %i.ft, align 8, !alias.scope !2863, !noalias !2851 ; 2 uses
  %i.gj = add i64 %.promoted.i.i.i, %i.fu         ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.fo
  br i1 %i.gk, label %.lr.ph.i8.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph.i8.i.i:                                    ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !2863, !noalias !2851, !noundef !11
  %i.gn = load i64, ptr %i.fh, align 8, !alias.scope !2863, !noalias !2851
  %.fr60.i.i.i = freeze i64 %i.gn                 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !2863, !noalias !2851 ; 2 uses
  %i.gq = sub i64 %i.fs, %i.gp
  %invariant.op = sub i64 1, %.fr60.i.i.i
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.af, %.lr.ph.i8.i.i
  %.sink70.i.i36.i = phi i64 [ %.sink70.i.i.i, %bb.af ], [ %i.fj, %.lr.ph.i8.i.i ] ; 3 uses
  %.sink71.i.i33.i = phi i64 [ %.sink71.i.i.i, %bb.af ], [ %.promoted.i.i.i, %.lr.ph.i8.i.i ] ; 5 uses
  %i.gr = phi i64 [ %i.ha, %bb.af ], [ %i.gj, %.lr.ph.i8.i.i ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !2861, !noalias !2858, !noundef !11
  %i.gu = and i8 %i.gt, 63
  %i.gv = zext nneg i8 %i.gu to i64
  %i.gw = shl nuw i64 1, %i.gv
  %i.gx = and i64 %i.gw, %i.gm
  %.not.i9.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not.i9.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.i.i.i
  %i.gy = add i64 %.sink71.i.i33.i, %i.fs
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split.i.i.i
  %..i.i10.i.i = call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i36.i, i64 %.fr60.i.i.i) ; 2 uses
  %i.gz = icmp ult i64 %..i.i10.i.i, %i.fs
  br i1 %i.gz, label %.lr.ph, label %.preheader36.i.i.i.preheader

bb.af:                                            ; preds = %bb.aj, %bb.ai, %bb.ad
  %.sink71.i.i.i = phi i64 [ %i.hv, %bb.aj ], [ %i.hu, %bb.ai ], [ %i.gy, %bb.ad ] ; 2 uses
  %.sink70.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.gq, %bb.ai ], [ 0, %bb.ad ]
  %i.ha = add i64 %.sink71.i.i.i, %i.fu           ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.fo
  br i1 %i.hb, label %.lr.ph.split.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.ag:                                            ; preds = %.lr.ph
  %i.hc = add nuw nsw i64 %.sroa.04.0.i.i.i94, 1  ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.fs
  br i1 %i.hd, label %.lr.ph, label %.preheader36.i.i.i.preheader

.preheader36.i.i.i.preheader:                     ; preds = %bb.ag, %bb.ae
  %i.he = icmp ult i64 %.sink70.i.i36.i, %.fr60.i.i.i
  br i1 %i.he, label %.lr.ph96, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph:                                           ; preds = %bb.ae, %bb.ag
  %.sroa.04.0.i.i.i94 = phi i64 [ %i.hc, %bb.ag ], [ %..i.i10.i.i, %bb.ae ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.sroa.04.0.i.i.i94
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !2862, !noalias !2858, !noundef !11
  %i.hh = add i64 %.sroa.04.0.i.i.i94, %.sink71.i.i33.i ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.fo
  call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.hh
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !2861, !noalias !2858, !noundef !11
  %.not21.i.i.i = icmp eq i8 %i.hg, %i.hk
  br i1 %.not21.i.i.i, label %bb.ag, label %bb.aj

.preheader36.i.i.i:                               ; preds = %bb.ah
  %i.hl = icmp ult i64 %.sink70.i.i36.i, %i.hm
  br i1 %i.hl, label %.lr.ph96, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph96:                                         ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %.sroa.2.0.i.i.i95 = phi i64 [ %i.hm, %.preheader36.i.i.i ], [ %.fr60.i.i.i, %.preheader36.i.i.i.preheader ]
  %i.hm = add i64 %.sroa.2.0.i.i.i95, -1          ; 6 uses
  %i.hn = icmp ult i64 %i.hm, %i.fs
  br i1 %i.hn, label %bb.ah, label %.split32.us.i.i.i

bb.ah:                                            ; preds = %.lr.ph96
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.hm
  %i.hp = load i8, ptr %i.ho, align 1, !alias.scope !2862, !noalias !2858, !noundef !11
  %i.hq = add i64 %i.hm, %.sink71.i.i33.i         ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.fo
  call void @llvm.assume(i1 %i.hr)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.hq
  %i.ht = load i8, ptr %i.hs, align 1, !alias.scope !2861, !noalias !2858, !noundef !11
  %.not20.i.i.i = icmp eq i8 %i.hp, %i.ht
  br i1 %.not20.i.i.i, label %.preheader36.i.i.i, label %bb.ai

.split32.us.i.i.i:                                ; preds = %.lr.ph96
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.hm, i64 noundef range(i64 0, -9223372036854775808) %i.fs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #54, !noalias !2864
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.hu = add i64 %.sink71.i.i33.i, %i.gp
  br label %bb.af

bb.aj:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i33.i, %invariant.op
  %i.hv = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i94
  br label %bb.af

bb.ak:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  call void @llvm.experimental.noalias.scope.decl(metadata !2866)
  call void @llvm.experimental.noalias.scope.decl(metadata !2867)
  %.promoted.i12.i.i = load i64, ptr %i.ft, align 8, !alias.scope !2868, !noalias !2851 ; 2 uses
  %i.hw = add i64 %.promoted.i12.i.i, %i.fu       ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.fo
  br i1 %i.hx, label %.lr.ph.i15.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph.i15.i.i:                                   ; preds = %bb.ak
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !2868, !noalias !2851, !noundef !11
  %i.ia = load i64, ptr %i.fh, align 8, !alias.scope !2868, !noalias !2851
  %.fr215.i.i = freeze i64 %i.ia                  ; 7 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !2868, !noalias !2851
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.fr215.i.i, i64 range(i64 0, -9223372036854775808) %i.fs)
  %i.id = add i64 %.fr215.i.i, -1                 ; 2 uses
  %.first_iter.i16.i.i = icmp ult i64 %i.id, %i.fs
  %exitcond.not.i17.i.i97.not = icmp ult i64 %.fr215.i.i, %i.fs
  %invariant.op127 = sub i64 1, %.fr215.i.i
  %.not34.i.us.i.i100 = icmp eq i64 %.fr215.i.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i3.i

.lr.ph.split.us.i.i3.i:                           ; preds = %bb.an, %.lr.ph.i15.i.i
  %.sink.i18.i39.i = phi i64 [ %.sink.i18.i.i, %bb.an ], [ %.promoted.i12.i.i, %.lr.ph.i15.i.i ] ; 5 uses
  %i.ie = phi i64 [ %i.jc, %bb.an ], [ %i.hw, %.lr.ph.i15.i.i ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !alias.scope !2866, !noalias !2858, !noundef !11
  %i.ih = and i8 %i.ig, 63
  %i.ii = zext nneg i8 %i.ih to i64
  %i.ij = shl nuw i64 1, %i.ii
  %i.ik = and i64 %i.ij, %i.hz
  %.not.us.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not.us.i.i.i, label %bb.am, label %.preheader35.i.i.i.preheader

.preheader35.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i3.i
  br i1 %exitcond.not.i17.i.i97.not, label %.lr.ph99, label %.preheader.i19.preheader.i.i

.preheader35.i.i.i:                               ; preds = %.lr.ph99
  %i.il = add i64 %.sroa.04.0.us.i.i.i98, 1       ; 2 uses
  %exitcond.not.i17.i.i = icmp eq i64 %i.il, %umax.i.i.i
  br i1 %exitcond.not.i17.i.i, label %.preheader.i19.preheader.i.i, label %.lr.ph99

.preheader.i19.preheader.i.i:                     ; preds = %.preheader35.i.i.i, %.preheader35.i.i.i.preheader
  br i1 %.first_iter.i16.i.i, label %.preheader.i19.us.i.i.preheader, label %.preheader.split.i21.i.i

.preheader.i19.us.i.i.preheader:                  ; preds = %.preheader.i19.preheader.i.i
  br i1 %.not34.i.us.i.i100, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph102

.preheader.i19.us.i.i:                            ; preds = %.lr.ph102
  %.not34.i.us.i.i = icmp eq i64 %i.im, 0
  br i1 %.not34.i.us.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph102

.lr.ph102:                                        ; preds = %.preheader.i19.us.i.i.preheader, %.preheader.i19.us.i.i
  %.sroa.2.0.us.i.us.i.i101 = phi i64 [ %i.im, %.preheader.i19.us.i.i ], [ %.fr215.i.i, %.preheader.i19.us.i.i.preheader ]
  %i.im = add i64 %.sroa.2.0.us.i.us.i.i101, -1   ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !alias.scope !2867, !noalias !2858, !noundef !11
  %i.ip = add i64 %i.im, %.sink.i18.i39.i         ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.fo
  call void @llvm.assume(i1 %i.iq)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ip
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !2866, !noalias !2858, !noundef !11
  %.not20.us.i.us.i.i = icmp eq i8 %i.io, %i.is
  br i1 %.not20.us.i.us.i.i, label %.preheader.i19.us.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.lr.ph102
  %i.it = add i64 %.sink.i18.i39.i, %i.ic
  br label %bb.an

.preheader.split.i21.i.i:                         ; preds = %.preheader.i19.preheader.i.i
  br i1 %.not34.i.us.i.i100, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.split32.us.i22.i.i

.lr.ph99:                                         ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.sroa.04.0.us.i.i.i98 = phi i64 [ %i.il, %.preheader35.i.i.i ], [ %.fr215.i.i, %.preheader35.i.i.i.preheader ] ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.sroa.04.0.us.i.i.i98
  %i.iv = load i8, ptr %i.iu, align 1, !alias.scope !2867, !noalias !2858, !noundef !11
  %i.iw = add i64 %.sroa.04.0.us.i.i.i98, %.sink.i18.i39.i ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.fo
  call void @llvm.assume(i1 %i.ix)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.iw
  %i.iz = load i8, ptr %i.iy, align 1, !alias.scope !2866, !noalias !2858, !noundef !11
  %.not21.us.i.i.i = icmp eq i8 %i.iv, %i.iz
  br i1 %.not21.us.i.i.i, label %.preheader35.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph99
  %.reass282.i.reass.i.reass.reass = add i64 %.sink.i18.i39.i, %invariant.op127
  %i.ja = add i64 %.reass282.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i98
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph.split.us.i.i3.i
  %i.jb = add i64 %.sink.i18.i39.i, %i.fs
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %.split.us.i.i
  %.sink.i18.i.i = phi i64 [ %i.jb, %bb.am ], [ %i.ja, %bb.al ], [ %i.it, %.split.us.i.i ] ; 2 uses
  %i.jc = add i64 %.sink.i18.i.i, %i.fu           ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.fo
  br i1 %i.jd, label %.lr.ph.split.us.i.i3.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.split32.us.i22.i.i:                              ; preds = %.preheader.split.i21.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.id, i64 noundef range(i64 0, -9223372036854775808) %i.fs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #54, !noalias !2869
  unreachable

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i: ; preds = %.lr.ph.i.i6.i, %bb.aa, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us.i.i, %bb.w
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %bb.af, %.preheader36.i.i.i.preheader, %.preheader36.i.i.i, %bb.an, %.preheader.i19.us.i.i.preheader, %.preheader.i19.us.i.i, %bb.ab, %bb.m, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, %.preheader.split.i21.i.i, %bb.ak, %bb.ac, %bb.aa, %bb.x, %bb.v, %bb.p, %.preheader.i.i
  %storemerge.i.sink.i.i = phi i8 [ 1, %.preheader.i19.us.i.i ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.ak ], [ 1, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i ], [ 0, %bb.aa ], [ 1, %.preheader36.i.i.i ], [ 0, %.preheader.i.i ], [ 1, %bb.p ], [ 1, %bb.v ], [ 0, %bb.ab ], [ 1, %.preheader.split.i21.i.i ], [ %.promoted206.i.i, %bb.m ], [ 1, %.preheader.i19.us.i.i.preheader ], [ 0, %bb.an ], [ 0, %bb.af ], [ 1, %.preheader36.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2851
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.ao:                                            ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.c, ptr noundef nonnull readonly dereferenceable(1) %1, i64 range(i64 1, 5) %2), !alias.scope !2851
  %i.je = icmp eq i32 %bcmp.i, 0
  %i.jf = zext i1 %i.je to i8
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i, %.split.us.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader, %bb.f, %.lr.ph.split.us.i.i.i, %bb.i, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, %bb.ao
  %.sroa.0.0.i = phi i8 [ 0, %bb.f ], [ %.sroa.014.5.i.i, %bb.i ], [ %i.jf, %bb.ao ], [ %storemerge.i.sink.i.i, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i ], [ 1, %.lr.ph.split.us.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader ], [ 1, %.split.us.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i ]
  %i.jg = trunc nuw i8 %.sroa.0.0.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit

bb.ap:                                            ; preds = %bb.a
  %i.jh = trunc nuw nsw i32 %0 to i8              ; 2 uses
  %i.ji = icmp samesign ult i64 %2, 16
  br i1 %i.ji, label %.lr.ph.i.i1, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jj = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.jh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, 29) %2) ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.jj, 0
  %i.jl = extractvalue { i64, i64 } %i.jj, 1
  %i.jm = trunc nuw i64 %i.jk to i1
  br i1 %i.jm, label %.loopexit9.i.i, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit

.loopexit9.i.i:                                   ; preds = %.lr.ph.i.i1, %bb.aq
  %.sroa.5.0.i.i = phi i64 [ %i.jl, %bb.aq ], [ %.sroa.04.011.i.i, %.lr.ph.i.i1 ]
  %i.jn = icmp ult i64 %.sroa.5.0.i.i, %2
  tail call void @llvm.assume(i1 %i.jn)
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit

.lr.ph.i.i1:                                      ; preds = %bb.ap, %bb.ar
  %.sroa.04.011.i.i = phi i64 [ %i.jr, %bb.ar ], [ 0, %bb.ap ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.011.i.i
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !2870, !noundef !11
  %i.jq = icmp eq i8 %i.jp, %i.jh
  br i1 %i.jq, label %.loopexit9.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i1
  %i.jr = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jr, %2
  br i1 %exitcond.not.i.i, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i1

_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit: ; preds = %bb.ar, %.loopexit9.i.i, %bb.aq, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
  %.sroa.0.0.in = phi i1 [ %i.jg, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit ], [ true, %.loopexit9.i.i ], [ false, %bb.aq ], [ false, %bb.ar ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish3key3KeyINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.06 ; 5 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.06 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2880)
  %i.e = load i32, ptr %i.c, align 4, !range !31, !alias.scope !2881, !noundef !11
  %i.f = load i32, ptr %i.d, align 4, !range !31, !alias.scope !2882, !noundef !11
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load i8, ptr %i.h, align 4, !range !13, !alias.scope !2881, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = load i8, ptr %i.j, align 4, !range !13, !alias.scope !2882, !noundef !11
  %i.l = icmp eq i8 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.n = load i8, ptr %i.m, align 1, !range !13, !alias.scope !2881, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.p = load i8, ptr %i.o, align 1, !range !13, !alias.scope !2882, !noundef !11
  %i.q = icmp eq i8 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.s = load i8, ptr %i.r, align 2, !range !13, !alias.scope !2881, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.u = load i8, ptr %i.t, align 2, !range !13, !alias.scope !2882, !noundef !11
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit, label %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.x = load i8, ptr %i.w, align 1, !range !13, !alias.scope !2881, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.z = load i8, ptr %i.y, align 1, !range !13, !alias.scope !2882, !noundef !11
  %.not = icmp eq i8 %i.x, %i.z
  br i1 %.not, label %bb.b, label %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit.thread: ; preds = %bb.b, %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit, %.lr.ph, %bb.e, %bb.d, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.06 ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.06 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2892)
  %i.e = load i8, ptr %i.c, align 1, !range !13, !alias.scope !2893, !noundef !11
  %i.f = load i8, ptr %i.d, align 1, !range !13, !alias.scope !2894, !noundef !11
  %i.g = icmp eq i8 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !13, !alias.scope !2893, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !13, !alias.scope !2894, !noundef !11
  %i.l = icmp eq i8 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.n = load i8, ptr %i.m, align 1, !range !37, !alias.scope !2893, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.p = load i8, ptr %i.o, align 1, !range !37, !alias.scope !2894, !noundef !11
  %i.q = icmp eq i8 %i.n, %i.p
  br i1 %i.q, label %_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit, label %_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.s = load i8, ptr %i.r, align 1, !range !37, !alias.scope !2893, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.u = load i8, ptr %i.t, align 1, !range !37, !alias.scope !2894, !noundef !11
  %.not = icmp eq i8 %i.s, %i.u
  br i1 %.not, label %bb.b, label %_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit, %bb.c, %.lr.ph, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %_RNvYNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCse7JGOylGlDZ_3nix5errno6constsNtB5_5ErrnoNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !41, !noundef !11
  %trunc = trunc nuw i32 %i.a to i8
  %switch.tableidx = xor i8 %trunc, -128          ; 2 uses
  %i.b = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtCse7JGOylGlDZ_3nix5errno6constsNtB5_5ErrnoNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtCse7JGOylGlDZ_3nix5errno6constsNtB5_5ErrnoNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.473, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs39_NtCs8frGy5WneL6_4fish3astNtB6_19JobContinuationListNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @708, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @707)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3J_NtCs8frGy5WneL6_4fish3astNtB6_30JobConjunctionContinuationListNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @710, i64 noundef 30, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @709)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
