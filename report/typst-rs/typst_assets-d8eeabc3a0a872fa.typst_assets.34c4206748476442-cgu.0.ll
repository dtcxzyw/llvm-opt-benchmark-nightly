Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_assets-d8eeabc3a0a872fa.typst_assets.34c4206748476442-cgu.0?download=true
inline.NumInlined: 197
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category:bb.a

bb.s:                                             ; preds = %bb.r
  %i.ep = load i8, ptr %.sroa.057.0.ph, align 1, !noalias !105, !noundef !4 ; 5 uses
  %i.eq = icmp sgt i8 %i.ep, -1
  br i1 %i.eq, label %bb.t, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i50

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i50: ; preds = %bb.s
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.057.0.ph, i64 1 ; 2 uses
  %i.es = and i8 %i.ep, 31
  %i.et = zext nneg i8 %i.es to i32               ; 3 uses
  %i.eu = icmp ne ptr %i.er, %i.b
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = load i8, ptr %i.er, align 1, !noalias !105, !noundef !4
  %i.ew = shl nuw nsw i32 %i.et, 6
  %i.ex = and i8 %i.ev, 63
  %i.ey = zext nneg i8 %i.ex to i32               ; 2 uses
  %i.ez = or disjoint i32 %i.ew, %i.ey
  %i.fa = icmp samesign ugt i8 %i.ep, -33
  br i1 %i.fa, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i53, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fb = zext nneg i8 %i.ep to i32
  br label %bb.u

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i53: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i50
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.057.0.ph, i64 2 ; 2 uses
  %i.fd = icmp ne ptr %i.fc, %i.b
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = load i8, ptr %i.fc, align 1, !noalias !105, !noundef !4
  %i.ff = shl nuw nsw i32 %i.ey, 6
  %i.fg = and i8 %i.fe, 63
  %i.fh = zext nneg i8 %i.fg to i32
  %i.fi = or disjoint i32 %i.ff, %i.fh            ; 2 uses
  %i.fj = shl nuw nsw i32 %i.et, 12
  %i.fk = or disjoint i32 %i.fi, %i.fj
  %i.fl = icmp samesign ugt i8 %i.ep, -17
  br i1 %i.fl, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i54, label %bb.u

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i54: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i53
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.057.0.ph, i64 3 ; 2 uses
  %i.fn = icmp ne ptr %i.fm, %i.b
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = load i8, ptr %i.fm, align 1, !noalias !105, !noundef !4
  %i.fp = shl nuw nsw i32 %i.et, 18
  %i.fq = and i32 %i.fp, 1835008
  %i.fr = shl nuw nsw i32 %i.fi, 6
  %i.fs = and i8 %i.fo, 63
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fr, %i.ft
  %i.fv = or disjoint i32 %i.fu, %i.fq
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i50, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i54, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i53
  %.sroa.4.0.i51.ph = phi i32 [ %i.fk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i53 ], [ %i.fv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i54 ], [ %i.ez, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i50 ], [ %i.fb, %bb.t ] ; 2 uses
  %i.fw = icmp samesign ult i32 %.sroa.4.0.i51.ph, 1114112
  tail call void @llvm.assume(i1 %i.fw)
  switch i32 %.sroa.4.0.i51.ph, label %bb.w [
    i32 824, label %bb.o
    i32 8402, label %bb.o
  ]

bb.v:                                             ; preds = %bb.r
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @454) #19
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.fx = tail call fastcc noundef i32 @_RNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.fx, -1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %bb.o

bb.x:                                             ; preds = %bb.o
  switch i32 %.sroa.012.0.fr, label %bb.z [
    i32 124, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit
    i32 8764, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit
    i32 44, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split
    i32 58, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split
    i32 59, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split
  ]

default.unreachable87:                            ; preds = %bb.o
  unreachable

bb.y:                                             ; preds = %bb.o
  %i.fy = icmp ugt i32 %.sroa.012.0.fr, 8516
  br i1 %i.fy, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %switch.early.test, %bb.y, %bb.x, %bb.o
  %i.fz = icmp ult i32 %.sroa.012.0.fr, 1114112
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = trunc i32 %.sroa.012.0.fr to i16        ; 4 uses
  %i.gb = icmp ult i16 %i.ga, 1024
  br i1 %i.gb, label %switch.lookup, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gc = icmp ult i32 %.sroa.012.0.fr, 8519
  br i1 %i.gc, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %switch.early.test

switch.early.test:                                ; preds = %bb.aa
  %switch.tableidx = add i32 %.sroa.012.0.fr, -8706 ; 2 uses
  %i.gd = icmp ult i32 %switch.tableidx, 27
  %switch.shifted = lshr i32 117440513, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.gd, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.ge = add i16 %i.ga, -8192
  %or.cond3 = icmp ult i16 %i.ge, 3072
  br i1 %or.cond3, label %bb.ac, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.gf = add nsw i16 %i.ga, -7168
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.ac, %bb.z
  %i.gg = phi i16 [ %i.gf, %bb.ac ], [ %i.ga, %bb.z ]
  %switch.idx.cast = zext nneg i8 %2 to i16
  %switch.idx.mult = shl nuw nsw i16 %switch.idx.cast, 12
  %i.gh = add nuw nsw i16 %switch.idx.mult, %i.gg ; 10 uses
  %i.gi = icmp samesign ult i16 %i.gh, 4219
  %.sroa.05.0..i = select i1 %i.gi, i64 0, i64 118 ; 2 uses
  %i.gj = add nuw nsw i64 %.sroa.05.0..i, 59      ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gj
  %.val12.1.i = load i16, ptr %i.gk, align 2, !noalias !106, !noundef !4
  %i.gl = icmp ult i16 %i.gh, %.val12.1.i
  %.sroa.05.0..1.i = select i1 %i.gl, i64 %.sroa.05.0..i, i64 %i.gj ; 2 uses
  %i.gm = add nuw nsw i64 %.sroa.05.0..1.i, 29    ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gm
  %.val12.2.i = load i16, ptr %i.gn, align 2, !noalias !106, !noundef !4
  %i.go = icmp ult i16 %i.gh, %.val12.2.i
  %.sroa.05.0..2.i = select i1 %i.go, i64 %.sroa.05.0..1.i, i64 %i.gm ; 2 uses
  %i.gp = add nuw nsw i64 %.sroa.05.0..2.i, 15    ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gp
  %.val12.3.i = load i16, ptr %i.gq, align 2, !noalias !106, !noundef !4
  %i.gr = icmp ult i16 %i.gh, %.val12.3.i
  %.sroa.05.0..3.i = select i1 %i.gr, i64 %.sroa.05.0..2.i, i64 %i.gp ; 2 uses
  %i.gs = add nuw nsw i64 %.sroa.05.0..3.i, 7     ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gs
  %.val12.4.i = load i16, ptr %i.gt, align 2, !noalias !106, !noundef !4
  %i.gu = icmp ult i16 %i.gh, %.val12.4.i
  %.sroa.05.0..4.i = select i1 %i.gu, i64 %.sroa.05.0..3.i, i64 %i.gs ; 2 uses
  %i.gv = add nuw nsw i64 %.sroa.05.0..4.i, 4     ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gv
  %.val12.5.i = load i16, ptr %i.gw, align 2, !noalias !106, !noundef !4
  %i.gx = icmp ult i16 %i.gh, %.val12.5.i
  %.sroa.05.0..5.i = select i1 %i.gx, i64 %.sroa.05.0..4.i, i64 %i.gv ; 2 uses
  %i.gy = add nuw nsw i64 %.sroa.05.0..5.i, 2     ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gy
  %.val12.6.i = load i16, ptr %i.gz, align 2, !noalias !106, !noundef !4
  %i.ha = icmp ult i16 %i.gh, %.val12.6.i
  %.sroa.05.0..6.i = select i1 %i.ha, i64 %.sroa.05.0..5.i, i64 %i.gy ; 2 uses
  %i.hb = add nuw nsw i64 %.sroa.05.0..6.i, 1     ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.hb
  %.val12.7.i = load i16, ptr %i.hc, align 2, !noalias !106, !noundef !4
  %i.hd = icmp ult i16 %i.gh, %.val12.7.i
  %.sroa.05.0..7.i = select i1 %i.hd, i64 %.sroa.05.0..6.i, i64 %i.hb ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %.sroa.05.0..7.i ; 2 uses
  %.val15.i = load i16, ptr %i.he, align 2, !noalias !106, !noundef !4 ; 2 uses
  %i.hf = icmp ult i16 %i.gh, %.val15.i
  br i1 %i.hf, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_.exit

