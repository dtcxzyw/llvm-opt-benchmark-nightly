Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_touch-88b35e5ce9cfb264.uu_touch.a1ebf4301e4c8f8d-cgu.0?download=true
inline.NumInlined: 849
inline.NumDeleted: 480
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %i.do = load i64, ptr %i.b, align 8, !range !13, !alias.scope !1885, !noundef !4
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.dp, label %bb.ab, label %.preheader.i3

.preheader.i3:                                    ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ds = load i8, ptr %i.dr, align 2, !range !20, !alias.scope !1886, !noundef !4
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.preheader.i3
  %.promoted.i = load i64, ptr %i.dq, align 8, !alias.scope !1885 ; 12 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !1886, !nonnull !4, !noundef !4 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !1886, !noundef !4 ; 14 uses
  %.promoted52.i = load i8, ptr %i.du, align 8, !alias.scope !1886 ; 2 uses
  %i.dz = trunc nuw i8 %.promoted52.i to i1
  %i.ea = icmp eq i64 %.promoted.i, 0
  br i1 %i.ea, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i4
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.dy
  br i1 %.not.i.i.i.peel, label %bb.t, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.s
  %i.eb = icmp eq i64 %.promoted.i, %i.dy
  br i1 %i.eb, label %bb.u, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.promoted.i
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !1887, !noalias !1888, !noundef !4
  %i.ee = icmp sgt i8 %i.ed, -65
  br i1 %i.ee, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %.split.i.i.i.peel, %.lr.ph.i4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.promoted.i ; 4 uses
  %i.eg = icmp samesign eq i64 %.promoted.i, %i.dy
  br i1 %i.eg, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = load i8, ptr %i.ef, align 1, !noalias !1889, !noundef !4 ; 5 uses
  %i.ei = icmp sgt i8 %i.eh, -1
  br i1 %i.ei, label %bb.w, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel: ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.ek = and i8 %i.eh, 31
  %i.el = zext nneg i8 %i.ek to i32               ; 3 uses
  %i.em = add nuw nsw i64 %.promoted.i, 1
  %i.en = icmp samesign ne i64 %i.em, %i.dy
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = load i8, ptr %i.ej, align 1, !noalias !1889, !noundef !4
  %i.ep = shl nuw nsw i32 %i.el, 6
  %i.eq = and i8 %i.eo, 63
  %i.er = zext nneg i8 %i.eq to i32               ; 2 uses
  %i.es = or disjoint i32 %i.ep, %i.er
  %i.et = icmp samesign ugt i8 %i.eh, -33
  br i1 %i.et, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel, label %bb.x

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.ev = add nuw nsw i64 %.promoted.i, 2
  %i.ew = icmp samesign ne i64 %i.ev, %i.dy
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = load i8, ptr %i.eu, align 1, !noalias !1889, !noundef !4
  %i.ey = shl nuw nsw i32 %i.er, 6
  %i.ez = and i8 %i.ex, 63
  %i.fa = zext nneg i8 %i.ez to i32
  %i.fb = or disjoint i32 %i.ey, %i.fa            ; 2 uses
  %i.fc = shl nuw nsw i32 %i.el, 12
  %i.fd = or disjoint i32 %i.fb, %i.fc
  %i.fe = icmp samesign ugt i8 %i.eh, -17
  br i1 %i.fe, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel, label %bb.x

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.fg = add nuw nsw i64 %.promoted.i, 3
  %i.fh = icmp samesign ne i64 %i.fg, %i.dy
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = load i8, ptr %i.ff, align 1, !noalias !1889, !noundef !4
  %i.fj = shl nuw nsw i32 %i.el, 18
  %i.fk = and i32 %i.fj, 1835008
  %i.fl = shl nuw nsw i32 %i.fb, 6
  %i.fm = and i8 %i.fi, 63
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = or disjoint i32 %i.fl, %i.fn
  %i.fp = or disjoint i32 %i.fo, %i.fk
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fq = zext nneg i8 %i.eh to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fd, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel ], [ %i.fp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel ], [ %i.es, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel ], [ %i.fq, %bb.w ] ; 4 uses
  %i.fr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.fr)
  br i1 %i.dz, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.fs, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.ft, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.fu, i64 3, i64 4
  br label %bb.ac

bb.ab:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !1885, !noundef !4 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, -1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !1885, !nonnull !4, !noundef !4 ; 8 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !1885, !noundef !4 ; 10 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !1885, !nonnull !4, !noundef !4 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !1885, !noundef !4 ; 14 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gh = add nsw i64 %i.gf, -1                   ; 5 uses
  br i1 %i.fx, label %bb.ap, label %bb.ah

