Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_types-b69712832ae71271.influxdb3_types.6c0bac817ad119d5-cgu.1?download=true
inline.NumInlined: 95
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.do = load i64, ptr %i.b, align 8, !range !5, !alias.scope !165, !noundef !4
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.dp, label %bb.ab, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ds = load i8, ptr %i.dr, align 2, !range !166, !alias.scope !167, !noundef !4
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %.promoted.i = load i64, ptr %i.dq, align 8, !alias.scope !165 ; 12 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !167, !nonnull !4, !noundef !4 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !167, !noundef !4 ; 14 uses
  %.promoted26.i = load i8, ptr %i.du, align 8, !alias.scope !167 ; 2 uses
  %i.dz = trunc nuw i8 %.promoted26.i to i1
  %i.ea = icmp eq i64 %.promoted.i, 0
  br i1 %i.ea, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.dy
  br i1 %.not.i.i.i.peel, label %bb.t, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.s
  %i.eb = icmp eq i64 %.promoted.i, %i.dy
  br i1 %i.eb, label %bb.u, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.promoted.i
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !168, !noalias !169, !noundef !4
  %i.ee = icmp sgt i8 %i.ed, -65
  br i1 %i.ee, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %.split.i.i.i.peel, %.lr.ph.i5
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.promoted.i ; 4 uses
  %i.eg = icmp samesign eq i64 %.promoted.i, %i.dy
  br i1 %i.eg, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = load i8, ptr %i.ef, align 1, !noalias !170, !noundef !4 ; 5 uses
  %i.ei = icmp sgt i8 %i.eh, -1
  br i1 %i.ei, label %bb.w, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel: ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.ek = and i8 %i.eh, 31
  %i.el = zext nneg i8 %i.ek to i32               ; 3 uses
  %i.em = add nuw nsw i64 %.promoted.i, 1
  %i.en = icmp samesign ne i64 %i.em, %i.dy
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = load i8, ptr %i.ej, align 1, !noalias !170, !noundef !4
  %i.ep = shl nuw nsw i32 %i.el, 6
  %i.eq = and i8 %i.eo, 63
  %i.er = zext nneg i8 %i.eq to i32               ; 2 uses
  %i.es = or disjoint i32 %i.ep, %i.er
  %i.et = icmp samesign ugt i8 %i.eh, -33
  br i1 %i.et, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel, label %bb.x

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.ev = add nuw nsw i64 %.promoted.i, 2
  %i.ew = icmp samesign ne i64 %i.ev, %i.dy
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = load i8, ptr %i.eu, align 1, !noalias !170, !noundef !4
  %i.ey = shl nuw nsw i32 %i.er, 6
  %i.ez = and i8 %i.ex, 63
  %i.fa = zext nneg i8 %i.ez to i32
  %i.fb = or disjoint i32 %i.ey, %i.fa            ; 2 uses
  %i.fc = shl nuw nsw i32 %i.el, 12
  %i.fd = or disjoint i32 %i.fb, %i.fc
  %i.fe = icmp samesign ugt i8 %i.eh, -17
  br i1 %i.fe, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel, label %bb.x

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.fg = add nuw nsw i64 %.promoted.i, 3
  %i.fh = icmp samesign ne i64 %i.fg, %i.dy
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = load i8, ptr %i.ff, align 1, !noalias !170, !noundef !4
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

bb.x:                                             ; preds = %bb.w, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel ], [ %i.fp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel ], [ %i.es, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel ], [ %i.fq, %bb.w ] ; 4 uses
  %i.fr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.fr)
  br i1 %i.dz, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.y

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

bb.ab:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !165, !noundef !4 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, -1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !165, !nonnull !4, !noundef !4 ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !165, !noundef !4 ; 14 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !165, !nonnull !4, !noundef !4 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !165, !noundef !4 ; 12 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gh = add nsw i64 %i.gf, -1                   ; 4 uses
  br i1 %i.fx, label %bb.ah, label %bb.as

