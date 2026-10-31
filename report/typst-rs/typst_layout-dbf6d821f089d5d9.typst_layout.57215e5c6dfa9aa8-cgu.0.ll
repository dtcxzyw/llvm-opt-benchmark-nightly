Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19602
inline.NumDeleted: 9840
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter16measure_auto_row:bb.a
  %n.vec1597 = and i64 %i.xg, 2305843009213693948 ; 3 uses
  br label %vector.body1598

vector.body1598:                                  ; preds = %vector.body1598, %vector.ph1596
  %index1599 = phi i64 [ 0, %vector.ph1596 ], [ %index.next1602, %vector.body1598 ] ; 3 uses
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %index1599 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %wide.load1600 = load <2 x double>, ptr %i.xs, align 8, !noalias !28404
  %wide.load1601 = load <2 x double>, ptr %i.xt, align 8, !noalias !28404
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %index1599 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store <2 x double> %wide.load1600, ptr %i.xu, align 8, !noalias !28405
  store <2 x double> %wide.load1601, ptr %i.xv, align 8, !noalias !28405
  %index.next1602 = add nuw i64 %index1599, 4     ; 2 uses
  %i.xw = icmp eq i64 %index.next1602, %n.vec1597
  br i1 %i.xw, label %middle.block1603, label %vector.body1598, !llvm.loop !28163

middle.block1603:                                 ; preds = %vector.body1598
  %cmp.n1604 = icmp eq i64 %i.xg, %n.vec1597
  br i1 %cmp.n1604, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2r_6copied6CopiedINtNtNtB2v_5slice4iter4IterB13_EEINtNtNtB2t_7sources4once4OnceB13_EEE9from_iterCs7tN9tvpkfrg_12typst_layout.exit.i, label %.preheader483.preheader1711

.preheader483.preheader1711:                      ; preds = %vector.memcheck1591, %.preheader483.preheader, %middle.block1603
  %.ph1712 = phi i64 [ 0, %vector.memcheck1591 ], [ 0, %.preheader483.preheader ], [ %n.vec1597, %middle.block1603 ] ; 3 uses
  %xtraiter1770 = and i64 %i.xg, 3                ; 2 uses
  %lcmp.mod1771.not = icmp eq i64 %xtraiter1770, 0
  br i1 %lcmp.mod1771.not, label %.preheader483.prol.loopexit, label %.preheader483.prol

.preheader483.prol:                               ; preds = %.preheader483.preheader1711, %.preheader483.prol
  %i.xx = phi i64 [ %i.ya, %.preheader483.prol ], [ %.ph1712, %.preheader483.preheader1711 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader483.prol ], [ 0, %.preheader483.preheader1711 ]
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.xx
  %.val8.i.i.i.i.i.i.i.i.prol = load double, ptr %i.xy, align 8, !noalias !28404, !noundef !41
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.xx
  store double %.val8.i.i.i.i.i.i.i.i.prol, ptr %i.xz, align 8, !noalias !28405
  %i.ya = add nuw i64 %i.xx, 1                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1770
  br i1 %prol.iter.cmp.not, label %.preheader483.prol.loopexit, label %.preheader483.prol, !llvm.loop !28164

.preheader483.prol.loopexit:                      ; preds = %.preheader483.prol, %.preheader483.preheader1711
  %.unr = phi i64 [ %.ph1712, %.preheader483.preheader1711 ], [ %i.ya, %.preheader483.prol ]
  %i.yb = sub nsw i64 %.ph1712, %i.xg
  %i.yc = icmp ugt i64 %i.yb, -4
  br i1 %i.yc, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2r_6copied6CopiedINtNtNtB2v_5slice4iter4IterB13_EEINtNtNtB2t_7sources4once4OnceB13_EEE9from_iterCs7tN9tvpkfrg_12typst_layout.exit.i, label %.preheader483

.preheader483:                                    ; preds = %.preheader483.prol.loopexit, %.preheader483
  %i.yd = phi i64 [ %i.yp, %.preheader483 ], [ %.unr, %.preheader483.prol.loopexit ] ; 6 uses
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.yd
  %.val8.i.i.i.i.i.i.i.i = load double, ptr %i.ye, align 8, !noalias !28404, !noundef !41
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.yd
  store double %.val8.i.i.i.i.i.i.i.i, ptr %i.yf, align 8, !noalias !28405
  %i.yg = add nuw i64 %i.yd, 1                    ; 2 uses
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.yg
  %.val8.i.i.i.i.i.i.i.i.1 = load double, ptr %i.yh, align 8, !noalias !28404, !noundef !41
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.yg
  store double %.val8.i.i.i.i.i.i.i.i.1, ptr %i.yi, align 8, !noalias !28405
  %i.yj = add nuw i64 %i.yd, 2                    ; 2 uses
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.yj
  %.val8.i.i.i.i.i.i.i.i.2 = load double, ptr %i.yk, align 8, !noalias !28404, !noundef !41
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.yj
  store double %.val8.i.i.i.i.i.i.i.i.2, ptr %i.yl, align 8, !noalias !28405
  %i.ym = add nuw i64 %i.yd, 3                    ; 2 uses
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.ym
  %.val8.i.i.i.i.i.i.i.i.3 = load double, ptr %i.yn, align 8, !noalias !28404, !noundef !41
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ym
  store double %.val8.i.i.i.i.i.i.i.i.3, ptr %i.yo, align 8, !noalias !28405
  %i.yp = add nuw i64 %i.yd, 4                    ; 2 uses
  %i.yq = icmp eq i64 %i.yp, %i.xg
  br i1 %i.yq, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2r_6copied6CopiedINtNtNtB2v_5slice4iter4IterB13_EEINtNtNtB2t_7sources4once4OnceB13_EEE9from_iterCs7tN9tvpkfrg_12typst_layout.exit.i, label %.preheader483, !llvm.loop !28165

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2r_6copied6CopiedINtNtNtB2v_5slice4iter4IterB13_EEINtNtNtB2t_7sources4once4OnceB13_EEE9from_iterCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.preheader483.prol.loopexit, %.preheader483, %middle.block1603, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %gepdiff29.i
  store double +inf, ptr %i.yr, align 8, !noalias !28406
  br label %.loopexit35.i