bb.ac:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.z ], [ %..i.i.peel, %bb.aa ], [ 1, %bb.y ]
  %i.gi = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i = icmp ult i64 %i.gi, %i.dy
  br i1 %.not.i.i.i, label %bb.ae, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ad
  %i.gk = icmp eq i64 %i.gi, %i.dy
  br i1 %i.gk, label %bb.af, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.gi
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !1887, !noalias !1891, !noundef !4
  %i.gn = icmp sgt i8 %i.gm, -65
  br i1 %i.gn, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae, %.split.i.i.i, %bb.ac
  %i.go = icmp samesign eq i64 %i.gi, %i.dy
  br i1 %i.go, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.gi
  %i.gq = load i8, ptr %i.gp, align 1, !noalias !1892, !noundef !4 ; 3 uses
  %i.gr = icmp sgt i8 %i.gq, -1
  br i1 %i.gr, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i: ; preds = %bb.ag
  %i.gs = add nuw nsw i64 %i.gi, 1
  %i.gt = icmp samesign ne i64 %i.gs, %i.dy
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp samesign ugt i8 %i.gq, -33
  br i1 %i.gu, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i
  %i.gv = add nuw nsw i64 %i.gi, 2
  %i.gw = icmp samesign ne i64 %i.gv, %i.dy
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp samesign ugt i8 %i.gq, -17
  br i1 %i.gx, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i
  %i.gy = add nuw nsw i64 %i.gi, 3
  %i.gz = icmp samesign ne i64 %i.gy, %i.dy
  tail call void @llvm.assume(i1 %i.gz)
  br label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ae, %.split.i.i.i, %bb.t, %.split.i.i.i.peel
  %.lcssa80 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.t ], [ %i.gi, %.split.i.i.i ], [ %i.gi, %bb.ae ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dy, i64 noundef %.lcssa80, i64 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #28, !noalias !1891
  unreachable

bb.ah:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  %.promoted.i.i = load i64, ptr %i.gg, align 8, !alias.scope !1896 ; 2 uses
  %i.ha = add i64 %.promoted.i.i, %i.gh           ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.gb
  br i1 %i.hb, label %.lr.ph.i1.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i1.i:                                      ; preds = %bb.ah
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !1896, !noundef !4
  %i.he = load i64, ptr %i.dq, align 8, !alias.scope !1896
  %.fr60.i.i = freeze i64 %i.he                   ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !1896 ; 2 uses
  %i.hh = sub i64 %i.gf, %i.hg
  %invariant.op = sub i64 1, %.fr60.i.i
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.ak, %.lr.ph.i1.i
  %.sink.i4.i43 = phi i64 [ %.sink.i4.i, %bb.ak ], [ %i.fw, %.lr.ph.i1.i ] ; 3 uses
  %i.hi = phi i64 [ %i.ht, %bb.ak ], [ %i.ha, %.lr.ph.i1.i ]
  %i.hj = phi i64 [ %i.hs, %bb.ak ], [ %.promoted.i.i, %.lr.ph.i1.i ] ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.hi
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !1894, !noalias !1897, !noundef !4
  %i.hm = and i8 %i.hl, 63
  %i.hn = zext nneg i8 %i.hm to i64
  %i.ho = shl nuw i64 1, %i.hn
  %i.hp = and i64 %i.ho, %i.hd
  %.not.i2.i = icmp eq i64 %i.hp, 0
  br i1 %.not.i2.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.split.i.i
  %i.hq = add i64 %i.hj, %i.gf
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.split.i.i
  %..i.i3.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink.i4.i43, i64 %.fr60.i.i) ; 2 uses
  %i.hr = icmp ult i64 %..i.i3.i, %i.gf
  br i1 %i.hr, label %.lr.ph151, label %.preheader36.i.i.preheader

bb.ak:                                            ; preds = %bb.ao, %bb.an, %bb.ai
  %.sink.i4.i = phi i64 [ 0, %bb.ao ], [ %i.hh, %bb.an ], [ 0, %bb.ai ]
  %i.hs = phi i64 [ %i.io, %bb.ao ], [ %i.in, %bb.an ], [ %i.hq, %bb.ai ] ; 2 uses
  %i.ht = add i64 %i.hs, %i.gh                    ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.gb
  br i1 %i.hu, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.al:                                            ; preds = %.lr.ph151
  %i.hv = add nuw nsw i64 %.sroa.04.0.i.i150, 1   ; 2 uses
  %i.hw = icmp ult i64 %i.hv, %i.gf
  br i1 %i.hw, label %.lr.ph151, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.al, %bb.aj
  %i.hx = icmp ult i64 %.sink.i4.i43, %.fr60.i.i
  br i1 %i.hx, label %.lr.ph153, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph151:                                        ; preds = %bb.aj, %bb.al
  %.sroa.04.0.i.i150 = phi i64 [ %i.hv, %bb.al ], [ %..i.i3.i, %bb.aj ] ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.04.0.i.i150
  %i.hz = load i8, ptr %i.hy, align 1, !alias.scope !1895, !noalias !1897, !noundef !4
  %i.ia = add i64 %.sroa.04.0.i.i150, %i.hj       ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.gb
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ia
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !1894, !noalias !1897, !noundef !4
  %.not21.i.i = icmp eq i8 %i.hz, %i.id
  br i1 %.not21.i.i, label %bb.al, label %bb.ao