_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_.exit: ; preds = %switch.lookup
  %i.hg = getelementptr i8, ptr %i.he, i64 2
  %.val16.i = load i8, ptr %i.hg, align 2, !noalias !106
  %.val16.fr.i = freeze i8 %.val16.i
  %i.hh = and i8 %.val16.fr.i, 15
  %i.hi = zext nneg i8 %i.hh to i16
  %i.hj = add nuw nsw i16 %.val15.i, %i.hi
  %i.hk = icmp samesign ugt i16 %i.gh, %i.hj      ; 2 uses
  %i.hl = zext i1 %i.hk to i64
  %i.hm = add nuw nsw i64 %.sroa.05.0..7.i, %i.hl ; 2 uses
  br i1 %i.hk, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_.exit
  %i.hn = icmp samesign ult i64 %i.hm, 236
  br i1 %i.hn, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.hm
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hq = load i8, ptr %i.hp, align 2, !noundef !4 ; 2 uses
  %i.hr = lshr i8 %i.hq, 4                        ; 2 uses
  %i.hs = icmp ult i8 %i.hq, -32
  br i1 %i.hs, label %switch.hole_check93, label %bb.af

bb.af:                                            ; preds = %switch.hole_check93, %bb.ae
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @462, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @464) #19
  unreachable

bb.ag:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 236, i64 noundef 236, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #19
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split: ; preds = %bb.x, %bb.x, %bb.x
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit

switch.hole_check93:                              ; preds = %bb.ae
  %switch.maskindex = zext nneg i8 %i.hr to i16
  %switch.shifted95 = lshr i16 14199, %switch.maskindex
  %switch.lobit96 = trunc i16 %switch.shifted95 to i1
  br i1 %switch.lobit96, label %switch.lookup94, label %bb.af, !prof !107

