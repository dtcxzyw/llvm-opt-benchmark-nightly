Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort8_stableTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB45_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr:.lr.ph.i
  store i64 %i.dj, ptr %i.cw, align 4, !dbg !56620, !noalias !56501
  %.neg.i.i.1 = sext i1 %i.di to i64, !dbg !56621
  %i.dk = getelementptr [8 x i8], ptr %i.cu, i64 %.neg.i.i.1, !dbg !56622 ; 3 uses
  %.neg15.i.i.1 = sext i1 %.not2.i.i.i24.i.1 to i64, !dbg !56623
  %i.dl = getelementptr [8 x i8], ptr %i.cv, i64 %.neg15.i.i.1, !dbg !56624 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !56625
  %.sroa.011.0.val.i.2 = load float, ptr %i.dc, align 4, !dbg !56604, !alias.scope !56502, !noalias !56503, !noundef !3509 ; 2 uses
  %.sroa.06.0.val.i.2 = load float, ptr %i.de, align 4, !dbg !56604, !alias.scope !56504, !noalias !56505, !noundef !3509
  %i.dn = fcmp ord float %.sroa.011.0.val.i.2, 0.000000e+00, !dbg !56605
  %i.do = fcmp ult float %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2, !dbg !56606
  %.not2.i.i.i.i16.2 = and i1 %i.dn, %i.do, !dbg !56607 ; 3 uses
  %..i23.i.2 = select i1 %.not2.i.i.i.i16.2, ptr %i.dc, ptr %i.de, !dbg !56626
  %i.dp = xor i1 %.not2.i.i.i.i16.2, true, !dbg !56608
  %i.dq = load i64, ptr %..i23.i.2, align 4, !dbg !56609, !alias.scope !56499, !noalias !56506
  store i64 %i.dq, ptr %i.df, align 4, !dbg !56609, !noalias !56500
  %i.dr = zext i1 %.not2.i.i.i.i16.2 to i64, !dbg !56610
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dr, !dbg !56611 ; 3 uses
  %i.dt = zext i1 %i.dp to i64, !dbg !56612
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dt, !dbg !56613 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !56614
  %.sroa.017.0.val.i.2 = load float, ptr %i.dk, align 4, !dbg !56615, !alias.scope !56502, !noalias !56503, !noundef !3509 ; 2 uses
  %.sroa.015.0.val.i.2 = load float, ptr %i.dl, align 4, !dbg !56615, !alias.scope !56504, !noalias !56505, !noundef !3509
  %i.dw = fcmp ord float %.sroa.017.0.val.i.2, 0.000000e+00, !dbg !56616
  %i.dx = fcmp ult float %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2, !dbg !56617
  %.not2.i.i.i24.i.2 = and i1 %i.dw, %i.dx, !dbg !56618 ; 3 uses
  %..i.i.2 = select i1 %.not2.i.i.i24.i.2, ptr %i.dl, ptr %i.dk, !dbg !56627
  %i.dy = xor i1 %.not2.i.i.i24.i.2, true, !dbg !56619
  %i.dz = load i64, ptr %..i.i.2, align 4, !dbg !56620, !alias.scope !56499, !noalias !56507
  store i64 %i.dz, ptr %i.dm, align 4, !dbg !56620, !noalias !56501
  %.neg.i.i.2 = sext i1 %i.dy to i64, !dbg !56621
  %i.ea = getelementptr [8 x i8], ptr %i.dk, i64 %.neg.i.i.2, !dbg !56622 ; 3 uses
  %.neg15.i.i.2 = sext i1 %.not2.i.i.i24.i.2 to i64, !dbg !56623
  %i.eb = getelementptr [8 x i8], ptr %i.dl, i64 %.neg15.i.i.2, !dbg !56624 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !56625
  %.sroa.011.0.val.i.3 = load float, ptr %i.ds, align 4, !dbg !56604, !alias.scope !56502, !noalias !56503, !noundef !3509 ; 2 uses
  %.sroa.06.0.val.i.3 = load float, ptr %i.du, align 4, !dbg !56604, !alias.scope !56504, !noalias !56505, !noundef !3509
  %i.ed = fcmp ord float %.sroa.011.0.val.i.3, 0.000000e+00, !dbg !56605
  %i.ee = fcmp ult float %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3, !dbg !56606
  %.not2.i.i.i.i16.3 = and i1 %i.ed, %i.ee, !dbg !56607 ; 3 uses
  %..i23.i.3 = select i1 %.not2.i.i.i.i16.3, ptr %i.ds, ptr %i.du, !dbg !56626
  %i.ef = xor i1 %.not2.i.i.i.i16.3, true, !dbg !56608
  %i.eg = load i64, ptr %..i23.i.3, align 4, !dbg !56609, !alias.scope !56499, !noalias !56506
  store i64 %i.eg, ptr %i.dv, align 4, !dbg !56609, !noalias !56500
  %i.eh = zext i1 %.not2.i.i.i.i16.3 to i64, !dbg !56610
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.eh, !dbg !56611
  %i.ej = zext i1 %i.ef to i64, !dbg !56612
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ej, !dbg !56613
  %.sroa.017.0.val.i.3 = load float, ptr %i.ea, align 4, !dbg !56615, !alias.scope !56502, !noalias !56503, !noundef !3509 ; 2 uses
  %.sroa.015.0.val.i.3 = load float, ptr %i.eb, align 4, !dbg !56615, !alias.scope !56504, !noalias !56505, !noundef !3509
  %i.el = fcmp ord float %.sroa.017.0.val.i.3, 0.000000e+00, !dbg !56616
  %i.em = fcmp ult float %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3, !dbg !56617
  %.not2.i.i.i24.i.3 = and i1 %i.el, %i.em, !dbg !56618 ; 3 uses
  %..i.i.3 = select i1 %.not2.i.i.i24.i.3, ptr %i.eb, ptr %i.ea, !dbg !56627
  %i.en = xor i1 %.not2.i.i.i24.i.3, true, !dbg !56619
  %i.eo = load i64, ptr %..i.i.3, align 4, !dbg !56620, !alias.scope !56499, !noalias !56507
  store i64 %i.eo, ptr %i.ec, align 4, !dbg !56620, !noalias !56501
  %.neg.i.i.3 = sext i1 %i.en to i64, !dbg !56621
  %i.ep = getelementptr [8 x i8], ptr %i.ea, i64 %.neg.i.i.3, !dbg !56622
  %.neg15.i.i.3 = sext i1 %.not2.i.i.i24.i.3 to i64, !dbg !56623
  %i.eq = getelementptr [8 x i8], ptr %i.eb, i64 %.neg15.i.i.3, !dbg !56624
  %i.er = getelementptr i8, ptr %i.eq, i64 8, !dbg !56628
  %i.es = getelementptr i8, ptr %i.ep, i64 8, !dbg !56629
  %i.et = icmp ne ptr %i.ek, %i.er, !dbg !56630
  %i.eu = icmp ne ptr %i.ei, %i.es
  %or.cond.i = select i1 %i.et, i1 true, i1 %i.eu, !dbg !56630, !prof !3971
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1g_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4c_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !56630, !prof !3971

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #52, !dbg !56631, !noalias !56499
  unreachable, !dbg !56631

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1g_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4c_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.lr.ph.i
  ret void, !dbg !56632
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort8_stablemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Z_10WindowExprNtB21_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB23_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 32)) %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !56633 {
._crit_edge.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !56886
  %.val13.i = load i32, ptr %i.a, align 4, !dbg !56887, !noundef !3509
  %.val14.i = load i32, ptr %0, align 4, !dbg !56887, !noundef !3509
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56855), !dbg !56888
  %i.b = load ptr, ptr %.0.val, align 8, !dbg !56889, !alias.scope !56855, !nonnull !3509, !align !3810, !noundef !3509
  %i.c = load i32, ptr %i.b, align 4, !dbg !56890, !noalias !56855, !noundef !3509 ; 10 uses
  %i.d = add i32 %i.c, %.val13.i, !dbg !56890
  %i.e = zext i32 %i.d to i64, !dbg !56891        ; 2 uses
  %i.f = add i32 %i.c, %.val14.i, !dbg !56892
  %i.g = zext i32 %i.f to i64, !dbg !56893        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !56894 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !dbg !56894, !alias.scope !56855, !nonnull !3509, !align !3810, !noundef !3509 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !56894 ; 10 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !56894, !alias.scope !56855, !noundef !3509 ; 10 uses
  %i.l = icmp ugt i64 %i.k, %i.e, !dbg !56895
  tail call void @llvm.assume(i1 %i.l), !dbg !56896
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e, !dbg !56897
  %i.n = icmp ugt i64 %i.k, %i.g, !dbg !56898
  tail call void @llvm.assume(i1 %i.n), !dbg !56899
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g, !dbg !56900
  %i.p = load i32, ptr %i.m, align 4, !dbg !56901, !noalias !56855, !noundef !3509
  %i.q = load i32, ptr %i.o, align 4, !dbg !56902, !noalias !56855, !noundef !3509
  %i.r = tail call i8 @llvm.ucmp.i8.i32(i32 %i.p, i32 %i.q), !dbg !56903 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !56904 ; 10 uses
  %i.t = load ptr, ptr %i.s, align 8, !dbg !56904, !alias.scope !56855, !nonnull !3509, !align !3810, !noundef !3509
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !56904
  %i.v = load i8, ptr %i.u, align 4, !dbg !56904, !range !3941, !noalias !56855, !noundef !3509
  %i.w = trunc nuw i8 %i.v to i1, !dbg !56904     ; 5 uses
  %switch.offset.i.i.i = sub nsw i8 0, %i.r, !dbg !56904
  %.sroa.0.0.i.i.i = select i1 %i.w, i8 %switch.offset.i.i.i, i8 %i.r, !dbg !56904
  %i.x = icmp eq i8 %.sroa.0.0.i.i.i, -1, !dbg !56905 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !56906
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !56907
  %.val10.i = load i32, ptr %i.y, align 4, !dbg !56908, !noundef !3509
  %.val11.i = load i32, ptr %i.z, align 4, !dbg !56908, !noundef !3509
  %i.aa = add i32 %.val10.i, %i.c, !dbg !56909
  %i.ab = zext i32 %i.aa to i64, !dbg !56910      ; 2 uses
  %i.ac = add i32 %.val11.i, %i.c, !dbg !56911
  %i.ad = zext i32 %i.ac to i64, !dbg !56912      ; 2 uses
  %i.ae = icmp ugt i64 %i.k, %i.ab, !dbg !56913
  tail call void @llvm.assume(i1 %i.ae), !dbg !56914
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ab, !dbg !56915
  %i.ag = icmp ugt i64 %i.k, %i.ad, !dbg !56916
  tail call void @llvm.assume(i1 %i.ag), !dbg !56917
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ad, !dbg !56918
  %i.ai = load i32, ptr %i.af, align 4, !dbg !56919, !noalias !56856, !noundef !3509
  %i.aj = load i32, ptr %i.ah, align 4, !dbg !56920, !noalias !56856, !noundef !3509
  %i.ak = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ai, i32 %i.aj), !dbg !56921 ; 2 uses
  %switch.offset.i.i15.i = sub nsw i8 0, %i.ak, !dbg !56922
  %.sroa.0.0.i.i16.i = select i1 %i.w, i8 %switch.offset.i.i15.i, i8 %i.ak, !dbg !56922
  %i.al = icmp eq i8 %.sroa.0.0.i.i16.i, -1, !dbg !56923 ; 2 uses
  %i.am = zext i1 %i.x to i64, !dbg !56924
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am, !dbg !56925 ; 2 uses
  %i.ao = xor i1 %i.x, true, !dbg !56926
  %i.ap = zext i1 %i.ao to i64, !dbg !56926
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap, !dbg !56927 ; 4 uses
  %i.ar = select i1 %i.al, i64 3, i64 2, !dbg !56928
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar, !dbg !56929 ; 3 uses
  %i.at = select i1 %i.al, i64 2, i64 3, !dbg !56930
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at, !dbg !56931 ; 3 uses
  %.val7.i = load i32, ptr %i.as, align 4, !dbg !56932, !noundef !3509 ; 2 uses
  %.val8.i = load i32, ptr %i.an, align 4, !dbg !56932, !noundef !3509 ; 2 uses
  %i.av = add i32 %.val7.i, %i.c, !dbg !56933
  %i.aw = zext i32 %i.av to i64, !dbg !56934      ; 2 uses
  %i.ax = add i32 %.val8.i, %i.c, !dbg !56935
  %i.ay = zext i32 %i.ax to i64, !dbg !56936      ; 2 uses
  %i.az = icmp ugt i64 %i.k, %i.aw, !dbg !56937
  tail call void @llvm.assume(i1 %i.az), !dbg !56938
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aw, !dbg !56939
  %i.bb = icmp ugt i64 %i.k, %i.ay, !dbg !56940
  tail call void @llvm.assume(i1 %i.bb), !dbg !56941
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ay, !dbg !56942
  %i.bd = load i32, ptr %i.ba, align 4, !dbg !56943, !noalias !56857, !noundef !3509
  %i.be = load i32, ptr %i.bc, align 4, !dbg !56944, !noalias !56857, !noundef !3509
  %i.bf = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bd, i32 %i.be), !dbg !56945 ; 2 uses
  %switch.offset.i.i17.i = sub nsw i8 0, %i.bf, !dbg !56946
  %.sroa.0.0.i.i18.i = select i1 %i.w, i8 %switch.offset.i.i17.i, i8 %i.bf, !dbg !56946
  %i.bg = icmp eq i8 %.sroa.0.0.i.i18.i, -1, !dbg !56947 ; 3 uses
  %.val4.i = load i32, ptr %i.au, align 4, !dbg !56948, !noundef !3509
  %.val5.i = load i32, ptr %i.aq, align 4, !dbg !56948, !noundef !3509
  %i.bh = add i32 %.val4.i, %i.c, !dbg !56949
  %i.bi = zext i32 %i.bh to i64, !dbg !56950      ; 2 uses
  %i.bj = add i32 %.val5.i, %i.c, !dbg !56951
  %i.bk = zext i32 %i.bj to i64, !dbg !56952      ; 2 uses
  %i.bl = icmp ugt i64 %i.k, %i.bi, !dbg !56953
  tail call void @llvm.assume(i1 %i.bl), !dbg !56954
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bi, !dbg !56955
  %i.bn = icmp ugt i64 %i.k, %i.bk, !dbg !56956
  tail call void @llvm.assume(i1 %i.bn), !dbg !56957
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bk, !dbg !56958
  %i.bp = load i32, ptr %i.bm, align 4, !dbg !56959, !noalias !56858, !noundef !3509
  %i.bq = load i32, ptr %i.bo, align 4, !dbg !56960, !noalias !56858, !noundef !3509
  %i.br = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bp, i32 %i.bq), !dbg !56961 ; 2 uses
  %switch.offset.i.i19.i = sub nsw i8 0, %i.br, !dbg !56962
  %.sroa.0.0.i.i20.i = select i1 %i.w, i8 %switch.offset.i.i19.i, i8 %i.br, !dbg !56962
  %i.bs = icmp eq i8 %.sroa.0.0.i.i20.i, -1, !dbg !56963 ; 3 uses
  %i.bt = select i1 %i.bs, ptr %i.aq, ptr %i.au, !dbg !56964, !unpredictable !3509
  %i.bu = select i1 %i.bs, ptr %i.as, ptr %i.aq, !dbg !56965, !unpredictable !3509
  %i.bv = select i1 %i.bg, ptr %i.an, ptr %i.bu, !dbg !56966, !unpredictable !3509 ; 3 uses
  %i.bw = select i1 %i.bg, ptr %i.aq, ptr %i.as, !dbg !56967, !unpredictable !3509
  %i.bx = select i1 %i.bs, ptr %i.au, ptr %i.bw, !dbg !56968, !unpredictable !3509 ; 3 uses
  %.val1.i = load i32, ptr %i.bx, align 4, !dbg !56969, !noundef !3509
  %.val2.i = load i32, ptr %i.bv, align 4, !dbg !56969, !noundef !3509
  %i.by = add i32 %.val1.i, %i.c, !dbg !56970
  %i.bz = zext i32 %i.by to i64, !dbg !56971      ; 2 uses
  %i.ca = add i32 %.val2.i, %i.c, !dbg !56972
  %i.cb = zext i32 %i.ca to i64, !dbg !56973      ; 2 uses
  %i.cc = icmp ugt i64 %i.k, %i.bz, !dbg !56974
  tail call void @llvm.assume(i1 %i.cc), !dbg !56975
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bz, !dbg !56976
  %i.ce = icmp ugt i64 %i.k, %i.cb, !dbg !56977
  tail call void @llvm.assume(i1 %i.ce), !dbg !56978
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cb, !dbg !56979
  %i.cg = load i32, ptr %i.cd, align 4, !dbg !56980, !noalias !56859, !noundef !3509
  %i.ch = load i32, ptr %i.cf, align 4, !dbg !56981, !noalias !56859, !noundef !3509
  %i.ci = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cg, i32 %i.ch), !dbg !56982 ; 2 uses
  %switch.offset.i.i21.i = sub nsw i8 0, %i.ci, !dbg !56983
  %.sroa.0.0.i.i22.i = select i1 %i.w, i8 %switch.offset.i.i21.i, i8 %i.ci, !dbg !56983
  %i.cj = icmp eq i8 %.sroa.0.0.i.i22.i, -1, !dbg !56984 ; 2 uses
  %i.ck = select i1 %i.cj, ptr %i.bx, ptr %i.bv, !dbg !56985, !unpredictable !3509
  %i.cl = select i1 %i.cj, ptr %i.bv, ptr %i.bx, !dbg !56986, !unpredictable !3509
  %i.cm = select i1 %i.bg, i32 %.val7.i, i32 %.val8.i, !dbg !56987, !unpredictable !3509
  store i32 %i.cm, ptr %2, align 4, !dbg !56987
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !56988
  %i.co = load i32, ptr %i.ck, align 4, !dbg !56989
  store i32 %i.co, ptr %i.cn, align 4, !dbg !56989
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !56990
  %i.cq = load i32, ptr %i.cl, align 4, !dbg !56991
  store i32 %i.cq, ptr %i.cp, align 4, !dbg !56991
  %i.cr = getelementptr i8, ptr %2, i64 12, !dbg !56992 ; 3 uses
  %i.cs = load i32, ptr %i.bt, align 4, !dbg !56993
  store i32 %i.cs, ptr %i.cr, align 4, !dbg !56993
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !56994 ; 5 uses
  %i.cu = getelementptr i8, ptr %2, i64 16, !dbg !56995 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !56996
  %.val13.i3 = load i32, ptr %i.cv, align 4, !dbg !56997, !noundef !3509
  %.val14.i4 = load i32, ptr %i.ct, align 4, !dbg !56997, !noundef !3509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56862), !dbg !56998
  %i.cw = load ptr, ptr %.0.val, align 8, !dbg !56999, !alias.scope !56862, !nonnull !3509, !align !3810, !noundef !3509
  %i.cx = load i32, ptr %i.cw, align 4, !dbg !57000, !noalias !56862, !noundef !3509 ; 10 uses
  %i.cy = add i32 %i.cx, %.val13.i3, !dbg !57000
  %i.cz = zext i32 %i.cy to i64, !dbg !57001      ; 2 uses
  %i.da = add i32 %i.cx, %.val14.i4, !dbg !57002
  %i.db = zext i32 %i.da to i64, !dbg !57003      ; 2 uses
  %i.dc = load ptr, ptr %i.h, align 8, !dbg !57004, !alias.scope !56862, !nonnull !3509, !align !3810, !noundef !3509 ; 10 uses
  %i.dd = load i64, ptr %i.j, align 8, !dbg !57004, !alias.scope !56862, !noundef !3509 ; 10 uses
  %i.de = icmp ugt i64 %i.dd, %i.cz, !dbg !57005
  tail call void @llvm.assume(i1 %i.de), !dbg !57006
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cz, !dbg !57007
  %i.dg = icmp ugt i64 %i.dd, %i.db, !dbg !57008
  tail call void @llvm.assume(i1 %i.dg), !dbg !57009
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.db, !dbg !57010
  %i.di = load i32, ptr %i.df, align 4, !dbg !57011, !noalias !56862, !noundef !3509
  %i.dj = load i32, ptr %i.dh, align 4, !dbg !57012, !noalias !56862, !noundef !3509
  %i.dk = tail call i8 @llvm.ucmp.i8.i32(i32 %i.di, i32 %i.dj), !dbg !57013 ; 2 uses
  %i.dl = load ptr, ptr %i.s, align 8, !dbg !57014, !alias.scope !56862, !nonnull !3509, !align !3810, !noundef !3509
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8, !dbg !57014
  %i.dn = load i8, ptr %i.dm, align 4, !dbg !57014, !range !3941, !noalias !56862, !noundef !3509
  %i.do = trunc nuw i8 %i.dn to i1, !dbg !57014   ; 5 uses
  %switch.offset.i.i.i5 = sub nsw i8 0, %i.dk, !dbg !57014
  %.sroa.0.0.i.i.i6 = select i1 %i.do, i8 %switch.offset.i.i.i5, i8 %i.dk, !dbg !57014
  %i.dp = icmp eq i8 %.sroa.0.0.i.i.i6, -1, !dbg !57015 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !57016
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !57017
  %.val10.i7 = load i32, ptr %i.dq, align 4, !dbg !57018, !noundef !3509
  %.val11.i8 = load i32, ptr %i.dr, align 4, !dbg !57018, !noundef !3509
  %i.ds = add i32 %.val10.i7, %i.cx, !dbg !57019
  %i.dt = zext i32 %i.ds to i64, !dbg !57020      ; 2 uses
  %i.du = add i32 %.val11.i8, %i.cx, !dbg !57021
  %i.dv = zext i32 %i.du to i64, !dbg !57022      ; 2 uses
  %i.dw = icmp ugt i64 %i.dd, %i.dt, !dbg !57023
  tail call void @llvm.assume(i1 %i.dw), !dbg !57024
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dt, !dbg !57025
  %i.dy = icmp ugt i64 %i.dd, %i.dv, !dbg !57026
  tail call void @llvm.assume(i1 %i.dy), !dbg !57027
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dv, !dbg !57028
  %i.ea = load i32, ptr %i.dx, align 4, !dbg !57029, !noalias !56863, !noundef !3509
  %i.eb = load i32, ptr %i.dz, align 4, !dbg !57030, !noalias !56863, !noundef !3509
  %i.ec = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ea, i32 %i.eb), !dbg !57031 ; 2 uses
  %switch.offset.i.i15.i9 = sub nsw i8 0, %i.ec, !dbg !57032
  %.sroa.0.0.i.i16.i10 = select i1 %i.do, i8 %switch.offset.i.i15.i9, i8 %i.ec, !dbg !57032
  %i.ed = icmp eq i8 %.sroa.0.0.i.i16.i10, -1, !dbg !57033 ; 2 uses
  %i.ee = zext i1 %i.dp to i64, !dbg !57034
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ee, !dbg !57035 ; 2 uses
  %i.eg = xor i1 %i.dp, true, !dbg !57036
  %i.eh = zext i1 %i.eg to i64, !dbg !57036
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.eh, !dbg !57037 ; 4 uses
  %i.ej = select i1 %i.ed, i64 3, i64 2, !dbg !57038
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ej, !dbg !57039 ; 3 uses
  %i.el = select i1 %i.ed, i64 2, i64 3, !dbg !57040
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.el, !dbg !57041 ; 3 uses
  %.val7.i11 = load i32, ptr %i.ek, align 4, !dbg !57042, !noundef !3509 ; 2 uses
  %.val8.i12 = load i32, ptr %i.ef, align 4, !dbg !57042, !noundef !3509 ; 2 uses
  %i.en = add i32 %.val7.i11, %i.cx, !dbg !57043
  %i.eo = zext i32 %i.en to i64, !dbg !57044      ; 2 uses
  %i.ep = add i32 %.val8.i12, %i.cx, !dbg !57045
  %i.eq = zext i32 %i.ep to i64, !dbg !57046      ; 2 uses
  %i.er = icmp ugt i64 %i.dd, %i.eo, !dbg !57047
  tail call void @llvm.assume(i1 %i.er), !dbg !57048
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.eo, !dbg !57049
  %i.et = icmp ugt i64 %i.dd, %i.eq, !dbg !57050
  tail call void @llvm.assume(i1 %i.et), !dbg !57051
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.eq, !dbg !57052
  %i.ev = load i32, ptr %i.es, align 4, !dbg !57053, !noalias !56864, !noundef !3509
  %i.ew = load i32, ptr %i.eu, align 4, !dbg !57054, !noalias !56864, !noundef !3509
  %i.ex = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ev, i32 %i.ew), !dbg !57055 ; 2 uses
  %switch.offset.i.i17.i13 = sub nsw i8 0, %i.ex, !dbg !57056
  %.sroa.0.0.i.i18.i14 = select i1 %i.do, i8 %switch.offset.i.i17.i13, i8 %i.ex, !dbg !57056
  %i.ey = icmp eq i8 %.sroa.0.0.i.i18.i14, -1, !dbg !57057 ; 3 uses
  %.val4.i15 = load i32, ptr %i.em, align 4, !dbg !57058, !noundef !3509
  %.val5.i16 = load i32, ptr %i.ei, align 4, !dbg !57058, !noundef !3509
  %i.ez = add i32 %.val4.i15, %i.cx, !dbg !57059
  %i.fa = zext i32 %i.ez to i64, !dbg !57060      ; 2 uses
  %i.fb = add i32 %.val5.i16, %i.cx, !dbg !57061
  %i.fc = zext i32 %i.fb to i64, !dbg !57062      ; 2 uses
  %i.fd = icmp ugt i64 %i.dd, %i.fa, !dbg !57063
  tail call void @llvm.assume(i1 %i.fd), !dbg !57064
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fa, !dbg !57065
  %i.ff = icmp ugt i64 %i.dd, %i.fc, !dbg !57066
  tail call void @llvm.assume(i1 %i.ff), !dbg !57067
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fc, !dbg !57068
  %i.fh = load i32, ptr %i.fe, align 4, !dbg !57069, !noalias !56865, !noundef !3509
  %i.fi = load i32, ptr %i.fg, align 4, !dbg !57070, !noalias !56865, !noundef !3509
  %i.fj = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fh, i32 %i.fi), !dbg !57071 ; 2 uses
  %switch.offset.i.i19.i17 = sub nsw i8 0, %i.fj, !dbg !57072
  %.sroa.0.0.i.i20.i18 = select i1 %i.do, i8 %switch.offset.i.i19.i17, i8 %i.fj, !dbg !57072
  %i.fk = icmp eq i8 %.sroa.0.0.i.i20.i18, -1, !dbg !57073 ; 3 uses
  %i.fl = select i1 %i.fk, ptr %i.ei, ptr %i.em, !dbg !57074, !unpredictable !3509
  %i.fm = select i1 %i.fk, ptr %i.ek, ptr %i.ei, !dbg !57075, !unpredictable !3509
  %i.fn = select i1 %i.ey, ptr %i.ef, ptr %i.fm, !dbg !57076, !unpredictable !3509 ; 3 uses
  %i.fo = select i1 %i.ey, ptr %i.ei, ptr %i.ek, !dbg !57077, !unpredictable !3509
  %i.fp = select i1 %i.fk, ptr %i.em, ptr %i.fo, !dbg !57078, !unpredictable !3509 ; 3 uses
  %.val1.i19 = load i32, ptr %i.fp, align 4, !dbg !57079, !noundef !3509
  %.val2.i20 = load i32, ptr %i.fn, align 4, !dbg !57079, !noundef !3509
  %i.fq = add i32 %.val1.i19, %i.cx, !dbg !57080
  %i.fr = zext i32 %i.fq to i64, !dbg !57081      ; 2 uses
  %i.fs = add i32 %.val2.i20, %i.cx, !dbg !57082
  %i.ft = zext i32 %i.fs to i64, !dbg !57083      ; 2 uses
  %i.fu = icmp ugt i64 %i.dd, %i.fr, !dbg !57084
  tail call void @llvm.assume(i1 %i.fu), !dbg !57085
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fr, !dbg !57086
  %i.fw = icmp ugt i64 %i.dd, %i.ft, !dbg !57087
  tail call void @llvm.assume(i1 %i.fw), !dbg !57088
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ft, !dbg !57089
  %i.fy = load i32, ptr %i.fv, align 4, !dbg !57090, !noalias !56866, !noundef !3509
  %i.fz = load i32, ptr %i.fx, align 4, !dbg !57091, !noalias !56866, !noundef !3509
  %i.ga = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fy, i32 %i.fz), !dbg !57092 ; 2 uses
  %switch.offset.i.i21.i21 = sub nsw i8 0, %i.ga, !dbg !57093
  %.sroa.0.0.i.i22.i22 = select i1 %i.do, i8 %switch.offset.i.i21.i21, i8 %i.ga, !dbg !57093
  %i.gb = icmp eq i8 %.sroa.0.0.i.i22.i22, -1, !dbg !57094 ; 2 uses
  %i.gc = select i1 %i.gb, ptr %i.fp, ptr %i.fn, !dbg !57095, !unpredictable !3509
  %i.gd = select i1 %i.gb, ptr %i.fn, ptr %i.fp, !dbg !57096, !unpredictable !3509
  %i.ge = select i1 %i.ey, i32 %.val7.i11, i32 %.val8.i12, !dbg !57097, !unpredictable !3509 ; 3 uses
  store i32 %i.ge, ptr %i.cu, align 4, !dbg !57097
  %i.gf = getelementptr i8, ptr %2, i64 20, !dbg !57098
  %i.gg = load i32, ptr %i.gc, align 4, !dbg !57099
  store i32 %i.gg, ptr %i.gf, align 4, !dbg !57099
  %i.gh = getelementptr i8, ptr %2, i64 24, !dbg !57100
  %i.gi = load i32, ptr %i.gd, align 4, !dbg !57101
  store i32 %i.gi, ptr %i.gh, align 4, !dbg !57101
  %i.gj = getelementptr i8, ptr %2, i64 28, !dbg !57102 ; 2 uses
  %i.gk = load i32, ptr %i.fl, align 4, !dbg !57103 ; 3 uses
  store i32 %i.gk, ptr %i.gj, align 4, !dbg !57103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56867), !dbg !57104
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !57105
  %.sroa.06.0.val.i = load i32, ptr %2, align 4, !dbg !57106, !alias.scope !56867, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56868), !dbg !57107
  %i.gm = load ptr, ptr %.0.val, align 8, !dbg !57108, !alias.scope !56868, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.gn = load i32, ptr %i.gm, align 4, !dbg !57109, !noalias !56869, !noundef !3509 ; 2 uses
  %i.go = add i32 %i.gn, %i.ge, !dbg !57109
  %i.gp = zext i32 %i.go to i64, !dbg !57110      ; 2 uses
  %i.gq = add i32 %i.gn, %.sroa.06.0.val.i, !dbg !57111
  %i.gr = zext i32 %i.gq to i64, !dbg !57112      ; 2 uses
  %i.gs = load ptr, ptr %i.h, align 8, !dbg !57113, !alias.scope !56868, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509 ; 2 uses
  %i.gt = load i64, ptr %i.j, align 8, !dbg !57113, !alias.scope !56868, !noalias !56867, !noundef !3509 ; 2 uses
  %i.gu = icmp ugt i64 %i.gt, %i.gp, !dbg !57114
  tail call void @llvm.assume(i1 %i.gu), !dbg !57115
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gp, !dbg !57116
  %i.gw = icmp ugt i64 %i.gt, %i.gr, !dbg !57117
  tail call void @llvm.assume(i1 %i.gw), !dbg !57118
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gr, !dbg !57119
  %i.gy = load i32, ptr %i.gv, align 4, !dbg !57120, !noalias !56869, !noundef !3509
  %i.gz = load i32, ptr %i.gx, align 4, !dbg !57121, !noalias !56869, !noundef !3509
  %i.ha = tail call i8 @llvm.ucmp.i8.i32(i32 %i.gy, i32 %i.gz), !dbg !57122 ; 2 uses
  %i.hb = load ptr, ptr %i.s, align 8, !dbg !57123, !alias.scope !56868, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8, !dbg !57123
  %i.hd = load i8, ptr %i.hc, align 4, !dbg !57123, !range !3941, !noalias !56869, !noundef !3509
  %i.he = trunc nuw i8 %i.hd to i1, !dbg !57123
  %switch.offset.i.i.i23 = sub nsw i8 0, %i.ha, !dbg !57123
  %.sroa.0.0.i.i.i24 = select i1 %i.he, i8 %switch.offset.i.i.i23, i8 %i.ha, !dbg !57123
  %i.hf = icmp eq i8 %.sroa.0.0.i.i.i24, -1, !dbg !57124 ; 3 uses
  %i.hg = xor i1 %i.hf, true, !dbg !57125
  %i.hh = select i1 %i.hf, i32 %i.ge, i32 %.sroa.06.0.val.i, !dbg !57126
  store i32 %i.hh, ptr %1, align 4, !dbg !57126, !noalias !56870
  %i.hi = zext i1 %i.hf to i64, !dbg !57127
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.hi, !dbg !57128 ; 2 uses
  %i.hk = zext i1 %i.hg to i64, !dbg !57129
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hk, !dbg !57130 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !57131
  %.sroa.015.0.val.i = load i32, ptr %i.cr, align 4, !dbg !57132, !alias.scope !56867, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56871), !dbg !57133
  %i.hn = load ptr, ptr %.0.val, align 8, !dbg !57134, !alias.scope !56871, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.ho = load i32, ptr %i.hn, align 4, !dbg !57135, !noalias !56872, !noundef !3509 ; 2 uses
  %i.hp = add i32 %i.ho, %i.gk, !dbg !57135
  %i.hq = zext i32 %i.hp to i64, !dbg !57136      ; 2 uses
  %i.hr = add i32 %i.ho, %.sroa.015.0.val.i, !dbg !57137
  %i.hs = zext i32 %i.hr to i64, !dbg !57138      ; 2 uses
  %i.ht = load ptr, ptr %i.h, align 8, !dbg !57139, !alias.scope !56871, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509 ; 2 uses
  %i.hu = load i64, ptr %i.j, align 8, !dbg !57139, !alias.scope !56871, !noalias !56867, !noundef !3509 ; 2 uses
  %i.hv = icmp ugt i64 %i.hu, %i.hq, !dbg !57140
  tail call void @llvm.assume(i1 %i.hv), !dbg !57141
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hq, !dbg !57142
  %i.hx = icmp ugt i64 %i.hu, %i.hs, !dbg !57143
  tail call void @llvm.assume(i1 %i.hx), !dbg !57144
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hs, !dbg !57145
  %i.hz = load i32, ptr %i.hw, align 4, !dbg !57146, !noalias !56872, !noundef !3509
  %i.ia = load i32, ptr %i.hy, align 4, !dbg !57147, !noalias !56872, !noundef !3509
  %i.ib = tail call i8 @llvm.ucmp.i8.i32(i32 %i.hz, i32 %i.ia), !dbg !57148 ; 2 uses
  %i.ic = load ptr, ptr %i.s, align 8, !dbg !57149, !alias.scope !56871, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8, !dbg !57149
  %i.ie = load i8, ptr %i.id, align 4, !dbg !57149, !range !3941, !noalias !56872, !noundef !3509
  %i.if = trunc nuw i8 %i.ie to i1, !dbg !57149
  %switch.offset.i.i25.i = sub nsw i8 0, %i.ib, !dbg !57149
  %.sroa.0.0.i.i26.i = select i1 %i.if, i8 %switch.offset.i.i25.i, i8 %i.ib, !dbg !57149
  %i.ig = icmp eq i8 %.sroa.0.0.i.i26.i, -1, !dbg !57150 ; 3 uses
  %i.ih = xor i1 %i.ig, true, !dbg !57151
  %i.ii = select i1 %i.ig, i32 %.sroa.015.0.val.i, i32 %i.gk, !dbg !57152
  store i32 %i.ii, ptr %i.gl, align 4, !dbg !57152, !noalias !56873
  %.neg.i.i = sext i1 %i.ih to i64, !dbg !57153
  %i.ij = getelementptr [4 x i8], ptr %i.gj, i64 %.neg.i.i, !dbg !57154 ; 2 uses
  %.neg15.i.i = sext i1 %i.ig to i64, !dbg !57155
  %i.ik = getelementptr [4 x i8], ptr %i.cr, i64 %.neg15.i.i, !dbg !57156 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !57157
  %.sroa.011.0.val.i.1 = load i32, ptr %i.hj, align 4, !dbg !57106, !alias.scope !56867, !noundef !3509 ; 2 uses
  %.sroa.06.0.val.i.1 = load i32, ptr %i.hl, align 4, !dbg !57106, !alias.scope !56867, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56874), !dbg !57107
  %i.im = load ptr, ptr %.0.val, align 8, !dbg !57108, !alias.scope !56874, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.in = load i32, ptr %i.im, align 4, !dbg !57109, !noalias !56875, !noundef !3509 ; 2 uses
  %i.io = add i32 %i.in, %.sroa.011.0.val.i.1, !dbg !57109
  %i.ip = zext i32 %i.io to i64, !dbg !57110      ; 2 uses
  %i.iq = add i32 %i.in, %.sroa.06.0.val.i.1, !dbg !57111
  %i.ir = zext i32 %i.iq to i64, !dbg !57112      ; 2 uses
  %i.is = load ptr, ptr %i.h, align 8, !dbg !57113, !alias.scope !56874, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509 ; 2 uses
  %i.it = load i64, ptr %i.j, align 8, !dbg !57113, !alias.scope !56874, !noalias !56867, !noundef !3509 ; 2 uses
  %i.iu = icmp ugt i64 %i.it, %i.ip, !dbg !57114
  tail call void @llvm.assume(i1 %i.iu), !dbg !57115
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.ip, !dbg !57116
  %i.iw = icmp ugt i64 %i.it, %i.ir, !dbg !57117
  tail call void @llvm.assume(i1 %i.iw), !dbg !57118
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.ir, !dbg !57119
  %i.iy = load i32, ptr %i.iv, align 4, !dbg !57120, !noalias !56875, !noundef !3509
  %i.iz = load i32, ptr %i.ix, align 4, !dbg !57121, !noalias !56875, !noundef !3509
  %i.ja = tail call i8 @llvm.ucmp.i8.i32(i32 %i.iy, i32 %i.iz), !dbg !57122 ; 2 uses
  %i.jb = load ptr, ptr %i.s, align 8, !dbg !57123, !alias.scope !56874, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8, !dbg !57123
  %i.jd = load i8, ptr %i.jc, align 4, !dbg !57123, !range !3941, !noalias !56875, !noundef !3509
  %i.je = trunc nuw i8 %i.jd to i1, !dbg !57123
  %switch.offset.i.i.i23.1 = sub nsw i8 0, %i.ja, !dbg !57123
  %.sroa.0.0.i.i.i24.1 = select i1 %i.je, i8 %switch.offset.i.i.i23.1, i8 %i.ja, !dbg !57123
  %i.jf = icmp eq i8 %.sroa.0.0.i.i.i24.1, -1, !dbg !57124 ; 3 uses
  %i.jg = xor i1 %i.jf, true, !dbg !57125
  %i.jh = select i1 %i.jf, i32 %.sroa.011.0.val.i.1, i32 %.sroa.06.0.val.i.1, !dbg !57126
  store i32 %i.jh, ptr %i.hm, align 4, !dbg !57126, !noalias !56870
  %i.ji = zext i1 %i.jf to i64, !dbg !57127
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.ji, !dbg !57128 ; 2 uses
  %i.jk = zext i1 %i.jg to i64, !dbg !57129
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.jk, !dbg !57130 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !57131
  %.sroa.017.0.val.i.1 = load i32, ptr %i.ij, align 4, !dbg !57132, !alias.scope !56867, !noundef !3509 ; 2 uses
  %.sroa.015.0.val.i.1 = load i32, ptr %i.ik, align 4, !dbg !57132, !alias.scope !56867, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56876), !dbg !57133
  %i.jn = load ptr, ptr %.0.val, align 8, !dbg !57134, !alias.scope !56876, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.jo = load i32, ptr %i.jn, align 4, !dbg !57135, !noalias !56877, !noundef !3509 ; 2 uses
  %i.jp = add i32 %i.jo, %.sroa.017.0.val.i.1, !dbg !57135
  %i.jq = zext i32 %i.jp to i64, !dbg !57136      ; 2 uses
  %i.jr = add i32 %i.jo, %.sroa.015.0.val.i.1, !dbg !57137
  %i.js = zext i32 %i.jr to i64, !dbg !57138      ; 2 uses
  %i.jt = load ptr, ptr %i.h, align 8, !dbg !57139, !alias.scope !56876, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509 ; 2 uses
  %i.ju = load i64, ptr %i.j, align 8, !dbg !57139, !alias.scope !56876, !noalias !56867, !noundef !3509 ; 2 uses
  %i.jv = icmp ugt i64 %i.ju, %i.jq, !dbg !57140
  tail call void @llvm.assume(i1 %i.jv), !dbg !57141
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jq, !dbg !57142
  %i.jx = icmp ugt i64 %i.ju, %i.js, !dbg !57143
  tail call void @llvm.assume(i1 %i.jx), !dbg !57144
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.js, !dbg !57145
  %i.jz = load i32, ptr %i.jw, align 4, !dbg !57146, !noalias !56877, !noundef !3509
  %i.ka = load i32, ptr %i.jy, align 4, !dbg !57147, !noalias !56877, !noundef !3509
  %i.kb = tail call i8 @llvm.ucmp.i8.i32(i32 %i.jz, i32 %i.ka), !dbg !57148 ; 2 uses
  %i.kc = load ptr, ptr %i.s, align 8, !dbg !57149, !alias.scope !56876, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8, !dbg !57149
  %i.ke = load i8, ptr %i.kd, align 4, !dbg !57149, !range !3941, !noalias !56877, !noundef !3509
  %i.kf = trunc nuw i8 %i.ke to i1, !dbg !57149
  %switch.offset.i.i25.i.1 = sub nsw i8 0, %i.kb, !dbg !57149
  %.sroa.0.0.i.i26.i.1 = select i1 %i.kf, i8 %switch.offset.i.i25.i.1, i8 %i.kb, !dbg !57149
  %i.kg = icmp eq i8 %.sroa.0.0.i.i26.i.1, -1, !dbg !57150 ; 3 uses
  %i.kh = xor i1 %i.kg, true, !dbg !57151
  %i.ki = select i1 %i.kg, i32 %.sroa.015.0.val.i.1, i32 %.sroa.017.0.val.i.1, !dbg !57152
  store i32 %i.ki, ptr %i.il, align 4, !dbg !57152, !noalias !56873
  %.neg.i.i.1 = sext i1 %i.kh to i64, !dbg !57153
  %i.kj = getelementptr [4 x i8], ptr %i.ij, i64 %.neg.i.i.1, !dbg !57154 ; 2 uses
  %.neg15.i.i.1 = sext i1 %i.kg to i64, !dbg !57155
  %i.kk = getelementptr [4 x i8], ptr %i.ik, i64 %.neg15.i.i.1, !dbg !57156 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !57157
  %.sroa.011.0.val.i.2 = load i32, ptr %i.jj, align 4, !dbg !57106, !alias.scope !56867, !noundef !3509 ; 2 uses
  %.sroa.06.0.val.i.2 = load i32, ptr %i.jl, align 4, !dbg !57106, !alias.scope !56867, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56878), !dbg !57107
  %i.km = load ptr, ptr %.0.val, align 8, !dbg !57108, !alias.scope !56878, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.kn = load i32, ptr %i.km, align 4, !dbg !57109, !noalias !56879, !noundef !3509 ; 2 uses
  %i.ko = add i32 %i.kn, %.sroa.011.0.val.i.2, !dbg !57109
  %i.kp = zext i32 %i.ko to i64, !dbg !57110      ; 2 uses
  %i.kq = add i32 %i.kn, %.sroa.06.0.val.i.2, !dbg !57111
  %i.kr = zext i32 %i.kq to i64, !dbg !57112      ; 2 uses
  %i.ks = load ptr, ptr %i.h, align 8, !dbg !57113, !alias.scope !56878, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509 ; 2 uses
  %i.kt = load i64, ptr %i.j, align 8, !dbg !57113, !alias.scope !56878, !noalias !56867, !noundef !3509 ; 2 uses
  %i.ku = icmp ugt i64 %i.kt, %i.kp, !dbg !57114
  tail call void @llvm.assume(i1 %i.ku), !dbg !57115
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.kp, !dbg !57116
  %i.kw = icmp ugt i64 %i.kt, %i.kr, !dbg !57117
  tail call void @llvm.assume(i1 %i.kw), !dbg !57118
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.kr, !dbg !57119
  %i.ky = load i32, ptr %i.kv, align 4, !dbg !57120, !noalias !56879, !noundef !3509
  %i.kz = load i32, ptr %i.kx, align 4, !dbg !57121, !noalias !56879, !noundef !3509
  %i.la = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ky, i32 %i.kz), !dbg !57122 ; 2 uses
  %i.lb = load ptr, ptr %i.s, align 8, !dbg !57123, !alias.scope !56878, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8, !dbg !57123
  %i.ld = load i8, ptr %i.lc, align 4, !dbg !57123, !range !3941, !noalias !56879, !noundef !3509
  %i.le = trunc nuw i8 %i.ld to i1, !dbg !57123
  %switch.offset.i.i.i23.2 = sub nsw i8 0, %i.la, !dbg !57123
  %.sroa.0.0.i.i.i24.2 = select i1 %i.le, i8 %switch.offset.i.i.i23.2, i8 %i.la, !dbg !57123
  %i.lf = icmp eq i8 %.sroa.0.0.i.i.i24.2, -1, !dbg !57124 ; 3 uses
  %i.lg = xor i1 %i.lf, true, !dbg !57125
  %i.lh = select i1 %i.lf, i32 %.sroa.011.0.val.i.2, i32 %.sroa.06.0.val.i.2, !dbg !57126
  store i32 %i.lh, ptr %i.jm, align 4, !dbg !57126, !noalias !56870
  %i.li = zext i1 %i.lf to i64, !dbg !57127
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.li, !dbg !57128 ; 2 uses
  %i.lk = zext i1 %i.lg to i64, !dbg !57129
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.lk, !dbg !57130 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !57131
  %.sroa.017.0.val.i.2 = load i32, ptr %i.kj, align 4, !dbg !57132, !alias.scope !56867, !noundef !3509 ; 2 uses
  %.sroa.015.0.val.i.2 = load i32, ptr %i.kk, align 4, !dbg !57132, !alias.scope !56867, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56880), !dbg !57133
  %i.ln = load ptr, ptr %.0.val, align 8, !dbg !57134, !alias.scope !56880, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509
  %i.lo = load i32, ptr %i.ln, align 4, !dbg !57135, !noalias !56881, !noundef !3509 ; 2 uses
  %i.lp = add i32 %i.lo, %.sroa.017.0.val.i.2, !dbg !57135
  %i.lq = zext i32 %i.lp to i64, !dbg !57136      ; 2 uses
  %i.lr = add i32 %i.lo, %.sroa.015.0.val.i.2, !dbg !57137
  %i.ls = zext i32 %i.lr to i64, !dbg !57138      ; 2 uses
  %i.lt = load ptr, ptr %i.h, align 8, !dbg !57139, !alias.scope !56880, !noalias !56867, !nonnull !3509, !align !3810, !noundef !3509 ; 2 uses
  %i.lu = load i64, ptr %i.j, align 8, !dbg !57139, !alias.scope !56880, !noalias !56867, !noundef !3509 ; 2 uses
  %i.lv = icmp ugt i64 %i.lu, %i.lq, !dbg !57140
  tail call void @llvm.assume(i1 %i.lv), !dbg !57141
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lq, !dbg !57142
  %i.lx = icmp ugt i64 %i.lu, %i.ls, !dbg !57143
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB2i_10WindowExprNtB2k_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB2m_:bb.a
  %i.t = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !61323
  br i1 %i.t, label %.lr.ph, label %.loopexit, !dbg !61285