.preheader36.i.i:                                 ; preds = %bb.am
  %i.ie = icmp ult i64 %.sink.i4.i43, %i.if
  br i1 %i.ie, label %.lr.ph153, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph153:                                        ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i152 = phi i64 [ %i.if, %.preheader36.i.i ], [ %.fr60.i.i, %.preheader36.i.i.preheader ]
  %i.if = add i64 %.sroa.2.0.i.i152, -1           ; 6 uses
  %i.ig = icmp ult i64 %i.if, %i.gf
  br i1 %i.ig, label %bb.am, label %.split32.us.i.i

bb.am:                                            ; preds = %.lr.ph153
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.if
  %i.ii = load i8, ptr %i.ih, align 1, !alias.scope !1895, !noalias !1897, !noundef !4
  %i.ij = add i64 %i.if, %i.hj                    ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.gb
  tail call void @llvm.assume(i1 %i.ik)
  %i.il = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ij
  %i.im = load i8, ptr %i.il, align 1, !alias.scope !1894, !noalias !1897, !noundef !4
  %.not20.i.i = icmp eq i8 %i.ii, %i.im
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.an

.split32.us.i.i:                                  ; preds = %.lr.ph153
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.if, i64 noundef range(i64 0, -9223372036854775808) %i.gf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28, !noalias !1898
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.in = add i64 %i.hj, %i.hg
  br label %bb.ak

bb.ao:                                            ; preds = %.lr.ph151
  %.reass.i.reass.reass = add i64 %i.hj, %invariant.op
  %i.io = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i150
  br label %bb.ak

bb.ap:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  %.promoted.i5.i = load i64, ptr %i.gg, align 8, !alias.scope !1902 ; 3 uses
  %i.ip = add i64 %.promoted.i5.i, %i.gh          ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %i.gb
  br i1 %i.iq, label %.lr.ph.i8.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i8.i:                                      ; preds = %bb.ap
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !1902, !noundef !4 ; 2 uses
  %i.it = load i64, ptr %i.dq, align 8, !alias.scope !1902
  %.fr63.i = freeze i64 %i.it                     ; 10 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.iv = load i64, ptr %i.iu, align 8, !alias.scope !1902
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i, i64 range(i64 0, -9223372036854775808) %i.gf) ; 2 uses
  %i.iw = add i64 %.fr63.i, -1                    ; 2 uses
  %.first_iter.i9.i = icmp ult i64 %i.iw, %i.gf
  %i.ix = sub i64 1, %.fr63.i                     ; 2 uses
  br i1 %.first_iter.i9.i, label %.lr.ph.split.us.i.us.i.preheader, label %.lr.ph.split.us.i.i6.preheader

.lr.ph.split.us.i.i6.preheader:                   ; preds = %.lr.ph.i8.i
  %exitcond.not.i.i154.not = icmp ult i64 %.fr63.i, %i.gf
  br label %.lr.ph.split.us.i.i6

.lr.ph.split.us.i.us.i.preheader:                 ; preds = %.lr.ph.i8.i
  %exitcond.not.i.us.i157.not = icmp ult i64 %.fr63.i, %i.gf
  %.not34.i.us.us.i160 = icmp eq i64 %.fr63.i, 0
  br label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i.us.i.preheader, %bb.as
  %i.iy = phi i64 [ %i.jz, %bb.as ], [ %i.ip, %.lr.ph.split.us.i.us.i.preheader ]
  %i.iz = phi i64 [ %i.jy, %bb.as ], [ %.promoted.i5.i, %.lr.ph.split.us.i.us.i.preheader ] ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.iy
  %i.jb = load i8, ptr %i.ja, align 1, !alias.scope !1900, !noalias !1897, !noundef !4
  %i.jc = and i8 %i.jb, 63
  %i.jd = zext nneg i8 %i.jc to i64
  %i.je = shl nuw i64 1, %i.jd
  %i.jf = and i64 %i.je, %i.is
  %.not.us.i.us.i = icmp eq i64 %i.jf, 0
  br i1 %.not.us.i.us.i, label %bb.ar, label %.preheader35.i.us.i.preheader