.loopexit35.i:                                    ; preds = %.preheader679, %middle.block1574, %.loopexit36.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2r_6copied6CopiedINtNtNtB2v_5slice4iter4IterB13_EEINtNtNtB2t_7sources4once4OnceB13_EEE9from_iterCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.7327.0 = phi i64 [ %spec.select.i.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2r_6copied6CopiedINtNtNtB2v_5slice4iter4IterB13_EEINtNtNtB2t_7sources4once4OnceB13_EEE9from_iterCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.aac, %.loopexit36.i ], [ %i.aae, %middle.block1574 ], [ %i.abc, %.preheader679 ]
  %.sroa.5326.0 = phi ptr [ %.sroa.10.0.i.i.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2r_6copied6CopiedINtNtNtB2v_5slice4iter4IterB13_EEINtNtNtB2t_7sources4once4OnceB13_EEE9from_iterCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.yw, %.loopexit36.i ], [ %i.yw, %middle.block1574 ], [ %i.yw, %.preheader679 ]
  %.sroa.0325.0 = phi i64 [ %.sroa.4.0.i.i.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2r_6copied6CopiedINtNtNtB2v_5slice4iter4IterB13_EEINtNtNtB2t_7sources4once4OnceB13_EEE9from_iterCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %.reass, %.loopexit36.i ], [ %.reass, %middle.block1574 ], [ %.reass, %.preheader679 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28407)
  %.val.i68.i = load i64, ptr %i.l, align 8, !range !45, !alias.scope !28407, !noalias !28386, !noundef !41 ; 2 uses
  %i.ys = icmp eq i64 %.val.i68.i, 0
  br i1 %i.ys, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i, label %bb.du

bb.du:                                            ; preds = %.loopexit35.i
  %.val1.i69.i = load ptr, ptr %i.ap, align 8, !alias.scope !28407, !noalias !28386, !nonnull !41, !noundef !41
  %i.yt = shl nuw i64 %.val.i68.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i69.i, i64 noundef %i.yt, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !28408
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEINtNtNtB8_7sources4once4OnceB1P_EEINtNtB6_3map3MapB1p_NCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB3E_8layouter12GridLayouter33prepare_auto_row_cell_measurements5_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3G_.exit.i.i: ; preds = %bb.ds
  %.reass = add nuw nsw i64 %invariant.op, %i.xg  ; 5 uses
  %i.yu = shl i64 %.reass, 3                      ; 4 uses
  %i.yv = icmp samesign ugt i64 %.reass, 2305843009213693951
  %.not.i.i2.i.i = icmp ugt i64 %i.yu, 9223372036854775800
  %or.cond.i.i.i73.i = or i1 %i.yv, %.not.i.i2.i.i
  br i1 %or.cond.i.i.i73.i, label %.invoke.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i74.i, !prof !61

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i74.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEINtNtNtB8_7sources4once4OnceB1P_EEINtNtB6_3map3MapB1p_NCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB3E_8layouter12GridLayouter33prepare_auto_row_cell_measurements5_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3G_.exit.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55, !noalias !28409
  %i.yw = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.yu, i64 noundef range(i64 1, 17) 8) #55, !noalias !28409 ; 14 uses
  %i.yx = ptrtoaddr ptr %i.yw to i64              ; 2 uses
  %i.yy = icmp eq ptr %i.yw, null
  br i1 %i.yy, label %.invoke.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i80.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i80.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i74.i
  %i.yz = icmp eq i64 %.idx26.i, 8
  br i1 %i.yz, label %.loopexit36.i, label %.preheader482.preheader

.preheader482.preheader:                          ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i80.i
  %min.iters.check1580 = icmp ult i64 %gepdiff29.i, 48
  br i1 %min.iters.check1580, label %.preheader482.preheader1709, label %vector.memcheck1577

vector.memcheck1577:                              ; preds = %.preheader482.preheader
  %i.za = sub i64 %i.yx, %i.wv
  %i.zb = add i64 %i.za, -9
  %diff.check1578 = icmp ult i64 %i.zb, 31
  br i1 %diff.check1578, label %.preheader482.preheader1709, label %vector.ph1581

vector.ph1581:                                    ; preds = %vector.memcheck1577
  %n.vec1582 = and i64 %i.xg, 2305843009213693948 ; 3 uses
  br label %vector.body1583

vector.body1583:                                  ; preds = %vector.body1583, %vector.ph1581
  %index1584 = phi i64 [ 0, %vector.ph1581 ], [ %index.next1587, %vector.body1583 ] ; 3 uses
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %index1584 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %wide.load1585 = load <2 x double>, ptr %i.zc, align 8, !noalias !28410
  %wide.load1586 = load <2 x double>, ptr %i.zd, align 8, !noalias !28410
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %index1584 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  store <2 x double> %wide.load1585, ptr %i.ze, align 8, !noalias !28411
  store <2 x double> %wide.load1586, ptr %i.zf, align 8, !noalias !28411
  %index.next1587 = add nuw i64 %index1584, 4     ; 2 uses
  %i.zg = icmp eq i64 %index.next1587, %n.vec1582
  br i1 %i.zg, label %middle.block1588, label %vector.body1583, !llvm.loop !28200