.loopexit:                                        ; preds = %.lr.ph, %bb.i
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d, !dbg !61324
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d, !dbg !61325 ; 2 uses
  %i.w = icmp samesign ult i64 %.sroa.0.0, %i.s, !dbg !61323
  br i1 %i.w, label %.lr.ph.1, label %.loopexit.1, !dbg !61285

.lr.ph.1:                                         ; preds = %.loopexit, %.lr.ph.1
  %.sroa.05.038.1 = phi i64 [ %i.aa, %.lr.ph.1 ], [ %.sroa.0.0, %.loopexit ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.05.038.1, !dbg !61326
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.05.038.1, !dbg !61327 ; 2 uses
  %i.z = load i32, ptr %i.x, align 4, !dbg !61328
  store i32 %i.z, ptr %i.y, align 4, !dbg !61328
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Y_10WindowExprNtB20_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB22_(ptr noundef %i.v, ptr noundef %i.y, ptr nonnull %.val31), !dbg !61329
  %i.aa = add nuw nsw i64 %.sroa.05.038.1, 1, !dbg !61330 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %i.s, !dbg !61323
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1, !dbg !61285

.loopexit.1:                                      ; preds = %.lr.ph.1, %.loopexit
  invoke fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB26_10WindowExprNtB28_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB2a_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %1, ptr noundef nonnull %0, ptr %.val31)
          to label %bb.k unwind label %bb.j, !dbg !61331