bb.ac:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.z ], [ %..i.i.peel, %bb.aa ], [ 1, %bb.y ]
  %i.gi = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
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
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !168, !noalias !172, !noundef !4
  %i.gn = icmp sgt i8 %i.gm, -65
  br i1 %i.gn, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae, %.split.i.i.i, %bb.ac
  %i.go = icmp samesign eq i64 %i.gi, %i.dy
  br i1 %i.go, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.gi
  %i.gq = load i8, ptr %i.gp, align 1, !noalias !173, !noundef !4 ; 3 uses
  %i.gr = icmp sgt i8 %i.gq, -1
  br i1 %i.gr, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i: ; preds = %bb.ag
  %i.gs = add nuw nsw i64 %i.gi, 1
  %i.gt = icmp samesign ne i64 %i.gs, %i.dy
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp samesign ugt i8 %i.gq, -33
  br i1 %i.gu, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i
  %i.gv = add nuw nsw i64 %i.gi, 2
  %i.gw = icmp samesign ne i64 %i.gv, %i.dy
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp samesign ugt i8 %i.gq, -17
  br i1 %i.gx, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i
  %i.gy = add nuw nsw i64 %i.gi, 3
  %i.gz = icmp samesign ne i64 %i.gy, %i.dy
  tail call void @llvm.assume(i1 %i.gz)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ae, %.split.i.i.i, %bb.t, %.split.i.i.i.peel
  %.lcssa144 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.t ], [ %i.gi, %.split.i.i.i ], [ %i.gi, %bb.ae ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dy, i64 noundef %.lcssa144, i64 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #20, !noalias !172
  unreachable

bb.ah:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %.promoted.i11 = load i64, ptr %i.gg, align 8, !alias.scope !174 ; 2 uses
  %i.ha = add i64 %.promoted.i11, %i.gh           ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.gb
  br i1 %i.hb, label %.lr.ph.i14, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.ah
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !174, !noundef !4
  %i.he = load i64, ptr %i.dq, align 8, !alias.scope !174
  %.fr208 = freeze i64 %i.he                      ; 8 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !174
  %umax49.i17 = tail call i64 @llvm.umax.i64(i64 %.fr208, i64 range(i64 0, -9223372036854775808) %i.gf)
  %i.hh = add i64 %.fr208, -1                     ; 2 uses
  %.first_iter = icmp ult i64 %i.hh, %i.gf
  %exitcond.not.i19269.not = icmp ult i64 %.fr208, %i.gf
  %invariant.op351 = sub i64 1, %.fr208
  %.not272 = icmp eq i64 %.fr208, 0               ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph.i14
  %i.hi = phi i64 [ %.promoted.i11, %.lr.ph.i14 ], [ %i.hs, %bb.ak ] ; 6 uses
  %i.hj = phi i64 [ %i.ha, %.lr.ph.i14 ], [ %i.ht, %bb.ak ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !175, !noundef !4
  %i.hm = and i8 %i.hl, 63
  %i.hn = zext nneg i8 %i.hm to i64
  %i.ho = shl nuw i64 1, %i.hn
  %i.hp = and i64 %i.ho, %i.hd
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %bb.aj, label %.preheader90.preheader

.preheader90.preheader:                           ; preds = %bb.ai
  br i1 %exitcond.not.i19269.not, label %.lr.ph281, label %.preheader.preheader

bb.aj:                                            ; preds = %bb.ai
  %i.hr = add i64 %i.hi, %i.gf
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ar, %bb.ao, %bb.aj
  %i.hs = phi i64 [ %i.ii, %bb.ar ], [ %i.hr, %bb.aj ], [ %i.ic, %bb.ao ] ; 2 uses
  %i.ht = add i64 %i.hs, %i.gh                    ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.gb
  br i1 %i.hu, label %bb.ai, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.preheader90:                                     ; preds = %bb.ap
  %i.hv = add nuw i64 %.sroa.02.0.i18280, 1       ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %i.hv, %umax49.i17
  br i1 %exitcond.not.i19, label %.preheader.preheader, label %.lr.ph281

.preheader.preheader:                             ; preds = %.preheader90, %.preheader90.preheader
  br i1 %.first_iter, label %.lr.ph271, label %.preheader.preheader.split

.lr.ph271:                                        ; preds = %.preheader.preheader
  br i1 %.not272, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.al

.preheader:                                       ; preds = %bb.am
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.al

bb.al:                                            ; preds = %.lr.ph271, %.preheader
  %.sroa.2.0.i22.us283 = phi i64 [ %4, %.preheader ], [ %.fr208, %.lr.ph271 ]
  %4 = add i64 %.sroa.2.0.i22.us283, -1           ; 4 uses
  %i.hw = add i64 %4, %i.hi                       ; 3 uses
  %i.hx = icmp ult i64 %i.hw, %i.gb
  br i1 %i.hx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gd, i64 %4
  %i.hz = load i8, ptr %i.hy, align 1, !alias.scope !176, !noundef !4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.hw
  %i.ib = load i8, ptr %i.ia, align 1, !alias.scope !175, !noundef !4
  %.not.i23 = icmp eq i8 %i.hz, %i.ib
  br i1 %.not.i23, label %.preheader, label %bb.ao

bb.an:                                            ; preds = %bb.al
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hw, i64 noundef range(i64 0, -9223372036854775808) %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !177
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ic = add i64 %i.hi, %i.hg
  br label %bb.ak

.preheader.preheader.split:                       ; preds = %.preheader.preheader
  br i1 %.not272, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %7

.lr.ph281:                                        ; preds = %.preheader90.preheader, %.preheader90
  %.sroa.02.0.i18280 = phi i64 [ %i.hv, %.preheader90 ], [ %.fr208, %.preheader90.preheader ] ; 4 uses
  %5 = add i64 %.sroa.02.0.i18280, %i.hi          ; 2 uses
  %6 = icmp ult i64 %5, %i.gb
  br i1 %6, label %bb.ap, label %bb.aq

7:                                                ; preds = %.preheader.preheader.split
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hh, i64 noundef range(i64 0, -9223372036854775808) %i.gf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !177
  unreachable

bb.ap:                                            ; preds = %.lr.ph281
  %i.id = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.02.0.i18280
  %i.ie = load i8, ptr %i.id, align 1, !alias.scope !176, !noundef !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.fz, i64 %5
  %i.ig = load i8, ptr %i.if, align 1, !alias.scope !175, !noundef !4
  %.not21.i21 = icmp eq i8 %i.ie, %i.ig
  br i1 %.not21.i21, label %.preheader90, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph281
  %i.ih = add i64 %i.hi, %.fr208
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.gb, i64 %i.ih)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i20, i64 noundef range(i64 0, -9223372036854775808) %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !177
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %.reass228.reass = add i64 %i.hi, %invariant.op351
  %i.ii = add i64 %.reass228.reass, %.sroa.02.0.i18280
  br label %bb.ak

bb.as:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %.promoted.i6 = load i64, ptr %i.gg, align 8, !alias.scope !178 ; 2 uses
  %i.ij = add i64 %.promoted.i6, %i.gh            ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.gb
  br i1 %i.ik, label %.lr.ph.i9, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i9:                                        ; preds = %bb.as
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !178, !noundef !4
  %i.in = load i64, ptr %i.dq, align 8, !alias.scope !178 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ip = load i64, ptr %i.io, align 8, !alias.scope !178 ; 2 uses
  %i.iq = sub i64 %i.gf, %i.ip
  %invariant.op = sub i64 1, %i.in
  br label %bb.at

bb.at:                                            ; preds = %.sink.split.i, %.lr.ph.i9
  %i.ir = phi i64 [ %.promoted.i6, %.lr.ph.i9 ], [ %.ph71.i, %.sink.split.i ] ; 6 uses
  %i.is = phi i64 [ %i.fw, %.lr.ph.i9 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.it = phi i64 [ %i.ij, %.lr.ph.i9 ], [ %i.jc, %.sink.split.i ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !alias.scope !179, !noundef !4
  %i.iw = and i8 %i.iv, 63
  %i.ix = zext nneg i8 %i.iw to i64
  %i.iy = shl nuw i64 1, %i.ix
  %i.iz = and i64 %i.iy, %i.im
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jb = add i64 %i.ir, %i.gf
  br label %.sink.split.i

bb.av:                                            ; preds = %bb.at
  %.sroa.0.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.is, i64 %i.in) ; 4 uses
  %umax49.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.gf)
  %exitcond.not.i264.not = icmp ult i64 %.sroa.0.0.i.i, %i.gf
  br i1 %exitcond.not.i264.not, label %.lr.ph266, label %.preheader29.preheader

.sink.split.i:                                    ; preds = %bb.be, %bb.bb, %bb.au
  %.sink.i = phi i64 [ %i.iq, %bb.bb ], [ 0, %bb.be ], [ 0, %bb.au ]
  %.ph71.i = phi i64 [ %i.jr, %bb.bb ], [ %i.jx, %bb.be ], [ %i.jb, %bb.au ] ; 2 uses
  %i.jc = add i64 %.ph71.i, %i.gh                 ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.gb
  br i1 %i.jd, label %bb.at, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.aw:                                            ; preds = %bb.bc
  %i.je = add nuw i64 %.sroa.02.0.i265, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.je, %umax49.i
  br i1 %exitcond.not.i, label %.preheader29.preheader, label %.lr.ph266

.preheader29.preheader:                           ; preds = %bb.aw, %bb.av
  %i.jf = icmp ult i64 %i.is, %i.in
  br i1 %i.jf, label %.lr.ph268, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph266:                                        ; preds = %bb.av, %bb.aw
  %.sroa.02.0.i265 = phi i64 [ %i.je, %bb.aw ], [ %.sroa.0.0.i.i, %bb.av ] ; 4 uses
  %i.jg = add i64 %.sroa.02.0.i265, %i.ir         ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.gb
  br i1 %i.jh, label %bb.bc, label %bb.bd

.preheader29:                                     ; preds = %bb.az
  %i.ji = icmp ult i64 %i.is, %i.jj
  br i1 %i.ji, label %.lr.ph268, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph268:                                        ; preds = %.preheader29.preheader, %.preheader29
  %.sroa.2.0.i267 = phi i64 [ %i.jj, %.preheader29 ], [ %i.in, %.preheader29.preheader ]
  %i.jj = add i64 %.sroa.2.0.i267, -1             ; 6 uses
  %i.jk = icmp ult i64 %i.jj, %i.gf
  br i1 %i.jk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph268
  %i.jl = add i64 %i.jj, %i.ir                    ; 3 uses
  %i.jm = icmp ult i64 %i.jl, %i.gb
  br i1 %i.jm, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %.lr.ph268
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jj, i64 noundef range(i64 0, -9223372036854775808) %i.gf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !181
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.jj
  %i.jo = load i8, ptr %i.jn, align 1, !alias.scope !180, !noundef !4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.jl
  %i.jq = load i8, ptr %i.jp, align 1, !alias.scope !179, !noundef !4
  %.not.i10 = icmp eq i8 %i.jo, %i.jq
  br i1 %.not.i10, label %.preheader29, label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jl, i64 noundef range(i64 0, -9223372036854775808) %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !181
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.jr = add i64 %i.ir, %i.ip
  br label %.sink.split.i

bb.bc:                                            ; preds = %.lr.ph266
  %i.js = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.02.0.i265
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !180, !noundef !4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.jg
  %i.jv = load i8, ptr %i.ju, align 1, !alias.scope !179, !noundef !4
  %.not21.i = icmp eq i8 %i.jt, %i.jv
  br i1 %.not21.i, label %bb.aw, label %bb.be

bb.bd:                                            ; preds = %.lr.ph266
  %i.jw = add i64 %i.ir, %.sroa.0.0.i.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.gb, i64 %i.jw)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !181
  unreachable