switch.lookup94:                                  ; preds = %switch.hole_check93
  %i.ht = zext nneg i8 %i.hr to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category, i64 %i.ht
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit: ; preds = %switch.early.test, %switch.lookup94, %bb.x, %bb.x, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split, %switch.lookup, %bb.a, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_.exit, %bb.ab, %bb.w, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtNtB4_4char7convert14ParseCharErrorE6unwrapCs4wS76oGtFbW_12typst_assets.exit, %bb.aa, %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit47
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit47 ], [ 0, %bb.a ], [ 0, %bb.ab ], [ 13, %bb.aa ], [ 1, %bb.x ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_.exit ], [ 0, %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtNtB4_4char7convert14ParseCharErrorE6unwrapCs4wS76oGtFbW_12typst_assets.exit ], [ 1, %bb.x ], [ %switch.load, %switch.lookup94 ], [ 0, %switch.lookup ], [ 0, %bb.w ], [ 14, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split ], [ 13, %switch.early.test ]
  ret i8 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo2of(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef %1, i8 noundef range(i8 0, 3) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i8 @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef %2) ; 2 uses
  %i.b = icmp ne i8 %i.a, 0
  %or.cond.not = or i1 %3, %i.b
  br i1 %or.cond.not, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i8 @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef 0) ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %switch.lookup

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc noundef i8 @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef 2) ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %switch.lookup

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef i8 @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef 1)
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.03.0 = phi i8 [ %i.a, %bb.a ], [ %i.g, %bb.d ], [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  %i.h = zext nneg i8 %.sroa.03.0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo2of, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef zeroext i1 @_RNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.not24.i = icmp samesign eq i64 %1, 0
  br i1 %.not24.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = load i8, ptr %0, align 1, !alias.scope !114, !noalias !115, !noundef !4 ; 5 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i: ; preds = %bb.b
  %i.e = and i8 %i.c, 31
  %i.f = zext nneg i8 %i.e to i32                 ; 3 uses
  %i.g = icmp samesign ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.i = load i8, ptr %i.b, align 1, !alias.scope !114, !noalias !115, !noundef !4
  %i.j = shl nuw nsw i32 %i.f, 6
  %i.k = and i8 %i.i, 63
  %i.l = zext nneg i8 %i.k to i32                 ; 2 uses
  %i.m = or disjoint i32 %i.j, %i.l
  %i.n = icmp samesign ugt i8 %i.c, -33
  br i1 %i.n, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %i.c to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i
  %i.p = icmp samesign ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.r = load i8, ptr %i.h, align 1, !alias.scope !114, !noalias !115, !noundef !4
  %i.s = shl nuw nsw i32 %i.l, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.f, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.c, -17
  br i1 %i.y, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i
  %i.z = icmp samesign ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i8, ptr %i.q, align 1, !alias.scope !114, !noalias !115, !noundef !4
  %i.ac = shl nuw nsw i32 %i.f, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i
  %spec.select.i = phi i32 [ %i.m, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i ], [ %i.o, %bb.c ], [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i ], [ %i.x, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i ]
  %.sroa.0.021.i = phi ptr [ %i.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i ], [ %i.b, %bb.c ], [ %i.aa, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i ] ; 5 uses
  %i.aj = icmp eq ptr %.sroa.0.021.i, %i.a
  br i1 %i.aj, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i
  %i.ak = load i8, ptr %.sroa.0.021.i, align 1, !alias.scope !114, !noalias !116, !noundef !4 ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 1
  %i.an = icmp ne ptr %i.am, %i.a
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ugt i8 %i.ak, -33
  br i1 %i.ao, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 2
  %i.aq = icmp ne ptr %i.ap, %i.a
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ugt i8 %i.ak, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 3
  %i.at = icmp ne ptr %i.as, %i.a
  tail call void @llvm.assume(i1 %i.at)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit

_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i
  switch i32 %spec.select.i, label %bb.e [
    i32 44, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit
    i32 59, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit
    i32 8291, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit
  ]

bb.e:                                             ; preds = %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit: ; preds = %bb.a, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i, %bb.d, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit, %bb.e
  %.sroa.04.0.i = phi i1 [ true, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit ], [ true, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit ], [ true, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit ], [ false, %bb.e ], [ false, %bb.d ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i ], [ false, %bb.a ]
  ret i1 %.sroa.04.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 -1, 818) i32 @_RNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = icmp eq i64 %1, 2
  br i1 %i.a, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i: ; preds = %.lr.ph.i
  %i.b = load i16, ptr %0, align 1
  %i.c = icmp ne i16 8481, %i.b
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.1

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.1: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i
  %i.f = load i16, ptr %0, align 1
  %i.g = icmp ne i16 15649, %i.f
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.2

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.2: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.1
  %i.j = load i16, ptr %0, align 1
  %i.k = icmp ne i16 9766, %i.j
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.3

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.3: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.2
  %i.n = load i16, ptr %0, align 1
  %i.o = icmp ne i16 10794, %i.n
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.4

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.4: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.3
  %i.r = load i16, ptr %0, align 1
  %i.s = icmp ne i16 15658, %i.r
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.5

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.5: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.4
  %i.v = load i16, ptr %0, align 1
  %i.w = icmp ne i16 11051, %i.v
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.6

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.6: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.5
  %i.z = load i16, ptr %0, align 1
  %i.aa = icmp ne i16 15659, %i.z
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.7

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.7: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.6
  %i.ad = load i16, ptr %0, align 1
  %i.ae = icmp ne i16 11565, %i.ad
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.8

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.8: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.7
  %i.ah = load i16, ptr %0, align 1
  %i.ai = icmp ne i16 15661, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.9

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.9: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.8
  %i.al = load i16, ptr %0, align 1
  %i.am = icmp ne i16 15917, %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.10

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.10: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.9
  %i.ap = load i16, ptr %0, align 1
  %i.aq = icmp ne i16 12079, %i.ap
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.11

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.11: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.10
  %i.at = load i16, ptr %0, align 1
  %i.au = icmp ne i16 15663, %i.at
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.12

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.12: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.11
  %i.ax = load i16, ptr %0, align 1
  %i.ay = icmp ne i16 15674, %i.ax
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.13

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.13: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.12
  %i.bb = load i16, ptr %0, align 1
  %i.bc = icmp ne i16 15676, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.14

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.14: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.13
  %i.bf = load i16, ptr %0, align 1
  %i.bg = icmp ne i16 15932, %i.bf
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.15

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.15: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.14
  %i.bj = load i16, ptr %0, align 1
  %i.bk = icmp ne i16 15677, %i.bj
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.16

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.16: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.15
  %i.bn = load i16, ptr %0, align 1
  %i.bo = icmp ne i16 15678, %i.bn
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.17

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.17: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.16
  %i.br = load i16, ptr %0, align 1
  %i.bs = icmp ne i16 31868, %i.br
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  %spec.select = select i1 %i.bu, i32 817, i32 -1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.17, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.1, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.2, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.3, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.4, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.5, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.6, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.7, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.8, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.9, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.10, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.11, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.12, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.13, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.14, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.15, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.16, %.lr.ph.i
  %.sroa.0.0 = phi i32 [ %spec.select, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.17 ], [ -1, %.lr.ph.i ], [ 800, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i ], [ 801, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.1 ], [ 802, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.2 ], [ 803, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.3 ], [ 804, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.4 ], [ 805, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.5 ], [ 806, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.6 ], [ 807, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.7 ], [ 808, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.8 ], [ 809, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.9 ], [ 810, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.10 ], [ 811, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.11 ], [ 812, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.12 ], [ 813, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.13 ], [ 814, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.14 ], [ 815, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.15 ], [ 816, %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.16 ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef zeroext i1 @_RNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.not24.i = icmp samesign eq i64 %1, 0
  br i1 %.not24.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = load i8, ptr %0, align 1, !alias.scope !123, !noalias !124, !noundef !4 ; 5 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i: ; preds = %bb.b
  %i.e = and i8 %i.c, 31
  %i.f = zext nneg i8 %i.e to i32                 ; 3 uses
  %i.g = icmp samesign ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.i = load i8, ptr %i.b, align 1, !alias.scope !123, !noalias !124, !noundef !4
  %i.j = shl nuw nsw i32 %i.f, 6
  %i.k = and i8 %i.i, 63
  %i.l = zext nneg i8 %i.k to i32                 ; 2 uses
  %i.m = or disjoint i32 %i.j, %i.l
  %i.n = icmp samesign ugt i8 %i.c, -33
  br i1 %i.n, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %i.c to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i
  %i.p = icmp samesign ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.r = load i8, ptr %i.h, align 1, !alias.scope !123, !noalias !124, !noundef !4
  %i.s = shl nuw nsw i32 %i.l, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.f, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.c, -17
  br i1 %i.y, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i
  %i.z = icmp samesign ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i8, ptr %i.q, align 1, !alias.scope !123, !noalias !124, !noundef !4
  %i.ac = shl nuw nsw i32 %i.f, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i
  %spec.select.i = phi i32 [ %i.m, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i ], [ %i.o, %bb.c ], [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i ], [ %i.x, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i ] ; 5 uses
  %.sroa.0.021.i = phi ptr [ %i.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i ], [ %i.b, %bb.c ], [ %i.aa, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i ] ; 5 uses
  %i.aj = icmp eq ptr %.sroa.0.021.i, %i.a
  br i1 %i.aj, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i
  %i.ak = load i8, ptr %.sroa.0.021.i, align 1, !alias.scope !123, !noalias !125, !noundef !4 ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 1
  %i.an = icmp ne ptr %i.am, %i.a
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ugt i8 %i.ak, -33
  br i1 %i.ao, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 2
  %i.aq = icmp ne ptr %i.ap, %i.a
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ugt i8 %i.ak, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 3
  %i.at = icmp ne ptr %i.as, %i.a
  tail call void @llvm.assume(i1 %i.at)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit

_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i
  %i.au = and i32 %spec.select.i, 2097119
  %i.av = add nsw i32 %i.au, -65
  %or.cond4.i.i = icmp ult i32 %i.av, 26
  br i1 %or.cond4.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit
  switch i32 %spec.select.i, label %bb.f [
    i32 305, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
    i32 567, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
    i32 1012, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
    i32 8711, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
    i32 8706, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
    i32 1013, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
    i32 977, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
    i32 1008, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
    i32 981, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
    i32 1009, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
    i32 982, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.aw = add nsw i32 %spec.select.i, -913
  %or.cond2.i.i = icmp ult i32 %i.aw, 17
  %i.ax = add nsw i32 %spec.select.i, -931
  %or.cond3.i.i = icmp ult i32 %i.ax, 7
  %or.cond5.i.i = select i1 %or.cond2.i.i, i1 true, i1 %or.cond3.i.i
  br i1 %or.cond5.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = add nsw i32 %spec.select.i, -945
  %spec.select.i.i = icmp ult i32 %i.ay, 25
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19will_auto_transform0EB1C_.exit: ; preds = %bb.a, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i, %bb.d, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.f, %bb.g
  %.sroa.04.0.i = phi i1 [ true, %bb.e ], [ true, %bb.e ], [ %spec.select.i.i, %bb.g ], [ true, %bb.e ], [ true, %bb.f ], [ true, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ false, %bb.d ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i ], [ false, %bb.a ]
  ret i1 %.sroa.04.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvNtCs4wS76oGtFbW_12typst_assets6mathml22is_stretch_axis_inline(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i32 %0, 65535
  br i1 %i.a, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.b = and i32 %0, 2097150
  %switch = icmp eq i32 %i.b, 126704
  br label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i32 %0 to i16                  ; 8 uses
  %i.d = icmp samesign ult i32 %0, 10231
  %i.e = select i1 %i.d, i64 0, i64 122, !unpredictable !4 ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 61                 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @460, i64 %i.f
  %.val12.1.i = load i16, ptr %i.g, align 2, !noalias !128, !noundef !4
  %i.h = icmp ugt i16 %.val12.1.i, %i.c
  %i.i = select i1 %i.h, i64 %i.e, i64 %i.f, !unpredictable !4 ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 30                 ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @460, i64 %i.j
  %.val12.2.i = load i16, ptr %i.k, align 2, !noalias !128, !noundef !4
  %i.l = icmp ugt i16 %.val12.2.i, %i.c
  %i.m = select i1 %i.l, i64 %i.i, i64 %i.j, !unpredictable !4 ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 15                 ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @460, i64 %i.n
  %.val12.3.i = load i16, ptr %i.o, align 2, !noalias !128, !noundef !4
  %i.p = icmp ugt i16 %.val12.3.i, %i.c
  %i.q = select i1 %i.p, i64 %i.m, i64 %i.n, !unpredictable !4 ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 8                  ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @460, i64 %i.r
  %.val12.4.i = load i16, ptr %i.s, align 2, !noalias !128, !noundef !4
  %i.t = icmp ugt i16 %.val12.4.i, %i.c
  %i.u = select i1 %i.t, i64 %i.q, i64 %i.r, !unpredictable !4 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 4                  ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr @460, i64 %i.v
  %.val12.5.i = load i16, ptr %i.w, align 2, !noalias !128, !noundef !4
  %i.x = icmp ugt i16 %.val12.5.i, %i.c
  %i.y = select i1 %i.x, i64 %i.u, i64 %i.v, !unpredictable !4 ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 2                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @460, i64 %i.z
  %.val12.6.i = load i16, ptr %i.aa, align 2, !noalias !128, !noundef !4
  %i.ab = icmp ugt i16 %.val12.6.i, %i.c
  %i.ac = select i1 %i.ab, i64 %i.y, i64 %i.z, !unpredictable !4 ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @460, i64 %i.ad
  %.val12.7.i = load i16, ptr %i.ae, align 2, !noalias !128, !noundef !4
  %i.af = icmp ugt i16 %.val12.7.i, %i.c
  %i.ag = select i1 %i.af, i64 %i.ac, i64 %i.ad, !unpredictable !4
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @460, i64 %i.ag
  %.val14.i = load i16, ptr %i.ah, align 2, !noalias !128, !noundef !4
  %.not = icmp eq i16 %.val14.i, %i.c
  br label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit: ; preds = %.preheader.preheader, %bb.b
  %.sroa.0.0.in = phi i1 [ %.not, %bb.b ], [ %switch, %.preheader.preheader ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef zeroext i1 @_RNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i32 @_RNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %.not.i = icmp eq i32 %i.a, -1
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.not24.i.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not24.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = load i8, ptr %0, align 1, !alias.scope !141, !noalias !142, !noundef !4 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i: ; preds = %bb.c
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp samesign ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.j = load i8, ptr %i.c, align 1, !alias.scope !141, !noalias !142, !noundef !4
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i8 %i.d to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i
  %i.q = icmp samesign ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.s = load i8, ptr %i.i, align 1, !alias.scope !141, !noalias !142, !noundef !4
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i
  %i.aa = icmp samesign ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !alias.scope !141, !noalias !142, !noundef !4
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i
  %spec.select.i.i.i = phi i32 [ %i.n, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i ], [ %i.p, %bb.d ], [ %i.aj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i ], [ %i.y, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i ]
  %.sroa.0.021.i.i.i = phi ptr [ %i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i ], [ %i.c, %bb.d ], [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i ] ; 5 uses
  %i.ak = icmp eq ptr %.sroa.0.021.i.i.i, %i.b
  br i1 %i.ak, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i
  %i.al = load i8, ptr %.sroa.0.021.i.i.i, align 1, !alias.scope !141, !noalias !143, !noundef !4 ; 3 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 1
  %i.ao = icmp ne ptr %i.an, %i.b
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ap, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 2
  %i.ar = icmp ne ptr %i.aq, %i.b
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ugt i8 %i.al, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 3
  %i.au = icmp ne ptr %i.at, %i.b
  tail call void @llvm.assume(i1 %i.au)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i, %bb.a
  %.sroa.0.0.i = phi i32 [ %i.a, %bb.a ], [ %spec.select.i.i.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i ] ; 6 uses
  %i.av = icmp samesign ult i32 %.sroa.0.0.i, 8968
  %i.aw = select i1 %i.av, i64 0, i64 8, !unpredictable !4 ; 2 uses
  %i.ax = or disjoint i64 %i.aw, 4                ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.ax
  %.val12.1.i = load i32, ptr %i.ay, align 4, !range !144, !noalias !145, !noundef !4
  %i.az = icmp samesign ult i32 %.sroa.0.0.i, %.val12.1.i
  %i.ba = select i1 %i.az, i64 %i.aw, i64 %i.ax, !unpredictable !4 ; 2 uses
  %i.bb = or disjoint i64 %i.ba, 2                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.bb
  %.val12.2.i = load i32, ptr %i.bc, align 4, !range !144, !noalias !145, !noundef !4
  %i.bd = icmp samesign ult i32 %.sroa.0.0.i, %.val12.2.i
  %i.be = select i1 %i.bd, i64 %i.ba, i64 %i.bb, !unpredictable !4 ; 2 uses
  %i.bf = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.bf
  %.val12.3.i = load i32, ptr %i.bg, align 4, !range !144, !noalias !145, !noundef !4
  %i.bh = icmp samesign ult i32 %.sroa.0.0.i, %.val12.3.i
  %i.bi = select i1 %i.bh, i64 %i.be, i64 %i.bf, !unpredictable !4
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.bi ; 2 uses
  %.val15.i = load i32, ptr %i.bj, align 4, !range !144, !noalias !145, !noundef !4 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %.val16.i = load i8, ptr %i.bk, align 4, !noalias !145
  %.not = icmp samesign uge i32 %.sroa.0.0.i, %.val15.i
  %i.bl = zext i8 %.val16.i to i32
  %i.bm = add nuw nsw i32 %.val15.i, %i.bl
  %.not.i.i = icmp samesign ult i32 %.sroa.0.0.i, %i.bm
  %not..i.not = select i1 %.not, i1 %.not.i.i, i1 false
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread: ; preds = %bb.e, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit
  %.sroa.0.0 = phi i1 [ %not..i.not, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit ], [ false, %bb.b ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i ], [ false, %bb.e ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_4char7convert13CharErrorKindNtB6_5Debug3fmtCs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !146, !noundef !4
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 12, i64 11
  %.1.i = select i1 %i.b, ptr @471, ptr @470
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load i8, ptr %0, align 1, !noundef !4
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsa_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @466, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !147, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @467, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.d, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsA_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !151
  store i8 %i.b, ptr %i.a, align 1, !noalias !151
  %i.c = call noundef zeroext i1 @_RNvXsa_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !151
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsB_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !156
  store i8 %i.b, ptr %i.a, align 1, !noalias !156
  %i.c = call noundef zeroext i1 @_RNvXsc_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !156
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsC_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161
  store i8 %i.b, ptr %i.a, align 1, !noalias !161
  %i.c = call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsD_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !166
  store i8 %i.b, ptr %i.a, align 1, !noalias !166
  %i.c = call noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !166
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsa_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = load i8, ptr %0, align 1, !noundef !4    ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.f = and i8 %i.d, 1
  %or.cond.i.i.peel.not = icmp eq i8 %i.f, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.g = and i8 %i.d, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.h = and i8 %i.d, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.i = and i8 %i.d, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.3.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @459, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @459, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @459, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @459, i64 72), %.lr.ph.split.i.i.3.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ]
  %i.j = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ]
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !178, !noundef !4
  %i.m = and i8 %i.d, %i.j
  %i.n = load ptr, ptr %.lcssa56.peel, align 8, !noalias !178, !nonnull !4, !noundef !4
  %i.o = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.l)
  br i1 %i.o, label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.g
  %.sroa.14.0.i = phi i8 [ %i.aw, %bb.g ], [ %i.m, %bb.a ] ; 11 uses
  %.sroa.8.0.i = phi i64 [ %.lcssa, %bb.g ], [ %.lcssa.peel, %bb.a ] ; 6 uses
  %i.p = icmp ult i64 %.sroa.8.0.i, 4
  br i1 %i.p, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.q = icmp eq i8 %.sroa.14.0.i, 0
  br i1 %i.q, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !177
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %.sroa.8.0.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.8.0.i, 1          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val.i.i = load i8, ptr %i.t, align 8, !noalias !178, !noundef !4 ; 4 uses
  %i.u = and i8 %.val.i.i, %i.d
  %i.v = icmp eq i8 %i.u, %.val.i.i
  %i.w = and i8 %.val.i.i, %.sroa.14.0.i
  %i.x = icmp ne i8 %i.w, 0
  %or.cond.i.i = and i1 %i.x, %i.v
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.s, 4
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.y = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %i.s ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.8.0.i, 2          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.i.1 = load i8, ptr %i.aa, align 8, !noalias !178, !noundef !4 ; 4 uses
  %i.ab = and i8 %.val.i.i.1, %i.d
  %i.ac = icmp eq i8 %i.ab, %.val.i.i.1
  %i.ad = and i8 %.val.i.i.1, %.sroa.14.0.i
  %i.ae = icmp ne i8 %i.ad, 0
  %or.cond.i.i.1 = and i1 %i.ae, %i.ac
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.z, 4
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.af = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %i.z ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.8.0.i, 3         ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val.i.i.2 = load i8, ptr %i.ah, align 8, !noalias !178, !noundef !4 ; 4 uses
  %i.ai = and i8 %.val.i.i.2, %i.d
  %i.aj = icmp eq i8 %i.ai, %.val.i.i.2
  %i.ak = and i8 %.val.i.i.2, %.sroa.14.0.i
  %i.al = icmp ne i8 %i.ak, 0
  %or.cond.i.i.2 = and i1 %i.al, %i.aj
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.ag, 4
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.am = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %i.ag ; 2 uses
  %i.an = or disjoint i64 %.sroa.8.0.i, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val.i.i.3 = load i8, ptr %i.ao, align 8, !noalias !178, !noundef !4 ; 4 uses
  %i.ap = and i8 %.val.i.i.3, %i.d
  %i.aq = icmp eq i8 %i.ap, %.val.i.i.3
  %i.ar = and i8 %.val.i.i.3, %.sroa.14.0.i
  %i.as = icmp ne i8 %i.ar, 0
  %or.cond.i.i.3 = and i1 %i.as, %i.aq
  br i1 %or.cond.i.i.3, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.r, %.lr.ph.split.i.i ], [ %i.y, %.lr.ph.split.i.i.1 ], [ %i.af, %.lr.ph.split.i.i.2 ], [ %i.am, %.lr.ph.split.i.i.3 ] ; 2 uses
  %.lcssa = phi i64 [ %i.s, %.lr.ph.split.i.i ], [ %i.z, %.lr.ph.split.i.i.1 ], [ %i.ag, %.lr.ph.split.i.i.2 ], [ %i.an, %.lr.ph.split.i.i.3 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !178, !noundef !4
  %i.av = xor i8 %.val.i.i.lcssa, -1
  %i.aw = and i8 %.sroa.14.0.i, %i.av
  %i.ax = load ptr, ptr %.lcssa56, align 8, !noalias !178, !nonnull !4, !noundef !4
  %i.ay = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 3)
  br i1 %i.ay, label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit, label %bb.g

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.3.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2
  %.sroa.14.0.i65 = phi i8 [ %.sroa.14.0.i, %.backedge.i.i.2 ], [ %.sroa.14.0.i, %.lr.ph.split.i.i.3 ], [ %i.d, %.lr.ph.split.i.i.3.peel ], [ %.sroa.14.0.i, %.backedge.i.i ], [ %.sroa.14.0.i, %.backedge.i.i.1 ], [ %.sroa.14.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.2 ], [ false, %.lr.ph.split.i.i.3 ], [ true, %.lr.ph.split.i.i.3.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !177
  store i8 %.sroa.14.0.i65, ptr %i.c, align 1, !noalias !177
  %.not.i = icmp eq i8 %.sroa.14.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

.loopexit13.sink.split.i:                         ; preds = %bb.f, %bb.e, %bb.d, %.loopexit.i, %.thread.i
  %.sroa.0.0.ph.i = phi i1 [ true, %bb.d ], [ %i.bc, %bb.f ], [ true, %bb.e ], [ false, %.thread.i ], [ false, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !177
  br label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit

bb.d:                                             ; preds = %bb.c
  %i.az = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 3)
  br i1 %i.az, label %.loopexit13.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 2)
  br i1 %i.ba, label %.loopexit13.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store ptr %i.c, ptr %i.b, align 8, !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !180
  store ptr %i.b, ptr %i.a, align 8, !noalias !180
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs4wS76oGtFbW_12typst_assets, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !180
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !181, !nonnull !4, !noundef !4
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !181, !nonnull !4, !noundef !4
  %i.bc = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noundef nonnull @2, ptr noundef nonnull %i.a), !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.b
  %i.bd = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef %i.au)
  br i1 %i.bd, label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit, label %.peel.newph, !llvm.loop !176