bb.j:                                             ; preds = %.loopexit.1
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = shl nuw nsw i64 %1, 2, !dbg !61332
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.ac, i1 false), !dbg !61332, !noalias !61293
  resume { ptr, i32 } %i.ab, !dbg !61333

bb.k:                                             ; preds = %.loopexit.1, %bb.a
  ret void, !dbg !61334

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.sroa.05.038 = phi i64 [ %i.ag, %.lr.ph ], [ %.sroa.0.0, %bb.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.05.038, !dbg !61326
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.05.038, !dbg !61327 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !dbg !61328
  store i32 %i.af, ptr %i.ae, align 4, !dbg !61328
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Y_10WindowExprNtB20_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB22_(ptr noundef %2, ptr noundef %i.ae, ptr nonnull %.val31), !dbg !61329
  %i.ag = add nuw nsw i64 %.sroa.05.038, 1, !dbg !61330 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.d, !dbg !61323
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !dbg !61285
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB2i_10WindowExprNtB2k_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB2m_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !61335 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !61672
  br i1 %i.a, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB26_10WindowExprNtB28_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB2a_.exit, label %bb.b, !dbg !61672

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16, !dbg !61673
  %i.c = icmp samesign ult i64 %3, %i.b, !dbg !61674
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !61674

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1, !dbg !61675              ; 13 uses
  %i.e = icmp samesign ugt i64 %1, 15, !dbg !61676
  br i1 %i.e, label %bb.f, label %bb.e, !dbg !61676

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !61677
  unreachable, !dbg !61677

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7, !dbg !61678
  br i1 %i.f, label %bb.g, label %bb.h, !dbg !61678

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %1, !dbg !61679 ; 2 uses
  %.val33 = load ptr, ptr %4, align 8, !dbg !61680, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort8_stablemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Z_10WindowExprNtB21_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB23_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g, ptr nonnull %.val33), !dbg !61680
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d, !dbg !61681
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d, !dbg !61682
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !61683
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort8_stablemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Z_10WindowExprNtB21_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB23_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr nonnull %.val33), !dbg !61684
  br label %bb.i, !dbg !61685

