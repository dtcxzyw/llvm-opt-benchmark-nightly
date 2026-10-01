Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.11?download=true
inline.NumInlined: 12724
inline.NumDeleted: 4732
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 666
loop-unroll.NumUnrolled: 672
begin_hunk_0_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes10UInt16TypeEBb_:bb.a
  %lcmp.mod4467.not = icmp eq i64 %xtraiter4466, 0, !dbg !72660
  br i1 %lcmp.mod4467.not, label %.lr.ph.us3068.prol.loopexit, label %.lr.ph.us3068.prol, !dbg !72660

.lr.ph.us3068.prol:                               ; preds = %.lr.ph.us3068.preheader, %.lr.ph.us3068.prol
  %.sroa.0425.03063.us.prol = phi i64 [ %i.cxb, %.lr.ph.us3068.prol ], [ %.sroa.5.0.ph.i1313.us, %.lr.ph.us3068.preheader ] ; 4 uses
  %prol.iter4468 = phi i64 [ %prol.iter4468.next, %.lr.ph.us3068.prol ], [ 0, %.lr.ph.us3068.preheader ]
  %i.cwv = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72661, !noundef !3448
  %i.cww = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72662, !noundef !3448
  %i.cwx = icmp ult i64 %.sroa.0425.03063.us.prol, %i.cww, !dbg !72663
  call void @llvm.assume(i1 %i.cwx), !dbg !72664
  %i.cwy = getelementptr inbounds nuw [2 x i8], ptr %i.cwv, i64 %.sroa.0425.03063.us.prol, !dbg !72665
  %i.cwz = load i16, ptr %i.cwy, align 2, !dbg !72666, !noundef !3448
  %i.cxa = mul i16 %i.cwz, %i.cws, !dbg !72667
  %i.cxb = add nuw i64 %.sroa.0425.03063.us.prol, 1, !dbg !72668 ; 2 uses
  %i.cxc = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0425.03063.us.prol, !dbg !72669
  store i16 %i.cxa, ptr %i.cxc, align 2, !dbg !72670
  %prol.iter4468.next = add i64 %prol.iter4468, 1, !dbg !72660 ; 2 uses
  %prol.iter4468.cmp.not = icmp eq i64 %prol.iter4468.next, %xtraiter4466, !dbg !72660
  br i1 %prol.iter4468.cmp.not, label %.lr.ph.us3068.prol.loopexit, label %.lr.ph.us3068.prol, !dbg !72660, !llvm.loop !67909

.lr.ph.us3068.prol.loopexit:                      ; preds = %.lr.ph.us3068.prol, %.lr.ph.us3068.preheader
  %.sroa.0425.03063.us.unr = phi i64 [ %.sroa.5.0.ph.i1313.us, %.lr.ph.us3068.preheader ], [ %i.cxb, %.lr.ph.us3068.prol ]
  %i.cxd = sub i64 %.sroa.5.0.ph.i1313.us, %.sroa.7.0.ph.i1312.us, !dbg !72660
  %i.cxe = icmp ugt i64 %i.cxd, -4, !dbg !72660
  br i1 %i.cxe, label %.loopexit2625.us, label %.lr.ph.us3068, !dbg !72660

.lr.ph.us3068:                                    ; preds = %.lr.ph.us3068.prol.loopexit, %.lr.ph.us3068
  %.sroa.0425.03063.us = phi i64 [ %i.cyj, %.lr.ph.us3068 ], [ %.sroa.0425.03063.us.unr, %.lr.ph.us3068.prol.loopexit ] ; 7 uses
  %i.cxf = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72661, !noundef !3448
  %i.cxg = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72662, !noundef !3448
  %i.cxh = icmp ult i64 %.sroa.0425.03063.us, %i.cxg, !dbg !72663
  call void @llvm.assume(i1 %i.cxh), !dbg !72664
  %i.cxi = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %.sroa.0425.03063.us, !dbg !72665
  %i.cxj = load i16, ptr %i.cxi, align 2, !dbg !72666, !noundef !3448
  %i.cxk = mul i16 %i.cxj, %i.cws, !dbg !72667
  %i.cxl = add nuw i64 %.sroa.0425.03063.us, 1, !dbg !72668 ; 3 uses
  %i.cxm = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0425.03063.us, !dbg !72669
  store i16 %i.cxk, ptr %i.cxm, align 2, !dbg !72670
  %i.cxn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72661, !noundef !3448
  %i.cxo = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72662, !noundef !3448
  %i.cxp = icmp ult i64 %i.cxl, %i.cxo, !dbg !72663
  call void @llvm.assume(i1 %i.cxp), !dbg !72664
  %i.cxq = getelementptr inbounds nuw [2 x i8], ptr %i.cxn, i64 %i.cxl, !dbg !72665
  %i.cxr = load i16, ptr %i.cxq, align 2, !dbg !72666, !noundef !3448
  %i.cxs = mul i16 %i.cxr, %i.cws, !dbg !72667
  %i.cxt = add nuw i64 %.sroa.0425.03063.us, 2, !dbg !72668 ; 3 uses
  %i.cxu = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.cxl, !dbg !72669
  store i16 %i.cxs, ptr %i.cxu, align 2, !dbg !72670
  %i.cxv = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72661, !noundef !3448
  %i.cxw = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72662, !noundef !3448
  %i.cxx = icmp ult i64 %i.cxt, %i.cxw, !dbg !72663
  call void @llvm.assume(i1 %i.cxx), !dbg !72664
  %i.cxy = getelementptr inbounds nuw [2 x i8], ptr %i.cxv, i64 %i.cxt, !dbg !72665
  %i.cxz = load i16, ptr %i.cxy, align 2, !dbg !72666, !noundef !3448
  %i.cya = mul i16 %i.cxz, %i.cws, !dbg !72667
  %i.cyb = add nuw i64 %.sroa.0425.03063.us, 3, !dbg !72668 ; 3 uses
  %i.cyc = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.cxt, !dbg !72669
  store i16 %i.cya, ptr %i.cyc, align 2, !dbg !72670
  %i.cyd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72661, !noundef !3448
  %i.cye = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72662, !noundef !3448
  %i.cyf = icmp ult i64 %i.cyb, %i.cye, !dbg !72663
  call void @llvm.assume(i1 %i.cyf), !dbg !72664
  %i.cyg = getelementptr inbounds nuw [2 x i8], ptr %i.cyd, i64 %i.cyb, !dbg !72665
  %i.cyh = load i16, ptr %i.cyg, align 2, !dbg !72666, !noundef !3448
  %i.cyi = mul i16 %i.cyh, %i.cws, !dbg !72667
  %i.cyj = add nuw i64 %.sroa.0425.03063.us, 4, !dbg !72668 ; 2 uses
  %i.cyk = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.cyb, !dbg !72669
  store i16 %i.cyi, ptr %i.cyk, align 2, !dbg !72670
  %exitcond3456.not.3 = icmp eq i64 %i.cyj, %.sroa.7.0.ph.i1312.us, !dbg !72659
  br i1 %exitcond3456.not.3, label %.loopexit2625.us, label %.lr.ph.us3068, !dbg !72660

.loopexit2625.us:                                 ; preds = %.lr.ph.us3068.prol.loopexit, %.lr.ph.us3068, %.loopexit2626.us
  %i.cyl = icmp ult i64 %i.cwb, 2, !dbg !72639
  br i1 %i.cyl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.nz, !dbg !72639

.lr.ph3067.split:                                 ; preds = %.lr.ph3067
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0142.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !70164), !dbg !72642
  br label %.lr.ph2997.split.invoke, !dbg !72671

bb.oc:                                            ; preds = %bb.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !70446
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.oe unwind label %bb.qu, !dbg !70446

bb.od:                                            ; preds = %bb.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !70446
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.oi unwind label %bb.qu, !dbg !70446

bb.oe:                                            ; preds = %bb.oc
  %.sroa.0150.sroa.0.0.copyload = load ptr, ptr %i.cs, align 8, !dbg !72672 ; 2 uses
  %.sroa.0150.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !72672
  %.sroa.0150.sroa.2.0.copyload = load i64, ptr %.sroa.0150.sroa.2.0..sroa_idx, align 8, !dbg !72672 ; 2 uses
  %.sroa.0150.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !72672
  %.sroa.0150.sroa.3.0.copyload = load i64, ptr %.sroa.0150.sroa.3.0..sroa_idx, align 8, !dbg !72672 ; 2 uses
  %.sroa.0150.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24, !dbg !72672
  %.sroa.0150.sroa.4.0.copyload = load ptr, ptr %.sroa.0150.sroa.4.0..sroa_idx, align 8, !dbg !72672 ; 3 uses
  %.sroa.0150.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32, !dbg !72672
  %.sroa.0150.sroa.5.0.copyload = load i64, ptr %.sroa.0150.sroa.5.0..sroa_idx, align 8, !dbg !72672 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !72528
  %i.cym = icmp ugt i64 %.sroa.0150.sroa.3.0.copyload, %.sroa.0150.sroa.2.0.copyload, !dbg !72673
  br i1 %i.cym, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph3038, !dbg !72673

.lr.ph3038:                                       ; preds = %bb.oe
  %i.cyn = icmp eq i64 %.sroa.0150.sroa.3.0.copyload, 2
  %.idx.i.i.i1323 = mul nuw nsw i64 %.sroa.0150.sroa.5.0.copyload, 24
  %i.cyo = getelementptr inbounds nuw i8, ptr %.sroa.0150.sroa.4.0.copyload, i64 %.idx.i.i.i1323
  %i.cyp = icmp eq i64 %.sroa.0150.sroa.5.0.copyload, 0
  br i1 %i.cyn, label %.lr.ph3038.split.us, label %.lr.ph3038.split, !prof !3552

.lr.ph3038.split.us:                              ; preds = %.lr.ph3038
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.sroa.4.0.copyload) ]
  %scevgep4258 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !72673
  br label %bb.of, !dbg !72673

bb.of:                                            ; preds = %.loopexit2631.us, %.lr.ph3038.split.us
  %.sroa.01722.03037.us = phi ptr [ %.sroa.0150.sroa.0.0.copyload, %.lr.ph3038.split.us ], [ %i.cyr, %.loopexit2631.us ] ; 3 uses
  %.sroa.51723.03036.us = phi i64 [ %.sroa.0150.sroa.2.0.copyload, %.lr.ph3038.split.us ], [ %i.cyq, %.loopexit2631.us ]
  %.sroa.101727.03035.us = phi i64 [ 0, %.lr.ph3038.split.us ], [ %i.czc, %.loopexit2631.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01722.03037.us) ]
  %i.cyq = add i64 %.sroa.51723.03036.us, -1, !dbg !72674 ; 2 uses
  %i.cyr = getelementptr inbounds nuw i8, ptr %.sroa.01722.03037.us, i64 8, !dbg !72675 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70204), !dbg !72676
  %.sroa.02.06.i.i.i1324.us = load i64, ptr %.sroa.01722.03037.us, align 8, !dbg !72677, !alias.scope !70204, !noalias !70205, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1325.us = load i64, ptr %i.cyr, align 8, !dbg !72678, !alias.scope !70204, !noalias !70205, !noundef !3448 ; 2 uses
  br i1 %i.cyp, label %.loopexit2632.us, label %.lr.ph.i.i.i1326.us, !dbg !72679

.lr.ph.i.i.i1326.us:                              ; preds = %bb.of, %bb.oh
  %.sroa.06.010.i.i.i1327.us = phi i64 [ %.sroa.06.0.i.i.i1331.us, %bb.oh ], [ %.sroa.06.07.i.i.i1325.us, %bb.of ] ; 3 uses
  %.sroa.02.09.i.i.i1328.us = phi i64 [ %.sroa.02.0.i.i.i1330.us, %bb.oh ], [ %.sroa.02.06.i.i.i1324.us, %bb.of ] ; 3 uses
  %.sroa.0.08.i.i.i1329.us = phi ptr [ %i.cys, %bb.oh ], [ %.sroa.0150.sroa.4.0.copyload, %bb.of ] ; 3 uses
  %i.cys = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1329.us, i64 24, !dbg !72680 ; 2 uses
  %i.cyt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1329.us, i64 8, !dbg !72681
  %i.cyu = load ptr, ptr %i.cyt, align 8, !dbg !72681, !noalias !70206, !noundef !3448 ; 2 uses
  %i.cyv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1329.us, i64 16, !dbg !72682
  %i.cyw = load i64, ptr %i.cyv, align 8, !dbg !72682, !noalias !70206, !noundef !3448 ; 4 uses
  %i.cyx = icmp ult i64 %.sroa.02.09.i.i.i1328.us, %i.cyw, !dbg !72683
  br i1 %i.cyx, label %bb.og, label %.split3002.us.invoke, !dbg !72683

bb.og:                                            ; preds = %.lr.ph.i.i.i1326.us
  %i.cyy = icmp ult i64 %.sroa.06.010.i.i.i1327.us, %i.cyw, !dbg !72684
  br i1 %i.cyy, label %bb.oh, label %.split3002.us.invoke, !dbg !72684

bb.oh:                                            ; preds = %bb.og
  %i.cyz = getelementptr inbounds nuw [8 x i8], ptr %i.cyu, i64 %.sroa.02.09.i.i.i1328.us, !dbg !72683
  %i.cza = getelementptr inbounds nuw [8 x i8], ptr %i.cyu, i64 %.sroa.06.010.i.i.i1327.us, !dbg !72684
  %.sroa.02.0.i.i.i1330.us = load i64, ptr %i.cyz, align 8, !dbg !72677, !noalias !70206, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1331.us = load i64, ptr %i.cza, align 8, !dbg !72678, !noalias !70206, !noundef !3448 ; 2 uses
  %i.czb = icmp eq ptr %i.cys, %i.cyo, !dbg !72685
  br i1 %i.czb, label %.loopexit2632.us, label %.lr.ph.i.i.i1326.us, !dbg !72679

.loopexit2632.us:                                 ; preds = %bb.oh, %bb.of
  %.sroa.7.0.ph.i1333.us = phi i64 [ %.sroa.06.07.i.i.i1325.us, %bb.of ], [ %.sroa.06.0.i.i.i1331.us, %bb.oh ] ; 9 uses
  %.sroa.5.0.ph.i1334.us = phi i64 [ %.sroa.02.06.i.i.i1324.us, %bb.of ], [ %.sroa.02.0.i.i.i1330.us, %bb.oh ] ; 16 uses
  %i.czc = add nuw i64 %.sroa.101727.03035.us, 1, !dbg !72686
  %i.czd = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !72687, !noundef !3448
  %i.cze = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !72688, !noundef !3448
  %i.czf = icmp ult i64 %.sroa.101727.03035.us, %i.cze, !dbg !72689
  call void @llvm.assume(i1 %i.czf), !dbg !72690
  %i.czg = getelementptr inbounds nuw [2 x i8], ptr %i.czd, i64 %.sroa.101727.03035.us, !dbg !72691
  %i.czh = load i16, ptr %i.czg, align 2, !dbg !72692, !noundef !3448 ; 4 uses
  %i.czi = icmp ult i64 %.sroa.5.0.ph.i1334.us, %.sroa.7.0.ph.i1333.us, !dbg !72693
  br i1 %i.czi, label %.lr.ph.us3039, label %.loopexit2631.us, !dbg !72694

.lr.ph.us3039:                                    ; preds = %.loopexit2632.us
  %i.czj = icmp eq i16 %i.czh, 0
  br i1 %i.czj, label %iter.check4283, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.preheader

_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.preheader: ; preds = %.lr.ph.us3039
  %i.czk = sub i64 %.sroa.7.0.ph.i1333.us, %.sroa.5.0.ph.i1334.us, !dbg !72694
  %.neg4519 = add i64 %.sroa.5.0.ph.i1334.us, 1, !dbg !72694
  %xtraiter4457 = and i64 %i.czk, 1, !dbg !72694
  %lcmp.mod4458.not = icmp eq i64 %xtraiter4457, 0, !dbg !72694
  br i1 %lcmp.mod4458.not, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol, !dbg !72694

_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol: ; preds = %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.preheader
  %i.czl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.czm = icmp ult i64 %.sroa.5.0.ph.i1334.us, %i.czl, !dbg !72696
  call void @llvm.assume(i1 %i.czm), !dbg !72697
  %i.czn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72698, !noundef !3448
  %i.czo = getelementptr inbounds nuw [2 x i8], ptr %i.czn, i64 %.sroa.5.0.ph.i1334.us, !dbg !72699
  %i.czp = load i16, ptr %i.czo, align 2, !dbg !72700, !noundef !3448
  %i.czq = udiv i16 %i.czp, %i.czh, !dbg !72701
  %i.czr = add nuw i64 %.sroa.5.0.ph.i1334.us, 1, !dbg !72702
  %i.czs = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1334.us, !dbg !72703
  store i16 %i.czq, ptr %i.czs, align 2, !dbg !72704
  br label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit, !dbg !72694

_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit: ; preds = %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.preheader
  %.sroa.0429.03034.us3042.unr = phi i64 [ %.sroa.5.0.ph.i1334.us, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.preheader ], [ %i.czr, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol ]
  %i.czt = icmp eq i64 %.sroa.7.0.ph.i1333.us, %.neg4519, !dbg !72694
  br i1 %i.czt, label %.loopexit2631.us, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041, !dbg !72694

iter.check4283:                                   ; preds = %.lr.ph.us3039
  %i.czu = sub i64 %.sroa.7.0.ph.i1333.us, %.sroa.5.0.ph.i1334.us, !dbg !72694 ; 7 uses
  %min.iters.check4263 = icmp ult i64 %i.czu, 4, !dbg !72694
  br i1 %min.iters.check4263, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader, label %vector.memcheck4255, !dbg !72694

vector.memcheck4255:                              ; preds = %iter.check4283
  %i.czv = shl nuw i64 %.sroa.5.0.ph.i1334.us, 1, !dbg !72694
  %scevgep4256 = getelementptr i8, ptr %i.cnj, i64 %i.czv, !dbg !72694
  %i.czw = shl i64 %.sroa.7.0.ph.i1333.us, 1, !dbg !72694
  %scevgep4257 = getelementptr i8, ptr %i.cnj, i64 %i.czw, !dbg !72694
  %bound04259 = icmp ult ptr %scevgep4256, %scevgep4258, !dbg !72694
  %bound14260 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4257, !dbg !72694
  %found.conflict4261 = and i1 %bound04259, %bound14260, !dbg !72694
  br i1 %found.conflict4261, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader, label %vector.main.loop.iter.check4264

vector.main.loop.iter.check4264:                  ; preds = %vector.memcheck4255
  %min.iters.check4265 = icmp ult i64 %i.czu, 16, !dbg !72694
  br i1 %min.iters.check4265, label %vec.epilog.ph4287, label %vector.ph4266, !dbg !72694

vector.ph4266:                                    ; preds = %vector.main.loop.iter.check4264
  %i.czx = and i64 %i.czu, 12
  %n.vec4267 = and i64 %i.czu, -16                ; 4 uses
  %i.czy = add i64 %.sroa.5.0.ph.i1334.us, %n.vec4267
  %i.czz = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1334.us
  br label %vector.body4271, !dbg !72694

vector.body4271:                                  ; preds = %vector.ph4266, %vector.body4271
  %index4272 = phi i64 [ 0, %vector.ph4266 ], [ %index.next4277, %vector.body4271 ] ; 2 uses
  %i.daa = getelementptr inbounds nuw [2 x i8], ptr %i.czz, i64 %index4272, !dbg !72703 ; 2 uses
  %i.dab = getelementptr inbounds nuw i8, ptr %i.daa, i64 16, !dbg !72704
  store <8 x i16> zeroinitializer, ptr %i.daa, align 2, !dbg !72704, !alias.scope !70240, !noalias !70241
  store <8 x i16> zeroinitializer, ptr %i.dab, align 2, !dbg !72704, !alias.scope !70240, !noalias !70241
  %index.next4277 = add nuw i64 %index4272, 16    ; 2 uses
  %i.dac = icmp eq i64 %index.next4277, %n.vec4267, !dbg !72694
  br i1 %i.dac, label %middle.block4279, label %vector.body4271, !dbg !72694, !llvm.loop !67945

middle.block4279:                                 ; preds = %vector.body4271
  %cmp.n4280 = icmp eq i64 %i.czu, %n.vec4267, !dbg !72694
  br i1 %cmp.n4280, label %.loopexit2631.us, label %vec.epilog.iter.check4285, !dbg !72694

vec.epilog.iter.check4285:                        ; preds = %middle.block4279
  %min.epilog.iters.check4286 = icmp eq i64 %i.czx, 0
  br i1 %min.epilog.iters.check4286, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader, label %vec.epilog.ph4287, !prof !3686

vec.epilog.ph4287:                                ; preds = %vector.main.loop.iter.check4264, %vec.epilog.iter.check4285
  %vec.epilog.resume.val4281 = phi i64 [ %n.vec4267, %vec.epilog.iter.check4285 ], [ 0, %vector.main.loop.iter.check4264 ]
  %n.vec4288 = and i64 %i.czu, -4                 ; 3 uses
  %i.dad = add i64 %.sroa.5.0.ph.i1334.us, %n.vec4288
  %i.dae = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1334.us
  br label %vec.epilog.vector.body4292

vec.epilog.vector.body4292:                       ; preds = %vec.epilog.vector.body4292, %vec.epilog.ph4287
  %index4293 = phi i64 [ %vec.epilog.resume.val4281, %vec.epilog.ph4287 ], [ %index.next4297, %vec.epilog.vector.body4292 ] ; 2 uses
  %i.daf = getelementptr inbounds nuw [2 x i8], ptr %i.dae, i64 %index4293, !dbg !72703
  store <4 x i16> zeroinitializer, ptr %i.daf, align 2, !dbg !72704, !alias.scope !70240, !noalias !70241
  %index.next4297 = add nuw i64 %index4293, 4     ; 2 uses
  %i.dag = icmp eq i64 %index.next4297, %n.vec4288, !dbg !72694
  br i1 %i.dag, label %vec.epilog.middle.block4299, label %vec.epilog.vector.body4292, !dbg !72694, !llvm.loop !67946

vec.epilog.middle.block4299:                      ; preds = %vec.epilog.vector.body4292
  %cmp.n4300 = icmp eq i64 %i.czu, %n.vec4288, !dbg !72694
  br i1 %cmp.n4300, label %.loopexit2631.us, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader, !dbg !72694

_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader: ; preds = %iter.check4283, %vector.memcheck4255, %vec.epilog.iter.check4285, %vec.epilog.middle.block4299
  %.sroa.0429.03034.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1334.us, %iter.check4283 ], [ %.sroa.5.0.ph.i1334.us, %vector.memcheck4255 ], [ %i.czy, %vec.epilog.iter.check4285 ], [ %i.dad, %vec.epilog.middle.block4299 ] ; 4 uses
  %i.dah = sub i64 %.sroa.7.0.ph.i1333.us, %.sroa.0429.03034.us.us.ph, !dbg !72694
  %xtraiter4460 = and i64 %i.dah, 7, !dbg !72694  ; 2 uses
  %lcmp.mod4461.not = icmp eq i64 %xtraiter4460, 0, !dbg !72694
  br i1 %lcmp.mod4461.not, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol, !dbg !72694

_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol: ; preds = %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol
  %.sroa.0429.03034.us.us.prol = phi i64 [ %i.dak, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol ], [ %.sroa.0429.03034.us.us.ph, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader ] ; 3 uses
  %prol.iter4462 = phi i64 [ %prol.iter4462.next, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol ], [ 0, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader ]
  %i.dai = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.daj = icmp ult i64 %.sroa.0429.03034.us.us.prol, %i.dai, !dbg !72696
  call void @llvm.assume(i1 %i.daj), !dbg !72697
  %i.dak = add nuw i64 %.sroa.0429.03034.us.us.prol, 1, !dbg !72702 ; 2 uses
  %i.dal = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0429.03034.us.us.prol, !dbg !72703
  store i16 0, ptr %i.dal, align 2, !dbg !72704
  %prol.iter4462.next = add i64 %prol.iter4462, 1, !dbg !72694 ; 2 uses
  %prol.iter4462.cmp.not = icmp eq i64 %prol.iter4462.next, %xtraiter4460, !dbg !72694
  br i1 %prol.iter4462.cmp.not, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol, !dbg !72694, !llvm.loop !67947

_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit: ; preds = %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader
  %.sroa.0429.03034.us.us.unr = phi i64 [ %.sroa.0429.03034.us.us.ph, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader ], [ %i.dak, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol ]
  %i.dam = sub i64 %.sroa.0429.03034.us.us.ph, %.sroa.7.0.ph.i1333.us, !dbg !72694
  %i.dan = icmp ugt i64 %i.dam, -8, !dbg !72694
  br i1 %i.dan, label %.loopexit2631.us, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us, !dbg !72694

_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041: ; preds = %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041
  %.sroa.0429.03034.us3042 = phi i64 [ %i.dbc, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041 ], [ %.sroa.0429.03034.us3042.unr, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit ] ; 5 uses
  %i.dao = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.dap = icmp ult i64 %.sroa.0429.03034.us3042, %i.dao, !dbg !72696
  call void @llvm.assume(i1 %i.dap), !dbg !72697
  %i.daq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72698, !noundef !3448
  %i.dar = getelementptr inbounds nuw [2 x i8], ptr %i.daq, i64 %.sroa.0429.03034.us3042, !dbg !72699
  %i.das = load i16, ptr %i.dar, align 2, !dbg !72700, !noundef !3448
  %i.dat = udiv i16 %i.das, %i.czh, !dbg !72701
  %i.dau = add nuw i64 %.sroa.0429.03034.us3042, 1, !dbg !72702 ; 3 uses
  %i.dav = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0429.03034.us3042, !dbg !72703
  store i16 %i.dat, ptr %i.dav, align 2, !dbg !72704
  %i.daw = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.dax = icmp ult i64 %i.dau, %i.daw, !dbg !72696
  call void @llvm.assume(i1 %i.dax), !dbg !72697
  %i.day = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72698, !noundef !3448
  %i.daz = getelementptr inbounds nuw [2 x i8], ptr %i.day, i64 %i.dau, !dbg !72699
  %i.dba = load i16, ptr %i.daz, align 2, !dbg !72700, !noundef !3448
  %i.dbb = udiv i16 %i.dba, %i.czh, !dbg !72701
  %i.dbc = add nuw i64 %.sroa.0429.03034.us3042, 2, !dbg !72702 ; 2 uses
  %i.dbd = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dau, !dbg !72703
  store i16 %i.dbb, ptr %i.dbd, align 2, !dbg !72704
  %exitcond3452.not.1 = icmp eq i64 %i.dbc, %.sroa.7.0.ph.i1333.us, !dbg !72693
  br i1 %exitcond3452.not.1, label %.loopexit2631.us, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041, !dbg !72694

_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us: ; preds = %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us
  %.sroa.0429.03034.us.us = phi i64 [ %i.dci, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us ], [ %.sroa.0429.03034.us.us.unr, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit ] ; 10 uses
  %i.dbe = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.dbf = icmp ult i64 %.sroa.0429.03034.us.us, %i.dbe, !dbg !72696
  call void @llvm.assume(i1 %i.dbf), !dbg !72697
  %i.dbg = add nuw i64 %.sroa.0429.03034.us.us, 1, !dbg !72702 ; 2 uses
  %i.dbh = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0429.03034.us.us, !dbg !72703
  store i16 0, ptr %i.dbh, align 2, !dbg !72704
  %i.dbi = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.dbj = icmp ult i64 %i.dbg, %i.dbi, !dbg !72696
  call void @llvm.assume(i1 %i.dbj), !dbg !72697
  %i.dbk = add nuw i64 %.sroa.0429.03034.us.us, 2, !dbg !72702 ; 2 uses
  %i.dbl = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dbg, !dbg !72703
  store i16 0, ptr %i.dbl, align 2, !dbg !72704
  %i.dbm = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.dbn = icmp ult i64 %i.dbk, %i.dbm, !dbg !72696
  call void @llvm.assume(i1 %i.dbn), !dbg !72697
  %i.dbo = add nuw i64 %.sroa.0429.03034.us.us, 3, !dbg !72702 ; 2 uses
  %i.dbp = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dbk, !dbg !72703
  store i16 0, ptr %i.dbp, align 2, !dbg !72704
  %i.dbq = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.dbr = icmp ult i64 %i.dbo, %i.dbq, !dbg !72696
  call void @llvm.assume(i1 %i.dbr), !dbg !72697
  %i.dbs = add nuw i64 %.sroa.0429.03034.us.us, 4, !dbg !72702 ; 2 uses
  %i.dbt = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dbo, !dbg !72703
  store i16 0, ptr %i.dbt, align 2, !dbg !72704
  %i.dbu = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.dbv = icmp ult i64 %i.dbs, %i.dbu, !dbg !72696
  call void @llvm.assume(i1 %i.dbv), !dbg !72697
  %i.dbw = add nuw i64 %.sroa.0429.03034.us.us, 5, !dbg !72702 ; 2 uses
  %i.dbx = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dbs, !dbg !72703
  store i16 0, ptr %i.dbx, align 2, !dbg !72704
  %i.dby = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.dbz = icmp ult i64 %i.dbw, %i.dby, !dbg !72696
  call void @llvm.assume(i1 %i.dbz), !dbg !72697
  %i.dca = add nuw i64 %.sroa.0429.03034.us.us, 6, !dbg !72702 ; 2 uses
  %i.dcb = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dbw, !dbg !72703
  store i16 0, ptr %i.dcb, align 2, !dbg !72704
  %i.dcc = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.dcd = icmp ult i64 %i.dca, %i.dcc, !dbg !72696
  call void @llvm.assume(i1 %i.dcd), !dbg !72697
  %i.dce = add nuw i64 %.sroa.0429.03034.us.us, 7, !dbg !72702 ; 2 uses
  %i.dcf = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dca, !dbg !72703
  store i16 0, ptr %i.dcf, align 2, !dbg !72704
  %i.dcg = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72695, !noundef !3448
  %i.dch = icmp ult i64 %i.dce, %i.dcg, !dbg !72696
  call void @llvm.assume(i1 %i.dch), !dbg !72697
  %i.dci = add nuw i64 %.sroa.0429.03034.us.us, 8, !dbg !72702 ; 2 uses
  %i.dcj = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dce, !dbg !72703
  store i16 0, ptr %i.dcj, align 2, !dbg !72704
  %exitcond3454.not.7 = icmp eq i64 %i.dci, %.sroa.7.0.ph.i1333.us, !dbg !72693
  br i1 %exitcond3454.not.7, label %.loopexit2631.us, label %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us, !dbg !72694, !llvm.loop !67948

.loopexit2631.us:                                 ; preds = %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit, %_RNvYtNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us, %middle.block4279, %vec.epilog.middle.block4299, %.loopexit2632.us
  %i.dck = icmp ult i64 %i.cyq, 2, !dbg !72673
  br i1 %i.dck, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.of, !dbg !72673

.lr.ph3038.split:                                 ; preds = %.lr.ph3038
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !70204), !dbg !72676
  br label %.lr.ph2997.split.invoke, !dbg !72705

bb.oi:                                            ; preds = %bb.od
  %.sroa.0146.sroa.0.0.copyload = load ptr, ptr %i.ct, align 8, !dbg !72706 ; 2 uses
  %.sroa.0146.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !72706
  %.sroa.0146.sroa.2.0.copyload = load i64, ptr %.sroa.0146.sroa.2.0..sroa_idx, align 8, !dbg !72706 ; 2 uses
  %.sroa.0146.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16, !dbg !72706
  %.sroa.0146.sroa.3.0.copyload = load i64, ptr %.sroa.0146.sroa.3.0..sroa_idx, align 8, !dbg !72706 ; 2 uses
  %.sroa.0146.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24, !dbg !72706
  %.sroa.0146.sroa.4.0.copyload = load ptr, ptr %.sroa.0146.sroa.4.0..sroa_idx, align 8, !dbg !72706 ; 3 uses
  %.sroa.0146.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 32, !dbg !72706
  %.sroa.0146.sroa.5.0.copyload = load i64, ptr %.sroa.0146.sroa.5.0..sroa_idx, align 8, !dbg !72706 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !72528
  %i.dcl = icmp ugt i64 %.sroa.0146.sroa.3.0.copyload, %.sroa.0146.sroa.2.0.copyload, !dbg !72707
  br i1 %i.dcl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph3055, !dbg !72707

.lr.ph3055:                                       ; preds = %bb.oi
  %i.dcm = icmp eq i64 %.sroa.0146.sroa.3.0.copyload, 2
  %.idx.i.i.i1344 = mul nuw nsw i64 %.sroa.0146.sroa.5.0.copyload, 24
  %i.dcn = getelementptr inbounds nuw i8, ptr %.sroa.0146.sroa.4.0.copyload, i64 %.idx.i.i.i1344
  %i.dco = icmp eq i64 %.sroa.0146.sroa.5.0.copyload, 0
  br i1 %i.dcm, label %.lr.ph3055.split.us, label %.lr.ph3055.split, !prof !3552

.lr.ph3055.split.us:                              ; preds = %.lr.ph3055
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0146.sroa.4.0.copyload) ]
  br label %bb.oj, !dbg !72707

bb.oj:                                            ; preds = %.loopexit2628.us, %.lr.ph3055.split.us
  %.sroa.01712.03054.us = phi ptr [ %.sroa.0146.sroa.0.0.copyload, %.lr.ph3055.split.us ], [ %i.dcq, %.loopexit2628.us ] ; 3 uses
  %.sroa.51713.03053.us = phi i64 [ %.sroa.0146.sroa.2.0.copyload, %.lr.ph3055.split.us ], [ %i.dcp, %.loopexit2628.us ]
  %.sroa.101717.03052.us = phi i64 [ 0, %.lr.ph3055.split.us ], [ %i.ddb, %.loopexit2628.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01712.03054.us) ]
  %i.dcp = add i64 %.sroa.51713.03053.us, -1, !dbg !72708 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes10UInt16TypeEBb_:bb.a
  %xtraiter4463 = and i64 %i.ddi, 1, !dbg !72729
  %lcmp.mod4464.not = icmp eq i64 %xtraiter4463, 0, !dbg !72729
  br i1 %lcmp.mod4464.not, label %.lr.ph.us3056.prol.loopexit, label %.lr.ph.us3056.prol, !dbg !72729

.lr.ph.us3056.prol:                               ; preds = %.lr.ph.us3056.preheader
  %i.ddj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72730, !noundef !3448
  %i.ddk = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72731, !noundef !3448
  %i.ddl = icmp ult i64 %.sroa.5.0.ph.i1355.us, %i.ddk, !dbg !72732
  call void @llvm.assume(i1 %i.ddl), !dbg !72733
  %i.ddm = getelementptr inbounds nuw [2 x i8], ptr %i.ddj, i64 %.sroa.5.0.ph.i1355.us, !dbg !72734
  %i.ddn = load i16, ptr %i.ddm, align 2, !dbg !72735, !noundef !3448 ; 2 uses
  %i.ddo = icmp eq i16 %i.ddn, 0, !dbg !72729
  br i1 %i.ddo, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.prol, label %bb.om, !dbg !72729

bb.om:                                            ; preds = %.lr.ph.us3056.prol
  %i.ddp = udiv i16 %i.ddg, %i.ddn, !dbg !72736
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.prol, !dbg !72737

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.prol: ; preds = %bb.om, %.lr.ph.us3056.prol
  %.sroa.0.0.i.i.i1363.us.prol = phi i16 [ %i.ddp, %bb.om ], [ 0, %.lr.ph.us3056.prol ], !dbg !72738
  %i.ddq = add nuw i64 %.sroa.5.0.ph.i1355.us, 1, !dbg !72739
  %i.ddr = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1355.us, !dbg !72740
  store i16 %.sroa.0.0.i.i.i1363.us.prol, ptr %i.ddr, align 2, !dbg !72741
  br label %.lr.ph.us3056.prol.loopexit, !dbg !72729

.lr.ph.us3056.prol.loopexit:                      ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.prol, %.lr.ph.us3056.preheader
  %.sroa.0427.03051.us.unr = phi i64 [ %.sroa.5.0.ph.i1355.us, %.lr.ph.us3056.preheader ], [ %i.ddq, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.prol ]
  %i.dds = icmp eq i64 %.sroa.7.0.ph.i1354.us, %.neg4520, !dbg !72729
  br i1 %i.dds, label %.loopexit2628.us, label %.lr.ph.us3056, !dbg !72729

.lr.ph.us3056:                                    ; preds = %.lr.ph.us3056.prol.loopexit, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.1
  %.sroa.0427.03051.us = phi i64 [ %i.dej, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.1 ], [ %.sroa.0427.03051.us.unr, %.lr.ph.us3056.prol.loopexit ] ; 5 uses
  %i.ddt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72730, !noundef !3448
  %i.ddu = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72731, !noundef !3448
  %i.ddv = icmp ult i64 %.sroa.0427.03051.us, %i.ddu, !dbg !72732
  call void @llvm.assume(i1 %i.ddv), !dbg !72733
  %i.ddw = getelementptr inbounds nuw [2 x i8], ptr %i.ddt, i64 %.sroa.0427.03051.us, !dbg !72734
  %i.ddx = load i16, ptr %i.ddw, align 2, !dbg !72735, !noundef !3448 ; 2 uses
  %i.ddy = icmp eq i16 %i.ddx, 0, !dbg !72729
  br i1 %i.ddy, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us, label %bb.on, !dbg !72729

bb.on:                                            ; preds = %.lr.ph.us3056
  %i.ddz = udiv i16 %i.ddg, %i.ddx, !dbg !72736
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us, !dbg !72737

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us: ; preds = %bb.on, %.lr.ph.us3056
  %.sroa.0.0.i.i.i1363.us = phi i16 [ %i.ddz, %bb.on ], [ 0, %.lr.ph.us3056 ], !dbg !72738
  %i.dea = add nuw i64 %.sroa.0427.03051.us, 1, !dbg !72739 ; 3 uses
  %i.deb = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0427.03051.us, !dbg !72740
  store i16 %.sroa.0.0.i.i.i1363.us, ptr %i.deb, align 2, !dbg !72741
  %i.dec = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72730, !noundef !3448
  %i.ded = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72731, !noundef !3448
  %i.dee = icmp ult i64 %i.dea, %i.ded, !dbg !72732
  call void @llvm.assume(i1 %i.dee), !dbg !72733
  %i.def = getelementptr inbounds nuw [2 x i8], ptr %i.dec, i64 %i.dea, !dbg !72734
  %i.deg = load i16, ptr %i.def, align 2, !dbg !72735, !noundef !3448 ; 2 uses
  %i.deh = icmp eq i16 %i.deg, 0, !dbg !72729
  br i1 %i.deh, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.1, label %bb.oo, !dbg !72729

bb.oo:                                            ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us
  %i.dei = udiv i16 %i.ddg, %i.deg, !dbg !72736
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.1, !dbg !72737

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.1: ; preds = %bb.oo, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us
  %.sroa.0.0.i.i.i1363.us.1 = phi i16 [ %i.dei, %bb.oo ], [ 0, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us ], !dbg !72738
  %i.dej = add nuw i64 %.sroa.0427.03051.us, 2, !dbg !72739 ; 2 uses
  %i.dek = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dea, !dbg !72740
  store i16 %.sroa.0.0.i.i.i1363.us.1, ptr %i.dek, align 2, !dbg !72741
  %exitcond3455.not.1 = icmp eq i64 %i.dej, %.sroa.7.0.ph.i1354.us, !dbg !72727
  br i1 %exitcond3455.not.1, label %.loopexit2628.us, label %.lr.ph.us3056, !dbg !72728

.loopexit2628.us:                                 ; preds = %.lr.ph.us3056.prol.loopexit, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs7_0Bd_.exit.us.1, %.loopexit2629.us
  %i.del = icmp ult i64 %i.dcp, 2, !dbg !72707
  br i1 %i.del, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.oj, !dbg !72707

.lr.ph3055.split:                                 ; preds = %.lr.ph3055
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0146.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !70246), !dbg !72710
  br label %.lr.ph2997.split.invoke, !dbg !72742

bb.op:                                            ; preds = %bb.ni
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !70446
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.or unwind label %bb.qu, !dbg !70446

bb.oq:                                            ; preds = %bb.ni
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !70446
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.ov unwind label %bb.qu, !dbg !70446

bb.or:                                            ; preds = %bb.op
  %.sroa.0158.sroa.0.0.copyload = load ptr, ptr %i.cq, align 8, !dbg !72743 ; 2 uses
  %.sroa.0158.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !72743
  %.sroa.0158.sroa.2.0.copyload = load i64, ptr %.sroa.0158.sroa.2.0..sroa_idx, align 8, !dbg !72743 ; 2 uses
  %.sroa.0158.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16, !dbg !72743
  %.sroa.0158.sroa.3.0.copyload = load i64, ptr %.sroa.0158.sroa.3.0..sroa_idx, align 8, !dbg !72743 ; 2 uses
  %.sroa.0158.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24, !dbg !72743
  %.sroa.0158.sroa.4.0.copyload = load ptr, ptr %.sroa.0158.sroa.4.0..sroa_idx, align 8, !dbg !72743 ; 3 uses
  %.sroa.0158.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 32, !dbg !72743
  %.sroa.0158.sroa.5.0.copyload = load i64, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !dbg !72743 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !72528
  %i.dem = icmp ugt i64 %.sroa.0158.sroa.3.0.copyload, %.sroa.0158.sroa.2.0.copyload, !dbg !72744
  br i1 %i.dem, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph3009, !dbg !72744

.lr.ph3009:                                       ; preds = %bb.or
  %i.den = icmp eq i64 %.sroa.0158.sroa.3.0.copyload, 2
  %.idx.i.i.i1366 = mul nuw nsw i64 %.sroa.0158.sroa.5.0.copyload, 24
  %i.deo = getelementptr inbounds nuw i8, ptr %.sroa.0158.sroa.4.0.copyload, i64 %.idx.i.i.i1366
  %i.dep = icmp eq i64 %.sroa.0158.sroa.5.0.copyload, 0
  br i1 %i.den, label %.lr.ph3009.split.us, label %.lr.ph3009.split, !prof !3552

.lr.ph3009.split.us:                              ; preds = %.lr.ph3009
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0158.sroa.4.0.copyload) ]
  %scevgep4211 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !72744
  br label %bb.os, !dbg !72744

bb.os:                                            ; preds = %.loopexit2637.us, %.lr.ph3009.split.us
  %.sroa.01742.03008.us = phi ptr [ %.sroa.0158.sroa.0.0.copyload, %.lr.ph3009.split.us ], [ %i.der, %.loopexit2637.us ] ; 3 uses
  %.sroa.51743.03007.us = phi i64 [ %.sroa.0158.sroa.2.0.copyload, %.lr.ph3009.split.us ], [ %i.deq, %.loopexit2637.us ]
  %.sroa.101747.03006.us = phi i64 [ 0, %.lr.ph3009.split.us ], [ %i.dfc, %.loopexit2637.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01742.03008.us) ]
  %i.deq = add i64 %.sroa.51743.03007.us, -1, !dbg !72745 ; 2 uses
  %i.der = getelementptr inbounds nuw i8, ptr %.sroa.01742.03008.us, i64 8, !dbg !72746 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70286), !dbg !72747
  %.sroa.02.06.i.i.i1367.us = load i64, ptr %.sroa.01742.03008.us, align 8, !dbg !72748, !alias.scope !70286, !noalias !70287, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1368.us = load i64, ptr %i.der, align 8, !dbg !72749, !alias.scope !70286, !noalias !70287, !noundef !3448 ; 2 uses
  br i1 %i.dep, label %.loopexit2638.us, label %.lr.ph.i.i.i1369.us, !dbg !72750

.lr.ph.i.i.i1369.us:                              ; preds = %bb.os, %bb.ou
  %.sroa.06.010.i.i.i1370.us = phi i64 [ %.sroa.06.0.i.i.i1374.us, %bb.ou ], [ %.sroa.06.07.i.i.i1368.us, %bb.os ] ; 3 uses
  %.sroa.02.09.i.i.i1371.us = phi i64 [ %.sroa.02.0.i.i.i1373.us, %bb.ou ], [ %.sroa.02.06.i.i.i1367.us, %bb.os ] ; 3 uses
  %.sroa.0.08.i.i.i1372.us = phi ptr [ %i.des, %bb.ou ], [ %.sroa.0158.sroa.4.0.copyload, %bb.os ] ; 3 uses
  %i.des = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1372.us, i64 24, !dbg !72751 ; 2 uses
  %i.det = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1372.us, i64 8, !dbg !72752
  %i.deu = load ptr, ptr %i.det, align 8, !dbg !72752, !noalias !70288, !noundef !3448 ; 2 uses
  %i.dev = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1372.us, i64 16, !dbg !72753
  %i.dew = load i64, ptr %i.dev, align 8, !dbg !72753, !noalias !70288, !noundef !3448 ; 4 uses
  %i.dex = icmp ult i64 %.sroa.02.09.i.i.i1371.us, %i.dew, !dbg !72754
  br i1 %i.dex, label %bb.ot, label %.split3002.us.invoke, !dbg !72754

bb.ot:                                            ; preds = %.lr.ph.i.i.i1369.us
  %i.dey = icmp ult i64 %.sroa.06.010.i.i.i1370.us, %i.dew, !dbg !72755
  br i1 %i.dey, label %bb.ou, label %.split3002.us.invoke, !dbg !72755

bb.ou:                                            ; preds = %bb.ot
  %i.dez = getelementptr inbounds nuw [8 x i8], ptr %i.deu, i64 %.sroa.02.09.i.i.i1371.us, !dbg !72754
  %i.dfa = getelementptr inbounds nuw [8 x i8], ptr %i.deu, i64 %.sroa.06.010.i.i.i1370.us, !dbg !72755
  %.sroa.02.0.i.i.i1373.us = load i64, ptr %i.dez, align 8, !dbg !72748, !noalias !70288, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1374.us = load i64, ptr %i.dfa, align 8, !dbg !72749, !noalias !70288, !noundef !3448 ; 2 uses
  %i.dfb = icmp eq ptr %i.des, %i.deo, !dbg !72756
  br i1 %i.dfb, label %.loopexit2638.us, label %.lr.ph.i.i.i1369.us, !dbg !72750

.loopexit2638.us:                                 ; preds = %bb.ou, %bb.os
  %.sroa.7.0.ph.i1376.us = phi i64 [ %.sroa.06.07.i.i.i1368.us, %bb.os ], [ %.sroa.06.0.i.i.i1374.us, %bb.ou ] ; 9 uses
  %.sroa.5.0.ph.i1377.us = phi i64 [ %.sroa.02.06.i.i.i1367.us, %bb.os ], [ %.sroa.02.0.i.i.i1373.us, %bb.ou ] ; 16 uses
  %i.dfc = add nuw i64 %.sroa.101747.03006.us, 1, !dbg !72757
  %i.dfd = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !72758, !noundef !3448
  %i.dfe = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !72759, !noundef !3448
  %i.dff = icmp ult i64 %.sroa.101747.03006.us, %i.dfe, !dbg !72760
  call void @llvm.assume(i1 %i.dff), !dbg !72761
  %i.dfg = getelementptr inbounds nuw [2 x i8], ptr %i.dfd, i64 %.sroa.101747.03006.us, !dbg !72762
  %i.dfh = load i16, ptr %i.dfg, align 2, !dbg !72763, !noundef !3448 ; 4 uses
  %i.dfi = icmp ult i64 %.sroa.5.0.ph.i1377.us, %.sroa.7.0.ph.i1376.us, !dbg !72764
  br i1 %i.dfi, label %.lr.ph.us3010, label %.loopexit2637.us, !dbg !72765

.lr.ph.us3010:                                    ; preds = %.loopexit2638.us
  %i.dfj = icmp eq i16 %i.dfh, 0
  br i1 %i.dfj, label %iter.check4236, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.preheader

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.preheader: ; preds = %.lr.ph.us3010
  %i.dfk = sub i64 %.sroa.7.0.ph.i1376.us, %.sroa.5.0.ph.i1377.us, !dbg !72765
  %.neg4517 = add i64 %.sroa.5.0.ph.i1377.us, 1, !dbg !72765
  %xtraiter4448 = and i64 %i.dfk, 1, !dbg !72765
  %lcmp.mod4449.not = icmp eq i64 %xtraiter4448, 0, !dbg !72765
  br i1 %lcmp.mod4449.not, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol, !dbg !72765

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.preheader
  %i.dfl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dfm = icmp ult i64 %.sroa.5.0.ph.i1377.us, %i.dfl, !dbg !72767
  call void @llvm.assume(i1 %i.dfm), !dbg !72768
  %i.dfn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72769, !noundef !3448
  %i.dfo = getelementptr inbounds nuw [2 x i8], ptr %i.dfn, i64 %.sroa.5.0.ph.i1377.us, !dbg !72770
  %i.dfp = load i16, ptr %i.dfo, align 2, !dbg !72771, !noundef !3448
  %i.dfq = urem i16 %i.dfp, %i.dfh, !dbg !72772
  %i.dfr = add nuw i64 %.sroa.5.0.ph.i1377.us, 1, !dbg !72773
  %i.dfs = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1377.us, !dbg !72774
  store i16 %i.dfq, ptr %i.dfs, align 2, !dbg !72775
  br label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit, !dbg !72765

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.preheader
  %.sroa.0433.03005.us3013.unr = phi i64 [ %.sroa.5.0.ph.i1377.us, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.preheader ], [ %i.dfr, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol ]
  %i.dft = icmp eq i64 %.sroa.7.0.ph.i1376.us, %.neg4517, !dbg !72765
  br i1 %i.dft, label %.loopexit2637.us, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012, !dbg !72765

iter.check4236:                                   ; preds = %.lr.ph.us3010
  %i.dfu = sub i64 %.sroa.7.0.ph.i1376.us, %.sroa.5.0.ph.i1377.us, !dbg !72765 ; 7 uses
  %min.iters.check4216 = icmp ult i64 %i.dfu, 4, !dbg !72765
  br i1 %min.iters.check4216, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader, label %vector.memcheck4208, !dbg !72765

vector.memcheck4208:                              ; preds = %iter.check4236
  %i.dfv = shl nuw i64 %.sroa.5.0.ph.i1377.us, 1, !dbg !72765
  %scevgep4209 = getelementptr i8, ptr %i.cnj, i64 %i.dfv, !dbg !72765
  %i.dfw = shl i64 %.sroa.7.0.ph.i1376.us, 1, !dbg !72765
  %scevgep4210 = getelementptr i8, ptr %i.cnj, i64 %i.dfw, !dbg !72765
  %bound04212 = icmp ult ptr %scevgep4209, %scevgep4211, !dbg !72765
  %bound14213 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4210, !dbg !72765
  %found.conflict4214 = and i1 %bound04212, %bound14213, !dbg !72765
  br i1 %found.conflict4214, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader, label %vector.main.loop.iter.check4217

vector.main.loop.iter.check4217:                  ; preds = %vector.memcheck4208
  %min.iters.check4218 = icmp ult i64 %i.dfu, 16, !dbg !72765
  br i1 %min.iters.check4218, label %vec.epilog.ph4240, label %vector.ph4219, !dbg !72765

vector.ph4219:                                    ; preds = %vector.main.loop.iter.check4217
  %i.dfx = and i64 %i.dfu, 12
  %n.vec4220 = and i64 %i.dfu, -16                ; 4 uses
  %i.dfy = add i64 %.sroa.5.0.ph.i1377.us, %n.vec4220
  %i.dfz = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1377.us
  br label %vector.body4224, !dbg !72765

vector.body4224:                                  ; preds = %vector.ph4219, %vector.body4224
  %index4225 = phi i64 [ 0, %vector.ph4219 ], [ %index.next4230, %vector.body4224 ] ; 2 uses
  %i.dga = getelementptr inbounds nuw [2 x i8], ptr %i.dfz, i64 %index4225, !dbg !72774 ; 2 uses
  %i.dgb = getelementptr inbounds nuw i8, ptr %i.dga, i64 16, !dbg !72775
  store <8 x i16> zeroinitializer, ptr %i.dga, align 2, !dbg !72775, !alias.scope !70322, !noalias !70323
  store <8 x i16> zeroinitializer, ptr %i.dgb, align 2, !dbg !72775, !alias.scope !70322, !noalias !70323
  %index.next4230 = add nuw i64 %index4225, 16    ; 2 uses
  %i.dgc = icmp eq i64 %index.next4230, %n.vec4220, !dbg !72765
  br i1 %i.dgc, label %middle.block4232, label %vector.body4224, !dbg !72765, !llvm.loop !68017

middle.block4232:                                 ; preds = %vector.body4224
  %cmp.n4233 = icmp eq i64 %i.dfu, %n.vec4220, !dbg !72765
  br i1 %cmp.n4233, label %.loopexit2637.us, label %vec.epilog.iter.check4238, !dbg !72765

vec.epilog.iter.check4238:                        ; preds = %middle.block4232
  %min.epilog.iters.check4239 = icmp eq i64 %i.dfx, 0
  br i1 %min.epilog.iters.check4239, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader, label %vec.epilog.ph4240, !prof !3686

vec.epilog.ph4240:                                ; preds = %vector.main.loop.iter.check4217, %vec.epilog.iter.check4238
  %vec.epilog.resume.val4234 = phi i64 [ %n.vec4220, %vec.epilog.iter.check4238 ], [ 0, %vector.main.loop.iter.check4217 ]
  %n.vec4241 = and i64 %i.dfu, -4                 ; 3 uses
  %i.dgd = add i64 %.sroa.5.0.ph.i1377.us, %n.vec4241
  %i.dge = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1377.us
  br label %vec.epilog.vector.body4245

vec.epilog.vector.body4245:                       ; preds = %vec.epilog.vector.body4245, %vec.epilog.ph4240
  %index4246 = phi i64 [ %vec.epilog.resume.val4234, %vec.epilog.ph4240 ], [ %index.next4250, %vec.epilog.vector.body4245 ] ; 2 uses
  %i.dgf = getelementptr inbounds nuw [2 x i8], ptr %i.dge, i64 %index4246, !dbg !72774
  store <4 x i16> zeroinitializer, ptr %i.dgf, align 2, !dbg !72775, !alias.scope !70322, !noalias !70323
  %index.next4250 = add nuw i64 %index4246, 4     ; 2 uses
  %i.dgg = icmp eq i64 %index.next4250, %n.vec4241, !dbg !72765
  br i1 %i.dgg, label %vec.epilog.middle.block4252, label %vec.epilog.vector.body4245, !dbg !72765, !llvm.loop !68018

vec.epilog.middle.block4252:                      ; preds = %vec.epilog.vector.body4245
  %cmp.n4253 = icmp eq i64 %i.dfu, %n.vec4241, !dbg !72765
  br i1 %cmp.n4253, label %.loopexit2637.us, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader, !dbg !72765

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader: ; preds = %iter.check4236, %vector.memcheck4208, %vec.epilog.iter.check4238, %vec.epilog.middle.block4252
  %.sroa.0433.03005.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1377.us, %iter.check4236 ], [ %.sroa.5.0.ph.i1377.us, %vector.memcheck4208 ], [ %i.dfy, %vec.epilog.iter.check4238 ], [ %i.dgd, %vec.epilog.middle.block4252 ] ; 4 uses
  %i.dgh = sub i64 %.sroa.7.0.ph.i1376.us, %.sroa.0433.03005.us.us.ph, !dbg !72765
  %xtraiter4451 = and i64 %i.dgh, 7, !dbg !72765  ; 2 uses
  %lcmp.mod4452.not = icmp eq i64 %xtraiter4451, 0, !dbg !72765
  br i1 %lcmp.mod4452.not, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol, !dbg !72765

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol
  %.sroa.0433.03005.us.us.prol = phi i64 [ %i.dgk, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol ], [ %.sroa.0433.03005.us.us.ph, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader ] ; 3 uses
  %prol.iter4453 = phi i64 [ %prol.iter4453.next, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol ], [ 0, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader ]
  %i.dgi = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dgj = icmp ult i64 %.sroa.0433.03005.us.us.prol, %i.dgi, !dbg !72767
  call void @llvm.assume(i1 %i.dgj), !dbg !72768
  %i.dgk = add nuw i64 %.sroa.0433.03005.us.us.prol, 1, !dbg !72773 ; 2 uses
  %i.dgl = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0433.03005.us.us.prol, !dbg !72774
  store i16 0, ptr %i.dgl, align 2, !dbg !72775
  %prol.iter4453.next = add i64 %prol.iter4453, 1, !dbg !72765 ; 2 uses
  %prol.iter4453.cmp.not = icmp eq i64 %prol.iter4453.next, %xtraiter4451, !dbg !72765
  br i1 %prol.iter4453.cmp.not, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol, !dbg !72765, !llvm.loop !68019

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader
  %.sroa.0433.03005.us.us.unr = phi i64 [ %.sroa.0433.03005.us.us.ph, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader ], [ %i.dgk, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol ]
  %i.dgm = sub i64 %.sroa.0433.03005.us.us.ph, %.sroa.7.0.ph.i1376.us, !dbg !72765
  %i.dgn = icmp ugt i64 %i.dgm, -8, !dbg !72765
  br i1 %i.dgn, label %.loopexit2637.us, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us, !dbg !72765

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012
  %.sroa.0433.03005.us3013 = phi i64 [ %i.dhc, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012 ], [ %.sroa.0433.03005.us3013.unr, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit ] ; 5 uses
  %i.dgo = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dgp = icmp ult i64 %.sroa.0433.03005.us3013, %i.dgo, !dbg !72767
  call void @llvm.assume(i1 %i.dgp), !dbg !72768
  %i.dgq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72769, !noundef !3448
  %i.dgr = getelementptr inbounds nuw [2 x i8], ptr %i.dgq, i64 %.sroa.0433.03005.us3013, !dbg !72770
  %i.dgs = load i16, ptr %i.dgr, align 2, !dbg !72771, !noundef !3448
  %i.dgt = urem i16 %i.dgs, %i.dfh, !dbg !72772
  %i.dgu = add nuw i64 %.sroa.0433.03005.us3013, 1, !dbg !72773 ; 3 uses
  %i.dgv = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0433.03005.us3013, !dbg !72774
  store i16 %i.dgt, ptr %i.dgv, align 2, !dbg !72775
  %i.dgw = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dgx = icmp ult i64 %i.dgu, %i.dgw, !dbg !72767
  call void @llvm.assume(i1 %i.dgx), !dbg !72768
  %i.dgy = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72769, !noundef !3448
  %i.dgz = getelementptr inbounds nuw [2 x i8], ptr %i.dgy, i64 %i.dgu, !dbg !72770
  %i.dha = load i16, ptr %i.dgz, align 2, !dbg !72771, !noundef !3448
  %i.dhb = urem i16 %i.dha, %i.dfh, !dbg !72772
  %i.dhc = add nuw i64 %.sroa.0433.03005.us3013, 2, !dbg !72773 ; 2 uses
  %i.dhd = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dgu, !dbg !72774
  store i16 %i.dhb, ptr %i.dhd, align 2, !dbg !72775
  %exitcond3448.not.1 = icmp eq i64 %i.dhc, %.sroa.7.0.ph.i1376.us, !dbg !72764
  br i1 %exitcond3448.not.1, label %.loopexit2637.us, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012, !dbg !72765

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us
  %.sroa.0433.03005.us.us = phi i64 [ %i.dii, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us ], [ %.sroa.0433.03005.us.us.unr, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit ] ; 10 uses
  %i.dhe = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dhf = icmp ult i64 %.sroa.0433.03005.us.us, %i.dhe, !dbg !72767
  call void @llvm.assume(i1 %i.dhf), !dbg !72768
  %i.dhg = add nuw i64 %.sroa.0433.03005.us.us, 1, !dbg !72773 ; 2 uses
  %i.dhh = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0433.03005.us.us, !dbg !72774
  store i16 0, ptr %i.dhh, align 2, !dbg !72775
  %i.dhi = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dhj = icmp ult i64 %i.dhg, %i.dhi, !dbg !72767
  call void @llvm.assume(i1 %i.dhj), !dbg !72768
  %i.dhk = add nuw i64 %.sroa.0433.03005.us.us, 2, !dbg !72773 ; 2 uses
  %i.dhl = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dhg, !dbg !72774
  store i16 0, ptr %i.dhl, align 2, !dbg !72775
  %i.dhm = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dhn = icmp ult i64 %i.dhk, %i.dhm, !dbg !72767
  call void @llvm.assume(i1 %i.dhn), !dbg !72768
  %i.dho = add nuw i64 %.sroa.0433.03005.us.us, 3, !dbg !72773 ; 2 uses
  %i.dhp = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dhk, !dbg !72774
  store i16 0, ptr %i.dhp, align 2, !dbg !72775
  %i.dhq = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dhr = icmp ult i64 %i.dho, %i.dhq, !dbg !72767
  call void @llvm.assume(i1 %i.dhr), !dbg !72768
  %i.dhs = add nuw i64 %.sroa.0433.03005.us.us, 4, !dbg !72773 ; 2 uses
  %i.dht = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dho, !dbg !72774
  store i16 0, ptr %i.dht, align 2, !dbg !72775
  %i.dhu = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dhv = icmp ult i64 %i.dhs, %i.dhu, !dbg !72767
  call void @llvm.assume(i1 %i.dhv), !dbg !72768
  %i.dhw = add nuw i64 %.sroa.0433.03005.us.us, 5, !dbg !72773 ; 2 uses
  %i.dhx = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dhs, !dbg !72774
  store i16 0, ptr %i.dhx, align 2, !dbg !72775
  %i.dhy = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dhz = icmp ult i64 %i.dhw, %i.dhy, !dbg !72767
  call void @llvm.assume(i1 %i.dhz), !dbg !72768
  %i.dia = add nuw i64 %.sroa.0433.03005.us.us, 6, !dbg !72773 ; 2 uses
  %i.dib = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dhw, !dbg !72774
  store i16 0, ptr %i.dib, align 2, !dbg !72775
  %i.dic = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.did = icmp ult i64 %i.dia, %i.dic, !dbg !72767
  call void @llvm.assume(i1 %i.did), !dbg !72768
  %i.die = add nuw i64 %.sroa.0433.03005.us.us, 7, !dbg !72773 ; 2 uses
  %i.dif = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dia, !dbg !72774
  store i16 0, ptr %i.dif, align 2, !dbg !72775
  %i.dig = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72766, !noundef !3448
  %i.dih = icmp ult i64 %i.die, %i.dig, !dbg !72767
  call void @llvm.assume(i1 %i.dih), !dbg !72768
  %i.dii = add nuw i64 %.sroa.0433.03005.us.us, 8, !dbg !72773 ; 2 uses
  %i.dij = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.die, !dbg !72774
  store i16 0, ptr %i.dij, align 2, !dbg !72775
  %exitcond3450.not.7 = icmp eq i64 %i.dii, %.sroa.7.0.ph.i1376.us, !dbg !72764
  br i1 %exitcond3450.not.7, label %.loopexit2637.us, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us, !dbg !72765, !llvm.loop !68020

.loopexit2637.us:                                 ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us, %middle.block4232, %vec.epilog.middle.block4252, %.loopexit2638.us
  %i.dik = icmp ult i64 %i.deq, 2, !dbg !72744
  br i1 %i.dik, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.os, !dbg !72744

.lr.ph3009.split:                                 ; preds = %.lr.ph3009
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0158.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !70286), !dbg !72747
  br label %.lr.ph2997.split.invoke, !dbg !72776

bb.ov:                                            ; preds = %bb.oq
  %.sroa.0154.sroa.0.0.copyload = load ptr, ptr %i.cr, align 8, !dbg !72777 ; 2 uses
  %.sroa.0154.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !72777
  %.sroa.0154.sroa.2.0.copyload = load i64, ptr %.sroa.0154.sroa.2.0..sroa_idx, align 8, !dbg !72777 ; 2 uses
  %.sroa.0154.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !72777
  %.sroa.0154.sroa.3.0.copyload = load i64, ptr %.sroa.0154.sroa.3.0..sroa_idx, align 8, !dbg !72777 ; 2 uses
  %.sroa.0154.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24, !dbg !72777
  %.sroa.0154.sroa.4.0.copyload = load ptr, ptr %.sroa.0154.sroa.4.0..sroa_idx, align 8, !dbg !72777 ; 3 uses
  %.sroa.0154.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32, !dbg !72777
  %.sroa.0154.sroa.5.0.copyload = load i64, ptr %.sroa.0154.sroa.5.0..sroa_idx, align 8, !dbg !72777 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !72528
  %i.dil = icmp ugt i64 %.sroa.0154.sroa.3.0.copyload, %.sroa.0154.sroa.2.0.copyload, !dbg !72778
  br i1 %i.dil, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph3026, !dbg !72778

.lr.ph3026:                                       ; preds = %bb.ov
  %i.dim = icmp eq i64 %.sroa.0154.sroa.3.0.copyload, 2
  %.idx.i.i.i1387 = mul nuw nsw i64 %.sroa.0154.sroa.5.0.copyload, 24
  %i.din = getelementptr inbounds nuw i8, ptr %.sroa.0154.sroa.4.0.copyload, i64 %.idx.i.i.i1387
  %i.dio = icmp eq i64 %.sroa.0154.sroa.5.0.copyload, 0
  br i1 %i.dim, label %.lr.ph3026.split.us, label %.lr.ph3026.split, !prof !3552

.lr.ph3026.split.us:                              ; preds = %.lr.ph3026
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0154.sroa.4.0.copyload) ]
  br label %bb.ow, !dbg !72778

bb.ow:                                            ; preds = %.loopexit2634.us, %.lr.ph3026.split.us
  %.sroa.01732.03025.us = phi ptr [ %.sroa.0154.sroa.0.0.copyload, %.lr.ph3026.split.us ], [ %i.diq, %.loopexit2634.us ] ; 3 uses
  %.sroa.51733.03024.us = phi i64 [ %.sroa.0154.sroa.2.0.copyload, %.lr.ph3026.split.us ], [ %i.dip, %.loopexit2634.us ]
  %.sroa.101737.03023.us = phi i64 [ 0, %.lr.ph3026.split.us ], [ %i.djb, %.loopexit2634.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01732.03025.us) ]
  %i.dip = add i64 %.sroa.51733.03024.us, -1, !dbg !72779 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes10UInt16TypeEBb_:bb.a
  %xtraiter4454 = and i64 %i.dji, 1, !dbg !72800
  %lcmp.mod4455.not = icmp eq i64 %xtraiter4454, 0, !dbg !72800
  br i1 %lcmp.mod4455.not, label %.lr.ph.us3027.prol.loopexit, label %.lr.ph.us3027.prol, !dbg !72800

.lr.ph.us3027.prol:                               ; preds = %.lr.ph.us3027.preheader
  %i.djj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72801, !noundef !3448
  %i.djk = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72802, !noundef !3448
  %i.djl = icmp ult i64 %.sroa.5.0.ph.i1398.us, %i.djk, !dbg !72803
  call void @llvm.assume(i1 %i.djl), !dbg !72804
  %i.djm = getelementptr inbounds nuw [2 x i8], ptr %i.djj, i64 %.sroa.5.0.ph.i1398.us, !dbg !72805
  %i.djn = load i16, ptr %i.djm, align 2, !dbg !72806, !noundef !3448 ; 2 uses
  %i.djo = icmp eq i16 %i.djn, 0, !dbg !72800
  br i1 %i.djo, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.prol, label %bb.oz, !dbg !72800

bb.oz:                                            ; preds = %.lr.ph.us3027.prol
  %i.djp = urem i16 %i.djg, %i.djn, !dbg !72807
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.prol, !dbg !72808

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.prol: ; preds = %bb.oz, %.lr.ph.us3027.prol
  %.sroa.0.0.i.i1406.us.prol = phi i16 [ %i.djp, %bb.oz ], [ 0, %.lr.ph.us3027.prol ], !dbg !72809
  %i.djq = add nuw i64 %.sroa.5.0.ph.i1398.us, 1, !dbg !72810
  %i.djr = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1398.us, !dbg !72811
  store i16 %.sroa.0.0.i.i1406.us.prol, ptr %i.djr, align 2, !dbg !72812
  br label %.lr.ph.us3027.prol.loopexit, !dbg !72800

.lr.ph.us3027.prol.loopexit:                      ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.prol, %.lr.ph.us3027.preheader
  %.sroa.0431.03022.us.unr = phi i64 [ %.sroa.5.0.ph.i1398.us, %.lr.ph.us3027.preheader ], [ %i.djq, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.prol ]
  %i.djs = icmp eq i64 %.sroa.7.0.ph.i1397.us, %.neg4518, !dbg !72800
  br i1 %i.djs, label %.loopexit2634.us, label %.lr.ph.us3027, !dbg !72800

.lr.ph.us3027:                                    ; preds = %.lr.ph.us3027.prol.loopexit, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.1
  %.sroa.0431.03022.us = phi i64 [ %i.dkj, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.1 ], [ %.sroa.0431.03022.us.unr, %.lr.ph.us3027.prol.loopexit ] ; 5 uses
  %i.djt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72801, !noundef !3448
  %i.dju = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72802, !noundef !3448
  %i.djv = icmp ult i64 %.sroa.0431.03022.us, %i.dju, !dbg !72803
  call void @llvm.assume(i1 %i.djv), !dbg !72804
  %i.djw = getelementptr inbounds nuw [2 x i8], ptr %i.djt, i64 %.sroa.0431.03022.us, !dbg !72805
  %i.djx = load i16, ptr %i.djw, align 2, !dbg !72806, !noundef !3448 ; 2 uses
  %i.djy = icmp eq i16 %i.djx, 0, !dbg !72800
  br i1 %i.djy, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us, label %bb.pa, !dbg !72800

bb.pa:                                            ; preds = %.lr.ph.us3027
  %i.djz = urem i16 %i.djg, %i.djx, !dbg !72807
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us, !dbg !72808

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us: ; preds = %bb.pa, %.lr.ph.us3027
  %.sroa.0.0.i.i1406.us = phi i16 [ %i.djz, %bb.pa ], [ 0, %.lr.ph.us3027 ], !dbg !72809
  %i.dka = add nuw i64 %.sroa.0431.03022.us, 1, !dbg !72810 ; 3 uses
  %i.dkb = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0431.03022.us, !dbg !72811
  store i16 %.sroa.0.0.i.i1406.us, ptr %i.dkb, align 2, !dbg !72812
  %i.dkc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72801, !noundef !3448
  %i.dkd = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72802, !noundef !3448
  %i.dke = icmp ult i64 %i.dka, %i.dkd, !dbg !72803
  call void @llvm.assume(i1 %i.dke), !dbg !72804
  %i.dkf = getelementptr inbounds nuw [2 x i8], ptr %i.dkc, i64 %i.dka, !dbg !72805
  %i.dkg = load i16, ptr %i.dkf, align 2, !dbg !72806, !noundef !3448 ; 2 uses
  %i.dkh = icmp eq i16 %i.dkg, 0, !dbg !72800
  br i1 %i.dkh, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.1, label %bb.pb, !dbg !72800

bb.pb:                                            ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us
  %i.dki = urem i16 %i.djg, %i.dkg, !dbg !72807
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.1, !dbg !72808

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.1: ; preds = %bb.pb, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us
  %.sroa.0.0.i.i1406.us.1 = phi i16 [ %i.dki, %bb.pb ], [ 0, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us ], !dbg !72809
  %i.dkj = add nuw i64 %.sroa.0431.03022.us, 2, !dbg !72810 ; 2 uses
  %i.dkk = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dka, !dbg !72811
  store i16 %.sroa.0.0.i.i1406.us.1, ptr %i.dkk, align 2, !dbg !72812
  %exitcond3451.not.1 = icmp eq i64 %i.dkj, %.sroa.7.0.ph.i1397.us, !dbg !72798
  br i1 %exitcond3451.not.1, label %.loopexit2634.us, label %.lr.ph.us3027, !dbg !72799

.loopexit2634.us:                                 ; preds = %.lr.ph.us3027.prol.loopexit, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt16TypeEs8_0Bd_.exit.us.1, %.loopexit2635.us
  %i.dkl = icmp ult i64 %i.dip, 2, !dbg !72778
  br i1 %i.dkl, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.ow, !dbg !72778

.lr.ph3026.split:                                 ; preds = %.lr.ph3026
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0154.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !70328), !dbg !72781
  br label %.lr.ph2997.split.invoke, !dbg !72813

bb.pc:                                            ; preds = %bb.nj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !70446
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.pe unwind label %bb.qu, !dbg !70446

bb.pd:                                            ; preds = %bb.nj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !70446
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.pi unwind label %bb.qu, !dbg !70446

bb.pe:                                            ; preds = %bb.pc
  %.sroa.0166.sroa.0.0.copyload = load ptr, ptr %i.co, align 8, !dbg !72814 ; 2 uses
  %.sroa.0166.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !72814
  %.sroa.0166.sroa.2.0.copyload = load i64, ptr %.sroa.0166.sroa.2.0..sroa_idx, align 8, !dbg !72814 ; 2 uses
  %.sroa.0166.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16, !dbg !72814
  %.sroa.0166.sroa.3.0.copyload = load i64, ptr %.sroa.0166.sroa.3.0..sroa_idx, align 8, !dbg !72814 ; 2 uses
  %.sroa.0166.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24, !dbg !72814
  %.sroa.0166.sroa.4.0.copyload = load ptr, ptr %.sroa.0166.sroa.4.0..sroa_idx, align 8, !dbg !72814 ; 3 uses
  %.sroa.0166.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 32, !dbg !72814
  %.sroa.0166.sroa.5.0.copyload = load i64, ptr %.sroa.0166.sroa.5.0..sroa_idx, align 8, !dbg !72814 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !72528
  %i.dkm = icmp ugt i64 %.sroa.0166.sroa.3.0.copyload, %.sroa.0166.sroa.2.0.copyload, !dbg !72815
  br i1 %i.dkm, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph2980, !dbg !72815

.lr.ph2980:                                       ; preds = %bb.pe
  %i.dkn = icmp eq i64 %.sroa.0166.sroa.3.0.copyload, 2
  %.idx.i.i.i1409 = mul nuw nsw i64 %.sroa.0166.sroa.5.0.copyload, 24
  %i.dko = getelementptr inbounds nuw i8, ptr %.sroa.0166.sroa.4.0.copyload, i64 %.idx.i.i.i1409
  %i.dkp = icmp eq i64 %.sroa.0166.sroa.5.0.copyload, 0
  br i1 %i.dkn, label %.lr.ph2980.split.us, label %.lr.ph2980.split, !prof !3552

.lr.ph2980.split.us:                              ; preds = %.lr.ph2980
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.sroa.4.0.copyload) ]
  %scevgep4171 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !72815
  br label %bb.pf, !dbg !72815

bb.pf:                                            ; preds = %.loopexit2643.us, %.lr.ph2980.split.us
  %.sroa.01762.02979.us = phi ptr [ %.sroa.0166.sroa.0.0.copyload, %.lr.ph2980.split.us ], [ %i.dkr, %.loopexit2643.us ] ; 3 uses
  %.sroa.51763.02978.us = phi i64 [ %.sroa.0166.sroa.2.0.copyload, %.lr.ph2980.split.us ], [ %i.dkq, %.loopexit2643.us ]
  %.sroa.101767.02977.us = phi i64 [ 0, %.lr.ph2980.split.us ], [ %i.dlc, %.loopexit2643.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01762.02979.us) ]
  %i.dkq = add i64 %.sroa.51763.02978.us, -1, !dbg !72816 ; 2 uses
  %i.dkr = getelementptr inbounds nuw i8, ptr %.sroa.01762.02979.us, i64 8, !dbg !72817 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70368), !dbg !72818
  %.sroa.02.06.i.i.i1410.us = load i64, ptr %.sroa.01762.02979.us, align 8, !dbg !72819, !alias.scope !70368, !noalias !70369, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1411.us = load i64, ptr %i.dkr, align 8, !dbg !72820, !alias.scope !70368, !noalias !70369, !noundef !3448 ; 2 uses
  br i1 %i.dkp, label %.loopexit2644.us, label %.lr.ph.i.i.i1412.us, !dbg !72821

.lr.ph.i.i.i1412.us:                              ; preds = %bb.pf, %bb.ph
  %.sroa.06.010.i.i.i1413.us = phi i64 [ %.sroa.06.0.i.i.i1417.us, %bb.ph ], [ %.sroa.06.07.i.i.i1411.us, %bb.pf ] ; 3 uses
  %.sroa.02.09.i.i.i1414.us = phi i64 [ %.sroa.02.0.i.i.i1416.us, %bb.ph ], [ %.sroa.02.06.i.i.i1410.us, %bb.pf ] ; 3 uses
  %.sroa.0.08.i.i.i1415.us = phi ptr [ %i.dks, %bb.ph ], [ %.sroa.0166.sroa.4.0.copyload, %bb.pf ] ; 3 uses
  %i.dks = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1415.us, i64 24, !dbg !72822 ; 2 uses
  %i.dkt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1415.us, i64 8, !dbg !72823
  %i.dku = load ptr, ptr %i.dkt, align 8, !dbg !72823, !noalias !70370, !noundef !3448 ; 2 uses
  %i.dkv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1415.us, i64 16, !dbg !72824
  %i.dkw = load i64, ptr %i.dkv, align 8, !dbg !72824, !noalias !70370, !noundef !3448 ; 4 uses
  %i.dkx = icmp ult i64 %.sroa.02.09.i.i.i1414.us, %i.dkw, !dbg !72825
  br i1 %i.dkx, label %bb.pg, label %.split3002.us.invoke, !dbg !72825

bb.pg:                                            ; preds = %.lr.ph.i.i.i1412.us
  %i.dky = icmp ult i64 %.sroa.06.010.i.i.i1413.us, %i.dkw, !dbg !72826
  br i1 %i.dky, label %bb.ph, label %.split3002.us.invoke, !dbg !72826

bb.ph:                                            ; preds = %bb.pg
  %i.dkz = getelementptr inbounds nuw [8 x i8], ptr %i.dku, i64 %.sroa.02.09.i.i.i1414.us, !dbg !72825
  %i.dla = getelementptr inbounds nuw [8 x i8], ptr %i.dku, i64 %.sroa.06.010.i.i.i1413.us, !dbg !72826
  %.sroa.02.0.i.i.i1416.us = load i64, ptr %i.dkz, align 8, !dbg !72819, !noalias !70370, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1417.us = load i64, ptr %i.dla, align 8, !dbg !72820, !noalias !70370, !noundef !3448 ; 2 uses
  %i.dlb = icmp eq ptr %i.dks, %i.dko, !dbg !72827
  br i1 %i.dlb, label %.loopexit2644.us, label %.lr.ph.i.i.i1412.us, !dbg !72821

.loopexit2644.us:                                 ; preds = %bb.ph, %bb.pf
  %.sroa.7.0.ph.i1419.us = phi i64 [ %.sroa.06.07.i.i.i1411.us, %bb.pf ], [ %.sroa.06.0.i.i.i1417.us, %bb.ph ] ; 9 uses
  %.sroa.5.0.ph.i1420.us = phi i64 [ %.sroa.02.06.i.i.i1410.us, %bb.pf ], [ %.sroa.02.0.i.i.i1416.us, %bb.ph ] ; 16 uses
  %i.dlc = add nuw i64 %.sroa.101767.02977.us, 1, !dbg !72828
  %i.dld = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !72829, !noundef !3448
  %i.dle = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !72830, !noundef !3448
  %i.dlf = icmp ult i64 %.sroa.101767.02977.us, %i.dle, !dbg !72831
  call void @llvm.assume(i1 %i.dlf), !dbg !72832
  %i.dlg = getelementptr inbounds nuw [2 x i8], ptr %i.dld, i64 %.sroa.101767.02977.us, !dbg !72833
  %i.dlh = load i16, ptr %i.dlg, align 2, !dbg !72834, !noundef !3448 ; 4 uses
  %i.dli = icmp ult i64 %.sroa.5.0.ph.i1420.us, %.sroa.7.0.ph.i1419.us, !dbg !72835
  br i1 %i.dli, label %.lr.ph.us2981, label %.loopexit2643.us, !dbg !72836

.lr.ph.us2981:                                    ; preds = %.loopexit2644.us
  %i.dlj = icmp eq i16 %i.dlh, 0
  br i1 %i.dlj, label %iter.check4189, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.preheader

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.preheader: ; preds = %.lr.ph.us2981
  %i.dlk = sub i64 %.sroa.7.0.ph.i1419.us, %.sroa.5.0.ph.i1420.us, !dbg !72836
  %.neg = add i64 %.sroa.5.0.ph.i1420.us, 1, !dbg !72836
  %xtraiter = and i64 %i.dlk, 1, !dbg !72836
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72836
  br i1 %lcmp.mod.not, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol, !dbg !72836

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.preheader
  %i.dll = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dlm = icmp ult i64 %.sroa.5.0.ph.i1420.us, %i.dll, !dbg !72838
  call void @llvm.assume(i1 %i.dlm), !dbg !72839
  %i.dln = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72840, !noundef !3448
  %i.dlo = getelementptr inbounds nuw [2 x i8], ptr %i.dln, i64 %.sroa.5.0.ph.i1420.us, !dbg !72841
  %i.dlp = load i16, ptr %i.dlo, align 2, !dbg !72842, !noundef !3448
  %i.dlq = udiv i16 %i.dlp, %i.dlh, !dbg !72843
  %i.dlr = add nuw i64 %.sroa.5.0.ph.i1420.us, 1, !dbg !72844
  %i.dls = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1420.us, !dbg !72845
  store i16 %i.dlq, ptr %i.dls, align 2, !dbg !72846
  br label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit, !dbg !72836

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.preheader
  %.sroa.0437.02976.us2984.unr = phi i64 [ %.sroa.5.0.ph.i1420.us, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.preheader ], [ %i.dlr, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol ]
  %i.dlt = icmp eq i64 %.sroa.7.0.ph.i1419.us, %.neg, !dbg !72836
  br i1 %i.dlt, label %.loopexit2643.us, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983, !dbg !72836

iter.check4189:                                   ; preds = %.lr.ph.us2981
  %i.dlu = sub i64 %.sroa.7.0.ph.i1419.us, %.sroa.5.0.ph.i1420.us, !dbg !72836 ; 7 uses
  %min.iters.check4173 = icmp ult i64 %i.dlu, 4, !dbg !72836
  br i1 %min.iters.check4173, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader, label %vector.memcheck, !dbg !72836

vector.memcheck:                                  ; preds = %iter.check4189
  %i.dlv = shl nuw i64 %.sroa.5.0.ph.i1420.us, 1, !dbg !72836
  %scevgep = getelementptr i8, ptr %i.cnj, i64 %i.dlv, !dbg !72836
  %i.dlw = shl i64 %.sroa.7.0.ph.i1419.us, 1, !dbg !72836
  %scevgep4170 = getelementptr i8, ptr %i.cnj, i64 %i.dlw, !dbg !72836
  %bound0 = icmp ult ptr %scevgep, %scevgep4171, !dbg !72836
  %bound1 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4170, !dbg !72836
  %found.conflict = and i1 %bound0, %bound1, !dbg !72836
  br i1 %found.conflict, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader, label %vector.main.loop.iter.check4174

vector.main.loop.iter.check4174:                  ; preds = %vector.memcheck
  %min.iters.check4175 = icmp ult i64 %i.dlu, 16, !dbg !72836
  br i1 %min.iters.check4175, label %vec.epilog.ph4193, label %vector.ph4176, !dbg !72836

vector.ph4176:                                    ; preds = %vector.main.loop.iter.check4174
  %i.dlx = and i64 %i.dlu, 12
  %n.vec4177 = and i64 %i.dlu, -16                ; 4 uses
  %i.dly = add i64 %.sroa.5.0.ph.i1420.us, %n.vec4177
  %i.dlz = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1420.us
  br label %vector.body4180, !dbg !72836

vector.body4180:                                  ; preds = %vector.ph4176, %vector.body4180
  %index4181 = phi i64 [ 0, %vector.ph4176 ], [ %index.next4184, %vector.body4180 ] ; 2 uses
  %i.dma = getelementptr inbounds nuw [2 x i8], ptr %i.dlz, i64 %index4181, !dbg !72845 ; 2 uses
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.dma, i64 16, !dbg !72846
  store <8 x i16> zeroinitializer, ptr %i.dma, align 2, !dbg !72846, !alias.scope !70404, !noalias !70405
  store <8 x i16> zeroinitializer, ptr %i.dmb, align 2, !dbg !72846, !alias.scope !70404, !noalias !70405
  %index.next4184 = add nuw i64 %index4181, 16    ; 2 uses
  %i.dmc = icmp eq i64 %index.next4184, %n.vec4177, !dbg !72836
  br i1 %i.dmc, label %middle.block4185, label %vector.body4180, !dbg !72836, !llvm.loop !68088

middle.block4185:                                 ; preds = %vector.body4180
  %cmp.n4186 = icmp eq i64 %i.dlu, %n.vec4177, !dbg !72836
  br i1 %cmp.n4186, label %.loopexit2643.us, label %vec.epilog.iter.check4191, !dbg !72836

vec.epilog.iter.check4191:                        ; preds = %middle.block4185
  %min.epilog.iters.check4192 = icmp eq i64 %i.dlx, 0
  br i1 %min.epilog.iters.check4192, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader, label %vec.epilog.ph4193, !prof !3686

vec.epilog.ph4193:                                ; preds = %vector.main.loop.iter.check4174, %vec.epilog.iter.check4191
  %vec.epilog.resume.val4187 = phi i64 [ %n.vec4177, %vec.epilog.iter.check4191 ], [ 0, %vector.main.loop.iter.check4174 ]
  %n.vec4194 = and i64 %i.dlu, -4                 ; 3 uses
  %i.dmd = add i64 %.sroa.5.0.ph.i1420.us, %n.vec4194
  %i.dme = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.5.0.ph.i1420.us
  br label %vec.epilog.vector.body4198

vec.epilog.vector.body4198:                       ; preds = %vec.epilog.vector.body4198, %vec.epilog.ph4193
  %index4199 = phi i64 [ %vec.epilog.resume.val4187, %vec.epilog.ph4193 ], [ %index.next4203, %vec.epilog.vector.body4198 ] ; 2 uses
  %i.dmf = getelementptr inbounds nuw [2 x i8], ptr %i.dme, i64 %index4199, !dbg !72845
  store <4 x i16> zeroinitializer, ptr %i.dmf, align 2, !dbg !72846, !alias.scope !70404, !noalias !70405
  %index.next4203 = add nuw i64 %index4199, 4     ; 2 uses
  %i.dmg = icmp eq i64 %index.next4203, %n.vec4194, !dbg !72836
  br i1 %i.dmg, label %vec.epilog.middle.block4205, label %vec.epilog.vector.body4198, !dbg !72836, !llvm.loop !68089

vec.epilog.middle.block4205:                      ; preds = %vec.epilog.vector.body4198
  %cmp.n4206 = icmp eq i64 %i.dlu, %n.vec4194, !dbg !72836
  br i1 %cmp.n4206, label %.loopexit2643.us, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader, !dbg !72836

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader: ; preds = %iter.check4189, %vector.memcheck, %vec.epilog.iter.check4191, %vec.epilog.middle.block4205
  %.sroa.0437.02976.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1420.us, %iter.check4189 ], [ %.sroa.5.0.ph.i1420.us, %vector.memcheck ], [ %i.dly, %vec.epilog.iter.check4191 ], [ %i.dmd, %vec.epilog.middle.block4205 ] ; 4 uses
  %i.dmh = sub i64 %.sroa.7.0.ph.i1419.us, %.sroa.0437.02976.us.us.ph, !dbg !72836
  %xtraiter4443 = and i64 %i.dmh, 7, !dbg !72836  ; 2 uses
  %lcmp.mod4444.not = icmp eq i64 %xtraiter4443, 0, !dbg !72836
  br i1 %lcmp.mod4444.not, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol, !dbg !72836

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol
  %.sroa.0437.02976.us.us.prol = phi i64 [ %i.dmk, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol ], [ %.sroa.0437.02976.us.us.ph, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol ], [ 0, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader ]
  %i.dmi = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dmj = icmp ult i64 %.sroa.0437.02976.us.us.prol, %i.dmi, !dbg !72838
  call void @llvm.assume(i1 %i.dmj), !dbg !72839
  %i.dmk = add nuw i64 %.sroa.0437.02976.us.us.prol, 1, !dbg !72844 ; 2 uses
  %i.dml = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0437.02976.us.us.prol, !dbg !72845
  store i16 0, ptr %i.dml, align 2, !dbg !72846
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !72836 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4443, !dbg !72836
  br i1 %prol.iter.cmp.not, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol, !dbg !72836, !llvm.loop !68090

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader
  %.sroa.0437.02976.us.us.unr = phi i64 [ %.sroa.0437.02976.us.us.ph, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader ], [ %i.dmk, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol ]
  %i.dmm = sub i64 %.sroa.0437.02976.us.us.ph, %.sroa.7.0.ph.i1419.us, !dbg !72836
  %i.dmn = icmp ugt i64 %i.dmm, -8, !dbg !72836
  br i1 %i.dmn, label %.loopexit2643.us, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us, !dbg !72836

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983
  %.sroa.0437.02976.us2984 = phi i64 [ %i.dnc, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983 ], [ %.sroa.0437.02976.us2984.unr, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit ] ; 5 uses
  %i.dmo = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dmp = icmp ult i64 %.sroa.0437.02976.us2984, %i.dmo, !dbg !72838
  call void @llvm.assume(i1 %i.dmp), !dbg !72839
  %i.dmq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72840, !noundef !3448
  %i.dmr = getelementptr inbounds nuw [2 x i8], ptr %i.dmq, i64 %.sroa.0437.02976.us2984, !dbg !72841
  %i.dms = load i16, ptr %i.dmr, align 2, !dbg !72842, !noundef !3448
  %i.dmt = udiv i16 %i.dms, %i.dlh, !dbg !72843
  %i.dmu = add nuw i64 %.sroa.0437.02976.us2984, 1, !dbg !72844 ; 3 uses
  %i.dmv = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0437.02976.us2984, !dbg !72845
  store i16 %i.dmt, ptr %i.dmv, align 2, !dbg !72846
  %i.dmw = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dmx = icmp ult i64 %i.dmu, %i.dmw, !dbg !72838
  call void @llvm.assume(i1 %i.dmx), !dbg !72839
  %i.dmy = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72840, !noundef !3448
  %i.dmz = getelementptr inbounds nuw [2 x i8], ptr %i.dmy, i64 %i.dmu, !dbg !72841
  %i.dna = load i16, ptr %i.dmz, align 2, !dbg !72842, !noundef !3448
  %i.dnb = udiv i16 %i.dna, %i.dlh, !dbg !72843
  %i.dnc = add nuw i64 %.sroa.0437.02976.us2984, 2, !dbg !72844 ; 2 uses
  %i.dnd = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dmu, !dbg !72845
  store i16 %i.dnb, ptr %i.dnd, align 2, !dbg !72846
  %exitcond3444.not.1 = icmp eq i64 %i.dnc, %.sroa.7.0.ph.i1419.us, !dbg !72835
  br i1 %exitcond3444.not.1, label %.loopexit2643.us, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983, !dbg !72836

_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us: ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us
  %.sroa.0437.02976.us.us = phi i64 [ %i.doi, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us ], [ %.sroa.0437.02976.us.us.unr, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit ] ; 10 uses
  %i.dne = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dnf = icmp ult i64 %.sroa.0437.02976.us.us, %i.dne, !dbg !72838
  call void @llvm.assume(i1 %i.dnf), !dbg !72839
  %i.dng = add nuw i64 %.sroa.0437.02976.us.us, 1, !dbg !72844 ; 2 uses
  %i.dnh = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %.sroa.0437.02976.us.us, !dbg !72845
  store i16 0, ptr %i.dnh, align 2, !dbg !72846
  %i.dni = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dnj = icmp ult i64 %i.dng, %i.dni, !dbg !72838
  call void @llvm.assume(i1 %i.dnj), !dbg !72839
  %i.dnk = add nuw i64 %.sroa.0437.02976.us.us, 2, !dbg !72844 ; 2 uses
  %i.dnl = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dng, !dbg !72845
  store i16 0, ptr %i.dnl, align 2, !dbg !72846
  %i.dnm = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dnn = icmp ult i64 %i.dnk, %i.dnm, !dbg !72838
  call void @llvm.assume(i1 %i.dnn), !dbg !72839
  %i.dno = add nuw i64 %.sroa.0437.02976.us.us, 3, !dbg !72844 ; 2 uses
  %i.dnp = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dnk, !dbg !72845
  store i16 0, ptr %i.dnp, align 2, !dbg !72846
  %i.dnq = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dnr = icmp ult i64 %i.dno, %i.dnq, !dbg !72838
  call void @llvm.assume(i1 %i.dnr), !dbg !72839
  %i.dns = add nuw i64 %.sroa.0437.02976.us.us, 4, !dbg !72844 ; 2 uses
  %i.dnt = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dno, !dbg !72845
  store i16 0, ptr %i.dnt, align 2, !dbg !72846
  %i.dnu = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dnv = icmp ult i64 %i.dns, %i.dnu, !dbg !72838
  call void @llvm.assume(i1 %i.dnv), !dbg !72839
  %i.dnw = add nuw i64 %.sroa.0437.02976.us.us, 5, !dbg !72844 ; 2 uses
  %i.dnx = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dns, !dbg !72845
  store i16 0, ptr %i.dnx, align 2, !dbg !72846
  %i.dny = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dnz = icmp ult i64 %i.dnw, %i.dny, !dbg !72838
  call void @llvm.assume(i1 %i.dnz), !dbg !72839
  %i.doa = add nuw i64 %.sroa.0437.02976.us.us, 6, !dbg !72844 ; 2 uses
  %i.dob = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.dnw, !dbg !72845
  store i16 0, ptr %i.dob, align 2, !dbg !72846
  %i.doc = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.dod = icmp ult i64 %i.doa, %i.doc, !dbg !72838
  call void @llvm.assume(i1 %i.dod), !dbg !72839
  %i.doe = add nuw i64 %.sroa.0437.02976.us.us, 7, !dbg !72844 ; 2 uses
  %i.dof = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.doa, !dbg !72845
  store i16 0, ptr %i.dof, align 2, !dbg !72846
  %i.dog = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !72837, !noundef !3448
  %i.doh = icmp ult i64 %i.doe, %i.dog, !dbg !72838
  call void @llvm.assume(i1 %i.doh), !dbg !72839
  %i.doi = add nuw i64 %.sroa.0437.02976.us.us, 8, !dbg !72844 ; 2 uses
  %i.doj = getelementptr inbounds nuw [2 x i8], ptr %i.cnj, i64 %i.doe, !dbg !72845
  store i16 0, ptr %i.doj, align 2, !dbg !72846
  %exitcond3446.not.7 = icmp eq i64 %i.doi, %.sroa.7.0.ph.i1419.us, !dbg !72835
  br i1 %exitcond3446.not.7, label %.loopexit2643.us, label %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us, !dbg !72836, !llvm.loop !68091

.loopexit2643.us:                                 ; preds = %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit, %_RNvXs4_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_numtNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us, %middle.block4185, %vec.epilog.middle.block4205, %.loopexit2644.us
  %i.dok = icmp ult i64 %i.dkq, 2, !dbg !72815
  br i1 %i.dok, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.pf, !dbg !72815

.lr.ph2980.split:                                 ; preds = %.lr.ph2980
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !70368), !dbg !72818
  br label %.lr.ph2997.split.invoke, !dbg !72847

bb.pi:                                            ; preds = %bb.pd
  %.sroa.0162.sroa.0.0.copyload = load ptr, ptr %i.cp, align 8, !dbg !72848 ; 2 uses
  %.sroa.0162.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !72848
  %.sroa.0162.sroa.2.0.copyload = load i64, ptr %.sroa.0162.sroa.2.0..sroa_idx, align 8, !dbg !72848 ; 2 uses
  %.sroa.0162.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16, !dbg !72848
  %.sroa.0162.sroa.3.0.copyload = load i64, ptr %.sroa.0162.sroa.3.0..sroa_idx, align 8, !dbg !72848 ; 2 uses
  %.sroa.0162.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24, !dbg !72848
  %.sroa.0162.sroa.4.0.copyload = load ptr, ptr %.sroa.0162.sroa.4.0..sroa_idx, align 8, !dbg !72848 ; 3 uses
  %.sroa.0162.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32, !dbg !72848
  %.sroa.0162.sroa.5.0.copyload = load i64, ptr %.sroa.0162.sroa.5.0..sroa_idx, align 8, !dbg !72848 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !72528
  %i.dol = icmp ugt i64 %.sroa.0162.sroa.3.0.copyload, %.sroa.0162.sroa.2.0.copyload, !dbg !72849
  br i1 %i.dol, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph2997, !dbg !72849

.lr.ph2997:                                       ; preds = %bb.pi
  %i.dom = icmp eq i64 %.sroa.0162.sroa.3.0.copyload, 2
  %.idx.i.i.i1430 = mul nuw nsw i64 %.sroa.0162.sroa.5.0.copyload, 24
  %i.don = getelementptr inbounds nuw i8, ptr %.sroa.0162.sroa.4.0.copyload, i64 %.idx.i.i.i1430
  %i.doo = icmp eq i64 %.sroa.0162.sroa.5.0.copyload, 0
  br i1 %i.dom, label %.lr.ph2997.split.us, label %.lr.ph2997.split, !prof !3552

.lr.ph2997.split.us:                              ; preds = %.lr.ph2997
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0162.sroa.4.0.copyload) ]
  br label %bb.pj, !dbg !72849

bb.pj:                                            ; preds = %.loopexit2640.us, %.lr.ph2997.split.us
  %.sroa.01752.02996.us = phi ptr [ %.sroa.0162.sroa.0.0.copyload, %.lr.ph2997.split.us ], [ %i.doq, %.loopexit2640.us ] ; 3 uses
  %.sroa.51753.02995.us = phi i64 [ %.sroa.0162.sroa.2.0.copyload, %.lr.ph2997.split.us ], [ %i.dop, %.loopexit2640.us ]
  %.sroa.101757.02994.us = phi i64 [ 0, %.lr.ph2997.split.us ], [ %i.dpb, %.loopexit2640.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01752.02996.us) ]
  %i.dop = add i64 %.sroa.51753.02995.us, -1, !dbg !72850 ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes10UInt32TypeEBb_:bb.a
  %lcmp.mod4327.not = icmp eq i64 %xtraiter4326, 0, !dbg !79722
  br i1 %lcmp.mod4327.not, label %.lr.ph.us3068.prol.loopexit, label %.lr.ph.us3068.prol, !dbg !79722

.lr.ph.us3068.prol:                               ; preds = %.lr.ph.us3068.preheader, %.lr.ph.us3068.prol
  %.sroa.0425.03063.us.prol = phi i64 [ %i.czv, %.lr.ph.us3068.prol ], [ %.sroa.5.0.ph.i1313.us, %.lr.ph.us3068.preheader ] ; 4 uses
  %prol.iter4328 = phi i64 [ %prol.iter4328.next, %.lr.ph.us3068.prol ], [ 0, %.lr.ph.us3068.preheader ]
  %i.czp = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79723, !noundef !3448
  %i.czq = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79724, !noundef !3448
  %i.czr = icmp ult i64 %.sroa.0425.03063.us.prol, %i.czq, !dbg !79725
  call void @llvm.assume(i1 %i.czr), !dbg !79726
  %i.czs = getelementptr inbounds nuw [4 x i8], ptr %i.czp, i64 %.sroa.0425.03063.us.prol, !dbg !79727
  %i.czt = load i32, ptr %i.czs, align 4, !dbg !79728, !noundef !3448
  %i.czu = mul i32 %i.czt, %i.czm, !dbg !79729
  %i.czv = add nuw i64 %.sroa.0425.03063.us.prol, 1, !dbg !79730 ; 2 uses
  %i.czw = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0425.03063.us.prol, !dbg !79731
  store i32 %i.czu, ptr %i.czw, align 4, !dbg !79732
  %prol.iter4328.next = add i64 %prol.iter4328, 1, !dbg !79722 ; 2 uses
  %prol.iter4328.cmp.not = icmp eq i64 %prol.iter4328.next, %xtraiter4326, !dbg !79722
  br i1 %prol.iter4328.cmp.not, label %.lr.ph.us3068.prol.loopexit, label %.lr.ph.us3068.prol, !dbg !79722, !llvm.loop !74974

.lr.ph.us3068.prol.loopexit:                      ; preds = %.lr.ph.us3068.prol, %.lr.ph.us3068.preheader
  %.sroa.0425.03063.us.unr = phi i64 [ %.sroa.5.0.ph.i1313.us, %.lr.ph.us3068.preheader ], [ %i.czv, %.lr.ph.us3068.prol ]
  %i.czx = sub i64 %.sroa.5.0.ph.i1313.us, %.sroa.7.0.ph.i1312.us, !dbg !79722
  %i.czy = icmp ugt i64 %i.czx, -4, !dbg !79722
  br i1 %i.czy, label %.loopexit2625.us, label %.lr.ph.us3068, !dbg !79722

.lr.ph.us3068:                                    ; preds = %.lr.ph.us3068.prol.loopexit, %.lr.ph.us3068
  %.sroa.0425.03063.us = phi i64 [ %i.dbd, %.lr.ph.us3068 ], [ %.sroa.0425.03063.us.unr, %.lr.ph.us3068.prol.loopexit ] ; 7 uses
  %i.czz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79723, !noundef !3448
  %i.daa = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79724, !noundef !3448
  %i.dab = icmp ult i64 %.sroa.0425.03063.us, %i.daa, !dbg !79725
  call void @llvm.assume(i1 %i.dab), !dbg !79726
  %i.dac = getelementptr inbounds nuw [4 x i8], ptr %i.czz, i64 %.sroa.0425.03063.us, !dbg !79727
  %i.dad = load i32, ptr %i.dac, align 4, !dbg !79728, !noundef !3448
  %i.dae = mul i32 %i.dad, %i.czm, !dbg !79729
  %i.daf = add nuw i64 %.sroa.0425.03063.us, 1, !dbg !79730 ; 3 uses
  %i.dag = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0425.03063.us, !dbg !79731
  store i32 %i.dae, ptr %i.dag, align 4, !dbg !79732
  %i.dah = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79723, !noundef !3448
  %i.dai = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79724, !noundef !3448
  %i.daj = icmp ult i64 %i.daf, %i.dai, !dbg !79725
  call void @llvm.assume(i1 %i.daj), !dbg !79726
  %i.dak = getelementptr inbounds nuw [4 x i8], ptr %i.dah, i64 %i.daf, !dbg !79727
  %i.dal = load i32, ptr %i.dak, align 4, !dbg !79728, !noundef !3448
  %i.dam = mul i32 %i.dal, %i.czm, !dbg !79729
  %i.dan = add nuw i64 %.sroa.0425.03063.us, 2, !dbg !79730 ; 3 uses
  %i.dao = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.daf, !dbg !79731
  store i32 %i.dam, ptr %i.dao, align 4, !dbg !79732
  %i.dap = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79723, !noundef !3448
  %i.daq = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79724, !noundef !3448
  %i.dar = icmp ult i64 %i.dan, %i.daq, !dbg !79725
  call void @llvm.assume(i1 %i.dar), !dbg !79726
  %i.das = getelementptr inbounds nuw [4 x i8], ptr %i.dap, i64 %i.dan, !dbg !79727
  %i.dat = load i32, ptr %i.das, align 4, !dbg !79728, !noundef !3448
  %i.dau = mul i32 %i.dat, %i.czm, !dbg !79729
  %i.dav = add nuw i64 %.sroa.0425.03063.us, 3, !dbg !79730 ; 3 uses
  %i.daw = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dan, !dbg !79731
  store i32 %i.dau, ptr %i.daw, align 4, !dbg !79732
  %i.dax = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79723, !noundef !3448
  %i.day = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79724, !noundef !3448
  %i.daz = icmp ult i64 %i.dav, %i.day, !dbg !79725
  call void @llvm.assume(i1 %i.daz), !dbg !79726
  %i.dba = getelementptr inbounds nuw [4 x i8], ptr %i.dax, i64 %i.dav, !dbg !79727
  %i.dbb = load i32, ptr %i.dba, align 4, !dbg !79728, !noundef !3448
  %i.dbc = mul i32 %i.dbb, %i.czm, !dbg !79729
  %i.dbd = add nuw i64 %.sroa.0425.03063.us, 4, !dbg !79730 ; 2 uses
  %i.dbe = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dav, !dbg !79731
  store i32 %i.dbc, ptr %i.dbe, align 4, !dbg !79732
  %exitcond3456.not.3 = icmp eq i64 %i.dbd, %.sroa.7.0.ph.i1312.us, !dbg !79721
  br i1 %exitcond3456.not.3, label %.loopexit2625.us, label %.lr.ph.us3068, !dbg !79722

.loopexit2625.us:                                 ; preds = %.lr.ph.us3068.prol.loopexit, %.lr.ph.us3068, %.loopexit2626.us
  %i.dbf = icmp ult i64 %i.cyv, 2, !dbg !79701
  br i1 %i.dbf, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.nz, !dbg !79701

.lr.ph3067.split:                                 ; preds = %.lr.ph3067
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0142.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77226), !dbg !79704
  br label %.lr.ph2997.split.invoke, !dbg !79733

bb.oc:                                            ; preds = %bb.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !77508
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.oe unwind label %bb.qu, !dbg !77508

bb.od:                                            ; preds = %bb.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !77508
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.oi unwind label %bb.qu, !dbg !77508

bb.oe:                                            ; preds = %bb.oc
  %.sroa.0150.sroa.0.0.copyload = load ptr, ptr %i.cs, align 8, !dbg !79734 ; 2 uses
  %.sroa.0150.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !79734
  %.sroa.0150.sroa.2.0.copyload = load i64, ptr %.sroa.0150.sroa.2.0..sroa_idx, align 8, !dbg !79734 ; 2 uses
  %.sroa.0150.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !79734
  %.sroa.0150.sroa.3.0.copyload = load i64, ptr %.sroa.0150.sroa.3.0..sroa_idx, align 8, !dbg !79734 ; 2 uses
  %.sroa.0150.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24, !dbg !79734
  %.sroa.0150.sroa.4.0.copyload = load ptr, ptr %.sroa.0150.sroa.4.0..sroa_idx, align 8, !dbg !79734 ; 3 uses
  %.sroa.0150.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32, !dbg !79734
  %.sroa.0150.sroa.5.0.copyload = load i64, ptr %.sroa.0150.sroa.5.0..sroa_idx, align 8, !dbg !79734 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !79590
  %i.dbg = icmp ugt i64 %.sroa.0150.sroa.3.0.copyload, %.sroa.0150.sroa.2.0.copyload, !dbg !79735
  br i1 %i.dbg, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph3038, !dbg !79735

.lr.ph3038:                                       ; preds = %bb.oe
  %i.dbh = icmp eq i64 %.sroa.0150.sroa.3.0.copyload, 2
  %.idx.i.i.i1323 = mul nuw nsw i64 %.sroa.0150.sroa.5.0.copyload, 24
  %i.dbi = getelementptr inbounds nuw i8, ptr %.sroa.0150.sroa.4.0.copyload, i64 %.idx.i.i.i1323
  %i.dbj = icmp eq i64 %.sroa.0150.sroa.5.0.copyload, 0
  br i1 %i.dbh, label %.lr.ph3038.split.us, label %.lr.ph3038.split, !prof !3552

.lr.ph3038.split.us:                              ; preds = %.lr.ph3038
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.sroa.4.0.copyload) ]
  %scevgep4126 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !79735
  br label %bb.of, !dbg !79735

bb.of:                                            ; preds = %.loopexit2631.us, %.lr.ph3038.split.us
  %.sroa.01722.03037.us = phi ptr [ %.sroa.0150.sroa.0.0.copyload, %.lr.ph3038.split.us ], [ %i.dbl, %.loopexit2631.us ] ; 3 uses
  %.sroa.51723.03036.us = phi i64 [ %.sroa.0150.sroa.2.0.copyload, %.lr.ph3038.split.us ], [ %i.dbk, %.loopexit2631.us ]
  %.sroa.101727.03035.us = phi i64 [ 0, %.lr.ph3038.split.us ], [ %i.dbw, %.loopexit2631.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01722.03037.us) ]
  %i.dbk = add i64 %.sroa.51723.03036.us, -1, !dbg !79736 ; 2 uses
  %i.dbl = getelementptr inbounds nuw i8, ptr %.sroa.01722.03037.us, i64 8, !dbg !79737 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77266), !dbg !79738
  %.sroa.02.06.i.i.i1324.us = load i64, ptr %.sroa.01722.03037.us, align 8, !dbg !79739, !alias.scope !77266, !noalias !77267, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1325.us = load i64, ptr %i.dbl, align 8, !dbg !79740, !alias.scope !77266, !noalias !77267, !noundef !3448 ; 2 uses
  br i1 %i.dbj, label %.loopexit2632.us, label %.lr.ph.i.i.i1326.us, !dbg !79741

.lr.ph.i.i.i1326.us:                              ; preds = %bb.of, %bb.oh
  %.sroa.06.010.i.i.i1327.us = phi i64 [ %.sroa.06.0.i.i.i1331.us, %bb.oh ], [ %.sroa.06.07.i.i.i1325.us, %bb.of ] ; 3 uses
  %.sroa.02.09.i.i.i1328.us = phi i64 [ %.sroa.02.0.i.i.i1330.us, %bb.oh ], [ %.sroa.02.06.i.i.i1324.us, %bb.of ] ; 3 uses
  %.sroa.0.08.i.i.i1329.us = phi ptr [ %i.dbm, %bb.oh ], [ %.sroa.0150.sroa.4.0.copyload, %bb.of ] ; 3 uses
  %i.dbm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1329.us, i64 24, !dbg !79742 ; 2 uses
  %i.dbn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1329.us, i64 8, !dbg !79743
  %i.dbo = load ptr, ptr %i.dbn, align 8, !dbg !79743, !noalias !77268, !noundef !3448 ; 2 uses
  %i.dbp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1329.us, i64 16, !dbg !79744
  %i.dbq = load i64, ptr %i.dbp, align 8, !dbg !79744, !noalias !77268, !noundef !3448 ; 4 uses
  %i.dbr = icmp ult i64 %.sroa.02.09.i.i.i1328.us, %i.dbq, !dbg !79745
  br i1 %i.dbr, label %bb.og, label %.split3002.us.invoke, !dbg !79745

bb.og:                                            ; preds = %.lr.ph.i.i.i1326.us
  %i.dbs = icmp ult i64 %.sroa.06.010.i.i.i1327.us, %i.dbq, !dbg !79746
  br i1 %i.dbs, label %bb.oh, label %.split3002.us.invoke, !dbg !79746

bb.oh:                                            ; preds = %bb.og
  %i.dbt = getelementptr inbounds nuw [8 x i8], ptr %i.dbo, i64 %.sroa.02.09.i.i.i1328.us, !dbg !79745
  %i.dbu = getelementptr inbounds nuw [8 x i8], ptr %i.dbo, i64 %.sroa.06.010.i.i.i1327.us, !dbg !79746
  %.sroa.02.0.i.i.i1330.us = load i64, ptr %i.dbt, align 8, !dbg !79739, !noalias !77268, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1331.us = load i64, ptr %i.dbu, align 8, !dbg !79740, !noalias !77268, !noundef !3448 ; 2 uses
  %i.dbv = icmp eq ptr %i.dbm, %i.dbi, !dbg !79747
  br i1 %i.dbv, label %.loopexit2632.us, label %.lr.ph.i.i.i1326.us, !dbg !79741

.loopexit2632.us:                                 ; preds = %bb.oh, %bb.of
  %.sroa.7.0.ph.i1333.us = phi i64 [ %.sroa.06.07.i.i.i1325.us, %bb.of ], [ %.sroa.06.0.i.i.i1331.us, %bb.oh ] ; 9 uses
  %.sroa.5.0.ph.i1334.us = phi i64 [ %.sroa.02.06.i.i.i1324.us, %bb.of ], [ %.sroa.02.0.i.i.i1330.us, %bb.oh ] ; 14 uses
  %i.dbw = add nuw i64 %.sroa.101727.03035.us, 1, !dbg !79748
  %i.dbx = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !79749, !noundef !3448
  %i.dby = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !79750, !noundef !3448
  %i.dbz = icmp ult i64 %.sroa.101727.03035.us, %i.dby, !dbg !79751
  call void @llvm.assume(i1 %i.dbz), !dbg !79752
  %i.dca = getelementptr inbounds nuw [4 x i8], ptr %i.dbx, i64 %.sroa.101727.03035.us, !dbg !79753
  %i.dcb = load i32, ptr %i.dca, align 4, !dbg !79754, !noundef !3448 ; 4 uses
  %i.dcc = icmp ult i64 %.sroa.5.0.ph.i1334.us, %.sroa.7.0.ph.i1333.us, !dbg !79755
  br i1 %i.dcc, label %.lr.ph.us3039, label %.loopexit2631.us, !dbg !79756

.lr.ph.us3039:                                    ; preds = %.loopexit2632.us
  %i.dcd = icmp eq i32 %i.dcb, 0
  br i1 %i.dcd, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.preheader

_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.preheader: ; preds = %.lr.ph.us3039
  %i.dce = sub i64 %.sroa.7.0.ph.i1333.us, %.sroa.5.0.ph.i1334.us, !dbg !79756
  %.neg4379 = add i64 %.sroa.5.0.ph.i1334.us, 1, !dbg !79756
  %xtraiter4317 = and i64 %i.dce, 1, !dbg !79756
  %lcmp.mod4318.not = icmp eq i64 %xtraiter4317, 0, !dbg !79756
  br i1 %lcmp.mod4318.not, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol, !dbg !79756

_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol: ; preds = %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.preheader
  %i.dcf = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.dcg = icmp ult i64 %.sroa.5.0.ph.i1334.us, %i.dcf, !dbg !79758
  call void @llvm.assume(i1 %i.dcg), !dbg !79759
  %i.dch = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79760, !noundef !3448
  %i.dci = getelementptr inbounds nuw [4 x i8], ptr %i.dch, i64 %.sroa.5.0.ph.i1334.us, !dbg !79761
  %i.dcj = load i32, ptr %i.dci, align 4, !dbg !79762, !noundef !3448
  %i.dck = udiv i32 %i.dcj, %i.dcb, !dbg !79763
  %i.dcl = add nuw i64 %.sroa.5.0.ph.i1334.us, 1, !dbg !79764
  %i.dcm = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.5.0.ph.i1334.us, !dbg !79765
  store i32 %i.dck, ptr %i.dcm, align 4, !dbg !79766
  br label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit, !dbg !79756

_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit: ; preds = %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.preheader
  %.sroa.0429.03034.us3042.unr = phi i64 [ %.sroa.5.0.ph.i1334.us, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.preheader ], [ %i.dcl, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol ]
  %i.dcn = icmp eq i64 %.sroa.7.0.ph.i1333.us, %.neg4379, !dbg !79756
  br i1 %i.dcn, label %.loopexit2631.us, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041, !dbg !79756

_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader: ; preds = %.lr.ph.us3039
  %i.dco = sub i64 %.sroa.7.0.ph.i1333.us, %.sroa.5.0.ph.i1334.us, !dbg !79756 ; 3 uses
  %min.iters.check4131 = icmp ult i64 %i.dco, 8, !dbg !79756
  br i1 %min.iters.check4131, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader4192, label %vector.memcheck4123, !dbg !79756

vector.memcheck4123:                              ; preds = %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader
  %i.dcp = shl nuw i64 %.sroa.5.0.ph.i1334.us, 2, !dbg !79756
  %scevgep4124 = getelementptr i8, ptr %i.cqd, i64 %i.dcp, !dbg !79756
  %i.dcq = shl i64 %.sroa.7.0.ph.i1333.us, 2, !dbg !79756
  %scevgep4125 = getelementptr i8, ptr %i.cqd, i64 %i.dcq, !dbg !79756
  %bound04127 = icmp ult ptr %scevgep4124, %scevgep4126, !dbg !79756
  %bound14128 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4125, !dbg !79756
  %found.conflict4129 = and i1 %bound04127, %bound14128, !dbg !79756
  br i1 %found.conflict4129, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader4192, label %vector.ph4132

vector.ph4132:                                    ; preds = %vector.memcheck4123
  %n.vec4133 = and i64 %i.dco, -8                 ; 3 uses
  %i.dcr = add i64 %.sroa.5.0.ph.i1334.us, %n.vec4133
  %i.dcs = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.5.0.ph.i1334.us
  br label %vector.body4137

vector.body4137:                                  ; preds = %vector.body4137, %vector.ph4132
  %index4138 = phi i64 [ 0, %vector.ph4132 ], [ %index.next4143, %vector.body4137 ] ; 2 uses
  %i.dct = getelementptr inbounds nuw [4 x i8], ptr %i.dcs, i64 %index4138, !dbg !79765 ; 2 uses
  %i.dcu = getelementptr inbounds nuw i8, ptr %i.dct, i64 16, !dbg !79766
  store <4 x i32> zeroinitializer, ptr %i.dct, align 4, !dbg !79766, !alias.scope !77302, !noalias !77303
  store <4 x i32> zeroinitializer, ptr %i.dcu, align 4, !dbg !79766, !alias.scope !77302, !noalias !77303
  %index.next4143 = add nuw i64 %index4138, 8     ; 2 uses
  %i.dcv = icmp eq i64 %index.next4143, %n.vec4133, !dbg !79756
  br i1 %i.dcv, label %middle.block4145, label %vector.body4137, !dbg !79756, !llvm.loop !75010

middle.block4145:                                 ; preds = %vector.body4137
  %cmp.n4146 = icmp eq i64 %i.dco, %n.vec4133, !dbg !79756
  br i1 %cmp.n4146, label %.loopexit2631.us, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader4192, !dbg !79756

_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader4192: ; preds = %vector.memcheck4123, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader, %middle.block4145
  %.sroa.0429.03034.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1334.us, %vector.memcheck4123 ], [ %.sroa.5.0.ph.i1334.us, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader ], [ %i.dcr, %middle.block4145 ] ; 4 uses
  %i.dcw = sub i64 %.sroa.7.0.ph.i1333.us, %.sroa.0429.03034.us.us.ph, !dbg !79756
  %xtraiter4320 = and i64 %i.dcw, 7, !dbg !79756  ; 2 uses
  %lcmp.mod4321.not = icmp eq i64 %xtraiter4320, 0, !dbg !79756
  br i1 %lcmp.mod4321.not, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol, !dbg !79756

_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol: ; preds = %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader4192, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol
  %.sroa.0429.03034.us.us.prol = phi i64 [ %i.dcz, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol ], [ %.sroa.0429.03034.us.us.ph, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader4192 ] ; 3 uses
  %prol.iter4322 = phi i64 [ %prol.iter4322.next, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol ], [ 0, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader4192 ]
  %i.dcx = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.dcy = icmp ult i64 %.sroa.0429.03034.us.us.prol, %i.dcx, !dbg !79758
  call void @llvm.assume(i1 %i.dcy), !dbg !79759
  %i.dcz = add nuw i64 %.sroa.0429.03034.us.us.prol, 1, !dbg !79764 ; 2 uses
  %i.dda = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0429.03034.us.us.prol, !dbg !79765
  store i32 0, ptr %i.dda, align 4, !dbg !79766
  %prol.iter4322.next = add i64 %prol.iter4322, 1, !dbg !79756 ; 2 uses
  %prol.iter4322.cmp.not = icmp eq i64 %prol.iter4322.next, %xtraiter4320, !dbg !79756
  br i1 %prol.iter4322.cmp.not, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol, !dbg !79756, !llvm.loop !75011

_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit: ; preds = %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader4192
  %.sroa.0429.03034.us.us.unr = phi i64 [ %.sroa.0429.03034.us.us.ph, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.preheader4192 ], [ %i.dcz, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol ]
  %i.ddb = sub i64 %.sroa.0429.03034.us.us.ph, %.sroa.7.0.ph.i1333.us, !dbg !79756
  %i.ddc = icmp ugt i64 %i.ddb, -8, !dbg !79756
  br i1 %i.ddc, label %.loopexit2631.us, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us, !dbg !79756

_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041: ; preds = %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041
  %.sroa.0429.03034.us3042 = phi i64 [ %i.ddr, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041 ], [ %.sroa.0429.03034.us3042.unr, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit ] ; 5 uses
  %i.ddd = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.dde = icmp ult i64 %.sroa.0429.03034.us3042, %i.ddd, !dbg !79758
  call void @llvm.assume(i1 %i.dde), !dbg !79759
  %i.ddf = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79760, !noundef !3448
  %i.ddg = getelementptr inbounds nuw [4 x i8], ptr %i.ddf, i64 %.sroa.0429.03034.us3042, !dbg !79761
  %i.ddh = load i32, ptr %i.ddg, align 4, !dbg !79762, !noundef !3448
  %i.ddi = udiv i32 %i.ddh, %i.dcb, !dbg !79763
  %i.ddj = add nuw i64 %.sroa.0429.03034.us3042, 1, !dbg !79764 ; 3 uses
  %i.ddk = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0429.03034.us3042, !dbg !79765
  store i32 %i.ddi, ptr %i.ddk, align 4, !dbg !79766
  %i.ddl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.ddm = icmp ult i64 %i.ddj, %i.ddl, !dbg !79758
  call void @llvm.assume(i1 %i.ddm), !dbg !79759
  %i.ddn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79760, !noundef !3448
  %i.ddo = getelementptr inbounds nuw [4 x i8], ptr %i.ddn, i64 %i.ddj, !dbg !79761
  %i.ddp = load i32, ptr %i.ddo, align 4, !dbg !79762, !noundef !3448
  %i.ddq = udiv i32 %i.ddp, %i.dcb, !dbg !79763
  %i.ddr = add nuw i64 %.sroa.0429.03034.us3042, 2, !dbg !79764 ; 2 uses
  %i.dds = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.ddj, !dbg !79765
  store i32 %i.ddq, ptr %i.dds, align 4, !dbg !79766
  %exitcond3452.not.1 = icmp eq i64 %i.ddr, %.sroa.7.0.ph.i1333.us, !dbg !79755
  br i1 %exitcond3452.not.1, label %.loopexit2631.us, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041, !dbg !79756

_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us: ; preds = %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us
  %.sroa.0429.03034.us.us = phi i64 [ %i.dex, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us ], [ %.sroa.0429.03034.us.us.unr, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit ] ; 10 uses
  %i.ddt = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.ddu = icmp ult i64 %.sroa.0429.03034.us.us, %i.ddt, !dbg !79758
  call void @llvm.assume(i1 %i.ddu), !dbg !79759
  %i.ddv = add nuw i64 %.sroa.0429.03034.us.us, 1, !dbg !79764 ; 2 uses
  %i.ddw = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0429.03034.us.us, !dbg !79765
  store i32 0, ptr %i.ddw, align 4, !dbg !79766
  %i.ddx = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.ddy = icmp ult i64 %i.ddv, %i.ddx, !dbg !79758
  call void @llvm.assume(i1 %i.ddy), !dbg !79759
  %i.ddz = add nuw i64 %.sroa.0429.03034.us.us, 2, !dbg !79764 ; 2 uses
  %i.dea = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.ddv, !dbg !79765
  store i32 0, ptr %i.dea, align 4, !dbg !79766
  %i.deb = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.dec = icmp ult i64 %i.ddz, %i.deb, !dbg !79758
  call void @llvm.assume(i1 %i.dec), !dbg !79759
  %i.ded = add nuw i64 %.sroa.0429.03034.us.us, 3, !dbg !79764 ; 2 uses
  %i.dee = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.ddz, !dbg !79765
  store i32 0, ptr %i.dee, align 4, !dbg !79766
  %i.def = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.deg = icmp ult i64 %i.ded, %i.def, !dbg !79758
  call void @llvm.assume(i1 %i.deg), !dbg !79759
  %i.deh = add nuw i64 %.sroa.0429.03034.us.us, 4, !dbg !79764 ; 2 uses
  %i.dei = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.ded, !dbg !79765
  store i32 0, ptr %i.dei, align 4, !dbg !79766
  %i.dej = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.dek = icmp ult i64 %i.deh, %i.dej, !dbg !79758
  call void @llvm.assume(i1 %i.dek), !dbg !79759
  %i.del = add nuw i64 %.sroa.0429.03034.us.us, 5, !dbg !79764 ; 2 uses
  %i.dem = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.deh, !dbg !79765
  store i32 0, ptr %i.dem, align 4, !dbg !79766
  %i.den = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.deo = icmp ult i64 %i.del, %i.den, !dbg !79758
  call void @llvm.assume(i1 %i.deo), !dbg !79759
  %i.dep = add nuw i64 %.sroa.0429.03034.us.us, 6, !dbg !79764 ; 2 uses
  %i.deq = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.del, !dbg !79765
  store i32 0, ptr %i.deq, align 4, !dbg !79766
  %i.der = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.des = icmp ult i64 %i.dep, %i.der, !dbg !79758
  call void @llvm.assume(i1 %i.des), !dbg !79759
  %i.det = add nuw i64 %.sroa.0429.03034.us.us, 7, !dbg !79764 ; 2 uses
  %i.deu = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dep, !dbg !79765
  store i32 0, ptr %i.deu, align 4, !dbg !79766
  %i.dev = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79757, !noundef !3448
  %i.dew = icmp ult i64 %i.det, %i.dev, !dbg !79758
  call void @llvm.assume(i1 %i.dew), !dbg !79759
  %i.dex = add nuw i64 %.sroa.0429.03034.us.us, 8, !dbg !79764 ; 2 uses
  %i.dey = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.det, !dbg !79765
  store i32 0, ptr %i.dey, align 4, !dbg !79766
  %exitcond3454.not.7 = icmp eq i64 %i.dex, %.sroa.7.0.ph.i1333.us, !dbg !79755
  br i1 %exitcond3454.not.7, label %.loopexit2631.us, label %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us, !dbg !79756, !llvm.loop !75012

.loopexit2631.us:                                 ; preds = %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041.prol.loopexit, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us3041, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us.prol.loopexit, %_RNvYmNtNtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_num15PlNumArithmetic10legacy_divCs1LHh8CLbVkQ_11polars_core.exit.us.us, %middle.block4145, %.loopexit2632.us
  %i.dez = icmp ult i64 %i.dbk, 2, !dbg !79735
  br i1 %i.dez, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.of, !dbg !79735

.lr.ph3038.split:                                 ; preds = %.lr.ph3038
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77266), !dbg !79738
  br label %.lr.ph2997.split.invoke, !dbg !79767

bb.oi:                                            ; preds = %bb.od
  %.sroa.0146.sroa.0.0.copyload = load ptr, ptr %i.ct, align 8, !dbg !79768 ; 2 uses
  %.sroa.0146.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !79768
  %.sroa.0146.sroa.2.0.copyload = load i64, ptr %.sroa.0146.sroa.2.0..sroa_idx, align 8, !dbg !79768 ; 2 uses
  %.sroa.0146.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16, !dbg !79768
  %.sroa.0146.sroa.3.0.copyload = load i64, ptr %.sroa.0146.sroa.3.0..sroa_idx, align 8, !dbg !79768 ; 2 uses
  %.sroa.0146.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24, !dbg !79768
  %.sroa.0146.sroa.4.0.copyload = load ptr, ptr %.sroa.0146.sroa.4.0..sroa_idx, align 8, !dbg !79768 ; 3 uses
  %.sroa.0146.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 32, !dbg !79768
  %.sroa.0146.sroa.5.0.copyload = load i64, ptr %.sroa.0146.sroa.5.0..sroa_idx, align 8, !dbg !79768 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !79590
  %i.dfa = icmp ugt i64 %.sroa.0146.sroa.3.0.copyload, %.sroa.0146.sroa.2.0.copyload, !dbg !79769
  br i1 %i.dfa, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph3055, !dbg !79769

.lr.ph3055:                                       ; preds = %bb.oi
  %i.dfb = icmp eq i64 %.sroa.0146.sroa.3.0.copyload, 2
  %.idx.i.i.i1344 = mul nuw nsw i64 %.sroa.0146.sroa.5.0.copyload, 24
  %i.dfc = getelementptr inbounds nuw i8, ptr %.sroa.0146.sroa.4.0.copyload, i64 %.idx.i.i.i1344
  %i.dfd = icmp eq i64 %.sroa.0146.sroa.5.0.copyload, 0
  br i1 %i.dfb, label %.lr.ph3055.split.us, label %.lr.ph3055.split, !prof !3552

.lr.ph3055.split.us:                              ; preds = %.lr.ph3055
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0146.sroa.4.0.copyload) ]
  br label %bb.oj, !dbg !79769

bb.oj:                                            ; preds = %.loopexit2628.us, %.lr.ph3055.split.us
  %.sroa.01712.03054.us = phi ptr [ %.sroa.0146.sroa.0.0.copyload, %.lr.ph3055.split.us ], [ %i.dff, %.loopexit2628.us ] ; 3 uses
  %.sroa.51713.03053.us = phi i64 [ %.sroa.0146.sroa.2.0.copyload, %.lr.ph3055.split.us ], [ %i.dfe, %.loopexit2628.us ]
  %.sroa.101717.03052.us = phi i64 [ 0, %.lr.ph3055.split.us ], [ %i.dfq, %.loopexit2628.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01712.03054.us) ]
  %i.dfe = add i64 %.sroa.51713.03053.us, -1, !dbg !79770 ; 2 uses
  %i.dff = getelementptr inbounds nuw i8, ptr %.sroa.01712.03054.us, i64 8, !dbg !79771 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77308), !dbg !79772
  %.sroa.02.06.i.i.i1345.us = load i64, ptr %.sroa.01712.03054.us, align 8, !dbg !79773, !alias.scope !77308, !noalias !77309, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1346.us = load i64, ptr %i.dff, align 8, !dbg !79774, !alias.scope !77308, !noalias !77309, !noundef !3448 ; 2 uses
  br i1 %i.dfd, label %.loopexit2629.us, label %.lr.ph.i.i.i1347.us, !dbg !79775

.lr.ph.i.i.i1347.us:                              ; preds = %bb.oj, %bb.ol
  %.sroa.06.010.i.i.i1348.us = phi i64 [ %.sroa.06.0.i.i.i1352.us, %bb.ol ], [ %.sroa.06.07.i.i.i1346.us, %bb.oj ] ; 3 uses
  %.sroa.02.09.i.i.i1349.us = phi i64 [ %.sroa.02.0.i.i.i1351.us, %bb.ol ], [ %.sroa.02.06.i.i.i1345.us, %bb.oj ] ; 3 uses
  %.sroa.0.08.i.i.i1350.us = phi ptr [ %i.dfg, %bb.ol ], [ %.sroa.0146.sroa.4.0.copyload, %bb.oj ] ; 3 uses
  %i.dfg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1350.us, i64 24, !dbg !79776 ; 2 uses
  %i.dfh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1350.us, i64 8, !dbg !79777
  %i.dfi = load ptr, ptr %i.dfh, align 8, !dbg !79777, !noalias !77310, !noundef !3448 ; 2 uses
  %i.dfj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1350.us, i64 16, !dbg !79778
  %i.dfk = load i64, ptr %i.dfj, align 8, !dbg !79778, !noalias !77310, !noundef !3448 ; 4 uses
  %i.dfl = icmp ult i64 %.sroa.02.09.i.i.i1349.us, %i.dfk, !dbg !79779
  br i1 %i.dfl, label %bb.ok, label %.split3002.us.invoke, !dbg !79779

bb.ok:                                            ; preds = %.lr.ph.i.i.i1347.us
  %i.dfm = icmp ult i64 %.sroa.06.010.i.i.i1348.us, %i.dfk, !dbg !79780
  br i1 %i.dfm, label %bb.ol, label %.split3002.us.invoke, !dbg !79780

bb.ol:                                            ; preds = %bb.ok
  %i.dfn = getelementptr inbounds nuw [8 x i8], ptr %i.dfi, i64 %.sroa.02.09.i.i.i1349.us, !dbg !79779
  %i.dfo = getelementptr inbounds nuw [8 x i8], ptr %i.dfi, i64 %.sroa.06.010.i.i.i1348.us, !dbg !79780
  %.sroa.02.0.i.i.i1351.us = load i64, ptr %i.dfn, align 8, !dbg !79773, !noalias !77310, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1352.us = load i64, ptr %i.dfo, align 8, !dbg !79774, !noalias !77310, !noundef !3448 ; 2 uses
  %i.dfp = icmp eq ptr %i.dfg, %i.dfc, !dbg !79781
end_hunk_3
begin_hunk_4_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes10UInt32TypeEBb_:bb.a
  %xtraiter4323 = and i64 %i.dfx, 1, !dbg !79791
  %lcmp.mod4324.not = icmp eq i64 %xtraiter4323, 0, !dbg !79791
  br i1 %lcmp.mod4324.not, label %.lr.ph.us3056.prol.loopexit, label %.lr.ph.us3056.prol, !dbg !79791

.lr.ph.us3056.prol:                               ; preds = %.lr.ph.us3056.preheader
  %i.dfy = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79792, !noundef !3448
  %i.dfz = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79793, !noundef !3448
  %i.dga = icmp ult i64 %.sroa.5.0.ph.i1355.us, %i.dfz, !dbg !79794
  call void @llvm.assume(i1 %i.dga), !dbg !79795
  %i.dgb = getelementptr inbounds nuw [4 x i8], ptr %i.dfy, i64 %.sroa.5.0.ph.i1355.us, !dbg !79796
  %i.dgc = load i32, ptr %i.dgb, align 4, !dbg !79797, !noundef !3448 ; 2 uses
  %i.dgd = icmp eq i32 %i.dgc, 0, !dbg !79791
  br i1 %i.dgd, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.prol, label %bb.om, !dbg !79791

bb.om:                                            ; preds = %.lr.ph.us3056.prol
  %i.dge = udiv i32 %i.dfv, %i.dgc, !dbg !79798
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.prol, !dbg !79799

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.prol: ; preds = %bb.om, %.lr.ph.us3056.prol
  %.sroa.0.0.i.i.i1363.us.prol = phi i32 [ %i.dge, %bb.om ], [ 0, %.lr.ph.us3056.prol ], !dbg !79800
  %i.dgf = add nuw i64 %.sroa.5.0.ph.i1355.us, 1, !dbg !79801
  %i.dgg = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.5.0.ph.i1355.us, !dbg !79802
  store i32 %.sroa.0.0.i.i.i1363.us.prol, ptr %i.dgg, align 4, !dbg !79803
  br label %.lr.ph.us3056.prol.loopexit, !dbg !79791

.lr.ph.us3056.prol.loopexit:                      ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.prol, %.lr.ph.us3056.preheader
  %.sroa.0427.03051.us.unr = phi i64 [ %.sroa.5.0.ph.i1355.us, %.lr.ph.us3056.preheader ], [ %i.dgf, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.prol ]
  %i.dgh = icmp eq i64 %.sroa.7.0.ph.i1354.us, %.neg4380, !dbg !79791
  br i1 %i.dgh, label %.loopexit2628.us, label %.lr.ph.us3056, !dbg !79791

.lr.ph.us3056:                                    ; preds = %.lr.ph.us3056.prol.loopexit, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.1
  %.sroa.0427.03051.us = phi i64 [ %i.dgy, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.1 ], [ %.sroa.0427.03051.us.unr, %.lr.ph.us3056.prol.loopexit ] ; 5 uses
  %i.dgi = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79792, !noundef !3448
  %i.dgj = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79793, !noundef !3448
  %i.dgk = icmp ult i64 %.sroa.0427.03051.us, %i.dgj, !dbg !79794
  call void @llvm.assume(i1 %i.dgk), !dbg !79795
  %i.dgl = getelementptr inbounds nuw [4 x i8], ptr %i.dgi, i64 %.sroa.0427.03051.us, !dbg !79796
  %i.dgm = load i32, ptr %i.dgl, align 4, !dbg !79797, !noundef !3448 ; 2 uses
  %i.dgn = icmp eq i32 %i.dgm, 0, !dbg !79791
  br i1 %i.dgn, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us, label %bb.on, !dbg !79791

bb.on:                                            ; preds = %.lr.ph.us3056
  %i.dgo = udiv i32 %i.dfv, %i.dgm, !dbg !79798
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us, !dbg !79799

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us: ; preds = %bb.on, %.lr.ph.us3056
  %.sroa.0.0.i.i.i1363.us = phi i32 [ %i.dgo, %bb.on ], [ 0, %.lr.ph.us3056 ], !dbg !79800
  %i.dgp = add nuw i64 %.sroa.0427.03051.us, 1, !dbg !79801 ; 3 uses
  %i.dgq = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0427.03051.us, !dbg !79802
  store i32 %.sroa.0.0.i.i.i1363.us, ptr %i.dgq, align 4, !dbg !79803
  %i.dgr = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79792, !noundef !3448
  %i.dgs = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79793, !noundef !3448
  %i.dgt = icmp ult i64 %i.dgp, %i.dgs, !dbg !79794
  call void @llvm.assume(i1 %i.dgt), !dbg !79795
  %i.dgu = getelementptr inbounds nuw [4 x i8], ptr %i.dgr, i64 %i.dgp, !dbg !79796
  %i.dgv = load i32, ptr %i.dgu, align 4, !dbg !79797, !noundef !3448 ; 2 uses
  %i.dgw = icmp eq i32 %i.dgv, 0, !dbg !79791
  br i1 %i.dgw, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.1, label %bb.oo, !dbg !79791

bb.oo:                                            ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us
  %i.dgx = udiv i32 %i.dfv, %i.dgv, !dbg !79798
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.1, !dbg !79799

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.1: ; preds = %bb.oo, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us
  %.sroa.0.0.i.i.i1363.us.1 = phi i32 [ %i.dgx, %bb.oo ], [ 0, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us ], !dbg !79800
  %i.dgy = add nuw i64 %.sroa.0427.03051.us, 2, !dbg !79801 ; 2 uses
  %i.dgz = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dgp, !dbg !79802
  store i32 %.sroa.0.0.i.i.i1363.us.1, ptr %i.dgz, align 4, !dbg !79803
  %exitcond3455.not.1 = icmp eq i64 %i.dgy, %.sroa.7.0.ph.i1354.us, !dbg !79789
  br i1 %exitcond3455.not.1, label %.loopexit2628.us, label %.lr.ph.us3056, !dbg !79790

.loopexit2628.us:                                 ; preds = %.lr.ph.us3056.prol.loopexit, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs7_0Bd_.exit.us.1, %.loopexit2629.us
  %i.dha = icmp ult i64 %i.dfe, 2, !dbg !79769
  br i1 %i.dha, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.oj, !dbg !79769

.lr.ph3055.split:                                 ; preds = %.lr.ph3055
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0146.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77308), !dbg !79772
  br label %.lr.ph2997.split.invoke, !dbg !79804

bb.op:                                            ; preds = %bb.ni
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !77508
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.or unwind label %bb.qu, !dbg !77508

bb.oq:                                            ; preds = %bb.ni
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !77508
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.ov unwind label %bb.qu, !dbg !77508

bb.or:                                            ; preds = %bb.op
  %.sroa.0158.sroa.0.0.copyload = load ptr, ptr %i.cq, align 8, !dbg !79805 ; 2 uses
  %.sroa.0158.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !79805
  %.sroa.0158.sroa.2.0.copyload = load i64, ptr %.sroa.0158.sroa.2.0..sroa_idx, align 8, !dbg !79805 ; 2 uses
  %.sroa.0158.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16, !dbg !79805
  %.sroa.0158.sroa.3.0.copyload = load i64, ptr %.sroa.0158.sroa.3.0..sroa_idx, align 8, !dbg !79805 ; 2 uses
  %.sroa.0158.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24, !dbg !79805
  %.sroa.0158.sroa.4.0.copyload = load ptr, ptr %.sroa.0158.sroa.4.0..sroa_idx, align 8, !dbg !79805 ; 3 uses
  %.sroa.0158.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 32, !dbg !79805
  %.sroa.0158.sroa.5.0.copyload = load i64, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !dbg !79805 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !79590
  %i.dhb = icmp ugt i64 %.sroa.0158.sroa.3.0.copyload, %.sroa.0158.sroa.2.0.copyload, !dbg !79806
  br i1 %i.dhb, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph3009, !dbg !79806

.lr.ph3009:                                       ; preds = %bb.or
  %i.dhc = icmp eq i64 %.sroa.0158.sroa.3.0.copyload, 2
  %.idx.i.i.i1366 = mul nuw nsw i64 %.sroa.0158.sroa.5.0.copyload, 24
  %i.dhd = getelementptr inbounds nuw i8, ptr %.sroa.0158.sroa.4.0.copyload, i64 %.idx.i.i.i1366
  %i.dhe = icmp eq i64 %.sroa.0158.sroa.5.0.copyload, 0
  br i1 %i.dhc, label %.lr.ph3009.split.us, label %.lr.ph3009.split, !prof !3552

.lr.ph3009.split.us:                              ; preds = %.lr.ph3009
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0158.sroa.4.0.copyload) ]
  %scevgep4101 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !79806
  br label %bb.os, !dbg !79806

bb.os:                                            ; preds = %.loopexit2637.us, %.lr.ph3009.split.us
  %.sroa.01742.03008.us = phi ptr [ %.sroa.0158.sroa.0.0.copyload, %.lr.ph3009.split.us ], [ %i.dhg, %.loopexit2637.us ] ; 3 uses
  %.sroa.51743.03007.us = phi i64 [ %.sroa.0158.sroa.2.0.copyload, %.lr.ph3009.split.us ], [ %i.dhf, %.loopexit2637.us ]
  %.sroa.101747.03006.us = phi i64 [ 0, %.lr.ph3009.split.us ], [ %i.dhr, %.loopexit2637.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01742.03008.us) ]
  %i.dhf = add i64 %.sroa.51743.03007.us, -1, !dbg !79807 ; 2 uses
  %i.dhg = getelementptr inbounds nuw i8, ptr %.sroa.01742.03008.us, i64 8, !dbg !79808 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77348), !dbg !79809
  %.sroa.02.06.i.i.i1367.us = load i64, ptr %.sroa.01742.03008.us, align 8, !dbg !79810, !alias.scope !77348, !noalias !77349, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1368.us = load i64, ptr %i.dhg, align 8, !dbg !79811, !alias.scope !77348, !noalias !77349, !noundef !3448 ; 2 uses
  br i1 %i.dhe, label %.loopexit2638.us, label %.lr.ph.i.i.i1369.us, !dbg !79812

.lr.ph.i.i.i1369.us:                              ; preds = %bb.os, %bb.ou
  %.sroa.06.010.i.i.i1370.us = phi i64 [ %.sroa.06.0.i.i.i1374.us, %bb.ou ], [ %.sroa.06.07.i.i.i1368.us, %bb.os ] ; 3 uses
  %.sroa.02.09.i.i.i1371.us = phi i64 [ %.sroa.02.0.i.i.i1373.us, %bb.ou ], [ %.sroa.02.06.i.i.i1367.us, %bb.os ] ; 3 uses
  %.sroa.0.08.i.i.i1372.us = phi ptr [ %i.dhh, %bb.ou ], [ %.sroa.0158.sroa.4.0.copyload, %bb.os ] ; 3 uses
  %i.dhh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1372.us, i64 24, !dbg !79813 ; 2 uses
  %i.dhi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1372.us, i64 8, !dbg !79814
  %i.dhj = load ptr, ptr %i.dhi, align 8, !dbg !79814, !noalias !77350, !noundef !3448 ; 2 uses
  %i.dhk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1372.us, i64 16, !dbg !79815
  %i.dhl = load i64, ptr %i.dhk, align 8, !dbg !79815, !noalias !77350, !noundef !3448 ; 4 uses
  %i.dhm = icmp ult i64 %.sroa.02.09.i.i.i1371.us, %i.dhl, !dbg !79816
  br i1 %i.dhm, label %bb.ot, label %.split3002.us.invoke, !dbg !79816

bb.ot:                                            ; preds = %.lr.ph.i.i.i1369.us
  %i.dhn = icmp ult i64 %.sroa.06.010.i.i.i1370.us, %i.dhl, !dbg !79817
  br i1 %i.dhn, label %bb.ou, label %.split3002.us.invoke, !dbg !79817

bb.ou:                                            ; preds = %bb.ot
  %i.dho = getelementptr inbounds nuw [8 x i8], ptr %i.dhj, i64 %.sroa.02.09.i.i.i1371.us, !dbg !79816
  %i.dhp = getelementptr inbounds nuw [8 x i8], ptr %i.dhj, i64 %.sroa.06.010.i.i.i1370.us, !dbg !79817
  %.sroa.02.0.i.i.i1373.us = load i64, ptr %i.dho, align 8, !dbg !79810, !noalias !77350, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1374.us = load i64, ptr %i.dhp, align 8, !dbg !79811, !noalias !77350, !noundef !3448 ; 2 uses
  %i.dhq = icmp eq ptr %i.dhh, %i.dhd, !dbg !79818
  br i1 %i.dhq, label %.loopexit2638.us, label %.lr.ph.i.i.i1369.us, !dbg !79812

.loopexit2638.us:                                 ; preds = %bb.ou, %bb.os
  %.sroa.7.0.ph.i1376.us = phi i64 [ %.sroa.06.07.i.i.i1368.us, %bb.os ], [ %.sroa.06.0.i.i.i1374.us, %bb.ou ] ; 9 uses
  %.sroa.5.0.ph.i1377.us = phi i64 [ %.sroa.02.06.i.i.i1367.us, %bb.os ], [ %.sroa.02.0.i.i.i1373.us, %bb.ou ] ; 14 uses
  %i.dhr = add nuw i64 %.sroa.101747.03006.us, 1, !dbg !79819
  %i.dhs = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !79820, !noundef !3448
  %i.dht = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !79821, !noundef !3448
  %i.dhu = icmp ult i64 %.sroa.101747.03006.us, %i.dht, !dbg !79822
  call void @llvm.assume(i1 %i.dhu), !dbg !79823
  %i.dhv = getelementptr inbounds nuw [4 x i8], ptr %i.dhs, i64 %.sroa.101747.03006.us, !dbg !79824
  %i.dhw = load i32, ptr %i.dhv, align 4, !dbg !79825, !noundef !3448 ; 4 uses
  %i.dhx = icmp ult i64 %.sroa.5.0.ph.i1377.us, %.sroa.7.0.ph.i1376.us, !dbg !79826
  br i1 %i.dhx, label %.lr.ph.us3010, label %.loopexit2637.us, !dbg !79827

.lr.ph.us3010:                                    ; preds = %.loopexit2638.us
  %i.dhy = icmp eq i32 %i.dhw, 0
  br i1 %i.dhy, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.preheader

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.preheader: ; preds = %.lr.ph.us3010
  %i.dhz = sub i64 %.sroa.7.0.ph.i1376.us, %.sroa.5.0.ph.i1377.us, !dbg !79827
  %.neg4377 = add i64 %.sroa.5.0.ph.i1377.us, 1, !dbg !79827
  %xtraiter4308 = and i64 %i.dhz, 1, !dbg !79827
  %lcmp.mod4309.not = icmp eq i64 %xtraiter4308, 0, !dbg !79827
  br i1 %lcmp.mod4309.not, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol, !dbg !79827

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.preheader
  %i.dia = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.dib = icmp ult i64 %.sroa.5.0.ph.i1377.us, %i.dia, !dbg !79829
  call void @llvm.assume(i1 %i.dib), !dbg !79830
  %i.dic = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79831, !noundef !3448
  %i.did = getelementptr inbounds nuw [4 x i8], ptr %i.dic, i64 %.sroa.5.0.ph.i1377.us, !dbg !79832
  %i.die = load i32, ptr %i.did, align 4, !dbg !79833, !noundef !3448
  %i.dif = urem i32 %i.die, %i.dhw, !dbg !79834
  %i.dig = add nuw i64 %.sroa.5.0.ph.i1377.us, 1, !dbg !79835
  %i.dih = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.5.0.ph.i1377.us, !dbg !79836
  store i32 %i.dif, ptr %i.dih, align 4, !dbg !79837
  br label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit, !dbg !79827

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.preheader
  %.sroa.0433.03005.us3013.unr = phi i64 [ %.sroa.5.0.ph.i1377.us, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.preheader ], [ %i.dig, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol ]
  %i.dii = icmp eq i64 %.sroa.7.0.ph.i1376.us, %.neg4377, !dbg !79827
  br i1 %i.dii, label %.loopexit2637.us, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012, !dbg !79827

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader: ; preds = %.lr.ph.us3010
  %i.dij = sub i64 %.sroa.7.0.ph.i1376.us, %.sroa.5.0.ph.i1377.us, !dbg !79827 ; 3 uses
  %min.iters.check4106 = icmp ult i64 %i.dij, 8, !dbg !79827
  br i1 %min.iters.check4106, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader4206, label %vector.memcheck4098, !dbg !79827

vector.memcheck4098:                              ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader
  %i.dik = shl nuw i64 %.sroa.5.0.ph.i1377.us, 2, !dbg !79827
  %scevgep4099 = getelementptr i8, ptr %i.cqd, i64 %i.dik, !dbg !79827
  %i.dil = shl i64 %.sroa.7.0.ph.i1376.us, 2, !dbg !79827
  %scevgep4100 = getelementptr i8, ptr %i.cqd, i64 %i.dil, !dbg !79827
  %bound04102 = icmp ult ptr %scevgep4099, %scevgep4101, !dbg !79827
  %bound14103 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4100, !dbg !79827
  %found.conflict4104 = and i1 %bound04102, %bound14103, !dbg !79827
  br i1 %found.conflict4104, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader4206, label %vector.ph4107

vector.ph4107:                                    ; preds = %vector.memcheck4098
  %n.vec4108 = and i64 %i.dij, -8                 ; 3 uses
  %i.dim = add i64 %.sroa.5.0.ph.i1377.us, %n.vec4108
  %i.din = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.5.0.ph.i1377.us
  br label %vector.body4112

vector.body4112:                                  ; preds = %vector.body4112, %vector.ph4107
  %index4113 = phi i64 [ 0, %vector.ph4107 ], [ %index.next4118, %vector.body4112 ] ; 2 uses
  %i.dio = getelementptr inbounds nuw [4 x i8], ptr %i.din, i64 %index4113, !dbg !79836 ; 2 uses
  %i.dip = getelementptr inbounds nuw i8, ptr %i.dio, i64 16, !dbg !79837
  store <4 x i32> zeroinitializer, ptr %i.dio, align 4, !dbg !79837, !alias.scope !77384, !noalias !77385
  store <4 x i32> zeroinitializer, ptr %i.dip, align 4, !dbg !79837, !alias.scope !77384, !noalias !77385
  %index.next4118 = add nuw i64 %index4113, 8     ; 2 uses
  %i.diq = icmp eq i64 %index.next4118, %n.vec4108, !dbg !79827
  br i1 %i.diq, label %middle.block4120, label %vector.body4112, !dbg !79827, !llvm.loop !75081

middle.block4120:                                 ; preds = %vector.body4112
  %cmp.n4121 = icmp eq i64 %i.dij, %n.vec4108, !dbg !79827
  br i1 %cmp.n4121, label %.loopexit2637.us, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader4206, !dbg !79827

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader4206: ; preds = %vector.memcheck4098, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader, %middle.block4120
  %.sroa.0433.03005.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1377.us, %vector.memcheck4098 ], [ %.sroa.5.0.ph.i1377.us, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader ], [ %i.dim, %middle.block4120 ] ; 4 uses
  %i.dir = sub i64 %.sroa.7.0.ph.i1376.us, %.sroa.0433.03005.us.us.ph, !dbg !79827
  %xtraiter4311 = and i64 %i.dir, 7, !dbg !79827  ; 2 uses
  %lcmp.mod4312.not = icmp eq i64 %xtraiter4311, 0, !dbg !79827
  br i1 %lcmp.mod4312.not, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol, !dbg !79827

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader4206, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol
  %.sroa.0433.03005.us.us.prol = phi i64 [ %i.diu, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol ], [ %.sroa.0433.03005.us.us.ph, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader4206 ] ; 3 uses
  %prol.iter4313 = phi i64 [ %prol.iter4313.next, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol ], [ 0, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader4206 ]
  %i.dis = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.dit = icmp ult i64 %.sroa.0433.03005.us.us.prol, %i.dis, !dbg !79829
  call void @llvm.assume(i1 %i.dit), !dbg !79830
  %i.diu = add nuw i64 %.sroa.0433.03005.us.us.prol, 1, !dbg !79835 ; 2 uses
  %i.div = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0433.03005.us.us.prol, !dbg !79836
  store i32 0, ptr %i.div, align 4, !dbg !79837
  %prol.iter4313.next = add i64 %prol.iter4313, 1, !dbg !79827 ; 2 uses
  %prol.iter4313.cmp.not = icmp eq i64 %prol.iter4313.next, %xtraiter4311, !dbg !79827
  br i1 %prol.iter4313.cmp.not, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol, !dbg !79827, !llvm.loop !75082

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader4206
  %.sroa.0433.03005.us.us.unr = phi i64 [ %.sroa.0433.03005.us.us.ph, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.preheader4206 ], [ %i.diu, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol ]
  %i.diw = sub i64 %.sroa.0433.03005.us.us.ph, %.sroa.7.0.ph.i1376.us, !dbg !79827
  %i.dix = icmp ugt i64 %i.diw, -8, !dbg !79827
  br i1 %i.dix, label %.loopexit2637.us, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us, !dbg !79827

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012
  %.sroa.0433.03005.us3013 = phi i64 [ %i.djm, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012 ], [ %.sroa.0433.03005.us3013.unr, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit ] ; 5 uses
  %i.diy = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.diz = icmp ult i64 %.sroa.0433.03005.us3013, %i.diy, !dbg !79829
  call void @llvm.assume(i1 %i.diz), !dbg !79830
  %i.dja = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79831, !noundef !3448
  %i.djb = getelementptr inbounds nuw [4 x i8], ptr %i.dja, i64 %.sroa.0433.03005.us3013, !dbg !79832
  %i.djc = load i32, ptr %i.djb, align 4, !dbg !79833, !noundef !3448
  %i.djd = urem i32 %i.djc, %i.dhw, !dbg !79834
  %i.dje = add nuw i64 %.sroa.0433.03005.us3013, 1, !dbg !79835 ; 3 uses
  %i.djf = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0433.03005.us3013, !dbg !79836
  store i32 %i.djd, ptr %i.djf, align 4, !dbg !79837
  %i.djg = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.djh = icmp ult i64 %i.dje, %i.djg, !dbg !79829
  call void @llvm.assume(i1 %i.djh), !dbg !79830
  %i.dji = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79831, !noundef !3448
  %i.djj = getelementptr inbounds nuw [4 x i8], ptr %i.dji, i64 %i.dje, !dbg !79832
  %i.djk = load i32, ptr %i.djj, align 4, !dbg !79833, !noundef !3448
  %i.djl = urem i32 %i.djk, %i.dhw, !dbg !79834
  %i.djm = add nuw i64 %.sroa.0433.03005.us3013, 2, !dbg !79835 ; 2 uses
  %i.djn = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dje, !dbg !79836
  store i32 %i.djl, ptr %i.djn, align 4, !dbg !79837
  %exitcond3448.not.1 = icmp eq i64 %i.djm, %.sroa.7.0.ph.i1376.us, !dbg !79826
  br i1 %exitcond3448.not.1, label %.loopexit2637.us, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012, !dbg !79827

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us
  %.sroa.0433.03005.us.us = phi i64 [ %i.dks, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us ], [ %.sroa.0433.03005.us.us.unr, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit ] ; 10 uses
  %i.djo = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.djp = icmp ult i64 %.sroa.0433.03005.us.us, %i.djo, !dbg !79829
  call void @llvm.assume(i1 %i.djp), !dbg !79830
  %i.djq = add nuw i64 %.sroa.0433.03005.us.us, 1, !dbg !79835 ; 2 uses
  %i.djr = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0433.03005.us.us, !dbg !79836
  store i32 0, ptr %i.djr, align 4, !dbg !79837
  %i.djs = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.djt = icmp ult i64 %i.djq, %i.djs, !dbg !79829
  call void @llvm.assume(i1 %i.djt), !dbg !79830
  %i.dju = add nuw i64 %.sroa.0433.03005.us.us, 2, !dbg !79835 ; 2 uses
  %i.djv = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.djq, !dbg !79836
  store i32 0, ptr %i.djv, align 4, !dbg !79837
  %i.djw = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.djx = icmp ult i64 %i.dju, %i.djw, !dbg !79829
  call void @llvm.assume(i1 %i.djx), !dbg !79830
  %i.djy = add nuw i64 %.sroa.0433.03005.us.us, 3, !dbg !79835 ; 2 uses
  %i.djz = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dju, !dbg !79836
  store i32 0, ptr %i.djz, align 4, !dbg !79837
  %i.dka = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.dkb = icmp ult i64 %i.djy, %i.dka, !dbg !79829
  call void @llvm.assume(i1 %i.dkb), !dbg !79830
  %i.dkc = add nuw i64 %.sroa.0433.03005.us.us, 4, !dbg !79835 ; 2 uses
  %i.dkd = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.djy, !dbg !79836
  store i32 0, ptr %i.dkd, align 4, !dbg !79837
  %i.dke = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.dkf = icmp ult i64 %i.dkc, %i.dke, !dbg !79829
  call void @llvm.assume(i1 %i.dkf), !dbg !79830
  %i.dkg = add nuw i64 %.sroa.0433.03005.us.us, 5, !dbg !79835 ; 2 uses
  %i.dkh = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dkc, !dbg !79836
  store i32 0, ptr %i.dkh, align 4, !dbg !79837
  %i.dki = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.dkj = icmp ult i64 %i.dkg, %i.dki, !dbg !79829
  call void @llvm.assume(i1 %i.dkj), !dbg !79830
  %i.dkk = add nuw i64 %.sroa.0433.03005.us.us, 6, !dbg !79835 ; 2 uses
  %i.dkl = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dkg, !dbg !79836
  store i32 0, ptr %i.dkl, align 4, !dbg !79837
  %i.dkm = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.dkn = icmp ult i64 %i.dkk, %i.dkm, !dbg !79829
  call void @llvm.assume(i1 %i.dkn), !dbg !79830
  %i.dko = add nuw i64 %.sroa.0433.03005.us.us, 7, !dbg !79835 ; 2 uses
  %i.dkp = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dkk, !dbg !79836
  store i32 0, ptr %i.dkp, align 4, !dbg !79837
  %i.dkq = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79828, !noundef !3448
  %i.dkr = icmp ult i64 %i.dko, %i.dkq, !dbg !79829
  call void @llvm.assume(i1 %i.dkr), !dbg !79830
  %i.dks = add nuw i64 %.sroa.0433.03005.us.us, 8, !dbg !79835 ; 2 uses
  %i.dkt = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dko, !dbg !79836
  store i32 0, ptr %i.dkt, align 4, !dbg !79837
  %exitcond3450.not.7 = icmp eq i64 %i.dks, %.sroa.7.0.ph.i1376.us, !dbg !79826
  br i1 %exitcond3450.not.7, label %.loopexit2637.us, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us, !dbg !79827, !llvm.loop !75083

.loopexit2637.us:                                 ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012.prol.loopexit, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us3012, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us.prol.loopexit, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic12wrapping_mod.exit.us.us, %middle.block4120, %.loopexit2638.us
  %i.dku = icmp ult i64 %i.dhf, 2, !dbg !79806
  br i1 %i.dku, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.os, !dbg !79806

.lr.ph3009.split:                                 ; preds = %.lr.ph3009
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0158.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77348), !dbg !79809
  br label %.lr.ph2997.split.invoke, !dbg !79838

bb.ov:                                            ; preds = %bb.oq
  %.sroa.0154.sroa.0.0.copyload = load ptr, ptr %i.cr, align 8, !dbg !79839 ; 2 uses
  %.sroa.0154.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !79839
  %.sroa.0154.sroa.2.0.copyload = load i64, ptr %.sroa.0154.sroa.2.0..sroa_idx, align 8, !dbg !79839 ; 2 uses
  %.sroa.0154.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !79839
  %.sroa.0154.sroa.3.0.copyload = load i64, ptr %.sroa.0154.sroa.3.0..sroa_idx, align 8, !dbg !79839 ; 2 uses
  %.sroa.0154.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24, !dbg !79839
  %.sroa.0154.sroa.4.0.copyload = load ptr, ptr %.sroa.0154.sroa.4.0..sroa_idx, align 8, !dbg !79839 ; 3 uses
  %.sroa.0154.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32, !dbg !79839
  %.sroa.0154.sroa.5.0.copyload = load i64, ptr %.sroa.0154.sroa.5.0..sroa_idx, align 8, !dbg !79839 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !79590
  %i.dkv = icmp ugt i64 %.sroa.0154.sroa.3.0.copyload, %.sroa.0154.sroa.2.0.copyload, !dbg !79840
  br i1 %i.dkv, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph3026, !dbg !79840

.lr.ph3026:                                       ; preds = %bb.ov
  %i.dkw = icmp eq i64 %.sroa.0154.sroa.3.0.copyload, 2
  %.idx.i.i.i1387 = mul nuw nsw i64 %.sroa.0154.sroa.5.0.copyload, 24
  %i.dkx = getelementptr inbounds nuw i8, ptr %.sroa.0154.sroa.4.0.copyload, i64 %.idx.i.i.i1387
  %i.dky = icmp eq i64 %.sroa.0154.sroa.5.0.copyload, 0
  br i1 %i.dkw, label %.lr.ph3026.split.us, label %.lr.ph3026.split, !prof !3552

.lr.ph3026.split.us:                              ; preds = %.lr.ph3026
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0154.sroa.4.0.copyload) ]
  br label %bb.ow, !dbg !79840

bb.ow:                                            ; preds = %.loopexit2634.us, %.lr.ph3026.split.us
  %.sroa.01732.03025.us = phi ptr [ %.sroa.0154.sroa.0.0.copyload, %.lr.ph3026.split.us ], [ %i.dla, %.loopexit2634.us ] ; 3 uses
  %.sroa.51733.03024.us = phi i64 [ %.sroa.0154.sroa.2.0.copyload, %.lr.ph3026.split.us ], [ %i.dkz, %.loopexit2634.us ]
  %.sroa.101737.03023.us = phi i64 [ 0, %.lr.ph3026.split.us ], [ %i.dll, %.loopexit2634.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01732.03025.us) ]
  %i.dkz = add i64 %.sroa.51733.03024.us, -1, !dbg !79841 ; 2 uses
  %i.dla = getelementptr inbounds nuw i8, ptr %.sroa.01732.03025.us, i64 8, !dbg !79842 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77390), !dbg !79843
  %.sroa.02.06.i.i.i1388.us = load i64, ptr %.sroa.01732.03025.us, align 8, !dbg !79844, !alias.scope !77390, !noalias !77391, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1389.us = load i64, ptr %i.dla, align 8, !dbg !79845, !alias.scope !77390, !noalias !77391, !noundef !3448 ; 2 uses
  br i1 %i.dky, label %.loopexit2635.us, label %.lr.ph.i.i.i1390.us, !dbg !79846

.lr.ph.i.i.i1390.us:                              ; preds = %bb.ow, %bb.oy
  %.sroa.06.010.i.i.i1391.us = phi i64 [ %.sroa.06.0.i.i.i1395.us, %bb.oy ], [ %.sroa.06.07.i.i.i1389.us, %bb.ow ] ; 3 uses
  %.sroa.02.09.i.i.i1392.us = phi i64 [ %.sroa.02.0.i.i.i1394.us, %bb.oy ], [ %.sroa.02.06.i.i.i1388.us, %bb.ow ] ; 3 uses
  %.sroa.0.08.i.i.i1393.us = phi ptr [ %i.dlb, %bb.oy ], [ %.sroa.0154.sroa.4.0.copyload, %bb.ow ] ; 3 uses
  %i.dlb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1393.us, i64 24, !dbg !79847 ; 2 uses
  %i.dlc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1393.us, i64 8, !dbg !79848
  %i.dld = load ptr, ptr %i.dlc, align 8, !dbg !79848, !noalias !77392, !noundef !3448 ; 2 uses
  %i.dle = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1393.us, i64 16, !dbg !79849
  %i.dlf = load i64, ptr %i.dle, align 8, !dbg !79849, !noalias !77392, !noundef !3448 ; 4 uses
  %i.dlg = icmp ult i64 %.sroa.02.09.i.i.i1392.us, %i.dlf, !dbg !79850
  br i1 %i.dlg, label %bb.ox, label %.split3002.us.invoke, !dbg !79850

bb.ox:                                            ; preds = %.lr.ph.i.i.i1390.us
  %i.dlh = icmp ult i64 %.sroa.06.010.i.i.i1391.us, %i.dlf, !dbg !79851
  br i1 %i.dlh, label %bb.oy, label %.split3002.us.invoke, !dbg !79851

bb.oy:                                            ; preds = %bb.ox
  %i.dli = getelementptr inbounds nuw [8 x i8], ptr %i.dld, i64 %.sroa.02.09.i.i.i1392.us, !dbg !79850
  %i.dlj = getelementptr inbounds nuw [8 x i8], ptr %i.dld, i64 %.sroa.06.010.i.i.i1391.us, !dbg !79851
  %.sroa.02.0.i.i.i1394.us = load i64, ptr %i.dli, align 8, !dbg !79844, !noalias !77392, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1395.us = load i64, ptr %i.dlj, align 8, !dbg !79845, !noalias !77392, !noundef !3448 ; 2 uses
  %i.dlk = icmp eq ptr %i.dlb, %i.dkx, !dbg !79852
end_hunk_4
begin_hunk_5_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes10UInt32TypeEBb_:bb.a
  %xtraiter4314 = and i64 %i.dls, 1, !dbg !79862
  %lcmp.mod4315.not = icmp eq i64 %xtraiter4314, 0, !dbg !79862
  br i1 %lcmp.mod4315.not, label %.lr.ph.us3027.prol.loopexit, label %.lr.ph.us3027.prol, !dbg !79862

.lr.ph.us3027.prol:                               ; preds = %.lr.ph.us3027.preheader
  %i.dlt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79863, !noundef !3448
  %i.dlu = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79864, !noundef !3448
  %i.dlv = icmp ult i64 %.sroa.5.0.ph.i1398.us, %i.dlu, !dbg !79865
  call void @llvm.assume(i1 %i.dlv), !dbg !79866
  %i.dlw = getelementptr inbounds nuw [4 x i8], ptr %i.dlt, i64 %.sroa.5.0.ph.i1398.us, !dbg !79867
  %i.dlx = load i32, ptr %i.dlw, align 4, !dbg !79868, !noundef !3448 ; 2 uses
  %i.dly = icmp eq i32 %i.dlx, 0, !dbg !79862
  br i1 %i.dly, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.prol, label %bb.oz, !dbg !79862

bb.oz:                                            ; preds = %.lr.ph.us3027.prol
  %i.dlz = urem i32 %i.dlq, %i.dlx, !dbg !79869
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.prol, !dbg !79870

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.prol: ; preds = %bb.oz, %.lr.ph.us3027.prol
  %.sroa.0.0.i.i1406.us.prol = phi i32 [ %i.dlz, %bb.oz ], [ 0, %.lr.ph.us3027.prol ], !dbg !79871
  %i.dma = add nuw i64 %.sroa.5.0.ph.i1398.us, 1, !dbg !79872
  %i.dmb = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.5.0.ph.i1398.us, !dbg !79873
  store i32 %.sroa.0.0.i.i1406.us.prol, ptr %i.dmb, align 4, !dbg !79874
  br label %.lr.ph.us3027.prol.loopexit, !dbg !79862

.lr.ph.us3027.prol.loopexit:                      ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.prol, %.lr.ph.us3027.preheader
  %.sroa.0431.03022.us.unr = phi i64 [ %.sroa.5.0.ph.i1398.us, %.lr.ph.us3027.preheader ], [ %i.dma, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.prol ]
  %i.dmc = icmp eq i64 %.sroa.7.0.ph.i1397.us, %.neg4378, !dbg !79862
  br i1 %i.dmc, label %.loopexit2634.us, label %.lr.ph.us3027, !dbg !79862

.lr.ph.us3027:                                    ; preds = %.lr.ph.us3027.prol.loopexit, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.1
  %.sroa.0431.03022.us = phi i64 [ %i.dmt, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.1 ], [ %.sroa.0431.03022.us.unr, %.lr.ph.us3027.prol.loopexit ] ; 5 uses
  %i.dmd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79863, !noundef !3448
  %i.dme = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79864, !noundef !3448
  %i.dmf = icmp ult i64 %.sroa.0431.03022.us, %i.dme, !dbg !79865
  call void @llvm.assume(i1 %i.dmf), !dbg !79866
  %i.dmg = getelementptr inbounds nuw [4 x i8], ptr %i.dmd, i64 %.sroa.0431.03022.us, !dbg !79867
  %i.dmh = load i32, ptr %i.dmg, align 4, !dbg !79868, !noundef !3448 ; 2 uses
  %i.dmi = icmp eq i32 %i.dmh, 0, !dbg !79862
  br i1 %i.dmi, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us, label %bb.pa, !dbg !79862

bb.pa:                                            ; preds = %.lr.ph.us3027
  %i.dmj = urem i32 %i.dlq, %i.dmh, !dbg !79869
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us, !dbg !79870

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us: ; preds = %bb.pa, %.lr.ph.us3027
  %.sroa.0.0.i.i1406.us = phi i32 [ %i.dmj, %bb.pa ], [ 0, %.lr.ph.us3027 ], !dbg !79871
  %i.dmk = add nuw i64 %.sroa.0431.03022.us, 1, !dbg !79872 ; 3 uses
  %i.dml = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0431.03022.us, !dbg !79873
  store i32 %.sroa.0.0.i.i1406.us, ptr %i.dml, align 4, !dbg !79874
  %i.dmm = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79863, !noundef !3448
  %i.dmn = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79864, !noundef !3448
  %i.dmo = icmp ult i64 %i.dmk, %i.dmn, !dbg !79865
  call void @llvm.assume(i1 %i.dmo), !dbg !79866
  %i.dmp = getelementptr inbounds nuw [4 x i8], ptr %i.dmm, i64 %i.dmk, !dbg !79867
  %i.dmq = load i32, ptr %i.dmp, align 4, !dbg !79868, !noundef !3448 ; 2 uses
  %i.dmr = icmp eq i32 %i.dmq, 0, !dbg !79862
  br i1 %i.dmr, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.1, label %bb.pb, !dbg !79862

bb.pb:                                            ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us
  %i.dms = urem i32 %i.dlq, %i.dmq, !dbg !79869
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.1, !dbg !79870

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.1: ; preds = %bb.pb, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us
  %.sroa.0.0.i.i1406.us.1 = phi i32 [ %i.dms, %bb.pb ], [ 0, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us ], !dbg !79871
  %i.dmt = add nuw i64 %.sroa.0431.03022.us, 2, !dbg !79872 ; 2 uses
  %i.dmu = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dmk, !dbg !79873
  store i32 %.sroa.0.0.i.i1406.us.1, ptr %i.dmu, align 4, !dbg !79874
  %exitcond3451.not.1 = icmp eq i64 %i.dmt, %.sroa.7.0.ph.i1397.us, !dbg !79860
  br i1 %exitcond3451.not.1, label %.loopexit2634.us, label %.lr.ph.us3027, !dbg !79861

.loopexit2634.us:                                 ; preds = %.lr.ph.us3027.prol.loopexit, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes10UInt32TypeEs8_0Bd_.exit.us.1, %.loopexit2635.us
  %i.dmv = icmp ult i64 %i.dkz, 2, !dbg !79840
  br i1 %i.dmv, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.ow, !dbg !79840

.lr.ph3026.split:                                 ; preds = %.lr.ph3026
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0154.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77390), !dbg !79843
  br label %.lr.ph2997.split.invoke, !dbg !79875

bb.pc:                                            ; preds = %bb.nj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !77508
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.pe unwind label %bb.qu, !dbg !77508

bb.pd:                                            ; preds = %bb.nj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !77508
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqg, i64 noundef %i.bqi)
          to label %bb.pi unwind label %bb.qu, !dbg !77508

bb.pe:                                            ; preds = %bb.pc
  %.sroa.0166.sroa.0.0.copyload = load ptr, ptr %i.co, align 8, !dbg !79876 ; 2 uses
  %.sroa.0166.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !79876
  %.sroa.0166.sroa.2.0.copyload = load i64, ptr %.sroa.0166.sroa.2.0..sroa_idx, align 8, !dbg !79876 ; 2 uses
  %.sroa.0166.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16, !dbg !79876
  %.sroa.0166.sroa.3.0.copyload = load i64, ptr %.sroa.0166.sroa.3.0..sroa_idx, align 8, !dbg !79876 ; 2 uses
  %.sroa.0166.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24, !dbg !79876
  %.sroa.0166.sroa.4.0.copyload = load ptr, ptr %.sroa.0166.sroa.4.0..sroa_idx, align 8, !dbg !79876 ; 3 uses
  %.sroa.0166.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 32, !dbg !79876
  %.sroa.0166.sroa.5.0.copyload = load i64, ptr %.sroa.0166.sroa.5.0..sroa_idx, align 8, !dbg !79876 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !79590
  %i.dmw = icmp ugt i64 %.sroa.0166.sroa.3.0.copyload, %.sroa.0166.sroa.2.0.copyload, !dbg !79877
  br i1 %i.dmw, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph2980, !dbg !79877

.lr.ph2980:                                       ; preds = %bb.pe
  %i.dmx = icmp eq i64 %.sroa.0166.sroa.3.0.copyload, 2
  %.idx.i.i.i1409 = mul nuw nsw i64 %.sroa.0166.sroa.5.0.copyload, 24
  %i.dmy = getelementptr inbounds nuw i8, ptr %.sroa.0166.sroa.4.0.copyload, i64 %.idx.i.i.i1409
  %i.dmz = icmp eq i64 %.sroa.0166.sroa.5.0.copyload, 0
  br i1 %i.dmx, label %.lr.ph2980.split.us, label %.lr.ph2980.split, !prof !3552

.lr.ph2980.split.us:                              ; preds = %.lr.ph2980
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.sroa.4.0.copyload) ]
  %scevgep4083 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !79877
  br label %bb.pf, !dbg !79877

bb.pf:                                            ; preds = %.loopexit2643.us, %.lr.ph2980.split.us
  %.sroa.01762.02979.us = phi ptr [ %.sroa.0166.sroa.0.0.copyload, %.lr.ph2980.split.us ], [ %i.dnb, %.loopexit2643.us ] ; 3 uses
  %.sroa.51763.02978.us = phi i64 [ %.sroa.0166.sroa.2.0.copyload, %.lr.ph2980.split.us ], [ %i.dna, %.loopexit2643.us ]
  %.sroa.101767.02977.us = phi i64 [ 0, %.lr.ph2980.split.us ], [ %i.dnm, %.loopexit2643.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01762.02979.us) ]
  %i.dna = add i64 %.sroa.51763.02978.us, -1, !dbg !79878 ; 2 uses
  %i.dnb = getelementptr inbounds nuw i8, ptr %.sroa.01762.02979.us, i64 8, !dbg !79879 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77430), !dbg !79880
  %.sroa.02.06.i.i.i1410.us = load i64, ptr %.sroa.01762.02979.us, align 8, !dbg !79881, !alias.scope !77430, !noalias !77431, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1411.us = load i64, ptr %i.dnb, align 8, !dbg !79882, !alias.scope !77430, !noalias !77431, !noundef !3448 ; 2 uses
  br i1 %i.dmz, label %.loopexit2644.us, label %.lr.ph.i.i.i1412.us, !dbg !79883

.lr.ph.i.i.i1412.us:                              ; preds = %bb.pf, %bb.ph
  %.sroa.06.010.i.i.i1413.us = phi i64 [ %.sroa.06.0.i.i.i1417.us, %bb.ph ], [ %.sroa.06.07.i.i.i1411.us, %bb.pf ] ; 3 uses
  %.sroa.02.09.i.i.i1414.us = phi i64 [ %.sroa.02.0.i.i.i1416.us, %bb.ph ], [ %.sroa.02.06.i.i.i1410.us, %bb.pf ] ; 3 uses
  %.sroa.0.08.i.i.i1415.us = phi ptr [ %i.dnc, %bb.ph ], [ %.sroa.0166.sroa.4.0.copyload, %bb.pf ] ; 3 uses
  %i.dnc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1415.us, i64 24, !dbg !79884 ; 2 uses
  %i.dnd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1415.us, i64 8, !dbg !79885
  %i.dne = load ptr, ptr %i.dnd, align 8, !dbg !79885, !noalias !77432, !noundef !3448 ; 2 uses
  %i.dnf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1415.us, i64 16, !dbg !79886
  %i.dng = load i64, ptr %i.dnf, align 8, !dbg !79886, !noalias !77432, !noundef !3448 ; 4 uses
  %i.dnh = icmp ult i64 %.sroa.02.09.i.i.i1414.us, %i.dng, !dbg !79887
  br i1 %i.dnh, label %bb.pg, label %.split3002.us.invoke, !dbg !79887

bb.pg:                                            ; preds = %.lr.ph.i.i.i1412.us
  %i.dni = icmp ult i64 %.sroa.06.010.i.i.i1413.us, %i.dng, !dbg !79888
  br i1 %i.dni, label %bb.ph, label %.split3002.us.invoke, !dbg !79888

bb.ph:                                            ; preds = %bb.pg
  %i.dnj = getelementptr inbounds nuw [8 x i8], ptr %i.dne, i64 %.sroa.02.09.i.i.i1414.us, !dbg !79887
  %i.dnk = getelementptr inbounds nuw [8 x i8], ptr %i.dne, i64 %.sroa.06.010.i.i.i1413.us, !dbg !79888
  %.sroa.02.0.i.i.i1416.us = load i64, ptr %i.dnj, align 8, !dbg !79881, !noalias !77432, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1417.us = load i64, ptr %i.dnk, align 8, !dbg !79882, !noalias !77432, !noundef !3448 ; 2 uses
  %i.dnl = icmp eq ptr %i.dnc, %i.dmy, !dbg !79889
  br i1 %i.dnl, label %.loopexit2644.us, label %.lr.ph.i.i.i1412.us, !dbg !79883

.loopexit2644.us:                                 ; preds = %bb.ph, %bb.pf
  %.sroa.7.0.ph.i1419.us = phi i64 [ %.sroa.06.07.i.i.i1411.us, %bb.pf ], [ %.sroa.06.0.i.i.i1417.us, %bb.ph ] ; 9 uses
  %.sroa.5.0.ph.i1420.us = phi i64 [ %.sroa.02.06.i.i.i1410.us, %bb.pf ], [ %.sroa.02.0.i.i.i1416.us, %bb.ph ] ; 14 uses
  %i.dnm = add nuw i64 %.sroa.101767.02977.us, 1, !dbg !79890
  %i.dnn = load ptr, ptr %.sroa.4.0..sroa_idx.i635, align 8, !dbg !79891, !noundef !3448
  %i.dno = load i64, ptr %.sroa.5.0..sroa_idx5.i636, align 8, !dbg !79892, !noundef !3448
  %i.dnp = icmp ult i64 %.sroa.101767.02977.us, %i.dno, !dbg !79893
  call void @llvm.assume(i1 %i.dnp), !dbg !79894
  %i.dnq = getelementptr inbounds nuw [4 x i8], ptr %i.dnn, i64 %.sroa.101767.02977.us, !dbg !79895
  %i.dnr = load i32, ptr %i.dnq, align 4, !dbg !79896, !noundef !3448 ; 4 uses
  %i.dns = icmp ult i64 %.sroa.5.0.ph.i1420.us, %.sroa.7.0.ph.i1419.us, !dbg !79897
  br i1 %i.dns, label %.lr.ph.us2981, label %.loopexit2643.us, !dbg !79898

.lr.ph.us2981:                                    ; preds = %.loopexit2644.us
  %i.dnt = icmp eq i32 %i.dnr, 0
  br i1 %i.dnt, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.preheader

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.preheader: ; preds = %.lr.ph.us2981
  %i.dnu = sub i64 %.sroa.7.0.ph.i1419.us, %.sroa.5.0.ph.i1420.us, !dbg !79898
  %.neg = add i64 %.sroa.5.0.ph.i1420.us, 1, !dbg !79898
  %xtraiter4299 = and i64 %i.dnu, 1, !dbg !79898
  %lcmp.mod4300.not = icmp eq i64 %xtraiter4299, 0, !dbg !79898
  br i1 %lcmp.mod4300.not, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol, !dbg !79898

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.preheader
  %i.dnv = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dnw = icmp ult i64 %.sroa.5.0.ph.i1420.us, %i.dnv, !dbg !79900
  call void @llvm.assume(i1 %i.dnw), !dbg !79901
  %i.dnx = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79902, !noundef !3448
  %i.dny = getelementptr inbounds nuw [4 x i8], ptr %i.dnx, i64 %.sroa.5.0.ph.i1420.us, !dbg !79903
  %i.dnz = load i32, ptr %i.dny, align 4, !dbg !79904, !noundef !3448
  %i.doa = udiv i32 %i.dnz, %i.dnr, !dbg !79905
  %i.dob = add nuw i64 %.sroa.5.0.ph.i1420.us, 1, !dbg !79906
  %i.doc = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.5.0.ph.i1420.us, !dbg !79907
  store i32 %i.doa, ptr %i.doc, align 4, !dbg !79908
  br label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit, !dbg !79898

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.preheader
  %.sroa.0437.02976.us2984.unr = phi i64 [ %.sroa.5.0.ph.i1420.us, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.preheader ], [ %i.dob, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol ]
  %i.dod = icmp eq i64 %.sroa.7.0.ph.i1419.us, %.neg, !dbg !79898
  br i1 %i.dod, label %.loopexit2643.us, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983, !dbg !79898

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader: ; preds = %.lr.ph.us2981
  %i.doe = sub i64 %.sroa.7.0.ph.i1419.us, %.sroa.5.0.ph.i1420.us, !dbg !79898 ; 3 uses
  %min.iters.check4085 = icmp ult i64 %i.doe, 8, !dbg !79898
  br i1 %min.iters.check4085, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader4220, label %vector.memcheck, !dbg !79898

vector.memcheck:                                  ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader
  %i.dof = shl nuw i64 %.sroa.5.0.ph.i1420.us, 2, !dbg !79898
  %scevgep = getelementptr i8, ptr %i.cqd, i64 %i.dof, !dbg !79898
  %i.dog = shl i64 %.sroa.7.0.ph.i1419.us, 2, !dbg !79898
  %scevgep4082 = getelementptr i8, ptr %i.cqd, i64 %i.dog, !dbg !79898
  %bound0 = icmp ult ptr %scevgep, %scevgep4083, !dbg !79898
  %bound1 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4082, !dbg !79898
  %found.conflict = and i1 %bound0, %bound1, !dbg !79898
  br i1 %found.conflict, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader4220, label %vector.ph4086

vector.ph4086:                                    ; preds = %vector.memcheck
  %n.vec4087 = and i64 %i.doe, -8                 ; 3 uses
  %i.doh = add i64 %.sroa.5.0.ph.i1420.us, %n.vec4087
  %i.doi = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.5.0.ph.i1420.us
  br label %vector.body4090

vector.body4090:                                  ; preds = %vector.body4090, %vector.ph4086
  %index4091 = phi i64 [ 0, %vector.ph4086 ], [ %index.next4094, %vector.body4090 ] ; 2 uses
  %i.doj = getelementptr inbounds nuw [4 x i8], ptr %i.doi, i64 %index4091, !dbg !79907 ; 2 uses
  %i.dok = getelementptr inbounds nuw i8, ptr %i.doj, i64 16, !dbg !79908
  store <4 x i32> zeroinitializer, ptr %i.doj, align 4, !dbg !79908, !alias.scope !77466, !noalias !77467
  store <4 x i32> zeroinitializer, ptr %i.dok, align 4, !dbg !79908, !alias.scope !77466, !noalias !77467
  %index.next4094 = add nuw i64 %index4091, 8     ; 2 uses
  %i.dol = icmp eq i64 %index.next4094, %n.vec4087, !dbg !79898
  br i1 %i.dol, label %middle.block4095, label %vector.body4090, !dbg !79898, !llvm.loop !75151

middle.block4095:                                 ; preds = %vector.body4090
  %cmp.n4096 = icmp eq i64 %i.doe, %n.vec4087, !dbg !79898
  br i1 %cmp.n4096, label %.loopexit2643.us, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader4220, !dbg !79898

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader4220: ; preds = %vector.memcheck, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader, %middle.block4095
  %.sroa.0437.02976.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1420.us, %vector.memcheck ], [ %.sroa.5.0.ph.i1420.us, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader ], [ %i.doh, %middle.block4095 ] ; 4 uses
  %i.dom = sub i64 %.sroa.7.0.ph.i1419.us, %.sroa.0437.02976.us.us.ph, !dbg !79898
  %xtraiter4302 = and i64 %i.dom, 7, !dbg !79898  ; 2 uses
  %lcmp.mod4303.not = icmp eq i64 %xtraiter4302, 0, !dbg !79898
  br i1 %lcmp.mod4303.not, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol, !dbg !79898

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader4220, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol
  %.sroa.0437.02976.us.us.prol = phi i64 [ %i.dop, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol ], [ %.sroa.0437.02976.us.us.ph, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader4220 ] ; 3 uses
  %prol.iter4304 = phi i64 [ %prol.iter4304.next, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol ], [ 0, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader4220 ]
  %i.don = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.doo = icmp ult i64 %.sroa.0437.02976.us.us.prol, %i.don, !dbg !79900
  call void @llvm.assume(i1 %i.doo), !dbg !79901
  %i.dop = add nuw i64 %.sroa.0437.02976.us.us.prol, 1, !dbg !79906 ; 2 uses
  %i.doq = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0437.02976.us.us.prol, !dbg !79907
  store i32 0, ptr %i.doq, align 4, !dbg !79908
  %prol.iter4304.next = add i64 %prol.iter4304, 1, !dbg !79898 ; 2 uses
  %prol.iter4304.cmp.not = icmp eq i64 %prol.iter4304.next, %xtraiter4302, !dbg !79898
  br i1 %prol.iter4304.cmp.not, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol, !dbg !79898, !llvm.loop !75152

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader4220
  %.sroa.0437.02976.us.us.unr = phi i64 [ %.sroa.0437.02976.us.us.ph, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.preheader4220 ], [ %i.dop, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol ]
  %i.dor = sub i64 %.sroa.0437.02976.us.us.ph, %.sroa.7.0.ph.i1419.us, !dbg !79898
  %i.dos = icmp ugt i64 %i.dor, -8, !dbg !79898
  br i1 %i.dos, label %.loopexit2643.us, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us, !dbg !79898

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983
  %.sroa.0437.02976.us2984 = phi i64 [ %i.dph, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983 ], [ %.sroa.0437.02976.us2984.unr, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit ] ; 5 uses
  %i.dot = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dou = icmp ult i64 %.sroa.0437.02976.us2984, %i.dot, !dbg !79900
  call void @llvm.assume(i1 %i.dou), !dbg !79901
  %i.dov = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79902, !noundef !3448
  %i.dow = getelementptr inbounds nuw [4 x i8], ptr %i.dov, i64 %.sroa.0437.02976.us2984, !dbg !79903
  %i.dox = load i32, ptr %i.dow, align 4, !dbg !79904, !noundef !3448
  %i.doy = udiv i32 %i.dox, %i.dnr, !dbg !79905
  %i.doz = add nuw i64 %.sroa.0437.02976.us2984, 1, !dbg !79906 ; 3 uses
  %i.dpa = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0437.02976.us2984, !dbg !79907
  store i32 %i.doy, ptr %i.dpa, align 4, !dbg !79908
  %i.dpb = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dpc = icmp ult i64 %i.doz, %i.dpb, !dbg !79900
  call void @llvm.assume(i1 %i.dpc), !dbg !79901
  %i.dpd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !79902, !noundef !3448
  %i.dpe = getelementptr inbounds nuw [4 x i8], ptr %i.dpd, i64 %i.doz, !dbg !79903
  %i.dpf = load i32, ptr %i.dpe, align 4, !dbg !79904, !noundef !3448
  %i.dpg = udiv i32 %i.dpf, %i.dnr, !dbg !79905
  %i.dph = add nuw i64 %.sroa.0437.02976.us2984, 2, !dbg !79906 ; 2 uses
  %i.dpi = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.doz, !dbg !79907
  store i32 %i.dpg, ptr %i.dpi, align 4, !dbg !79908
  %exitcond3444.not.1 = icmp eq i64 %i.dph, %.sroa.7.0.ph.i1419.us, !dbg !79897
  br i1 %exitcond3444.not.1, label %.loopexit2643.us, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983, !dbg !79898

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us
  %.sroa.0437.02976.us.us = phi i64 [ %i.dqn, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us ], [ %.sroa.0437.02976.us.us.unr, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit ] ; 10 uses
  %i.dpj = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dpk = icmp ult i64 %.sroa.0437.02976.us.us, %i.dpj, !dbg !79900
  call void @llvm.assume(i1 %i.dpk), !dbg !79901
  %i.dpl = add nuw i64 %.sroa.0437.02976.us.us, 1, !dbg !79906 ; 2 uses
  %i.dpm = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %.sroa.0437.02976.us.us, !dbg !79907
  store i32 0, ptr %i.dpm, align 4, !dbg !79908
  %i.dpn = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dpo = icmp ult i64 %i.dpl, %i.dpn, !dbg !79900
  call void @llvm.assume(i1 %i.dpo), !dbg !79901
  %i.dpp = add nuw i64 %.sroa.0437.02976.us.us, 2, !dbg !79906 ; 2 uses
  %i.dpq = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dpl, !dbg !79907
  store i32 0, ptr %i.dpq, align 4, !dbg !79908
  %i.dpr = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dps = icmp ult i64 %i.dpp, %i.dpr, !dbg !79900
  call void @llvm.assume(i1 %i.dps), !dbg !79901
  %i.dpt = add nuw i64 %.sroa.0437.02976.us.us, 3, !dbg !79906 ; 2 uses
  %i.dpu = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dpp, !dbg !79907
  store i32 0, ptr %i.dpu, align 4, !dbg !79908
  %i.dpv = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dpw = icmp ult i64 %i.dpt, %i.dpv, !dbg !79900
  call void @llvm.assume(i1 %i.dpw), !dbg !79901
  %i.dpx = add nuw i64 %.sroa.0437.02976.us.us, 4, !dbg !79906 ; 2 uses
  %i.dpy = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dpt, !dbg !79907
  store i32 0, ptr %i.dpy, align 4, !dbg !79908
  %i.dpz = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dqa = icmp ult i64 %i.dpx, %i.dpz, !dbg !79900
  call void @llvm.assume(i1 %i.dqa), !dbg !79901
  %i.dqb = add nuw i64 %.sroa.0437.02976.us.us, 5, !dbg !79906 ; 2 uses
  %i.dqc = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dpx, !dbg !79907
  store i32 0, ptr %i.dqc, align 4, !dbg !79908
  %i.dqd = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dqe = icmp ult i64 %i.dqb, %i.dqd, !dbg !79900
  call void @llvm.assume(i1 %i.dqe), !dbg !79901
  %i.dqf = add nuw i64 %.sroa.0437.02976.us.us, 6, !dbg !79906 ; 2 uses
  %i.dqg = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dqb, !dbg !79907
  store i32 0, ptr %i.dqg, align 4, !dbg !79908
  %i.dqh = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dqi = icmp ult i64 %i.dqf, %i.dqh, !dbg !79900
  call void @llvm.assume(i1 %i.dqi), !dbg !79901
  %i.dqj = add nuw i64 %.sroa.0437.02976.us.us, 7, !dbg !79906 ; 2 uses
  %i.dqk = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dqf, !dbg !79907
  store i32 0, ptr %i.dqk, align 4, !dbg !79908
  %i.dql = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !79899, !noundef !3448
  %i.dqm = icmp ult i64 %i.dqj, %i.dql, !dbg !79900
  call void @llvm.assume(i1 %i.dqm), !dbg !79901
  %i.dqn = add nuw i64 %.sroa.0437.02976.us.us, 8, !dbg !79906 ; 2 uses
  %i.dqo = getelementptr inbounds nuw [4 x i8], ptr %i.cqd, i64 %i.dqj, !dbg !79907
  store i32 0, ptr %i.dqo, align 4, !dbg !79908
  %exitcond3446.not.7 = icmp eq i64 %i.dqn, %.sroa.7.0.ph.i1419.us, !dbg !79897
  br i1 %exitcond3446.not.7, label %.loopexit2643.us, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us, !dbg !79898, !llvm.loop !75153

.loopexit2643.us:                                 ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983.prol.loopexit, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us2983, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us.prol.loopexit, %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6pl_nummNtB5_15PlNumArithmetic18wrapping_floor_div.exit.us.us, %middle.block4095, %.loopexit2644.us
  %i.dqp = icmp ult i64 %i.dna, 2, !dbg !79877
  br i1 %i.dqp, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %bb.pf, !dbg !79877

.lr.ph2980.split:                                 ; preds = %.lr.ph2980
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77430), !dbg !79880
  br label %.lr.ph2997.split.invoke, !dbg !79909

bb.pi:                                            ; preds = %bb.pd
  %.sroa.0162.sroa.0.0.copyload = load ptr, ptr %i.cp, align 8, !dbg !79910 ; 2 uses
  %.sroa.0162.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !79910
  %.sroa.0162.sroa.2.0.copyload = load i64, ptr %.sroa.0162.sroa.2.0..sroa_idx, align 8, !dbg !79910 ; 2 uses
  %.sroa.0162.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16, !dbg !79910
  %.sroa.0162.sroa.3.0.copyload = load i64, ptr %.sroa.0162.sroa.3.0..sroa_idx, align 8, !dbg !79910 ; 2 uses
  %.sroa.0162.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24, !dbg !79910
  %.sroa.0162.sroa.4.0.copyload = load ptr, ptr %.sroa.0162.sroa.4.0..sroa_idx, align 8, !dbg !79910 ; 3 uses
  %.sroa.0162.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32, !dbg !79910
  %.sroa.0162.sroa.5.0.copyload = load i64, ptr %.sroa.0162.sroa.5.0..sroa_idx, align 8, !dbg !79910 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !79590
  %i.dqq = icmp ugt i64 %.sroa.0162.sroa.3.0.copyload, %.sroa.0162.sroa.2.0.copyload, !dbg !79911
  br i1 %i.dqq, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1257, label %.lr.ph2997, !dbg !79911

.lr.ph2997:                                       ; preds = %bb.pi
  %i.dqr = icmp eq i64 %.sroa.0162.sroa.3.0.copyload, 2
  %.idx.i.i.i1430 = mul nuw nsw i64 %.sroa.0162.sroa.5.0.copyload, 24
  %i.dqs = getelementptr inbounds nuw i8, ptr %.sroa.0162.sroa.4.0.copyload, i64 %.idx.i.i.i1430
  %i.dqt = icmp eq i64 %.sroa.0162.sroa.5.0.copyload, 0
  br i1 %i.dqr, label %.lr.ph2997.split.us, label %.lr.ph2997.split, !prof !3552

.lr.ph2997.split.us:                              ; preds = %.lr.ph2997
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0162.sroa.4.0.copyload) ]
  br label %bb.pj, !dbg !79911

bb.pj:                                            ; preds = %.loopexit2640.us, %.lr.ph2997.split.us
  %.sroa.01752.02996.us = phi ptr [ %.sroa.0162.sroa.0.0.copyload, %.lr.ph2997.split.us ], [ %i.dqv, %.loopexit2640.us ] ; 3 uses
  %.sroa.51753.02995.us = phi i64 [ %.sroa.0162.sroa.2.0.copyload, %.lr.ph2997.split.us ], [ %i.dqu, %.loopexit2640.us ]
  %.sroa.101757.02994.us = phi i64 [ 0, %.lr.ph2997.split.us ], [ %i.drg, %.loopexit2640.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01752.02996.us) ]
  %i.dqu = add i64 %.sroa.51753.02995.us, -1, !dbg !79912 ; 2 uses
  %i.dqv = getelementptr inbounds nuw i8, ptr %.sroa.01752.02996.us, i64 8, !dbg !79913 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77472), !dbg !79914
  %.sroa.02.06.i.i.i1431.us = load i64, ptr %.sroa.01752.02996.us, align 8, !dbg !79915, !alias.scope !77472, !noalias !77473, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1432.us = load i64, ptr %i.dqv, align 8, !dbg !79916, !alias.scope !77472, !noalias !77473, !noundef !3448 ; 2 uses
  br i1 %i.dqt, label %.loopexit2641.us, label %.lr.ph.i.i.i1433.us, !dbg !79917

.lr.ph.i.i.i1433.us:                              ; preds = %bb.pj, %bb.pl
  %.sroa.06.010.i.i.i1434.us = phi i64 [ %.sroa.06.0.i.i.i1438.us, %bb.pl ], [ %.sroa.06.07.i.i.i1432.us, %bb.pj ] ; 3 uses
  %.sroa.02.09.i.i.i1435.us = phi i64 [ %.sroa.02.0.i.i.i1437.us, %bb.pl ], [ %.sroa.02.06.i.i.i1431.us, %bb.pj ] ; 3 uses
  %.sroa.0.08.i.i.i1436.us = phi ptr [ %i.dqw, %bb.pl ], [ %.sroa.0162.sroa.4.0.copyload, %bb.pj ] ; 3 uses
  %i.dqw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1436.us, i64 24, !dbg !79918 ; 2 uses
  %i.dqx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1436.us, i64 8, !dbg !79919
  %i.dqy = load ptr, ptr %i.dqx, align 8, !dbg !79919, !noalias !77474, !noundef !3448 ; 2 uses
  %i.dqz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1436.us, i64 16, !dbg !79920
  %i.dra = load i64, ptr %i.dqz, align 8, !dbg !79920, !noalias !77474, !noundef !3448 ; 4 uses
  %i.drb = icmp ult i64 %.sroa.02.09.i.i.i1435.us, %i.dra, !dbg !79921
  br i1 %i.drb, label %bb.pk, label %.split3002.us.invoke, !dbg !79921

bb.pk:                                            ; preds = %.lr.ph.i.i.i1433.us
  %i.drc = icmp ult i64 %.sroa.06.010.i.i.i1434.us, %i.dra, !dbg !79922
  br i1 %i.drc, label %bb.pl, label %.split3002.us.invoke, !dbg !79922

bb.pl:                                            ; preds = %bb.pk
  %i.drd = getelementptr inbounds nuw [8 x i8], ptr %i.dqy, i64 %.sroa.02.09.i.i.i1435.us, !dbg !79921
  %i.dre = getelementptr inbounds nuw [8 x i8], ptr %i.dqy, i64 %.sroa.06.010.i.i.i1434.us, !dbg !79922
  %.sroa.02.0.i.i.i1437.us = load i64, ptr %i.drd, align 8, !dbg !79915, !noalias !77474, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1438.us = load i64, ptr %i.dre, align 8, !dbg !79916, !noalias !77474, !noundef !3448 ; 2 uses
  %i.drf = icmp eq ptr %i.dqw, %i.dqs, !dbg !79923
end_hunk_5
begin_hunk_6_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes9Int16TypeEBb_:bb.a
  %i.ddn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129618, !noundef !3448
  %i.ddo = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129619, !noundef !3448
  %i.ddp = icmp ult i64 %.sroa.0425.03209.us.prol, %i.ddo, !dbg !129620
  call void @llvm.assume(i1 %i.ddp), !dbg !129621
  %i.ddq = getelementptr inbounds nuw [2 x i8], ptr %i.ddn, i64 %.sroa.0425.03209.us.prol, !dbg !129622
  %i.ddr = load i16, ptr %i.ddq, align 2, !dbg !129623, !noundef !3448
  %i.dds = mul i16 %i.ddr, %i.ddk, !dbg !129624
  %i.ddt = add nuw i64 %.sroa.0425.03209.us.prol, 1, !dbg !129625 ; 2 uses
  %i.ddu = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0425.03209.us.prol, !dbg !129626
  store i16 %i.dds, ptr %i.ddu, align 2, !dbg !129627
  %prol.iter4760.next = add i64 %prol.iter4760, 1, !dbg !129617 ; 2 uses
  %prol.iter4760.cmp.not = icmp eq i64 %prol.iter4760.next, %xtraiter4758, !dbg !129617
  br i1 %prol.iter4760.cmp.not, label %.lr.ph.us3214.prol.loopexit, label %.lr.ph.us3214.prol, !dbg !129617, !llvm.loop !124765

.lr.ph.us3214.prol.loopexit:                      ; preds = %.lr.ph.us3214.prol, %.lr.ph.us3214.preheader
  %.sroa.0425.03209.us.unr = phi i64 [ %.sroa.5.0.ph.i1375.us, %.lr.ph.us3214.preheader ], [ %i.ddt, %.lr.ph.us3214.prol ]
  %i.ddv = sub i64 %.sroa.5.0.ph.i1375.us, %.sroa.7.0.ph.i1374.us, !dbg !129617
  %i.ddw = icmp ugt i64 %i.ddv, -4, !dbg !129617
  br i1 %i.ddw, label %.loopexit2744.us, label %.lr.ph.us3214, !dbg !129617

.lr.ph.us3214:                                    ; preds = %.lr.ph.us3214.prol.loopexit, %.lr.ph.us3214
  %.sroa.0425.03209.us = phi i64 [ %i.dfb, %.lr.ph.us3214 ], [ %.sroa.0425.03209.us.unr, %.lr.ph.us3214.prol.loopexit ] ; 7 uses
  %i.ddx = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129618, !noundef !3448
  %i.ddy = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129619, !noundef !3448
  %i.ddz = icmp ult i64 %.sroa.0425.03209.us, %i.ddy, !dbg !129620
  call void @llvm.assume(i1 %i.ddz), !dbg !129621
  %i.dea = getelementptr inbounds nuw [2 x i8], ptr %i.ddx, i64 %.sroa.0425.03209.us, !dbg !129622
  %i.deb = load i16, ptr %i.dea, align 2, !dbg !129623, !noundef !3448
  %i.dec = mul i16 %i.deb, %i.ddk, !dbg !129624
  %i.ded = add nuw i64 %.sroa.0425.03209.us, 1, !dbg !129625 ; 3 uses
  %i.dee = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0425.03209.us, !dbg !129626
  store i16 %i.dec, ptr %i.dee, align 2, !dbg !129627
  %i.def = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129618, !noundef !3448
  %i.deg = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129619, !noundef !3448
  %i.deh = icmp ult i64 %i.ded, %i.deg, !dbg !129620
  call void @llvm.assume(i1 %i.deh), !dbg !129621
  %i.dei = getelementptr inbounds nuw [2 x i8], ptr %i.def, i64 %i.ded, !dbg !129622
  %i.dej = load i16, ptr %i.dei, align 2, !dbg !129623, !noundef !3448
  %i.dek = mul i16 %i.dej, %i.ddk, !dbg !129624
  %i.del = add nuw i64 %.sroa.0425.03209.us, 2, !dbg !129625 ; 3 uses
  %i.dem = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.ded, !dbg !129626
  store i16 %i.dek, ptr %i.dem, align 2, !dbg !129627
  %i.den = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129618, !noundef !3448
  %i.deo = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129619, !noundef !3448
  %i.dep = icmp ult i64 %i.del, %i.deo, !dbg !129620
  call void @llvm.assume(i1 %i.dep), !dbg !129621
  %i.deq = getelementptr inbounds nuw [2 x i8], ptr %i.den, i64 %i.del, !dbg !129622
  %i.der = load i16, ptr %i.deq, align 2, !dbg !129623, !noundef !3448
  %i.des = mul i16 %i.der, %i.ddk, !dbg !129624
  %i.det = add nuw i64 %.sroa.0425.03209.us, 3, !dbg !129625 ; 3 uses
  %i.deu = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.del, !dbg !129626
  store i16 %i.des, ptr %i.deu, align 2, !dbg !129627
  %i.dev = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129618, !noundef !3448
  %i.dew = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129619, !noundef !3448
  %i.dex = icmp ult i64 %i.det, %i.dew, !dbg !129620
  call void @llvm.assume(i1 %i.dex), !dbg !129621
  %i.dey = getelementptr inbounds nuw [2 x i8], ptr %i.dev, i64 %i.det, !dbg !129622
  %i.dez = load i16, ptr %i.dey, align 2, !dbg !129623, !noundef !3448
  %i.dfa = mul i16 %i.dez, %i.ddk, !dbg !129624
  %i.dfb = add nuw i64 %.sroa.0425.03209.us, 4, !dbg !129625 ; 2 uses
  %i.dfc = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.det, !dbg !129626
  store i16 %i.dfa, ptr %i.dfc, align 2, !dbg !129627
  %exitcond3618.not.3 = icmp eq i64 %i.dfb, %.sroa.7.0.ph.i1374.us, !dbg !129616
  br i1 %exitcond3618.not.3, label %.loopexit2744.us, label %.lr.ph.us3214, !dbg !129617

.loopexit2744.us:                                 ; preds = %.lr.ph.us3214.prol.loopexit, %.lr.ph.us3214, %.loopexit2745.us
  %i.dfd = icmp ult i64 %i.dct, 2, !dbg !129596
  br i1 %i.dfd, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %bb.ou, !dbg !129596

.lr.ph3213.split:                                 ; preds = %.lr.ph3213
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0142.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !127059), !dbg !129599
  br label %.lr.ph3134.split.invoke, !dbg !129628

bb.ox:                                            ; preds = %bb.oc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !127343
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.oz unwind label %bb.ro, !dbg !127343

bb.oy:                                            ; preds = %bb.oc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !127343
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.pd unwind label %bb.ro, !dbg !127343

bb.oz:                                            ; preds = %bb.ox
  %.sroa.0150.sroa.0.0.copyload = load ptr, ptr %i.cs, align 8, !dbg !129629 ; 2 uses
  %.sroa.0150.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !129629
  %.sroa.0150.sroa.2.0.copyload = load i64, ptr %.sroa.0150.sroa.2.0..sroa_idx, align 8, !dbg !129629 ; 2 uses
  %.sroa.0150.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !129629
  %.sroa.0150.sroa.3.0.copyload = load i64, ptr %.sroa.0150.sroa.3.0..sroa_idx, align 8, !dbg !129629 ; 2 uses
  %.sroa.0150.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24, !dbg !129629
  %.sroa.0150.sroa.4.0.copyload = load ptr, ptr %.sroa.0150.sroa.4.0..sroa_idx, align 8, !dbg !129629 ; 3 uses
  %.sroa.0150.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32, !dbg !129629
  %.sroa.0150.sroa.5.0.copyload = load i64, ptr %.sroa.0150.sroa.5.0..sroa_idx, align 8, !dbg !129629 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !129485
  %i.dfe = icmp ugt i64 %.sroa.0150.sroa.3.0.copyload, %.sroa.0150.sroa.2.0.copyload, !dbg !129630
  br i1 %i.dfe, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %.lr.ph3181, !dbg !129630

.lr.ph3181:                                       ; preds = %bb.oz
  %i.dff = icmp eq i64 %.sroa.0150.sroa.3.0.copyload, 2
  %.idx.i.i.i1385 = mul nuw nsw i64 %.sroa.0150.sroa.5.0.copyload, 24
  %i.dfg = getelementptr inbounds nuw i8, ptr %.sroa.0150.sroa.4.0.copyload, i64 %.idx.i.i.i1385
  %i.dfh = icmp eq i64 %.sroa.0150.sroa.5.0.copyload, 0
  br i1 %i.dff, label %.lr.ph3181.split.us, label %.lr.ph3181.split, !prof !3552

.lr.ph3181.split.us:                              ; preds = %.lr.ph3181
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.sroa.4.0.copyload) ]
  %scevgep4549 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !129630
  br label %bb.pa, !dbg !129630

bb.pa:                                            ; preds = %.loopexit2750.us, %.lr.ph3181.split.us
  %.sroa.01811.03180.us = phi ptr [ %.sroa.0150.sroa.0.0.copyload, %.lr.ph3181.split.us ], [ %i.dfj, %.loopexit2750.us ] ; 3 uses
  %.sroa.51812.03179.us = phi i64 [ %.sroa.0150.sroa.2.0.copyload, %.lr.ph3181.split.us ], [ %i.dfi, %.loopexit2750.us ]
  %.sroa.101816.03178.us = phi i64 [ 0, %.lr.ph3181.split.us ], [ %i.dfu, %.loopexit2750.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01811.03180.us) ]
  %i.dfi = add i64 %.sroa.51812.03179.us, -1, !dbg !129631 ; 2 uses
  %i.dfj = getelementptr inbounds nuw i8, ptr %.sroa.01811.03180.us, i64 8, !dbg !129632 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127099), !dbg !129633
  %.sroa.02.06.i.i.i1386.us = load i64, ptr %.sroa.01811.03180.us, align 8, !dbg !129634, !alias.scope !127099, !noalias !127100, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1387.us = load i64, ptr %i.dfj, align 8, !dbg !129635, !alias.scope !127099, !noalias !127100, !noundef !3448 ; 2 uses
  br i1 %i.dfh, label %.loopexit2751.us, label %.lr.ph.i.i.i1388.us, !dbg !129636

.lr.ph.i.i.i1388.us:                              ; preds = %bb.pa, %bb.pc
  %.sroa.06.010.i.i.i1389.us = phi i64 [ %.sroa.06.0.i.i.i1393.us, %bb.pc ], [ %.sroa.06.07.i.i.i1387.us, %bb.pa ] ; 3 uses
  %.sroa.02.09.i.i.i1390.us = phi i64 [ %.sroa.02.0.i.i.i1392.us, %bb.pc ], [ %.sroa.02.06.i.i.i1386.us, %bb.pa ] ; 3 uses
  %.sroa.0.08.i.i.i1391.us = phi ptr [ %i.dfk, %bb.pc ], [ %.sroa.0150.sroa.4.0.copyload, %bb.pa ] ; 3 uses
  %i.dfk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1391.us, i64 24, !dbg !129637 ; 2 uses
  %i.dfl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1391.us, i64 8, !dbg !129638
  %i.dfm = load ptr, ptr %i.dfl, align 8, !dbg !129638, !noalias !127101, !noundef !3448 ; 2 uses
  %i.dfn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1391.us, i64 16, !dbg !129639
  %i.dfo = load i64, ptr %i.dfn, align 8, !dbg !129639, !noalias !127101, !noundef !3448 ; 4 uses
  %i.dfp = icmp ult i64 %.sroa.02.09.i.i.i1390.us, %i.dfo, !dbg !129640
  br i1 %i.dfp, label %bb.pb, label %.split3139.us.invoke, !dbg !129640

bb.pb:                                            ; preds = %.lr.ph.i.i.i1388.us
  %i.dfq = icmp ult i64 %.sroa.06.010.i.i.i1389.us, %i.dfo, !dbg !129641
  br i1 %i.dfq, label %bb.pc, label %.split3139.us.invoke, !dbg !129641

bb.pc:                                            ; preds = %bb.pb
  %i.dfr = getelementptr inbounds nuw [8 x i8], ptr %i.dfm, i64 %.sroa.02.09.i.i.i1390.us, !dbg !129640
  %i.dfs = getelementptr inbounds nuw [8 x i8], ptr %i.dfm, i64 %.sroa.06.010.i.i.i1389.us, !dbg !129641
  %.sroa.02.0.i.i.i1392.us = load i64, ptr %i.dfr, align 8, !dbg !129634, !noalias !127101, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1393.us = load i64, ptr %i.dfs, align 8, !dbg !129635, !noalias !127101, !noundef !3448 ; 2 uses
  %i.dft = icmp eq ptr %i.dfk, %i.dfg, !dbg !129642
  br i1 %i.dft, label %.loopexit2751.us, label %.lr.ph.i.i.i1388.us, !dbg !129636

.loopexit2751.us:                                 ; preds = %bb.pc, %bb.pa
  %.sroa.7.0.ph.i1395.us = phi i64 [ %.sroa.06.07.i.i.i1387.us, %bb.pa ], [ %.sroa.06.0.i.i.i1393.us, %bb.pc ] ; 10 uses
  %.sroa.5.0.ph.i1396.us = phi i64 [ %.sroa.02.06.i.i.i1386.us, %bb.pa ], [ %.sroa.02.0.i.i.i1392.us, %bb.pc ] ; 14 uses
  %i.dfu = add nuw i64 %.sroa.101816.03178.us, 1, !dbg !129643
  %i.dfv = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !129644, !noundef !3448
  %i.dfw = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !129645, !noundef !3448
  %i.dfx = icmp ult i64 %.sroa.101816.03178.us, %i.dfw, !dbg !129646
  call void @llvm.assume(i1 %i.dfx), !dbg !129647
  %i.dfy = getelementptr inbounds nuw [2 x i8], ptr %i.dfv, i64 %.sroa.101816.03178.us, !dbg !129648
  %i.dfz = load i16, ptr %i.dfy, align 2, !dbg !129649, !noundef !3448 ; 4 uses
  %i.dga = icmp ult i64 %.sroa.5.0.ph.i1396.us, %.sroa.7.0.ph.i1395.us, !dbg !129650
  br i1 %i.dga, label %.lr.ph.us3182, label %.loopexit2750.us, !dbg !129651

.lr.ph.us3182:                                    ; preds = %.loopexit2751.us
  switch i16 %i.dfz, label %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i1404.us3185 [
    i16 0, label %iter.check4574
    i16 -1, label %.lr.ph.split.split.us.us3188.preheader
  ], !prof !3668

.lr.ph.split.split.us.us3188.preheader:           ; preds = %.lr.ph.us3182
  %i.dgb = sub i64 %.sroa.7.0.ph.i1395.us, %.sroa.5.0.ph.i1396.us, !dbg !129651
  %xtraiter4752 = and i64 %i.dgb, 3, !dbg !129651 ; 2 uses
  %lcmp.mod4753.not = icmp eq i64 %xtraiter4752, 0, !dbg !129651
  br i1 %lcmp.mod4753.not, label %.lr.ph.split.split.us.us3188.prol.loopexit, label %.lr.ph.split.split.us.us3188.prol, !dbg !129651

.lr.ph.split.split.us.us3188.prol:                ; preds = %.lr.ph.split.split.us.us3188.preheader, %.lr.ph.split.split.us.us3188.prol
  %.sroa.0429.03175.us3176.us.prol = phi i64 [ %i.dgi, %.lr.ph.split.split.us.us3188.prol ], [ %.sroa.5.0.ph.i1396.us, %.lr.ph.split.split.us.us3188.preheader ] ; 4 uses
  %prol.iter4754 = phi i64 [ %prol.iter4754.next, %.lr.ph.split.split.us.us3188.prol ], [ 0, %.lr.ph.split.split.us.us3188.preheader ]
  %i.dgc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129652, !noundef !3448
  %i.dgd = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.dge = icmp ult i64 %.sroa.0429.03175.us3176.us.prol, %i.dgd, !dbg !129654
  call void @llvm.assume(i1 %i.dge), !dbg !129655
  %i.dgf = getelementptr inbounds nuw [2 x i8], ptr %i.dgc, i64 %.sroa.0429.03175.us3176.us.prol, !dbg !129656
  %i.dgg = load i16, ptr %i.dgf, align 2, !dbg !129657, !noundef !3448
  %i.dgh = sub i16 0, %i.dgg
  %i.dgi = add nuw i64 %.sroa.0429.03175.us3176.us.prol, 1, !dbg !129658 ; 2 uses
  %i.dgj = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0429.03175.us3176.us.prol, !dbg !129659
  store i16 %i.dgh, ptr %i.dgj, align 2, !dbg !129660
  %prol.iter4754.next = add i64 %prol.iter4754, 1, !dbg !129651 ; 2 uses
  %prol.iter4754.cmp.not = icmp eq i64 %prol.iter4754.next, %xtraiter4752, !dbg !129651
  br i1 %prol.iter4754.cmp.not, label %.lr.ph.split.split.us.us3188.prol.loopexit, label %.lr.ph.split.split.us.us3188.prol, !dbg !129651, !llvm.loop !124796

.lr.ph.split.split.us.us3188.prol.loopexit:       ; preds = %.lr.ph.split.split.us.us3188.prol, %.lr.ph.split.split.us.us3188.preheader
  %.sroa.0429.03175.us3176.us.unr = phi i64 [ %.sroa.5.0.ph.i1396.us, %.lr.ph.split.split.us.us3188.preheader ], [ %i.dgi, %.lr.ph.split.split.us.us3188.prol ]
  %i.dgk = sub i64 %.sroa.5.0.ph.i1396.us, %.sroa.7.0.ph.i1395.us, !dbg !129651
  %i.dgl = icmp ugt i64 %i.dgk, -4, !dbg !129651
  br i1 %i.dgl, label %.loopexit2750.us, label %.lr.ph.split.split.us.us3188, !dbg !129651

iter.check4574:                                   ; preds = %.lr.ph.us3182
  %i.dgm = sub i64 %.sroa.7.0.ph.i1395.us, %.sroa.5.0.ph.i1396.us, !dbg !129651 ; 7 uses
  %min.iters.check4554 = icmp ult i64 %i.dgm, 4, !dbg !129651
  br i1 %min.iters.check4554, label %.lr.ph.split.us.us3190.preheader, label %vector.memcheck4546, !dbg !129651

vector.memcheck4546:                              ; preds = %iter.check4574
  %i.dgn = shl nuw i64 %.sroa.5.0.ph.i1396.us, 1, !dbg !129651
  %scevgep4547 = getelementptr i8, ptr %i.cub, i64 %i.dgn, !dbg !129651
  %i.dgo = shl i64 %.sroa.7.0.ph.i1395.us, 1, !dbg !129651
  %scevgep4548 = getelementptr i8, ptr %i.cub, i64 %i.dgo, !dbg !129651
  %bound04550 = icmp ult ptr %scevgep4547, %scevgep4549, !dbg !129651
  %bound14551 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4548, !dbg !129651
  %found.conflict4552 = and i1 %bound04550, %bound14551, !dbg !129651
  br i1 %found.conflict4552, label %.lr.ph.split.us.us3190.preheader, label %vector.main.loop.iter.check4555

vector.main.loop.iter.check4555:                  ; preds = %vector.memcheck4546
  %min.iters.check4556 = icmp ult i64 %i.dgm, 16, !dbg !129651
  br i1 %min.iters.check4556, label %vec.epilog.ph4578, label %vector.ph4557, !dbg !129651

vector.ph4557:                                    ; preds = %vector.main.loop.iter.check4555
  %i.dgp = and i64 %i.dgm, 12
  %n.vec4558 = and i64 %i.dgm, -16                ; 4 uses
  %i.dgq = add i64 %.sroa.5.0.ph.i1396.us, %n.vec4558
  %i.dgr = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.5.0.ph.i1396.us
  br label %vector.body4562, !dbg !129651

vector.body4562:                                  ; preds = %vector.ph4557, %vector.body4562
  %index4563 = phi i64 [ 0, %vector.ph4557 ], [ %index.next4568, %vector.body4562 ] ; 2 uses
  %i.dgs = getelementptr inbounds nuw [2 x i8], ptr %i.dgr, i64 %index4563, !dbg !129659 ; 2 uses
  %i.dgt = getelementptr inbounds nuw i8, ptr %i.dgs, i64 16, !dbg !129660
  store <8 x i16> zeroinitializer, ptr %i.dgs, align 2, !dbg !129660, !alias.scope !127135, !noalias !127136
  store <8 x i16> zeroinitializer, ptr %i.dgt, align 2, !dbg !129660, !alias.scope !127135, !noalias !127136
  %index.next4568 = add nuw i64 %index4563, 16    ; 2 uses
  %i.dgu = icmp eq i64 %index.next4568, %n.vec4558, !dbg !129651
  br i1 %i.dgu, label %middle.block4570, label %vector.body4562, !dbg !129651, !llvm.loop !124800

middle.block4570:                                 ; preds = %vector.body4562
  %cmp.n4571 = icmp eq i64 %i.dgm, %n.vec4558, !dbg !129651
  br i1 %cmp.n4571, label %.loopexit2750.us, label %vec.epilog.iter.check4576, !dbg !129651

vec.epilog.iter.check4576:                        ; preds = %middle.block4570
  %min.epilog.iters.check4577 = icmp eq i64 %i.dgp, 0
  br i1 %min.epilog.iters.check4577, label %.lr.ph.split.us.us3190.preheader, label %vec.epilog.ph4578, !prof !3686

vec.epilog.ph4578:                                ; preds = %vector.main.loop.iter.check4555, %vec.epilog.iter.check4576
  %vec.epilog.resume.val4572 = phi i64 [ %n.vec4558, %vec.epilog.iter.check4576 ], [ 0, %vector.main.loop.iter.check4555 ]
  %n.vec4579 = and i64 %i.dgm, -4                 ; 3 uses
  %i.dgv = add i64 %.sroa.5.0.ph.i1396.us, %n.vec4579
  %i.dgw = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.5.0.ph.i1396.us
  br label %vec.epilog.vector.body4583

vec.epilog.vector.body4583:                       ; preds = %vec.epilog.vector.body4583, %vec.epilog.ph4578
  %index4584 = phi i64 [ %vec.epilog.resume.val4572, %vec.epilog.ph4578 ], [ %index.next4588, %vec.epilog.vector.body4583 ] ; 2 uses
  %i.dgx = getelementptr inbounds nuw [2 x i8], ptr %i.dgw, i64 %index4584, !dbg !129659
  store <4 x i16> zeroinitializer, ptr %i.dgx, align 2, !dbg !129660, !alias.scope !127135, !noalias !127136
  %index.next4588 = add nuw i64 %index4584, 4     ; 2 uses
  %i.dgy = icmp eq i64 %index.next4588, %n.vec4579, !dbg !129651
  br i1 %i.dgy, label %vec.epilog.middle.block4590, label %vec.epilog.vector.body4583, !dbg !129651, !llvm.loop !124801

vec.epilog.middle.block4590:                      ; preds = %vec.epilog.vector.body4583
  %cmp.n4591 = icmp eq i64 %i.dgm, %n.vec4579, !dbg !129651
  br i1 %cmp.n4591, label %.loopexit2750.us, label %.lr.ph.split.us.us3190.preheader, !dbg !129651

.lr.ph.split.us.us3190.preheader:                 ; preds = %iter.check4574, %vector.memcheck4546, %vec.epilog.iter.check4576, %vec.epilog.middle.block4590
  %.sroa.0429.03175.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1396.us, %iter.check4574 ], [ %.sroa.5.0.ph.i1396.us, %vector.memcheck4546 ], [ %i.dgq, %vec.epilog.iter.check4576 ], [ %i.dgv, %vec.epilog.middle.block4590 ] ; 4 uses
  %i.dgz = sub i64 %.sroa.7.0.ph.i1395.us, %.sroa.0429.03175.us.us.ph, !dbg !129651
  %xtraiter4755 = and i64 %i.dgz, 7, !dbg !129651 ; 2 uses
  %lcmp.mod4756.not = icmp eq i64 %xtraiter4755, 0, !dbg !129651
  br i1 %lcmp.mod4756.not, label %.lr.ph.split.us.us3190.prol.loopexit, label %.lr.ph.split.us.us3190.prol, !dbg !129651

.lr.ph.split.us.us3190.prol:                      ; preds = %.lr.ph.split.us.us3190.preheader, %.lr.ph.split.us.us3190.prol
  %.sroa.0429.03175.us.us.prol = phi i64 [ %i.dhc, %.lr.ph.split.us.us3190.prol ], [ %.sroa.0429.03175.us.us.ph, %.lr.ph.split.us.us3190.preheader ] ; 3 uses
  %prol.iter4757 = phi i64 [ %prol.iter4757.next, %.lr.ph.split.us.us3190.prol ], [ 0, %.lr.ph.split.us.us3190.preheader ]
  %i.dha = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.dhb = icmp ult i64 %.sroa.0429.03175.us.us.prol, %i.dha, !dbg !129654
  call void @llvm.assume(i1 %i.dhb), !dbg !129655
  %i.dhc = add nuw i64 %.sroa.0429.03175.us.us.prol, 1, !dbg !129658 ; 2 uses
  %i.dhd = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0429.03175.us.us.prol, !dbg !129659
  store i16 0, ptr %i.dhd, align 2, !dbg !129660
  %prol.iter4757.next = add i64 %prol.iter4757, 1, !dbg !129651 ; 2 uses
  %prol.iter4757.cmp.not = icmp eq i64 %prol.iter4757.next, %xtraiter4755, !dbg !129651
  br i1 %prol.iter4757.cmp.not, label %.lr.ph.split.us.us3190.prol.loopexit, label %.lr.ph.split.us.us3190.prol, !dbg !129651, !llvm.loop !124802

.lr.ph.split.us.us3190.prol.loopexit:             ; preds = %.lr.ph.split.us.us3190.prol, %.lr.ph.split.us.us3190.preheader
  %.sroa.0429.03175.us.us.unr = phi i64 [ %.sroa.0429.03175.us.us.ph, %.lr.ph.split.us.us3190.preheader ], [ %i.dhc, %.lr.ph.split.us.us3190.prol ]
  %i.dhe = sub i64 %.sroa.0429.03175.us.us.ph, %.sroa.7.0.ph.i1395.us, !dbg !129651
  %i.dhf = icmp ugt i64 %i.dhe, -8, !dbg !129651
  br i1 %i.dhf, label %.loopexit2750.us, label %.lr.ph.split.us.us3190, !dbg !129651

_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i1404.us3185: ; preds = %.lr.ph.us3182, %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i1404.us3185
  %.sroa.0429.03175.us3186 = phi i64 [ %i.dhq, %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i1404.us3185 ], [ %.sroa.5.0.ph.i1396.us, %.lr.ph.us3182 ] ; 4 uses
  %i.dhg = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129652, !noundef !3448
  %i.dhh = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.dhi = icmp ult i64 %.sroa.0429.03175.us3186, %i.dhh, !dbg !129654
  call void @llvm.assume(i1 %i.dhi), !dbg !129655
  %i.dhj = getelementptr inbounds nuw [2 x i8], ptr %i.dhg, i64 %.sroa.0429.03175.us3186, !dbg !129656
  %i.dhk = load i16, ptr %i.dhj, align 2, !dbg !129657, !noundef !3448 ; 3 uses
  %i.dhl = sdiv i16 %i.dhk, %i.dfz, !dbg !129661
  %i.dhm = srem i16 %i.dhk, %i.dfz, !dbg !129662
  %.not.i1405.us = icmp ne i16 %i.dhm, 0, !dbg !129663
  %i.dhn = xor i16 %i.dhk, %i.dfz
  %i.dho = icmp slt i16 %i.dhn, 0
  %or.cond2671.us = and i1 %i.dho, %.not.i1405.us, !dbg !129663
  %i.dhp = sext i1 %or.cond2671.us to i16, !dbg !129663
  %spec.select2682.us = add i16 %i.dhl, %i.dhp, !dbg !129663
  %i.dhq = add nuw i64 %.sroa.0429.03175.us3186, 1, !dbg !129658 ; 2 uses
  %i.dhr = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0429.03175.us3186, !dbg !129659
  store i16 %spec.select2682.us, ptr %i.dhr, align 2, !dbg !129660
  %exitcond3616.not = icmp eq i64 %i.dhq, %.sroa.7.0.ph.i1395.us, !dbg !129650
  br i1 %exitcond3616.not, label %.loopexit2750.us, label %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i1404.us3185, !dbg !129651

.lr.ph.split.split.us.us3188:                     ; preds = %.lr.ph.split.split.us.us3188.prol.loopexit, %.lr.ph.split.split.us.us3188
  %.sroa.0429.03175.us3176.us = phi i64 [ %i.diw, %.lr.ph.split.split.us.us3188 ], [ %.sroa.0429.03175.us3176.us.unr, %.lr.ph.split.split.us.us3188.prol.loopexit ] ; 7 uses
  %i.dhs = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129652, !noundef !3448
  %i.dht = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.dhu = icmp ult i64 %.sroa.0429.03175.us3176.us, %i.dht, !dbg !129654
  call void @llvm.assume(i1 %i.dhu), !dbg !129655
  %i.dhv = getelementptr inbounds nuw [2 x i8], ptr %i.dhs, i64 %.sroa.0429.03175.us3176.us, !dbg !129656
  %i.dhw = load i16, ptr %i.dhv, align 2, !dbg !129657, !noundef !3448
  %i.dhx = sub i16 0, %i.dhw
  %i.dhy = add nuw i64 %.sroa.0429.03175.us3176.us, 1, !dbg !129658 ; 3 uses
  %i.dhz = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0429.03175.us3176.us, !dbg !129659
  store i16 %i.dhx, ptr %i.dhz, align 2, !dbg !129660
  %i.dia = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129652, !noundef !3448
  %i.dib = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.dic = icmp ult i64 %i.dhy, %i.dib, !dbg !129654
  call void @llvm.assume(i1 %i.dic), !dbg !129655
  %i.did = getelementptr inbounds nuw [2 x i8], ptr %i.dia, i64 %i.dhy, !dbg !129656
  %i.die = load i16, ptr %i.did, align 2, !dbg !129657, !noundef !3448
  %i.dif = sub i16 0, %i.die
  %i.dig = add nuw i64 %.sroa.0429.03175.us3176.us, 2, !dbg !129658 ; 3 uses
  %i.dih = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dhy, !dbg !129659
  store i16 %i.dif, ptr %i.dih, align 2, !dbg !129660
  %i.dii = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129652, !noundef !3448
  %i.dij = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.dik = icmp ult i64 %i.dig, %i.dij, !dbg !129654
  call void @llvm.assume(i1 %i.dik), !dbg !129655
  %i.dil = getelementptr inbounds nuw [2 x i8], ptr %i.dii, i64 %i.dig, !dbg !129656
  %i.dim = load i16, ptr %i.dil, align 2, !dbg !129657, !noundef !3448
  %i.din = sub i16 0, %i.dim
  %i.dio = add nuw i64 %.sroa.0429.03175.us3176.us, 3, !dbg !129658 ; 3 uses
  %i.dip = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dig, !dbg !129659
  store i16 %i.din, ptr %i.dip, align 2, !dbg !129660
  %i.diq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129652, !noundef !3448
  %i.dir = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.dis = icmp ult i64 %i.dio, %i.dir, !dbg !129654
  call void @llvm.assume(i1 %i.dis), !dbg !129655
  %i.dit = getelementptr inbounds nuw [2 x i8], ptr %i.diq, i64 %i.dio, !dbg !129656
  %i.diu = load i16, ptr %i.dit, align 2, !dbg !129657, !noundef !3448
  %i.div = sub i16 0, %i.diu
  %i.diw = add nuw i64 %.sroa.0429.03175.us3176.us, 4, !dbg !129658 ; 2 uses
  %i.dix = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dio, !dbg !129659
  store i16 %i.div, ptr %i.dix, align 2, !dbg !129660
  %exitcond3613.not.3 = icmp eq i64 %i.diw, %.sroa.7.0.ph.i1395.us, !dbg !129650
  br i1 %exitcond3613.not.3, label %.loopexit2750.us, label %.lr.ph.split.split.us.us3188, !dbg !129651

.lr.ph.split.us.us3190:                           ; preds = %.lr.ph.split.us.us3190.prol.loopexit, %.lr.ph.split.us.us3190
  %.sroa.0429.03175.us.us = phi i64 [ %i.dkc, %.lr.ph.split.us.us3190 ], [ %.sroa.0429.03175.us.us.unr, %.lr.ph.split.us.us3190.prol.loopexit ] ; 10 uses
  %i.diy = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.diz = icmp ult i64 %.sroa.0429.03175.us.us, %i.diy, !dbg !129654
  call void @llvm.assume(i1 %i.diz), !dbg !129655
  %i.dja = add nuw i64 %.sroa.0429.03175.us.us, 1, !dbg !129658 ; 2 uses
  %i.djb = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0429.03175.us.us, !dbg !129659
  store i16 0, ptr %i.djb, align 2, !dbg !129660
  %i.djc = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.djd = icmp ult i64 %i.dja, %i.djc, !dbg !129654
  call void @llvm.assume(i1 %i.djd), !dbg !129655
  %i.dje = add nuw i64 %.sroa.0429.03175.us.us, 2, !dbg !129658 ; 2 uses
  %i.djf = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dja, !dbg !129659
  store i16 0, ptr %i.djf, align 2, !dbg !129660
  %i.djg = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.djh = icmp ult i64 %i.dje, %i.djg, !dbg !129654
  call void @llvm.assume(i1 %i.djh), !dbg !129655
  %i.dji = add nuw i64 %.sroa.0429.03175.us.us, 3, !dbg !129658 ; 2 uses
  %i.djj = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dje, !dbg !129659
  store i16 0, ptr %i.djj, align 2, !dbg !129660
  %i.djk = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.djl = icmp ult i64 %i.dji, %i.djk, !dbg !129654
  call void @llvm.assume(i1 %i.djl), !dbg !129655
  %i.djm = add nuw i64 %.sroa.0429.03175.us.us, 4, !dbg !129658 ; 2 uses
  %i.djn = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dji, !dbg !129659
  store i16 0, ptr %i.djn, align 2, !dbg !129660
  %i.djo = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.djp = icmp ult i64 %i.djm, %i.djo, !dbg !129654
  call void @llvm.assume(i1 %i.djp), !dbg !129655
  %i.djq = add nuw i64 %.sroa.0429.03175.us.us, 5, !dbg !129658 ; 2 uses
  %i.djr = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.djm, !dbg !129659
  store i16 0, ptr %i.djr, align 2, !dbg !129660
  %i.djs = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.djt = icmp ult i64 %i.djq, %i.djs, !dbg !129654
  call void @llvm.assume(i1 %i.djt), !dbg !129655
  %i.dju = add nuw i64 %.sroa.0429.03175.us.us, 6, !dbg !129658 ; 2 uses
  %i.djv = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.djq, !dbg !129659
  store i16 0, ptr %i.djv, align 2, !dbg !129660
  %i.djw = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.djx = icmp ult i64 %i.dju, %i.djw, !dbg !129654
  call void @llvm.assume(i1 %i.djx), !dbg !129655
  %i.djy = add nuw i64 %.sroa.0429.03175.us.us, 7, !dbg !129658 ; 2 uses
  %i.djz = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dju, !dbg !129659
  store i16 0, ptr %i.djz, align 2, !dbg !129660
  %i.dka = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129653, !noundef !3448
  %i.dkb = icmp ult i64 %i.djy, %i.dka, !dbg !129654
  call void @llvm.assume(i1 %i.dkb), !dbg !129655
  %i.dkc = add nuw i64 %.sroa.0429.03175.us.us, 8, !dbg !129658 ; 2 uses
  %i.dkd = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.djy, !dbg !129659
  store i16 0, ptr %i.dkd, align 2, !dbg !129660
  %exitcond3615.not.7 = icmp eq i64 %i.dkc, %.sroa.7.0.ph.i1395.us, !dbg !129650
end_hunk_6
begin_hunk_7_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes9Int16TypeEBb_:bb.a
bb.pg:                                            ; preds = %bb.pf
  %i.dks = getelementptr inbounds nuw [8 x i8], ptr %i.dkn, i64 %.sroa.02.09.i.i.i1416.us, !dbg !129676
  %i.dkt = getelementptr inbounds nuw [8 x i8], ptr %i.dkn, i64 %.sroa.06.010.i.i.i1415.us, !dbg !129677
  %.sroa.02.0.i.i.i1418.us = load i64, ptr %i.dks, align 8, !dbg !129670, !noalias !127143, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1419.us = load i64, ptr %i.dkt, align 8, !dbg !129671, !noalias !127143, !noundef !3448 ; 2 uses
  %i.dku = icmp eq ptr %i.dkl, %i.dkh, !dbg !129678
  br i1 %i.dku, label %.loopexit2748.us, label %.lr.ph.i.i.i1414.us, !dbg !129672

.loopexit2748.us:                                 ; preds = %bb.pg, %bb.pe
  %.sroa.7.0.ph.i1421.us = phi i64 [ %.sroa.06.07.i.i.i1413.us, %bb.pe ], [ %.sroa.06.0.i.i.i1419.us, %bb.pg ] ; 2 uses
  %.sroa.5.0.ph.i1422.us = phi i64 [ %.sroa.02.06.i.i.i1412.us, %bb.pe ], [ %.sroa.02.0.i.i.i1418.us, %bb.pg ] ; 2 uses
  %i.dkv = add nuw i64 %.sroa.101806.03198.us, 1, !dbg !129679
  %i.dkw = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !129680, !noundef !3448
  %i.dkx = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !129681, !noundef !3448
  %i.dky = icmp ult i64 %.sroa.101806.03198.us, %i.dkx, !dbg !129682
  call void @llvm.assume(i1 %i.dky), !dbg !129683
  %i.dkz = getelementptr inbounds nuw [2 x i8], ptr %i.dkw, i64 %.sroa.101806.03198.us, !dbg !129684
  %i.dla = load i16, ptr %i.dkz, align 2, !dbg !129685, !noundef !3448 ; 4 uses
  %i.dlb = icmp ult i64 %.sroa.5.0.ph.i1422.us, %.sroa.7.0.ph.i1421.us, !dbg !129686
  br i1 %i.dlb, label %.lr.ph.us3202, label %.loopexit2747.us, !dbg !129687

bb.ph:                                            ; preds = %.lr.ph.us3202, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs7_0Bd_.exit.us
  %.sroa.0427.03197.us = phi i64 [ %.sroa.5.0.ph.i1422.us, %.lr.ph.us3202 ], [ %i.dlp, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs7_0Bd_.exit.us ] ; 4 uses
  %i.dlc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129688, !noundef !3448
  %i.dld = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129689, !noundef !3448
  %i.dle = icmp ult i64 %.sroa.0427.03197.us, %i.dld, !dbg !129690
  call void @llvm.assume(i1 %i.dle), !dbg !129691
  %i.dlf = getelementptr inbounds nuw [2 x i8], ptr %i.dlc, i64 %.sroa.0427.03197.us, !dbg !129692
  %i.dlg = load i16, ptr %i.dlf, align 2, !dbg !129693, !noundef !3448 ; 5 uses
  %i.dlh = icmp eq i16 %i.dlg, 0, !dbg !129694
  br i1 %i.dlh, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs7_0Bd_.exit.us, label %bb.pi, !dbg !129694

bb.pi:                                            ; preds = %bb.ph
  %i.dli = icmp eq i16 %i.dlg, -1, !dbg !129695   ; 2 uses
  %i.dlj = and i1 %i.dls, %i.dli, !dbg !129696
  br i1 %i.dlj, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs7_0Bd_.exit.us, label %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i.i1430.us, !dbg !129697, !prof !3502

_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i.i1430.us: ; preds = %bb.pi
  %i.dlk = sdiv i16 %i.dla, %i.dlg, !dbg !129698  ; 2 uses
  %i.dll = srem i16 %i.dla, %i.dlg, !dbg !129699
  br i1 %i.dli, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs7_0Bd_.exit.us, label %bb.pj, !dbg !129700, !prof !3641

bb.pj:                                            ; preds = %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i.i1430.us
  %.not.i.i1431.us = icmp ne i16 %i.dll, 0, !dbg !129701
  %i.dlm = xor i16 %i.dlg, %i.dla
  %i.dln = icmp slt i16 %i.dlm, 0
  %or.cond.i1432.us = and i1 %i.dln, %.not.i.i1431.us, !dbg !129701
  %i.dlo = sext i1 %or.cond.i1432.us to i16, !dbg !129701
  %spec.select.i1433.us = add i16 %i.dlk, %i.dlo, !dbg !129701
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs7_0Bd_.exit.us, !dbg !129701

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs7_0Bd_.exit.us: ; preds = %bb.pj, %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i.i1430.us, %bb.pi, %bb.ph
  %.sroa.0.0.i.i1434.us = phi i16 [ 0, %bb.ph ], [ %spec.select.i1433.us, %bb.pj ], [ %i.dlk, %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i.i1430.us ], [ -32768, %bb.pi ], !dbg !129702
  %i.dlp = add nuw i64 %.sroa.0427.03197.us, 1, !dbg !129703 ; 2 uses
  %i.dlq = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0427.03197.us, !dbg !129704
  store i16 %.sroa.0.0.i.i1434.us, ptr %i.dlq, align 2, !dbg !129705
  %exitcond3617.not = icmp eq i64 %i.dlp, %.sroa.7.0.ph.i1421.us, !dbg !129686
  br i1 %exitcond3617.not, label %.loopexit2747.us, label %bb.ph, !dbg !129687

.loopexit2747.us:                                 ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs7_0Bd_.exit.us, %.loopexit2748.us
  %i.dlr = icmp ult i64 %i.dkj, 2, !dbg !129666
  br i1 %i.dlr, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %bb.pe, !dbg !129666

.lr.ph.us3202:                                    ; preds = %.loopexit2748.us
  %i.dls = icmp eq i16 %i.dla, -32768
  br label %bb.ph, !dbg !129687

.lr.ph3201.split:                                 ; preds = %.lr.ph3201
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0146.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !127141), !dbg !129669
  br label %.lr.ph3134.split.invoke, !dbg !129706

bb.pk:                                            ; preds = %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !127343
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.pm unwind label %bb.ro, !dbg !127343

bb.pl:                                            ; preds = %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !127343
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.pq unwind label %bb.ro, !dbg !127343

bb.pm:                                            ; preds = %bb.pk
  %.sroa.0158.sroa.0.0.copyload = load ptr, ptr %i.cq, align 8, !dbg !129707 ; 2 uses
  %.sroa.0158.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !129707
  %.sroa.0158.sroa.2.0.copyload = load i64, ptr %.sroa.0158.sroa.2.0..sroa_idx, align 8, !dbg !129707 ; 2 uses
  %.sroa.0158.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16, !dbg !129707
  %.sroa.0158.sroa.3.0.copyload = load i64, ptr %.sroa.0158.sroa.3.0..sroa_idx, align 8, !dbg !129707 ; 2 uses
  %.sroa.0158.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24, !dbg !129707
  %.sroa.0158.sroa.4.0.copyload = load ptr, ptr %.sroa.0158.sroa.4.0..sroa_idx, align 8, !dbg !129707 ; 3 uses
  %.sroa.0158.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 32, !dbg !129707
  %.sroa.0158.sroa.5.0.copyload = load i64, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !dbg !129707 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !129485
  %i.dlt = icmp ugt i64 %.sroa.0158.sroa.3.0.copyload, %.sroa.0158.sroa.2.0.copyload, !dbg !129708
  br i1 %i.dlt, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %.lr.ph3148, !dbg !129708

.lr.ph3148:                                       ; preds = %bb.pm
  %i.dlu = icmp eq i64 %.sroa.0158.sroa.3.0.copyload, 2
  %.idx.i.i.i1437 = mul nuw nsw i64 %.sroa.0158.sroa.5.0.copyload, 24
  %i.dlv = getelementptr inbounds nuw i8, ptr %.sroa.0158.sroa.4.0.copyload, i64 %.idx.i.i.i1437
  %i.dlw = icmp eq i64 %.sroa.0158.sroa.5.0.copyload, 0
  br i1 %i.dlu, label %.lr.ph3148.split.us, label %.lr.ph3148.split, !prof !3552

.lr.ph3148.split.us:                              ; preds = %.lr.ph3148
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0158.sroa.4.0.copyload) ]
  %scevgep4456 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !129708 ; 2 uses
  br label %bb.pn, !dbg !129708

bb.pn:                                            ; preds = %.loopexit2756.us, %.lr.ph3148.split.us
  %.sroa.01831.03147.us = phi ptr [ %.sroa.0158.sroa.0.0.copyload, %.lr.ph3148.split.us ], [ %i.dly, %.loopexit2756.us ] ; 3 uses
  %.sroa.51832.03146.us = phi i64 [ %.sroa.0158.sroa.2.0.copyload, %.lr.ph3148.split.us ], [ %i.dlx, %.loopexit2756.us ]
  %.sroa.101836.03145.us = phi i64 [ 0, %.lr.ph3148.split.us ], [ %i.dmj, %.loopexit2756.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01831.03147.us) ]
  %i.dlx = add i64 %.sroa.51832.03146.us, -1, !dbg !129709 ; 2 uses
  %i.dly = getelementptr inbounds nuw i8, ptr %.sroa.01831.03147.us, i64 8, !dbg !129710 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127181), !dbg !129711
  %.sroa.02.06.i.i.i1438.us = load i64, ptr %.sroa.01831.03147.us, align 8, !dbg !129712, !alias.scope !127181, !noalias !127182, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1439.us = load i64, ptr %i.dly, align 8, !dbg !129713, !alias.scope !127181, !noalias !127182, !noundef !3448 ; 2 uses
  br i1 %i.dlw, label %.loopexit2757.us, label %.lr.ph.i.i.i1440.us, !dbg !129714

.lr.ph.i.i.i1440.us:                              ; preds = %bb.pn, %bb.pp
  %.sroa.06.010.i.i.i1441.us = phi i64 [ %.sroa.06.0.i.i.i1445.us, %bb.pp ], [ %.sroa.06.07.i.i.i1439.us, %bb.pn ] ; 3 uses
  %.sroa.02.09.i.i.i1442.us = phi i64 [ %.sroa.02.0.i.i.i1444.us, %bb.pp ], [ %.sroa.02.06.i.i.i1438.us, %bb.pn ] ; 3 uses
  %.sroa.0.08.i.i.i1443.us = phi ptr [ %i.dlz, %bb.pp ], [ %.sroa.0158.sroa.4.0.copyload, %bb.pn ] ; 3 uses
  %i.dlz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1443.us, i64 24, !dbg !129715 ; 2 uses
  %i.dma = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1443.us, i64 8, !dbg !129716
  %i.dmb = load ptr, ptr %i.dma, align 8, !dbg !129716, !noalias !127183, !noundef !3448 ; 2 uses
  %i.dmc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1443.us, i64 16, !dbg !129717
  %i.dmd = load i64, ptr %i.dmc, align 8, !dbg !129717, !noalias !127183, !noundef !3448 ; 4 uses
  %i.dme = icmp ult i64 %.sroa.02.09.i.i.i1442.us, %i.dmd, !dbg !129718
  br i1 %i.dme, label %bb.po, label %.split3139.us.invoke, !dbg !129718

bb.po:                                            ; preds = %.lr.ph.i.i.i1440.us
  %i.dmf = icmp ult i64 %.sroa.06.010.i.i.i1441.us, %i.dmd, !dbg !129719
  br i1 %i.dmf, label %bb.pp, label %.split3139.us.invoke, !dbg !129719

bb.pp:                                            ; preds = %bb.po
  %i.dmg = getelementptr inbounds nuw [8 x i8], ptr %i.dmb, i64 %.sroa.02.09.i.i.i1442.us, !dbg !129718
  %i.dmh = getelementptr inbounds nuw [8 x i8], ptr %i.dmb, i64 %.sroa.06.010.i.i.i1441.us, !dbg !129719
  %.sroa.02.0.i.i.i1444.us = load i64, ptr %i.dmg, align 8, !dbg !129712, !noalias !127183, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1445.us = load i64, ptr %i.dmh, align 8, !dbg !129713, !noalias !127183, !noundef !3448 ; 2 uses
  %i.dmi = icmp eq ptr %i.dlz, %i.dlv, !dbg !129720
  br i1 %i.dmi, label %.loopexit2757.us, label %.lr.ph.i.i.i1440.us, !dbg !129714

.loopexit2757.us:                                 ; preds = %bb.pp, %bb.pn
  %.sroa.7.0.ph.i1447.us = phi i64 [ %.sroa.06.07.i.i.i1439.us, %bb.pn ], [ %.sroa.06.0.i.i.i1445.us, %bb.pp ] ; 14 uses
  %.sroa.5.0.ph.i1448.us = phi i64 [ %.sroa.02.06.i.i.i1438.us, %bb.pn ], [ %.sroa.02.0.i.i.i1444.us, %bb.pp ] ; 24 uses
  %i.dmj = add nuw i64 %.sroa.101836.03145.us, 1, !dbg !129721
  %i.dmk = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !129722, !noundef !3448
  %i.dml = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !129723, !noundef !3448
  %i.dmm = icmp ult i64 %.sroa.101836.03145.us, %i.dml, !dbg !129724
  call void @llvm.assume(i1 %i.dmm), !dbg !129725
  %i.dmn = getelementptr inbounds nuw [2 x i8], ptr %i.dmk, i64 %.sroa.101836.03145.us, !dbg !129726
  %i.dmo = load i16, ptr %i.dmn, align 2, !dbg !129727, !noundef !3448 ; 10 uses
  %i.dmp = icmp ult i64 %.sroa.5.0.ph.i1448.us, %.sroa.7.0.ph.i1447.us, !dbg !129728
  br i1 %i.dmp, label %.lr.ph.us3149, label %.loopexit2756.us, !dbg !129729

.lr.ph.us3149:                                    ; preds = %.loopexit2757.us
  switch i16 %i.dmo, label %.lr.ph.split.split.us3151.preheader [
    i16 0, label %iter.check4481
    i16 -1, label %iter.check4527
  ], !prof !3670

.lr.ph.split.split.us3151.preheader:              ; preds = %.lr.ph.us3149
  %i.dmq = sub i64 %.sroa.7.0.ph.i1447.us, %.sroa.5.0.ph.i1448.us, !dbg !129729
  %.neg = add i64 %.sroa.5.0.ph.i1448.us, 1, !dbg !129729
  %xtraiter4749 = and i64 %i.dmq, 1, !dbg !129729
  %lcmp.mod4750.not = icmp eq i64 %xtraiter4749, 0, !dbg !129729
  br i1 %lcmp.mod4750.not, label %.lr.ph.split.split.us3151.prol.loopexit, label %.lr.ph.split.split.us3151.prol, !dbg !129729

.lr.ph.split.split.us3151.prol:                   ; preds = %.lr.ph.split.split.us3151.preheader
  %i.dmr = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129730, !noundef !3448
  %i.dms = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dmt = icmp ult i64 %.sroa.5.0.ph.i1448.us, %i.dms, !dbg !129732
  call void @llvm.assume(i1 %i.dmt), !dbg !129733
  %i.dmu = getelementptr inbounds nuw [2 x i8], ptr %i.dmr, i64 %.sroa.5.0.ph.i1448.us, !dbg !129734
  %i.dmv = load i16, ptr %i.dmu, align 2, !dbg !129735, !noundef !3448 ; 2 uses
  %i.dmw = srem i16 %i.dmv, %i.dmo, !dbg !129736  ; 2 uses
  %.not.i1457.us.prol = icmp eq i16 %i.dmw, 0, !dbg !129737
  %i.dmx = xor i16 %i.dmv, %i.dmo, !dbg !129737
  %i.dmy = icmp slt i16 %i.dmx, 0, !dbg !129737
  %i.dmz = select i1 %i.dmy, i16 %i.dmo, i16 0, !dbg !129737
  %spec.select2673.us.prol = add i16 %i.dmw, %i.dmz, !dbg !129737
  %.sroa.3.0.i1458.us.prol = select i1 %.not.i1457.us.prol, i16 0, i16 %spec.select2673.us.prol, !dbg !129737
  %i.dna = add nuw i64 %.sroa.5.0.ph.i1448.us, 1, !dbg !129738
  %i.dnb = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.5.0.ph.i1448.us, !dbg !129739
  store i16 %.sroa.3.0.i1458.us.prol, ptr %i.dnb, align 2, !dbg !129740
  br label %.lr.ph.split.split.us3151.prol.loopexit, !dbg !129729

.lr.ph.split.split.us3151.prol.loopexit:          ; preds = %.lr.ph.split.split.us3151.prol, %.lr.ph.split.split.us3151.preheader
  %.sroa.0433.03142.us3152.unr = phi i64 [ %.sroa.5.0.ph.i1448.us, %.lr.ph.split.split.us3151.preheader ], [ %i.dna, %.lr.ph.split.split.us3151.prol ]
  %i.dnc = icmp eq i64 %.sroa.7.0.ph.i1447.us, %.neg, !dbg !129729
  br i1 %i.dnc, label %.loopexit2756.us, label %.lr.ph.split.split.us3151, !dbg !129729

iter.check4527:                                   ; preds = %.lr.ph.us3149
  %i.dnd = sub i64 %.sroa.7.0.ph.i1447.us, %.sroa.5.0.ph.i1448.us, !dbg !129729 ; 7 uses
  %min.iters.check4507 = icmp ult i64 %i.dnd, 4, !dbg !129729
  br i1 %min.iters.check4507, label %.lr.ph.split.split.us.us3154.preheader, label %vector.memcheck4500, !dbg !129729

vector.memcheck4500:                              ; preds = %iter.check4527
  %i.dne = shl nuw i64 %.sroa.5.0.ph.i1448.us, 1, !dbg !129729
  %scevgep4501 = getelementptr i8, ptr %i.cub, i64 %i.dne, !dbg !129729
  %i.dnf = shl i64 %.sroa.7.0.ph.i1447.us, 1, !dbg !129729
  %scevgep4502 = getelementptr i8, ptr %i.cub, i64 %i.dnf, !dbg !129729
  %bound04503 = icmp ult ptr %scevgep4501, %scevgep4456, !dbg !129729
  %bound14504 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4502, !dbg !129729
  %found.conflict4505 = and i1 %bound04503, %bound14504, !dbg !129729
  br i1 %found.conflict4505, label %.lr.ph.split.split.us.us3154.preheader, label %vector.main.loop.iter.check4508

vector.main.loop.iter.check4508:                  ; preds = %vector.memcheck4500
  %min.iters.check4509 = icmp ult i64 %i.dnd, 16, !dbg !129729
  br i1 %min.iters.check4509, label %vec.epilog.ph4531, label %vector.ph4510, !dbg !129729

vector.ph4510:                                    ; preds = %vector.main.loop.iter.check4508
  %i.dng = and i64 %i.dnd, 12
  %n.vec4511 = and i64 %i.dnd, -16                ; 4 uses
  %i.dnh = add i64 %.sroa.5.0.ph.i1448.us, %n.vec4511
  %i.dni = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.5.0.ph.i1448.us
  br label %vector.body4515, !dbg !129729

vector.body4515:                                  ; preds = %vector.ph4510, %vector.body4515
  %index4516 = phi i64 [ 0, %vector.ph4510 ], [ %index.next4521, %vector.body4515 ] ; 2 uses
  %i.dnj = getelementptr inbounds nuw [2 x i8], ptr %i.dni, i64 %index4516, !dbg !129739 ; 2 uses
  %i.dnk = getelementptr inbounds nuw i8, ptr %i.dnj, i64 16, !dbg !129740
  store <8 x i16> zeroinitializer, ptr %i.dnj, align 2, !dbg !129740, !alias.scope !127217, !noalias !127218
  store <8 x i16> zeroinitializer, ptr %i.dnk, align 2, !dbg !129740, !alias.scope !127217, !noalias !127218
  %index.next4521 = add nuw i64 %index4516, 16    ; 2 uses
  %i.dnl = icmp eq i64 %index.next4521, %n.vec4511, !dbg !129729
  br i1 %i.dnl, label %middle.block4523, label %vector.body4515, !dbg !129729, !llvm.loop !124889

middle.block4523:                                 ; preds = %vector.body4515
  %cmp.n4524 = icmp eq i64 %i.dnd, %n.vec4511, !dbg !129729
  br i1 %cmp.n4524, label %.loopexit2756.us, label %vec.epilog.iter.check4529, !dbg !129729

vec.epilog.iter.check4529:                        ; preds = %middle.block4523
  %min.epilog.iters.check4530 = icmp eq i64 %i.dng, 0
  br i1 %min.epilog.iters.check4530, label %.lr.ph.split.split.us.us3154.preheader, label %vec.epilog.ph4531, !prof !3686

vec.epilog.ph4531:                                ; preds = %vector.main.loop.iter.check4508, %vec.epilog.iter.check4529
  %vec.epilog.resume.val4525 = phi i64 [ %n.vec4511, %vec.epilog.iter.check4529 ], [ 0, %vector.main.loop.iter.check4508 ]
  %n.vec4532 = and i64 %i.dnd, -4                 ; 3 uses
  %i.dnm = add i64 %.sroa.5.0.ph.i1448.us, %n.vec4532
  %i.dnn = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.5.0.ph.i1448.us
  br label %vec.epilog.vector.body4536

vec.epilog.vector.body4536:                       ; preds = %vec.epilog.vector.body4536, %vec.epilog.ph4531
  %index4537 = phi i64 [ %vec.epilog.resume.val4525, %vec.epilog.ph4531 ], [ %index.next4541, %vec.epilog.vector.body4536 ] ; 2 uses
  %i.dno = getelementptr inbounds nuw [2 x i8], ptr %i.dnn, i64 %index4537, !dbg !129739
  store <4 x i16> zeroinitializer, ptr %i.dno, align 2, !dbg !129740, !alias.scope !127217, !noalias !127218
  %index.next4541 = add nuw i64 %index4537, 4     ; 2 uses
  %i.dnp = icmp eq i64 %index.next4541, %n.vec4532, !dbg !129729
  br i1 %i.dnp, label %vec.epilog.middle.block4543, label %vec.epilog.vector.body4536, !dbg !129729, !llvm.loop !124890

vec.epilog.middle.block4543:                      ; preds = %vec.epilog.vector.body4536
  %cmp.n4544 = icmp eq i64 %i.dnd, %n.vec4532, !dbg !129729
  br i1 %cmp.n4544, label %.loopexit2756.us, label %.lr.ph.split.split.us.us3154.preheader, !dbg !129729

.lr.ph.split.split.us.us3154.preheader:           ; preds = %iter.check4527, %vector.memcheck4500, %vec.epilog.iter.check4529, %vec.epilog.middle.block4543
  %.sroa.0433.03142.us3143.us.ph = phi i64 [ %.sroa.5.0.ph.i1448.us, %iter.check4527 ], [ %.sroa.5.0.ph.i1448.us, %vector.memcheck4500 ], [ %i.dnh, %vec.epilog.iter.check4529 ], [ %i.dnm, %vec.epilog.middle.block4543 ] ; 4 uses
  %i.dnq = sub i64 %.sroa.7.0.ph.i1447.us, %.sroa.0433.03142.us3143.us.ph, !dbg !129729
  %xtraiter4743 = and i64 %i.dnq, 7, !dbg !129729 ; 2 uses
  %lcmp.mod4744.not = icmp eq i64 %xtraiter4743, 0, !dbg !129729
  br i1 %lcmp.mod4744.not, label %.lr.ph.split.split.us.us3154.prol.loopexit, label %.lr.ph.split.split.us.us3154.prol, !dbg !129729

.lr.ph.split.split.us.us3154.prol:                ; preds = %.lr.ph.split.split.us.us3154.preheader, %.lr.ph.split.split.us.us3154.prol
  %.sroa.0433.03142.us3143.us.prol = phi i64 [ %i.dnt, %.lr.ph.split.split.us.us3154.prol ], [ %.sroa.0433.03142.us3143.us.ph, %.lr.ph.split.split.us.us3154.preheader ] ; 3 uses
  %prol.iter4745 = phi i64 [ %prol.iter4745.next, %.lr.ph.split.split.us.us3154.prol ], [ 0, %.lr.ph.split.split.us.us3154.preheader ]
  %i.dnr = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dns = icmp ult i64 %.sroa.0433.03142.us3143.us.prol, %i.dnr, !dbg !129732
  call void @llvm.assume(i1 %i.dns), !dbg !129733
  %i.dnt = add nuw i64 %.sroa.0433.03142.us3143.us.prol, 1, !dbg !129738 ; 2 uses
  %i.dnu = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0433.03142.us3143.us.prol, !dbg !129739
  store i16 0, ptr %i.dnu, align 2, !dbg !129740
  %prol.iter4745.next = add i64 %prol.iter4745, 1, !dbg !129729 ; 2 uses
  %prol.iter4745.cmp.not = icmp eq i64 %prol.iter4745.next, %xtraiter4743, !dbg !129729
  br i1 %prol.iter4745.cmp.not, label %.lr.ph.split.split.us.us3154.prol.loopexit, label %.lr.ph.split.split.us.us3154.prol, !dbg !129729, !llvm.loop !124891

.lr.ph.split.split.us.us3154.prol.loopexit:       ; preds = %.lr.ph.split.split.us.us3154.prol, %.lr.ph.split.split.us.us3154.preheader
  %.sroa.0433.03142.us3143.us.unr = phi i64 [ %.sroa.0433.03142.us3143.us.ph, %.lr.ph.split.split.us.us3154.preheader ], [ %i.dnt, %.lr.ph.split.split.us.us3154.prol ]
  %i.dnv = sub i64 %.sroa.0433.03142.us3143.us.ph, %.sroa.7.0.ph.i1447.us, !dbg !129729
  %i.dnw = icmp ugt i64 %i.dnv, -8, !dbg !129729
  br i1 %i.dnw, label %.loopexit2756.us, label %.lr.ph.split.split.us.us3154, !dbg !129729

iter.check4481:                                   ; preds = %.lr.ph.us3149
  %i.dnx = sub i64 %.sroa.7.0.ph.i1447.us, %.sroa.5.0.ph.i1448.us, !dbg !129729 ; 7 uses
  %min.iters.check4461 = icmp ult i64 %i.dnx, 4, !dbg !129729
  br i1 %min.iters.check4461, label %.lr.ph.split.us.us3156.preheader, label %vector.memcheck4453, !dbg !129729

vector.memcheck4453:                              ; preds = %iter.check4481
  %i.dny = shl nuw i64 %.sroa.5.0.ph.i1448.us, 1, !dbg !129729
  %scevgep4454 = getelementptr i8, ptr %i.cub, i64 %i.dny, !dbg !129729
  %i.dnz = shl i64 %.sroa.7.0.ph.i1447.us, 1, !dbg !129729
  %scevgep4455 = getelementptr i8, ptr %i.cub, i64 %i.dnz, !dbg !129729
  %bound04457 = icmp ult ptr %scevgep4454, %scevgep4456, !dbg !129729
  %bound14458 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4455, !dbg !129729
  %found.conflict4459 = and i1 %bound04457, %bound14458, !dbg !129729
  br i1 %found.conflict4459, label %.lr.ph.split.us.us3156.preheader, label %vector.main.loop.iter.check4462

vector.main.loop.iter.check4462:                  ; preds = %vector.memcheck4453
  %min.iters.check4463 = icmp ult i64 %i.dnx, 16, !dbg !129729
  br i1 %min.iters.check4463, label %vec.epilog.ph4485, label %vector.ph4464, !dbg !129729

vector.ph4464:                                    ; preds = %vector.main.loop.iter.check4462
  %i.doa = and i64 %i.dnx, 12
  %n.vec4465 = and i64 %i.dnx, -16                ; 4 uses
  %i.dob = add i64 %.sroa.5.0.ph.i1448.us, %n.vec4465
  %i.doc = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.5.0.ph.i1448.us
  br label %vector.body4469, !dbg !129729

vector.body4469:                                  ; preds = %vector.ph4464, %vector.body4469
  %index4470 = phi i64 [ 0, %vector.ph4464 ], [ %index.next4475, %vector.body4469 ] ; 2 uses
  %i.dod = getelementptr inbounds nuw [2 x i8], ptr %i.doc, i64 %index4470, !dbg !129739 ; 2 uses
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dod, i64 16, !dbg !129740
  store <8 x i16> zeroinitializer, ptr %i.dod, align 2, !dbg !129740, !alias.scope !127219, !noalias !127220
  store <8 x i16> zeroinitializer, ptr %i.doe, align 2, !dbg !129740, !alias.scope !127219, !noalias !127220
  %index.next4475 = add nuw i64 %index4470, 16    ; 2 uses
  %i.dof = icmp eq i64 %index.next4475, %n.vec4465, !dbg !129729
  br i1 %i.dof, label %middle.block4477, label %vector.body4469, !dbg !129729, !llvm.loop !124895

middle.block4477:                                 ; preds = %vector.body4469
  %cmp.n4478 = icmp eq i64 %i.dnx, %n.vec4465, !dbg !129729
  br i1 %cmp.n4478, label %.loopexit2756.us, label %vec.epilog.iter.check4483, !dbg !129729

vec.epilog.iter.check4483:                        ; preds = %middle.block4477
  %min.epilog.iters.check4484 = icmp eq i64 %i.doa, 0
  br i1 %min.epilog.iters.check4484, label %.lr.ph.split.us.us3156.preheader, label %vec.epilog.ph4485, !prof !3686

vec.epilog.ph4485:                                ; preds = %vector.main.loop.iter.check4462, %vec.epilog.iter.check4483
  %vec.epilog.resume.val4479 = phi i64 [ %n.vec4465, %vec.epilog.iter.check4483 ], [ 0, %vector.main.loop.iter.check4462 ]
  %n.vec4486 = and i64 %i.dnx, -4                 ; 3 uses
  %i.dog = add i64 %.sroa.5.0.ph.i1448.us, %n.vec4486
  %i.doh = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.5.0.ph.i1448.us
  br label %vec.epilog.vector.body4490

vec.epilog.vector.body4490:                       ; preds = %vec.epilog.vector.body4490, %vec.epilog.ph4485
  %index4491 = phi i64 [ %vec.epilog.resume.val4479, %vec.epilog.ph4485 ], [ %index.next4495, %vec.epilog.vector.body4490 ] ; 2 uses
  %i.doi = getelementptr inbounds nuw [2 x i8], ptr %i.doh, i64 %index4491, !dbg !129739
  store <4 x i16> zeroinitializer, ptr %i.doi, align 2, !dbg !129740, !alias.scope !127219, !noalias !127220
  %index.next4495 = add nuw i64 %index4491, 4     ; 2 uses
  %i.doj = icmp eq i64 %index.next4495, %n.vec4486, !dbg !129729
  br i1 %i.doj, label %vec.epilog.middle.block4497, label %vec.epilog.vector.body4490, !dbg !129729, !llvm.loop !124896

vec.epilog.middle.block4497:                      ; preds = %vec.epilog.vector.body4490
  %cmp.n4498 = icmp eq i64 %i.dnx, %n.vec4486, !dbg !129729
  br i1 %cmp.n4498, label %.loopexit2756.us, label %.lr.ph.split.us.us3156.preheader, !dbg !129729

.lr.ph.split.us.us3156.preheader:                 ; preds = %iter.check4481, %vector.memcheck4453, %vec.epilog.iter.check4483, %vec.epilog.middle.block4497
  %.sroa.0433.03142.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1448.us, %iter.check4481 ], [ %.sroa.5.0.ph.i1448.us, %vector.memcheck4453 ], [ %i.dob, %vec.epilog.iter.check4483 ], [ %i.dog, %vec.epilog.middle.block4497 ] ; 4 uses
  %i.dok = sub i64 %.sroa.7.0.ph.i1447.us, %.sroa.0433.03142.us.us.ph, !dbg !129729
  %xtraiter4746 = and i64 %i.dok, 7, !dbg !129729 ; 2 uses
  %lcmp.mod4747.not = icmp eq i64 %xtraiter4746, 0, !dbg !129729
  br i1 %lcmp.mod4747.not, label %.lr.ph.split.us.us3156.prol.loopexit, label %.lr.ph.split.us.us3156.prol, !dbg !129729

.lr.ph.split.us.us3156.prol:                      ; preds = %.lr.ph.split.us.us3156.preheader, %.lr.ph.split.us.us3156.prol
  %.sroa.0433.03142.us.us.prol = phi i64 [ %i.don, %.lr.ph.split.us.us3156.prol ], [ %.sroa.0433.03142.us.us.ph, %.lr.ph.split.us.us3156.preheader ] ; 3 uses
  %prol.iter4748 = phi i64 [ %prol.iter4748.next, %.lr.ph.split.us.us3156.prol ], [ 0, %.lr.ph.split.us.us3156.preheader ]
  %i.dol = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dom = icmp ult i64 %.sroa.0433.03142.us.us.prol, %i.dol, !dbg !129732
  call void @llvm.assume(i1 %i.dom), !dbg !129733
  %i.don = add nuw i64 %.sroa.0433.03142.us.us.prol, 1, !dbg !129738 ; 2 uses
  %i.doo = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0433.03142.us.us.prol, !dbg !129739
  store i16 0, ptr %i.doo, align 2, !dbg !129740
  %prol.iter4748.next = add i64 %prol.iter4748, 1, !dbg !129729 ; 2 uses
  %prol.iter4748.cmp.not = icmp eq i64 %prol.iter4748.next, %xtraiter4746, !dbg !129729
  br i1 %prol.iter4748.cmp.not, label %.lr.ph.split.us.us3156.prol.loopexit, label %.lr.ph.split.us.us3156.prol, !dbg !129729, !llvm.loop !124897

.lr.ph.split.us.us3156.prol.loopexit:             ; preds = %.lr.ph.split.us.us3156.prol, %.lr.ph.split.us.us3156.preheader
  %.sroa.0433.03142.us.us.unr = phi i64 [ %.sroa.0433.03142.us.us.ph, %.lr.ph.split.us.us3156.preheader ], [ %i.don, %.lr.ph.split.us.us3156.prol ]
  %i.dop = sub i64 %.sroa.0433.03142.us.us.ph, %.sroa.7.0.ph.i1447.us, !dbg !129729
  %i.doq = icmp ugt i64 %i.dop, -8, !dbg !129729
  br i1 %i.doq, label %.loopexit2756.us, label %.lr.ph.split.us.us3156, !dbg !129729

.lr.ph.split.split.us3151:                        ; preds = %.lr.ph.split.split.us3151.prol.loopexit, %.lr.ph.split.split.us3151
  %.sroa.0433.03142.us3152 = phi i64 [ %i.dpl, %.lr.ph.split.split.us3151 ], [ %.sroa.0433.03142.us3152.unr, %.lr.ph.split.split.us3151.prol.loopexit ] ; 5 uses
  %i.dor = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129730, !noundef !3448
  %i.dos = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dot = icmp ult i64 %.sroa.0433.03142.us3152, %i.dos, !dbg !129732
  call void @llvm.assume(i1 %i.dot), !dbg !129733
  %i.dou = getelementptr inbounds nuw [2 x i8], ptr %i.dor, i64 %.sroa.0433.03142.us3152, !dbg !129734
  %i.dov = load i16, ptr %i.dou, align 2, !dbg !129735, !noundef !3448 ; 2 uses
  %i.dow = srem i16 %i.dov, %i.dmo, !dbg !129736  ; 2 uses
  %.not.i1457.us = icmp eq i16 %i.dow, 0, !dbg !129737
  %i.dox = xor i16 %i.dov, %i.dmo, !dbg !129737
  %i.doy = icmp slt i16 %i.dox, 0, !dbg !129737
  %i.doz = select i1 %i.doy, i16 %i.dmo, i16 0, !dbg !129737
  %spec.select2673.us = add i16 %i.dow, %i.doz, !dbg !129737
  %.sroa.3.0.i1458.us = select i1 %.not.i1457.us, i16 0, i16 %spec.select2673.us, !dbg !129737
  %i.dpa = add nuw i64 %.sroa.0433.03142.us3152, 1, !dbg !129738 ; 3 uses
  %i.dpb = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0433.03142.us3152, !dbg !129739
  store i16 %.sroa.3.0.i1458.us, ptr %i.dpb, align 2, !dbg !129740
  %i.dpc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129730, !noundef !3448
  %i.dpd = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dpe = icmp ult i64 %i.dpa, %i.dpd, !dbg !129732
  call void @llvm.assume(i1 %i.dpe), !dbg !129733
  %i.dpf = getelementptr inbounds nuw [2 x i8], ptr %i.dpc, i64 %i.dpa, !dbg !129734
  %i.dpg = load i16, ptr %i.dpf, align 2, !dbg !129735, !noundef !3448 ; 2 uses
  %i.dph = srem i16 %i.dpg, %i.dmo, !dbg !129736  ; 2 uses
  %.not.i1457.us.1 = icmp eq i16 %i.dph, 0, !dbg !129737
  %i.dpi = xor i16 %i.dpg, %i.dmo, !dbg !129737
  %i.dpj = icmp slt i16 %i.dpi, 0, !dbg !129737
  %i.dpk = select i1 %i.dpj, i16 %i.dmo, i16 0, !dbg !129737
  %spec.select2673.us.1 = add i16 %i.dph, %i.dpk, !dbg !129737
  %.sroa.3.0.i1458.us.1 = select i1 %.not.i1457.us.1, i16 0, i16 %spec.select2673.us.1, !dbg !129737
  %i.dpl = add nuw i64 %.sroa.0433.03142.us3152, 2, !dbg !129738 ; 2 uses
  %i.dpm = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dpa, !dbg !129739
  store i16 %.sroa.3.0.i1458.us.1, ptr %i.dpm, align 2, !dbg !129740
  %exitcond3611.not.1 = icmp eq i64 %i.dpl, %.sroa.7.0.ph.i1447.us, !dbg !129728
  br i1 %exitcond3611.not.1, label %.loopexit2756.us, label %.lr.ph.split.split.us3151, !dbg !129729

.lr.ph.split.split.us.us3154:                     ; preds = %.lr.ph.split.split.us.us3154.prol.loopexit, %.lr.ph.split.split.us.us3154
  %.sroa.0433.03142.us3143.us = phi i64 [ %i.dqr, %.lr.ph.split.split.us.us3154 ], [ %.sroa.0433.03142.us3143.us.unr, %.lr.ph.split.split.us.us3154.prol.loopexit ] ; 10 uses
  %i.dpn = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dpo = icmp ult i64 %.sroa.0433.03142.us3143.us, %i.dpn, !dbg !129732
  call void @llvm.assume(i1 %i.dpo), !dbg !129733
  %i.dpp = add nuw i64 %.sroa.0433.03142.us3143.us, 1, !dbg !129738 ; 2 uses
  %i.dpq = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0433.03142.us3143.us, !dbg !129739
  store i16 0, ptr %i.dpq, align 2, !dbg !129740
  %i.dpr = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dps = icmp ult i64 %i.dpp, %i.dpr, !dbg !129732
  call void @llvm.assume(i1 %i.dps), !dbg !129733
  %i.dpt = add nuw i64 %.sroa.0433.03142.us3143.us, 2, !dbg !129738 ; 2 uses
  %i.dpu = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dpp, !dbg !129739
  store i16 0, ptr %i.dpu, align 2, !dbg !129740
  %i.dpv = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dpw = icmp ult i64 %i.dpt, %i.dpv, !dbg !129732
  call void @llvm.assume(i1 %i.dpw), !dbg !129733
  %i.dpx = add nuw i64 %.sroa.0433.03142.us3143.us, 3, !dbg !129738 ; 2 uses
  %i.dpy = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dpt, !dbg !129739
  store i16 0, ptr %i.dpy, align 2, !dbg !129740
  %i.dpz = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dqa = icmp ult i64 %i.dpx, %i.dpz, !dbg !129732
  call void @llvm.assume(i1 %i.dqa), !dbg !129733
  %i.dqb = add nuw i64 %.sroa.0433.03142.us3143.us, 4, !dbg !129738 ; 2 uses
  %i.dqc = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dpx, !dbg !129739
  store i16 0, ptr %i.dqc, align 2, !dbg !129740
  %i.dqd = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dqe = icmp ult i64 %i.dqb, %i.dqd, !dbg !129732
  call void @llvm.assume(i1 %i.dqe), !dbg !129733
  %i.dqf = add nuw i64 %.sroa.0433.03142.us3143.us, 5, !dbg !129738 ; 2 uses
  %i.dqg = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dqb, !dbg !129739
  store i16 0, ptr %i.dqg, align 2, !dbg !129740
  %i.dqh = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dqi = icmp ult i64 %i.dqf, %i.dqh, !dbg !129732
  call void @llvm.assume(i1 %i.dqi), !dbg !129733
  %i.dqj = add nuw i64 %.sroa.0433.03142.us3143.us, 6, !dbg !129738 ; 2 uses
  %i.dqk = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dqf, !dbg !129739
  store i16 0, ptr %i.dqk, align 2, !dbg !129740
  %i.dql = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dqm = icmp ult i64 %i.dqj, %i.dql, !dbg !129732
  call void @llvm.assume(i1 %i.dqm), !dbg !129733
  %i.dqn = add nuw i64 %.sroa.0433.03142.us3143.us, 7, !dbg !129738 ; 2 uses
  %i.dqo = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dqj, !dbg !129739
  store i16 0, ptr %i.dqo, align 2, !dbg !129740
  %i.dqp = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dqq = icmp ult i64 %i.dqn, %i.dqp, !dbg !129732
  call void @llvm.assume(i1 %i.dqq), !dbg !129733
  %i.dqr = add nuw i64 %.sroa.0433.03142.us3143.us, 8, !dbg !129738 ; 2 uses
  %i.dqs = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dqn, !dbg !129739
  store i16 0, ptr %i.dqs, align 2, !dbg !129740
  %exitcond3608.not.7 = icmp eq i64 %i.dqr, %.sroa.7.0.ph.i1447.us, !dbg !129728
  br i1 %exitcond3608.not.7, label %.loopexit2756.us, label %.lr.ph.split.split.us.us3154, !dbg !129729, !llvm.loop !124898

.lr.ph.split.us.us3156:                           ; preds = %.lr.ph.split.us.us3156.prol.loopexit, %.lr.ph.split.us.us3156
  %.sroa.0433.03142.us.us = phi i64 [ %i.drx, %.lr.ph.split.us.us3156 ], [ %.sroa.0433.03142.us.us.unr, %.lr.ph.split.us.us3156.prol.loopexit ] ; 10 uses
  %i.dqt = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dqu = icmp ult i64 %.sroa.0433.03142.us.us, %i.dqt, !dbg !129732
  call void @llvm.assume(i1 %i.dqu), !dbg !129733
  %i.dqv = add nuw i64 %.sroa.0433.03142.us.us, 1, !dbg !129738 ; 2 uses
  %i.dqw = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0433.03142.us.us, !dbg !129739
  store i16 0, ptr %i.dqw, align 2, !dbg !129740
  %i.dqx = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.dqy = icmp ult i64 %i.dqv, %i.dqx, !dbg !129732
  call void @llvm.assume(i1 %i.dqy), !dbg !129733
  %i.dqz = add nuw i64 %.sroa.0433.03142.us.us, 2, !dbg !129738 ; 2 uses
  %i.dra = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dqv, !dbg !129739
  store i16 0, ptr %i.dra, align 2, !dbg !129740
  %i.drb = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.drc = icmp ult i64 %i.dqz, %i.drb, !dbg !129732
  call void @llvm.assume(i1 %i.drc), !dbg !129733
  %i.drd = add nuw i64 %.sroa.0433.03142.us.us, 3, !dbg !129738 ; 2 uses
  %i.dre = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dqz, !dbg !129739
  store i16 0, ptr %i.dre, align 2, !dbg !129740
  %i.drf = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.drg = icmp ult i64 %i.drd, %i.drf, !dbg !129732
  call void @llvm.assume(i1 %i.drg), !dbg !129733
  %i.drh = add nuw i64 %.sroa.0433.03142.us.us, 4, !dbg !129738 ; 2 uses
  %i.dri = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.drd, !dbg !129739
  store i16 0, ptr %i.dri, align 2, !dbg !129740
  %i.drj = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129731, !noundef !3448
  %i.drk = icmp ult i64 %i.drh, %i.drj, !dbg !129732
end_hunk_7
begin_hunk_8_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes9Int16TypeEBb_:bb.a
  %i.dsg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1469.us, i64 24, !dbg !129750 ; 2 uses
  %i.dsh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1469.us, i64 8, !dbg !129751
  %i.dsi = load ptr, ptr %i.dsh, align 8, !dbg !129751, !noalias !127227, !noundef !3448 ; 2 uses
  %i.dsj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1469.us, i64 16, !dbg !129752
  %i.dsk = load i64, ptr %i.dsj, align 8, !dbg !129752, !noalias !127227, !noundef !3448 ; 4 uses
  %i.dsl = icmp ult i64 %.sroa.02.09.i.i.i1468.us, %i.dsk, !dbg !129753
  br i1 %i.dsl, label %bb.ps, label %.split3139.us.invoke, !dbg !129753

bb.ps:                                            ; preds = %.lr.ph.i.i.i1466.us
  %i.dsm = icmp ult i64 %.sroa.06.010.i.i.i1467.us, %i.dsk, !dbg !129754
  br i1 %i.dsm, label %bb.pt, label %.split3139.us.invoke, !dbg !129754

bb.pt:                                            ; preds = %bb.ps
  %i.dsn = getelementptr inbounds nuw [8 x i8], ptr %i.dsi, i64 %.sroa.02.09.i.i.i1468.us, !dbg !129753
  %i.dso = getelementptr inbounds nuw [8 x i8], ptr %i.dsi, i64 %.sroa.06.010.i.i.i1467.us, !dbg !129754
  %.sroa.02.0.i.i.i1470.us = load i64, ptr %i.dsn, align 8, !dbg !129747, !noalias !127227, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1471.us = load i64, ptr %i.dso, align 8, !dbg !129748, !noalias !127227, !noundef !3448 ; 2 uses
  %i.dsp = icmp eq ptr %i.dsg, %i.dsc, !dbg !129755
  br i1 %i.dsp, label %.loopexit2754.us, label %.lr.ph.i.i.i1466.us, !dbg !129749

.loopexit2754.us:                                 ; preds = %bb.pt, %bb.pr
  %.sroa.7.0.ph.i1473.us = phi i64 [ %.sroa.06.07.i.i.i1465.us, %bb.pr ], [ %.sroa.06.0.i.i.i1471.us, %bb.pt ] ; 2 uses
  %.sroa.5.0.ph.i1474.us = phi i64 [ %.sroa.02.06.i.i.i1464.us, %bb.pr ], [ %.sroa.02.0.i.i.i1470.us, %bb.pt ] ; 2 uses
  %i.dsq = add nuw i64 %.sroa.101826.03164.us, 1, !dbg !129756
  %i.dsr = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !129757, !noundef !3448
  %i.dss = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !129758, !noundef !3448
  %i.dst = icmp ult i64 %.sroa.101826.03164.us, %i.dss, !dbg !129759
  call void @llvm.assume(i1 %i.dst), !dbg !129760
  %i.dsu = getelementptr inbounds nuw [2 x i8], ptr %i.dsr, i64 %.sroa.101826.03164.us, !dbg !129761
  %i.dsv = load i16, ptr %i.dsu, align 2, !dbg !129762, !noundef !3448 ; 2 uses
  %i.dsw = icmp ult i64 %.sroa.5.0.ph.i1474.us, %.sroa.7.0.ph.i1473.us, !dbg !129763
  br i1 %i.dsw, label %.lr.ph.us3168, label %.loopexit2753.us, !dbg !129764

.lr.ph.us3168:                                    ; preds = %.loopexit2754.us, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs8_0Bd_.exit.us
  %.sroa.0431.03163.us = phi i64 [ %i.dtg, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs8_0Bd_.exit.us ], [ %.sroa.5.0.ph.i1474.us, %.loopexit2754.us ] ; 4 uses
  %i.dsx = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129765, !noundef !3448
  %i.dsy = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129766, !noundef !3448
  %i.dsz = icmp ult i64 %.sroa.0431.03163.us, %i.dsy, !dbg !129767
  call void @llvm.assume(i1 %i.dsz), !dbg !129768
  %i.dta = getelementptr inbounds nuw [2 x i8], ptr %i.dsx, i64 %.sroa.0431.03163.us, !dbg !129769
  %i.dtb = load i16, ptr %i.dta, align 2, !dbg !129770, !noundef !3448 ; 4 uses
  %.off.i1482.us = add i16 %i.dtb, -1, !dbg !129771
  %switch.i1483.us = icmp ult i16 %.off.i1482.us, -2, !dbg !129771
  br i1 %switch.i1483.us, label %bb.pu, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs8_0Bd_.exit.us, !dbg !129771, !prof !3642

bb.pu:                                            ; preds = %.lr.ph.us3168
  %i.dtc = srem i16 %i.dsv, %i.dtb, !dbg !129772  ; 2 uses
  %.not.i.i1485.us = icmp eq i16 %i.dtc, 0, !dbg !129773
  br i1 %.not.i.i1485.us, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs8_0Bd_.exit.us, label %bb.pv, !dbg !129773

bb.pv:                                            ; preds = %bb.pu
  %i.dtd = xor i16 %i.dtb, %i.dsv, !dbg !129774
  %i.dte = icmp slt i16 %i.dtd, 0, !dbg !129774
  %i.dtf = select i1 %i.dte, i16 %i.dtb, i16 0, !dbg !129774
  %spec.select.i1486.us = add i16 %i.dtc, %i.dtf, !dbg !129774
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs8_0Bd_.exit.us, !dbg !129774

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs8_0Bd_.exit.us: ; preds = %bb.pv, %bb.pu, %.lr.ph.us3168
  %.sroa.3.0.i.i1484.us = phi i16 [ %spec.select.i1486.us, %bb.pv ], [ 0, %bb.pu ], [ 0, %.lr.ph.us3168 ], !dbg !129775
  %i.dtg = add nuw i64 %.sroa.0431.03163.us, 1, !dbg !129776 ; 2 uses
  %i.dth = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0431.03163.us, !dbg !129777
  store i16 %.sroa.3.0.i.i1484.us, ptr %i.dth, align 2, !dbg !129778
  %exitcond3612.not = icmp eq i64 %i.dtg, %.sroa.7.0.ph.i1473.us, !dbg !129763
  br i1 %exitcond3612.not, label %.loopexit2753.us, label %.lr.ph.us3168, !dbg !129764

.loopexit2753.us:                                 ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int16TypeEs8_0Bd_.exit.us, %.loopexit2754.us
  %i.dti = icmp ult i64 %i.dse, 2, !dbg !129743
  br i1 %i.dti, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %bb.pr, !dbg !129743

.lr.ph3167.split:                                 ; preds = %.lr.ph3167
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0154.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !127225), !dbg !129746
  br label %.lr.ph3134.split.invoke, !dbg !129779

bb.pw:                                            ; preds = %bb.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !127343
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.py unwind label %bb.ro, !dbg !127343

bb.px:                                            ; preds = %bb.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !127343
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.qc unwind label %bb.ro, !dbg !127343

bb.py:                                            ; preds = %bb.pw
  %.sroa.0166.sroa.0.0.copyload = load ptr, ptr %i.co, align 8, !dbg !129780 ; 2 uses
  %.sroa.0166.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !129780
  %.sroa.0166.sroa.2.0.copyload = load i64, ptr %.sroa.0166.sroa.2.0..sroa_idx, align 8, !dbg !129780 ; 2 uses
  %.sroa.0166.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16, !dbg !129780
  %.sroa.0166.sroa.3.0.copyload = load i64, ptr %.sroa.0166.sroa.3.0..sroa_idx, align 8, !dbg !129780 ; 2 uses
  %.sroa.0166.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24, !dbg !129780
  %.sroa.0166.sroa.4.0.copyload = load ptr, ptr %.sroa.0166.sroa.4.0..sroa_idx, align 8, !dbg !129780 ; 3 uses
  %.sroa.0166.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 32, !dbg !129780
  %.sroa.0166.sroa.5.0.copyload = load i64, ptr %.sroa.0166.sroa.5.0..sroa_idx, align 8, !dbg !129780 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !129485
  %i.dtj = icmp ugt i64 %.sroa.0166.sroa.3.0.copyload, %.sroa.0166.sroa.2.0.copyload, !dbg !129781
  br i1 %i.dtj, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %.lr.ph3114, !dbg !129781

.lr.ph3114:                                       ; preds = %bb.py
  %i.dtk = icmp eq i64 %.sroa.0166.sroa.3.0.copyload, 2
  %.idx.i.i.i1489 = mul nuw nsw i64 %.sroa.0166.sroa.5.0.copyload, 24
  %i.dtl = getelementptr inbounds nuw i8, ptr %.sroa.0166.sroa.4.0.copyload, i64 %.idx.i.i.i1489
  %i.dtm = icmp eq i64 %.sroa.0166.sroa.5.0.copyload, 0
  br i1 %i.dtk, label %.lr.ph3114.split.us, label %.lr.ph3114.split, !prof !3552

.lr.ph3114.split.us:                              ; preds = %.lr.ph3114
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.sroa.4.0.copyload) ]
  %scevgep4416 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !129781
  br label %bb.pz, !dbg !129781

bb.pz:                                            ; preds = %.loopexit2762.us, %.lr.ph3114.split.us
  %.sroa.01851.03113.us = phi ptr [ %.sroa.0166.sroa.0.0.copyload, %.lr.ph3114.split.us ], [ %i.dto, %.loopexit2762.us ] ; 3 uses
  %.sroa.51852.03112.us = phi i64 [ %.sroa.0166.sroa.2.0.copyload, %.lr.ph3114.split.us ], [ %i.dtn, %.loopexit2762.us ]
  %.sroa.101856.03111.us = phi i64 [ 0, %.lr.ph3114.split.us ], [ %i.dtz, %.loopexit2762.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01851.03113.us) ]
  %i.dtn = add i64 %.sroa.51852.03112.us, -1, !dbg !129782 ; 2 uses
  %i.dto = getelementptr inbounds nuw i8, ptr %.sroa.01851.03113.us, i64 8, !dbg !129783 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127265), !dbg !129784
  %.sroa.02.06.i.i.i1490.us = load i64, ptr %.sroa.01851.03113.us, align 8, !dbg !129785, !alias.scope !127265, !noalias !127266, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1491.us = load i64, ptr %i.dto, align 8, !dbg !129786, !alias.scope !127265, !noalias !127266, !noundef !3448 ; 2 uses
  br i1 %i.dtm, label %.loopexit2763.us, label %.lr.ph.i.i.i1492.us, !dbg !129787

.lr.ph.i.i.i1492.us:                              ; preds = %bb.pz, %bb.qb
  %.sroa.06.010.i.i.i1493.us = phi i64 [ %.sroa.06.0.i.i.i1497.us, %bb.qb ], [ %.sroa.06.07.i.i.i1491.us, %bb.pz ] ; 3 uses
  %.sroa.02.09.i.i.i1494.us = phi i64 [ %.sroa.02.0.i.i.i1496.us, %bb.qb ], [ %.sroa.02.06.i.i.i1490.us, %bb.pz ] ; 3 uses
  %.sroa.0.08.i.i.i1495.us = phi ptr [ %i.dtp, %bb.qb ], [ %.sroa.0166.sroa.4.0.copyload, %bb.pz ] ; 3 uses
  %i.dtp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1495.us, i64 24, !dbg !129788 ; 2 uses
  %i.dtq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1495.us, i64 8, !dbg !129789
  %i.dtr = load ptr, ptr %i.dtq, align 8, !dbg !129789, !noalias !127267, !noundef !3448 ; 2 uses
  %i.dts = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1495.us, i64 16, !dbg !129790
  %i.dtt = load i64, ptr %i.dts, align 8, !dbg !129790, !noalias !127267, !noundef !3448 ; 4 uses
  %i.dtu = icmp ult i64 %.sroa.02.09.i.i.i1494.us, %i.dtt, !dbg !129791
  br i1 %i.dtu, label %bb.qa, label %.split3139.us.invoke, !dbg !129791

bb.qa:                                            ; preds = %.lr.ph.i.i.i1492.us
  %i.dtv = icmp ult i64 %.sroa.06.010.i.i.i1493.us, %i.dtt, !dbg !129792
  br i1 %i.dtv, label %bb.qb, label %.split3139.us.invoke, !dbg !129792

bb.qb:                                            ; preds = %bb.qa
  %i.dtw = getelementptr inbounds nuw [8 x i8], ptr %i.dtr, i64 %.sroa.02.09.i.i.i1494.us, !dbg !129791
  %i.dtx = getelementptr inbounds nuw [8 x i8], ptr %i.dtr, i64 %.sroa.06.010.i.i.i1493.us, !dbg !129792
  %.sroa.02.0.i.i.i1496.us = load i64, ptr %i.dtw, align 8, !dbg !129785, !noalias !127267, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1497.us = load i64, ptr %i.dtx, align 8, !dbg !129786, !noalias !127267, !noundef !3448 ; 2 uses
  %i.dty = icmp eq ptr %i.dtp, %i.dtl, !dbg !129793
  br i1 %i.dty, label %.loopexit2763.us, label %.lr.ph.i.i.i1492.us, !dbg !129787

.loopexit2763.us:                                 ; preds = %bb.qb, %bb.pz
  %.sroa.7.0.ph.i1499.us = phi i64 [ %.sroa.06.07.i.i.i1491.us, %bb.pz ], [ %.sroa.06.0.i.i.i1497.us, %bb.qb ] ; 10 uses
  %.sroa.5.0.ph.i1500.us = phi i64 [ %.sroa.02.06.i.i.i1490.us, %bb.pz ], [ %.sroa.02.0.i.i.i1496.us, %bb.qb ] ; 14 uses
  %i.dtz = add nuw i64 %.sroa.101856.03111.us, 1, !dbg !129794
  %i.dua = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !129795, !noundef !3448
  %i.dub = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !129796, !noundef !3448
  %i.duc = icmp ult i64 %.sroa.101856.03111.us, %i.dub, !dbg !129797
  call void @llvm.assume(i1 %i.duc), !dbg !129798
  %i.dud = getelementptr inbounds nuw [2 x i8], ptr %i.dua, i64 %.sroa.101856.03111.us, !dbg !129799
  %i.due = load i16, ptr %i.dud, align 2, !dbg !129800, !noundef !3448 ; 4 uses
  %i.duf = icmp ult i64 %.sroa.5.0.ph.i1500.us, %.sroa.7.0.ph.i1499.us, !dbg !129801
  br i1 %i.duf, label %.lr.ph.us3115, label %.loopexit2762.us, !dbg !129802

.lr.ph.us3115:                                    ; preds = %.loopexit2763.us
  switch i16 %i.due, label %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i1508.us3118 [
    i16 0, label %iter.check4434
    i16 -1, label %.lr.ph.split.split.us.us3121.preheader
  ], !prof !3668

.lr.ph.split.split.us.us3121.preheader:           ; preds = %.lr.ph.us3115
  %i.dug = sub i64 %.sroa.7.0.ph.i1499.us, %.sroa.5.0.ph.i1500.us, !dbg !129802
  %xtraiter = and i64 %i.dug, 3, !dbg !129802     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !129802
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.us3121.prol.loopexit, label %.lr.ph.split.split.us.us3121.prol, !dbg !129802

.lr.ph.split.split.us.us3121.prol:                ; preds = %.lr.ph.split.split.us.us3121.preheader, %.lr.ph.split.split.us.us3121.prol
  %.sroa.0437.03108.us3109.us.prol = phi i64 [ %i.dun, %.lr.ph.split.split.us.us3121.prol ], [ %.sroa.5.0.ph.i1500.us, %.lr.ph.split.split.us.us3121.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.split.us.us3121.prol ], [ 0, %.lr.ph.split.split.us.us3121.preheader ]
  %i.duh = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129803, !noundef !3448
  %i.dui = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.duj = icmp ult i64 %.sroa.0437.03108.us3109.us.prol, %i.dui, !dbg !129805
  call void @llvm.assume(i1 %i.duj), !dbg !129806
  %i.duk = getelementptr inbounds nuw [2 x i8], ptr %i.duh, i64 %.sroa.0437.03108.us3109.us.prol, !dbg !129807
  %i.dul = load i16, ptr %i.duk, align 2, !dbg !129808, !noundef !3448
  %i.dum = sub i16 0, %i.dul
  %i.dun = add nuw i64 %.sroa.0437.03108.us3109.us.prol, 1, !dbg !129809 ; 2 uses
  %i.duo = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0437.03108.us3109.us.prol, !dbg !129810
  store i16 %i.dum, ptr %i.duo, align 2, !dbg !129811
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !129802 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !129802
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.us.us3121.prol.loopexit, label %.lr.ph.split.split.us.us3121.prol, !dbg !129802, !llvm.loop !124966

.lr.ph.split.split.us.us3121.prol.loopexit:       ; preds = %.lr.ph.split.split.us.us3121.prol, %.lr.ph.split.split.us.us3121.preheader
  %.sroa.0437.03108.us3109.us.unr = phi i64 [ %.sroa.5.0.ph.i1500.us, %.lr.ph.split.split.us.us3121.preheader ], [ %i.dun, %.lr.ph.split.split.us.us3121.prol ]
  %i.dup = sub i64 %.sroa.5.0.ph.i1500.us, %.sroa.7.0.ph.i1499.us, !dbg !129802
  %i.duq = icmp ugt i64 %i.dup, -4, !dbg !129802
  br i1 %i.duq, label %.loopexit2762.us, label %.lr.ph.split.split.us.us3121, !dbg !129802

iter.check4434:                                   ; preds = %.lr.ph.us3115
  %i.dur = sub i64 %.sroa.7.0.ph.i1499.us, %.sroa.5.0.ph.i1500.us, !dbg !129802 ; 7 uses
  %min.iters.check4418 = icmp ult i64 %i.dur, 4, !dbg !129802
  br i1 %min.iters.check4418, label %.lr.ph.split.us.us3123.preheader, label %vector.memcheck, !dbg !129802

vector.memcheck:                                  ; preds = %iter.check4434
  %i.dus = shl nuw i64 %.sroa.5.0.ph.i1500.us, 1, !dbg !129802
  %scevgep = getelementptr i8, ptr %i.cub, i64 %i.dus, !dbg !129802
  %i.dut = shl i64 %.sroa.7.0.ph.i1499.us, 1, !dbg !129802
  %scevgep4415 = getelementptr i8, ptr %i.cub, i64 %i.dut, !dbg !129802
  %bound0 = icmp ult ptr %scevgep, %scevgep4416, !dbg !129802
  %bound1 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4415, !dbg !129802
  %found.conflict = and i1 %bound0, %bound1, !dbg !129802
  br i1 %found.conflict, label %.lr.ph.split.us.us3123.preheader, label %vector.main.loop.iter.check4419

vector.main.loop.iter.check4419:                  ; preds = %vector.memcheck
  %min.iters.check4420 = icmp ult i64 %i.dur, 16, !dbg !129802
  br i1 %min.iters.check4420, label %vec.epilog.ph4438, label %vector.ph4421, !dbg !129802

vector.ph4421:                                    ; preds = %vector.main.loop.iter.check4419
  %i.duu = and i64 %i.dur, 12
  %n.vec4422 = and i64 %i.dur, -16                ; 4 uses
  %i.duv = add i64 %.sroa.5.0.ph.i1500.us, %n.vec4422
  %i.duw = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.5.0.ph.i1500.us
  br label %vector.body4425, !dbg !129802

vector.body4425:                                  ; preds = %vector.ph4421, %vector.body4425
  %index4426 = phi i64 [ 0, %vector.ph4421 ], [ %index.next4429, %vector.body4425 ] ; 2 uses
  %i.dux = getelementptr inbounds nuw [2 x i8], ptr %i.duw, i64 %index4426, !dbg !129810 ; 2 uses
  %i.duy = getelementptr inbounds nuw i8, ptr %i.dux, i64 16, !dbg !129811
  store <8 x i16> zeroinitializer, ptr %i.dux, align 2, !dbg !129811, !alias.scope !127301, !noalias !127302
  store <8 x i16> zeroinitializer, ptr %i.duy, align 2, !dbg !129811, !alias.scope !127301, !noalias !127302
  %index.next4429 = add nuw i64 %index4426, 16    ; 2 uses
  %i.duz = icmp eq i64 %index.next4429, %n.vec4422, !dbg !129802
  br i1 %i.duz, label %middle.block4430, label %vector.body4425, !dbg !129802, !llvm.loop !124970

middle.block4430:                                 ; preds = %vector.body4425
  %cmp.n4431 = icmp eq i64 %i.dur, %n.vec4422, !dbg !129802
  br i1 %cmp.n4431, label %.loopexit2762.us, label %vec.epilog.iter.check4436, !dbg !129802

vec.epilog.iter.check4436:                        ; preds = %middle.block4430
  %min.epilog.iters.check4437 = icmp eq i64 %i.duu, 0
  br i1 %min.epilog.iters.check4437, label %.lr.ph.split.us.us3123.preheader, label %vec.epilog.ph4438, !prof !3686

vec.epilog.ph4438:                                ; preds = %vector.main.loop.iter.check4419, %vec.epilog.iter.check4436
  %vec.epilog.resume.val4432 = phi i64 [ %n.vec4422, %vec.epilog.iter.check4436 ], [ 0, %vector.main.loop.iter.check4419 ]
  %n.vec4439 = and i64 %i.dur, -4                 ; 3 uses
  %i.dva = add i64 %.sroa.5.0.ph.i1500.us, %n.vec4439
  %i.dvb = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.5.0.ph.i1500.us
  br label %vec.epilog.vector.body4443

vec.epilog.vector.body4443:                       ; preds = %vec.epilog.vector.body4443, %vec.epilog.ph4438
  %index4444 = phi i64 [ %vec.epilog.resume.val4432, %vec.epilog.ph4438 ], [ %index.next4448, %vec.epilog.vector.body4443 ] ; 2 uses
  %i.dvc = getelementptr inbounds nuw [2 x i8], ptr %i.dvb, i64 %index4444, !dbg !129810
  store <4 x i16> zeroinitializer, ptr %i.dvc, align 2, !dbg !129811, !alias.scope !127301, !noalias !127302
  %index.next4448 = add nuw i64 %index4444, 4     ; 2 uses
  %i.dvd = icmp eq i64 %index.next4448, %n.vec4439, !dbg !129802
  br i1 %i.dvd, label %vec.epilog.middle.block4450, label %vec.epilog.vector.body4443, !dbg !129802, !llvm.loop !124971

vec.epilog.middle.block4450:                      ; preds = %vec.epilog.vector.body4443
  %cmp.n4451 = icmp eq i64 %i.dur, %n.vec4439, !dbg !129802
  br i1 %cmp.n4451, label %.loopexit2762.us, label %.lr.ph.split.us.us3123.preheader, !dbg !129802

.lr.ph.split.us.us3123.preheader:                 ; preds = %iter.check4434, %vector.memcheck, %vec.epilog.iter.check4436, %vec.epilog.middle.block4450
  %.sroa.0437.03108.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1500.us, %iter.check4434 ], [ %.sroa.5.0.ph.i1500.us, %vector.memcheck ], [ %i.duv, %vec.epilog.iter.check4436 ], [ %i.dva, %vec.epilog.middle.block4450 ] ; 4 uses
  %i.dve = sub i64 %.sroa.7.0.ph.i1499.us, %.sroa.0437.03108.us.us.ph, !dbg !129802
  %xtraiter4740 = and i64 %i.dve, 7, !dbg !129802 ; 2 uses
  %lcmp.mod4741.not = icmp eq i64 %xtraiter4740, 0, !dbg !129802
  br i1 %lcmp.mod4741.not, label %.lr.ph.split.us.us3123.prol.loopexit, label %.lr.ph.split.us.us3123.prol, !dbg !129802

.lr.ph.split.us.us3123.prol:                      ; preds = %.lr.ph.split.us.us3123.preheader, %.lr.ph.split.us.us3123.prol
  %.sroa.0437.03108.us.us.prol = phi i64 [ %i.dvh, %.lr.ph.split.us.us3123.prol ], [ %.sroa.0437.03108.us.us.ph, %.lr.ph.split.us.us3123.preheader ] ; 3 uses
  %prol.iter4742 = phi i64 [ %prol.iter4742.next, %.lr.ph.split.us.us3123.prol ], [ 0, %.lr.ph.split.us.us3123.preheader ]
  %i.dvf = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dvg = icmp ult i64 %.sroa.0437.03108.us.us.prol, %i.dvf, !dbg !129805
  call void @llvm.assume(i1 %i.dvg), !dbg !129806
  %i.dvh = add nuw i64 %.sroa.0437.03108.us.us.prol, 1, !dbg !129809 ; 2 uses
  %i.dvi = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0437.03108.us.us.prol, !dbg !129810
  store i16 0, ptr %i.dvi, align 2, !dbg !129811
  %prol.iter4742.next = add i64 %prol.iter4742, 1, !dbg !129802 ; 2 uses
  %prol.iter4742.cmp.not = icmp eq i64 %prol.iter4742.next, %xtraiter4740, !dbg !129802
  br i1 %prol.iter4742.cmp.not, label %.lr.ph.split.us.us3123.prol.loopexit, label %.lr.ph.split.us.us3123.prol, !dbg !129802, !llvm.loop !124972

.lr.ph.split.us.us3123.prol.loopexit:             ; preds = %.lr.ph.split.us.us3123.prol, %.lr.ph.split.us.us3123.preheader
  %.sroa.0437.03108.us.us.unr = phi i64 [ %.sroa.0437.03108.us.us.ph, %.lr.ph.split.us.us3123.preheader ], [ %i.dvh, %.lr.ph.split.us.us3123.prol ]
  %i.dvj = sub i64 %.sroa.0437.03108.us.us.ph, %.sroa.7.0.ph.i1499.us, !dbg !129802
  %i.dvk = icmp ugt i64 %i.dvj, -8, !dbg !129802
  br i1 %i.dvk, label %.loopexit2762.us, label %.lr.ph.split.us.us3123, !dbg !129802

_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i1508.us3118: ; preds = %.lr.ph.us3115, %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i1508.us3118
  %.sroa.0437.03108.us3119 = phi i64 [ %i.dvv, %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i1508.us3118 ], [ %.sroa.5.0.ph.i1500.us, %.lr.ph.us3115 ] ; 4 uses
  %i.dvl = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129803, !noundef !3448
  %i.dvm = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dvn = icmp ult i64 %.sroa.0437.03108.us3119, %i.dvm, !dbg !129805
  call void @llvm.assume(i1 %i.dvn), !dbg !129806
  %i.dvo = getelementptr inbounds nuw [2 x i8], ptr %i.dvl, i64 %.sroa.0437.03108.us3119, !dbg !129807
  %i.dvp = load i16, ptr %i.dvo, align 2, !dbg !129808, !noundef !3448 ; 3 uses
  %i.dvq = sdiv i16 %i.dvp, %i.due, !dbg !129812
  %i.dvr = srem i16 %i.dvp, %i.due, !dbg !129813
  %.not.i1509.us = icmp ne i16 %i.dvr, 0, !dbg !129814
  %i.dvs = xor i16 %i.dvp, %i.due
  %i.dvt = icmp slt i16 %i.dvs, 0
  %or.cond2675.us = and i1 %i.dvt, %.not.i1509.us, !dbg !129814
  %i.dvu = sext i1 %or.cond2675.us to i16, !dbg !129814
  %spec.select2683.us = add i16 %i.dvq, %i.dvu, !dbg !129814
  %i.dvv = add nuw i64 %.sroa.0437.03108.us3119, 1, !dbg !129809 ; 2 uses
  %i.dvw = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0437.03108.us3119, !dbg !129810
  store i16 %spec.select2683.us, ptr %i.dvw, align 2, !dbg !129811
  %exitcond3605.not = icmp eq i64 %i.dvv, %.sroa.7.0.ph.i1499.us, !dbg !129801
  br i1 %exitcond3605.not, label %.loopexit2762.us, label %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i1508.us3118, !dbg !129802

.lr.ph.split.split.us.us3121:                     ; preds = %.lr.ph.split.split.us.us3121.prol.loopexit, %.lr.ph.split.split.us.us3121
  %.sroa.0437.03108.us3109.us = phi i64 [ %i.dxb, %.lr.ph.split.split.us.us3121 ], [ %.sroa.0437.03108.us3109.us.unr, %.lr.ph.split.split.us.us3121.prol.loopexit ] ; 7 uses
  %i.dvx = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129803, !noundef !3448
  %i.dvy = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dvz = icmp ult i64 %.sroa.0437.03108.us3109.us, %i.dvy, !dbg !129805
  call void @llvm.assume(i1 %i.dvz), !dbg !129806
  %i.dwa = getelementptr inbounds nuw [2 x i8], ptr %i.dvx, i64 %.sroa.0437.03108.us3109.us, !dbg !129807
  %i.dwb = load i16, ptr %i.dwa, align 2, !dbg !129808, !noundef !3448
  %i.dwc = sub i16 0, %i.dwb
  %i.dwd = add nuw i64 %.sroa.0437.03108.us3109.us, 1, !dbg !129809 ; 3 uses
  %i.dwe = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0437.03108.us3109.us, !dbg !129810
  store i16 %i.dwc, ptr %i.dwe, align 2, !dbg !129811
  %i.dwf = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129803, !noundef !3448
  %i.dwg = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dwh = icmp ult i64 %i.dwd, %i.dwg, !dbg !129805
  call void @llvm.assume(i1 %i.dwh), !dbg !129806
  %i.dwi = getelementptr inbounds nuw [2 x i8], ptr %i.dwf, i64 %i.dwd, !dbg !129807
  %i.dwj = load i16, ptr %i.dwi, align 2, !dbg !129808, !noundef !3448
  %i.dwk = sub i16 0, %i.dwj
  %i.dwl = add nuw i64 %.sroa.0437.03108.us3109.us, 2, !dbg !129809 ; 3 uses
  %i.dwm = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dwd, !dbg !129810
  store i16 %i.dwk, ptr %i.dwm, align 2, !dbg !129811
  %i.dwn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129803, !noundef !3448
  %i.dwo = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dwp = icmp ult i64 %i.dwl, %i.dwo, !dbg !129805
  call void @llvm.assume(i1 %i.dwp), !dbg !129806
  %i.dwq = getelementptr inbounds nuw [2 x i8], ptr %i.dwn, i64 %i.dwl, !dbg !129807
  %i.dwr = load i16, ptr %i.dwq, align 2, !dbg !129808, !noundef !3448
  %i.dws = sub i16 0, %i.dwr
  %i.dwt = add nuw i64 %.sroa.0437.03108.us3109.us, 3, !dbg !129809 ; 3 uses
  %i.dwu = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dwl, !dbg !129810
  store i16 %i.dws, ptr %i.dwu, align 2, !dbg !129811
  %i.dwv = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !129803, !noundef !3448
  %i.dww = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dwx = icmp ult i64 %i.dwt, %i.dww, !dbg !129805
  call void @llvm.assume(i1 %i.dwx), !dbg !129806
  %i.dwy = getelementptr inbounds nuw [2 x i8], ptr %i.dwv, i64 %i.dwt, !dbg !129807
  %i.dwz = load i16, ptr %i.dwy, align 2, !dbg !129808, !noundef !3448
  %i.dxa = sub i16 0, %i.dwz
  %i.dxb = add nuw i64 %.sroa.0437.03108.us3109.us, 4, !dbg !129809 ; 2 uses
  %i.dxc = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dwt, !dbg !129810
  store i16 %i.dxa, ptr %i.dxc, align 2, !dbg !129811
  %exitcond3602.not.3 = icmp eq i64 %i.dxb, %.sroa.7.0.ph.i1499.us, !dbg !129801
  br i1 %exitcond3602.not.3, label %.loopexit2762.us, label %.lr.ph.split.split.us.us3121, !dbg !129802

.lr.ph.split.us.us3123:                           ; preds = %.lr.ph.split.us.us3123.prol.loopexit, %.lr.ph.split.us.us3123
  %.sroa.0437.03108.us.us = phi i64 [ %i.dyh, %.lr.ph.split.us.us3123 ], [ %.sroa.0437.03108.us.us.unr, %.lr.ph.split.us.us3123.prol.loopexit ] ; 10 uses
  %i.dxd = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dxe = icmp ult i64 %.sroa.0437.03108.us.us, %i.dxd, !dbg !129805
  call void @llvm.assume(i1 %i.dxe), !dbg !129806
  %i.dxf = add nuw i64 %.sroa.0437.03108.us.us, 1, !dbg !129809 ; 2 uses
  %i.dxg = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %.sroa.0437.03108.us.us, !dbg !129810
  store i16 0, ptr %i.dxg, align 2, !dbg !129811
  %i.dxh = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dxi = icmp ult i64 %i.dxf, %i.dxh, !dbg !129805
  call void @llvm.assume(i1 %i.dxi), !dbg !129806
  %i.dxj = add nuw i64 %.sroa.0437.03108.us.us, 2, !dbg !129809 ; 2 uses
  %i.dxk = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dxf, !dbg !129810
  store i16 0, ptr %i.dxk, align 2, !dbg !129811
  %i.dxl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dxm = icmp ult i64 %i.dxj, %i.dxl, !dbg !129805
  call void @llvm.assume(i1 %i.dxm), !dbg !129806
  %i.dxn = add nuw i64 %.sroa.0437.03108.us.us, 3, !dbg !129809 ; 2 uses
  %i.dxo = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dxj, !dbg !129810
  store i16 0, ptr %i.dxo, align 2, !dbg !129811
  %i.dxp = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dxq = icmp ult i64 %i.dxn, %i.dxp, !dbg !129805
  call void @llvm.assume(i1 %i.dxq), !dbg !129806
  %i.dxr = add nuw i64 %.sroa.0437.03108.us.us, 4, !dbg !129809 ; 2 uses
  %i.dxs = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dxn, !dbg !129810
  store i16 0, ptr %i.dxs, align 2, !dbg !129811
  %i.dxt = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dxu = icmp ult i64 %i.dxr, %i.dxt, !dbg !129805
  call void @llvm.assume(i1 %i.dxu), !dbg !129806
  %i.dxv = add nuw i64 %.sroa.0437.03108.us.us, 5, !dbg !129809 ; 2 uses
  %i.dxw = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dxr, !dbg !129810
  store i16 0, ptr %i.dxw, align 2, !dbg !129811
  %i.dxx = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dxy = icmp ult i64 %i.dxv, %i.dxx, !dbg !129805
  call void @llvm.assume(i1 %i.dxy), !dbg !129806
  %i.dxz = add nuw i64 %.sroa.0437.03108.us.us, 6, !dbg !129809 ; 2 uses
  %i.dya = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dxv, !dbg !129810
  store i16 0, ptr %i.dya, align 2, !dbg !129811
  %i.dyb = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dyc = icmp ult i64 %i.dxz, %i.dyb, !dbg !129805
  call void @llvm.assume(i1 %i.dyc), !dbg !129806
  %i.dyd = add nuw i64 %.sroa.0437.03108.us.us, 7, !dbg !129809 ; 2 uses
  %i.dye = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dxz, !dbg !129810
  store i16 0, ptr %i.dye, align 2, !dbg !129811
  %i.dyf = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !129804, !noundef !3448
  %i.dyg = icmp ult i64 %i.dyd, %i.dyf, !dbg !129805
  call void @llvm.assume(i1 %i.dyg), !dbg !129806
  %i.dyh = add nuw i64 %.sroa.0437.03108.us.us, 8, !dbg !129809 ; 2 uses
  %i.dyi = getelementptr inbounds nuw [2 x i8], ptr %i.cub, i64 %i.dyd, !dbg !129810
  store i16 0, ptr %i.dyi, align 2, !dbg !129811
  %exitcond3604.not.7 = icmp eq i64 %i.dyh, %.sroa.7.0.ph.i1499.us, !dbg !129801
end_hunk_8
begin_hunk_9_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes9Int32TypeEBb_:bb.a
  %i.dcd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136901, !noundef !3448
  %i.dce = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136902, !noundef !3448
  %i.dcf = icmp ult i64 %.sroa.0425.03209.us.prol, %i.dce, !dbg !136903
  call void @llvm.assume(i1 %i.dcf), !dbg !136904
  %i.dcg = getelementptr inbounds nuw [4 x i8], ptr %i.dcd, i64 %.sroa.0425.03209.us.prol, !dbg !136905
  %i.dch = load i32, ptr %i.dcg, align 4, !dbg !136906, !noundef !3448
  %i.dci = mul i32 %i.dch, %i.dca, !dbg !136907
  %i.dcj = add nuw i64 %.sroa.0425.03209.us.prol, 1, !dbg !136908 ; 2 uses
  %i.dck = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0425.03209.us.prol, !dbg !136909
  store i32 %i.dci, ptr %i.dck, align 4, !dbg !136910
  %prol.iter4587.next = add i64 %prol.iter4587, 1, !dbg !136900 ; 2 uses
  %prol.iter4587.cmp.not = icmp eq i64 %prol.iter4587.next, %xtraiter4585, !dbg !136900
  br i1 %prol.iter4587.cmp.not, label %.lr.ph.us3214.prol.loopexit, label %.lr.ph.us3214.prol, !dbg !136900, !llvm.loop !132052

.lr.ph.us3214.prol.loopexit:                      ; preds = %.lr.ph.us3214.prol, %.lr.ph.us3214.preheader
  %.sroa.0425.03209.us.unr = phi i64 [ %.sroa.5.0.ph.i1375.us, %.lr.ph.us3214.preheader ], [ %i.dcj, %.lr.ph.us3214.prol ]
  %i.dcl = sub i64 %.sroa.5.0.ph.i1375.us, %.sroa.7.0.ph.i1374.us, !dbg !136900
  %i.dcm = icmp ugt i64 %i.dcl, -4, !dbg !136900
  br i1 %i.dcm, label %.loopexit2744.us, label %.lr.ph.us3214, !dbg !136900

.lr.ph.us3214:                                    ; preds = %.lr.ph.us3214.prol.loopexit, %.lr.ph.us3214
  %.sroa.0425.03209.us = phi i64 [ %i.ddr, %.lr.ph.us3214 ], [ %.sroa.0425.03209.us.unr, %.lr.ph.us3214.prol.loopexit ] ; 7 uses
  %i.dcn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136901, !noundef !3448
  %i.dco = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136902, !noundef !3448
  %i.dcp = icmp ult i64 %.sroa.0425.03209.us, %i.dco, !dbg !136903
  call void @llvm.assume(i1 %i.dcp), !dbg !136904
  %i.dcq = getelementptr inbounds nuw [4 x i8], ptr %i.dcn, i64 %.sroa.0425.03209.us, !dbg !136905
  %i.dcr = load i32, ptr %i.dcq, align 4, !dbg !136906, !noundef !3448
  %i.dcs = mul i32 %i.dcr, %i.dca, !dbg !136907
  %i.dct = add nuw i64 %.sroa.0425.03209.us, 1, !dbg !136908 ; 3 uses
  %i.dcu = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0425.03209.us, !dbg !136909
  store i32 %i.dcs, ptr %i.dcu, align 4, !dbg !136910
  %i.dcv = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136901, !noundef !3448
  %i.dcw = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136902, !noundef !3448
  %i.dcx = icmp ult i64 %i.dct, %i.dcw, !dbg !136903
  call void @llvm.assume(i1 %i.dcx), !dbg !136904
  %i.dcy = getelementptr inbounds nuw [4 x i8], ptr %i.dcv, i64 %i.dct, !dbg !136905
  %i.dcz = load i32, ptr %i.dcy, align 4, !dbg !136906, !noundef !3448
  %i.dda = mul i32 %i.dcz, %i.dca, !dbg !136907
  %i.ddb = add nuw i64 %.sroa.0425.03209.us, 2, !dbg !136908 ; 3 uses
  %i.ddc = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dct, !dbg !136909
  store i32 %i.dda, ptr %i.ddc, align 4, !dbg !136910
  %i.ddd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136901, !noundef !3448
  %i.dde = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136902, !noundef !3448
  %i.ddf = icmp ult i64 %i.ddb, %i.dde, !dbg !136903
  call void @llvm.assume(i1 %i.ddf), !dbg !136904
  %i.ddg = getelementptr inbounds nuw [4 x i8], ptr %i.ddd, i64 %i.ddb, !dbg !136905
  %i.ddh = load i32, ptr %i.ddg, align 4, !dbg !136906, !noundef !3448
  %i.ddi = mul i32 %i.ddh, %i.dca, !dbg !136907
  %i.ddj = add nuw i64 %.sroa.0425.03209.us, 3, !dbg !136908 ; 3 uses
  %i.ddk = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.ddb, !dbg !136909
  store i32 %i.ddi, ptr %i.ddk, align 4, !dbg !136910
  %i.ddl = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136901, !noundef !3448
  %i.ddm = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136902, !noundef !3448
  %i.ddn = icmp ult i64 %i.ddj, %i.ddm, !dbg !136903
  call void @llvm.assume(i1 %i.ddn), !dbg !136904
  %i.ddo = getelementptr inbounds nuw [4 x i8], ptr %i.ddl, i64 %i.ddj, !dbg !136905
  %i.ddp = load i32, ptr %i.ddo, align 4, !dbg !136906, !noundef !3448
  %i.ddq = mul i32 %i.ddp, %i.dca, !dbg !136907
  %i.ddr = add nuw i64 %.sroa.0425.03209.us, 4, !dbg !136908 ; 2 uses
  %i.dds = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.ddj, !dbg !136909
  store i32 %i.ddq, ptr %i.dds, align 4, !dbg !136910
  %exitcond3618.not.3 = icmp eq i64 %i.ddr, %.sroa.7.0.ph.i1374.us, !dbg !136899
  br i1 %exitcond3618.not.3, label %.loopexit2744.us, label %.lr.ph.us3214, !dbg !136900

.loopexit2744.us:                                 ; preds = %.lr.ph.us3214.prol.loopexit, %.lr.ph.us3214, %.loopexit2745.us
  %i.ddt = icmp ult i64 %i.dbj, 2, !dbg !136879
  br i1 %i.ddt, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %bb.ou, !dbg !136879

.lr.ph3213.split:                                 ; preds = %.lr.ph3213
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0142.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !134342), !dbg !136882
  br label %.lr.ph3134.split.invoke, !dbg !136911

bb.ox:                                            ; preds = %bb.oc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !134626
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.oz unwind label %bb.ro, !dbg !134626

bb.oy:                                            ; preds = %bb.oc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !134626
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.pd unwind label %bb.ro, !dbg !134626

bb.oz:                                            ; preds = %bb.ox
  %.sroa.0150.sroa.0.0.copyload = load ptr, ptr %i.cs, align 8, !dbg !136912 ; 2 uses
  %.sroa.0150.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !136912
  %.sroa.0150.sroa.2.0.copyload = load i64, ptr %.sroa.0150.sroa.2.0..sroa_idx, align 8, !dbg !136912 ; 2 uses
  %.sroa.0150.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !136912
  %.sroa.0150.sroa.3.0.copyload = load i64, ptr %.sroa.0150.sroa.3.0..sroa_idx, align 8, !dbg !136912 ; 2 uses
  %.sroa.0150.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24, !dbg !136912
  %.sroa.0150.sroa.4.0.copyload = load ptr, ptr %.sroa.0150.sroa.4.0..sroa_idx, align 8, !dbg !136912 ; 3 uses
  %.sroa.0150.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32, !dbg !136912
  %.sroa.0150.sroa.5.0.copyload = load i64, ptr %.sroa.0150.sroa.5.0..sroa_idx, align 8, !dbg !136912 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !136768
  %i.ddu = icmp ugt i64 %.sroa.0150.sroa.3.0.copyload, %.sroa.0150.sroa.2.0.copyload, !dbg !136913
  br i1 %i.ddu, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %.lr.ph3181, !dbg !136913

.lr.ph3181:                                       ; preds = %bb.oz
  %i.ddv = icmp eq i64 %.sroa.0150.sroa.3.0.copyload, 2
  %.idx.i.i.i1385 = mul nuw nsw i64 %.sroa.0150.sroa.5.0.copyload, 24
  %i.ddw = getelementptr inbounds nuw i8, ptr %.sroa.0150.sroa.4.0.copyload, i64 %.idx.i.i.i1385
  %i.ddx = icmp eq i64 %.sroa.0150.sroa.5.0.copyload, 0
  br i1 %i.ddv, label %.lr.ph3181.split.us, label %.lr.ph3181.split, !prof !3552

.lr.ph3181.split.us:                              ; preds = %.lr.ph3181
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.sroa.4.0.copyload) ]
  %scevgep4388 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !136913
  br label %bb.pa, !dbg !136913

bb.pa:                                            ; preds = %.loopexit2750.us, %.lr.ph3181.split.us
  %.sroa.01811.03180.us = phi ptr [ %.sroa.0150.sroa.0.0.copyload, %.lr.ph3181.split.us ], [ %i.ddz, %.loopexit2750.us ] ; 3 uses
  %.sroa.51812.03179.us = phi i64 [ %.sroa.0150.sroa.2.0.copyload, %.lr.ph3181.split.us ], [ %i.ddy, %.loopexit2750.us ]
  %.sroa.101816.03178.us = phi i64 [ 0, %.lr.ph3181.split.us ], [ %i.dek, %.loopexit2750.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01811.03180.us) ]
  %i.ddy = add i64 %.sroa.51812.03179.us, -1, !dbg !136914 ; 2 uses
  %i.ddz = getelementptr inbounds nuw i8, ptr %.sroa.01811.03180.us, i64 8, !dbg !136915 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134382), !dbg !136916
  %.sroa.02.06.i.i.i1386.us = load i64, ptr %.sroa.01811.03180.us, align 8, !dbg !136917, !alias.scope !134382, !noalias !134383, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1387.us = load i64, ptr %i.ddz, align 8, !dbg !136918, !alias.scope !134382, !noalias !134383, !noundef !3448 ; 2 uses
  br i1 %i.ddx, label %.loopexit2751.us, label %.lr.ph.i.i.i1388.us, !dbg !136919

.lr.ph.i.i.i1388.us:                              ; preds = %bb.pa, %bb.pc
  %.sroa.06.010.i.i.i1389.us = phi i64 [ %.sroa.06.0.i.i.i1393.us, %bb.pc ], [ %.sroa.06.07.i.i.i1387.us, %bb.pa ] ; 3 uses
  %.sroa.02.09.i.i.i1390.us = phi i64 [ %.sroa.02.0.i.i.i1392.us, %bb.pc ], [ %.sroa.02.06.i.i.i1386.us, %bb.pa ] ; 3 uses
  %.sroa.0.08.i.i.i1391.us = phi ptr [ %i.dea, %bb.pc ], [ %.sroa.0150.sroa.4.0.copyload, %bb.pa ] ; 3 uses
  %i.dea = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1391.us, i64 24, !dbg !136920 ; 2 uses
  %i.deb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1391.us, i64 8, !dbg !136921
  %i.dec = load ptr, ptr %i.deb, align 8, !dbg !136921, !noalias !134384, !noundef !3448 ; 2 uses
  %i.ded = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1391.us, i64 16, !dbg !136922
  %i.dee = load i64, ptr %i.ded, align 8, !dbg !136922, !noalias !134384, !noundef !3448 ; 4 uses
  %i.def = icmp ult i64 %.sroa.02.09.i.i.i1390.us, %i.dee, !dbg !136923
  br i1 %i.def, label %bb.pb, label %.split3139.us.invoke, !dbg !136923

bb.pb:                                            ; preds = %.lr.ph.i.i.i1388.us
  %i.deg = icmp ult i64 %.sroa.06.010.i.i.i1389.us, %i.dee, !dbg !136924
  br i1 %i.deg, label %bb.pc, label %.split3139.us.invoke, !dbg !136924

bb.pc:                                            ; preds = %bb.pb
  %i.deh = getelementptr inbounds nuw [8 x i8], ptr %i.dec, i64 %.sroa.02.09.i.i.i1390.us, !dbg !136923
  %i.dei = getelementptr inbounds nuw [8 x i8], ptr %i.dec, i64 %.sroa.06.010.i.i.i1389.us, !dbg !136924
  %.sroa.02.0.i.i.i1392.us = load i64, ptr %i.deh, align 8, !dbg !136917, !noalias !134384, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1393.us = load i64, ptr %i.dei, align 8, !dbg !136918, !noalias !134384, !noundef !3448 ; 2 uses
  %i.dej = icmp eq ptr %i.dea, %i.ddw, !dbg !136925
  br i1 %i.dej, label %.loopexit2751.us, label %.lr.ph.i.i.i1388.us, !dbg !136919

.loopexit2751.us:                                 ; preds = %bb.pc, %bb.pa
  %.sroa.7.0.ph.i1395.us = phi i64 [ %.sroa.06.07.i.i.i1387.us, %bb.pa ], [ %.sroa.06.0.i.i.i1393.us, %bb.pc ] ; 10 uses
  %.sroa.5.0.ph.i1396.us = phi i64 [ %.sroa.02.06.i.i.i1386.us, %bb.pa ], [ %.sroa.02.0.i.i.i1392.us, %bb.pc ] ; 12 uses
  %i.dek = add nuw i64 %.sroa.101816.03178.us, 1, !dbg !136926
  %i.del = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !136927, !noundef !3448
  %i.dem = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !136928, !noundef !3448
  %i.den = icmp ult i64 %.sroa.101816.03178.us, %i.dem, !dbg !136929
  call void @llvm.assume(i1 %i.den), !dbg !136930
  %i.deo = getelementptr inbounds nuw [4 x i8], ptr %i.del, i64 %.sroa.101816.03178.us, !dbg !136931
  %i.dep = load i32, ptr %i.deo, align 4, !dbg !136932, !noundef !3448 ; 4 uses
  %i.deq = icmp ult i64 %.sroa.5.0.ph.i1396.us, %.sroa.7.0.ph.i1395.us, !dbg !136933
  br i1 %i.deq, label %.lr.ph.us3182, label %.loopexit2750.us, !dbg !136934

.lr.ph.us3182:                                    ; preds = %.loopexit2751.us
  switch i32 %i.dep, label %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1404.us3185 [
    i32 0, label %.lr.ph.split.us.us3190.preheader
    i32 -1, label %.lr.ph.split.split.us.us3188.preheader
  ], !prof !3668

.lr.ph.split.split.us.us3188.preheader:           ; preds = %.lr.ph.us3182
  %i.der = sub i64 %.sroa.7.0.ph.i1395.us, %.sroa.5.0.ph.i1396.us, !dbg !136934
  %xtraiter4579 = and i64 %i.der, 3, !dbg !136934 ; 2 uses
  %lcmp.mod4580.not = icmp eq i64 %xtraiter4579, 0, !dbg !136934
  br i1 %lcmp.mod4580.not, label %.lr.ph.split.split.us.us3188.prol.loopexit, label %.lr.ph.split.split.us.us3188.prol, !dbg !136934

.lr.ph.split.split.us.us3188.prol:                ; preds = %.lr.ph.split.split.us.us3188.preheader, %.lr.ph.split.split.us.us3188.prol
  %.sroa.0429.03175.us3176.us.prol = phi i64 [ %i.dey, %.lr.ph.split.split.us.us3188.prol ], [ %.sroa.5.0.ph.i1396.us, %.lr.ph.split.split.us.us3188.preheader ] ; 4 uses
  %prol.iter4581 = phi i64 [ %prol.iter4581.next, %.lr.ph.split.split.us.us3188.prol ], [ 0, %.lr.ph.split.split.us.us3188.preheader ]
  %i.des = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136935, !noundef !3448
  %i.det = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.deu = icmp ult i64 %.sroa.0429.03175.us3176.us.prol, %i.det, !dbg !136937
  call void @llvm.assume(i1 %i.deu), !dbg !136938
  %i.dev = getelementptr inbounds nuw [4 x i8], ptr %i.des, i64 %.sroa.0429.03175.us3176.us.prol, !dbg !136939
  %i.dew = load i32, ptr %i.dev, align 4, !dbg !136940, !noundef !3448
  %i.dex = sub i32 0, %i.dew
  %i.dey = add nuw i64 %.sroa.0429.03175.us3176.us.prol, 1, !dbg !136941 ; 2 uses
  %i.dez = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0429.03175.us3176.us.prol, !dbg !136942
  store i32 %i.dex, ptr %i.dez, align 4, !dbg !136943
  %prol.iter4581.next = add i64 %prol.iter4581, 1, !dbg !136934 ; 2 uses
  %prol.iter4581.cmp.not = icmp eq i64 %prol.iter4581.next, %xtraiter4579, !dbg !136934
  br i1 %prol.iter4581.cmp.not, label %.lr.ph.split.split.us.us3188.prol.loopexit, label %.lr.ph.split.split.us.us3188.prol, !dbg !136934, !llvm.loop !132083

.lr.ph.split.split.us.us3188.prol.loopexit:       ; preds = %.lr.ph.split.split.us.us3188.prol, %.lr.ph.split.split.us.us3188.preheader
  %.sroa.0429.03175.us3176.us.unr = phi i64 [ %.sroa.5.0.ph.i1396.us, %.lr.ph.split.split.us.us3188.preheader ], [ %i.dey, %.lr.ph.split.split.us.us3188.prol ]
  %i.dfa = sub i64 %.sroa.5.0.ph.i1396.us, %.sroa.7.0.ph.i1395.us, !dbg !136934
  %i.dfb = icmp ugt i64 %i.dfa, -4, !dbg !136934
  br i1 %i.dfb, label %.loopexit2750.us, label %.lr.ph.split.split.us.us3188, !dbg !136934

.lr.ph.split.us.us3190.preheader:                 ; preds = %.lr.ph.us3182
  %i.dfc = sub i64 %.sroa.7.0.ph.i1395.us, %.sroa.5.0.ph.i1396.us, !dbg !136934 ; 3 uses
  %min.iters.check4393 = icmp ult i64 %i.dfc, 8, !dbg !136934
  br i1 %min.iters.check4393, label %.lr.ph.split.us.us3190.preheader4457, label %vector.memcheck4385, !dbg !136934

vector.memcheck4385:                              ; preds = %.lr.ph.split.us.us3190.preheader
  %i.dfd = shl nuw i64 %.sroa.5.0.ph.i1396.us, 2, !dbg !136934
  %scevgep4386 = getelementptr i8, ptr %i.csr, i64 %i.dfd, !dbg !136934
  %i.dfe = shl i64 %.sroa.7.0.ph.i1395.us, 2, !dbg !136934
  %scevgep4387 = getelementptr i8, ptr %i.csr, i64 %i.dfe, !dbg !136934
  %bound04389 = icmp ult ptr %scevgep4386, %scevgep4388, !dbg !136934
  %bound14390 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4387, !dbg !136934
  %found.conflict4391 = and i1 %bound04389, %bound14390, !dbg !136934
  br i1 %found.conflict4391, label %.lr.ph.split.us.us3190.preheader4457, label %vector.ph4394

vector.ph4394:                                    ; preds = %vector.memcheck4385
  %n.vec4395 = and i64 %i.dfc, -8                 ; 3 uses
  %i.dff = add i64 %.sroa.5.0.ph.i1396.us, %n.vec4395
  %i.dfg = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.5.0.ph.i1396.us
  br label %vector.body4399

vector.body4399:                                  ; preds = %vector.body4399, %vector.ph4394
  %index4400 = phi i64 [ 0, %vector.ph4394 ], [ %index.next4405, %vector.body4399 ] ; 2 uses
  %i.dfh = getelementptr inbounds nuw [4 x i8], ptr %i.dfg, i64 %index4400, !dbg !136942 ; 2 uses
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.dfh, i64 16, !dbg !136943
  store <4 x i32> zeroinitializer, ptr %i.dfh, align 4, !dbg !136943, !alias.scope !134418, !noalias !134419
  store <4 x i32> zeroinitializer, ptr %i.dfi, align 4, !dbg !136943, !alias.scope !134418, !noalias !134419
  %index.next4405 = add nuw i64 %index4400, 8     ; 2 uses
  %i.dfj = icmp eq i64 %index.next4405, %n.vec4395, !dbg !136934
  br i1 %i.dfj, label %middle.block4407, label %vector.body4399, !dbg !136934, !llvm.loop !132087

middle.block4407:                                 ; preds = %vector.body4399
  %cmp.n4408 = icmp eq i64 %i.dfc, %n.vec4395, !dbg !136934
  br i1 %cmp.n4408, label %.loopexit2750.us, label %.lr.ph.split.us.us3190.preheader4457, !dbg !136934

.lr.ph.split.us.us3190.preheader4457:             ; preds = %vector.memcheck4385, %.lr.ph.split.us.us3190.preheader, %middle.block4407
  %.sroa.0429.03175.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1396.us, %vector.memcheck4385 ], [ %.sroa.5.0.ph.i1396.us, %.lr.ph.split.us.us3190.preheader ], [ %i.dff, %middle.block4407 ] ; 4 uses
  %i.dfk = sub i64 %.sroa.7.0.ph.i1395.us, %.sroa.0429.03175.us.us.ph, !dbg !136934
  %xtraiter4582 = and i64 %i.dfk, 7, !dbg !136934 ; 2 uses
  %lcmp.mod4583.not = icmp eq i64 %xtraiter4582, 0, !dbg !136934
  br i1 %lcmp.mod4583.not, label %.lr.ph.split.us.us3190.prol.loopexit, label %.lr.ph.split.us.us3190.prol, !dbg !136934

.lr.ph.split.us.us3190.prol:                      ; preds = %.lr.ph.split.us.us3190.preheader4457, %.lr.ph.split.us.us3190.prol
  %.sroa.0429.03175.us.us.prol = phi i64 [ %i.dfn, %.lr.ph.split.us.us3190.prol ], [ %.sroa.0429.03175.us.us.ph, %.lr.ph.split.us.us3190.preheader4457 ] ; 3 uses
  %prol.iter4584 = phi i64 [ %prol.iter4584.next, %.lr.ph.split.us.us3190.prol ], [ 0, %.lr.ph.split.us.us3190.preheader4457 ]
  %i.dfl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dfm = icmp ult i64 %.sroa.0429.03175.us.us.prol, %i.dfl, !dbg !136937
  call void @llvm.assume(i1 %i.dfm), !dbg !136938
  %i.dfn = add nuw i64 %.sroa.0429.03175.us.us.prol, 1, !dbg !136941 ; 2 uses
  %i.dfo = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0429.03175.us.us.prol, !dbg !136942
  store i32 0, ptr %i.dfo, align 4, !dbg !136943
  %prol.iter4584.next = add i64 %prol.iter4584, 1, !dbg !136934 ; 2 uses
  %prol.iter4584.cmp.not = icmp eq i64 %prol.iter4584.next, %xtraiter4582, !dbg !136934
  br i1 %prol.iter4584.cmp.not, label %.lr.ph.split.us.us3190.prol.loopexit, label %.lr.ph.split.us.us3190.prol, !dbg !136934, !llvm.loop !132088

.lr.ph.split.us.us3190.prol.loopexit:             ; preds = %.lr.ph.split.us.us3190.prol, %.lr.ph.split.us.us3190.preheader4457
  %.sroa.0429.03175.us.us.unr = phi i64 [ %.sroa.0429.03175.us.us.ph, %.lr.ph.split.us.us3190.preheader4457 ], [ %i.dfn, %.lr.ph.split.us.us3190.prol ]
  %i.dfp = sub i64 %.sroa.0429.03175.us.us.ph, %.sroa.7.0.ph.i1395.us, !dbg !136934
  %i.dfq = icmp ugt i64 %i.dfp, -8, !dbg !136934
  br i1 %i.dfq, label %.loopexit2750.us, label %.lr.ph.split.us.us3190, !dbg !136934

_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1404.us3185: ; preds = %.lr.ph.us3182, %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1404.us3185
  %.sroa.0429.03175.us3186 = phi i64 [ %i.dgb, %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1404.us3185 ], [ %.sroa.5.0.ph.i1396.us, %.lr.ph.us3182 ] ; 4 uses
  %i.dfr = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136935, !noundef !3448
  %i.dfs = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dft = icmp ult i64 %.sroa.0429.03175.us3186, %i.dfs, !dbg !136937
  call void @llvm.assume(i1 %i.dft), !dbg !136938
  %i.dfu = getelementptr inbounds nuw [4 x i8], ptr %i.dfr, i64 %.sroa.0429.03175.us3186, !dbg !136939
  %i.dfv = load i32, ptr %i.dfu, align 4, !dbg !136940, !noundef !3448 ; 3 uses
  %i.dfw = sdiv i32 %i.dfv, %i.dep, !dbg !136944
  %i.dfx = srem i32 %i.dfv, %i.dep, !dbg !136945
  %.not.i1405.us = icmp ne i32 %i.dfx, 0, !dbg !136946
  %i.dfy = xor i32 %i.dfv, %i.dep
  %i.dfz = icmp slt i32 %i.dfy, 0
  %or.cond2671.us = and i1 %i.dfz, %.not.i1405.us, !dbg !136946
  %i.dga = sext i1 %or.cond2671.us to i32, !dbg !136946
  %spec.select2682.us = add i32 %i.dfw, %i.dga, !dbg !136946
  %i.dgb = add nuw i64 %.sroa.0429.03175.us3186, 1, !dbg !136941 ; 2 uses
  %i.dgc = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0429.03175.us3186, !dbg !136942
  store i32 %spec.select2682.us, ptr %i.dgc, align 4, !dbg !136943
  %exitcond3616.not = icmp eq i64 %i.dgb, %.sroa.7.0.ph.i1395.us, !dbg !136933
  br i1 %exitcond3616.not, label %.loopexit2750.us, label %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1404.us3185, !dbg !136934

.lr.ph.split.split.us.us3188:                     ; preds = %.lr.ph.split.split.us.us3188.prol.loopexit, %.lr.ph.split.split.us.us3188
  %.sroa.0429.03175.us3176.us = phi i64 [ %i.dhh, %.lr.ph.split.split.us.us3188 ], [ %.sroa.0429.03175.us3176.us.unr, %.lr.ph.split.split.us.us3188.prol.loopexit ] ; 7 uses
  %i.dgd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136935, !noundef !3448
  %i.dge = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dgf = icmp ult i64 %.sroa.0429.03175.us3176.us, %i.dge, !dbg !136937
  call void @llvm.assume(i1 %i.dgf), !dbg !136938
  %i.dgg = getelementptr inbounds nuw [4 x i8], ptr %i.dgd, i64 %.sroa.0429.03175.us3176.us, !dbg !136939
  %i.dgh = load i32, ptr %i.dgg, align 4, !dbg !136940, !noundef !3448
  %i.dgi = sub i32 0, %i.dgh
  %i.dgj = add nuw i64 %.sroa.0429.03175.us3176.us, 1, !dbg !136941 ; 3 uses
  %i.dgk = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0429.03175.us3176.us, !dbg !136942
  store i32 %i.dgi, ptr %i.dgk, align 4, !dbg !136943
  %i.dgl = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136935, !noundef !3448
  %i.dgm = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dgn = icmp ult i64 %i.dgj, %i.dgm, !dbg !136937
  call void @llvm.assume(i1 %i.dgn), !dbg !136938
  %i.dgo = getelementptr inbounds nuw [4 x i8], ptr %i.dgl, i64 %i.dgj, !dbg !136939
  %i.dgp = load i32, ptr %i.dgo, align 4, !dbg !136940, !noundef !3448
  %i.dgq = sub i32 0, %i.dgp
  %i.dgr = add nuw i64 %.sroa.0429.03175.us3176.us, 2, !dbg !136941 ; 3 uses
  %i.dgs = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dgj, !dbg !136942
  store i32 %i.dgq, ptr %i.dgs, align 4, !dbg !136943
  %i.dgt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136935, !noundef !3448
  %i.dgu = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dgv = icmp ult i64 %i.dgr, %i.dgu, !dbg !136937
  call void @llvm.assume(i1 %i.dgv), !dbg !136938
  %i.dgw = getelementptr inbounds nuw [4 x i8], ptr %i.dgt, i64 %i.dgr, !dbg !136939
  %i.dgx = load i32, ptr %i.dgw, align 4, !dbg !136940, !noundef !3448
  %i.dgy = sub i32 0, %i.dgx
  %i.dgz = add nuw i64 %.sroa.0429.03175.us3176.us, 3, !dbg !136941 ; 3 uses
  %i.dha = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dgr, !dbg !136942
  store i32 %i.dgy, ptr %i.dha, align 4, !dbg !136943
  %i.dhb = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136935, !noundef !3448
  %i.dhc = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dhd = icmp ult i64 %i.dgz, %i.dhc, !dbg !136937
  call void @llvm.assume(i1 %i.dhd), !dbg !136938
  %i.dhe = getelementptr inbounds nuw [4 x i8], ptr %i.dhb, i64 %i.dgz, !dbg !136939
  %i.dhf = load i32, ptr %i.dhe, align 4, !dbg !136940, !noundef !3448
  %i.dhg = sub i32 0, %i.dhf
  %i.dhh = add nuw i64 %.sroa.0429.03175.us3176.us, 4, !dbg !136941 ; 2 uses
  %i.dhi = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dgz, !dbg !136942
  store i32 %i.dhg, ptr %i.dhi, align 4, !dbg !136943
  %exitcond3613.not.3 = icmp eq i64 %i.dhh, %.sroa.7.0.ph.i1395.us, !dbg !136933
  br i1 %exitcond3613.not.3, label %.loopexit2750.us, label %.lr.ph.split.split.us.us3188, !dbg !136934

.lr.ph.split.us.us3190:                           ; preds = %.lr.ph.split.us.us3190.prol.loopexit, %.lr.ph.split.us.us3190
  %.sroa.0429.03175.us.us = phi i64 [ %i.din, %.lr.ph.split.us.us3190 ], [ %.sroa.0429.03175.us.us.unr, %.lr.ph.split.us.us3190.prol.loopexit ] ; 10 uses
  %i.dhj = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dhk = icmp ult i64 %.sroa.0429.03175.us.us, %i.dhj, !dbg !136937
  call void @llvm.assume(i1 %i.dhk), !dbg !136938
  %i.dhl = add nuw i64 %.sroa.0429.03175.us.us, 1, !dbg !136941 ; 2 uses
  %i.dhm = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0429.03175.us.us, !dbg !136942
  store i32 0, ptr %i.dhm, align 4, !dbg !136943
  %i.dhn = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dho = icmp ult i64 %i.dhl, %i.dhn, !dbg !136937
  call void @llvm.assume(i1 %i.dho), !dbg !136938
  %i.dhp = add nuw i64 %.sroa.0429.03175.us.us, 2, !dbg !136941 ; 2 uses
  %i.dhq = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dhl, !dbg !136942
  store i32 0, ptr %i.dhq, align 4, !dbg !136943
  %i.dhr = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dhs = icmp ult i64 %i.dhp, %i.dhr, !dbg !136937
  call void @llvm.assume(i1 %i.dhs), !dbg !136938
  %i.dht = add nuw i64 %.sroa.0429.03175.us.us, 3, !dbg !136941 ; 2 uses
  %i.dhu = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dhp, !dbg !136942
  store i32 0, ptr %i.dhu, align 4, !dbg !136943
  %i.dhv = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dhw = icmp ult i64 %i.dht, %i.dhv, !dbg !136937
  call void @llvm.assume(i1 %i.dhw), !dbg !136938
  %i.dhx = add nuw i64 %.sroa.0429.03175.us.us, 4, !dbg !136941 ; 2 uses
  %i.dhy = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dht, !dbg !136942
  store i32 0, ptr %i.dhy, align 4, !dbg !136943
  %i.dhz = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dia = icmp ult i64 %i.dhx, %i.dhz, !dbg !136937
  call void @llvm.assume(i1 %i.dia), !dbg !136938
  %i.dib = add nuw i64 %.sroa.0429.03175.us.us, 5, !dbg !136941 ; 2 uses
  %i.dic = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dhx, !dbg !136942
  store i32 0, ptr %i.dic, align 4, !dbg !136943
  %i.did = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.die = icmp ult i64 %i.dib, %i.did, !dbg !136937
  call void @llvm.assume(i1 %i.die), !dbg !136938
  %i.dif = add nuw i64 %.sroa.0429.03175.us.us, 6, !dbg !136941 ; 2 uses
  %i.dig = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dib, !dbg !136942
  store i32 0, ptr %i.dig, align 4, !dbg !136943
  %i.dih = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dii = icmp ult i64 %i.dif, %i.dih, !dbg !136937
  call void @llvm.assume(i1 %i.dii), !dbg !136938
  %i.dij = add nuw i64 %.sroa.0429.03175.us.us, 7, !dbg !136941 ; 2 uses
  %i.dik = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dif, !dbg !136942
  store i32 0, ptr %i.dik, align 4, !dbg !136943
  %i.dil = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136936, !noundef !3448
  %i.dim = icmp ult i64 %i.dij, %i.dil, !dbg !136937
  call void @llvm.assume(i1 %i.dim), !dbg !136938
  %i.din = add nuw i64 %.sroa.0429.03175.us.us, 8, !dbg !136941 ; 2 uses
  %i.dio = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dij, !dbg !136942
  store i32 0, ptr %i.dio, align 4, !dbg !136943
  %exitcond3615.not.7 = icmp eq i64 %i.din, %.sroa.7.0.ph.i1395.us, !dbg !136933
  br i1 %exitcond3615.not.7, label %.loopexit2750.us, label %.lr.ph.split.us.us3190, !dbg !136934, !llvm.loop !132096

.loopexit2750.us:                                 ; preds = %.lr.ph.split.split.us.us3188.prol.loopexit, %.lr.ph.split.split.us.us3188, %.lr.ph.split.us.us3190.prol.loopexit, %.lr.ph.split.us.us3190, %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1404.us3185, %middle.block4407, %.loopexit2751.us
  %i.dip = icmp ult i64 %i.ddy, 2, !dbg !136913
  br i1 %i.dip, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %bb.pa, !dbg !136913

.lr.ph3181.split:                                 ; preds = %.lr.ph3181
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !134382), !dbg !136916
  br label %.lr.ph3134.split.invoke, !dbg !136947

bb.pd:                                            ; preds = %bb.oy
  %.sroa.0146.sroa.0.0.copyload = load ptr, ptr %i.ct, align 8, !dbg !136948 ; 2 uses
  %.sroa.0146.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !136948
  %.sroa.0146.sroa.2.0.copyload = load i64, ptr %.sroa.0146.sroa.2.0..sroa_idx, align 8, !dbg !136948 ; 2 uses
  %.sroa.0146.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16, !dbg !136948
  %.sroa.0146.sroa.3.0.copyload = load i64, ptr %.sroa.0146.sroa.3.0..sroa_idx, align 8, !dbg !136948 ; 2 uses
  %.sroa.0146.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24, !dbg !136948
  %.sroa.0146.sroa.4.0.copyload = load ptr, ptr %.sroa.0146.sroa.4.0..sroa_idx, align 8, !dbg !136948 ; 3 uses
  %.sroa.0146.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 32, !dbg !136948
  %.sroa.0146.sroa.5.0.copyload = load i64, ptr %.sroa.0146.sroa.5.0..sroa_idx, align 8, !dbg !136948 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !136768
  %i.diq = icmp ugt i64 %.sroa.0146.sroa.3.0.copyload, %.sroa.0146.sroa.2.0.copyload, !dbg !136949
  br i1 %i.diq, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %.lr.ph3201, !dbg !136949

.lr.ph3201:                                       ; preds = %bb.pd
  %i.dir = icmp eq i64 %.sroa.0146.sroa.3.0.copyload, 2
  %.idx.i.i.i1411 = mul nuw nsw i64 %.sroa.0146.sroa.5.0.copyload, 24
end_hunk_9
begin_hunk_10_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes9Int32TypeEBb_:bb.a
bb.pg:                                            ; preds = %bb.pf
  %i.djd = getelementptr inbounds nuw [8 x i8], ptr %i.diy, i64 %.sroa.02.09.i.i.i1416.us, !dbg !136959
  %i.dje = getelementptr inbounds nuw [8 x i8], ptr %i.diy, i64 %.sroa.06.010.i.i.i1415.us, !dbg !136960
  %.sroa.02.0.i.i.i1418.us = load i64, ptr %i.djd, align 8, !dbg !136953, !noalias !134426, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1419.us = load i64, ptr %i.dje, align 8, !dbg !136954, !noalias !134426, !noundef !3448 ; 2 uses
  %i.djf = icmp eq ptr %i.diw, %i.dis, !dbg !136961
  br i1 %i.djf, label %.loopexit2748.us, label %.lr.ph.i.i.i1414.us, !dbg !136955

.loopexit2748.us:                                 ; preds = %bb.pg, %bb.pe
  %.sroa.7.0.ph.i1421.us = phi i64 [ %.sroa.06.07.i.i.i1413.us, %bb.pe ], [ %.sroa.06.0.i.i.i1419.us, %bb.pg ] ; 2 uses
  %.sroa.5.0.ph.i1422.us = phi i64 [ %.sroa.02.06.i.i.i1412.us, %bb.pe ], [ %.sroa.02.0.i.i.i1418.us, %bb.pg ] ; 2 uses
  %i.djg = add nuw i64 %.sroa.101806.03198.us, 1, !dbg !136962
  %i.djh = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !136963, !noundef !3448
  %i.dji = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !136964, !noundef !3448
  %i.djj = icmp ult i64 %.sroa.101806.03198.us, %i.dji, !dbg !136965
  call void @llvm.assume(i1 %i.djj), !dbg !136966
  %i.djk = getelementptr inbounds nuw [4 x i8], ptr %i.djh, i64 %.sroa.101806.03198.us, !dbg !136967
  %i.djl = load i32, ptr %i.djk, align 4, !dbg !136968, !noundef !3448 ; 4 uses
  %i.djm = icmp ult i64 %.sroa.5.0.ph.i1422.us, %.sroa.7.0.ph.i1421.us, !dbg !136969
  br i1 %i.djm, label %.lr.ph.us3202, label %.loopexit2747.us, !dbg !136970

bb.ph:                                            ; preds = %.lr.ph.us3202, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs7_0Bd_.exit.us
  %.sroa.0427.03197.us = phi i64 [ %.sroa.5.0.ph.i1422.us, %.lr.ph.us3202 ], [ %i.dka, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs7_0Bd_.exit.us ] ; 4 uses
  %i.djn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !136971, !noundef !3448
  %i.djo = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !136972, !noundef !3448
  %i.djp = icmp ult i64 %.sroa.0427.03197.us, %i.djo, !dbg !136973
  call void @llvm.assume(i1 %i.djp), !dbg !136974
  %i.djq = getelementptr inbounds nuw [4 x i8], ptr %i.djn, i64 %.sroa.0427.03197.us, !dbg !136975
  %i.djr = load i32, ptr %i.djq, align 4, !dbg !136976, !noundef !3448 ; 5 uses
  %i.djs = icmp eq i32 %i.djr, 0, !dbg !136977
  br i1 %i.djs, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs7_0Bd_.exit.us, label %bb.pi, !dbg !136977

bb.pi:                                            ; preds = %bb.ph
  %i.djt = icmp eq i32 %i.djr, -1, !dbg !136978   ; 2 uses
  %i.dju = and i1 %i.dkd, %i.djt, !dbg !136979
  br i1 %i.dju, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs7_0Bd_.exit.us, label %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i.i1430.us, !dbg !136980, !prof !3502

_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i.i1430.us: ; preds = %bb.pi
  %i.djv = sdiv i32 %i.djl, %i.djr, !dbg !136981  ; 2 uses
  %i.djw = srem i32 %i.djl, %i.djr, !dbg !136982
  br i1 %i.djt, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs7_0Bd_.exit.us, label %bb.pj, !dbg !136983, !prof !3641

bb.pj:                                            ; preds = %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i.i1430.us
  %.not.i.i1431.us = icmp ne i32 %i.djw, 0, !dbg !136984
  %i.djx = xor i32 %i.djr, %i.djl
  %i.djy = icmp slt i32 %i.djx, 0
  %or.cond.i1432.us = and i1 %i.djy, %.not.i.i1431.us, !dbg !136984
  %i.djz = sext i1 %or.cond.i1432.us to i32, !dbg !136984
  %spec.select.i1433.us = add i32 %i.djv, %i.djz, !dbg !136984
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs7_0Bd_.exit.us, !dbg !136984

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs7_0Bd_.exit.us: ; preds = %bb.pj, %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i.i1430.us, %bb.pi, %bb.ph
  %.sroa.0.0.i.i1434.us = phi i32 [ 0, %bb.ph ], [ %spec.select.i1433.us, %bb.pj ], [ %i.djv, %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i.i1430.us ], [ -2147483648, %bb.pi ], !dbg !136985
  %i.dka = add nuw i64 %.sroa.0427.03197.us, 1, !dbg !136986 ; 2 uses
  %i.dkb = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0427.03197.us, !dbg !136987
  store i32 %.sroa.0.0.i.i1434.us, ptr %i.dkb, align 4, !dbg !136988
  %exitcond3617.not = icmp eq i64 %i.dka, %.sroa.7.0.ph.i1421.us, !dbg !136969
  br i1 %exitcond3617.not, label %.loopexit2747.us, label %bb.ph, !dbg !136970

.loopexit2747.us:                                 ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs7_0Bd_.exit.us, %.loopexit2748.us
  %i.dkc = icmp ult i64 %i.diu, 2, !dbg !136949
  br i1 %i.dkc, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %bb.pe, !dbg !136949

.lr.ph.us3202:                                    ; preds = %.loopexit2748.us
  %i.dkd = icmp eq i32 %i.djl, -2147483648
  br label %bb.ph, !dbg !136970

.lr.ph3201.split:                                 ; preds = %.lr.ph3201
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0146.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !134424), !dbg !136952
  br label %.lr.ph3134.split.invoke, !dbg !136989

bb.pk:                                            ; preds = %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !134626
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.pm unwind label %bb.ro, !dbg !134626

bb.pl:                                            ; preds = %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !134626
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.pq unwind label %bb.ro, !dbg !134626

bb.pm:                                            ; preds = %bb.pk
  %.sroa.0158.sroa.0.0.copyload = load ptr, ptr %i.cq, align 8, !dbg !136990 ; 2 uses
  %.sroa.0158.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !136990
  %.sroa.0158.sroa.2.0.copyload = load i64, ptr %.sroa.0158.sroa.2.0..sroa_idx, align 8, !dbg !136990 ; 2 uses
  %.sroa.0158.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16, !dbg !136990
  %.sroa.0158.sroa.3.0.copyload = load i64, ptr %.sroa.0158.sroa.3.0..sroa_idx, align 8, !dbg !136990 ; 2 uses
  %.sroa.0158.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24, !dbg !136990
  %.sroa.0158.sroa.4.0.copyload = load ptr, ptr %.sroa.0158.sroa.4.0..sroa_idx, align 8, !dbg !136990 ; 3 uses
  %.sroa.0158.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 32, !dbg !136990
  %.sroa.0158.sroa.5.0.copyload = load i64, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !dbg !136990 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !136768
  %i.dke = icmp ugt i64 %.sroa.0158.sroa.3.0.copyload, %.sroa.0158.sroa.2.0.copyload, !dbg !136991
  br i1 %i.dke, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %.lr.ph3148, !dbg !136991

.lr.ph3148:                                       ; preds = %bb.pm
  %i.dkf = icmp eq i64 %.sroa.0158.sroa.3.0.copyload, 2
  %.idx.i.i.i1437 = mul nuw nsw i64 %.sroa.0158.sroa.5.0.copyload, 24
  %i.dkg = getelementptr inbounds nuw i8, ptr %.sroa.0158.sroa.4.0.copyload, i64 %.idx.i.i.i1437
  %i.dkh = icmp eq i64 %.sroa.0158.sroa.5.0.copyload, 0
  br i1 %i.dkf, label %.lr.ph3148.split.us, label %.lr.ph3148.split, !prof !3552

.lr.ph3148.split.us:                              ; preds = %.lr.ph3148
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0158.sroa.4.0.copyload) ]
  %scevgep4339 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !136991 ; 2 uses
  br label %bb.pn, !dbg !136991

bb.pn:                                            ; preds = %.loopexit2756.us, %.lr.ph3148.split.us
  %.sroa.01831.03147.us = phi ptr [ %.sroa.0158.sroa.0.0.copyload, %.lr.ph3148.split.us ], [ %i.dkj, %.loopexit2756.us ] ; 3 uses
  %.sroa.51832.03146.us = phi i64 [ %.sroa.0158.sroa.2.0.copyload, %.lr.ph3148.split.us ], [ %i.dki, %.loopexit2756.us ]
  %.sroa.101836.03145.us = phi i64 [ 0, %.lr.ph3148.split.us ], [ %i.dku, %.loopexit2756.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01831.03147.us) ]
  %i.dki = add i64 %.sroa.51832.03146.us, -1, !dbg !136992 ; 2 uses
  %i.dkj = getelementptr inbounds nuw i8, ptr %.sroa.01831.03147.us, i64 8, !dbg !136993 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134464), !dbg !136994
  %.sroa.02.06.i.i.i1438.us = load i64, ptr %.sroa.01831.03147.us, align 8, !dbg !136995, !alias.scope !134464, !noalias !134465, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1439.us = load i64, ptr %i.dkj, align 8, !dbg !136996, !alias.scope !134464, !noalias !134465, !noundef !3448 ; 2 uses
  br i1 %i.dkh, label %.loopexit2757.us, label %.lr.ph.i.i.i1440.us, !dbg !136997

.lr.ph.i.i.i1440.us:                              ; preds = %bb.pn, %bb.pp
  %.sroa.06.010.i.i.i1441.us = phi i64 [ %.sroa.06.0.i.i.i1445.us, %bb.pp ], [ %.sroa.06.07.i.i.i1439.us, %bb.pn ] ; 3 uses
  %.sroa.02.09.i.i.i1442.us = phi i64 [ %.sroa.02.0.i.i.i1444.us, %bb.pp ], [ %.sroa.02.06.i.i.i1438.us, %bb.pn ] ; 3 uses
  %.sroa.0.08.i.i.i1443.us = phi ptr [ %i.dkk, %bb.pp ], [ %.sroa.0158.sroa.4.0.copyload, %bb.pn ] ; 3 uses
  %i.dkk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1443.us, i64 24, !dbg !136998 ; 2 uses
  %i.dkl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1443.us, i64 8, !dbg !136999
  %i.dkm = load ptr, ptr %i.dkl, align 8, !dbg !136999, !noalias !134466, !noundef !3448 ; 2 uses
  %i.dkn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1443.us, i64 16, !dbg !137000
  %i.dko = load i64, ptr %i.dkn, align 8, !dbg !137000, !noalias !134466, !noundef !3448 ; 4 uses
  %i.dkp = icmp ult i64 %.sroa.02.09.i.i.i1442.us, %i.dko, !dbg !137001
  br i1 %i.dkp, label %bb.po, label %.split3139.us.invoke, !dbg !137001

bb.po:                                            ; preds = %.lr.ph.i.i.i1440.us
  %i.dkq = icmp ult i64 %.sroa.06.010.i.i.i1441.us, %i.dko, !dbg !137002
  br i1 %i.dkq, label %bb.pp, label %.split3139.us.invoke, !dbg !137002

bb.pp:                                            ; preds = %bb.po
  %i.dkr = getelementptr inbounds nuw [8 x i8], ptr %i.dkm, i64 %.sroa.02.09.i.i.i1442.us, !dbg !137001
  %i.dks = getelementptr inbounds nuw [8 x i8], ptr %i.dkm, i64 %.sroa.06.010.i.i.i1441.us, !dbg !137002
  %.sroa.02.0.i.i.i1444.us = load i64, ptr %i.dkr, align 8, !dbg !136995, !noalias !134466, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1445.us = load i64, ptr %i.dks, align 8, !dbg !136996, !noalias !134466, !noundef !3448 ; 2 uses
  %i.dkt = icmp eq ptr %i.dkk, %i.dkg, !dbg !137003
  br i1 %i.dkt, label %.loopexit2757.us, label %.lr.ph.i.i.i1440.us, !dbg !136997

.loopexit2757.us:                                 ; preds = %bb.pp, %bb.pn
  %.sroa.7.0.ph.i1447.us = phi i64 [ %.sroa.06.07.i.i.i1439.us, %bb.pn ], [ %.sroa.06.0.i.i.i1445.us, %bb.pp ] ; 14 uses
  %.sroa.5.0.ph.i1448.us = phi i64 [ %.sroa.02.06.i.i.i1438.us, %bb.pn ], [ %.sroa.02.0.i.i.i1444.us, %bb.pp ] ; 20 uses
  %i.dku = add nuw i64 %.sroa.101836.03145.us, 1, !dbg !137004
  %i.dkv = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !137005, !noundef !3448
  %i.dkw = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !137006, !noundef !3448
  %i.dkx = icmp ult i64 %.sroa.101836.03145.us, %i.dkw, !dbg !137007
  call void @llvm.assume(i1 %i.dkx), !dbg !137008
  %i.dky = getelementptr inbounds nuw [4 x i8], ptr %i.dkv, i64 %.sroa.101836.03145.us, !dbg !137009
  %i.dkz = load i32, ptr %i.dky, align 4, !dbg !137010, !noundef !3448 ; 10 uses
  %i.dla = icmp ult i64 %.sroa.5.0.ph.i1448.us, %.sroa.7.0.ph.i1447.us, !dbg !137011
  br i1 %i.dla, label %.lr.ph.us3149, label %.loopexit2756.us, !dbg !137012

.lr.ph.us3149:                                    ; preds = %.loopexit2757.us
  switch i32 %i.dkz, label %.lr.ph.split.split.us3151.preheader [
    i32 0, label %.lr.ph.split.us.us3156.preheader
    i32 -1, label %.lr.ph.split.split.us.us3154.preheader
  ], !prof !3670

.lr.ph.split.split.us3151.preheader:              ; preds = %.lr.ph.us3149
  %i.dlb = sub i64 %.sroa.7.0.ph.i1447.us, %.sroa.5.0.ph.i1448.us, !dbg !137012
  %.neg = add i64 %.sroa.5.0.ph.i1448.us, 1, !dbg !137012
  %xtraiter4576 = and i64 %i.dlb, 1, !dbg !137012
  %lcmp.mod4577.not = icmp eq i64 %xtraiter4576, 0, !dbg !137012
  br i1 %lcmp.mod4577.not, label %.lr.ph.split.split.us3151.prol.loopexit, label %.lr.ph.split.split.us3151.prol, !dbg !137012

.lr.ph.split.split.us3151.prol:                   ; preds = %.lr.ph.split.split.us3151.preheader
  %i.dlc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !137013, !noundef !3448
  %i.dld = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dle = icmp ult i64 %.sroa.5.0.ph.i1448.us, %i.dld, !dbg !137015
  call void @llvm.assume(i1 %i.dle), !dbg !137016
  %i.dlf = getelementptr inbounds nuw [4 x i8], ptr %i.dlc, i64 %.sroa.5.0.ph.i1448.us, !dbg !137017
  %i.dlg = load i32, ptr %i.dlf, align 4, !dbg !137018, !noundef !3448 ; 2 uses
  %i.dlh = srem i32 %i.dlg, %i.dkz, !dbg !137019  ; 2 uses
  %.not.i1457.us.prol = icmp eq i32 %i.dlh, 0, !dbg !137020
  %i.dli = xor i32 %i.dlg, %i.dkz, !dbg !137020
  %i.dlj = icmp slt i32 %i.dli, 0, !dbg !137020
  %i.dlk = select i1 %i.dlj, i32 %i.dkz, i32 0, !dbg !137020
  %spec.select2673.us.prol = add i32 %i.dlh, %i.dlk, !dbg !137020
  %.sroa.3.0.i1458.us.prol = select i1 %.not.i1457.us.prol, i32 0, i32 %spec.select2673.us.prol, !dbg !137020
  %i.dll = add nuw i64 %.sroa.5.0.ph.i1448.us, 1, !dbg !137021
  %i.dlm = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.5.0.ph.i1448.us, !dbg !137022
  store i32 %.sroa.3.0.i1458.us.prol, ptr %i.dlm, align 4, !dbg !137023
  br label %.lr.ph.split.split.us3151.prol.loopexit, !dbg !137012

.lr.ph.split.split.us3151.prol.loopexit:          ; preds = %.lr.ph.split.split.us3151.prol, %.lr.ph.split.split.us3151.preheader
  %.sroa.0433.03142.us3152.unr = phi i64 [ %.sroa.5.0.ph.i1448.us, %.lr.ph.split.split.us3151.preheader ], [ %i.dll, %.lr.ph.split.split.us3151.prol ]
  %i.dln = icmp eq i64 %.sroa.7.0.ph.i1447.us, %.neg, !dbg !137012
  br i1 %i.dln, label %.loopexit2756.us, label %.lr.ph.split.split.us3151, !dbg !137012

.lr.ph.split.split.us.us3154.preheader:           ; preds = %.lr.ph.us3149
  %i.dlo = sub i64 %.sroa.7.0.ph.i1447.us, %.sroa.5.0.ph.i1448.us, !dbg !137012 ; 3 uses
  %min.iters.check4368 = icmp ult i64 %i.dlo, 8, !dbg !137012
  br i1 %min.iters.check4368, label %.lr.ph.split.split.us.us3154.preheader4474, label %vector.memcheck4361, !dbg !137012

vector.memcheck4361:                              ; preds = %.lr.ph.split.split.us.us3154.preheader
  %i.dlp = shl nuw i64 %.sroa.5.0.ph.i1448.us, 2, !dbg !137012
  %scevgep4362 = getelementptr i8, ptr %i.csr, i64 %i.dlp, !dbg !137012
  %i.dlq = shl i64 %.sroa.7.0.ph.i1447.us, 2, !dbg !137012
  %scevgep4363 = getelementptr i8, ptr %i.csr, i64 %i.dlq, !dbg !137012
  %bound04364 = icmp ult ptr %scevgep4362, %scevgep4339, !dbg !137012
  %bound14365 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4363, !dbg !137012
  %found.conflict4366 = and i1 %bound04364, %bound14365, !dbg !137012
  br i1 %found.conflict4366, label %.lr.ph.split.split.us.us3154.preheader4474, label %vector.ph4369

vector.ph4369:                                    ; preds = %vector.memcheck4361
  %n.vec4370 = and i64 %i.dlo, -8                 ; 3 uses
  %i.dlr = add i64 %.sroa.5.0.ph.i1448.us, %n.vec4370
  %i.dls = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.5.0.ph.i1448.us
  br label %vector.body4374

vector.body4374:                                  ; preds = %vector.body4374, %vector.ph4369
  %index4375 = phi i64 [ 0, %vector.ph4369 ], [ %index.next4380, %vector.body4374 ] ; 2 uses
  %i.dlt = getelementptr inbounds nuw [4 x i8], ptr %i.dls, i64 %index4375, !dbg !137022 ; 2 uses
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.dlt, i64 16, !dbg !137023
  store <4 x i32> zeroinitializer, ptr %i.dlt, align 4, !dbg !137023, !alias.scope !134500, !noalias !134501
  store <4 x i32> zeroinitializer, ptr %i.dlu, align 4, !dbg !137023, !alias.scope !134500, !noalias !134501
  %index.next4380 = add nuw i64 %index4375, 8     ; 2 uses
  %i.dlv = icmp eq i64 %index.next4380, %n.vec4370, !dbg !137012
  br i1 %i.dlv, label %middle.block4382, label %vector.body4374, !dbg !137012, !llvm.loop !132175

middle.block4382:                                 ; preds = %vector.body4374
  %cmp.n4383 = icmp eq i64 %i.dlo, %n.vec4370, !dbg !137012
  br i1 %cmp.n4383, label %.loopexit2756.us, label %.lr.ph.split.split.us.us3154.preheader4474, !dbg !137012

.lr.ph.split.split.us.us3154.preheader4474:       ; preds = %vector.memcheck4361, %.lr.ph.split.split.us.us3154.preheader, %middle.block4382
  %.sroa.0433.03142.us3143.us.ph = phi i64 [ %.sroa.5.0.ph.i1448.us, %vector.memcheck4361 ], [ %.sroa.5.0.ph.i1448.us, %.lr.ph.split.split.us.us3154.preheader ], [ %i.dlr, %middle.block4382 ] ; 4 uses
  %i.dlw = sub i64 %.sroa.7.0.ph.i1447.us, %.sroa.0433.03142.us3143.us.ph, !dbg !137012
  %xtraiter4570 = and i64 %i.dlw, 7, !dbg !137012 ; 2 uses
  %lcmp.mod4571.not = icmp eq i64 %xtraiter4570, 0, !dbg !137012
  br i1 %lcmp.mod4571.not, label %.lr.ph.split.split.us.us3154.prol.loopexit, label %.lr.ph.split.split.us.us3154.prol, !dbg !137012

.lr.ph.split.split.us.us3154.prol:                ; preds = %.lr.ph.split.split.us.us3154.preheader4474, %.lr.ph.split.split.us.us3154.prol
  %.sroa.0433.03142.us3143.us.prol = phi i64 [ %i.dlz, %.lr.ph.split.split.us.us3154.prol ], [ %.sroa.0433.03142.us3143.us.ph, %.lr.ph.split.split.us.us3154.preheader4474 ] ; 3 uses
  %prol.iter4572 = phi i64 [ %prol.iter4572.next, %.lr.ph.split.split.us.us3154.prol ], [ 0, %.lr.ph.split.split.us.us3154.preheader4474 ]
  %i.dlx = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dly = icmp ult i64 %.sroa.0433.03142.us3143.us.prol, %i.dlx, !dbg !137015
  call void @llvm.assume(i1 %i.dly), !dbg !137016
  %i.dlz = add nuw i64 %.sroa.0433.03142.us3143.us.prol, 1, !dbg !137021 ; 2 uses
  %i.dma = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0433.03142.us3143.us.prol, !dbg !137022
  store i32 0, ptr %i.dma, align 4, !dbg !137023
  %prol.iter4572.next = add i64 %prol.iter4572, 1, !dbg !137012 ; 2 uses
  %prol.iter4572.cmp.not = icmp eq i64 %prol.iter4572.next, %xtraiter4570, !dbg !137012
  br i1 %prol.iter4572.cmp.not, label %.lr.ph.split.split.us.us3154.prol.loopexit, label %.lr.ph.split.split.us.us3154.prol, !dbg !137012, !llvm.loop !132176

.lr.ph.split.split.us.us3154.prol.loopexit:       ; preds = %.lr.ph.split.split.us.us3154.prol, %.lr.ph.split.split.us.us3154.preheader4474
  %.sroa.0433.03142.us3143.us.unr = phi i64 [ %.sroa.0433.03142.us3143.us.ph, %.lr.ph.split.split.us.us3154.preheader4474 ], [ %i.dlz, %.lr.ph.split.split.us.us3154.prol ]
  %i.dmb = sub i64 %.sroa.0433.03142.us3143.us.ph, %.sroa.7.0.ph.i1447.us, !dbg !137012
  %i.dmc = icmp ugt i64 %i.dmb, -8, !dbg !137012
  br i1 %i.dmc, label %.loopexit2756.us, label %.lr.ph.split.split.us.us3154, !dbg !137012

.lr.ph.split.us.us3156.preheader:                 ; preds = %.lr.ph.us3149
  %i.dmd = sub i64 %.sroa.7.0.ph.i1447.us, %.sroa.5.0.ph.i1448.us, !dbg !137012 ; 3 uses
  %min.iters.check4344 = icmp ult i64 %i.dmd, 8, !dbg !137012
  br i1 %min.iters.check4344, label %.lr.ph.split.us.us3156.preheader4472, label %vector.memcheck4336, !dbg !137012

vector.memcheck4336:                              ; preds = %.lr.ph.split.us.us3156.preheader
  %i.dme = shl nuw i64 %.sroa.5.0.ph.i1448.us, 2, !dbg !137012
  %scevgep4337 = getelementptr i8, ptr %i.csr, i64 %i.dme, !dbg !137012
  %i.dmf = shl i64 %.sroa.7.0.ph.i1447.us, 2, !dbg !137012
  %scevgep4338 = getelementptr i8, ptr %i.csr, i64 %i.dmf, !dbg !137012
  %bound04340 = icmp ult ptr %scevgep4337, %scevgep4339, !dbg !137012
  %bound14341 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4338, !dbg !137012
  %found.conflict4342 = and i1 %bound04340, %bound14341, !dbg !137012
  br i1 %found.conflict4342, label %.lr.ph.split.us.us3156.preheader4472, label %vector.ph4345

vector.ph4345:                                    ; preds = %vector.memcheck4336
  %n.vec4346 = and i64 %i.dmd, -8                 ; 3 uses
  %i.dmg = add i64 %.sroa.5.0.ph.i1448.us, %n.vec4346
  %i.dmh = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.5.0.ph.i1448.us
  br label %vector.body4350

vector.body4350:                                  ; preds = %vector.body4350, %vector.ph4345
  %index4351 = phi i64 [ 0, %vector.ph4345 ], [ %index.next4356, %vector.body4350 ] ; 2 uses
  %i.dmi = getelementptr inbounds nuw [4 x i8], ptr %i.dmh, i64 %index4351, !dbg !137022 ; 2 uses
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.dmi, i64 16, !dbg !137023
  store <4 x i32> zeroinitializer, ptr %i.dmi, align 4, !dbg !137023, !alias.scope !134502, !noalias !134503
  store <4 x i32> zeroinitializer, ptr %i.dmj, align 4, !dbg !137023, !alias.scope !134502, !noalias !134503
  %index.next4356 = add nuw i64 %index4351, 8     ; 2 uses
  %i.dmk = icmp eq i64 %index.next4356, %n.vec4346, !dbg !137012
  br i1 %i.dmk, label %middle.block4358, label %vector.body4350, !dbg !137012, !llvm.loop !132180

middle.block4358:                                 ; preds = %vector.body4350
  %cmp.n4359 = icmp eq i64 %i.dmd, %n.vec4346, !dbg !137012
  br i1 %cmp.n4359, label %.loopexit2756.us, label %.lr.ph.split.us.us3156.preheader4472, !dbg !137012

.lr.ph.split.us.us3156.preheader4472:             ; preds = %vector.memcheck4336, %.lr.ph.split.us.us3156.preheader, %middle.block4358
  %.sroa.0433.03142.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1448.us, %vector.memcheck4336 ], [ %.sroa.5.0.ph.i1448.us, %.lr.ph.split.us.us3156.preheader ], [ %i.dmg, %middle.block4358 ] ; 4 uses
  %i.dml = sub i64 %.sroa.7.0.ph.i1447.us, %.sroa.0433.03142.us.us.ph, !dbg !137012
  %xtraiter4573 = and i64 %i.dml, 7, !dbg !137012 ; 2 uses
  %lcmp.mod4574.not = icmp eq i64 %xtraiter4573, 0, !dbg !137012
  br i1 %lcmp.mod4574.not, label %.lr.ph.split.us.us3156.prol.loopexit, label %.lr.ph.split.us.us3156.prol, !dbg !137012

.lr.ph.split.us.us3156.prol:                      ; preds = %.lr.ph.split.us.us3156.preheader4472, %.lr.ph.split.us.us3156.prol
  %.sroa.0433.03142.us.us.prol = phi i64 [ %i.dmo, %.lr.ph.split.us.us3156.prol ], [ %.sroa.0433.03142.us.us.ph, %.lr.ph.split.us.us3156.preheader4472 ] ; 3 uses
  %prol.iter4575 = phi i64 [ %prol.iter4575.next, %.lr.ph.split.us.us3156.prol ], [ 0, %.lr.ph.split.us.us3156.preheader4472 ]
  %i.dmm = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dmn = icmp ult i64 %.sroa.0433.03142.us.us.prol, %i.dmm, !dbg !137015
  call void @llvm.assume(i1 %i.dmn), !dbg !137016
  %i.dmo = add nuw i64 %.sroa.0433.03142.us.us.prol, 1, !dbg !137021 ; 2 uses
  %i.dmp = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0433.03142.us.us.prol, !dbg !137022
  store i32 0, ptr %i.dmp, align 4, !dbg !137023
  %prol.iter4575.next = add i64 %prol.iter4575, 1, !dbg !137012 ; 2 uses
  %prol.iter4575.cmp.not = icmp eq i64 %prol.iter4575.next, %xtraiter4573, !dbg !137012
  br i1 %prol.iter4575.cmp.not, label %.lr.ph.split.us.us3156.prol.loopexit, label %.lr.ph.split.us.us3156.prol, !dbg !137012, !llvm.loop !132181

.lr.ph.split.us.us3156.prol.loopexit:             ; preds = %.lr.ph.split.us.us3156.prol, %.lr.ph.split.us.us3156.preheader4472
  %.sroa.0433.03142.us.us.unr = phi i64 [ %.sroa.0433.03142.us.us.ph, %.lr.ph.split.us.us3156.preheader4472 ], [ %i.dmo, %.lr.ph.split.us.us3156.prol ]
  %i.dmq = sub i64 %.sroa.0433.03142.us.us.ph, %.sroa.7.0.ph.i1447.us, !dbg !137012
  %i.dmr = icmp ugt i64 %i.dmq, -8, !dbg !137012
  br i1 %i.dmr, label %.loopexit2756.us, label %.lr.ph.split.us.us3156, !dbg !137012

.lr.ph.split.split.us3151:                        ; preds = %.lr.ph.split.split.us3151.prol.loopexit, %.lr.ph.split.split.us3151
  %.sroa.0433.03142.us3152 = phi i64 [ %i.dnm, %.lr.ph.split.split.us3151 ], [ %.sroa.0433.03142.us3152.unr, %.lr.ph.split.split.us3151.prol.loopexit ] ; 5 uses
  %i.dms = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !137013, !noundef !3448
  %i.dmt = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dmu = icmp ult i64 %.sroa.0433.03142.us3152, %i.dmt, !dbg !137015
  call void @llvm.assume(i1 %i.dmu), !dbg !137016
  %i.dmv = getelementptr inbounds nuw [4 x i8], ptr %i.dms, i64 %.sroa.0433.03142.us3152, !dbg !137017
  %i.dmw = load i32, ptr %i.dmv, align 4, !dbg !137018, !noundef !3448 ; 2 uses
  %i.dmx = srem i32 %i.dmw, %i.dkz, !dbg !137019  ; 2 uses
  %.not.i1457.us = icmp eq i32 %i.dmx, 0, !dbg !137020
  %i.dmy = xor i32 %i.dmw, %i.dkz, !dbg !137020
  %i.dmz = icmp slt i32 %i.dmy, 0, !dbg !137020
  %i.dna = select i1 %i.dmz, i32 %i.dkz, i32 0, !dbg !137020
  %spec.select2673.us = add i32 %i.dmx, %i.dna, !dbg !137020
  %.sroa.3.0.i1458.us = select i1 %.not.i1457.us, i32 0, i32 %spec.select2673.us, !dbg !137020
  %i.dnb = add nuw i64 %.sroa.0433.03142.us3152, 1, !dbg !137021 ; 3 uses
  %i.dnc = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0433.03142.us3152, !dbg !137022
  store i32 %.sroa.3.0.i1458.us, ptr %i.dnc, align 4, !dbg !137023
  %i.dnd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !137013, !noundef !3448
  %i.dne = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dnf = icmp ult i64 %i.dnb, %i.dne, !dbg !137015
  call void @llvm.assume(i1 %i.dnf), !dbg !137016
  %i.dng = getelementptr inbounds nuw [4 x i8], ptr %i.dnd, i64 %i.dnb, !dbg !137017
  %i.dnh = load i32, ptr %i.dng, align 4, !dbg !137018, !noundef !3448 ; 2 uses
  %i.dni = srem i32 %i.dnh, %i.dkz, !dbg !137019  ; 2 uses
  %.not.i1457.us.1 = icmp eq i32 %i.dni, 0, !dbg !137020
  %i.dnj = xor i32 %i.dnh, %i.dkz, !dbg !137020
  %i.dnk = icmp slt i32 %i.dnj, 0, !dbg !137020
  %i.dnl = select i1 %i.dnk, i32 %i.dkz, i32 0, !dbg !137020
  %spec.select2673.us.1 = add i32 %i.dni, %i.dnl, !dbg !137020
  %.sroa.3.0.i1458.us.1 = select i1 %.not.i1457.us.1, i32 0, i32 %spec.select2673.us.1, !dbg !137020
  %i.dnm = add nuw i64 %.sroa.0433.03142.us3152, 2, !dbg !137021 ; 2 uses
  %i.dnn = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dnb, !dbg !137022
  store i32 %.sroa.3.0.i1458.us.1, ptr %i.dnn, align 4, !dbg !137023
  %exitcond3611.not.1 = icmp eq i64 %i.dnm, %.sroa.7.0.ph.i1447.us, !dbg !137011
  br i1 %exitcond3611.not.1, label %.loopexit2756.us, label %.lr.ph.split.split.us3151, !dbg !137012

.lr.ph.split.split.us.us3154:                     ; preds = %.lr.ph.split.split.us.us3154.prol.loopexit, %.lr.ph.split.split.us.us3154
  %.sroa.0433.03142.us3143.us = phi i64 [ %i.dos, %.lr.ph.split.split.us.us3154 ], [ %.sroa.0433.03142.us3143.us.unr, %.lr.ph.split.split.us.us3154.prol.loopexit ] ; 10 uses
  %i.dno = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dnp = icmp ult i64 %.sroa.0433.03142.us3143.us, %i.dno, !dbg !137015
  call void @llvm.assume(i1 %i.dnp), !dbg !137016
  %i.dnq = add nuw i64 %.sroa.0433.03142.us3143.us, 1, !dbg !137021 ; 2 uses
  %i.dnr = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0433.03142.us3143.us, !dbg !137022
  store i32 0, ptr %i.dnr, align 4, !dbg !137023
  %i.dns = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dnt = icmp ult i64 %i.dnq, %i.dns, !dbg !137015
  call void @llvm.assume(i1 %i.dnt), !dbg !137016
  %i.dnu = add nuw i64 %.sroa.0433.03142.us3143.us, 2, !dbg !137021 ; 2 uses
  %i.dnv = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dnq, !dbg !137022
  store i32 0, ptr %i.dnv, align 4, !dbg !137023
  %i.dnw = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dnx = icmp ult i64 %i.dnu, %i.dnw, !dbg !137015
  call void @llvm.assume(i1 %i.dnx), !dbg !137016
  %i.dny = add nuw i64 %.sroa.0433.03142.us3143.us, 3, !dbg !137021 ; 2 uses
  %i.dnz = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dnu, !dbg !137022
  store i32 0, ptr %i.dnz, align 4, !dbg !137023
  %i.doa = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dob = icmp ult i64 %i.dny, %i.doa, !dbg !137015
  call void @llvm.assume(i1 %i.dob), !dbg !137016
  %i.doc = add nuw i64 %.sroa.0433.03142.us3143.us, 4, !dbg !137021 ; 2 uses
  %i.dod = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dny, !dbg !137022
  store i32 0, ptr %i.dod, align 4, !dbg !137023
  %i.doe = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dof = icmp ult i64 %i.doc, %i.doe, !dbg !137015
  call void @llvm.assume(i1 %i.dof), !dbg !137016
  %i.dog = add nuw i64 %.sroa.0433.03142.us3143.us, 5, !dbg !137021 ; 2 uses
  %i.doh = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.doc, !dbg !137022
  store i32 0, ptr %i.doh, align 4, !dbg !137023
  %i.doi = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.doj = icmp ult i64 %i.dog, %i.doi, !dbg !137015
  call void @llvm.assume(i1 %i.doj), !dbg !137016
  %i.dok = add nuw i64 %.sroa.0433.03142.us3143.us, 6, !dbg !137021 ; 2 uses
  %i.dol = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dog, !dbg !137022
  store i32 0, ptr %i.dol, align 4, !dbg !137023
  %i.dom = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.don = icmp ult i64 %i.dok, %i.dom, !dbg !137015
  call void @llvm.assume(i1 %i.don), !dbg !137016
  %i.doo = add nuw i64 %.sroa.0433.03142.us3143.us, 7, !dbg !137021 ; 2 uses
  %i.dop = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dok, !dbg !137022
  store i32 0, ptr %i.dop, align 4, !dbg !137023
  %i.doq = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dor = icmp ult i64 %i.doo, %i.doq, !dbg !137015
  call void @llvm.assume(i1 %i.dor), !dbg !137016
  %i.dos = add nuw i64 %.sroa.0433.03142.us3143.us, 8, !dbg !137021 ; 2 uses
  %i.dot = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.doo, !dbg !137022
  store i32 0, ptr %i.dot, align 4, !dbg !137023
  %exitcond3608.not.7 = icmp eq i64 %i.dos, %.sroa.7.0.ph.i1447.us, !dbg !137011
  br i1 %exitcond3608.not.7, label %.loopexit2756.us, label %.lr.ph.split.split.us.us3154, !dbg !137012, !llvm.loop !132182

.lr.ph.split.us.us3156:                           ; preds = %.lr.ph.split.us.us3156.prol.loopexit, %.lr.ph.split.us.us3156
  %.sroa.0433.03142.us.us = phi i64 [ %i.dpy, %.lr.ph.split.us.us3156 ], [ %.sroa.0433.03142.us.us.unr, %.lr.ph.split.us.us3156.prol.loopexit ] ; 10 uses
  %i.dou = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dov = icmp ult i64 %.sroa.0433.03142.us.us, %i.dou, !dbg !137015
  call void @llvm.assume(i1 %i.dov), !dbg !137016
  %i.dow = add nuw i64 %.sroa.0433.03142.us.us, 1, !dbg !137021 ; 2 uses
  %i.dox = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0433.03142.us.us, !dbg !137022
  store i32 0, ptr %i.dox, align 4, !dbg !137023
  %i.doy = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.doz = icmp ult i64 %i.dow, %i.doy, !dbg !137015
  call void @llvm.assume(i1 %i.doz), !dbg !137016
  %i.dpa = add nuw i64 %.sroa.0433.03142.us.us, 2, !dbg !137021 ; 2 uses
  %i.dpb = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dow, !dbg !137022
  store i32 0, ptr %i.dpb, align 4, !dbg !137023
  %i.dpc = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dpd = icmp ult i64 %i.dpa, %i.dpc, !dbg !137015
  call void @llvm.assume(i1 %i.dpd), !dbg !137016
  %i.dpe = add nuw i64 %.sroa.0433.03142.us.us, 3, !dbg !137021 ; 2 uses
  %i.dpf = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dpa, !dbg !137022
  store i32 0, ptr %i.dpf, align 4, !dbg !137023
  %i.dpg = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dph = icmp ult i64 %i.dpe, %i.dpg, !dbg !137015
  call void @llvm.assume(i1 %i.dph), !dbg !137016
  %i.dpi = add nuw i64 %.sroa.0433.03142.us.us, 4, !dbg !137021 ; 2 uses
  %i.dpj = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dpe, !dbg !137022
  store i32 0, ptr %i.dpj, align 4, !dbg !137023
  %i.dpk = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dpl = icmp ult i64 %i.dpi, %i.dpk, !dbg !137015
  call void @llvm.assume(i1 %i.dpl), !dbg !137016
  %i.dpm = add nuw i64 %.sroa.0433.03142.us.us, 5, !dbg !137021 ; 2 uses
  %i.dpn = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dpi, !dbg !137022
  store i32 0, ptr %i.dpn, align 4, !dbg !137023
  %i.dpo = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dpp = icmp ult i64 %i.dpm, %i.dpo, !dbg !137015
  call void @llvm.assume(i1 %i.dpp), !dbg !137016
  %i.dpq = add nuw i64 %.sroa.0433.03142.us.us, 6, !dbg !137021 ; 2 uses
  %i.dpr = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dpm, !dbg !137022
  store i32 0, ptr %i.dpr, align 4, !dbg !137023
  %i.dps = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dpt = icmp ult i64 %i.dpq, %i.dps, !dbg !137015
  call void @llvm.assume(i1 %i.dpt), !dbg !137016
  %i.dpu = add nuw i64 %.sroa.0433.03142.us.us, 7, !dbg !137021 ; 2 uses
  %i.dpv = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dpq, !dbg !137022
  store i32 0, ptr %i.dpv, align 4, !dbg !137023
  %i.dpw = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137014, !noundef !3448
  %i.dpx = icmp ult i64 %i.dpu, %i.dpw, !dbg !137015
  call void @llvm.assume(i1 %i.dpx), !dbg !137016
  %i.dpy = add nuw i64 %.sroa.0433.03142.us.us, 8, !dbg !137021 ; 2 uses
  %i.dpz = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dpu, !dbg !137022
  store i32 0, ptr %i.dpz, align 4, !dbg !137023
  %exitcond3610.not.7 = icmp eq i64 %i.dpy, %.sroa.7.0.ph.i1447.us, !dbg !137011
  br i1 %exitcond3610.not.7, label %.loopexit2756.us, label %.lr.ph.split.us.us3156, !dbg !137012, !llvm.loop !132183

.loopexit2756.us:                                 ; preds = %.lr.ph.split.split.us.us3154.prol.loopexit, %.lr.ph.split.split.us.us3154, %.lr.ph.split.us.us3156.prol.loopexit, %.lr.ph.split.us.us3156, %.lr.ph.split.split.us3151.prol.loopexit, %.lr.ph.split.split.us3151, %middle.block4382, %middle.block4358, %.loopexit2757.us
  %i.dqa = icmp ult i64 %i.dki, 2, !dbg !136991
  br i1 %i.dqa, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %bb.pn, !dbg !136991
end_hunk_10
begin_hunk_11_@_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB3_19ListNumericOpHelper12__finish_implNtNtBb_9datatypes9Int32TypeEBb_:bb.a
  %i.dqh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1469.us, i64 24, !dbg !137033 ; 2 uses
  %i.dqi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1469.us, i64 8, !dbg !137034
  %i.dqj = load ptr, ptr %i.dqi, align 8, !dbg !137034, !noalias !134510, !noundef !3448 ; 2 uses
  %i.dqk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1469.us, i64 16, !dbg !137035
  %i.dql = load i64, ptr %i.dqk, align 8, !dbg !137035, !noalias !134510, !noundef !3448 ; 4 uses
  %i.dqm = icmp ult i64 %.sroa.02.09.i.i.i1468.us, %i.dql, !dbg !137036
  br i1 %i.dqm, label %bb.ps, label %.split3139.us.invoke, !dbg !137036

bb.ps:                                            ; preds = %.lr.ph.i.i.i1466.us
  %i.dqn = icmp ult i64 %.sroa.06.010.i.i.i1467.us, %i.dql, !dbg !137037
  br i1 %i.dqn, label %bb.pt, label %.split3139.us.invoke, !dbg !137037

bb.pt:                                            ; preds = %bb.ps
  %i.dqo = getelementptr inbounds nuw [8 x i8], ptr %i.dqj, i64 %.sroa.02.09.i.i.i1468.us, !dbg !137036
  %i.dqp = getelementptr inbounds nuw [8 x i8], ptr %i.dqj, i64 %.sroa.06.010.i.i.i1467.us, !dbg !137037
  %.sroa.02.0.i.i.i1470.us = load i64, ptr %i.dqo, align 8, !dbg !137030, !noalias !134510, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1471.us = load i64, ptr %i.dqp, align 8, !dbg !137031, !noalias !134510, !noundef !3448 ; 2 uses
  %i.dqq = icmp eq ptr %i.dqh, %i.dqd, !dbg !137038
  br i1 %i.dqq, label %.loopexit2754.us, label %.lr.ph.i.i.i1466.us, !dbg !137032

.loopexit2754.us:                                 ; preds = %bb.pt, %bb.pr
  %.sroa.7.0.ph.i1473.us = phi i64 [ %.sroa.06.07.i.i.i1465.us, %bb.pr ], [ %.sroa.06.0.i.i.i1471.us, %bb.pt ] ; 2 uses
  %.sroa.5.0.ph.i1474.us = phi i64 [ %.sroa.02.06.i.i.i1464.us, %bb.pr ], [ %.sroa.02.0.i.i.i1470.us, %bb.pt ] ; 2 uses
  %i.dqr = add nuw i64 %.sroa.101826.03164.us, 1, !dbg !137039
  %i.dqs = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !137040, !noundef !3448
  %i.dqt = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !137041, !noundef !3448
  %i.dqu = icmp ult i64 %.sroa.101826.03164.us, %i.dqt, !dbg !137042
  call void @llvm.assume(i1 %i.dqu), !dbg !137043
  %i.dqv = getelementptr inbounds nuw [4 x i8], ptr %i.dqs, i64 %.sroa.101826.03164.us, !dbg !137044
  %i.dqw = load i32, ptr %i.dqv, align 4, !dbg !137045, !noundef !3448 ; 2 uses
  %i.dqx = icmp ult i64 %.sroa.5.0.ph.i1474.us, %.sroa.7.0.ph.i1473.us, !dbg !137046
  br i1 %i.dqx, label %.lr.ph.us3168, label %.loopexit2753.us, !dbg !137047

.lr.ph.us3168:                                    ; preds = %.loopexit2754.us, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs8_0Bd_.exit.us
  %.sroa.0431.03163.us = phi i64 [ %i.drh, %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs8_0Bd_.exit.us ], [ %.sroa.5.0.ph.i1474.us, %.loopexit2754.us ] ; 4 uses
  %i.dqy = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !137048, !noundef !3448
  %i.dqz = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137049, !noundef !3448
  %i.dra = icmp ult i64 %.sroa.0431.03163.us, %i.dqz, !dbg !137050
  call void @llvm.assume(i1 %i.dra), !dbg !137051
  %i.drb = getelementptr inbounds nuw [4 x i8], ptr %i.dqy, i64 %.sroa.0431.03163.us, !dbg !137052
  %i.drc = load i32, ptr %i.drb, align 4, !dbg !137053, !noundef !3448 ; 4 uses
  %.off.i1482.us = add i32 %i.drc, -1, !dbg !137054
  %switch.i1483.us = icmp ult i32 %.off.i1482.us, -2, !dbg !137054
  br i1 %switch.i1483.us, label %bb.pu, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs8_0Bd_.exit.us, !dbg !137054, !prof !3642

bb.pu:                                            ; preds = %.lr.ph.us3168
  %i.drd = srem i32 %i.dqw, %i.drc, !dbg !137055  ; 2 uses
  %.not.i.i1485.us = icmp eq i32 %i.drd, 0, !dbg !137056
  br i1 %.not.i.i1485.us, label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs8_0Bd_.exit.us, label %bb.pv, !dbg !137056

bb.pv:                                            ; preds = %bb.pu
  %i.dre = xor i32 %i.drc, %i.dqw, !dbg !137057
  %i.drf = icmp slt i32 %i.dre, 0, !dbg !137057
  %i.drg = select i1 %i.drf, i32 %i.drc, i32 0, !dbg !137057
  %spec.select.i1486.us = add i32 %i.drd, %i.drg, !dbg !137057
  br label %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs8_0Bd_.exit.us, !dbg !137057

_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs8_0Bd_.exit.us: ; preds = %bb.pv, %bb.pu, %.lr.ph.us3168
  %.sroa.3.0.i.i1484.us = phi i32 [ %spec.select.i1486.us, %bb.pv ], [ 0, %bb.pu ], [ 0, %.lr.ph.us3168 ], !dbg !137058
  %i.drh = add nuw i64 %.sroa.0431.03163.us, 1, !dbg !137059 ; 2 uses
  %i.dri = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0431.03163.us, !dbg !137060
  store i32 %.sroa.3.0.i.i1484.us, ptr %i.dri, align 4, !dbg !137061
  %exitcond3612.not = icmp eq i64 %i.drh, %.sroa.7.0.ph.i1473.us, !dbg !137046
  br i1 %exitcond3612.not, label %.loopexit2753.us, label %.lr.ph.us3168, !dbg !137047

.loopexit2753.us:                                 ; preds = %_RNCINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4list5innerNtB5_19ListNumericOpHelper12__finish_implNtNtBd_9datatypes9Int32TypeEs8_0Bd_.exit.us, %.loopexit2754.us
  %i.drj = icmp ult i64 %i.dqf, 2, !dbg !137026
  br i1 %i.drj, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %bb.pr, !dbg !137026

.lr.ph3167.split:                                 ; preds = %.lr.ph3167
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0154.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !134508), !dbg !137029
  br label %.lr.ph3134.split.invoke, !dbg !137062

bb.pw:                                            ; preds = %bb.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !134626
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.py unwind label %bb.ro, !dbg !134626

bb.px:                                            ; preds = %bb.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !134626
  invoke void @_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE16leaf_ranges_iterCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bss, i64 noundef %i.bsu)
          to label %bb.qc unwind label %bb.ro, !dbg !134626

bb.py:                                            ; preds = %bb.pw
  %.sroa.0166.sroa.0.0.copyload = load ptr, ptr %i.co, align 8, !dbg !137063 ; 2 uses
  %.sroa.0166.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !137063
  %.sroa.0166.sroa.2.0.copyload = load i64, ptr %.sroa.0166.sroa.2.0..sroa_idx, align 8, !dbg !137063 ; 2 uses
  %.sroa.0166.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16, !dbg !137063
  %.sroa.0166.sroa.3.0.copyload = load i64, ptr %.sroa.0166.sroa.3.0..sroa_idx, align 8, !dbg !137063 ; 2 uses
  %.sroa.0166.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24, !dbg !137063
  %.sroa.0166.sroa.4.0.copyload = load ptr, ptr %.sroa.0166.sroa.4.0..sroa_idx, align 8, !dbg !137063 ; 3 uses
  %.sroa.0166.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 32, !dbg !137063
  %.sroa.0166.sroa.5.0.copyload = load i64, ptr %.sroa.0166.sroa.5.0..sroa_idx, align 8, !dbg !137063 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !136768
  %i.drk = icmp ugt i64 %.sroa.0166.sroa.3.0.copyload, %.sroa.0166.sroa.2.0.copyload, !dbg !137064
  br i1 %i.drk, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %.lr.ph3114, !dbg !137064

.lr.ph3114:                                       ; preds = %bb.py
  %i.drl = icmp eq i64 %.sroa.0166.sroa.3.0.copyload, 2
  %.idx.i.i.i1489 = mul nuw nsw i64 %.sroa.0166.sroa.5.0.copyload, 24
  %i.drm = getelementptr inbounds nuw i8, ptr %.sroa.0166.sroa.4.0.copyload, i64 %.idx.i.i.i1489
  %i.drn = icmp eq i64 %.sroa.0166.sroa.5.0.copyload, 0
  br i1 %i.drl, label %.lr.ph3114.split.us, label %.lr.ph3114.split, !prof !3552

.lr.ph3114.split.us:                              ; preds = %.lr.ph3114
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.sroa.4.0.copyload) ]
  %scevgep4321 = getelementptr inbounds nuw i8, ptr %i.fc, i64 56, !dbg !137064
  br label %bb.pz, !dbg !137064

bb.pz:                                            ; preds = %.loopexit2762.us, %.lr.ph3114.split.us
  %.sroa.01851.03113.us = phi ptr [ %.sroa.0166.sroa.0.0.copyload, %.lr.ph3114.split.us ], [ %i.drp, %.loopexit2762.us ] ; 3 uses
  %.sroa.51852.03112.us = phi i64 [ %.sroa.0166.sroa.2.0.copyload, %.lr.ph3114.split.us ], [ %i.dro, %.loopexit2762.us ]
  %.sroa.101856.03111.us = phi i64 [ 0, %.lr.ph3114.split.us ], [ %i.dsa, %.loopexit2762.us ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01851.03113.us) ]
  %i.dro = add i64 %.sroa.51852.03112.us, -1, !dbg !137065 ; 2 uses
  %i.drp = getelementptr inbounds nuw i8, ptr %.sroa.01851.03113.us, i64 8, !dbg !137066 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134548), !dbg !137067
  %.sroa.02.06.i.i.i1490.us = load i64, ptr %.sroa.01851.03113.us, align 8, !dbg !137068, !alias.scope !134548, !noalias !134549, !noundef !3448 ; 2 uses
  %.sroa.06.07.i.i.i1491.us = load i64, ptr %i.drp, align 8, !dbg !137069, !alias.scope !134548, !noalias !134549, !noundef !3448 ; 2 uses
  br i1 %i.drn, label %.loopexit2763.us, label %.lr.ph.i.i.i1492.us, !dbg !137070

.lr.ph.i.i.i1492.us:                              ; preds = %bb.pz, %bb.qb
  %.sroa.06.010.i.i.i1493.us = phi i64 [ %.sroa.06.0.i.i.i1497.us, %bb.qb ], [ %.sroa.06.07.i.i.i1491.us, %bb.pz ] ; 3 uses
  %.sroa.02.09.i.i.i1494.us = phi i64 [ %.sroa.02.0.i.i.i1496.us, %bb.qb ], [ %.sroa.02.06.i.i.i1490.us, %bb.pz ] ; 3 uses
  %.sroa.0.08.i.i.i1495.us = phi ptr [ %i.drq, %bb.qb ], [ %.sroa.0166.sroa.4.0.copyload, %bb.pz ] ; 3 uses
  %i.drq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1495.us, i64 24, !dbg !137071 ; 2 uses
  %i.drr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1495.us, i64 8, !dbg !137072
  %i.drs = load ptr, ptr %i.drr, align 8, !dbg !137072, !noalias !134550, !noundef !3448 ; 2 uses
  %i.drt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i1495.us, i64 16, !dbg !137073
  %i.dru = load i64, ptr %i.drt, align 8, !dbg !137073, !noalias !134550, !noundef !3448 ; 4 uses
  %i.drv = icmp ult i64 %.sroa.02.09.i.i.i1494.us, %i.dru, !dbg !137074
  br i1 %i.drv, label %bb.qa, label %.split3139.us.invoke, !dbg !137074

bb.qa:                                            ; preds = %.lr.ph.i.i.i1492.us
  %i.drw = icmp ult i64 %.sroa.06.010.i.i.i1493.us, %i.dru, !dbg !137075
  br i1 %i.drw, label %bb.qb, label %.split3139.us.invoke, !dbg !137075

bb.qb:                                            ; preds = %bb.qa
  %i.drx = getelementptr inbounds nuw [8 x i8], ptr %i.drs, i64 %.sroa.02.09.i.i.i1494.us, !dbg !137074
  %i.dry = getelementptr inbounds nuw [8 x i8], ptr %i.drs, i64 %.sroa.06.010.i.i.i1493.us, !dbg !137075
  %.sroa.02.0.i.i.i1496.us = load i64, ptr %i.drx, align 8, !dbg !137068, !noalias !134550, !noundef !3448 ; 2 uses
  %.sroa.06.0.i.i.i1497.us = load i64, ptr %i.dry, align 8, !dbg !137069, !noalias !134550, !noundef !3448 ; 2 uses
  %i.drz = icmp eq ptr %i.drq, %i.drm, !dbg !137076
  br i1 %i.drz, label %.loopexit2763.us, label %.lr.ph.i.i.i1492.us, !dbg !137070

.loopexit2763.us:                                 ; preds = %bb.qb, %bb.pz
  %.sroa.7.0.ph.i1499.us = phi i64 [ %.sroa.06.07.i.i.i1491.us, %bb.pz ], [ %.sroa.06.0.i.i.i1497.us, %bb.qb ] ; 10 uses
  %.sroa.5.0.ph.i1500.us = phi i64 [ %.sroa.02.06.i.i.i1490.us, %bb.pz ], [ %.sroa.02.0.i.i.i1496.us, %bb.qb ] ; 12 uses
  %i.dsa = add nuw i64 %.sroa.101856.03111.us, 1, !dbg !137077
  %i.dsb = load ptr, ptr %.sroa.4.0..sroa_idx.i624, align 8, !dbg !137078, !noundef !3448
  %i.dsc = load i64, ptr %.sroa.5.0..sroa_idx5.i625, align 8, !dbg !137079, !noundef !3448
  %i.dsd = icmp ult i64 %.sroa.101856.03111.us, %i.dsc, !dbg !137080
  call void @llvm.assume(i1 %i.dsd), !dbg !137081
  %i.dse = getelementptr inbounds nuw [4 x i8], ptr %i.dsb, i64 %.sroa.101856.03111.us, !dbg !137082
  %i.dsf = load i32, ptr %i.dse, align 4, !dbg !137083, !noundef !3448 ; 4 uses
  %i.dsg = icmp ult i64 %.sroa.5.0.ph.i1500.us, %.sroa.7.0.ph.i1499.us, !dbg !137084
  br i1 %i.dsg, label %.lr.ph.us3115, label %.loopexit2762.us, !dbg !137085

.lr.ph.us3115:                                    ; preds = %.loopexit2763.us
  switch i32 %i.dsf, label %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1508.us3118 [
    i32 0, label %.lr.ph.split.us.us3123.preheader
    i32 -1, label %.lr.ph.split.split.us.us3121.preheader
  ], !prof !3668

.lr.ph.split.split.us.us3121.preheader:           ; preds = %.lr.ph.us3115
  %i.dsh = sub i64 %.sroa.7.0.ph.i1499.us, %.sroa.5.0.ph.i1500.us, !dbg !137085
  %xtraiter = and i64 %i.dsh, 3, !dbg !137085     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !137085
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.us3121.prol.loopexit, label %.lr.ph.split.split.us.us3121.prol, !dbg !137085

.lr.ph.split.split.us.us3121.prol:                ; preds = %.lr.ph.split.split.us.us3121.preheader, %.lr.ph.split.split.us.us3121.prol
  %.sroa.0437.03108.us3109.us.prol = phi i64 [ %i.dso, %.lr.ph.split.split.us.us3121.prol ], [ %.sroa.5.0.ph.i1500.us, %.lr.ph.split.split.us.us3121.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.split.us.us3121.prol ], [ 0, %.lr.ph.split.split.us.us3121.preheader ]
  %i.dsi = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !137086, !noundef !3448
  %i.dsj = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dsk = icmp ult i64 %.sroa.0437.03108.us3109.us.prol, %i.dsj, !dbg !137088
  call void @llvm.assume(i1 %i.dsk), !dbg !137089
  %i.dsl = getelementptr inbounds nuw [4 x i8], ptr %i.dsi, i64 %.sroa.0437.03108.us3109.us.prol, !dbg !137090
  %i.dsm = load i32, ptr %i.dsl, align 4, !dbg !137091, !noundef !3448
  %i.dsn = sub i32 0, %i.dsm
  %i.dso = add nuw i64 %.sroa.0437.03108.us3109.us.prol, 1, !dbg !137092 ; 2 uses
  %i.dsp = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0437.03108.us3109.us.prol, !dbg !137093
  store i32 %i.dsn, ptr %i.dsp, align 4, !dbg !137094
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !137085 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !137085
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.us.us3121.prol.loopexit, label %.lr.ph.split.split.us.us3121.prol, !dbg !137085, !llvm.loop !132250

.lr.ph.split.split.us.us3121.prol.loopexit:       ; preds = %.lr.ph.split.split.us.us3121.prol, %.lr.ph.split.split.us.us3121.preheader
  %.sroa.0437.03108.us3109.us.unr = phi i64 [ %.sroa.5.0.ph.i1500.us, %.lr.ph.split.split.us.us3121.preheader ], [ %i.dso, %.lr.ph.split.split.us.us3121.prol ]
  %i.dsq = sub i64 %.sroa.5.0.ph.i1500.us, %.sroa.7.0.ph.i1499.us, !dbg !137085
  %i.dsr = icmp ugt i64 %i.dsq, -4, !dbg !137085
  br i1 %i.dsr, label %.loopexit2762.us, label %.lr.ph.split.split.us.us3121, !dbg !137085

.lr.ph.split.us.us3123.preheader:                 ; preds = %.lr.ph.us3115
  %i.dss = sub i64 %.sroa.7.0.ph.i1499.us, %.sroa.5.0.ph.i1500.us, !dbg !137085 ; 3 uses
  %min.iters.check4323 = icmp ult i64 %i.dss, 8, !dbg !137085
  br i1 %min.iters.check4323, label %.lr.ph.split.us.us3123.preheader4488, label %vector.memcheck, !dbg !137085

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us3123.preheader
  %i.dst = shl nuw i64 %.sroa.5.0.ph.i1500.us, 2, !dbg !137085
  %scevgep = getelementptr i8, ptr %i.csr, i64 %i.dst, !dbg !137085
  %i.dsu = shl i64 %.sroa.7.0.ph.i1499.us, 2, !dbg !137085
  %scevgep4320 = getelementptr i8, ptr %i.csr, i64 %i.dsu, !dbg !137085
  %bound0 = icmp ult ptr %scevgep, %scevgep4321, !dbg !137085
  %bound1 = icmp ult ptr %.sroa.5.0..sroa_idx5.i, %scevgep4320, !dbg !137085
  %found.conflict = and i1 %bound0, %bound1, !dbg !137085
  br i1 %found.conflict, label %.lr.ph.split.us.us3123.preheader4488, label %vector.ph4324

vector.ph4324:                                    ; preds = %vector.memcheck
  %n.vec4325 = and i64 %i.dss, -8                 ; 3 uses
  %i.dsv = add i64 %.sroa.5.0.ph.i1500.us, %n.vec4325
  %i.dsw = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.5.0.ph.i1500.us
  br label %vector.body4328

vector.body4328:                                  ; preds = %vector.body4328, %vector.ph4324
  %index4329 = phi i64 [ 0, %vector.ph4324 ], [ %index.next4332, %vector.body4328 ] ; 2 uses
  %i.dsx = getelementptr inbounds nuw [4 x i8], ptr %i.dsw, i64 %index4329, !dbg !137093 ; 2 uses
  %i.dsy = getelementptr inbounds nuw i8, ptr %i.dsx, i64 16, !dbg !137094
  store <4 x i32> zeroinitializer, ptr %i.dsx, align 4, !dbg !137094, !alias.scope !134584, !noalias !134585
  store <4 x i32> zeroinitializer, ptr %i.dsy, align 4, !dbg !137094, !alias.scope !134584, !noalias !134585
  %index.next4332 = add nuw i64 %index4329, 8     ; 2 uses
  %i.dsz = icmp eq i64 %index.next4332, %n.vec4325, !dbg !137085
  br i1 %i.dsz, label %middle.block4333, label %vector.body4328, !dbg !137085, !llvm.loop !132254

middle.block4333:                                 ; preds = %vector.body4328
  %cmp.n4334 = icmp eq i64 %i.dss, %n.vec4325, !dbg !137085
  br i1 %cmp.n4334, label %.loopexit2762.us, label %.lr.ph.split.us.us3123.preheader4488, !dbg !137085

.lr.ph.split.us.us3123.preheader4488:             ; preds = %vector.memcheck, %.lr.ph.split.us.us3123.preheader, %middle.block4333
  %.sroa.0437.03108.us.us.ph = phi i64 [ %.sroa.5.0.ph.i1500.us, %vector.memcheck ], [ %.sroa.5.0.ph.i1500.us, %.lr.ph.split.us.us3123.preheader ], [ %i.dsv, %middle.block4333 ] ; 4 uses
  %i.dta = sub i64 %.sroa.7.0.ph.i1499.us, %.sroa.0437.03108.us.us.ph, !dbg !137085
  %xtraiter4567 = and i64 %i.dta, 7, !dbg !137085 ; 2 uses
  %lcmp.mod4568.not = icmp eq i64 %xtraiter4567, 0, !dbg !137085
  br i1 %lcmp.mod4568.not, label %.lr.ph.split.us.us3123.prol.loopexit, label %.lr.ph.split.us.us3123.prol, !dbg !137085

.lr.ph.split.us.us3123.prol:                      ; preds = %.lr.ph.split.us.us3123.preheader4488, %.lr.ph.split.us.us3123.prol
  %.sroa.0437.03108.us.us.prol = phi i64 [ %i.dtd, %.lr.ph.split.us.us3123.prol ], [ %.sroa.0437.03108.us.us.ph, %.lr.ph.split.us.us3123.preheader4488 ] ; 3 uses
  %prol.iter4569 = phi i64 [ %prol.iter4569.next, %.lr.ph.split.us.us3123.prol ], [ 0, %.lr.ph.split.us.us3123.preheader4488 ]
  %i.dtb = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dtc = icmp ult i64 %.sroa.0437.03108.us.us.prol, %i.dtb, !dbg !137088
  call void @llvm.assume(i1 %i.dtc), !dbg !137089
  %i.dtd = add nuw i64 %.sroa.0437.03108.us.us.prol, 1, !dbg !137092 ; 2 uses
  %i.dte = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0437.03108.us.us.prol, !dbg !137093
  store i32 0, ptr %i.dte, align 4, !dbg !137094
  %prol.iter4569.next = add i64 %prol.iter4569, 1, !dbg !137085 ; 2 uses
  %prol.iter4569.cmp.not = icmp eq i64 %prol.iter4569.next, %xtraiter4567, !dbg !137085
  br i1 %prol.iter4569.cmp.not, label %.lr.ph.split.us.us3123.prol.loopexit, label %.lr.ph.split.us.us3123.prol, !dbg !137085, !llvm.loop !132255

.lr.ph.split.us.us3123.prol.loopexit:             ; preds = %.lr.ph.split.us.us3123.prol, %.lr.ph.split.us.us3123.preheader4488
  %.sroa.0437.03108.us.us.unr = phi i64 [ %.sroa.0437.03108.us.us.ph, %.lr.ph.split.us.us3123.preheader4488 ], [ %i.dtd, %.lr.ph.split.us.us3123.prol ]
  %i.dtf = sub i64 %.sroa.0437.03108.us.us.ph, %.sroa.7.0.ph.i1499.us, !dbg !137085
  %i.dtg = icmp ugt i64 %i.dtf, -8, !dbg !137085
  br i1 %i.dtg, label %.loopexit2762.us, label %.lr.ph.split.us.us3123, !dbg !137085

_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1508.us3118: ; preds = %.lr.ph.us3115, %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1508.us3118
  %.sroa.0437.03108.us3119 = phi i64 [ %i.dtr, %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1508.us3118 ], [ %.sroa.5.0.ph.i1500.us, %.lr.ph.us3115 ] ; 4 uses
  %i.dth = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !137086, !noundef !3448
  %i.dti = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dtj = icmp ult i64 %.sroa.0437.03108.us3119, %i.dti, !dbg !137088
  call void @llvm.assume(i1 %i.dtj), !dbg !137089
  %i.dtk = getelementptr inbounds nuw [4 x i8], ptr %i.dth, i64 %.sroa.0437.03108.us3119, !dbg !137090
  %i.dtl = load i32, ptr %i.dtk, align 4, !dbg !137091, !noundef !3448 ; 3 uses
  %i.dtm = sdiv i32 %i.dtl, %i.dsf, !dbg !137095
  %i.dtn = srem i32 %i.dtl, %i.dsf, !dbg !137096
  %.not.i1509.us = icmp ne i32 %i.dtn, 0, !dbg !137097
  %i.dto = xor i32 %i.dtl, %i.dsf
  %i.dtp = icmp slt i32 %i.dto, 0
  %or.cond2675.us = and i1 %i.dtp, %.not.i1509.us, !dbg !137097
  %i.dtq = sext i1 %or.cond2675.us to i32, !dbg !137097
  %spec.select2683.us = add i32 %i.dtm, %i.dtq, !dbg !137097
  %i.dtr = add nuw i64 %.sroa.0437.03108.us3119, 1, !dbg !137092 ; 2 uses
  %i.dts = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0437.03108.us3119, !dbg !137093
  store i32 %spec.select2683.us, ptr %i.dts, align 4, !dbg !137094
  %exitcond3605.not = icmp eq i64 %i.dtr, %.sroa.7.0.ph.i1499.us, !dbg !137084
  br i1 %exitcond3605.not, label %.loopexit2762.us, label %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1508.us3118, !dbg !137085

.lr.ph.split.split.us.us3121:                     ; preds = %.lr.ph.split.split.us.us3121.prol.loopexit, %.lr.ph.split.split.us.us3121
  %.sroa.0437.03108.us3109.us = phi i64 [ %i.dux, %.lr.ph.split.split.us.us3121 ], [ %.sroa.0437.03108.us3109.us.unr, %.lr.ph.split.split.us.us3121.prol.loopexit ] ; 7 uses
  %i.dtt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !137086, !noundef !3448
  %i.dtu = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dtv = icmp ult i64 %.sroa.0437.03108.us3109.us, %i.dtu, !dbg !137088
  call void @llvm.assume(i1 %i.dtv), !dbg !137089
  %i.dtw = getelementptr inbounds nuw [4 x i8], ptr %i.dtt, i64 %.sroa.0437.03108.us3109.us, !dbg !137090
  %i.dtx = load i32, ptr %i.dtw, align 4, !dbg !137091, !noundef !3448
  %i.dty = sub i32 0, %i.dtx
  %i.dtz = add nuw i64 %.sroa.0437.03108.us3109.us, 1, !dbg !137092 ; 3 uses
  %i.dua = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0437.03108.us3109.us, !dbg !137093
  store i32 %i.dty, ptr %i.dua, align 4, !dbg !137094
  %i.dub = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !137086, !noundef !3448
  %i.duc = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dud = icmp ult i64 %i.dtz, %i.duc, !dbg !137088
  call void @llvm.assume(i1 %i.dud), !dbg !137089
  %i.due = getelementptr inbounds nuw [4 x i8], ptr %i.dub, i64 %i.dtz, !dbg !137090
  %i.duf = load i32, ptr %i.due, align 4, !dbg !137091, !noundef !3448
  %i.dug = sub i32 0, %i.duf
  %i.duh = add nuw i64 %.sroa.0437.03108.us3109.us, 2, !dbg !137092 ; 3 uses
  %i.dui = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dtz, !dbg !137093
  store i32 %i.dug, ptr %i.dui, align 4, !dbg !137094
  %i.duj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !137086, !noundef !3448
  %i.duk = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dul = icmp ult i64 %i.duh, %i.duk, !dbg !137088
  call void @llvm.assume(i1 %i.dul), !dbg !137089
  %i.dum = getelementptr inbounds nuw [4 x i8], ptr %i.duj, i64 %i.duh, !dbg !137090
  %i.dun = load i32, ptr %i.dum, align 4, !dbg !137091, !noundef !3448
  %i.duo = sub i32 0, %i.dun
  %i.dup = add nuw i64 %.sroa.0437.03108.us3109.us, 3, !dbg !137092 ; 3 uses
  %i.duq = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.duh, !dbg !137093
  store i32 %i.duo, ptr %i.duq, align 4, !dbg !137094
  %i.dur = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !137086, !noundef !3448
  %i.dus = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dut = icmp ult i64 %i.dup, %i.dus, !dbg !137088
  call void @llvm.assume(i1 %i.dut), !dbg !137089
  %i.duu = getelementptr inbounds nuw [4 x i8], ptr %i.dur, i64 %i.dup, !dbg !137090
  %i.duv = load i32, ptr %i.duu, align 4, !dbg !137091, !noundef !3448
  %i.duw = sub i32 0, %i.duv
  %i.dux = add nuw i64 %.sroa.0437.03108.us3109.us, 4, !dbg !137092 ; 2 uses
  %i.duy = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dup, !dbg !137093
  store i32 %i.duw, ptr %i.duy, align 4, !dbg !137094
  %exitcond3602.not.3 = icmp eq i64 %i.dux, %.sroa.7.0.ph.i1499.us, !dbg !137084
  br i1 %exitcond3602.not.3, label %.loopexit2762.us, label %.lr.ph.split.split.us.us3121, !dbg !137085

.lr.ph.split.us.us3123:                           ; preds = %.lr.ph.split.us.us3123.prol.loopexit, %.lr.ph.split.us.us3123
  %.sroa.0437.03108.us.us = phi i64 [ %i.dwd, %.lr.ph.split.us.us3123 ], [ %.sroa.0437.03108.us.us.unr, %.lr.ph.split.us.us3123.prol.loopexit ] ; 10 uses
  %i.duz = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dva = icmp ult i64 %.sroa.0437.03108.us.us, %i.duz, !dbg !137088
  call void @llvm.assume(i1 %i.dva), !dbg !137089
  %i.dvb = add nuw i64 %.sroa.0437.03108.us.us, 1, !dbg !137092 ; 2 uses
  %i.dvc = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %.sroa.0437.03108.us.us, !dbg !137093
  store i32 0, ptr %i.dvc, align 4, !dbg !137094
  %i.dvd = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dve = icmp ult i64 %i.dvb, %i.dvd, !dbg !137088
  call void @llvm.assume(i1 %i.dve), !dbg !137089
  %i.dvf = add nuw i64 %.sroa.0437.03108.us.us, 2, !dbg !137092 ; 2 uses
  %i.dvg = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dvb, !dbg !137093
  store i32 0, ptr %i.dvg, align 4, !dbg !137094
  %i.dvh = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dvi = icmp ult i64 %i.dvf, %i.dvh, !dbg !137088
  call void @llvm.assume(i1 %i.dvi), !dbg !137089
  %i.dvj = add nuw i64 %.sroa.0437.03108.us.us, 3, !dbg !137092 ; 2 uses
  %i.dvk = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dvf, !dbg !137093
  store i32 0, ptr %i.dvk, align 4, !dbg !137094
  %i.dvl = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dvm = icmp ult i64 %i.dvj, %i.dvl, !dbg !137088
  call void @llvm.assume(i1 %i.dvm), !dbg !137089
  %i.dvn = add nuw i64 %.sroa.0437.03108.us.us, 4, !dbg !137092 ; 2 uses
  %i.dvo = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dvj, !dbg !137093
  store i32 0, ptr %i.dvo, align 4, !dbg !137094
  %i.dvp = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dvq = icmp ult i64 %i.dvn, %i.dvp, !dbg !137088
  call void @llvm.assume(i1 %i.dvq), !dbg !137089
  %i.dvr = add nuw i64 %.sroa.0437.03108.us.us, 5, !dbg !137092 ; 2 uses
  %i.dvs = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dvn, !dbg !137093
  store i32 0, ptr %i.dvs, align 4, !dbg !137094
  %i.dvt = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dvu = icmp ult i64 %i.dvr, %i.dvt, !dbg !137088
  call void @llvm.assume(i1 %i.dvu), !dbg !137089
  %i.dvv = add nuw i64 %.sroa.0437.03108.us.us, 6, !dbg !137092 ; 2 uses
  %i.dvw = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dvr, !dbg !137093
  store i32 0, ptr %i.dvw, align 4, !dbg !137094
  %i.dvx = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dvy = icmp ult i64 %i.dvv, %i.dvx, !dbg !137088
  call void @llvm.assume(i1 %i.dvy), !dbg !137089
  %i.dvz = add nuw i64 %.sroa.0437.03108.us.us, 7, !dbg !137092 ; 2 uses
  %i.dwa = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dvv, !dbg !137093
  store i32 0, ptr %i.dwa, align 4, !dbg !137094
  %i.dwb = load i64, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !137087, !noundef !3448
  %i.dwc = icmp ult i64 %i.dvz, %i.dwb, !dbg !137088
  call void @llvm.assume(i1 %i.dwc), !dbg !137089
  %i.dwd = add nuw i64 %.sroa.0437.03108.us.us, 8, !dbg !137092 ; 2 uses
  %i.dwe = getelementptr inbounds nuw [4 x i8], ptr %i.csr, i64 %i.dvz, !dbg !137093
  store i32 0, ptr %i.dwe, align 4, !dbg !137094
  %exitcond3604.not.7 = icmp eq i64 %i.dwd, %.sroa.7.0.ph.i1499.us, !dbg !137084
  br i1 %exitcond3604.not.7, label %.loopexit2762.us, label %.lr.ph.split.us.us3123, !dbg !137085, !llvm.loop !132262

.loopexit2762.us:                                 ; preds = %.lr.ph.split.split.us.us3121.prol.loopexit, %.lr.ph.split.split.us.us3121, %.lr.ph.split.us.us3123.prol.loopexit, %.lr.ph.split.us.us3123, %_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_div.exit.i1508.us3118, %middle.block4333, %.loopexit2763.us
  %i.dwf = icmp ult i64 %i.dro, 2, !dbg !137064
  br i1 %i.dwf, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %bb.pz, !dbg !137064

.lr.ph3114.split:                                 ; preds = %.lr.ph3114
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !134548), !dbg !137067
  br label %.lr.ph3134.split.invoke, !dbg !137098

bb.qc:                                            ; preds = %bb.px
  %.sroa.0162.sroa.0.0.copyload = load ptr, ptr %i.cp, align 8, !dbg !137099 ; 2 uses
  %.sroa.0162.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !137099
  %.sroa.0162.sroa.2.0.copyload = load i64, ptr %.sroa.0162.sroa.2.0..sroa_idx, align 8, !dbg !137099 ; 2 uses
  %.sroa.0162.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16, !dbg !137099
  %.sroa.0162.sroa.3.0.copyload = load i64, ptr %.sroa.0162.sroa.3.0..sroa_idx, align 8, !dbg !137099 ; 2 uses
  %.sroa.0162.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24, !dbg !137099
  %.sroa.0162.sroa.4.0.copyload = load ptr, ptr %.sroa.0162.sroa.4.0..sroa_idx, align 8, !dbg !137099 ; 3 uses
  %.sroa.0162.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32, !dbg !137099
  %.sroa.0162.sroa.5.0.copyload = load i64, ptr %.sroa.0162.sroa.5.0..sroa_idx, align 8, !dbg !137099 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !136768
  %i.dwg = icmp ugt i64 %.sroa.0162.sroa.3.0.copyload, %.sroa.0162.sroa.2.0.copyload, !dbg !137100
  br i1 %i.dwg, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE16leaf_ranges_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit1319, label %.lr.ph3134, !dbg !137100

.lr.ph3134:                                       ; preds = %bb.qc
  %i.dwh = icmp eq i64 %.sroa.0162.sroa.3.0.copyload, 2
  %.idx.i.i.i1515 = mul nuw nsw i64 %.sroa.0162.sroa.5.0.copyload, 24
end_hunk_11