.preheader35.i.us.i.preheader:                    ; preds = %.lr.ph.split.us.i.us.i
  br i1 %exitcond.not.i.us.i157.not, label %.lr.ph159, label %.preheader.i10.us.us.i.preheader

.preheader35.i.us.i:                              ; preds = %.lr.ph159
  %i.jg = add i64 %.sroa.04.0.us.i.us.i158, 1     ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.jg, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %.preheader.i10.us.us.i.preheader, label %.lr.ph159

.preheader.i10.us.us.i.preheader:                 ; preds = %.preheader35.i.us.i, %.preheader35.i.us.i.preheader
  br i1 %.not34.i.us.us.i160, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph162

.lr.ph159:                                        ; preds = %.preheader35.i.us.i.preheader, %.preheader35.i.us.i
  %.sroa.04.0.us.i.us.i158 = phi i64 [ %i.jg, %.preheader35.i.us.i ], [ %.fr63.i, %.preheader35.i.us.i.preheader ] ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.04.0.us.i.us.i158
  %i.ji = load i8, ptr %i.jh, align 1, !alias.scope !1901, !noalias !1897, !noundef !4
  %i.jj = add i64 %.sroa.04.0.us.i.us.i158, %i.iz ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.gb
  tail call void @llvm.assume(i1 %i.jk)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.jj
  %i.jm = load i8, ptr %i.jl, align 1, !alias.scope !1900, !noalias !1897, !noundef !4
  %.not21.us.i.us.i = icmp eq i8 %i.ji, %i.jm
  br i1 %.not21.us.i.us.i, label %.preheader35.i.us.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph159
  %i.jn = add i64 %i.iz, %i.ix
  %i.jo = add i64 %i.jn, %.sroa.04.0.us.i.us.i158
  br label %bb.as

.preheader.i10.us.us.i:                           ; preds = %.lr.ph162
  %.not34.i.us.us.i = icmp eq i64 %i.jp, 0
  br i1 %.not34.i.us.us.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i
  %.sroa.2.0.us.i.us.us.i161 = phi i64 [ %i.jp, %.preheader.i10.us.us.i ], [ %.fr63.i, %.preheader.i10.us.us.i.preheader ]
  %i.jp = add i64 %.sroa.2.0.us.i.us.us.i161, -1  ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !alias.scope !1901, !noalias !1897, !noundef !4
  %i.js = add i64 %i.jp, %i.iz                    ; 2 uses
  %i.jt = icmp ult i64 %i.js, %i.gb
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.js
  %i.jv = load i8, ptr %i.ju, align 1, !alias.scope !1900, !noalias !1897, !noundef !4
  %.not20.us.i.us.us.i = icmp eq i8 %i.jr, %i.jv
  br i1 %.not20.us.i.us.us.i, label %.preheader.i10.us.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.lr.ph162
  %i.jw = add i64 %i.iz, %i.iv
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split.us.i.us.i
  %i.jx = add i64 %i.iz, %i.gf
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.split.us.us.i, %bb.aq
  %i.jy = phi i64 [ %i.jo, %bb.aq ], [ %i.jx, %bb.ar ], [ %i.jw, %.split.us.us.i ] ; 2 uses
  %i.jz = add i64 %i.jy, %i.gh                    ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.gb
  br i1 %i.ka, label %.lr.ph.split.us.i.us.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.split.us.i.i6:                             ; preds = %.lr.ph.split.us.i.i6.preheader, %bb.av
  %i.kb = phi i64 [ %i.ku, %bb.av ], [ %i.ip, %.lr.ph.split.us.i.i6.preheader ]
  %i.kc = phi i64 [ %i.kt, %bb.av ], [ %.promoted.i5.i, %.lr.ph.split.us.i.i6.preheader ] ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.kb
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !1900, !noalias !1897, !noundef !4
  %i.kf = and i8 %i.ke, 63
  %i.kg = zext nneg i8 %i.kf to i64
  %i.kh = shl nuw i64 1, %i.kg
  %i.ki = and i64 %i.kh, %i.is
  %.not.us.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not.us.i.i, label %bb.au, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i6
  br i1 %exitcond.not.i.i154.not, label %.lr.ph156, label %.preheader.split.i13.i

.preheader35.i.i:                                 ; preds = %.lr.ph156
  %i.kj = add i64 %.sroa.04.0.us.i.i155, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.kj, %umax.i.i
  br i1 %exitcond.not.i.i, label %.preheader.split.i13.i, label %.lr.ph156