bb.g:                                             ; preds = %bb.e
  %.val30 = load ptr, ptr %4, align 8, !dbg !61686, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !61687
  %.val13.i = load i32, ptr %i.k, align 4, !dbg !61688, !noundef !3509
  %.val14.i = load i32, ptr %0, align 4, !dbg !61688, !noundef !3509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61632), !dbg !61689
  %i.l = load ptr, ptr %.val30, align 8, !dbg !61690, !alias.scope !61632, !nonnull !3509, !align !3810, !noundef !3509
  %i.m = load i32, ptr %i.l, align 4, !dbg !61691, !noalias !61632, !noundef !3509 ; 20 uses
  %i.n = add i32 %i.m, %.val13.i, !dbg !61691
  %i.o = zext i32 %i.n to i64, !dbg !61692        ; 2 uses
  %i.p = add i32 %i.m, %.val14.i, !dbg !61693
  %i.q = zext i32 %i.p to i64, !dbg !61694        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val30, i64 8, !dbg !61695
  %i.s = load ptr, ptr %i.r, align 8, !dbg !61695, !alias.scope !61632, !nonnull !3509, !align !3810, !noundef !3509 ; 20 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val30, i64 16, !dbg !61695
  %i.u = load i64, ptr %i.t, align 8, !dbg !61695, !alias.scope !61632, !noundef !3509 ; 20 uses
  %i.v = icmp ugt i64 %i.u, %i.o, !dbg !61696
  tail call void @llvm.assume(i1 %i.v), !dbg !61697
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.o, !dbg !61698
  %i.x = icmp ugt i64 %i.u, %i.q, !dbg !61699
  tail call void @llvm.assume(i1 %i.x), !dbg !61700
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q, !dbg !61701
  %i.z = load i32, ptr %i.w, align 4, !dbg !61702, !noalias !61632, !noundef !3509
  %i.aa = load i32, ptr %i.y, align 4, !dbg !61703, !noalias !61632, !noundef !3509
  %i.ab = tail call i8 @llvm.ucmp.i8.i32(i32 %i.z, i32 %i.aa), !dbg !61704 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val30, i64 24, !dbg !61705
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !61705, !alias.scope !61632, !nonnull !3509, !align !3810, !noundef !3509
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !61705
  %i.af = load i8, ptr %i.ae, align 4, !dbg !61705, !range !3941, !noalias !61632, !noundef !3509
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !61705   ; 10 uses
  %switch.offset.i.i.i = sub nsw i8 0, %i.ab, !dbg !61705
  %.sroa.0.0.i.i.i = select i1 %i.ag, i8 %switch.offset.i.i.i, i8 %i.ab, !dbg !61705
  %i.ah = icmp eq i8 %.sroa.0.0.i.i.i, -1, !dbg !61706 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !61707
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61708
  %.val10.i = load i32, ptr %i.ai, align 4, !dbg !61709, !noundef !3509
  %.val11.i = load i32, ptr %i.aj, align 4, !dbg !61709, !noundef !3509
  %i.ak = add i32 %.val10.i, %i.m, !dbg !61710
  %i.al = zext i32 %i.ak to i64, !dbg !61711      ; 2 uses
  %i.am = add i32 %.val11.i, %i.m, !dbg !61712
  %i.an = zext i32 %i.am to i64, !dbg !61713      ; 2 uses
  %i.ao = icmp ugt i64 %i.u, %i.al, !dbg !61714
  tail call void @llvm.assume(i1 %i.ao), !dbg !61715
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.al, !dbg !61716
  %i.aq = icmp ugt i64 %i.u, %i.an, !dbg !61717
  tail call void @llvm.assume(i1 %i.aq), !dbg !61718
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.an, !dbg !61719
  %i.as = load i32, ptr %i.ap, align 4, !dbg !61720, !noalias !61633, !noundef !3509
  %i.at = load i32, ptr %i.ar, align 4, !dbg !61721, !noalias !61633, !noundef !3509
  %i.au = tail call i8 @llvm.ucmp.i8.i32(i32 %i.as, i32 %i.at), !dbg !61722 ; 2 uses
  %switch.offset.i.i15.i = sub nsw i8 0, %i.au, !dbg !61723
  %.sroa.0.0.i.i16.i = select i1 %i.ag, i8 %switch.offset.i.i15.i, i8 %i.au, !dbg !61723
  %i.av = icmp eq i8 %.sroa.0.0.i.i16.i, -1, !dbg !61724 ; 2 uses
  %i.aw = zext i1 %i.ah to i64, !dbg !61725
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw, !dbg !61726 ; 2 uses
  %i.ay = xor i1 %i.ah, true, !dbg !61727
  %i.az = zext i1 %i.ay to i64, !dbg !61727
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.az, !dbg !61728 ; 3 uses
  %i.bb = select i1 %i.av, i64 3, i64 2, !dbg !61729
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb, !dbg !61730 ; 3 uses
  %i.bd = select i1 %i.av, i64 2, i64 3, !dbg !61731
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bd, !dbg !61732 ; 2 uses
  %.val7.i = load i32, ptr %i.bc, align 4, !dbg !61733, !noundef !3509 ; 2 uses
  %.val8.i = load i32, ptr %i.ax, align 4, !dbg !61733, !noundef !3509 ; 2 uses
  %i.bf = add i32 %.val7.i, %i.m, !dbg !61734
  %i.bg = zext i32 %i.bf to i64, !dbg !61735      ; 2 uses
  %i.bh = add i32 %.val8.i, %i.m, !dbg !61736
  %i.bi = zext i32 %i.bh to i64, !dbg !61737      ; 2 uses
  %i.bj = icmp ugt i64 %i.u, %i.bg, !dbg !61738
  tail call void @llvm.assume(i1 %i.bj), !dbg !61739
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bg, !dbg !61740
  %i.bl = icmp ugt i64 %i.u, %i.bi, !dbg !61741
  tail call void @llvm.assume(i1 %i.bl), !dbg !61742
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bi, !dbg !61743
  %i.bn = load i32, ptr %i.bk, align 4, !dbg !61744, !noalias !61634, !noundef !3509
  %i.bo = load i32, ptr %i.bm, align 4, !dbg !61745, !noalias !61634, !noundef !3509
  %i.bp = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bn, i32 %i.bo), !dbg !61746 ; 2 uses
  %switch.offset.i.i17.i = sub nsw i8 0, %i.bp, !dbg !61747
  %.sroa.0.0.i.i18.i = select i1 %i.ag, i8 %switch.offset.i.i17.i, i8 %i.bp, !dbg !61747
  %i.bq = icmp eq i8 %.sroa.0.0.i.i18.i, -1, !dbg !61748 ; 3 uses
  %.val4.i = load i32, ptr %i.be, align 4, !dbg !61749, !noundef !3509 ; 2 uses
  %.val5.i = load i32, ptr %i.ba, align 4, !dbg !61749, !noundef !3509 ; 2 uses
  %i.br = add i32 %.val4.i, %i.m, !dbg !61750
  %i.bs = zext i32 %i.br to i64, !dbg !61751      ; 2 uses
  %i.bt = add i32 %.val5.i, %i.m, !dbg !61752
  %i.bu = zext i32 %i.bt to i64, !dbg !61753      ; 2 uses
  %i.bv = icmp ugt i64 %i.u, %i.bs, !dbg !61754
  tail call void @llvm.assume(i1 %i.bv), !dbg !61755
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bs, !dbg !61756
  %i.bx = icmp ugt i64 %i.u, %i.bu, !dbg !61757
  tail call void @llvm.assume(i1 %i.bx), !dbg !61758
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bu, !dbg !61759
  %i.bz = load i32, ptr %i.bw, align 4, !dbg !61760, !noalias !61635, !noundef !3509
  %i.ca = load i32, ptr %i.by, align 4, !dbg !61761, !noalias !61635, !noundef !3509
  %i.cb = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bz, i32 %i.ca), !dbg !61762 ; 2 uses
  %switch.offset.i.i19.i = sub nsw i8 0, %i.cb, !dbg !61763
  %.sroa.0.0.i.i20.i = select i1 %i.ag, i8 %switch.offset.i.i19.i, i8 %i.cb, !dbg !61763
  %i.cc = icmp eq i8 %.sroa.0.0.i.i20.i, -1, !dbg !61764 ; 3 uses
  %i.cd = select i1 %i.cc, ptr %i.bc, ptr %i.ba, !dbg !61765, !unpredictable !3509
  %i.ce = select i1 %i.bq, ptr %i.ax, ptr %i.cd, !dbg !61766, !unpredictable !3509
  %i.cf = select i1 %i.bq, ptr %i.ba, ptr %i.bc, !dbg !61767, !unpredictable !3509
  %i.cg = select i1 %i.cc, ptr %i.be, ptr %i.cf, !dbg !61768, !unpredictable !3509
  %.val1.i = load i32, ptr %i.cg, align 4, !dbg !61769, !noundef !3509 ; 3 uses
  %.val2.i = load i32, ptr %i.ce, align 4, !dbg !61769, !noundef !3509 ; 3 uses
  %i.ch = add i32 %.val1.i, %i.m, !dbg !61770
  %i.ci = zext i32 %i.ch to i64, !dbg !61771      ; 2 uses
  %i.cj = add i32 %.val2.i, %i.m, !dbg !61772
  %i.ck = zext i32 %i.cj to i64, !dbg !61773      ; 2 uses
  %i.cl = icmp ugt i64 %i.u, %i.ci, !dbg !61774
  tail call void @llvm.assume(i1 %i.cl), !dbg !61775
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ci, !dbg !61776
  %i.cn = icmp ugt i64 %i.u, %i.ck, !dbg !61777
  tail call void @llvm.assume(i1 %i.cn), !dbg !61778
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ck, !dbg !61779
  %i.cp = load i32, ptr %i.cm, align 4, !dbg !61780, !noalias !61636, !noundef !3509
  %i.cq = load i32, ptr %i.co, align 4, !dbg !61781, !noalias !61636, !noundef !3509
  %i.cr = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cp, i32 %i.cq), !dbg !61782 ; 2 uses
  %switch.offset.i.i21.i = sub nsw i8 0, %i.cr, !dbg !61783
  %.sroa.0.0.i.i22.i = select i1 %i.ag, i8 %switch.offset.i.i21.i, i8 %i.cr, !dbg !61783
  %i.cs = icmp eq i8 %.sroa.0.0.i.i22.i, -1, !dbg !61784 ; 2 uses
  %i.ct = select i1 %i.bq, i32 %.val7.i, i32 %.val8.i, !dbg !61785, !unpredictable !3509
  store i32 %i.ct, ptr %2, align 4, !dbg !61785
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !61786
  %i.cv = select i1 %i.cs, i32 %.val1.i, i32 %.val2.i, !dbg !61787, !unpredictable !3509
  store i32 %i.cv, ptr %i.cu, align 4, !dbg !61787
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61788
  %i.cx = select i1 %i.cs, i32 %.val2.i, i32 %.val1.i, !dbg !61789, !unpredictable !3509
  store i32 %i.cx, ptr %i.cw, align 4, !dbg !61789
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !61790
  %i.cz = select i1 %i.cc, i32 %.val5.i, i32 %.val4.i, !dbg !61791, !unpredictable !3509
  store i32 %i.cz, ptr %i.cy, align 4, !dbg !61791
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d, !dbg !61792 ; 8 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d, !dbg !61793 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4, !dbg !61794
  %.val13.i35 = load i32, ptr %i.dc, align 4, !dbg !61795, !noundef !3509
  %.val14.i36 = load i32, ptr %i.da, align 4, !dbg !61795, !noundef !3509
  %i.dd = add i32 %.val13.i35, %i.m, !dbg !61796
  %i.de = zext i32 %i.dd to i64, !dbg !61797      ; 2 uses
  %i.df = add i32 %.val14.i36, %i.m, !dbg !61798
  %i.dg = zext i32 %i.df to i64, !dbg !61799      ; 2 uses
  %i.dh = icmp ugt i64 %i.u, %i.de, !dbg !61800
  tail call void @llvm.assume(i1 %i.dh), !dbg !61801
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.de, !dbg !61802
  %i.dj = icmp ugt i64 %i.u, %i.dg, !dbg !61803
  tail call void @llvm.assume(i1 %i.dj), !dbg !61804
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.dg, !dbg !61805
  %i.dl = load i32, ptr %i.di, align 4, !dbg !61806, !noalias !61639, !noundef !3509
  %i.dm = load i32, ptr %i.dk, align 4, !dbg !61807, !noalias !61639, !noundef !3509
  %i.dn = tail call i8 @llvm.ucmp.i8.i32(i32 %i.dl, i32 %i.dm), !dbg !61808 ; 2 uses
  %switch.offset.i.i.i37 = sub nsw i8 0, %i.dn, !dbg !61809
  %.sroa.0.0.i.i.i38 = select i1 %i.ag, i8 %switch.offset.i.i.i37, i8 %i.dn, !dbg !61809
  %i.do = icmp eq i8 %.sroa.0.0.i.i.i38, -1, !dbg !61810 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 12, !dbg !61811
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !61812
  %.val10.i39 = load i32, ptr %i.dp, align 4, !dbg !61813, !noundef !3509
  %.val11.i40 = load i32, ptr %i.dq, align 4, !dbg !61813, !noundef !3509
  %i.dr = add i32 %.val10.i39, %i.m, !dbg !61814
  %i.ds = zext i32 %i.dr to i64, !dbg !61815      ; 2 uses
  %i.dt = add i32 %.val11.i40, %i.m, !dbg !61816
  %i.du = zext i32 %i.dt to i64, !dbg !61817      ; 2 uses
  %i.dv = icmp ugt i64 %i.u, %i.ds, !dbg !61818
  tail call void @llvm.assume(i1 %i.dv), !dbg !61819
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ds, !dbg !61820
  %i.dx = icmp ugt i64 %i.u, %i.du, !dbg !61821
  tail call void @llvm.assume(i1 %i.dx), !dbg !61822
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.du, !dbg !61823
  %i.dz = load i32, ptr %i.dw, align 4, !dbg !61824, !noalias !61640, !noundef !3509
  %i.ea = load i32, ptr %i.dy, align 4, !dbg !61825, !noalias !61640, !noundef !3509
  %i.eb = tail call i8 @llvm.ucmp.i8.i32(i32 %i.dz, i32 %i.ea), !dbg !61826 ; 2 uses
  %switch.offset.i.i15.i41 = sub nsw i8 0, %i.eb, !dbg !61827
  %.sroa.0.0.i.i16.i42 = select i1 %i.ag, i8 %switch.offset.i.i15.i41, i8 %i.eb, !dbg !61827
  %i.ec = icmp eq i8 %.sroa.0.0.i.i16.i42, -1, !dbg !61828 ; 2 uses
  %i.ed = zext i1 %i.do to i64, !dbg !61829
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ed, !dbg !61830 ; 2 uses
  %i.ef = xor i1 %i.do, true, !dbg !61831
  %i.eg = zext i1 %i.ef to i64, !dbg !61831
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.eg, !dbg !61832 ; 3 uses
  %i.ei = select i1 %i.ec, i64 3, i64 2, !dbg !61833
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ei, !dbg !61834 ; 3 uses
  %i.ek = select i1 %i.ec, i64 2, i64 3, !dbg !61835
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ek, !dbg !61836 ; 2 uses
  %.val7.i43 = load i32, ptr %i.ej, align 4, !dbg !61837, !noundef !3509 ; 2 uses
  %.val8.i44 = load i32, ptr %i.ee, align 4, !dbg !61837, !noundef !3509 ; 2 uses
  %i.em = add i32 %.val7.i43, %i.m, !dbg !61838
  %i.en = zext i32 %i.em to i64, !dbg !61839      ; 2 uses
  %i.eo = add i32 %.val8.i44, %i.m, !dbg !61840
  %i.ep = zext i32 %i.eo to i64, !dbg !61841      ; 2 uses
  %i.eq = icmp ugt i64 %i.u, %i.en, !dbg !61842
  tail call void @llvm.assume(i1 %i.eq), !dbg !61843
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.en, !dbg !61844
  %i.es = icmp ugt i64 %i.u, %i.ep, !dbg !61845
  tail call void @llvm.assume(i1 %i.es), !dbg !61846
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ep, !dbg !61847
  %i.eu = load i32, ptr %i.er, align 4, !dbg !61848, !noalias !61641, !noundef !3509
  %i.ev = load i32, ptr %i.et, align 4, !dbg !61849, !noalias !61641, !noundef !3509
  %i.ew = tail call i8 @llvm.ucmp.i8.i32(i32 %i.eu, i32 %i.ev), !dbg !61850 ; 2 uses
  %switch.offset.i.i17.i45 = sub nsw i8 0, %i.ew, !dbg !61851
  %.sroa.0.0.i.i18.i46 = select i1 %i.ag, i8 %switch.offset.i.i17.i45, i8 %i.ew, !dbg !61851
  %i.ex = icmp eq i8 %.sroa.0.0.i.i18.i46, -1, !dbg !61852 ; 3 uses
  %.val4.i47 = load i32, ptr %i.el, align 4, !dbg !61853, !noundef !3509 ; 2 uses
  %.val5.i48 = load i32, ptr %i.eh, align 4, !dbg !61853, !noundef !3509 ; 2 uses
  %i.ey = add i32 %.val4.i47, %i.m, !dbg !61854
  %i.ez = zext i32 %i.ey to i64, !dbg !61855      ; 2 uses
  %i.fa = add i32 %.val5.i48, %i.m, !dbg !61856
  %i.fb = zext i32 %i.fa to i64, !dbg !61857      ; 2 uses
  %i.fc = icmp ugt i64 %i.u, %i.ez, !dbg !61858
  tail call void @llvm.assume(i1 %i.fc), !dbg !61859
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ez, !dbg !61860
  %i.fe = icmp ugt i64 %i.u, %i.fb, !dbg !61861
  tail call void @llvm.assume(i1 %i.fe), !dbg !61862
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.fb, !dbg !61863
  %i.fg = load i32, ptr %i.fd, align 4, !dbg !61864, !noalias !61642, !noundef !3509
  %i.fh = load i32, ptr %i.ff, align 4, !dbg !61865, !noalias !61642, !noundef !3509
  %i.fi = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fg, i32 %i.fh), !dbg !61866 ; 2 uses
  %switch.offset.i.i19.i49 = sub nsw i8 0, %i.fi, !dbg !61867
  %.sroa.0.0.i.i20.i50 = select i1 %i.ag, i8 %switch.offset.i.i19.i49, i8 %i.fi, !dbg !61867
  %i.fj = icmp eq i8 %.sroa.0.0.i.i20.i50, -1, !dbg !61868 ; 3 uses
  %i.fk = select i1 %i.fj, ptr %i.ej, ptr %i.eh, !dbg !61869, !unpredictable !3509
  %i.fl = select i1 %i.ex, ptr %i.ee, ptr %i.fk, !dbg !61870, !unpredictable !3509
  %i.fm = select i1 %i.ex, ptr %i.eh, ptr %i.ej, !dbg !61871, !unpredictable !3509
  %i.fn = select i1 %i.fj, ptr %i.el, ptr %i.fm, !dbg !61872, !unpredictable !3509
  %.val1.i51 = load i32, ptr %i.fn, align 4, !dbg !61873, !noundef !3509 ; 3 uses
  %.val2.i52 = load i32, ptr %i.fl, align 4, !dbg !61873, !noundef !3509 ; 3 uses
  %i.fo = add i32 %.val1.i51, %i.m, !dbg !61874
  %i.fp = zext i32 %i.fo to i64, !dbg !61875      ; 2 uses
  %i.fq = add i32 %.val2.i52, %i.m, !dbg !61876
  %i.fr = zext i32 %i.fq to i64, !dbg !61877      ; 2 uses
  %i.fs = icmp ugt i64 %i.u, %i.fp, !dbg !61878
  tail call void @llvm.assume(i1 %i.fs), !dbg !61879
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.fp, !dbg !61880
  %i.fu = icmp ugt i64 %i.u, %i.fr, !dbg !61881
  tail call void @llvm.assume(i1 %i.fu), !dbg !61882
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.fr, !dbg !61883
  %i.fw = load i32, ptr %i.ft, align 4, !dbg !61884, !noalias !61643, !noundef !3509
  %i.fx = load i32, ptr %i.fv, align 4, !dbg !61885, !noalias !61643, !noundef !3509
  %i.fy = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fw, i32 %i.fx), !dbg !61886 ; 2 uses
  %switch.offset.i.i21.i53 = sub nsw i8 0, %i.fy, !dbg !61887
  %.sroa.0.0.i.i22.i54 = select i1 %i.ag, i8 %switch.offset.i.i21.i53, i8 %i.fy, !dbg !61887
  %i.fz = icmp eq i8 %.sroa.0.0.i.i22.i54, -1, !dbg !61888 ; 2 uses
  %i.ga = select i1 %i.ex, i32 %.val7.i43, i32 %.val8.i44, !dbg !61889, !unpredictable !3509
  store i32 %i.ga, ptr %i.db, align 4, !dbg !61889
  %i.gb = getelementptr inbounds nuw i8, ptr %i.db, i64 4, !dbg !61890
  %i.gc = select i1 %i.fz, i32 %.val1.i51, i32 %.val2.i52, !dbg !61891, !unpredictable !3509
  store i32 %i.gc, ptr %i.gb, align 4, !dbg !61891
  %i.gd = getelementptr inbounds nuw i8, ptr %i.db, i64 8, !dbg !61892
  %i.ge = select i1 %i.fz, i32 %.val2.i52, i32 %.val1.i51, !dbg !61893, !unpredictable !3509
  store i32 %i.ge, ptr %i.gd, align 4, !dbg !61893
  %i.gf = getelementptr inbounds nuw i8, ptr %i.db, i64 12, !dbg !61894
  %i.gg = select i1 %i.fj, i32 %.val5.i48, i32 %.val4.i47, !dbg !61895, !unpredictable !3509
  store i32 %i.gg, ptr %i.gf, align 4, !dbg !61895
  br label %bb.i, !dbg !61896