middle.block1588:                                 ; preds = %vector.body1583
  %cmp.n1589 = icmp eq i64 %i.xg, %n.vec1582
  br i1 %cmp.n1589, label %.loopexit36.i, label %.preheader482.preheader1709

.preheader482.preheader1709:                      ; preds = %vector.memcheck1577, %.preheader482.preheader, %middle.block1588
  %.ph1710 = phi i64 [ 0, %vector.memcheck1577 ], [ 0, %.preheader482.preheader ], [ %n.vec1582, %middle.block1588 ] ; 3 uses
  %xtraiter1772 = and i64 %i.xg, 3                ; 2 uses
  %lcmp.mod1773.not = icmp eq i64 %xtraiter1772, 0
  br i1 %lcmp.mod1773.not, label %.preheader482.prol.loopexit, label %.preheader482.prol

.preheader482.prol:                               ; preds = %.preheader482.preheader1709, %.preheader482.prol
  %i.zh = phi i64 [ %i.zk, %.preheader482.prol ], [ %.ph1710, %.preheader482.preheader1709 ] ; 3 uses
  %prol.iter1774 = phi i64 [ %prol.iter1774.next, %.preheader482.prol ], [ 0, %.preheader482.preheader1709 ]
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.zh
  %.val8.i.i.i.i.i.i.i.i.i.prol = load double, ptr %i.zi, align 8, !noalias !28410, !noundef !41
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.zh
  store double %.val8.i.i.i.i.i.i.i.i.i.prol, ptr %i.zj, align 8, !noalias !28411
  %i.zk = add nuw i64 %i.zh, 1                    ; 2 uses
  %prol.iter1774.next = add i64 %prol.iter1774, 1 ; 2 uses
  %prol.iter1774.cmp.not = icmp eq i64 %prol.iter1774.next, %xtraiter1772
  br i1 %prol.iter1774.cmp.not, label %.preheader482.prol.loopexit, label %.preheader482.prol, !llvm.loop !28201

.preheader482.prol.loopexit:                      ; preds = %.preheader482.prol, %.preheader482.preheader1709
  %.unr1775 = phi i64 [ %.ph1710, %.preheader482.preheader1709 ], [ %i.zk, %.preheader482.prol ]
  %i.zl = sub nsw i64 %.ph1710, %i.xg
  %i.zm = icmp ugt i64 %i.zl, -4
  br i1 %i.zm, label %.loopexit36.i, label %.preheader482

.preheader482:                                    ; preds = %.preheader482.prol.loopexit, %.preheader482
  %i.zn = phi i64 [ %i.zz, %.preheader482 ], [ %.unr1775, %.preheader482.prol.loopexit ] ; 6 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.zn
  %.val8.i.i.i.i.i.i.i.i.i = load double, ptr %i.zo, align 8, !noalias !28410, !noundef !41
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.zn
  store double %.val8.i.i.i.i.i.i.i.i.i, ptr %i.zp, align 8, !noalias !28411
  %i.zq = add nuw i64 %i.zn, 1                    ; 2 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.zq
  %.val8.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.zr, align 8, !noalias !28410, !noundef !41
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.zq
  store double %.val8.i.i.i.i.i.i.i.i.i.1, ptr %i.zs, align 8, !noalias !28411
  %i.zt = add nuw i64 %i.zn, 2                    ; 2 uses
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.zt
  %.val8.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.zu, align 8, !noalias !28410, !noundef !41
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.zt
  store double %.val8.i.i.i.i.i.i.i.i.i.2, ptr %i.zv, align 8, !noalias !28411
  %i.zw = add nuw i64 %i.zn, 3                    ; 2 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.zw
  %.val8.i.i.i.i.i.i.i.i.i.3 = load double, ptr %i.zx, align 8, !noalias !28410, !noundef !41
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.zw
  store double %.val8.i.i.i.i.i.i.i.i.i.3, ptr %i.zy, align 8, !noalias !28411
  %i.zz = add nuw i64 %i.zn, 4                    ; 2 uses
  %i.aaa = icmp eq i64 %i.zz, %i.xg
  br i1 %i.aaa, label %.loopexit36.i, label %.preheader482, !llvm.loop !28202

.loopexit36.i:                                    ; preds = %.preheader482.prol.loopexit, %.preheader482, %middle.block1588, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i80.i
  %i.aab = getelementptr inbounds nuw i8, ptr %i.yw, i64 %gepdiff29.i
  store double %i.bh, ptr %i.aab, align 8, !noalias !28412
  %i.aac = add nuw nsw i64 %i.xg, 1               ; 5 uses
  br i1 %i.bn, label %.loopexit35.i, label %.preheader679.preheader

.preheader679.preheader:                          ; preds = %.loopexit36.i
  br i1 %min.iters.check1565, label %.preheader679.preheader1707, label %vector.memcheck1563

vector.memcheck1563:                              ; preds = %.preheader679.preheader
  %i.aad = add i64 %.idx26.i, %i.yx
  %8 = sub i64 %i.bk, %i.aad
  %diff.check = icmp ugt i64 %8, -32
  br i1 %diff.check, label %.preheader679.preheader1707, label %vector.ph1566

vector.ph1566:                                    ; preds = %vector.memcheck1563
  %i.aae = add i64 %i.aac, %n.vec1567             ; 2 uses
  %i.aaf = getelementptr [8 x i8], ptr %i.yw, i64 %i.aac
  br label %vector.body1570