.preheader.split.i13.i:                           ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.not34.i.i = icmp eq i64 %.fr63.i, 0
  br i1 %.not34.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.split32.us.i14.i

.lr.ph156:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i155 = phi i64 [ %i.kj, %.preheader35.i.i ], [ %.fr63.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.04.0.us.i.i155
  %i.kl = load i8, ptr %i.kk, align 1, !alias.scope !1901, !noalias !1897, !noundef !4
  %i.km = add i64 %.sroa.04.0.us.i.i155, %i.kc    ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.gb
  tail call void @llvm.assume(i1 %i.kn)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.km
  %i.kp = load i8, ptr %i.ko, align 1, !alias.scope !1900, !noalias !1897, !noundef !4
  %.not21.us.i.i = icmp eq i8 %i.kl, %i.kp
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph156
  %i.kq = add i64 %i.kc, %i.ix
  %i.kr = add i64 %i.kq, %.sroa.04.0.us.i.i155
  br label %bb.av

bb.au:                                            ; preds = %.lr.ph.split.us.i.i6
  %i.ks = add i64 %i.kc, %i.gf
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.kt = phi i64 [ %i.kr, %bb.at ], [ %i.ks, %bb.au ] ; 2 uses
  %i.ku = add i64 %i.kt, %i.gh                    ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.gb
  br i1 %i.kv, label %.lr.ph.split.us.i.i6, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.split32.us.i14.i:                                ; preds = %.preheader.split.i13.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.iw, i64 noundef range(i64 0, -9223372036854775808) %i.gf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28, !noalias !1903
  unreachable

_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %bb.ak, %.preheader36.i.i.preheader, %.preheader36.i.i, %bb.av, %bb.as, %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i, %bb.ag, %bb.u, %.preheader.split.i13.i, %bb.ap, %bb.ah, %bb.x, %bb.af, %.preheader.i3
  %storemerge.i.sink.i = phi i8 [ 0, %bb.ap ], [ 0, %bb.ah ], [ 1, %bb.x ], [ 0, %bb.as ], [ 0, %.preheader.i3 ], [ 1, %bb.af ], [ 1, %.preheader.split.i13.i ], [ 0, %bb.av ], [ %.promoted52.i, %bb.u ], [ 1, %.preheader.i10.us.us.i ], [ 1, %.preheader36.i.i ], [ 1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i ], [ 1, %bb.ag ], [ 1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i ], [ 1, %.preheader.i10.us.us.i.preheader ], [ 0, %bb.ak ], [ 1, %.preheader36.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread

bb.aw:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.kw = icmp eq i32 %bcmp, 0
  %i.kx = zext i1 %i.kw to i8
  br label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @120) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @133) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !1911
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !1911
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !1911
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !1911
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !1911
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !1911
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !1911
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !1911
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !1911
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !1911
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !1912, !nonnull !4, !align !9, !noundef !4
  %i.ad = call noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i) #27, !noalias !1912 ; 2 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsdTU8hOCbdCr_8uu_touch.exit

bb.h:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !1912, !noundef !4 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1913
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i
    i64 1, label %bb.k
  ], !prof !8

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !1914, !noalias !1913
  store i8 3, ptr %i.a, align 8, !alias.scope !1914, !noalias !1913
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #27, !noalias !1912
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1913
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !1912
  br label %_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsdTU8hOCbdCr_8uu_touch.exit

_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsdTU8hOCbdCr_8uu_touch.exit: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write9write_fmtCsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtB4_12SpecWriteFmt14spec_write_fmtCsdTU8hOCbdCr_8uu_touch.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15, ptr noundef nonnull %1, ptr noundef nonnull %2) #27, !inline_history !1915
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBK_3ops8function6FnOnceTlQNtNtBK_3fmt9FormatterEE9call_onceCsdTU8hOCbdCr_8uu_touch(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1920
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0) #27, !noalias !1920
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !1920, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !1920, !noundef !4
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1921)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !5, !alias.scope !1921, !noalias !1920, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsdTU8hOCbdCr_8uu_touch.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1921
  br label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsdTU8hOCbdCr_8uu_touch.exit

_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsdTU8hOCbdCr_8uu_touch.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1920
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQNtNtCs7tKScEop1B6_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsdTU8hOCbdCr_8uu_touch.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @114, ptr noundef nonnull %1, ptr noundef nonnull %2) #27, !inline_history !1922
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtB4_6UError5usageCsdTU8hOCbdCr_8uu_touch(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

end_hunk_0