bb.h:                                             ; preds = %bb.e
  %i.gh = load i32, ptr %0, align 4, !dbg !61897
  store i32 %i.gh, ptr %2, align 4, !dbg !61897
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d, !dbg !61898
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d, !dbg !61899
  %i.gk = load i32, ptr %i.gi, align 4, !dbg !61900
  store i32 %i.gk, ptr %i.gj, align 4, !dbg !61900
  br label %bb.i, !dbg !61896

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ], !dbg !61901 ; 4 uses
  %i.gl = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %.val34 = load ptr, ptr %4, align 8, !nonnull !3509 ; 8 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.val34, i64 8 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.val34, i64 16 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val34, i64 24 ; 5 uses
  %i.gp = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !61902
  br i1 %i.gp, label %.lr.ph, label %.loopexit, !dbg !61651

.loopexit:                                        ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Y_10WindowExprNtB20_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB22_.exit, %bb.i
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d, !dbg !61903
  %i.gr = getelementptr [4 x i8], ptr %2, i64 %i.d, !dbg !61904 ; 7 uses
  %i.gs = icmp samesign ult i64 %.sroa.0.0, %i.gl, !dbg !61902
  br i1 %i.gs, label %.lr.ph.1, label %.loopexit.1, !dbg !61651

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Y_10WindowExprNtB20_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB22_.exit.1
  %.sroa.05.068.1 = phi i64 [ %i.io, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Y_10WindowExprNtB20_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB22_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.sroa.05.068.1, !dbg !61905
  %.idx117 = shl nuw nsw i64 %.sroa.05.068.1, 2, !dbg !61906
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx117, !dbg !61906 ; 3 uses
  %i.gv = load i32, ptr %i.gt, align 4, !dbg !61907 ; 4 uses
  store i32 %i.gv, ptr %i.gu, align 4, !dbg !61907
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 -4, !dbg !61908 ; 2 uses
  %.val12.i.1 = load i32, ptr %i.gw, align 4, !dbg !61909, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61657), !dbg !61910
  %i.gx = load ptr, ptr %.val34, align 8, !dbg !61911, !alias.scope !61657, !nonnull !3509, !align !3810, !noundef !3509
  %i.gy = load i32, ptr %i.gx, align 4, !dbg !61912, !noalias !61657, !noundef !3509 ; 2 uses
  %i.gz = add i32 %i.gy, %i.gv, !dbg !61912
  %i.ha = zext i32 %i.gz to i64, !dbg !61913      ; 2 uses
  %i.hb = add i32 %i.gy, %.val12.i.1, !dbg !61914
  %i.hc = zext i32 %i.hb to i64, !dbg !61915      ; 2 uses
  %i.hd = load ptr, ptr %i.gm, align 8, !dbg !61916, !alias.scope !61657, !nonnull !3509, !align !3810, !noundef !3509 ; 2 uses
  %i.he = load i64, ptr %i.gn, align 8, !dbg !61916, !alias.scope !61657, !noundef !3509 ; 2 uses
  %i.hf = icmp ugt i64 %i.he, %i.ha, !dbg !61917
  tail call void @llvm.assume(i1 %i.hf), !dbg !61918
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ha, !dbg !61919
  %i.hh = icmp ugt i64 %i.he, %i.hc, !dbg !61920
  tail call void @llvm.assume(i1 %i.hh), !dbg !61921
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hc, !dbg !61922
  %i.hj = load i32, ptr %i.hg, align 4, !dbg !61923, !noalias !61657, !noundef !3509
  %i.hk = load i32, ptr %i.hi, align 4, !dbg !61924, !noalias !61657, !noundef !3509
  %i.hl = tail call i8 @llvm.ucmp.i8.i32(i32 %i.hj, i32 %i.hk), !dbg !61925 ; 2 uses
  %i.hm = load ptr, ptr %i.go, align 8, !dbg !61926, !alias.scope !61657, !nonnull !3509, !align !3810, !noundef !3509
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8, !dbg !61926
  %i.ho = load i8, ptr %i.hn, align 4, !dbg !61926, !range !3941, !noalias !61657, !noundef !3509
  %i.hp = trunc nuw i8 %i.ho to i1, !dbg !61926
  %switch.offset.i.i.i58.1 = sub nsw i8 0, %i.hl, !dbg !61926
  %.sroa.0.0.i.i.i59.1 = select i1 %i.hp, i8 %switch.offset.i.i.i58.1, i8 %i.hl, !dbg !61926
  %i.hq = icmp eq i8 %.sroa.0.0.i.i.i59.1, -1, !dbg !61927
  br i1 %i.hq, label %.preheader.1.preheader, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Y_10WindowExprNtB20_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB22_.exit.1, !dbg !61909