_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit: ; preds = %bb.a, %bb.b, %bb.g, %.loopexit13.sink.split.i
  %.sroa.0.0.i = phi i1 [ %.sroa.0.0.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.g ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCs3oUPovFnLWP_4core4char7convertNtB5_14ParseCharErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @296, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !227
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit19, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %.lr.ph.i
  %.lcssa108120.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa108118.i, %bb.n ] ; 3 uses
  %.sroa.0.0115.i = phi i8 [ 0, %.lr.ph.i ], [ %i.bs, %bb.n ]
  %.lcssa92111114.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa92110.i, %bb.n ] ; 7 uses
  %i.f = icmp ult i64 %2, %.lcssa108120.i
  br i1 %i.f, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.b, %bb.e
  %i.g = phi i64 [ %i.u, %bb.e ], [ %.lcssa108120.i, %bb.b ] ; 5 uses
  %i.h = sub nuw i64 %2, %i.g                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.j = icmp samesign ult i64 %i.h, 16
  br i1 %i.j, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %2, %i.g
  br i1 %.not.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.k = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 124, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !noalias !228 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %.loopexit.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.011.i.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !229, !noalias !230, !noundef !4
  %i.q = icmp eq i8 %i.p, 124
  br i1 %i.q, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.m, %bb.c ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.s = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.h
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %i.g, 1
  %i.u = add i64 %i.t, %.sroa.5.0.i.i.i.i         ; 5 uses
  %.not12.i.i.i = icmp ugt i64 %i.u, %2
  %i.v = add i64 %.sroa.5.0.i.i.i.i, %i.g         ; 3 uses
  %or.cond.i.i.not.i = icmp ult i64 %i.v, %2
  br i1 %or.cond.i.i.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i
  br i1 %.not12.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.split.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %lhsc.i = load i8, ptr %i.w, align 1, !alias.scope !226
  %i.x = icmp eq i8 %lhsc.i, 124
  br i1 %i.x, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.e

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.f, %bb.e, %bb.c, %.preheader.i.i.i.i, %bb.d, %bb.b
  %.lcssa108118.i = phi i64 [ %.lcssa108120.i, %bb.b ], [ %2, %bb.d ], [ %2, %.preheader.i.i.i.i ], [ %2, %bb.c ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  %.lcssa92110.i = phi i64 [ %.lcssa92111114.i, %bb.b ], [ %.lcssa92111114.i, %bb.d ], [ %.lcssa92111114.i, %.preheader.i.i.i.i ], [ %.lcssa92111114.i, %bb.c ], [ %i.u, %bb.f ], [ %.lcssa92111114.i, %bb.e ]
  %i.y = phi i1 [ true, %bb.b ], [ true, %bb.d ], [ true, %.preheader.i.i.i.i ], [ true, %bb.c ], [ false, %bb.f ], [ true, %bb.e ]
  %.pn.i = phi i64 [ %2, %bb.b ], [ %2, %bb.d ], [ %2, %.preheader.i.i.i.i ], [ %2, %bb.c ], [ %i.v, %bb.f ], [ %2, %bb.e ]
  %.sroa.4.1.i.ph.i = sub nuw i64 %.pn.i, %.lcssa92111114.i
  %.sroa.0.1.i.ph.i = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa92111114.i
  %i.z = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.ph.i, i64 noundef %.sroa.4.1.i.ph.i), !noalias !227 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 10 uses
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 12 uses
  switch i64 %i.ab, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs4wS76oGtFbW_12typst_assets.exit.i [
    i64 0, label %.loopexit
    i64 1, label %.thread.i
  ]

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs4wS76oGtFbW_12typst_assets.exit.i: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %i.ac = load i16, ptr %i.aa, align 1
  %i.ad = icmp ne i16 30768, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs4wS76oGtFbW_12typst_assets.exit.i
  switch i64 %i.ab, label %.thread.i [
    i64 8, label %bb.h
    i64 9, label %bb.i
    i64 7, label %bb.j
    i64 13, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.aa, align 1
  %i.ah = icmp ne i64 6433466096918090835, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %.thread.i

bb.i:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %i.aa, align 1
  %i.al = xor i64 5283377969485404499, %i.ak
  %i.am = getelementptr i8, ptr %i.aa, i64 8
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = xor i64 67, %i.ao
  %i.aq = or i64 %i.al, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.m, label %.thread.i

bb.j:                                             ; preds = %bb.g
  %i.au = load i32, ptr %i.aa, align 1
  %i.av = xor i32 1196573004, %i.au
  %i.aw = getelementptr i8, ptr %i.aa, i64 3
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = xor i32 1347372359, %i.ax
  %i.az = or i32 %i.av, %i.ay
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %.thread.i

bb.k:                                             ; preds = %bb.g
  %i.bd = load i64, ptr %i.aa, align 1
  %i.be = xor i64 5495882767723286349, %i.bd
  %i.bf = getelementptr i8, ptr %i.aa, i64 5
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 6004504799482758476, %i.bg
  %i.bi = or i64 %i.be, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.m, label %.thread.i

bb.l:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs4wS76oGtFbW_12typst_assets.exit.i
  %i.bm = add i64 %i.ab, -2                       ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 2 uses
  call void @_RNvXs4_NtCs6fhnmY1I3Kb_8bitflags6traitshNtNtB7_6parser8ParseHex9parse_hex(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bm), !noalias !227
  %i.bo = load i64, ptr %i.a, align 8, !range !231, !noalias !232, !noundef !4 ; 2 uses
  %.not64.i = icmp eq i64 %i.bo, -1
  br i1 %.not64.i, label %bb.v, label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.03.0.ptr9.lcssa.i.i = phi ptr [ @459, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @459, i64 24), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @459, i64 48), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @459, i64 72), %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr9.lcssa.i.i, i64 16
  %.val.i67.i = load i8, ptr %i.bp, align 1, !noalias !233, !noundef !4
  br label %bb.n