bb.be:                                            ; preds = %bb.bc
  %.reass.reass = add i64 %i.ir, %invariant.op
  %i.jx = add i64 %.reass.reass, %.sroa.02.0.i265
  br label %.sink.split.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.sink.split.i, %.preheader29.preheader, %.preheader29, %bb.ak, %.lr.ph271, %.preheader, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i, %bb.ag, %bb.u, %bb.as, %.preheader.preheader.split, %bb.ah, %bb.x, %bb.af, %.preheader.i4
  %.sroa.0.025 = phi i8 [ 1, %.preheader ], [ 0, %bb.ah ], [ 0, %.preheader.i4 ], [ 1, %bb.af ], [ 1, %.lr.ph271 ], [ 1, %bb.x ], [ 1, %.preheader.preheader.split ], [ 0, %bb.as ], [ %.promoted26.i, %bb.u ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i ], [ 1, %.preheader29 ], [ 1, %bb.ag ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i ], [ 0, %bb.ak ], [ 0, %.sink.split.i ], [ 1, %.preheader29.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.bf:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.jy = icmp eq i32 %bcmp, 0
  %i.jz = zext i1 %i.jy to i8
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @58, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs9h7Hq22ZyhR_15influxdb3_types(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @59, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs9h7Hq22ZyhR_15influxdb3_types(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9h7Hq22ZyhR_15influxdb3_types(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCsgJv5yGpdWgp_3hex6encodeRINtNtCscdodAO9FK5_5alloc3vec3VechEECs9h7Hq22ZyhR_15influxdb3_types(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMNtNtCs8tMIthlWNBj_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECs9h7Hq22ZyhR_15influxdb3_types(ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCsIdnmPPg5ba_10data_types14namespace_nameNtB5_13NamespaceNameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoE9drop_slowBH_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCscdodAO9FK5_5alloc6stringNtB5_13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtB6_7Display3fmtCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 -1, i64 -9223372036854775808}
!4 = !{}
!5 = !{i64 0, i64 2}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