.preheader.1.preheader:                           ; preds = %.lr.ph.1
  store i32 %.val12.i.1, ptr %i.gu, align 4, !dbg !61928
  %i.hr = icmp eq i64 %.sroa.05.068.1, 1, !dbg !61929
  br i1 %i.hr, label %._crit_edge114, label %.lr.ph113.preheader, !dbg !61929

.lr.ph113.preheader:                              ; preds = %.preheader.1.preheader
  %i.hs = load ptr, ptr %.val34, align 8, !alias.scope !61658, !nonnull !3509, !align !3810, !noundef !3509
  %i.ht = load i32, ptr %i.hs, align 4, !noalias !61658, !noundef !3509 ; 2 uses
  %i.hu = add i32 %i.ht, %i.gv
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = load ptr, ptr %i.gm, align 8, !alias.scope !61658, !nonnull !3509, !align !3810, !noundef !3509 ; 2 uses
  %i.hx = load i64, ptr %i.gn, align 8, !alias.scope !61658, !noundef !3509 ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, %i.hv
  tail call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hv
  %i.ia = load i32, ptr %i.hz, align 4, !noalias !61658, !noundef !3509
  %i.ib = load ptr, ptr %i.go, align 8, !alias.scope !61658, !nonnull !3509, !align !3810, !noundef !3509
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i8, ptr %i.ic, align 4, !range !3941, !noalias !61658, !noundef !3509
  %i.ie = trunc nuw i8 %i.id to i1
  br label %.lr.ph113, !dbg !61930