vector.body1570:                                  ; preds = %vector.body1570, %vector.ph1566
  %index1571 = phi i64 [ 0, %vector.ph1566 ], [ %index.next1573, %vector.body1570 ] ; 3 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1571 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %wide.load = load <2 x double>, ptr %i.aag, align 8, !noalias !28413
  %wide.load1572 = load <2 x double>, ptr %i.aah, align 8, !noalias !28413
  %i.aai = fadd <2 x double> %broadcast.splat, %wide.load ; 2 uses
  %i.aaj = fadd <2 x double> %broadcast.splat, %wide.load1572 ; 2 uses
  %i.aak = fcmp ord <2 x double> %i.aai, zeroinitializer
  %i.aal = fcmp ord <2 x double> %i.aaj, zeroinitializer
  %i.aam = select <2 x i1> %i.aak, <2 x double> %i.aai, <2 x double> zeroinitializer
  %i.aan = select <2 x i1> %i.aal, <2 x double> %i.aaj, <2 x double> zeroinitializer
  %i.aao = fadd <2 x double> %broadcast.splat1569, %i.aam ; 2 uses
  %i.aap = fadd <2 x double> %broadcast.splat1569, %i.aan ; 2 uses
  %i.aaq = fcmp ord <2 x double> %i.aao, zeroinitializer
  %i.aar = fcmp ord <2 x double> %i.aap, zeroinitializer
  %i.aas = select <2 x i1> %i.aaq, <2 x double> %i.aao, <2 x double> zeroinitializer
  %i.aat = select <2 x i1> %i.aar, <2 x double> %i.aap, <2 x double> zeroinitializer
  %i.aau = getelementptr [8 x i8], ptr %i.aaf, i64 %index1571 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  store <2 x double> %i.aas, ptr %i.aau, align 8, !noalias !28414
  store <2 x double> %i.aat, ptr %i.aav, align 8, !noalias !28414
  %index.next1573 = add nuw i64 %index1571, 4     ; 2 uses
  %i.aaw = icmp eq i64 %index.next1573, %n.vec1567
  br i1 %i.aaw, label %middle.block1574, label %vector.body1570, !llvm.loop !28220

middle.block1574:                                 ; preds = %vector.body1570
  br i1 %cmp.n, label %.loopexit35.i, label %.preheader679.preheader1707

.preheader679.preheader1707:                      ; preds = %vector.memcheck1563, %.preheader679.preheader, %middle.block1574
  %.ph1708 = phi i64 [ %i.aac, %vector.memcheck1563 ], [ %i.aac, %.preheader679.preheader ], [ %i.aae, %middle.block1574 ]
  %.sroa.01.0.i.i.i.i.i.i.i81.i.ph = phi i64 [ 0, %vector.memcheck1563 ], [ 0, %.preheader679.preheader ], [ %n.vec1567, %middle.block1574 ]
  br label %.preheader679