.thread.i:                                        ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !234
  %i.bq = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef 1) #18, !noalias !234 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wS76oGtFbW_12typst_assets.exit.i.i.i.i.i.i, label %_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets.exit.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wS76oGtFbW_12typst_assets.exit.i.i.i.i.i.i: ; preds = %.thread.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 1, -9223372036854775808) %i.ab) #20, !noalias !235
  unreachable

_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets.exit.i: ; preds = %.thread.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.aa, i64 range(i64 1, -9223372036854775808) %i.ab, i1 false), !noalias !236
  %.sroa.9.sroa.8.0.extract.shift = and i64 %i.ab, -256
  br label %.loopexit

bb.n:                                             ; preds = %bb.v, %bb.m
  %.sroa.031.0.i = phi i8 [ %i.ca, %bb.v ], [ %.val.i67.i, %bb.m ]
  %i.bs = or i8 %.sroa.031.0.i, %.sroa.0.0115.i   ; 2 uses
  br i1 %i.y, label %.loopexit19, label %bb.b

bb.o:                                             ; preds = %bb.l
  %.sroa.45.0.copyload = load i64, ptr %i.e, align 8, !noalias !232 ; 3 uses
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.66.0.copyload = load ptr, ptr %.sroa.66.0..sroa_idx, align 8, !noalias !232 ; 2 uses
  %i.bt = icmp eq i64 %i.bm, 0
  br i1 %i.bt, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !237
  %i.bu = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %i.bm, i64 noundef 1) #18, !noalias !237 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wS76oGtFbW_12typst_assets.exit.i.i.i.i.i.i.i, label %bb.q

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wS76oGtFbW_12typst_assets.exit.i.i.i.i.i.i.i: ; preds = %bb.p
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.bm) #20
          to label %.noexc.i.i unwind label %bb.r, !noalias !238