.preheader.1:                                     ; preds = %.lr.ph113
  store i32 %.val9.i.1, ptr %.sroa.0.0.i60.1112, align 4, !dbg !61928
  %i.if = icmp eq ptr %i.ig, %i.gr, !dbg !61929
  br i1 %i.if, label %._crit_edge114, label %.lr.ph113, !dbg !61929

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %.preheader.1
  %.sroa.0.0.i60.1112 = phi ptr [ %i.ig, %.preheader.1 ], [ %i.gw, %.lr.ph113.preheader ] ; 3 uses
  %i.ig = getelementptr inbounds i8, ptr %.sroa.0.0.i60.1112, i64 -4, !dbg !61931 ; 3 uses
  %.val9.i.1 = load i32, ptr %i.ig, align 4, !dbg !61930, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61658), !dbg !61932
  %i.ih = add i32 %i.ht, %.val9.i.1, !dbg !61933
  %i.ii = zext i32 %i.ih to i64, !dbg !61934      ; 2 uses
  %i.ij = icmp ugt i64 %i.hx, %i.ii, !dbg !61935
  tail call void @llvm.assume(i1 %i.ij), !dbg !61936
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ii, !dbg !61937
  %i.il = load i32, ptr %i.ik, align 4, !dbg !61938, !noalias !61658, !noundef !3509
  %i.im = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ia, i32 %i.il), !dbg !61939 ; 2 uses
  %switch.offset.i.i13.i.1 = sub nsw i8 0, %i.im, !dbg !61940
  %.sroa.0.0.i.i14.i.1 = select i1 %i.ie, i8 %switch.offset.i.i13.i.1, i8 %i.im, !dbg !61940
  %i.in = icmp eq i8 %.sroa.0.0.i.i14.i.1, -1, !dbg !61941
  br i1 %i.in, label %.preheader.1, label %._crit_edge114, !dbg !61930