.preheader679:                                    ; preds = %.preheader679.preheader1707, %.preheader679
  %i.aax = phi i64 [ %i.abc, %.preheader679 ], [ %.ph1708, %.preheader679.preheader1707 ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i81.i = phi i64 [ %i.abd, %.preheader679 ], [ %.sroa.01.0.i.i.i.i.i.i.i81.i.ph, %.preheader679.preheader1707 ] ; 2 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sroa.01.0.i.i.i.i.i.i.i81.i
  %.val15.i.i.i.i.i.i.i.i = load double, ptr %i.aay, align 8, !noalias !28413, !noundef !41
  %i.aaz = fadd double %spec.store.select.i.i.i.i.i.i.i.i.i.i, %.val15.i.i.i.i.i.i.i.i ; 2 uses
  %.inv.i.i.i.i.i.i.i.i.i.i = fcmp ord double %i.aaz, 0.000000e+00
  %spec.store.select1.i.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i.i.i, double %i.aaz, double 0.000000e+00
  %i.aba = fadd double %spec.store.select2.i.i.i.i.i.i.i.i.i.i, %spec.store.select1.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.inv15.i.i.i.i.i.i.i.i.i.i = fcmp ord double %i.aba, 0.000000e+00
  %spec.store.select3.i.i.i.i.i.i.i.i.i.i = select i1 %.inv15.i.i.i.i.i.i.i.i.i.i, double %i.aba, double 0.000000e+00
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.aax
  store double %spec.store.select3.i.i.i.i.i.i.i.i.i.i, ptr %i.abb, align 8, !noalias !28414
  %i.abc = add i64 %i.aax, 1                      ; 2 uses
  %i.abd = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i81.i, 1 ; 2 uses
  %i.abe = icmp eq i64 %i.abd, %i.bm
  br i1 %i.abe, label %.loopexit35.i, label %.preheader679, !llvm.loop !28221

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i: ; preds = %bb.du, %.loopexit35.i
  store i64 %.sroa.0325.0, ptr %i.l, align 8, !noalias !28386
  store ptr %.sroa.5326.0, ptr %i.ap, align 8, !noalias !28386
  store i64 %.sroa.7327.0, ptr %i.aq, align 8, !noalias !28386
  %i.abf = load double, ptr %i.wu, align 8, !noalias !28387, !noundef !41 ; 2 uses
  br i1 %i.bx, label %bb.dv, label %bb.dk

bb.dv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i
  br label %bb.dk

.loopexit481.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod1777.not = icmp eq i64 %xtraiter1776.a, 0
  br i1 %lcmp.mod1777.not, label %.loopexit481, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %.loopexit481.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.010.i.i.i.i.i.i.epil.init = phi double [ -0.000000e+00, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.vh, %.loopexit481.loopexit.unr-lcssa ]
  %.sroa.02.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.vf, %.loopexit481.loopexit.unr-lcssa ]
  %lcmp.mod1779 = icmp ne i64 %xtraiter1776.a, 0
  call void @llvm.assume(i1 %lcmp.mod1779)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.sroa.0.010.i.i.i.i.i.i.epil = phi double [ %i.abh, %.lr.ph.i.i.i.i.i.i.epil ], [ %.sroa.0.010.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.sroa.02.09.i.i.i.i.i.i.epil = phi i64 [ %i.abg, %.lr.ph.i.i.i.i.i.i.epil ], [ %.sroa.02.09.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %i.abg = add nuw nsw i64 %.sroa.02.09.i.i.i.i.i.i.epil, 1
  %gep.i.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.epil
  %.val8.i.i.i.i.i.i.epil = load double, ptr %gep.i.i.i.i.i.i.epil, align 8, !noalias !28394, !noundef !41
  %i.abh = fadd double %.sroa.0.010.i.i.i.i.i.i.epil, %.val8.i.i.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1776.a
  br i1 %epil.iter.cmp.not, label %.loopexit481, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !28222

.loopexit481:                                     ; preds = %.loopexit481.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %bb.dk
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi double [ -0.000000e+00, %bb.dk ], [ %i.vh, %.loopexit481.loopexit.unr-lcssa ], [ %i.abh, %.lr.ph.i.i.i.i.i.i.epil ] ; 2 uses
  %.inv.i.i.i = fcmp ord double %.sroa.0.0.lcssa.i.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %.inv.i.i.i, double %.sroa.0.0.lcssa.i.i.i.i.i.i, double 0.000000e+00 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !28415
  store double %spec.store.select.i.i.i, ptr %i.cp, align 8, !alias.scope !28384
  store double %.sroa.025.1.i, ptr %i.cq, align 8, !alias.scope !28384
  store ptr %.sroa.026.0.i, ptr %i.cr, align 8, !alias.scope !28384
  store i64 %.sroa.427.0.i, ptr %i.cs, align 8, !alias.scope !28384
  store double %.sroa.028.1.i, ptr %i.ct, align 8, !alias.scope !28384
  store i64 %.sroa.020.0.i, ptr %i.v, align 8, !alias.scope !28384
  store double %.sroa.521.0.i, ptr %i.cu, align 8, !alias.scope !28384
  store double %.sroa.09.0.i, ptr %i.cv, align 8, !alias.scope !28384
  store i64 %.sroa.0.0.i115, ptr %i.cw, align 8, !alias.scope !28384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !28386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !28386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.abi = load ptr, ptr %i.cx, align 8, !nonnull !41, !noundef !41
  %i.abj = load i64, ptr %i.cy, align 8, !noundef !41
  %.not75 = icmp eq ptr %.sroa.026.0.i, null      ; 2 uses
  %.sroa.424.0 = select i1 %.not75, i64 %i.abj, i64 %.sroa.427.0.i ; 2 uses
  %.sroa.022.0 = select i1 %.not75, ptr %i.abi, ptr %.sroa.026.0.i ; 2 uses
  br i1 %i.z, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.loopexit481
  store double %spec.store.select.i.i.i, ptr %i.dd, align 8
  store double %.sroa.025.1.i, ptr %i.de, align 8
  store i8 %i.da, ptr %i.df, align 8
  store i8 %i.dc, ptr %i.dg, align 1
  store ptr inttoptr (i64 8 to ptr), ptr %i.di, align 8
  store i64 0, ptr %i.dj, align 8
  store i64 0, ptr %i.u, align 8
  store double %.sroa.028.1.i, ptr %i.dh, align 8
  %.not76 = icmp eq i64 %.sroa.0.0.i115, 0
  br i1 %.not76, label %bb.dz, label %bb.dy

bb.dx:                                            ; preds = %.loopexit481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  store double %spec.store.select.i.i.i, ptr %i.dd, align 8
  store double %.sroa.025.1.i, ptr %i.de, align 8
  store ptr %.sroa.022.0, ptr %i.di, align 8, !captures !65
  store i64 %.sroa.424.0, ptr %i.dj, align 8
  store double %.sroa.028.1.i, ptr %i.dh, align 8
  store i64 %.sroa.020.0.i, ptr %i.u, align 8
  store double %.sroa.521.0.i, ptr %i.dk, align 8
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  store ptr %.sroa.022.0, ptr %i.di, align 8, !captures !65
  store i64 %.sroa.424.0, ptr %i.dj, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dw, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter12cell_locator(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, i64 noundef %.sroa.056.0609, i64 noundef %i.sh, i64 noundef %3)
          to label %bb.eb unwind label %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp493.loopexit.split-lp:          ; preds = %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit
  %.pn80 = phi { ptr, i32 } [ %.pn.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit ], [ %lpad.loopexit.split-lp1720, %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val95 = load i64, ptr %i.co, align 8, !range !45, !alias.scope !28416, !noundef !41 ; 2 uses
  %i.abk = icmp eq i64 %.val95, 0
  br i1 %i.abk, label %.body, label %bb.ea

bb.ea:                                            ; preds = %.loopexit.split-lp493.loopexit.split-lp
  %.val96 = load ptr, ptr %i.cx, align 8, !nonnull !41, !noundef !41
  %i.abl = shl nuw i64 %.val95, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96, i64 noundef %i.abl, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !28417
  br label %.body

.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fk, %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs7tN9tvpkfrg_12typst_layout.exit, %bb.eb, %bb.dz, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2z_12GridLayouter16measure_auto_rows0_0EB2D_.exit
  %lpad.loopexit.split-lp1720 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp493.loopexit.split-lp

bb.eb:                                            ; preds = %bb.dz
  %i.abm = load i128, ptr %i.q, align 16, !noundef !41
  %i.abn = load ptr, ptr %i.dl, align 16, !align !59, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvNtCs7tN9tvpkfrg_12typst_layout4grid11layout_cell(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.si, ptr noalias nofree noundef align 8 dereferenceable(200) %2, i128 noundef %i.abm, ptr noundef align 16 %i.abn, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dm, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.u, i1 noundef zeroext %i.dp)
          to label %bb.ec unwind label %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ec:                                            ; preds = %bb.eb
  %i.abo = load i64, ptr %i.s, align 8, !range !70, !noundef !41 ; 2 uses
  %i.abp = icmp eq i64 %i.abo, -1
  %i.abq = load ptr, ptr %.sroa.463.0..sroa_idx, align 8 ; 7 uses
  %i.abr = load i64, ptr %.sroa.564.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.abp, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.abq, ptr %i.abs, align 8
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.abr, ptr %i.abt, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.eo

bb.ee:                                            ; preds = %bb.ec
  store i64 %i.abo, ptr %i.t, align 8
  store ptr %i.abq, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %i.abr, ptr %.sroa.3.0..sroa_idx, align 8
  %i.abu = icmp ult i64 %i.abr, %.sroa.0.0.i115
  br i1 %i.abu, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.abv = getelementptr inbounds nuw [48 x i8], ptr %i.abq, i64 %.sroa.0.0.i115 ; 2 uses
  %.not77 = icmp eq i64 %i.abr, %.sroa.0.0.i115
  br i1 %.not77, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit, label %bb.ej

_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit: ; preds = %.lr.ph1544, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i, %._crit_edge1545, %bb.ej, %bb.ee, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.abw = getelementptr inbounds nuw [48 x i8], ptr %i.abq, i64 %i.abr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28418)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abq) ]
  %i.abx = ptrtoint ptr %i.abw to i64
  %i.aby = call i64 @llvm.usub.sat.i64(i64 %i.abr, i64 %.sroa.0.0.i115) ; 3 uses
  %.not.i123 = icmp ugt i64 %i.abr, %.sroa.0.0.i115
  br i1 %.not.i123, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit
  %i.abz = shl nuw nsw i64 %i.aby, 3              ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55, !noalias !28419
  %i.aca = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.abz, i64 noundef range(i64 1, 17) 8) #55, !noalias !28419 ; 2 uses
  %i.acb = icmp eq ptr %i.aca, null
  br i1 %i.acb, label %bb.eg, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.eg:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.abz) #56
          to label %.noexc unwind label %bb.em

