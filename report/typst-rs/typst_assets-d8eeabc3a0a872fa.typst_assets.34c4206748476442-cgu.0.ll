Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_assets-d8eeabc3a0a872fa.typst_assets.34c4206748476442-cgu.0?download=true
inline.NumInlined: 197
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category:bb.a
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  %i.ek = or disjoint i32 %i.ej, %i.ef
  br label %bb.r

_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit47: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i31
  %i.el = and i32 %spec.select.i32, -2
  %switch = icmp eq i32 %i.el, 126704
  %i.em = icmp eq i8 %2, 2
  %or.cond26 = and i1 %i.em, %switch
  %.sroa.0.0 = select i1 %or.cond26, i8 10, i8 0
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit

bb.r:                                             ; preds = %bb.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i
  %.sroa.057.0.ph = phi ptr [ %i.dj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i ], [ %i.ds, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i ], [ %i.ec, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i ], [ %i.bo, %bb.q ] ; 5 uses
  %.sroa.4.0.i48.ph = phi i32 [ %i.do, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i ], [ %i.dz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i ], [ %i.ek, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i ], [ %i.dq, %bb.q ] ; 3 uses
  %i.en = icmp samesign ult i32 %.sroa.4.0.i48.ph, 1114112
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = icmp eq ptr %.sroa.057.0.ph, %i.b
  br i1 %i.eo, label %bb.v, label %bb.s

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
  br i1 %i.hn, label %switch.hole_check93.a, label %bb.af

switch.hole_check93.a:                            ; preds = %bb.ad
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.hm
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hq = load i8, ptr %i.hp, align 2, !noundef !4
  %i.hr = lshr i8 %i.hq, 4                        ; 2 uses
  %switch.maskindex = zext nneg i8 %i.hr to i16
  %switch.shifted95 = lshr i16 14199, %switch.maskindex
  %switch.lobit96 = trunc i16 %switch.shifted95 to i1
  br i1 %switch.lobit96, label %switch.lookup94, label %bb.ae, !prof !107

bb.ae:                                            ; preds = %switch.hole_check93.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @462, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @464) #19
  unreachable

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 236, i64 noundef 236, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #19
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split: ; preds = %bb.x, %bb.x, %bb.x
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit

switch.lookup94:                                  ; preds = %switch.hole_check93.a
  %i.hs = zext nneg i8 %i.hr to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category, i64 %i.hs
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

end_hunk_0