._crit_edge114:                                   ; preds = %.preheader.1, %.lr.ph113, %.preheader.1.preheader
  %.sroa.0.0.i60.lcssa.1 = phi ptr [ %i.gr, %.preheader.1.preheader ], [ %i.gr, %.preheader.1 ], [ %.sroa.0.0.i60.1112, %.lr.ph113 ], !dbg !61942
  store i32 %i.gv, ptr %.sroa.0.0.i60.lcssa.1, align 4, !dbg !61943, !noalias !61659
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Y_10WindowExprNtB20_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB22_.exit.1, !dbg !61944

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Y_10WindowExprNtB20_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB22_.exit.1: ; preds = %._crit_edge114, %.lr.ph.1
  %i.io = add nuw nsw i64 %.sroa.05.068.1, 1, !dbg !61945 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.io, %i.gl, !dbg !61902
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1, !dbg !61651

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Y_10WindowExprNtB20_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB22_.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61662), !dbg !61946
  %i.ip = add nsw i64 %1, -1, !dbg !61947         ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ip, !dbg !61948 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.gr, i64 -4, !dbg !61949 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ip, !dbg !61950 ; 2 uses
  %i.it = load ptr, ptr %.val34, align 8, !alias.scope !61663, !noalias !61662, !nonnull !3509, !align !3810, !noundef !3509
  %i.iu = load i32, ptr %i.it, align 4, !noalias !61664, !noundef !3509 ; 8 uses
  %i.iv = load ptr, ptr %i.gm, align 8, !alias.scope !61663, !noalias !61662, !nonnull !3509, !align !3810, !noundef !3509 ; 8 uses
  %i.iw = load i64, ptr %i.gn, align 8, !alias.scope !61663, !noalias !61662, !noundef !3509 ; 8 uses
  %i.ix = load ptr, ptr %i.go, align 8, !alias.scope !61663, !noalias !61662, !nonnull !3509, !align !3810, !noundef !3509
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i8, ptr %i.iy, align 4, !range !3941, !noalias !61664, !noundef !3509
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %.split.us, label %.split

.split.us:                                        ; preds = %.loopexit.1, %.split.us
  %.sroa.0.010.i.us = phi ptr [ %i.jt, %.split.us ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i.us = phi i64 [ %i.jb, %.split.us ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i.us = phi ptr [ %i.js, %.split.us ], [ %2, %.loopexit.1 ] ; 2 uses
  %.sroa.011.07.i.us = phi ptr [ %i.jq, %.split.us ], [ %i.gr, %.loopexit.1 ] ; 2 uses
  %.sroa.015.06.i.us = phi ptr [ %i.ki, %.split.us ], [ %i.ir, %.loopexit.1 ] ; 2 uses
  %.sroa.017.05.i.us = phi ptr [ %i.kh, %.split.us ], [ %i.iq, %.loopexit.1 ] ; 2 uses
  %.sroa.019.04.i.us = phi ptr [ %i.kj, %.split.us ], [ %i.is, %.loopexit.1 ] ; 2 uses
  %i.jb = add nuw nsw i64 %.sroa.04.09.i.us, 1, !dbg !61951 ; 2 uses
  %.sroa.011.0.val.i.us = load i32, ptr %.sroa.011.07.i.us, align 4, !dbg !61952, !alias.scope !61662, !noundef !3509 ; 2 uses
  %.sroa.06.0.val.i.us = load i32, ptr %.sroa.06.08.i.us, align 4, !dbg !61952, !alias.scope !61662, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61663), !dbg !61953
  %i.jc = add i32 %i.iu, %.sroa.011.0.val.i.us, !dbg !61954
  %i.jd = zext i32 %i.jc to i64, !dbg !61955      ; 2 uses
  %i.je = add i32 %i.iu, %.sroa.06.0.val.i.us, !dbg !61956
  %i.jf = zext i32 %i.je to i64, !dbg !61957      ; 2 uses
  %i.jg = icmp ugt i64 %i.iw, %i.jd, !dbg !61958
  tail call void @llvm.assume(i1 %i.jg), !dbg !61959
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jd, !dbg !61960
  %i.ji = icmp ugt i64 %i.iw, %i.jf, !dbg !61961
  tail call void @llvm.assume(i1 %i.ji), !dbg !61962
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jf, !dbg !61963
  %i.jk = load i32, ptr %i.jh, align 4, !dbg !61964, !noalias !61664, !noundef !3509
  %i.jl = load i32, ptr %i.jj, align 4, !dbg !61965, !noalias !61664, !noundef !3509
  %i.jm = icmp ult i32 %i.jl, %i.jk, !dbg !61966  ; 3 uses
  %i.jn = xor i1 %i.jm, true, !dbg !61967
  %i.jo = select i1 %i.jm, i32 %.sroa.011.0.val.i.us, i32 %.sroa.06.0.val.i.us, !dbg !61968
  store i32 %i.jo, ptr %.sroa.0.010.i.us, align 4, !dbg !61968, !noalias !61666
  %i.jp = zext i1 %i.jm to i64, !dbg !61969
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.07.i.us, i64 %i.jp, !dbg !61970 ; 2 uses
  %i.jr = zext i1 %i.jn to i64, !dbg !61971
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.08.i.us, i64 %i.jr, !dbg !61972 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.us, i64 4, !dbg !61973 ; 2 uses
  %.sroa.017.0.val.i.us = load i32, ptr %.sroa.017.05.i.us, align 4, !dbg !61974, !alias.scope !61662, !noundef !3509 ; 2 uses
  %.sroa.015.0.val.i.us = load i32, ptr %.sroa.015.06.i.us, align 4, !dbg !61974, !alias.scope !61662, !noundef !3509 ; 2 uses
  %i.ju = add i32 %.sroa.017.0.val.i.us, %i.iu, !dbg !61975
  %i.jv = zext i32 %i.ju to i64, !dbg !61976      ; 2 uses
  %i.jw = add i32 %.sroa.015.0.val.i.us, %i.iu, !dbg !61977
  %i.jx = zext i32 %i.jw to i64, !dbg !61978      ; 2 uses
  %i.jy = icmp ugt i64 %i.iw, %i.jv, !dbg !61979
  tail call void @llvm.assume(i1 %i.jy), !dbg !61980
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jv, !dbg !61981
  %i.ka = icmp ugt i64 %i.iw, %i.jx, !dbg !61982
  tail call void @llvm.assume(i1 %i.ka), !dbg !61983
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jx, !dbg !61984
  %i.kc = load i32, ptr %i.jz, align 4, !dbg !61985, !noalias !61667, !noundef !3509
  %i.kd = load i32, ptr %i.kb, align 4, !dbg !61986, !noalias !61667, !noundef !3509
  %i.ke = icmp ult i32 %i.kd, %i.kc, !dbg !61987  ; 3 uses
  %i.kf = xor i1 %i.ke, true, !dbg !61988
  %i.kg = select i1 %i.ke, i32 %.sroa.015.0.val.i.us, i32 %.sroa.017.0.val.i.us, !dbg !61989
  store i32 %i.kg, ptr %.sroa.019.04.i.us, align 4, !dbg !61989, !noalias !61668
  %.neg.i.i.us = sext i1 %i.kf to i64, !dbg !61990
  %i.kh = getelementptr [4 x i8], ptr %.sroa.017.05.i.us, i64 %.neg.i.i.us, !dbg !61991 ; 2 uses
  %.neg15.i.i.us = sext i1 %i.ke to i64, !dbg !61992
  %i.ki = getelementptr [4 x i8], ptr %.sroa.015.06.i.us, i64 %.neg15.i.i.us, !dbg !61993 ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %.sroa.019.04.i.us, i64 -4, !dbg !61994
  %exitcond.not.i.us = icmp eq i64 %i.jb, %i.d, !dbg !61995
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.split.us, !dbg !61996

._crit_edge.i:                                    ; preds = %.split, %.split.us
  %.us-phi = phi ptr [ %i.jq, %.split.us ], [ %i.ld, %.split ], !dbg !61997 ; 3 uses
  %.us-phi69 = phi ptr [ %i.js, %.split.us ], [ %i.lf, %.split ], !dbg !61997 ; 4 uses
  %.us-phi70 = phi ptr [ %i.jt, %.split.us ], [ %i.lg, %.split ], !dbg !61997
  %.us-phi71 = phi ptr [ %i.kh, %.split.us ], [ %i.lu, %.split ], !dbg !61997
  %.us-phi72 = phi ptr [ %i.ki, %.split.us ], [ %i.lv, %.split ], !dbg !61997
  %i.kk = getelementptr i8, ptr %.us-phi72, i64 4, !dbg !61997 ; 2 uses
end_hunk_1