.noexc:                                           ; preds = %bb.eg
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit
  %.sroa.4280.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit ], [ %i.aca, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 16 uses
  %.sroa.0279.0.copyload = phi i64 [ 0, %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit ], [ %i.aby, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 8 uses
  %i.acc = icmp samesign ule i64 %i.aby, %.sroa.0279.0.copyload
  call void @llvm.assume(i1 %i.acc)
  %.not.i.i.i.i.i.i124 = icmp eq i64 %.sroa.0.0.i115, 0
  br i1 %.not.i.i.i.i.i.i124, label %._crit_edge.i.i.i.i.i.i, label %bb.ei

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ei, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.acd = phi ptr [ %i.aeh, %bb.ei ], [ %i.abq, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 13 uses
  %i.ace = icmp eq ptr %i.acd, %i.abw
  br i1 %i.ace, label %.loopexit479, label %bb.eh

bb.eh:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.acf = ptrtoint ptr %i.acd to i64
  %i.acg = sub nuw i64 %i.abx, %i.acf             ; 3 uses
  %i.ach = udiv i64 %i.acg, 48                    ; 8 uses
  %min.iters.check = icmp ult i64 %i.acg, 336
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.eh
  %i.aci = shl nuw nsw i64 %i.ach, 3
  %scevgep = getelementptr i8, ptr %.sroa.4280.0.copyload, i64 %i.aci
  %scevgep1560 = getelementptr i8, ptr %i.acd, i64 32
  %scevgep1561 = getelementptr i8, ptr %i.acd, i64 %i.acg
  %scevgep1562 = getelementptr i8, ptr %scevgep1561, i64 -8
  %bound0 = icmp ult ptr %.sroa.4280.0.copyload, %scevgep1562
  %bound1 = icmp ult ptr %scevgep1560, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.acj = and i64 %i.ach, 3                      ; 2 uses
  %i.ack = icmp eq i64 %i.acj, 0
  %i.acl = select i1 %i.ack, i64 4, i64 %i.acj
  %n.vec = sub nsw i64 %i.ach, %i.acl             ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.acm = getelementptr inbounds nuw [48 x i8], ptr %i.acd, i64 %index
  %i.acn = getelementptr inbounds nuw [48 x i8], ptr %i.acd, i64 %index
  %i.aco = getelementptr inbounds nuw [48 x i8], ptr %i.acd, i64 %index
  %i.acp = getelementptr inbounds nuw [48 x i8], ptr %i.acd, i64 %index
  %i.acq = getelementptr i8, ptr %i.acm, i64 32
  %i.acr = getelementptr i8, ptr %i.acn, i64 80
  %i.acs = getelementptr i8, ptr %i.aco, i64 128
  %i.act = getelementptr i8, ptr %i.acp, i64 176
  %i.acu = load double, ptr %i.acq, align 8, !alias.scope !28420, !noalias !28421
  %i.acv = load double, ptr %i.acr, align 8, !alias.scope !28420, !noalias !28421
  %i.acw = insertelement <2 x double> poison, double %i.acu, i64 0
  %i.acx = insertelement <2 x double> %i.acw, double %i.acv, i64 1
  %i.acy = load double, ptr %i.acs, align 8, !alias.scope !28420, !noalias !28421
  %i.acz = load double, ptr %i.act, align 8, !alias.scope !28420, !noalias !28421
  %i.ada = insertelement <2 x double> poison, double %i.acy, i64 0
  %i.adb = insertelement <2 x double> %i.ada, double %i.acz, i64 1
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %index ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  store <2 x double> %i.acx, ptr %i.adc, align 8, !alias.scope !28422, !noalias !28423
  store <2 x double> %i.adb, ptr %i.add, align 8, !alias.scope !28422, !noalias !28423
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ade = icmp eq i64 %index.next, %n.vec
  br i1 %i.ade, label %scalar.ph.preheader, label %vector.body, !llvm.loop !28258

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.eh
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.eh ], [ %n.vec, %vector.body ] ; 4 uses
  %i.adf = sub nsw i64 %i.ach, %.ph
  %xtraiter1782 = and i64 %i.adf, 3               ; 2 uses
  %lcmp.mod1783.not = icmp eq i64 %xtraiter1782, 0
  br i1 %lcmp.mod1783.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.adg = phi i64 [ %i.adk, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter1784 = phi i64 [ %prol.iter1784.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.adh = getelementptr inbounds nuw [48 x i8], ptr %i.acd, i64 %i.adg
  %i.adi = getelementptr i8, ptr %i.adh, i64 32
  %.val15.i.i.i.i.i.i.i.prol = load double, ptr %i.adi, align 8, !noalias !28421, !noundef !41
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %i.adg
  store double %.val15.i.i.i.i.i.i.i.prol, ptr %i.adj, align 8, !noalias !28424
  %i.adk = add nuw i64 %i.adg, 1                  ; 2 uses
  %prol.iter1784.next = add i64 %prol.iter1784, 1 ; 2 uses
  %prol.iter1784.cmp.not = icmp eq i64 %prol.iter1784.next, %xtraiter1782
  br i1 %prol.iter1784.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !28259

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr1785 = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.adk, %scalar.ph.prol ]
  %i.adl = sub nsw i64 %.ph, %i.ach
  %i.adm = icmp ugt i64 %i.adl, -4
  br i1 %i.adm, label %.loopexit479, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.adn = phi i64 [ %i.aed, %scalar.ph ], [ %.unr1785, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ado = getelementptr inbounds nuw [48 x i8], ptr %i.acd, i64 %i.adn
  %i.adp = getelementptr i8, ptr %i.ado, i64 32
  %.val15.i.i.i.i.i.i.i = load double, ptr %i.adp, align 8, !noalias !28421, !noundef !41
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %i.adn
  store double %.val15.i.i.i.i.i.i.i, ptr %i.adq, align 8, !noalias !28424
  %i.adr = add nuw i64 %i.adn, 1                  ; 2 uses
  %i.ads = getelementptr inbounds nuw [48 x i8], ptr %i.acd, i64 %i.adr
  %i.adt = getelementptr i8, ptr %i.ads, i64 32
  %.val15.i.i.i.i.i.i.i.1 = load double, ptr %i.adt, align 8, !noalias !28421, !noundef !41
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %i.adr
  store double %.val15.i.i.i.i.i.i.i.1, ptr %i.adu, align 8, !noalias !28424
  %i.adv = add nuw i64 %i.adn, 2                  ; 2 uses
  %i.adw = getelementptr inbounds nuw [48 x i8], ptr %i.acd, i64 %i.adv
  %i.adx = getelementptr i8, ptr %i.adw, i64 32
  %.val15.i.i.i.i.i.i.i.2 = load double, ptr %i.adx, align 8, !noalias !28421, !noundef !41
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %i.adv
  store double %.val15.i.i.i.i.i.i.i.2, ptr %i.ady, align 8, !noalias !28424
  %i.adz = add nuw i64 %i.adn, 3                  ; 2 uses
  %i.aea = getelementptr inbounds nuw [48 x i8], ptr %i.acd, i64 %i.adz
  %i.aeb = getelementptr i8, ptr %i.aea, i64 32
  %.val15.i.i.i.i.i.i.i.3 = load double, ptr %i.aeb, align 8, !noalias !28421, !noundef !41
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %i.adz
  store double %.val15.i.i.i.i.i.i.i.3, ptr %i.aec, align 8, !noalias !28424
  %i.aed = add nuw i64 %i.adn, 4                  ; 2 uses
  %i.aee = icmp eq i64 %i.aed, %i.ach
  br i1 %i.aee, label %.loopexit479, label %scalar.ph, !llvm.loop !28260

bb.ei:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.aef = add i64 %.sroa.0.0.i115, -1            ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp ult i64 %i.aef, %i.abr
  %i.aeg = getelementptr inbounds nuw [48 x i8], ptr %i.abq, i64 %i.aef
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 48
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.loopexit479

bb.ej:                                            ; preds = %bb.ef
  %i.aei = xor i64 %.sroa.0.0.i115, -1
  br i1 %brmerge.demorgan, label %bb.ek, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit

bb.ek:                                            ; preds = %bb.ej
  %i.aej = getelementptr i8, ptr %i.abv, i64 16
  %.val97 = load ptr, ptr %i.aej, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.val97, i64 40
  %i.ael = load ptr, ptr %i.aek, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.val97, i64 48
  %i.aen = load i64, ptr %i.aem, align 16, !noundef !41 ; 2 uses
  %.idx1606 = mul nuw nsw i64 %i.aen, 192
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ael, i64 %.idx1606
  %i.aep = icmp eq i64 %i.aen, 0
  br i1 %i.aep, label %._crit_edge1545, label %.lr.ph1544

bb.el:                                            ; preds = %.lr.ph1544
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aes, i64 192 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, %i.aeo
  br i1 %i.aer, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %bb.ek, %bb.el
  %i.aes = phi ptr [ %i.aeq, %bb.el ], [ %i.ael, %bb.ek ] ; 2 uses
  %i.aet = getelementptr i8, ptr %i.aes, i64 16
  %.val.i.i = load i64, ptr %i.aet, align 16, !range !51, !noalias !28425, !noundef !41
  %i.aeu = icmp eq i64 %.val.i.i, 5
  br i1 %i.aeu, label %bb.el, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.fi, %bb.fh, %bb.fe, %bb.fd, %bb.fo, %bb.fn, %bb.ey, %bb.ex, %bb.em
  %.pn.pn = phi { ptr, i32 } [ %i.aha, %bb.ey ], [ %lpad.phi478, %bb.fo ], [ %i.aev, %bb.em ], [ %i.aha, %bb.ex ], [ %lpad.phi478, %bb.fn ], [ %i.aij, %bb.fe ], [ %i.aij, %bb.fd ], [ %i.aio, %bb.fh ], [ %i.aio, %bb.fi ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #53
          to label %.loopexit.split-lp493.loopexit.split-lp unwind label %bb.fj

bb.em:                                            ; preds = %bb.eg
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit

._crit_edge1545:                                  ; preds = %bb.el, %bb.ek
  %i.aew = getelementptr inbounds nuw i8, ptr %i.abv, i64 48 ; 2 uses
  %.idx444446 = add i64 %i.abr, %i.aei
  %i.aex = mul i64 %.idx444446, 48                ; 2 uses
  %i.aey = getelementptr i8, ptr %i.aew, i64 %i.aex ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aey) ]
  %.not.i125 = icmp eq i64 %i.aex, 0
  br i1 %.not.i125, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit, label %.lr.ph.i

_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i: ; preds = %bb.en, %.lr.ph.i
  %.not6.i = icmp eq ptr %i.afa, %i.aey
  br i1 %.not6.i, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge1545, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i
  %i.aez = phi ptr [ %i.afa, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i ], [ %i.aew, %._crit_edge1545 ] ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 48 ; 2 uses
  %i.afb = getelementptr i8, ptr %i.aez, i64 16
  %.val.i126 = load ptr, ptr %i.afb, align 8, !noalias !28426, !nonnull !41, !noundef !41 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %.val.i126, i64 40
  %i.afd = load ptr, ptr %i.afc, align 8, !noalias !28426, !nonnull !41, !noundef !41 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.val.i126, i64 48
  %i.aff = load i64, ptr %i.afe, align 16, !noalias !28426, !noundef !41 ; 2 uses
  %.idx1607 = mul nuw nsw i64 %i.aff, 192
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afd, i64 %.idx1607
  %.not.not.not.i.not.i.not1546 = icmp eq i64 %i.aff, 0
  br i1 %.not.not.not.i.not.i.not1546, label %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i, label %.lr.ph1547

bb.en:                                            ; preds = %.lr.ph1547
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afi, i64 192 ; 2 uses
  %.not.not.not.i.not.i.not = icmp eq ptr %i.afh, %i.afg
  br i1 %.not.not.not.i.not.i.not, label %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i, label %.lr.ph1547

.lr.ph1547:                                       ; preds = %.lr.ph.i, %bb.en
  %i.afi = phi ptr [ %i.afh, %bb.en ], [ %i.afd, %.lr.ph.i ] ; 2 uses
  %i.afj = getelementptr i8, ptr %i.afi, i64 16
  %.val.i.i.i.i = load i64, ptr %i.afj, align 16, !range !51, !noalias !28427, !noundef !41
  %i.afk = icmp eq i64 %.val.i.i.i.i, 5
  br i1 %i.afk, label %bb.en, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2z_12GridLayouter16measure_auto_rows0_0EB2D_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2z_12GridLayouter16measure_auto_rows0_0EB2D_.exit: ; preds = %.lr.ph1547
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
          to label %bb.eo unwind label %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eo:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2z_12GridLayouter16measure_auto_rows0_0EB2D_.exit, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val93 = load i64, ptr %i.co, align 8, !range !45, !alias.scope !28416, !noundef !41 ; 2 uses
  %i.afl = icmp eq i64 %.val93, 0
  br i1 %i.afl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19CellMeasurementDataEBH_.exit128, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.val94 = load ptr, ptr %i.cx, align 8, !nonnull !41, !noundef !41
  %i.afm = shl nuw i64 %.val93, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val94, i64 noundef %i.afm, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !28428
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19CellMeasurementDataEBH_.exit128

.loopexit479:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.ei, %._crit_edge.i.i.i.i.i.i
  %.sroa.5281.0.copyload = phi i64 [ 0, %bb.ei ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ %i.ach, %scalar.ph ], [ %i.ach, %scalar.ph.prol.loopexit ] ; 5 uses
  store i64 %.sroa.0279.0.copyload, ptr %i.r, align 8, !alias.scope !28418
  store ptr %.sroa.4280.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !28418
  store i64 %.sroa.5281.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28418
  br i1 %i.sp, label %bb.eq, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter21prepare_rowspan_sizes.exit.thread
end_hunk_0