.noexc.i.i:                                       ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wS76oGtFbW_12typst_assets.exit.i.i.i.i.i.i.i
  unreachable

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 1 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bm, i1 false), !noalias !239
  br label %bb.s

bb.r:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wS76oGtFbW_12typst_assets.exit.i.i.i.i.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6fhnmY1I3Kb_8bitflags6parser10ParseErrorECs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.a) #21, !noalias !227
  resume { ptr, i32 } %i.bw

bb.s:                                             ; preds = %bb.q, %bb.o
  %.sroa.5.0.i.i.i.i.i = phi ptr [ %i.bu, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.o ]
  switch i64 %i.bo, label %bb.t [
    i64 0, label %_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i
    i64 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bx = icmp eq i64 %.sroa.45.0.copyload, 0
  br i1 %i.bx, label %_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4wS76oGtFbW_12typst_assets.exit.sink.split.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4wS76oGtFbW_12typst_assets.exit.sink.split.i.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.66.0.copyload) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.66.0.copyload, i64 noundef %.sroa.45.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !240
  br label %_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.by = icmp eq i64 %.sroa.45.0.copyload, 0
  br i1 %i.by, label %_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4wS76oGtFbW_12typst_assets.exit.sink.split.i.i.i.i

_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i: ; preds = %bb.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4wS76oGtFbW_12typst_assets.exit.sink.split.i.i.i.i, %bb.t, %bb.s
  %i.bz = and i64 %i.bm, -256
  br label %.loopexit

bb.v:                                             ; preds = %bb.l
  %i.ca = load i8, ptr %i.e, align 8, !noalias !232, !noundef !4
  br label %bb.n

.loopexit:                                        ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, %_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i, %_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets.exit.i
  %.sroa.9.sroa.8.sroa.0.1.ph = phi i64 [ %i.bz, %_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i ], [ %.sroa.9.sroa.8.0.extract.shift, %_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets.exit.i ], [ %i.ab, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ]
  %.sroa.9.sroa.0.1.ph = phi i64 [ %i.bm, %_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i ], [ %i.ab, %_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets.exit.i ], [ %i.ab, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ]
  %.sroa.16.1.ph = phi i64 [ %i.bm, %_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i ], [ %i.ab, %_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets.exit.i ], [ undef, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ]
  %.sroa.15.1.ph = phi ptr [ %.sroa.5.0.i.i.i.i.i, %_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i ], [ %i.bq, %_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets.exit.i ], [ undef, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ]
  %.sroa.0.1.ph = phi i64 [ 2, %_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_.exit.i ], [ 1, %_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets.exit.i ], [ %i.ab, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.9.sroa.0.0.insert.ext = and i64 %.sroa.9.sroa.0.1.ph, 255
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.sroa.0.0.insert.ext, %.sroa.9.sroa.8.sroa.0.1.ph
  store i64 %.sroa.0.1.ph, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.15.1.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.1.ph, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.w

.loopexit19:                                      ; preds = %bb.n, %bb.a
  %.sroa.9.sroa.0.1 = phi i8 [ 0, %bb.a ], [ %i.bs, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.sroa.0.1, ptr %i.cb, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %.loopexit19, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsg_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXsa_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsh_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXsc_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsj_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs6fhnmY1I3Kb_8bitflags6traitshNtNtB7_6parser8ParseHex9parse_hex(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { noinline noreturn }
attributes #20 = { noreturn }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = distinct !{!5, i1 true, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets"}
!6 = distinct !{!6, !5, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets: argument 1"}
!7 = distinct !{!7, !5, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets: argument 0"}
!8 = distinct !{!8, i1 true, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets"}
!9 = distinct !{!9, !8, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets: argument 1"}
!10 = distinct !{!10, !8, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets: argument 0"}
!11 = distinct !{!11, i1 true, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets"}
!12 = distinct !{!12, !11, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets: argument 1"}
!13 = distinct !{!13, !11, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets: argument 0"}
!14 = distinct !{!14, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!15 = distinct !{!15, !14, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!16 = distinct !{!16, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!17 = distinct !{!17, !16, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!18 = distinct !{!18, i1 true, !"_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4wS76oGtFbW_12typst_assets"}
!19 = distinct !{!19, !18, !"_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4wS76oGtFbW_12typst_assets: argument 1"}
!20 = distinct !{!20, !18, !"_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4wS76oGtFbW_12typst_assets: argument 0"}
!21 = distinct !{!21, i1 true, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4wS76oGtFbW_12typst_assets"}
!22 = distinct !{!22, !21, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4wS76oGtFbW_12typst_assets: argument 1"}
!23 = distinct !{!23, !21, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4wS76oGtFbW_12typst_assets: argument 0"}
!24 = distinct !{!24, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4wS76oGtFbW_12typst_assets"}
!25 = distinct !{!25, !24, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4wS76oGtFbW_12typst_assets: argument 1"}
!26 = distinct !{!26, !24, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4wS76oGtFbW_12typst_assets: argument 0"}
!27 = distinct !{!27, i1 true, !"_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!28 = distinct !{!28, !27, !"_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!29 = distinct !{!29, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!30 = distinct !{!30, !29, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!31 = !{!17, !15, !13, !12, !10, !9, !7, !6}
!32 = !{!13, !12, !10, !9, !7, !6}
!33 = !{!30, !28, !26, !25, !23, !22, !20, !19}
!34 = !{!26, !25, !23, !22, !20, !19}
!35 = distinct !{!35, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6fhnmY1I3Kb_8bitflags6parser14ParseErrorKindECs4wS76oGtFbW_12typst_assets"}
!36 = distinct !{!36, !35, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6fhnmY1I3Kb_8bitflags6parser14ParseErrorKindECs4wS76oGtFbW_12typst_assets: argument 0"}
!37 = !{!36}
!38 = !{i64 0, i64 3}
!39 = distinct !{!39, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterhENCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB1o_8ElemInfo10attributes0ENtNtNtBa_6traits8iterator8Iterator5chainRSNtB1o_8AttrInfoEB1q_"}
!40 = distinct !{!40, !39, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterhENCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB1o_8ElemInfo10attributes0ENtNtNtBa_6traits8iterator8Iterator5chainRSNtB1o_8AttrInfoEB1q_: argument 0"}
!41 = !{!40}
!42 = distinct !{!42, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBZ_8ElemInfo17get_specific_attr0EB11_"}
!43 = distinct !{!43, !42, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBZ_8ElemInfo17get_specific_attr0EB11_: argument 0"}
!44 = distinct !{!44, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSh16binary_search_byNCINvB2_20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB1p_8ElemInfo17get_specific_attr0E0EB1r_"}
!45 = distinct !{!45, !44, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSh16binary_search_byNCINvB2_20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB1p_8ElemInfo17get_specific_attr0E0EB1r_: argument 0"}
!46 = distinct !{!46, i1 true, !"_RNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB2_8ElemInfo17get_specific_attr"}
!47 = distinct !{!47, !46, !"_RNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB2_8ElemInfo17get_specific_attr: argument 0"}
!48 = distinct !{!48, !44, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSh16binary_search_byNCINvB2_20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB1p_8ElemInfo17get_specific_attr0E0EB1r_: argument 1"}
!49 = distinct !{!49, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!50 = distinct !{!50, !49, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!51 = distinct !{!51, !49, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!52 = distinct !{!52, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!53 = distinct !{!53, !52, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!54 = distinct !{!54, !52, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!55 = distinct !{!55, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!56 = distinct !{!56, !55, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!57 = distinct !{!57, !55, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!58 = distinct !{!58, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs4wS76oGtFbW_12typst_assets4html8AttrInfo16binary_search_byNCINvB2_20binary_search_by_keyReNCNvMBx_NtBx_8ElemInfo15get_global_attr0E0EBz_"}
!59 = distinct !{!59, !58, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs4wS76oGtFbW_12typst_assets4html8AttrInfo16binary_search_byNCINvB2_20binary_search_by_keyReNCNvMBx_NtBx_8ElemInfo15get_global_attr0E0EBz_: argument 0"}
!60 = distinct !{!60, i1 true, !"_RNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB2_8ElemInfo15get_global_attr"}
!61 = distinct !{!61, !60, !"_RNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB2_8ElemInfo15get_global_attr: argument 0"}
!62 = distinct !{!62, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!63 = distinct !{!63, !62, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!64 = distinct !{!64, !62, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!65 = !{!43}
!66 = !{!45}
!67 = !{!45, !43}
!68 = !{!47}
!69 = !{!45, !48, !43, !47}
!70 = !{!51, !50}
!71 = !{!45, !48, !43}
!72 = !{!54, !53}
!73 = !{!57, !56}
!74 = !{!59}
!75 = !{!59, !61}
!76 = !{!64, !63}
!77 = distinct !{!77, i1 true, !"_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count"}
!78 = distinct !{!78, !77, !"_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count: argument 0"}
!79 = distinct !{!79, i1 true, !"_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str"}
!80 = distinct !{!80, !79, !"_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str: argument 0"}
!81 = distinct !{!81, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!82 = distinct !{!82, !81, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!83 = distinct !{!83, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!84 = distinct !{!84, !83, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!85 = distinct !{!85, i1 true, !"_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str"}
!86 = distinct !{!86, !85, !"_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str: argument 0"}
!87 = distinct !{!87, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!88 = distinct !{!88, !87, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!89 = distinct !{!89, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!90 = distinct !{!90, !89, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!91 = distinct !{!91, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!92 = distinct !{!92, !91, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!93 = distinct !{!93, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!94 = distinct !{!94, !93, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!95 = distinct !{!95, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_"}
!96 = distinct !{!96, !95, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_: argument 0"}
!97 = !{!78}
!98 = !{!80}
!99 = !{!82}
!100 = !{!84}
!101 = !{!86}
!102 = !{!88}
!103 = !{!90}
!104 = !{!92}
!105 = !{!94}
!106 = !{!96}
!107 = !{!"branch_weights", i32 22000, i32 1}
!108 = distinct !{!108, i1 true, !"_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str"}
!109 = distinct !{!109, !108, !"_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str: argument 0"}
!110 = distinct !{!110, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!111 = distinct !{!111, !110, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!112 = distinct !{!112, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!113 = distinct !{!113, !112, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!114 = !{!109}
!115 = !{!111}
!116 = !{!113}
!117 = distinct !{!117, i1 true, !"_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str"}
!118 = distinct !{!118, !117, !"_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str: argument 0"}
!119 = distinct !{!119, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!120 = distinct !{!120, !119, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!121 = distinct !{!121, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!122 = distinct !{!122, !121, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!123 = !{!118}
!124 = !{!120}
!125 = !{!122}
!126 = distinct !{!126, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSt16binary_search_byNCNvB2_13binary_search0ECs4wS76oGtFbW_12typst_assets"}
!127 = distinct !{!127, !126, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSt16binary_search_byNCNvB2_13binary_search0ECs4wS76oGtFbW_12typst_assets: argument 0"}
!128 = !{!127}
!129 = distinct !{!129, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_"}
!130 = distinct !{!130, !129, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_: argument 0"}
!131 = distinct !{!131, i1 true, !"_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0B5_"}
!132 = distinct !{!132, !131, !"_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0B5_: argument 0"}
!133 = distinct !{!133, i1 true, !"_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str"}
!134 = distinct !{!134, !133, !"_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str: argument 0"}
!135 = distinct !{!135, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!136 = distinct !{!136, !135, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!137 = distinct !{!137, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets"}
!138 = distinct !{!138, !137, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets: argument 0"}
!139 = distinct !{!139, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTchE16binary_search_byNCNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fences_00EBZ_"}
!140 = distinct !{!140, !139, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTchE16binary_search_byNCNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fences_00EBZ_: argument 0"}
!141 = !{!134, !132, !130}
!142 = !{!136}
!143 = !{!138}
!144 = !{i32 0, i32 1114112}
!145 = !{!140}
!146 = !{i8 0, i8 2}
!147 = !{i64 8}
!148 = distinct !{!148, i1 true, !"_RNvXsg_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt"}
!149 = distinct !{!149, !148, !"_RNvXsg_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt: argument 1"}
!150 = distinct !{!150, !148, !"_RNvXsg_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt: argument 0"}
!151 = !{!150, !149}
!152 = !{!150}
!153 = distinct !{!153, i1 true, !"_RNvXsh_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt"}
!154 = distinct !{!154, !153, !"_RNvXsh_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt: argument 1"}
!155 = distinct !{!155, !153, !"_RNvXsh_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt: argument 0"}
!156 = !{!155, !154}
!157 = !{!155}
!158 = distinct !{!158, i1 true, !"_RNvXsi_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt"}
!159 = distinct !{!159, !158, !"_RNvXsi_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt: argument 1"}
!160 = distinct !{!160, !158, !"_RNvXsi_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt: argument 0"}
!161 = !{!160, !159}
!162 = !{!160}
!163 = distinct !{!163, i1 true, !"_RNvXsj_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt"}
!164 = distinct !{!164, !163, !"_RNvXsj_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt: argument 1"}
!165 = distinct !{!165, !163, !"_RNvXsj_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt: argument 0"}
!166 = !{!165, !164}
!167 = !{!165}
!168 = distinct !{!168, i1 true, !"_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_"}
!169 = distinct !{!169, !168, !"_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_: argument 0"}
!170 = distinct !{!170, i1 true, !"_RNvXs3_NtCs6fhnmY1I3Kb_8bitflags4iterINtB5_9IterNamesNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_"}
!171 = distinct !{!171, !170, !"_RNvXs3_NtCs6fhnmY1I3Kb_8bitflags4iterINtB5_9IterNamesNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_: argument 1"}
!172 = distinct !{!172, !170, !"_RNvXs3_NtCs6fhnmY1I3Kb_8bitflags4iterINtB5_9IterNamesNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!173 = distinct !{!173, i1 true, !"_RINvXs6_NtCs6fhnmY1I3Kb_8bitflags6traitshNtNtB8_6parser8WriteHex9write_hexQNtNtCs3oUPovFnLWP_4core3fmt9FormatterECs4wS76oGtFbW_12typst_assets"}
!174 = distinct !{!174, !173, !"_RINvXs6_NtCs6fhnmY1I3Kb_8bitflags6traitshNtNtB8_6parser8WriteHex9write_hexQNtNtCs3oUPovFnLWP_4core3fmt9FormatterECs4wS76oGtFbW_12typst_assets: argument 1"}
!175 = distinct !{!175, !173, !"_RINvXs6_NtCs6fhnmY1I3Kb_8bitflags6traitshNtNtB8_6parser8WriteHex9write_hexQNtNtCs3oUPovFnLWP_4core3fmt9FormatterECs4wS76oGtFbW_12typst_assets: argument 0"}
!176 = distinct !{!176, !182}
!177 = !{!169}
!178 = !{!172, !171, !169}
!179 = !{!174}
!180 = !{!175, !174, !169}
!181 = !{!174, !169}
!182 = !{!"llvm.loop.peeled.count", i32 1}
!183 = distinct !{!183, i1 true, !"_RINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesEBL_"}
!184 = distinct !{!184, !183, !"_RINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesEBL_: argument 1"}
!185 = distinct !{!185, !183, !"_RINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesEBL_: argument 0"}
!186 = distinct !{!186, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs4wS76oGtFbW_12typst_assets"}
!187 = distinct !{!187, !186, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs4wS76oGtFbW_12typst_assets: argument 0"}
!188 = distinct !{!188, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!189 = distinct !{!189, !188, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!190 = distinct !{!190, !188, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!191 = distinct !{!191, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!192 = distinct !{!192, !191, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!193 = distinct !{!193, i1 true, !"_RNvYNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesNtNtCs6fhnmY1I3Kb_8bitflags6traits5Flags9from_nameB6_"}
!194 = distinct !{!194, !193, !"_RNvYNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesNtNtCs6fhnmY1I3Kb_8bitflags6traits5Flags9from_nameB6_: argument 0"}
!195 = distinct !{!195, i1 true, !"_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets"}
!196 = distinct !{!196, !195, !"_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets: argument 1"}
!197 = distinct !{!197, !195, !"_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError18invalid_named_flagReECs4wS76oGtFbW_12typst_assets: argument 0"}
!198 = distinct !{!198, i1 true, !"_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCs4wS76oGtFbW_12typst_assets"}
!199 = distinct !{!199, !198, !"_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCs4wS76oGtFbW_12typst_assets: argument 0"}
!200 = distinct !{!200, i1 true, !"_RNvXs25_NtCs1xwejQucwHj_5alloc6stringReNtB6_12SpecToString14spec_to_string"}
!201 = distinct !{!201, !200, !"_RNvXs25_NtCs1xwejQucwHj_5alloc6stringReNtB6_12SpecToString14spec_to_string: argument 0"}
!202 = distinct !{!202, i1 true, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4wS76oGtFbW_12typst_assets"}
!203 = distinct !{!203, !202, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4wS76oGtFbW_12typst_assets: argument 1"}
!204 = distinct !{!204, !202, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4wS76oGtFbW_12typst_assets: argument 0"}
!205 = distinct !{!205, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wS76oGtFbW_12typst_assets"}
!206 = distinct !{!206, !205, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wS76oGtFbW_12typst_assets: argument 0"}
!207 = distinct !{!207, i1 true, !"_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_"}
!208 = distinct !{!208, !207, !"_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_: argument 1"}
!209 = distinct !{!209, !207, !"_RNCINvNtCs6fhnmY1I3Kb_8bitflags6parser8from_strNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesE0BN_: argument 0"}
!210 = distinct !{!210, i1 true, !"_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError16invalid_hex_flagReECs4wS76oGtFbW_12typst_assets"}
!211 = distinct !{!211, !210, !"_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError16invalid_hex_flagReECs4wS76oGtFbW_12typst_assets: argument 1"}
!212 = distinct !{!212, !210, !"_RINvMs_NtCs6fhnmY1I3Kb_8bitflags6parserNtB5_10ParseError16invalid_hex_flagReECs4wS76oGtFbW_12typst_assets: argument 0"}
!213 = distinct !{!213, i1 true, !"_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCs4wS76oGtFbW_12typst_assets"}
!214 = distinct !{!214, !213, !"_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCs4wS76oGtFbW_12typst_assets: argument 0"}
!215 = distinct !{!215, i1 true, !"_RNvXs25_NtCs1xwejQucwHj_5alloc6stringReNtB6_12SpecToString14spec_to_string"}
!216 = distinct !{!216, !215, !"_RNvXs25_NtCs1xwejQucwHj_5alloc6stringReNtB6_12SpecToString14spec_to_string: argument 0"}
!217 = distinct !{!217, i1 true, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4wS76oGtFbW_12typst_assets"}
!218 = distinct !{!218, !217, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4wS76oGtFbW_12typst_assets: argument 1"}
!219 = distinct !{!219, !217, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4wS76oGtFbW_12typst_assets: argument 0"}
!220 = distinct !{!220, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wS76oGtFbW_12typst_assets"}
!221 = distinct !{!221, !220, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wS76oGtFbW_12typst_assets: argument 0"}
!222 = distinct !{!222, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6fhnmY1I3Kb_8bitflags6parser10ParseErrorECs4wS76oGtFbW_12typst_assets"}
!223 = distinct !{!223, !222, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6fhnmY1I3Kb_8bitflags6parser10ParseErrorECs4wS76oGtFbW_12typst_assets: argument 0"}
!224 = distinct !{!224, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6fhnmY1I3Kb_8bitflags6parser14ParseErrorKindECs4wS76oGtFbW_12typst_assets"}
!225 = distinct !{!225, !224, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6fhnmY1I3Kb_8bitflags6parser14ParseErrorKindECs4wS76oGtFbW_12typst_assets: argument 0"}
!226 = !{!184}
!227 = !{!185}
!228 = !{!190, !189, !187, !185}
!229 = !{!192, !184}
!230 = !{!190, !189, !187}
!231 = !{i64 -1, i64 3}
!232 = !{!185, !184}
!233 = !{!194, !185, !184}
!234 = !{!206, !204, !203, !201, !199, !197, !196, !185}
!235 = !{!204, !203, !201, !199, !197, !196, !185}
!236 = !{!204, !201, !199, !197, !185}
!237 = !{!221, !219, !218, !216, !214, !212, !211, !209, !208, !185}
!238 = !{!209, !208, !185}
!239 = !{!219, !216, !214, !212, !209, !208, !185}
!240 = !{!225, !223, !209, !208, !185}
end_hunk_0
